{********************************************************************
| Programa...: Fat0003- Nome formulario = FormEmpresa
| Objetivo...: Faturamento de Pedido - Calculos e atualizaçao das tabelas
| Analista...: Marcio Neu Pacheco                              
| Programador: Marcio Neu Pacheco
|
| Comentários:
|
| Ultima Alteração...: 15/07/2011
| Feito por..........: MÁRCIO
********************************************************************}

unit Fat0006;

{
Substituição tributária vendas
------------------------------
Orientação: Márcio Neu Pacheco

Exemplo:
Venda 1 produto status com substituição tributária (='S') Preço R$ 100
EMPRESA: PR   ICMS_PR: 12% IPI:10%     (Tabela ICMS ICM0000)
CLIENTE: SP   ICMS_SP: 12% MVA_SP:40%  (Tabela ICMS ICM0000)

Origem (EMPRESA)  venda Interestadual
    Base do ICMS.: Preço+IPI.  100 + (100*10%) = 110
    Valor do ICMS_SP: Base do ICMS * ICMS_PRvdaSP.   110 * 12% = 13,20

Destino (CLIENTE)
    Base da substituição tributária (BST):  Base do ICMS + (Base do ICMS * MVA_SP). 110+(110*40%)= 154
    Pré substituição tributária (PST): BST * ICMS_SP_Subst_Trib.  154 * 12% = 18,48

    Substituição tributária (ST):  PST - ICMS_SP.  18,48 - 13,20 = 5,28

    Destaque na NF
    Base  Subst Trib ICMS: 154,00
    Valor Subst Trib ICMS:   5,28


wValorSubs
wBaseValorSubs

 wTotalValorSubs,
 wTotalBaseValorSubs


Comentário: jko 13/11/2009
  Conforme orientação:
  1-Mesmo a EMPRESA sendo optante pelo Simples há a
    aplicabilidade da ST. Executar as rotinas de
    calculos da ST como EMPRESA não optante pelo simples.
  2-O status do CFOP [x] Substituição tributária marcada é
    que define se há ou não subst tributária, independente
    da condição do cliente, mas dependente da condição da ST
    do produto.
    Venda mesmo para consumidor se a CFOP selecionada estiver
    marcada para ST o sistema efetua as rotinas.

    Cenário 1:
}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  rxCurrEdit, Grids, DBGrids, Mask,  rxToolEdit,
  DBCtrls, Provider, SqlExpr, DB, {{DBXpress,} DBClient, DBLocal, DBLocalS, RwFunc,
  ExtCtrls,Math, ComboBoxRw, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, SimpleDS,
  Data.DBXFirebird, SgDbSeachComboUnit, SqlClientDataSet;

type
  TFormFatServico = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox5: TGroupBox;
    CdsBancos: TSQLClientDataSet;
    CdsBancosBAN_APELIDO: TStringField;
    CdsBancosBAN_CODIGO: TStringField;
    CdsItemPedido: TSQLClientDataSet;
    CdsItemPedidoPRD_REFER: TStringField;
    CdsItemPedidoPRF_PRDDESCRI: TStringField;
    CdsItemPedidoPRF_PRECO: TFMTBCdField;
    CdsItemPedidoPRF_IPIALIQ: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FATURAR_CC: TStringField;
    CdsItemPedidoTOTAL_PRODUTOS_AG: TAggregateField;
    DsPedItem: TDataSource;
    Label3: TLabel;
    DBEditPedido: TDBEdit;
    DBEditCliente: TDBEdit;
    Label19: TLabel;
    DBEditValor: TDBEdit;
    Label23: TLabel;
    Label28: TLabel;
    DBEditNumero: TDBEdit;
    RxDataEmissao: TDateEdit;
    Label1: TLabel;
    CurrNumNota: TCurrencyEdit;
    CdsItemPedidoPED_CODIGO: TStringField;
    CdsItemPedidoPRF_QTDEFAT: TFMTBCdField;
    CdsItemPedidoPRF_QTDE: TFMTBCdField;
    CdsItemPedidoPRD_PESOKG: TFMTBCdField;
    CdsItemPedidoPRD_PESOLIQ: TFMTBCdField;
    CdsItemPedidoIPI_CODIGO: TStringField;
    CdsBancosBAN_COBTIPO: TStringField;
    CdsBancosBAN_COD_APELIDO: TIntegerField;
    CdsItemPedidoPGR_ATUALIZA_ESTOQUE: TStringField;
    CdsItemPedidoPRF_ITEMCOMIS: TFMTBCdField;
    CdsItemPedidoPRF_VAR1: TFMTBCdField;
    CdsItemPedidoPRF_VAR2: TFMTBCdField;
    CdsItemPedidoPRF_VAR3: TFMTBCdField;
    CdsItemPedidoPRF_VAR4: TFMTBCdField;
    CdsItemPedidoPRF_VAR5: TFMTBCdField;
    CdsItemPedidoPRF_VAR6: TFMTBCdField;
    CdsItemPedidoPRF_VAR7: TFMTBCdField;
    CdsItemPedidoPRF_VAR8: TFMTBCdField;
    CdsItemPedidoPRD_DCVAR1: TStringField;
    CdsItemPedidoPRD_DCVAR2: TStringField;
    CdsItemPedidoPRD_DCVAR3: TStringField;
    CdsItemPedidoPRD_DCVAR4: TStringField;
    CdsItemPedidoPRD_DCVAR5: TStringField;
    CdsItemPedidoPRD_DCVAR6: TStringField;
    CdsItemPedidoPRD_DCVAR7: TStringField;
    CdsItemPedidoPRD_DCVAR8: TStringField;
    CdsItemPedidoPRF_QTDE_FAT_VAR1: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR2: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR3: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR4: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR5: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR6: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR7: TFMTBCdField;
    CdsItemPedidoPRF_QTDE_FAT_VAR8: TFMTBCdField;
    CdsItemPedidoQTDE_FATVAR1_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR2_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR3_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR4_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR5_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR6_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR7_IC: TCurrencyField;
    CdsItemPedidoQTDE_FATVAR8_IC: TCurrencyField;
    CdsItemPedidoPRF_REGISTRO: TIntegerField;
    CdsItemPedidoCC_ID: TIntegerField;
    CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    CdsItemPedidoPTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsItemPedidoOPV_ATESTOQUE: TStringField;
    CdsItemPedidoPRF_SITUACAO: TStringField;
    CdsItemPedidoPRF_ICMSALIQ: TFMTBCdField;
    CdsItemPedidoEMP_CODIGO: TStringField;
    CdsItemPedidoPRF_PRECO_BRUTO: TFMTBCdField;
    CdsItemPedidoPRF_OP: TStringField;
    CdsItemPedidoPGR_CODIGO: TStringField;
    CdsItemPedidoPRF_ORIGEM_ITEM: TStringField;
    CdsItemPedidoPRF_PRODUTO_AGREGADO: TStringField;
    Label7: TLabel;
    DBEOpv_codigo: TDBEdit;
    CbTipo1: TComboBoxRw;
    Label8: TLabel;
    CbConsFinal: TComboBox;
    Label33: TLabel;
    Cb_ConsProprio: TComboBox;
    CdsItemPedidoSTB_TRIBUTACAO: TStringField;
    Panel2: TPanel;
    BitConfirmaNota: TBitBtn;
    BitCancelar: TBitBtn;
    BitSair: TBitBtn;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    ScrollBox1: TScrollBox;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label5: TLabel;
    CurrcodBanco: TCurrencyEdit;
    CbBancos: TComboBox;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    Panel4: TPanel;
    SQLEmpresa: TSQLClientDataSet;
    CdsTipo: TSQLClientDataSet;
    CdsTipoOPV_CODIGO: TIntegerField;
    CdsTipoOPV_DESCRICAO: TStringField;
    CdsTipoOPV_ATESTOQUE: TStringField;
    CdsTipoOPV_TIPO: TStringField;
    CdsTipoEMP_CODIGO: TStringField;
    CdsTipoAMX_DESTINO: TStringField;
    CdsTipoAMX_ORIGEM: TStringField;
    CdsItemPedidoPRD_PRODUTO: TStringField;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CurrValorIR: TCurrencyEdit;
    CurrValorCSLL: TCurrencyEdit;
    CurrValorINSS: TCurrencyEdit;
    CurrValorCOFINS: TCurrencyEdit;
    CurrValorPIS: TCurrencyEdit;
    CbServico: TcxLookupComboBox;
    Label11: TLabel;
    CbCnae: TcxLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    CurrValorDeducoes: TCurrencyEdit;
    Label14: TLabel;
    CurrValorISS: TCurrencyEdit;
    Label15: TLabel;
    CurrValorFinal: TCurrencyEdit;
    CurrValorBaseCalculo: TCurrencyEdit;
    Label16: TLabel;
    MdescricaoServico: TMemo;
    SqlCdsServico: TSQLClientDataSet;
    SqlCdsServicoSRV_REGISTRO: TIntegerField;
    SqlCdsServicoEMP_CODIGO: TStringField;
    SqlCdsServicoSRV_DESCRICAO: TStringField;
    DsServico: TDataSource;
    SqlCdsCnae: TSQLClientDataSet;
    SqlCdsCnaeCNAE_REGISTRO: TIntegerField;
    SqlCdsCnaeCNAE_CODIGO: TStringField;
    SqlCdsCnaeCNAE_DESCRICAO: TStringField;
    DsCnae: TDataSource;
    CurrPercenteIR: TCurrencyEdit;
    CurrPercenteCSLL: TCurrencyEdit;
    CurrPercenteINSS: TCurrencyEdit;
    CurrPercenteCOFINS: TCurrencyEdit;
    CurrPercentePIS: TCurrencyEdit;
    CurrPercenteISS: TCurrencyEdit;
    CdsItemPedidoPRF_IDESCTO1: TFloatField;
    CdsItemPedidoPRF_IDESCTO2: TFloatField;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CurrcodBancoExit(Sender: tObject);
    procedure CbBancosClick(Sender: tObject);
    procedure BitConfirmaNotaClick(Sender: tObject);
    procedure RxDataEmissaoExit(Sender: tObject);
    procedure GridItensNotaKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure GridItensNotaDblClick(Sender: tObject);
    procedure GridItensNotaKeyPress(Sender: tObject; var Key: Char);
    procedure RadTotalClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure CurrNumNotaClick(Sender: tObject);
    procedure CurrNumNotaExit(Sender: tObject);
    procedure CurrOpeNatExit(Sender: tObject);
    procedure DBEditQtdeKeyPress(Sender: tObject; var Key: Char);
    procedure CdsItemPedidoCalcFields(DataSet: TDataSet);
    procedure CbOperExit(Sender: tObject);
    procedure CbOperClick(Sender: tObject);
    procedure CurrNumNotaEnter(Sender: tObject);
    procedure CurrValorIRExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
WvARIACOES :STRING;
    wPrmMarca,
    wCod_Carteira,
    wTp_Cobranca,
    wcodigoOperacaoFiscal,
    wPRODUTO,
    wTp_Docuto             : String;
    wSituacao,
    wOBJ                   : String[1];
    wPesoBruto,wPesoLiq,
    wCadProdAliqIcms,
    wValorIPI,
    wIPIFrete,
    wPorCdescto,
    wIcmsAliq,
    wCALCULO,
    wPrecoMatPrima         : currency;
    {Campos}
    CampoEdit     :TEdit;
    CampoDBEdit   :TDBEdit;
    CampoCombo    :TcomboBox;
    CampoCurrency :TCurrencyEdit;
    CampoData     :TDateEdit;
    CampoLookup   :TDBLookupComboBox;
    wTransacao    :TTransactionDesc;
    procedure PreencheCombo;
    procedure MudaCorCampos(Sender: tObject);
    procedure GravaNotaFiscal;
    procedure GravaItensNota;
    procedure GravaFatura;
    procedure AtualizaPedido;
    procedure AlterarQtdeFaturar;
    procedure BuscaOperacaoNovo(pNat,pDescri:String);
    procedure VerificaFaturaTem;
    procedure BuscaNumNF;
    procedure CarregaTelaNF;
    procedure AtualizaEstoque;
    procedure MostraDados;
    procedure Diminui_Reserva_Variacao(pRefer:String);
    procedure ChamaTelaQtdeFaturar;
    procedure Atualiza_Qtde_Itens_Pedido(pRegistro,pStatus:String);
    procedure CalculaPeso;
    procedure Gravar_Item_Nota(sNota,sItem:String);
    procedure Gravar_Item_Fatura(sNota,sItem:String);
    procedure Mostra_Top;
    procedure Ope_Fisc_Aliquota_Icms;
    function RetornaCFOPItem(sCFOPOrigem, sST, sPessoa, sUfEmitente, sUfDestinatario:String):String;
    procedure MudaNumeroFatura(pNat,pDescri:String);
    procedure ChamaFaturar;
    procedure CalculaTotal;
  public
    { Public declarations }



    wALiqICmsCliente,
    wTotalIPI,
    wValorSubs,
    wSubs_Estado,
    wBaseSubs,
    wValorProd,
    wValorProdIndividual,
    wValorProdLiquido,
    wFreterateado,
    wIPIDESPIMPORT,
    wDesctoItemValor,
    wDesctoValorIPI,
    wTotalSemComissao,
    wBaseIcmsIndividual,
    wValorIcmsIndividual,
    wBaseIPIIndividual,
    wValorIPIIndividual,
    wBaseIcms,
    wBaseIPI,
    wValorIcms,
    wValorCredSimples,
    wTotalBaseIcmsIndividual,
    wTotalBaseVlIcmsIndividual,
    wTotalBaseIcms,
    wTotalVlBaseIcms,
    wDesctoValorICMS,
    wBaseValorSubs,      {jko}
    wTotalValorSubs,     {jko}
    wTotalBaseValorSubs: Currency; {jko}

    wNumPedidos: String;

    wCalBaseValorSubs,
    wUfAliqMVA,
    wAliqreduzidaICMS,
    wUfResultMVA,
    wUfAliqIcmsEmp,
    wUfAliqIcmsForaEst,
    wUfAliqIcmsSubCli: Currency; {jko}

    FAT_CODIGO,
    wNFSerie,
    wNFModelo,
    wForaEstSN,
    wUfAplMvaSomaSN,
    wUfIcmsEmpSN,
    wUfIcmsSubSN,        {jko}
    wTemSubs: String;    {jko}
    wCom_Ope_Fisc: boolean; {jko}

    wSequenciaNFe :integer;   { mar }

  end;

var
  FormFatServico: TFormFatServico;

implementation

uses Uteis, Fat0000, DataCad1, DataMov, Men0001, DataCad, Fat0002, DataMov2, INICIODB,
  SysConst, StrUtils, FATPARC;

{$R *.dfm}


procedure TFormFatServico.BitSairClick(Sender: tObject);
begin
    Close;
end;


procedure TFormFatServico.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TDBEdit}
    if Assigned(CampoDbEdit) then
       begin
          CampoDbEdit.color := clWindow;
       end;
    if ActiveControl is TDBEdit then
       begin
          if TDBEdit(ActiveControl).color = $00D7D7D7 then
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
    {currency}
    if Assigned(CampoCurrency) then
       begin
          CampoCurrency.color := clWindow;
       end;
    if ActiveControl is TCurrencyEdit then
       begin
          TCurrencyEdit(ActiveControl).color := $0080FFFF;
          CampoCurrency := TCurrencyEdit(ActiveControl);
       end
    else
       begin
          CampoCurrency := nil;
       end;
    {CampoData  :TDateEdit}
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
    {CampoLookup : TDBLookupComboBox}
    if Assigned(CampoLookup) then
       begin
          CampoLookup.color := clWindow;
       end;
    if ActiveControl is TDBLookupComboBox then
       begin
          TDBLookupComboBox(ActiveControl).color := $0080FFFF;
          CampoLookup := TDBLookupComboBox(ActiveControl);
       end
    else
       begin
          CampoLookup := nil;
       end;
end;



procedure TFormFatServico.FormShow(Sender: tObject);
Var
  wSeleciona : String;
begin
//  left:= 00;
//  top := 00;
  PreencheCombo;
  CarregaTelaNF;
  Hint := 'Dê duplo clique para selecionar o item ou '+#13+'pressione Enter no item selecionado !';
  Screen.OnActiveControlChange := MudacorCampos;
  SqlCdsServico.Open;
  SqlCdsCnae.Open;

  try
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Select Pr.PMT_NF_MARCA,Pr.PMT_COD_CARTEIRA,Pr.PMT_TP_COBRANCA,Pr.PMT_TP_DOCTO,Pr.SIN_MODE_NF,Pr.SIN_SERIE_NF from PRMT0001 Pr','','','Pr.');
    DataCadastros.sqlUpdate.Open;
    wPrmMarca     := DataCadastros.sqlUpdate.FieldByName('PMT_NF_MARCA').AsString;
    wCod_Carteira := DataCadastros.sqlUpdate.FieldByName('PMT_COD_CARTEIRA').AsString;
    wTp_Cobranca  := DataCadastros.sqlUpdate.FieldByName('PMT_TP_COBRANCA').AsString;
    wTp_Docuto    := DataCadastros.sqlUpdate.FieldByName('PMT_TP_DOCTO').AsString;
    wNFSerie      := DataCadastros.sqlUpdate.FieldByName('SIN_SERIE_NF').AsString;
    wNFModelo     := DataCadastros.sqlUpdate.FieldByName('SIN_MODE_NF').AsString;
    DataCadastros.sqlUpdate.Close;
  except on E:EDataBaseError do
    uteis.erro  (pchar('Erro ao abrir a tabela de parametros !'+e.message));
  end;

     try
        wSeleciona := 'WHERE P1.PED_CODIGO = '''+DBEditPedido.Text+'''';
        //
        wSql1 := 'SELECT P1.*,COALESCE(P2.STB_TRIBUTACAO,''00'') AS STB_TRIBUTACAO,P2.IPI_CODIGO,p2.prd_codigo as prd_produto,P2.PRD_PESOKG,P2.PRD_PESOLIQ,P2.PRD_DCVAR1,P2.PRD_DCVAR2,P2.PRD_DCVAR3,P2.PRD_DCVAR4,P2.PRD_DCVAR5,P2.PRD_DCVAR6,P2.PRD_DCVAR7,P2.PRD_DCVAR8,';
        wSql2 := 'G1.PGR_ATUALIZA_ESTOQUE,G1.PGR_CODIGO,T1.PTI_ATUALIZAR_ESTOQUE,P3.OPV_ATESTOQUE FROM PED_IT01 P1 JOIN PRD0000 P2 ON (P1.PRD_REFER = P2.PRD_REFER and P2.PRD_PRODSERV = ''S'') LEFT JOIN PRD_GRUPO G1 ON (P2.PGR_CODIGO = G1.PGR_CODIGO) LEFT JOIN PRD_TIPO T1 ';
        wSql3 := ' ON (P2.PTI_CODIGO = T1.PTI_CODIGO) LEFT JOIN PED0000 P0 ON (P1.PED_CODIGO = P0.PED_CODIGO) AND (P1.EMP_CODIGO = P0.EMP_CODIGO) LEFT JOIN OPV0000 P3 ON (P0.OPV_CODIGO = P3.OPV_CODIGO) ';
        //
        CdsItemPedido.Close;
        CdsItemPedido.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,wSeleciona,'P1.PED_CODIGO,P1.PRF_REGISTRO','P1.');
        CdsItemPedido.Open;
        //Percarre a descrição do Item
        CdsItemPedido.First;
        while (not CdsItemPedido.Eof) do
          begin
            MdescricaoServico.Lines.Add(CdsItemPedidoPRF_PRDDESCRI.AsString);
            CdsItemPedido.Next;
          end;
        AlterarQtdeFaturar;
      except on e:EdataBaseError do
        uteis.erro  (pchar('Erro ao buscar os itens do pedido !'+e.message));
      end;

  CbTipo1.CarregarCombo := True;
  Mostra_Top;
  RxDataEmissao.SetFocus;
  BuscaNumNF;
  //Busca valores
  CurrValorBaseCalculo.Value := DBEditValor.Field.Value;

  CurrPercenteIR.Value := dbInicio.Empresa.ALIQ_IR;
  CurrPercenteCOFINS.Value := dbInicio.Empresa.ALIQ_COFINS;
  CurrPercentePIS.Value := dbInicio.Empresa.ALIQ_PIS;
  CurrPercenteISS.Value := dbInicio.Empresa.ALIQ_ISS;

  if (dbInicio.Empresa.ALIQ_IR > 0) then
    CurrValorIR.Value := CurrValorBaseCalculo.Value * (dbInicio.Empresa.ALIQ_IR/100);
  if (dbInicio.Empresa.ALIQ_COFINS > 0) then
    CurrValorCOFINS.Value := CurrValorBaseCalculo.Value * (dbInicio.Empresa.ALIQ_COFINS/100);
  if (dbInicio.Empresa.ALIQ_PIS > 0) then
    CurrValorPIS.Value := CurrValorBaseCalculo.Value * (dbInicio.Empresa.ALIQ_PIS/100);
  if (dbInicio.Empresa.ALIQ_ISS > 0) then
    CurrValorISS.Value := CurrValorBaseCalculo.Value * (dbInicio.Empresa.ALIQ_ISS/100);

  CalculaTotal;

end;


procedure TFormFatServico.PreencheCombo;
begin
    try
      CdsBancos.Close;
      CdsBancos.CommandText := SQLDEF('BANCOS','Select B1.BAN_CODIGO,B1.BAN_APELIDO,B1.BAN_COBTIPO,B1.BAN_COD_APELIDO from BAN0000 B1','','B1.BAN_APELIDO','B1.');
      CdsBancos.Open;
      CdsBancos.First;
      CbBancos.Items.Clear;
      CbBancos.Items.Add('');
      while not CdsBancos.Eof do
       begin
           cbBancos.Items.Add(CdsBancosBAN_APELIDO.AsString);
           CdsBancos.Next;
       end;
      CbBancos.ItemIndex := 0;
    except on E:EdatabaseError do
        uteis.erro  (pchar('Erro ao carregar a combos !'+e.message));
    end;
end;

procedure TFormFatServico.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    DataMovimento.CdsNotaFiscal.Close;
    CdsItemPedido.Close;
    SqlCdsServico.Close;
    SqlCdsCnae.Close;
    CdsBancos.Close;
    DataMovimento.CdsReceber.Close;
    DataCadastros.CdsOperFisc.close;
    // libera padrao do Cds para todos os clientes
    DataCadastros.CdsClientes.Close;
    DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','','C1.CLI_CODIGO','C1.');
    DataCadastros.CdsClientes.Open;
    DataCadastros.CdsClientes.Close;

    Screen.OnActiveControlChange := nil;
    FormFaturamento.PageControl2.ActivePageIndex := 0;

    {if FormFaturamento.BitCancelar.Visible = true then
       FormFaturamento.BitCancelar.Click;}

    CbTipo1.CarregarCombo := False;
end;

procedure TFormFatServico.FormCreate(Sender: tObject);
begin
     WvARIACOES := DBINICIO.GETPARAMETROSISTEMA( 'PMT_VARIACOES');
end;

procedure TFormFatServico.CurrcodBancoExit(Sender: tObject);
begin
    if CurrCodBanco.Value <> 0 then
       begin
           if CdsBancos.Locate('BAN_CODIGO',FormatFLoat('0000',CurrcodBanco.value),[])then
              begin
                  cbBancos.Text := CdsBancosBAN_APELIDO.AsString;
              end
           else
              begin
                  uteis.aviso('Banco não encontrado !');
                  CurrcodBanco.SetFocus;
              end;
       end;
end;

procedure TFormFatServico.CbBancosClick(Sender: tObject);
begin
  if (CbBancos.Text <> '') then
  begin
    if (CdsBancos.Locate('BAN_APELIDO',CbBancos.TExt,[])= true) then
     CurrCodBanco.Value := CdsBancosBAN_CODIGO.AsCurrency
    else
   CurrCodBanco.Value := 0;
  end;
end;


procedure TFormFatServico.BitConfirmaNotaClick(Sender: tObject);
begin
  //Selecionou o Banco pela Combo e Zerou o Codigo do Banco
  if (CurrcodBanco.Value = 0) and (CbBancos.Text <> '') then
  begin
    uteis.aviso('Informe o Banco !');
    CbBancos.SetFocus;
    CbBancos.SelectAll;
  end else
  begin

     //grava no arquivo de notas fiscal agrupada o numero dos pedidos ref a nota
    try
      if uteis.confirmacao ( ('Confirma a gravação da Fatura nº '+StrZero(CurrNumNota.Text,CurrNumNota.MaxLength)))=mrYes then
      begin
        Screen.Cursor := crHourGlass;


        {Grava Nota Fiscal}
        GravaNotaFiscal;

        {Atualiza Status do Pedido}
        AtualizaPedido;
        {Grava Fatura no Contas a Receber}
        GravaFatura;
        //verifica se operação fiscal tem valor comercial para abrir a tela de parcelamento
        ChamaFaturar;

        DataCadastros.sqlUpdate.Close;
        DataCadastros.SqlUpdate.sql.text :='select * from Emp0000 where EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';;
        DataCadastros.sqlUpdate.open;
        // atribuir Numero para a Nfe
        if (DataCadastros.sqlUpdate.FieldByName('EMP_GENERATION_NFE').Value = 'S') then    // sincronizado
           begin
          // Gravar numero da ultima NFe
           DataCadastros.sqlUpdate.close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Update EMP0000 Set EMP_SEQUENCIA_NFE = '''+IntToStr(wSequenciaNfe)+'''','','','');
           DataCadastros.sqlUpdate.Execsql;
           end;

        BitSair.Click;
        Screen.cursor := crDefault;
      end else
      begin
        CurrNumNota.SetFocus;
      end;
    except on E:EdatabaseError do
      begin
        uteis.erro  (Pchar('Erro ao gravar a Fatura nº '+StrZero(CurrNumNota.Text,CurrNumNota.MaxLength)+' ! '+e.Message));
      end;
    end;
  end;
end;

procedure TFormFatServico.GravaFatura;
var
wBan_codigo,
wTip_Cobranca,
wTip_Docuto,
wCct_codigo,
wPcx_codigo,
wFatCodigo,
wPcl_codigo : String;
wFat_Dtemis : TDateTime;
wVlParce    : Currency;
begin
{remover essa tabela futuramente mantendo somente a tb das notas}
// DataCadastros.sqlUpdate.Close;
//  DataCadastros.SqlUpdate.sql.text :='select * from Emp0000 where EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';;
//  DataCadastros.sqlUpdate.open;
// if (DataCadastros.sqlUpdate.FieldByName('EMP_GENERATION_NFE').Value <> 'S') then
// begin
  DataMovimento.CdsReceber.Close;
  DataMovimento.CdsReceber.CommandText := SQLDef('RECEBER','Select * From FAT0000','WHERE FAT_CODIGO = '''+StrZero(currNumNota.Text,CurrNumNota.MaxLength)+'''','','');
  DataMovimento.CdsReceber.Open;
// end else
//  begin
//    DataMovimento.CdsReceber.Close;
//    DataMovimento.CdsReceber.CommandText := 'Select * From FAT0000 WHERE FAT_CODIGO = '''+StrZero(currNumNota.Text,CurrNumNota.MaxLength)+'''';
//    DataMovimento.CdsReceber.Open;
//  end;
if dataMovimento.CdsReceber.IsEmpty = true then
   begin
       DataMovimento.CdsReceber.Insert;
       {Fat_codigo}
       DataMovimento.CdsReceberFAT_CODIGO.AsString     := StrZero(CurrNumNota.Text,CurrNumNota.MaxLength);
       FAT_CODIGO                                      := StrZero(CurrNumNota.Text,CurrNumNota.MaxLength);
       {PCL_CODIGO = COD DA CONDICAO DE PAGAMENTO}
       {DataMovimento.CdsReceberPCL_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosPCL_CODIGO.AsString;
       DataMovimento.CdsReceberOPV_CODIGO.AsInteger    := FormFaturamento.SqlCdsPedidosOPV_CODIGO.AsInteger;
       DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime   := RxDataEmissao.Date;
       DataMovimento.CdsReceberCLI_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString;
       DataMovimento.CdsReceberREP_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosREP_CODIGO.AsString;
       DataMovimento.CdsReceberPED_CODIGO.AsString     := DBEditPedido.Text;
       DataMovimento.CdsReceberFAT_PREVISAO.AsString   := 'N';
       DataMovimento.CdsReceberFAT_EXCLUSAO.AsString   := 'N';
       DataMovimento.CdsReceberFAT_OPERUF.AsString     := FormFaturamento.SqlCdsPedidosCLI_UF.AsString;
       DataMovimento.CdsReceberFAT_LIVRO.AsString      := 'S';
       DataMovimento.CdsReceberFAT_VL_LIQ.AsCurrency   := CurrValorBaseCalculo.Value;
       DataMovimento.CdsReceberFAT_VLFAT.AsCurrency    := CurrValorBaseCalculo.Value;
       // se na operacao pede para somar valor do icms no total da nota (acontece em importaçoes)
       if DataCadastros.CdsOperFiscOPE_ICMS_TOTALNOTA.AsString = 'S' then
          DataMovimento.CdsReceberFAT_VLFAT.AsCurrency    := DataMovimento.CdsReceberFAT_VLFAT.AsCurrency + wTotalVlBaseIcms;
       DataMovimento.CdsReceberFAT_VLNCOMIS.AsCurrency := wTotalSemComissao;
       //atualizo todos os campos de comissoes independente se a empresa utiliza ou nao
       DataMovimento.CdsReceberFAT_COMIS1.AsCurrency   := FormFaturamento.SqlCdsPedidosPED_COMIS1.AsCurrency;
       DataMovimento.CdsReceberFAT_COMIS2.AsCurrency   := FormFaturamento.SqlCdsPedidosPED_COMIS2.AsCurrency;
       DataMovimento.CdsReceberFAT_COMIS3.AsCurrency   := FormFaturamento.SqlCdsPedidosPED_COMIS3.AsCurrency;
       Datamovimento.CdsReceberEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
       DataMovimento.CdsReceberOPE_CODIGO.AsString     := dataCadastros.CdsOperFiscOPE_CODIGO.AsString;
       DataMovimento.CdsReceberFAT_OPERACAO.AsString   := '5933';
       DataMovimento.CdsReceberCCT_CODIGO.AsString     := dataCadastros.CdsOperFiscCCT_CODIGO.AsString;

       // VALORES FISCAIS
       DataMovimento.CdsReceberFAT_VL_IPI.AsString     := DataMovimento.CdsNotaFiscalNF_VL_IPI.AsString;
       DataMovimento.CdsReceberFAT_ALIQUOTA.AsString   := DataMovimento.CdsNotaFiscalNF_ALIQ_ICMS.AsString;
       DataMovimento.CdsReceberFAT_BASEICMS.AsString   := DataMovimento.CdsNotaFiscalNF_BASEICMS.AsString;
       DataMovimento.CdsReceberFAT_BASESUB.AsString    := DataMovimento.CdsNotaFiscalNF_VLBASESUBTRIB.AsString;
       DataMovimento.CdsReceberFAT_ICMSRET.AsString    := DataMovimento.CdsNotaFiscalNF_VL_SUBTRIB.AsString;

       //NFSE


       DataMovimento.CdsReceber.ApplyUpdates(0);

       //wVlParce      := (wValorProd + wTOTALIPI + wTotalValorSubs) - FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency;
       wVlParce := CurrValorBaseCalculo.Value;


       wBan_codigo   := iif(CurrCodBanco.Value>0,StrZero(CurrcodBanco.Text,CurrCodBanco.MaxLength),'');
       wCct_codigo   := dataCadastros.CdsOperFiscCCT_CODIGO.AsString;
       wPcx_codigo   := '0';
       wFat_Dtemis   := RxDataEmissao.Date;
       wFatCodigo    := StrZero(CurrNumNota.Text,CurrNumNota.MaxLength);
       wPcl_codigo   := FormFaturamento.SqlCdsPedidosPCL_CODIGO.AsString;  }


       wTip_Cobranca := IIF(CbxCarteira.ItemIndex = 0,''  ,
                        IIF(CbxCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                        IIF(CbxCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                        IIF(CbxCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                        IIF(CbxCarteira.ItemIndex = 4,'Cd',               //Cd = COBRANCA DESCONTADA
                        IIF(CbxCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                        IIF(CbxCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                        IIF(CbxCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO

       wTip_Docuto   := IIF(CbxTipoDoc.ItemIndex = 0,''  ,
                        IIF(CbxTipoDoc.ItemIndex = 1,'DP',
                        IIF(CbxTipoDoc.ItemIndex = 2,'BL',
                        IIF(CbxTipoDoc.ItemIndex = 3,'RC',
                        IIF(CbxTipoDoc.ItemIndex = 4,'CH',
                        IIF(CbxTipoDoc.ItemIndex = 5,'DN',
                        IIF(CbxTipoDoc.ItemIndex = 6,'OU','CC')))))));

       {Parcela a fatura Gera duplcatas}
       //ParcelarRec(wVlParce,0,wBan_codigo,wTip_Cobranca,wTip_Docuto,wCct_codigo,wPcx_codigo,wFatCodigo,wPcl_codigo,CdsBancosBAN_COD_APELIDO.AsString,wFat_Dtemis );
   end;
end;



procedure TFormFatServico.AtualizaPedido;
Var
  wSituacao : String[1];
  wSql1,wSql2 : String;
  wValorUltimacompra : double;
begin
    {Atualizando a data da ultima compra na tabela cli0000}
    {try
      wValorUltimacompra :=(wValorProd + wTotalIPI + wTotalValorSubs)-FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency;

      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('CLIENTES','Update CLI0000 Set CLI_DTULTCOM = '''+DataAmericana(RxDataEmissao.Text)+''',CLI_VL_ULTCOMP = '''+ValorAmericano(FloatToStr(wValorUltimacompra))+'''','where CLI_CODIGO = '''+FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString+'''','','');
      DataCadastros.sqlUpdate.Execsql;


      wSql1 := 'Insert into NF_PED ('+
               'NP_NOTANUMER,'+
               'NP_PED_CODIGO,'+
               'EMP_CODIGO) ';
      wSql2 := 'Values ('''+StrZero(CurrNumNota.Text,CurrNumNota.MaxLength)+''','''+
                            DBEditPedido.Text+''','''+
                            dbInicio.Empresa.EMP_CODIGO+''')';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Select sum(PRF_QTDE - PRF_QTDEFAT) as wQTDE from PED_IT01 ','where PED_CODIGO = '''+DBEditPedido.Text+'''','','');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.FieldByName('wQtde').AsCurrency > 0 then
         wSituacao := 'P'
      else
         wSituacao := 'T';

         //      FormatSettings.DecimalSeparator := '.';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS','Update PED0000 set PED_SITUACAO = '''+wSituacao+''',PED_VLFATURADO = (PED_VLFATURADO + '+ValorAmericano(FloatToStr(wValorProd - FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency))+')','where PED_CODIGO = '''+DBEditPedido.Text+'''','','');
      DataCadastros.sqlUpdate.Execsql;
//      FormatSettings.DecimalSeparator := ',';
    except on E:EdatabaseError do
       begin
           uteis.erro  (pchar('Erro ao atualizar situação do pedido !!!'+e.Message));
       end;
    end;   }
end;

procedure TFormFatServico.RxDataEmissaoExit(Sender: tObject);
begin
    if not TestaDataStr(RxDataEmissao.Text) then
       RxDataEmissao.SetFocus;
end;


procedure TFormFatServico.GridItensNotaKeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
    if ((Shift = [ssCtrl]) and (Key = 46))  Then
       KEY := 0;
end;

procedure TFormFatServico.GridItensNotaDblClick(Sender: tObject);
begin
    ChamaTelaQtdeFaturar;
end;

procedure TFormFatServico.GridItensNotaKeyPress(Sender: tObject;
var Key: Char);
begin
    if key =#13 then
       begin
           ChamaTelaQtdeFaturar;
           key :=#0;
       end;
end;

procedure TFormFatServico.RadTotalClick(Sender: tObject);
begin
    AlterarQtdeFaturar;
end;

procedure TFormFatServico.AlterarQtdeFaturar;
begin
    CdsItemPedido.DisableControls;
    CdsItemPedido.First;
   while not CdsItemPedido.Eof do
    begin
        CdsItemPedido.Edit;
        CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency := (CdsItemPedidoPRF_QTDE.AsCurrency - CdsItemPedidoPRF_QTDEFAT.AsCurrency);
        if (wVariacoes = 'S') then
           begin
               CdsItemPedidoQTDE_FATVAR1_IC.AsCurrency := (CdsItemPedidoPRF_VAR1.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR1.AsCurrency);
               CdsItemPedidoQTDE_FATVAR2_IC.AsCurrency := (CdsItemPedidoPRF_VAR2.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR2.AsCurrency);
               CdsItemPedidoQTDE_FATVAR3_IC.AsCurrency := (CdsItemPedidoPRF_VAR3.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR3.AsCurrency);
               CdsItemPedidoQTDE_FATVAR4_IC.AsCurrency := (CdsItemPedidoPRF_VAR4.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR4.AsCurrency);
               CdsItemPedidoQTDE_FATVAR5_IC.AsCurrency := (CdsItemPedidoPRF_VAR5.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR5.AsCurrency);
               CdsItemPedidoQTDE_FATVAR6_IC.AsCurrency := (CdsItemPedidoPRF_VAR6.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR6.AsCurrency);
               CdsItemPedidoQTDE_FATVAR7_IC.AsCurrency := (CdsItemPedidoPRF_VAR7.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR7.AsCurrency);
               CdsItemPedidoQTDE_FATVAR8_IC.AsCurrency := (CdsItemPedidoPRF_VAR8.AsCurrency - CdsItemPedidoPRF_QTDE_FAT_VAR8.AsCurrency);
           end;
        CdsItemPedido.Post;
        CdsItemPedido.Next;
    end;

    CdsItemPedido.EnableControls;
    CdsItemPedido.First;
end;

procedure TFormFatServico.BitCancelarClick(Sender: tObject);
begin
    {Cancelar a insercao da nota fiscal}
    if DataMovimento.CdsNotaFiscal.State in [dsInsert] then
       DataMovimento.CdsNotaFiscal.CancelUpdates;
    close;
end;

procedure TFormFatServico.CurrNumNotaClick(Sender: tObject);
begin
    CurrNumNota.SelectAll;
end;

procedure TFormFatServico.CurrNumNotaExit(Sender: tObject);
begin
       BuscaNumNF;
end;


procedure TFormFatServico.VerificaFaturaTem;
begin
  if (StrZero(IntToStr(CurrNumNota.AsInteger),CurrNumNota.MaxLength) <> '000000') and (StrZero(IntToStr(CurrNumNota.AsInteger),CurrNumNota.MaxLength) <> '990000')  then
     begin
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select R1.* from FAT0000 R1 ','where R1.FAT_CODIGO = '''+StrZero(IntToStr(CurrNumNota.AsInteger),CurrNumNota.MaxLength)+'''','','R1.');
       DataCadastros.sqlUpdate.open;
       if not DataCadastros.sqlUpdate.IsEmpty  then
          begin
          uteis.aviso('Numera da fatura já existe. Use o próximo numero sugerido. ');
          CurrNumNota.Setfocus;
          end
       else
          RxDataEmissao.SetFocus;

     end;
end;

procedure TFormFatServico.BuscaNumNF;
var
wNumNF : double;
begin
    //verifica se ja não existe nota fiscal com esse numero para empresa atual cadastrada
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='select * from Emp0000 where EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';;
    DataCadastros.sqlUpdate.open;

    if (DataCadastros.sqlUpdate.FieldByName('EMP_GENERATION_NFE').Value <> 'S') then  // NAO SINCRONIZADO
       begin

       VerificaFaturaTem;

       if dataCadastros.CdsOperFiscOPE_ESCRITA.AsString = 'N' then   // sem escrita
          begin
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select Max(NF_NotaNumber) as wNumNF from NF0001',' Where NF_INTERNO = '''+'S'+'''','','');
          DataCadastros.sqlUpdate.open;
          //evita erro no primeiro registro de gravação
          if DataCadastros.sqlUpdate.FieldByName('wNumNF').IsNull = true then
              CurrNumNota.Value := 990001
          else
            // se usuario avançou numeração
            if CurrNumNota.Value > StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1 then
               uteis.aviso('Atenção você esta avançando a sequencia da numeração das faturas')
            else
               CurrNumNota.Value := StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1;

          end
       else         // com escrita
         begin
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select Max(NF_NotaNumber) as wNumNF from NF0001',' Where NF_INTERNO <> '''+'S'+'''','','');
          DataCadastros.sqlUpdate.open;

          //evita erro no primeiro registro de gravação
          if DataCadastros.sqlUpdate.FieldByName('wNumNF').IsNull = true then
              CurrNumNota.Value := 1
          else
            // se usuario avançou numeração
            if CurrNumNota.Value > StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1 then
               uteis.aviso('Atenção você esta avançando a sequencia da numeração das faturas')
            else
               CurrNumNota.Value := StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1;

         end;

       end
    else     // SINCRONIZADO
       begin

       if dataCadastros.CdsOperFiscOPE_ESCRITA.AsString = 'N' then   // sem escrita
          begin
          DataCadastros.sqlUpdate.Close;
          //DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select N1.* from NF0001 N1 ','where N1.NF_NotaNumber = '''+IntToStr(CurrNumNota.AsInteger)+'''','','N1.');

          VerificaFaturaTem;

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select Max(NF_NotaNumber) as wNumNF from NF0001',' Where NF_INTERNO = '''+'S'+'''','','');
          DataCadastros.sqlUpdate.open;
          //evita erro no primeiro registro de gravação
          if DataCadastros.sqlUpdate.FieldByName('wNumNF').IsNull = true then
              CurrNumNota.Value := 990001
          else
            // se usuario avançou numeração
            if CurrNumNota.Value > StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1 then
               uteis.aviso('Atenção você esta avançando a sequencia da numeração das faturas')
            else
               CurrNumNota.Value := StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1;

          end
       else         // com escrita
         begin
          DataCadastros.sqlUpdate.Close;
          //DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select N1.* from NF0001 N1 ','where N1.NF_NUM_NFE = '''+IntToStr(CurrNumNota.AsInteger)+'''','','N1.');

          VerificaFaturaTem;

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select Max(NF_NUM_NFE) as wNumNF from NF0001',' Where NF_INTERNO <> '''+'S'+'''','','');
          DataCadastros.sqlUpdate.open;
          // nao deixa avançar sequencia de fatura pois o numero da Nfe deve ser numero da fatura tambem
          // Atribui a numero da fatura o numero da maior nota/fatura + 1
          if DataCadastros.sqlUpdate.FieldByName('wNumNF').IsNull = true then
             CurrNumNota.Value := 1
          else
           CurrNumNota.Value := StrToInt(DataCadastros.sqlUpdate.FieldByName('wNumNF').AsString)+1;

         end;

       end;

       CarregaTelaNF;


end;

procedure TFormFatServico.CarregaTelaNF;
begin
Screen.cursor := crHourGlass;
try
   // fechar a SqlNota senao pode nao abre CdsNotafiscal.open
   DataMovimento.SQlNota.Close;
   DataMovimento.CdsNotaFiscal.Close;
   DataMovimento.CdsNotaFiscal.CommandText := SQLDEF('RECEBER','Select N1.* from NF0001 N1 ','where N1.NF_NOTANUMBER = '''+CurrToStr(CurrNumNota.Value)+'''','N1.NF_NOTANUMBER','N1.');
   DataMovimento.CdsNotaFiscal.Open;

   if DataMovimento.CdsNotaFiscal.IsEmpty = true then
      DataMovimento.CdsNotaFiscal.Insert;

   try
      wSeleciona := 'WHERE P1.PED_CODIGO = '''+DBEditPedido.Text+'''';
      wSql1 := 'SELECT P1.*,COALESCE(P2.STB_TRIBUTACAO,''00'') AS STB_TRIBUTACAO,P2.IPI_CODIGO,p2.prd_codigo as prd_produto,P2.PRD_PESOKG,P2.PRD_PESOLIQ,P2.PRD_DCVAR1,P2.PRD_DCVAR2,P2.PRD_DCVAR3,P2.PRD_DCVAR4,P2.PRD_DCVAR5,P2.PRD_DCVAR6,P2.PRD_DCVAR7,P2.PRD_DCVAR8,';
      wSql2 := 'G1.PGR_ATUALIZA_ESTOQUE,G1.PGR_CODIGO,T1.PTI_ATUALIZAR_ESTOQUE,P3.OPV_ATESTOQUE FROM PED_IT01 P1 LEFT JOIN PRD0000 P2 ON (P1.PRD_REFER = P2.PRD_REFER) LEFT JOIN PRD_GRUPO G1 ON (P2.PGR_CODIGO = G1.PGR_CODIGO) LEFT JOIN PRD_TIPO T1 ';
      wSql3 := ' ON (P2.PTI_CODIGO = T1.PTI_CODIGO) LEFT JOIN PED0000 P0 ON (P1.PED_CODIGO = P0.PED_CODIGO) AND (P1.EMP_CODIGO = P0.EMP_CODIGO) LEFT JOIN OPV0000 P3 ON (P0.OPV_CODIGO = P3.OPV_CODIGO) ';
      CdsItemPedido.Close;
      CdsItemPedido.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2+wSql3,wSeleciona,'P1.PED_CODIGO,P1.PRF_REGISTRO','P1.');
      CdsItemPedido.Open;
      AlterarQtdeFaturar;
   except on e:EdataBaseError do
      uteis.erro  (pchar('Erro ao buscar os itens do pedido !'+e.message));
   end;

   //Operação fiscal - informações das tributações ICMS e IPI
   //FiltraOperacao;


   RxDataEmissao.Date               := now;
   //
   {DataMovimento.CdsNotaFiscalNF_VLFRETE.AsCurrency     := FormFaturamento.SqlCdsPedidosPED_VLFRETE.AsCurrency;
   DataMovimento.CdsNotaFiscalNF_VLSEGURO.AsCurrency    := FormFaturamento.SqlCdsPedidosPED_VLSEGURO.AsCurrency;
   DataMovimento.CdsNotaFiscalNF_DESP_ACES.AsCurrency   := FormFaturamento.SqlCdsPedidosPED_DESP_ACES.AsCurrency;
   DataMovimento.CdsNotaFiscalNF_DESP_IMPORT.AsCurrency := FormFaturamento.SqlCdsPedidosPED_DESP_IMPOR.AsCurrency;
   //
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='select * from CLI0000 where CLI_CODIGO = '''+FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString+'''';
   DataCadastros.sqlUpdate.Open;
   if (DataCadastros.sqlUpdate.FieldByName('CLI_ENDENTR').AsString <> EmptyStr) AND
      (DataCadastros.sqlUpdate.FieldByName('CLI_ENDENTR').AsString <> DataCadastros.sqlUpdate.FieldByName('CLI_ENDERE').AsString) then
       DataMovimento.CdsNotaFiscalNF_OBSG1.AsString := 'Endereço Entrega: '+TRIM(DataCadastros.sqlUpdate.FieldByName('CLI_ENDENTR').AsString)+' - Cidade :'+DataCadastros.sqlUpdate.FieldByName('CLI_CIDENTR').AsString+'/'+DataCadastros.sqlUpdate.FieldByName('CLI_UFENTR').AsString+
                                                       ' - CEP : '+DataCadastros.sqlUpdate.FieldByName('CLI_CEPENTR').AsString;
      DataCadastros.sqlUpdate.Close;
    //
    ActiveControl                                      := nil;

    MostraDados;

    CalculaPeso;   }

except on E:EdataBaseError do
   uteis.erro  (pchar('Erro ao abrir a tabela de notas fiscais !'+e.message));
end;

CbTipo1.CarregarCombo := True;
Mostra_Top;
RxDataEmissao.SetFocus;
Screen.Cursor := crDefault;

end;

procedure TFormFatServico.CurrOpeNatExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'BitSair') or
       (ActiveControl.Name = 'BitCancelar') then
       exit;



      BuscaNumNF;

    //CbOper.SetFocus;
   // CurrNumNota.SetFocus;
    //RxDataEmissao.SetFocus;
end;

procedure TFormFatServico.DBEditQtdeKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormFatServico.AtualizaEstoque;
begin

end;

procedure TFormFatServico.MostraDados;
begin
    CbxCarteira.ItemIndex := IIF(wTp_Cobranca = ''  ,0,
                             IIF(wTp_Cobranca = 'CT',1,
                             IIF(wTp_Cobranca = 'CS',2,
                             IIF(wTp_Cobranca = 'CC',3,
                             IIF(wTp_Cobranca = 'Cd',4,
                             IIF(wTp_Cobranca = 'SR',5,6))))));

    CbxTipoDoc.ItemIndex  := IIF(wTp_Docuto = ''  ,0,
                             IIF(wTp_Docuto = 'DP',1,
                             IIF(wTp_Docuto = 'BL',2,
                             IIF(wTp_Docuto = 'RC',3,
                             IIF(wTp_Docuto = 'CH',4,
                             IIF(wTp_Docuto = 'DN',5,
                             IIF(wTp_Docuto = 'OU',6,7)))))));
    //
    CurrcodBanco.Text     := wCod_Carteira;
    {Localiza o Codigo do Banco como Default}
    if (CdsBancos.Locate('BAN_CODIGO',wCod_Carteira,[])=True) then
       begin
           CbBancos.Text := CdsBancosBAN_APELIDO.AsString;
       end
    else
       begin
           CbBancos.Text := '';
       end;
end;

procedure TFormFatServico.ChamaTelaQtdeFaturar;
begin
    if (CdsItemPedidoPRF_QTDEFAT.AsCurrency<CdsItemPedidoPRF_QTDE.AsCurrency) then
       begin
           try
             try
               FormFaturar := TFormFaturar.Create(Application);
               FormFaturar.ShowModal;
             finally
               FormFaturar.Destroy;
               FormFaturar := nil;
               Screen.OnActiveControlChange := MudacorCampos;
               CalculaPeso;
             end;
           except
               //beep;
               uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end;
end;

procedure TFormFatServico.Atualiza_Qtde_Itens_Pedido(pRegistro,
  pStatus: String);
begin
    try
      if (wVariacoes = 'S') then
         begin
             wSql1 := 'Update PED_IT01 set '+
                        'PRF_QTDEFAT       = (PRF_QTDEFAT       + '+ValorAmericano(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR1 = (PRF_QTDE_FAT_VAR1 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR1_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR2 = (PRF_QTDE_FAT_VAR2 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR2_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR3 = (PRF_QTDE_FAT_VAR3 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR3_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR4 = (PRF_QTDE_FAT_VAR4 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR4_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR5 = (PRF_QTDE_FAT_VAR5 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR5_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR6 = (PRF_QTDE_FAT_VAR6 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR6_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR7 = (PRF_QTDE_FAT_VAR7 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR7_IC.AsString)+'),'+
                        'PRF_QTDE_FAT_VAR8 = (PRF_QTDE_FAT_VAR8 + '+ValorAmericano(CdsItemPedidoQTDE_FATVAR8_IC.AsString)+'),'+
                        'PRF_SITUACAO      = '''+wSituacao+'''';
         end
      else
         begin
             wSql1 := 'Update PED_IT01 set '+
                        'PRF_QTDEFAT       = (PRF_QTDEFAT + '+ValorAmericano(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsString)+'),'+
                        'PRF_SITUACAO      = '''+wSituacao+'''';
         end;
      wSeleciona   := ' where PRF_REGISTRO = '''+pRegistro+'''';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=wSQL1+wSELECIONA;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao alterar qtde do Itens do pedido ! '+e.message));
    end;
end;


procedure TFormFatServico.CdsItemPedidoCalcFields(DataSet: TDataSet);
begin
    CdsItemPedidoCC_ID.AsInteger := CdsItemPedido.RecNo;
end;



procedure TFormFatServico.Diminui_Reserva_Variacao(pRefer: String);
begin
   {se tiver variacao baixa estoque das variacoes}
   try
     wSQL1 := 'Update PRD0000 set '+
              'PRD_RESERVA_VAR1 = (PRD_RESERVA_VAR1 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR1_IC.AsString)+'),'+
              'PRD_RESERVA_VAR2 = (PRD_RESERVA_VAR2 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR2_IC.AsString)+'),'+
              'PRD_RESERVA_VAR3 = (PRD_RESERVA_VAR3 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR3_IC.AsString)+'),'+
              'PRD_RESERVA_VAR4 = (PRD_RESERVA_VAR4 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR4_IC.AsString)+'),'+
              'PRD_RESERVA_VAR5 = (PRD_RESERVA_VAR5 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR5_IC.AsString)+'),'+
              'PRD_RESERVA_VAR6 = (PRD_RESERVA_VAR6 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR6_IC.AsString)+'),'+
              'PRD_RESERVA_VAR7 = (PRD_RESERVA_VAR7 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR7_IC.AsString)+'),'+
              'PRD_RESERVA_VAR8 = (PRD_RESERVA_VAR8 - '+ValorAmericano(CdsItemPedidoQTDE_FATVAR8_IC.AsString)+')';
     //
     wSQL2 := ' where PRD_REFER = '''+pRefer+'''';
     //
     DataCadastros.sqlUpdate.close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSQL2,'','');
     DataCadastros.sqlUpdate.Execsql;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualiza o Saldo do Estoque das variações ! '+e.message));
   end;
end;



procedure TFormFatServico.BuscaOperacaoNovo(pNat, pDescri: String);

begin

end;


procedure TFormFatServico.Ope_Fisc_Aliquota_Icms;
var
  wUfLocal: string;
begin

   {jko 18/11/2009}
   //quando a empresa optante pelo simples, preciso calcular o icms normal para fazer os calculos da substituição tributaria
   //antes de gravar sera zerado os valores de base e valor de icms
    if (dataCadastros.CdsOperFiscOPE_TRIBICMS.AsString = 'S') or (dbInicio.Empresa.OPT_SIMPRES = 'S') then
       begin

          {Tributação ICMS}

          wUfAplMvaSomaSN     := '';
          wUfIcmsSubSN      := '';
          wUfAliqIcmsForaEst:= 0;
          wUfAliqIcmsSubCli := 0;
          wUfAliqMVA        := 0;
          wAliqreduzidaICMS := 0;


          {Busca a tributacao do ICMS}

          wCom_Ope_Fisc := true;

           {if (FormFaturamento.SqlCdsPedidosCLI_CONSFINAL.AsString = 'S') then
               begin


                  wSeleciona := 'WHERE ICM_DESTINO = '''+dbInicio.Empresa.UF+'''';
                  wUfLocal   := dbInicio.Empresa.UF;
               end
           else
               begin

                   wSeleciona := 'WHERE ICM_DESTINO = '''+FormFaturamento.SqlCdsPedidosCLI_UF.AsString+'''';
                   wUfLocal   := FormFaturamento.SqlCdsPedidosCLI_UF.AsString;
               end;}



               try

                  // --------------------------------------------------------------------
                   {Aliquotas de ICMS por UF origem}
                   DataCadastros1.CdsICMS.Close;
                   DataCadastros1.CdsICMS.CommandText := SQLDEF('TABELAS','SELECT * FROM ICM0000 ',wSeleciona,'ICM_DESTINO','');
                   DataCadastros1.CdsICMS.Open;
                   if DataCadastros1.CdsICMS.IsEmpty = false then
                      begin

                         {revisar}


                         wALiqICmsCliente  := DataCadastros1.CdsICMSICM_ALIQ.AsCurrency;



                         {if (FormFaturamento.SqlCdsPedidosCLI_CONSFINAL.AsString = 'S') then
                            begin

                               wUfAplMvaSomaSN   := '';
                               wUfIcmsSubSN      := '';
                               // wUfAliqIcmsForaEst:= 0;
                               wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;
                               wUfAliqIcmsSubCli := 0;
                               wUfAliqMVA        := 0;
                            end
                         else
                            begin

                               wUfAplMvaSomaSN   := DataCadastros1.CdsIcmsSOMA_MVA_SN.AsString;
                               wUfIcmsSubSN      := DataCadastros1.CdsIcmsICM_SUB_TRI_SN.AsString;
                               wUfAliqIcmsForaEst:= DataCadastros1.CdsIcmsICM_ALIQ.AsCurrency;
                               wUfAliqIcmsSubCli := DataCadastros1.CdsIcmsICMS_SUBS.AsCurrency;
                               wUfAliqMVA        := DataCadastros1.CdsIcmsICM_MVA.AsCurrency;
                               wAliqreduzidaICMS := DataCadastros1.CdsIcmsICMS_REDUZIDO.AsCurrency;
                            end;}
                      end
                   else
                      begin

                         uteis.aviso('Favor cadastrar a tributação do ICMS desse cliente !');
                         wCom_Ope_Fisc := false;

                      end;

                   DataCadastros1.CdsICMS.Close;

               except on E:EDataBaseError do
                   uteis.erro  (pchar('Erro ao localizar o ICM do Estado !'+e.message));
               end;
       end;


end;



procedure TFormFatServico.CbOperExit(Sender: tObject);
begin
    if ((ActiveControl.Name = 'BitSair') or (ActiveControl.Name = 'CurrOpeNat')) then
       exit;
end;

procedure TFormFatServico.CbOperClick(Sender: tObject);
begin
    if ((ActiveControl.Name = 'BitSair') or (ActiveControl.Name = 'CurrOpeNat')) then
       exit;
end;

procedure TFormFatServico.CalculaPeso;
begin
   try
     CdsItemPedido.First;
     wPesoBruto := 0;
     wPesoLiq   := 0;
     while not CdsItemPedido.Eof do
      begin
         {Calcula o PesoBruto e PesoLiquido de cada Produto}
         if CdsItemPedidoPRD_PESOKG.AsCurrency  > 0 then
            wPesoBruto := wPesoBruto + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRD_PESOKG.AsCurrency);

         if CdsItemPedidoPRD_PESOLIQ.AsCurrency > 0 then
            wPesoLiq   := wPesoLiq + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRD_PESOLIQ.AsCurrency);
         CdsItemPedido.Next;
      end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao calcular o peso !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormFatServico.Gravar_Item_Nota(sNota, sItem: String);

begin
   try

     {gravar itens da fatura para pagamento de comissao por produto }
     Gravar_Item_Fatura(StrZero(CurrNumNota.Text,CurrNumNota.MaxLength),CdsItemPedidoPRD_REFER.AsString);

   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao gravar o Item da Nota !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormFatServico.Gravar_Item_Fatura(sNota, sItem: String);
begin
 // gravar somente se operacao gera fatura
if dataCadastros.CdsOperFiscOPE_SEMVLCOM.AsString = 'N' then  // sim = Sem valor comercial
  begin
   try
     wSql1      := 'SELECT T1.* FROM FAT_IT02 T1 ';
     wSeleciona := 'WHERE T1.FAT_CODIGO = '''+sNota+''' AND T1.PRD_REFER = '''+sItem+'''';
     wOrdem     := 'T1.FAT_CODIGO,T1.PRD_REFER';
     DataMovimento.CdsRecItem.Close;
     DataMovimento.CdsRecItem.CommandText := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
     DataMovimento.CdsRecItem.Open;
     if (not DataMovimento.CdsRecItem.IsEmpty) then
        begin
           DataMovimento.CdsRecItem.Edit;
        end
     else
        begin
           DataMovimento.CdsRecItem.Insert;
           DataMovimento.CdsRecItemEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
        end;

     //
     DataMovimento.CdsRecItemFAT_CODIGO.AsString         := sNota;
     //DataMovimento.CdsRecItemCLI_CODIGO.AsString         := FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString;
     DataMovimento.CdsRecItemPRD_REFER.AsString          := sItem;
     DataMovimento.CdsRecItemFIT_QTDE.Ascurrency         := CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency;
     DataMovimento.CdsRecItemFIT_IPIALIQ.AsCurrency      := CdsItemPedidoPRF_IPIALIQ.AsCurrency;
     DataMovimento.CdsRecItemFIT_PRECO.AsCurrency        := CdsItemPedidoPRF_PRECO.AsCurrency;
     DataMovimento.CdsRecItemFIT_COMIS.AsCurrency        := CdsItemPedidoPRF_ITEMCOMIS.AsCurrency;
     DataMovimento.CdsRecItemFIT_SUBSTIT.AsCurrency      := wValorSubs;
     // pode haver empresa quem faça relação do icms com a comissão
     if (dbInicio.Empresa.OPT_SIMPRES = 'S') then
         DataMovimento.CdsRecItemFIT_ICMALIQ.Ascurrency     := 0
     else
         DataMovimento.CdsRecItemFIT_ICMALIQ.Ascurrency     := wIcmsAliq;
     //
     //
     //     DataMovimento.CdsRecItemFIT_DESCTO.AsCurrency   :=  implementar o valor do desconto na nota

     DataMovimento.CdsRecItem.ApplyUpdates(0);
     DataMovimento.CdsRecItem.Close;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao gravar o Item da Fatura !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
 end;
end;


procedure TFormFatServico.Mostra_Top;
begin
      {if (not FormFaturamento.SqlCdsPedidos.IsEmpty) then
      begin
         CbTipo1.TextoLocalizar := FormFaturamento.SqlCdsPedidosOPV_CODIGO.AsString;
         CbTipo1.Localizar      := True;
         CdsTipo.Close;
         CdsTipo.CommandText := 'Select O1.* From OPV0000 O1 Where OPV_CODIGO = '''+FormFaturamento.SqlCdsPedidosOPV_CODIGO.AsString+'''';
         CdsTipo.Open;
         //
         DataCadastros.CdsClientes.Close;
         DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ','Where C1.CLI_CODIGO = '''+FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString+'''','C1.CLI_CODIGO','C1.');
         DataCadastros.CdsClientes.Open;
         //
         CbConsFinal.ItemIndex    := IIF(DataCadastros.CdsClientesCLI_CONSFINAL.AsString = 'S',0,1);
         Cb_ConsProprio.ItemIndex := IIF(DataCadastros.CdsClientesCLI_CONSU_PROPRIO.AsString = 'S',0,1);

      end;}
end;

function TFormFatServico.RetornaCFOPItem(sCFOPOrigem, sST, sPessoa, sUfEmitente, sUfDestinatario:String):String;
   var
      sUF,
      sResultado:String;
begin
   if (sUfEmitente <> sUfDestinatario) then
      sUF := 'F'
   else
      sUF := 'D';
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.SQL.text   := 'SELECT t1.NOP_REGISTRO FROM NAT_REGRA_CFOP T1 WHERE T1.NOP_CODIGO_ORIGEM = '''+sCFOPOrigem+''' AND T1.STB_CODIGO = '''+sST+''' AND T1.NRG_PESSOA = '''+sPessoa+''' and t1.NRG_DENTROFORA_UF = '''+sUF+'''';
   DataCadastros.sqlUpdate.Open;

   if (DataCadastros.sqlUpdate.IsEmpty) then
      sResultado := sCFOPOrigem
   else
      sResultado := DataCadastros.sqlUpdate.FieldByName('NOP_CODIGO').AsString;
   DataCadastros.sqlUpdate.Close;
   //
   Result := sResultado;

end;





{GRAVA CABEÇALHO NOTA FISCAL}

procedure TFormFatServico.GravaNotaFiscal;
begin

    wValorProd     := 0;

    {Tabela UF destino Icms}
    Ope_Fisc_Aliquota_Icms; {jko 18/11/2009}

          {grava itens da nota fiscal}

           GravaItensNota;

          try

            {******************************************************************************}
            if (dataCadastros.CdsOperFiscOPE_TRIBICMS.AsString = 'S') then
               begin
                   {TOTAL DO ICMS E VALOR DO ICMS}
                   wTotalBaseIcms   :=  wTotalBaseIcmsIndividual;
                   wTotalVlBaseIcms :=  wTotalBaseVlIcmsIndividual;
               end;

            {GRAVA NOTA FISCAL}
            DataMovimento.CdsNotaFiscalNF_NOTANUMBER.AsString  := StrZero(CurrNumNota.Text,CurrNumNota.MaxLength);
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='select * from Emp0000 where EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';;
            DataCadastros.sqlUpdate.open;

            // gravar numero da Nfe antes de gerar Nfe
            DataMovimento.CdsNotaFiscalNF_EMISSAO.AsDateTime   := RxDataEmissao.Date;
            DataMovimento.CdsNotaFiscalNF_SAIDA.AsDateTime     := RxDataEmissao.Date;
            DataMovimento.CdsNotaFiscalOPE_CODIGO.AsString     := wcodigoOperacaoFiscal;
            DataMovimento.CdsNotaFiscalOPE_NATUREZA.AsString   := '5933';
            DataMovimento.CdsNotaFiscalOPE_AGRUPADO.AsString   := dataCadastros.CdsOperFiscOPE_AGRUPADO.AsString;
            DataMovimento.CdsNotaFiscalOPE_SEMVLCOM.AsString   := dataCadastros.CdsOperFiscOPE_SEMVLCOM.AsString;
            DataMovimento.CdsNotaFiscalPED_CODIGO.AsString     := DBEditPedido.Text;
            {DataMovimento.CdsNotaFiscalREP_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosREP_CODIGO.AsString;
            DataMovimento.CdsNotaFiscalNF_ENTR_SAID.AsString   := 'S';
            DataMovimento.CdsNotaFiscalNF_IMPRESS.AsString     := 'N';
            DataMovimento.CdsNotaFiscalCLI_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosCLI_CODIGO.AsString;
            DataMovimento.CdsNotaFiscalNF_VL_DESCTO.AsCurrency := FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency;
            if dataCadastros.CdsOperFiscOPE_ESCRITA.AsString = 'S' then
               DataMovimento.CdsNotaFiscalNF_INTERNO.AsString  := 'N'  //Atualizar o livro fiscal porque nao foi gerado recibo
            else
               DataMovimento.CdsNotaFiscalNF_INTERNO.AsString  := 'S'; //Nao atualiza o livro fiscal porque foi gerado recibo
            DataMovimento.CdsNotaFiscalNF_CANCELADA.AsString   := 'N';
            DataMovimento.CdsNotaFiscalPCL_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosPCL_CODIGO.AsString; }
            DataMovimento.CdsNotaFiscalNF_AGRUPADO.AsString    := 'N';
            DataMovimento.CdsNotaFiscalNF_TOT_PROD.AsCurrency  := wValorProd; // 11/08/2011 Mar : wValorProd-FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency;

            {total da nota = total de produtos + IPI + frete + seguro + desp ace - DESCONTO VALOR}
            DataMovimento.CdsNotaFiscalNF_TOT_NOTA.AsCurrency  := CurrValorFinal.Value;
            // entrada de Importacao com opcao de colocar o valor no ICMS no total da nota
            if DataCadastros.CdsOperFiscOPE_ICMS_TOTALNOTA.AsString = 'S' then
               DataMovimento.CdsNotaFiscalNF_TOT_NOTA.AsCurrency  := DataMovimento.CdsNotaFiscalNF_TOT_NOTA.AsCurrency + wTotalVlBaseIcms;

            DataMovimento.CdsNotaFiscalNF_ALIQ_ICMS.AsCurrency := wALiqICmsCliente;

             //zera valores de base e valor do icms que foram usados para calculo da substituição tributario caso necessario
             if (dbInicio.Empresa.OPT_SIMPRES = 'S') then
               begin
               DataMovimento.CdsNotaFiscalNF_BASEICMS.AsCurrency  := 0;
               DataMovimento.CdsNotaFiscalNF_VL_ICMS.AsCurrency   := 0;
               DataMovimento.CdsNotaFiscalNF_ALIQ_ICMS.AsCurrency := 0;
               end
             else
               begin
               DataMovimento.CdsNotaFiscalNF_BASEICMS.AsCurrency  := wTotalBaseIcms;
               DataMovimento.CdsNotaFiscalNF_VL_ICMS.AsCurrency   := wTotalVlBaseIcms;
               end;

            DataMovimento.CdsNotaFiscalNF_VL_IPI.AsCurrency    := wTotalIPI;

            {Icms substituicao trib. jko}
            DataMovimento.CdsNotaFiscalNF_VLBASESUBTRIB.AsCurrency := wTotalBaseValorSubs;
            DataMovimento.CdsNotaFiscalNF_VL_SUBTRIB.AsCurrency    := wTotalValorSubs;

            {Incluir frete+seguro+desp.acessorias na base do IPI}
            if (DataCadastros.CdsOperFiscOPE_FRETEBASEIPI.AsString = 'S') then
             DataMovimento.CdsNotaFiscalNF_BASE_IPI.AsCurrency   := wBaseIPI
            else
             DataMovimento.CdsNotaFiscalNF_BASE_IPI.AsCurrency      := wBaseIPI;

            if (DataCadastros.CdsOperFiscOPE_DESPIMPORIPI.Value = 'S') then
             DataMovimento.CdsNotaFiscalNF_BASE_IPI.AsCurrency := 0;

            DataMovimento.CdsNotaFiscalNF_OBS_OPER.AsString        := dataCadastros.CdsOperFiscOPE_AVISOLEGAL.AsString;
            DataMovimento.CdsNotaFiscalNF_OBS_OPER_AVISO2.AsString := dataCadastros.CdsOperFiscOPE_AVISOLEGAL2.AsString;
            // CREDITO DE ICMS  da empresa se SIMPLES
            if ((dbInicio.Empresa.OPT_SIMPRES = 'S')and (dbInicio.Empresa.ALIQ_SIMPLES > 0)) then
               DataMovimento.CdsNotaFiscalNF_OBSG6.AsString := DataMovimento.CdsNotaFiscalNF_OBSG6.AsString +
           'Permite crédito de ICMS no vlr de R$ '+FormatFloat('##0.00',(DataMovimento.CdsNotaFiscalNF_TOT_PROD.AsFloat * (dbInicio.Empresa.ALIQ_SIMPLES/100)))+
           ' ref.alíq.de '+ FloatToStr(dbInicio.Empresa.ALIQ_SIMPLES)+
           ' % nos termos do art.23 LC 123';

            {DataMovimento.CdsNotaFiscalNF_OBS_PEDI.AsString    := FormFaturamento.SqlCdsPedidosPED_OBSNOTA.AsString;
            DataMovimento.CdsNotaFiscalEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
            DataMovimento.CdsNotaFiscalAMX_CODIGO.AsString     := FormFaturamento.SqlCdsPedidosAMX_CODIGO.AsString;
            DataMovimento.CdsNotaFiscalNF_TP_DESCTO.AsString   := FormFaturamento.SqlCdsPedidosPED_TPDESCTO.AsString;
            DataMovimento.CdsNotaFiscalNF_PC_DESCTO1.AsCurrency:= FormFaturamento.SqlCdsPedidosPED_DESCTOPC1.AsCurrency;
            DataMovimento.CdsNotaFiscalNF_PC_DESCTO2.AsCurrency:= FormFaturamento.SqlCdsPedidosPED_DESCTOPC2.AsCurrency;
            DataMovimento.CdsNotaFiscalOPV_CODIGO.AsInteger    := FormFaturamento.SqlCdsPedidosOPV_CODIGO.AsInteger; }
            DataMovimento.CdsNotaFiscalOPE_REDU_ICM.AsCurrency := dataCadastros.CdsOperFiscOPE_REDU_ICM.AsCurrency;
            //
            DataMovimento.CdsNotaFiscalNF_TIPODOC.AsString     := IIF(CbxTipoDoc.ItemIndex = 0,''  ,
                                                                  IIF(CbxTipoDoc.ItemIndex = 1,'DP',
                                                                  IIF(CbxTipoDoc.ItemIndex = 2,'BL',
                                                                  IIF(CbxTipoDoc.ItemIndex = 3,'RC',
                                                                  IIF(CbxTipoDoc.ItemIndex = 4,'CH',
                                                                  IIF(CbxTipoDoc.ItemIndex = 5,'DN',
                                                                  IIF(CbxTipoDoc.ItemIndex = 6,'OU','CC')))))));
            //NFSE
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_IR.AsVariant := CurrValorIR.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_CSLL.AsVariant := CurrValorCSLL.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_INSS.AsVariant := CurrValorINSS.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_COFINS.AsVariant := CurrValorCOFINS.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_PIS.AsVariant := CurrValorPIS.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_DEDUCOES.AsVariant := CurrValorDeducoes.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_VLR_ISS.AsVariant := CurrValorISS.Value;
            DataMovimento.CdsNotaFiscalNF_NFSE_ALIQUOTA_ISS.AsVariant := CurrPercenteISS.Value;
            DataMovimento.CdsNotaFiscalNF_TOT_NOTA.AsVariant := CurrValorFinal.Value;
            if (CbServico.EditValue <> null) then
              DataMovimento.CdsNotaFiscalSRV_REGISTRO.AsString := CbServico.EditValue;

            DataMovimento.CdsNotaFiscalNF_NFSE_DESCRICAO.AsString := MdescricaoServico.Text;
            DataMovimento.CdsNotaFiscalNF_STATUS_NFSE.AsString := 'S';


            DataMovimento.CdsNotaFiscal.ApplyUpdates(0);
          except on E:EdatabaseError do
             begin
                 uteis.erro  (pchar('Erro ao gravar nota !'+e.message));
                 //  DataCadastros.SQLConnection1.Rollback(wTransacao);
             end;
          end;
end;



{GRAVA ITENS DA NOTA FISCAL}

procedure TFormFatServico.GravaItensNota;
Var
  wValorSemMilhar : String;

begin

    wTotalSemComissao        := 0;
    wPesoBruto               := 0;
    wPesoLiq                 := 0;
    wSql1                    := '';
    wSql2                    := '';
    wBaseIcmsIndividual      := 0;
    wBaseIcms                := 0;
    wBaseIPI                 := 0;
    wTotalBaseIcmsIndividual := 0;
    wTotalBaseIcms           := 0;
    wTotalVlBaseIcms         := 0;
    wTotalValorSubs          := 0;
    wTotalBaseValorSubs      := 0;

    {if (FormFaturamento.SqlCdsPedidosCLI_UF.AsString <> dbInicio.Empresa.UF) then
      begin
         wForaEstSN := 'S';
      end
      else
      begin
         wForaEstSN := 'N';
      end;}

     // wTotalSemComissao := FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency; (15/04/2011 -se descto saiu na nota entao o descto ja esta no vl liquido

    {é necessario totalizar os produtos da nota antes para poder fazar do rateio do frete
    quando tiver que colocar frete na base do IPI ou colcar frete na base do ICMS }
    wValorProdLiquido := 0;
    wValorProdIndividual :=0;
    wIPIDESPIMPORT  := 0;
    wDesctoValorIPI := 0;
    wDesctoValorICMS:= 0;
    CdsItemPedido.First;
    While not CdsItemPedido.Eof do
     begin
       // grava total para rateio
       wValorProdLiquido := wValorProdLiquido  + (CdsItemPedidoPRF_PRECO.AsCurrency * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency);
       CdsItemPedido.Next;
     end;

    {Itens do pedido}
    CdsItemPedido.DisableControls;
    CdsItemPedido.First;
    While not CdsItemPedido.Eof do
     begin

         {GERAR ITENS DA NOTA FISCAL}

         wBaseIcms              := 0;
         wValorIcms             := 0;
         wValorCredSimples      := 0;

         wCadProdAliqIcms       := 0;

         wValorIPI              := 0;
         wIPIFrete              := 0;
         wFreterateado          := 0;

         wPrecoMatPrima         := 0;

         wBaseIcmsIndividual    := 0;
         wValorIcmsIndividual   := 0;

         wBaseIPIIndividual     := 0;   { ma }
         wValorIPIIndividual    := 0;   { ma }

         wBaseValorSubs         := 0;
         wValorSubs             := 0;
         wTemSubs               := 'N'; {no cad Produto jko}


         if (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'N') then
            begin
               {Produto normal jko}

               if CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency > 0 then
                  begin

                      {Referência e Descrição}
                      wPRODUTO := CdsItemPedidoPRD_REFER.AsString+' - '+CdsItemPedidoPRF_PRDDESCRI.AsString;

                      wValorProdIndividual := (CdsItemPedidoPRF_PRECO.AsCurrency * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency);
                      {total dos itens do pedido}
                      wValorProd           := wValorProd + wValorProdIndividual;

                      // Gravar credito de ICMS se a empresa é do simples

                      if ((dbInicio.Empresa.OPT_SIMPRES = 'S')and (dbInicio.Empresa.ALIQ_SIMPLES > 0)) then
                        begin
                        wValorCredSimples    := wValorProdIndividual * dbInicio.Empresa.ALIQ_SIMPLES/100;
                      end;


                      {*******************************************************
                      Calcula o PesoBruto e PesoLiquido de cada Produto
                      if CdsItemPedidoPRD_PESOKG.AsCurrency  > 0 then
                         wPesoBruto := wPesoBruto + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRD_PESOKG.AsCurrency);
                      if CdsItemPedidoPRD_PESOLIQ.AsCurrency > 0 then
                         wPesoLiq   := wPesoLiq + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRD_PESOLIQ.AsCurrency);
                      {*******************************************************}

                      {Dados e parametros do cad produtos:
                          -Aliquota Icms produto -venda dentro do estado ou consumidor final jko
                          -Substituição tributária  S/N
                          -Pagamento da  comissao
                      }

                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select PR1.PRD_ALIQICM,PR1.PRD_ICMSUBS,PG1.PGR_COMISS,PR1.PRD_TEMSUB from PRD0000 PR1 left join PRD_GRUPO PG1 ON PR1.PGR_CODIGO = PG1.PGR_CODIGO ','where PR1.PRD_REFER = '''+CdsItemPedidoPRD_REFER.AsString+'''','PR1.PRD_REFER','PR1.');
                      DataCadastros.sqlUpdate.Open;


                      {PRODUTO}

                      {Comissão. Grava na FAT0000 o Total de item sem comissao para calculo de comissao}
                      if (DataCadastros.sqlUpdate.FieldByName('PGR_COMISS').AsString = 'N') then
                         wTotalSemComissao := (CdsItemPedidoPRF_PRECO.AsCurrency * CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency);

                      {Produto com aliquota do Icms}
                      wCadProdAliqIcms := DataCadastros.sqlUpdate.FieldByName('PRD_ALIQICM').AsCurrency;

                      wIcmsAliq  := wCadProdAliqIcms;  {jko}

                      {Produto com substituição tributária se 'S'}
                      wTemSubs   := DataCadastros.sqlUpdate.FieldByName('PRD_TEMSUB').AsString;  { jko}


                      {Operação Fiscal - Tributar IPI}
                      if (dataCadastros.CdsOperFiscOPE_TRIBIPI.AsString = 'S') then
                         begin
                            //rateio do frete/Seguro e desp. aces. na base do IPI
                            //Formula : FRETE/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
                             wIPIFrete := 0;

                             {Calcular IPI de cada produto}
                             wValorIPI := (CdsItemPedidoPRF_IPIALIQ.AsCurrency * (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency))/100;


                             {Incluir Despesas de Importação na Base do IPI com rateio por item}
                             //Formula : DESPESAS DE IMPORTAÇÃO/TOTAL DOS PRODUTOS DA NOTA*TOTAL UNITARIO DE CADA PRODUTO
                             wIPIDESPIMPORT := 0;
                             {Aplicar reducao do IPI}
                             if (dataCadastros.CdsOperFiscOPE_REDU_IPI.AsCurrency>0) and (wValorIPI>0) then
                                begin
                                    {a variavel wValorIPIND soma todos os ipi dos produtos que tem icms exclusivo}
                                    {pode resultar em valor negativo}
                                    wValorIPI := wValorIPI - ((wValorIPI * dataCadastros.CdsOperFiscOPE_REDU_IPI.AsCurrency)/100);
                                end;

                             { Aplicar no valor do IPI fazendo o rateio por item da nota}
                             {if FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency > 0 then
                                 begin
                                 // rateio do valor do desconto para cada item da nota (util para IPI e ICMS)
                                 wDesctoItemValor  := (FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency)/(wValorProdLiquido)*(wValorProdIndividual);
                                 // rateio do valor do IPI
                                 wDesctoValorIPI :=(CdsItemPedidoPRF_IPIALIQ.AsCurrency/100)*(FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency)/(wValorProdLiquido)*(wValorProdIndividual);
                                 end
                             else
                                 begin
                                 wDesctoItemValor  := 0;
                                 wDesctoValorIPI := 0;
                                 end;  }

                             { Totalizar o IPI }
                             if (wValorIPI > 0) then
                               begin
                                  // total individual de cada produto (IPI e rateios)
                                  wBaseIPIIndividual   := wValorProdIndividual - wDesctoItemValor ;
                                  wValorIPIIndividual  := (wValorIPI + wIPIFrete + wIPIDESPIMPORT) - wDesctoValorIPI;
                                  // totalização do IPI de TODOS os produtos
                                  wTotalIPI := wTotalIPI + wValorIPIIndividual;
                                  wBaseIPI  := wBaseIPI  + wBaseIPIIndividual
                               end;


                             {Acumula IPI na Base da substituição tributária os itens jko}
                             if (wValorIPI > 0) then
                                begin
                                   // na legislação da substituição tributária sempre é somado o IPI na base da substituição
                                   if (wTemSubs='S') then
                                      begin
                                         wBaseValorSubs := wBaseValorSubs + wValorIPIIndividual;
                                      end;
                                end;


                         end;

                      {Tributar ICMS verificar em Natureza da Operação}
                       //quando a empresa é do simples, preciso calcular o icms normal para fazer os calculos da substituição tributaria, se houver
                       //antes de gravar sera zerado os valores de base e valor de icms

                      if (DataCadastros.CdsOperFiscOPE_TRIBICMS.AsString = 'S') or (dbInicio.Empresa.OPT_SIMPRES = 'S') then
                         begin
                           {OPERAÇÃO FISCAL -Tributar ICMS = 'S'}

                          // aplicar aliquota do ICMS
                           if (wForaEstSN = 'S') then
                              begin
                              {venda interestadual}
                              wBaseIcmsIndividual  := wBaseIcmsIndividual+(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency);
                              wValorIcmsIndividual := wValorIcmsIndividual +
                              ((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency)*wUfAliqIcmsForaEst)/100;
                              wIcmsAliq  := wUfAliqIcmsForaEst;
                              end
                            else
                                begin
                                   if wCadProdAliqIcms > 0 then
                                      begin
                                      {com aliquota no produto}
                                      {Incidência de ICMS VIA - PRODUTO}
                                      {Aliquota estadual -cadastro do produto é a tributação da UF da EMPRESA}

                                      wBaseIcmsIndividual  := wBaseIcmsIndividual+(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency);
                                      wValorIcmsIndividual := wValorIcmsIndividual +
                                            ((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency)*wCadProdAliqIcms)/100;

                                        wIcmsAliq            := wCadProdAliqIcms;
                                      end
                                    else
                                      begin
                                        {sem aliquota no produto- usa da tabela do estado}

                                        if (dbInicio.Empresa.OPT_SIMPRES = 'S') or (wForaEstSN = 'N') then
                                          begin
                                            wBaseIcmsIndividual  := wBaseIcmsIndividual  + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency);
                                            wValorIcmsIndividual := wValorIcmsIndividual +((CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency)*wALiqICmsCliente)/100;
                                            wIcmsAliq  := wALiqICmsCliente;
                                         end;

                                      end;

                                end;

                            // ------------------------------------------------------------------------------------------------------

                            { Aplicar o valor do desconto no ICMS antes de acrescentar outros na base do ICMS}
                            {if FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency > 0 then
                                begin
                                wDesctoValorICMS :=(wIcmsAliq/100)*(FormFaturamento.SqlCdsPedidosPED_DESCTOVL.AsCurrency)/(wValorProdLiquido)*(wValorProdIndividual);
                                wBaseIcmsIndividual  := wBaseIcmsIndividual - wDesctoItemValor;
                                wValorIcmsIndividual := wValorIcmsIndividual - wDesctoValorICMS
                                end
                             else
                                wDesctoValorICMS := 0; }


                            {Acrescentar IPI na base do ICMS; operacao para consumidor final}
                            if (DataCadastros.CdsOperFiscOPE_IPINABASEICMS.AsString = 'S') then
                              begin
                                 wBaseIcmsIndividual  := wBaseIcmsIndividual  + wValorIPI + wIPIDESPIMPORT + wIPIFrete;
                                 wValorIcmsIndividual := (wBaseIcmsIndividual * wIcmsAliq )/100;
                              end;

                            {Incluir frete rateando o valor do frete e desp. no procuto na base do ICMS}
                                                         //aplicando o fator (multiplicador) de diminuição para base do ICMS
                           if DataCadastros.CdsOperFiscOPE_INDICE_IMP.AsCurrency > 0 then
                              begin
                                  wBaseIcmsIndividual   := (wBaseIcmsIndividual   * DataCadastros.CdsOperFiscOPE_INDICE_IMP.AsCurrency);
                                  wValorIcmsIndividual  := (wValorIcmsIndividual * DataCadastros.CdsOperFiscOPE_INDICE_IMP.AsCurrency);
                              end;

                            //aplicando o fator (divisor) de aumento para base do ICMS
                            if DataCadastros.CdsOperFiscOPE_AUMEN_ICMS.AsCurrency > 0 then
                              begin
                                wBaseIcmsIndividual := (wBaseIcmsIndividual   / DataCadastros.CdsOperFiscOPE_AUMEN_ICMS.AsCurrency);
                                wValorIcmsIndividual:= (wValorIcmsIndividual / DataCadastros.CdsOperFiscOPE_AUMEN_ICMS.AsCurrency);
                              end;


                           { calcular redução da aliquota do ICMS que consta na tabela do ICMS do estado }
                          // BASE ICMS * REDUZIDA / ALIQUOTA INTERNA
                           if wAliqreduzidaICMS > 0 then
                             begin
                              // a aliquota reduzida é calculada sobre a base do icms normal
                              wValorIcmsIndividual := wBaseIcmsIndividual * wAliqreduzidaICMS / 100;
                              // a base no icms normal agora é reduzida pela dividao do vl do icms pela aliq normal
                              wBaseIcmsIndividual  := wBaseIcmsIndividual * wAliqreduzidaICMS / wIcmsAliq;
                             end;


                            // Aplicar REDUÇÃO PERCENTUAL do valor do ICMS - Paraná
                            if (dataCadastros.CdsOperFiscOPE_REDU_ICM.AsCurrency > 0) then
                             begin
                                 wValorIcmsIndividual   := wValorIcmsIndividual - ((wValorIcmsIndividual * dataCadastros.CdsOperFiscOPE_REDU_ICM.AsCurrency)/100);
                             end;


                         end;  // fim do laço ICMS


                      {Totalizando as base do Icms e o Vlr do Icms}
                      wTotalBaseIcmsIndividual   := wTotalBaseIcmsIndividual   + wBaseIcmsIndividual;
                      wTotalBaseVlIcmsIndividual := wTotalBaseVlIcmsIndividual + wValorIcmsIndividual;

                      wTotalBaseIcms             := wTotalBaseIcms + wBaseIcms;
                      wTotalVlBaseIcms           := wTotalVlBaseIcms + wValorIcms;

                      if ((DataCadastros.CdsClientesCLI_CONSFINAL.AsString = 'S') or
                          //(FormFaturamento.SqlCdsPedidosCLI_UF.AsString = dbInicio.Empresa.UF) or
                          (not (wUfIcmsSubSN = 'S'))) then
                         begin
                            {É consumidor final ou}
                            {É venda interna -UF do cliente e da empresa emissora diferentes ou}
                            {Tabela de Aliquotas/UF destino -UF SEM subst jko}

                            wValorSubs     := 0;
                            wBaseValorSubs := 0;
                         end
                      else
                         begin
                            // atencao : cliente consumidor final não tributa a substituicaõ tributária
                            //
                            if (wTemSubs='S') and (dataCadastros.CdsOperFiscOPE_SUBTRIBUTARIA.AsString = 'S')then
                               begin
                                  {Produto -Substituição tributária(cadastro produto)}

                                 wBaseValorSubs := wBaseValorSubs + (CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency * CdsItemPedidoPRF_PRECO.AsCurrency);


                                  if (wUfAplMvaSomaSN = 'S') then
                                     begin
                                        {Aplica MVA e Soma na base e aplica aliquota icms}
                                        {1000*40%=(400+1000)*7}
                                        wCalBaseValorSubs := ((wBaseValorSubs * wUfAliqMVA)/100);
                                        wCalBaseValorSubs := wCalBaseValorSubs + wBaseValorSubs;
                                        wBaseValorSubs    := wCalBaseValorSubs;
                                     end
                                  else
                                     begin
                                        {Aplica MVA e aplica aliquota icms}
                                        {1000*40%=400*7}
                                        wCalBaseValorSubs := ((wBaseValorSubs * wUfAliqMVA)/100);
                                        wBaseValorSubs    := wCalBaseValorSubs;
                                     end;
                                  {UF destino}
                                  wUfResultMVA      := ((wBaseValorSubs*wUfAliqIcmsSubCli)/100);

                                  if (wUfResultMVA > wValorIcmsIndividual) then
                                     begin
                                        {VALOR DO ICMS SUBSTITUIÇÃO}
                                        wValorSubs := wUfResultMVA - wValorIcmsIndividual;

                                     end
                                     else
                                     begin

                                        wValorSubs     :=  0;
                                        wBaseValorSubs :=  0;

                                     end;

                                  if (wValorSubs>0) then
                                     begin
                                        wTotalBaseValorSubs := wTotalBaseValorSubs + wBaseValorSubs;
                                        wTotalValorSubs     := wTotalValorSubs + wValorSubs;
                                     end
                                  else
                                     begin
                                        wBaseValorSubs := 0;
                                     end;
                               end
                            else
                               begin
                                  wValorSubs     := 0;
                                  wBaseValorSubs := 0;
                               end;
                         end;

                         //end;
                      //

                      //zera valores de base e valor do icms que foram usados para calculo da substituição tributario caso necessario
                      if (dbInicio.Empresa.OPT_SIMPRES = 'S') then
                      begin
                        { tem variavel sobrando - revisar - 30/03/2011 marcio}
                        wBaseIcms  := 0;
                        wValorIcms := 0;
                        wIcmsAliq  := 0;
                        wValorIcmsIndividual       := 0;
                        wBaseIcmsIndividual        := 0;
                        wTotalBaseIcms             := 0;
                        wTotalVlBaseIcms           := 0;
                        wTotalBaseIcmsIndividual   := 0;
                        wTotalBaseVlIcmsIndividual := 0;
                      end;

                      {Calcular o Preco da Materia-Prima}
                      wSeleciona := ' WHERE F1.PRD_REFER = '''+CdsItemPedidoPRD_REFER.AsString+''' AND F1.FTI_MODE1= ''X''';
                      if Share('PRODUTOS')='E' then
                         wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='SELECT F1.PRD_REFER,SUM(F1.FTI_UC*P1.PRD_PCUSTO) as wPMatPrima FROM FTC_IT01 F1 JOIN PRD0000 P1 ON (P1.PRD_REFER = F1.PRD_REFER_ITENS)'+wSeleciona+'GROUP BY F1.PRD_REFER ORDER BY F1.PRD_REFER';
                      DataCadastros.sqlUpdate.Open;
                      if DataCadastros.sqlUpdate.IsEmpty = false then
                         begin
                             wPrecoMatPrima := DataCadastros.sqlUpdate.FieldByName('wPMatPrima').AsCurrency;
                         end;

                      {Inserir o Item do Pedido na Tabela Item da Nota Fiscal}
                      Gravar_Item_Nota(StrZero(CurrNumNota.Text,CurrNumNota.MaxLength),CdsItemPedidoPRD_REFER.AsString);
                      //
                      {atualiza qtde faturada no item do pedido e também}
                      {Atualizar a Situacao do Item do Pedido
                      F=À Faturar, P=Faturado Parcial, T=Faturado Total}
                      if (CdsItemPedidoPRF_QTDE.AsCurrency = (CdsItemPedidoPRF_QTDEFAT.AsCurrency+CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency)) then
                         wSituacao := 'T'    //Faturado Total
                      else
                         wSituacao := 'P';   //Faturado Parcial
                      {Atualiza a Qtde Faturada nos Itens do Pedido}
                      Atualiza_Qtde_Itens_Pedido(CdsItemPedidoPRF_REGISTRO.AsString,
                                                 wSituacao);


                      {Somente atualizar o estoque quando:
                       No tipo de produto o Flag Atualiza Estoque for Sim.
                       No grupo do produto o Flag Atualiza Estoque for Sim.
                       No Tipo de Pedido o Flag Atualiza Estoque for Sim.
                       Na Operaçao fiscal o Flag for Sim}


                      if (CdsItemPedidoPRD_REFER.AsString <> '9999') then
                         begin
                             if ((CdsItemPedidoPTI_ATUALIZAR_ESTOQUE.AsString = 'S') and
                                 (CdsItemPedidoOPV_ATESTOQUE.AsString = 'S') and
                                 (dataCadastros.CdsOperFiscOPE_ESTOQUE.AsString = 'S')) then
                                begin
                                    {if (CdsItemPedidoPGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                                       begin
                                           AtualizaEstoque;
                                           if (dbInicio.Empresa.wMultiAlmox = 'S') then
                                              Lanca_Movimento_reserva_Almox('E',
                                                                            FormFaturamento.SqlCdsPedidosAMX_CODIGO.AsString,
                                                                            CdsItemPedidoPRD_REFER.AsString,
                                                                            CdsItemPedidoPRF_QTDE_FATURAR_CC.asFloat);
                                       end
                                    else
                                       if (CdsItemPedidoPGR_CODIGO.IsNull) then
                                          begin
                                              AtualizaEstoque;
                                              if (dbInicio.Empresa.wMultiAlmox = 'S') then
                                                 begin
                                                    Lanca_Movimento_reserva_Almox('E',
                                                                                  FormFaturamento.SqlCdsPedidosAMX_CODIGO.AsString,
                                                                                  CdsItemPedidoPRD_REFER.AsString,
                                                                                  CdsItemPedidoPRF_QTDE_FATURAR_CC.asFloat);
                                                 end;
                                          end; }

                                end;
                         end;
                  end;

            end
         else
            begin

               {Produto Agregado jko}

               {if (CdsItemPedidoPRF_PRODUTO_AGREGADO.AsString = 'S') then}
               {Calcular o Preco da Materia-Prima}
               wSeleciona := ' WHERE F1.PRD_REFER = '''+CdsItemPedidoPRD_REFER.AsString+''' AND F1.FTI_MODE1= ''X''';
               if Share('PRODUTOS')='E' then
                  wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='SELECT F1.PRD_REFER,SUM(F1.FTI_UC*P1.PRD_PCUSTO) as wPMatPrima FROM FTC_IT01 F1 JOIN PRD0000 P1 ON (P1.PRD_REFER = F1.PRD_REFER_ITENS)'+wSeleciona+'GROUP BY F1.PRD_REFER ORDER BY F1.PRD_REFER';
               DataCadastros.sqlUpdate.Open;
               if DataCadastros.sqlUpdate.IsEmpty = false then
                  begin
                      wPrecoMatPrima := DataCadastros.sqlUpdate.FieldByName('wPMatPrima').AsCurrency;
                  end;

               //
               {Inserir o Item do Pedido na Tabela Item da Nota Fiscal}
               Gravar_Item_Nota(StrZero(CurrNumNota.Text,CurrNumNota.MaxLength),
                                CdsItemPedidoPRD_REFER.AsString);

               //
               wSituacao := 'T';
               {Atualiza a Qtde Faturada nos Itens do Pedido}
               Atualiza_Qtde_Itens_Pedido(CdsItemPedidoPRF_REGISTRO.AsString,
                                          wSituacao);
               {Somente atualizar o estoque quando:
                No tipo de produto o Flag Atualiza Estoque for Sim.
                No grupo do produto o Flag Atualiza Estoque for Sim.
                No Tipo de Pedido o Flag Atualiza Estoque for Sim.
                Na Operaçao fiscal o Flag for Sim}
               if (CdsItemPedidoPRD_REFER.AsString <> '9999') then
                  begin
                      if ((CdsItemPedidoPTI_ATUALIZAR_ESTOQUE.AsString = 'S') and
                          (CdsItemPedidoOPV_ATESTOQUE.AsString = 'S') and
                          (dataCadastros.CdsOperFiscOPE_ESTOQUE.AsString = 'S')) then
                         begin
                             {if (CdsItemPedidoPGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                                begin
                                    AtualizaEstoque;
                                    if (dbInicio.Empresa.wMultiAlmox = 'S') then
                                       Lanca_Movimento_reserva_Almox('E',
                                                                     FormFaturamento.SqlCdsPedidosAMX_CODIGO.AsString,
                                                                     CdsItemPedidoPRD_REFER.AsString,
                                                                     CdsItemPedidoPRF_QTDE_FATURAR_CC.asFloat);
                                end
                             else
                                if (CdsItemPedidoPGR_CODIGO.IsNull) then
                                   begin
                                       AtualizaEstoque;
                                       if (dbInicio.Empresa.wMultiAlmox = 'S') then
                                          Lanca_Movimento_reserva_Almox('E',
                                                                        FormFaturamento.SqlCdsPedidosAMX_CODIGO.AsString,
                                                                        CdsItemPedidoPRD_REFER.AsString,
                                                                        CdsItemPedidoPRF_QTDE_FATURAR_CC.asFloat);
                                   end;}
                         end;
                  end;
            end;
         CdsItemPedido.Next;
     end;
    {Calcula o Desconto que foi dado no Pedido para Gravar na Nota Fiscal}
    wCALCULO := 0;
    {wCALCULO := ( 100      - (( 100      * FormFaturamento.SqlCdsPedidosPED_DESCTOPC1.AsCurrency) / 100));
    wCALCULO := ( wCALCULO - (( wCALCULO * FormFaturamento.SqlCdsPedidosPED_DESCTOPC2.AsCurrency) / 100));}

    wPorCdescto  := 0;
    wPorCdescto  := ((100 - wCALCULO ));

    CdsItemPedido.EnableControls;

end;


procedure TFormFatServico.MudaNumeroFatura(pNat, pDescri: String);
var Operacao    : String[2];
    CodOperacao : String[6];
    Generator, GeneratorReduzido  : String;
begin
  Operacao           := EmptyStr;
  CodOperacao        := EmptyStr;
  generator          := EmptyStr;
  generatorReduzido  := EmptyStr;

  if not DataCadastros.CdsOperFisc.Active then
     DataCadastros.CdsOperFisc.Open;

  try
       //localiza operacao fiscal para gerar nro de fatura personalizada
    if (dataCadastros.CdsOperFisc.Locate('OPE_NATUREZA;OPE_DESCRI',VarArrayOf([pNat,pDescri]),[loPartialKey])=True) then
       if DataCadastros.CdsOperFiscOPE_ESCRITA.AsString <> 'S' then
        begin
         //recebe os dois primeiros nros da natureza de operacao
         Operacao  := DataCadastros.CdsOperFiscOPE_NATUREZA.AsString;
         generator := StrZero(IntToStr(CurrNumNota.AsInteger),6);

         //usar somente 4 digitos do generator porque sera completado seis digitos com os dois primeiros numeros da natureza de operacao
         generatorReduzido  := copy(generator,3,6);
         CodOperacao := Operacao + generatorReduzido;
         //se nao gera escrita fiscal grava os dois primeiros nros da natureza de operacao na frente do nro da fatura
         CurrNumNota.Value := StrToInt(CodOperacao);
         end
       else
          // deixar numeração original
         // InserirNumNF;

    except on E:EdataBaseError do
      uteis.erro  (pchar('erro ao verificar o último número da NFe !'+e.message));
    end;
end;

procedure TFormFatServico.ChamaFaturar;
begin
   try
     try
       frmFATPARC := TfrmFATPARC.Create(Application);
       frmFATPARC.ShowModal;
     finally
       frmFATPARC.Destroy;
       frmFATPARC := nil;
     end;
   except
       //beep;
       uteis.erro  ('Ocorreu um erro na criação do formulário!');
   end;
end;

procedure TFormFatServico.CurrNumNotaEnter(Sender: tObject);
begin
 CurrNumNota.SelectAll;
end;

procedure TFormFatServico.CalculaTotal;
begin
  if (CurrPercenteIR.Value > 0) then
    CurrValorIR.Value := CurrValorBaseCalculo.Value * (CurrPercenteIR.Value/100);
  if (CurrPercenteCOFINS.Value > 0) then
    CurrValorCOFINS.Value := CurrValorBaseCalculo.Value * (CurrPercenteCOFINS.Value/100);
  if (CurrPercentePIS.Value > 0) then
    CurrValorPIS.Value := CurrValorBaseCalculo.Value * (CurrPercentePIS.Value/100);
  if (CurrPercenteISS.Value > 0) then
    CurrValorISS.Value := CurrValorBaseCalculo.Value * (CurrPercenteISS.Value/100);
  if (CurrPercenteINSS.Value > 0) then
    CurrValorINSS.Value := CurrValorBaseCalculo.Value * (CurrPercenteINSS.Value/100);
  CurrValorFinal.Value := DBEditValor.Field.Value -
                          CurrValorCSLL.Value -
                          CurrValorCOFINS.Value -
                          CurrValorPIS.Value;
  CurrValorFinal.Value := CurrValorFinal.Value - CurrValorDeducoes.Value;
end;

procedure TFormFatServico.CurrValorIRExit(Sender: tObject);
begin
  CalculaTotal;
end;

end.

