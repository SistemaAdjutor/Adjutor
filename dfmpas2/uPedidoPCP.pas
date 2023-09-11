unit uPedidoPCP;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider, DB,
  DBClient, DBLocal, DBLocalS, Mask, DBCtrls,  rxToolEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComboBoxRw, JvExMask,
  JvSpin, FMTBCd, ExtCtrls, Gauges, DATEUTILS, ComCtrls, ImgList, Menus,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP , IdMultipartFormData, JvExControls,
  JvAnimatedImage, JvGIFCtrl, StrUtils, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData,  rxCurrEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RxRichEd, IdGlobal, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator,
  System.ImageList, SimpleDS, Data.DBXFirebird, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ;

type
  TFrmPedidoPCP = class(TFrmBaseDbEstoque)
    pgc1: TPageControl;
    ts1: TTabSheet;
    GroupBox1: TGroupBox;
    DbGradeItemPedido: TDBGrid;
    Memo: TMemo;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdPedidoNumero: TEdit;
    EdClienteCodigo: TEdit;
    CbCliente: TComboBoxRw;
    rbEntrada: TRadioButton;
    rbPrevista: TRadioButton;
    RxDataInicial: TDateEdit;
    RxDataFinal: TDateEdit;
    BitBtn2: TBitBtn;
    BitPesquisar: TBitBtn;
    Bit_Sair: TBitBtn;
    cbbDias: TComboBox;
    SpinDias: TJvSpinEdit;
    grpProduto: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    CbGrade: TComboBoxRw;
    cbbConclusao: TComboBox;
    SpinConclusao: TJvSpinEdit;
    btnEnviar: TBitBtn;
    btnAtualizar: TBitBtn;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    dbedtConclusaoPedido: TDBEdit;
    dbedtPED_CODIGO: TDBEdit;
    CdsPedidoItens: TSQLClientDataSet;
    CdsPedidoItensCLI_CODIGO: TStringField;
    CdsPedidoItensCLI_RAZAO: TStringField;
    CdsPedidoItensPRD_REFER: TStringField;
    CdsPedidoItensDESCRICAO: TStringField;
    CdsPedidoItensPED_DTENTRADA: TSQLTimeStampField;
    CdsPedidoItensPED_DTSAIDA: TSQLTimeStampField;
    CdsPedidoItensPRF_QTDE: TFMTBCdField;
    CdsPedidoItensPRF_QTDE_ENV_PRODUCAO: TFMTBCdField;
    CdsPedidoItensPRF_QTDE_REC_PRODUCAO: TFMTBCdField;
    CdsPedidoItensConclusao: TFloatField;
    CdsPedidoItensDias: TIntegerField;
    CdsPedidoItensPED_OBSERVACAO: TBlobField;
    CdsPedidoItensPED_CODIGO: TStringField;
    CdsPedidoItensSelecao: TBooleanField;
    CdsPedidoItensPRF_REGISTRO: TIntegerField;
    CdsPedidoItensPRF_QTDE_ENV_PRODUCAO_PEDIDO: TFMTBCdField;
    CdsPedidoItensPRF_QTDE_REC_PRODUCAO_PEDIDO: TFMTBCdField;
    CdsPedidoItensConclusaoPedido: TFloatField;
    CdsPedidoItensPRD_DESCRI: TStringField;
    CdsPedidoItensPRD_UND: TStringField;
    CdsPedidoItensPTI_SIGLA: TStringField;
    CdsPedidoItensPRG_DESCRICAO: TStringField;
    CdsPedidoItensEMP_CODIGO: TStringField;
    CdsPedidoItensPRD_CODIGO: TStringField;
    dsPedidoItem: TDataSource;
    SqlCdsGrade: TSQLClientDataSet;
    SqlCdsGradePRG_REGISTRO: TIntegerField;
    SqlCdsGradeEMP_CODIGO: TStringField;
    SqlCdsGradePRD_CODIGO: TStringField;
    SqlCdsGradePRG_SALDO: TFMTBCdField;
    SqlCdsGradePRG_DESCRICAO: TStringField;
    DsGrade: TDataSource;
    PMMarcar: TPopupMenu;
    SelecionarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    ImageListaSelect: TImageList;
    IdHTTP1: TIdHTTP;
    vXMLDoc: TXMLDocument;
    Timer1: TTimer;
    CdsBaixar: TSQLClientDataSet;
    CdsBaixarPRF_REGISTRO: TIntegerField;
    CdsBaixarPRD_REFER: TStringField;
    CdsBaixarPED_CODIGO: TStringField;
    CdsBaixarPRG_DESCRICAO: TStringField;
    ts2: TTabSheet;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    Label15: TLabel;
    PanelAguarde: TPanel;
    JvGIFAnimator2: TJvGIFAnimator;
    Panel1: TPanel;
    dbgrdRequisicao: TDBGrid;
    CdsRequisaoMaterial: TClientDataSet;
    dsRequisicaoMaterial: TDataSource;
    CdsRequisaoMaterialOrdemProducao: TStringField;
    CdsRequisaoMaterialProdutoReferencia: TStringField;
    CdsRequisaoMaterialProdutoDescricao: TStringField;
    CdsRequisaoMaterialQuantidade: TFloatField;
    BitBtn3: TBitBtn;
    edtAlmoxarifadoSaidaCodigo: TEdit;
    cbAlmoxarifadoSaida: TComboBoxRw;
    dsAlmoxarifadoProducao: TDataSource;
    CdsAlmoxarifadoProducao: TClientDataSet;
    CdsAlmoxarifadoProducaoId: TStringField;
    CdsAlmoxarifadoProducaoDescricao: TStringField;
    dblkcbbAlmoxarifadoProducao: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox7: TGroupBox;
    Label22: TLabel;
    CbProdutoEnvio: TcxLookupComboBox;
    RadioButton2: TRadioButton;
    EdProdutoDescricao: TEdit;
    GroupBox8: TGroupBox;
    CbAlmoxarifadoOrigem: TcxLookupComboBox;
    CurSaldoOrigem: TCurrencyEdit;
    CurSaldoTransferir: TCurrencyEdit;
    EdDocumento: TEdit;
    EdAlmoxarifadoOrigemDescricao: TEdit;
    DataSource1: TDataSource;
    CdsProdutoEnvio: TSQLClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SqlSaldos: TSQLDataSet;
    SqlSaldosAMX_CODIGO_RET: TStringField;
    SqlSaldosAMX_DESCRI_RET: TStringField;
    SqlSaldosAMX_SALDO_RET: TFMTBCdField;
    DspSaldos: TDataSetProvider;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
    DsSaldos: TDataSource;
    SqlCdsAlmoxarifadoOrigem: TSQLClientDataSet;
    SqlCdsAlmoxarifadoOrigemAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoOrigemAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoOrigemAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoOrigemEMP_CODIGO: TStringField;
    DsAlmoxarifadoOrigem: TDataSource;
    SqlCdsAlmoxarifadoDestino: TSQLClientDataSet;
    SqlCdsAlmoxarifadoDestinoAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoDestinoAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoDestinoAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoDestinoEMP_CODIGO: TStringField;
    DsAlmoxarifadoDestino: TDataSource;
    Label17: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    qProd: TSQLQuery;
    cbProduto: TSgDbSearchCombo;
    procedure Bit_SairClick(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DbGradeItemPedidoDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsPedidoItensBeforeInsert(DataSet: TDataSet);
    procedure CdsPedidoItensCalcFields(DataSet: TDataSet);
    procedure DbGradeItemPedidoDblClick(Sender: tObject);
    procedure SelecionarTodas1Click(Sender: tObject);
    procedure DesmarcarTodas1Click(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure DbGradeItemPedidoTitleClick(Column: TColumn);
    procedure btnEnviarClick(Sender: tObject);
    procedure DbGradeItemPedidoKeyPress(Sender: tObject; var Key: Char);
    procedure btnAtualizarClick(Sender: tObject);
    procedure Timer1Timer(Sender: tObject);
    procedure BitBtn3Click(Sender: tObject);
    procedure edtAlmoxarifadoSaidaCodigoExit(Sender: tObject);
    procedure cbAlmoxarifadoSaidaChange(Sender: tObject);
    procedure cbAlmoxarifadoSaidaExit(Sender: tObject);
    procedure ts2Show(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure CbProdutoEnvioClick(Sender: tObject);
    procedure CbProdutoEnvioExit(Sender: tObject);
    procedure RadioButton2Enter(Sender: tObject);
    procedure RadioButton1Enter(Sender: tObject);
    procedure CbAlmoxarifadoOrigemClick(Sender: tObject);
    procedure CbAlmoxarifadoOrigemExit(Sender: tObject);
    procedure TabSheet1Show(Sender: tObject);
    procedure BitBtn4Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cbProdutoSelect(Sender: tObject);
    procedure CbClienteSelect(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
         sCaminhoServidorPCP:string;
         wPmt_Amx_Producao_saida :string;
         wPmt_Amx_Producao_Entrada:string;
    procedure Selecao;
    procedure SelecaoTudo(bStatus:Boolean);
    procedure Pesquisa;
    procedure EnviarProducao;
    procedure ReceberPrducao;
    procedure ReceberRequisicaoCompra;
    procedure RecebeAlmoxarifadoProducao;
    function EnviarRetirarQuantidadeProducao(sTipo, //E = Entrada na Producao R = Retirada da Produção
                                             sProdutoReferencia,
                                             sProdutoGrade,
                                             sAlmoxarifadoAdjutor,
                                             sAlmoxarifadoProducao,
                                             sDocumento:String;
                                             rQuantidade:Double
                                             ):Boolean;
    procedure AtenderProducao;
    procedure AtualizaSaldos;
    procedure SelecionaProduto;
    procedure AtivaPanelAguarde(pAtivar: boolean);
  public
  end;

var
  FrmPedidoPCP: TFrmPedidoPCP;

implementation

uses RWFunc, uPedidoPCPLanca, iniciodb, uProdutoDao, uteis;

{$R *.dfm}

procedure TFrmPedidoPCP.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoPCP.EdClienteCodigoExit(Sender: tObject);
begin
     if EdClienteCodigo.Text<>'' then
     begin
          EdClienteCodigo.Text := StrZero(EdClienteCodigo.Text,5);
          if (EdClienteCodigo.Text <> '00000') then
          begin
               CbCliente.idRetorno := EdClienteCodigo.Text;
               if CbCliente.idRetorno='' then
                  uteis.aviso('Cliente não localizado com o código informado');
          end;
     end;
end;

procedure TFrmPedidoPCP.CbClienteSelect(Sender: tObject);
begin
   EdClienteCodigo.Text := CbCliente.idRetorno;
end;

procedure TFrmPedidoPCP.FormShow(Sender: tObject);
begin
   inherited;
   //
   CbCliente.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
   CbCliente.Compartilhar := 'CLIENTES';

   cbAlmoxarifadoSaida.CodigoEmpresa := StrToInt(dbInicio.EMPRESA.EMP_CODIGO);
   cbAlmoxarifadoSaida.Compartilhar := 'TABELAS';

   //
   edtAlmoxarifadoSaidaCodigo.Text := StrZero(wPmt_Amx_Producao_saida,4);
   cbAlmoxarifadoSaida.idRetorno := edtAlmoxarifadoSaidaCodigo.Text;

   //Cds

   CdsPedidoItens.Close;
   CdsPedidoItens.CommandText := 'SELECT '+
                                 ' t1.PRF_REGISTRO, '+
                                 ' t1.EMP_CODIGO, '+
                                 ' T4.CLI_CODIGO, '+
                                 ' T5.CLI_RAZAO, '+
                                 ' t4.PED_CODIGO, '+
                                 ' t2.PRD_CODIGO, '+
                                 ' T1.PRD_REFER, '+
                                 ' COALESCE(T2.PRD_DESCRI,'''')||'' ''||coalesce(T3.PRG_DESCRICAO,'''')AS DESCRICAO, '+
                                 ' T4.PED_DTENTRADA, '+
                                 ' T4.PED_DTSAIDA, '+
                                 ' t2.PRD_DESCRI, '+
                                 ' T2.PRD_UND, '+
                                 ' t7.PTI_SIGLA, '+
                                 ' T3.PRG_DESCRICAO, '+
                                 ' T1.PRF_QTDE, '+
                                 ' T1.PRF_QTDE_ENV_PRODUCAO, '+
                                 ' T1.PRF_QTDE_REC_PRODUCAO, '+
                                 '(select sum(t10.PRF_QTDE_ENV_PRODUCAO) from PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE_ENV_PRODUCAO_PEDIDO, '+
                                 '(select sum(t10.PRF_QTDE_REC_PRODUCAO) from PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE_REC_PRODUCAO_PEDIDO, '+
                                 ' t4.PED_OBSERVACAO '+
                                 'FROM '+
                                 'PED_IT01 T1 '+
                                 'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER and T2.PRD_PRODSERV = ''P'') '+
                                 'JOIN PED0000 T4 ON (T4.PED_CODIGO = T1.PED_CODIGO) '+
                                 'JOIN OPV0000 T6 ON (T6.OPV_CODIGO = T4.OPV_CODIGO AND T6.OPV_PRODUCAO = ''S'') '+
                                 'JOIN CLI0000 T5 ON (T5.CLI_CODIGO = T4.CLI_CODIGO) '+
                                 'LEFT JOIN PRD_TIPO T7 ON (T7.PTI_CODIGO = T2.PTI_CODIGO) '+
                                 'LEFT JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = T1.PRG_REGISTRO) '+
                                 'where t4.PED_DTENTRADA > CURRENT_DATE -60 and t1.PRF_QTDEFAT = 0 '+
                                 'order by T4.PED_CODIGO desc';
   CdsPedidoItens.open;

   Timer1.Enabled := True;

end;

procedure TFrmPedidoPCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmPedidoPCP.FormCreate(Sender: tObject);
begin
     inherited;
     self.width:= 979;
     self.height:=640;
     sCaminhoServidorPCP:=dbInicio.GetParametroSistema('PMT_PROD_PCP_ENDERECO');
     wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
     wPmt_Amx_Producao_Entrada:= dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_ENTRADA');
end;

procedure TFrmPedidoPCP.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPedidoPCP := Nil;
end;

procedure TFrmPedidoPCP.FormResize(Sender: TObject);
begin
  inherited;
  width:= 979;
  height:=640;
end;

procedure TFrmPedidoPCP.DbGradeItemPedidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
   ARect: TRect;
  FLAGS: Word;
   mypanel : TPanel;
   tmp:TComponent;
   myprogress : TGauge;
   jaexiste : boolean;
   Progress, i:Integer;
begin

   if (not odd(CdsPedidoItens.RecNo)) then
      begin
         if not (GdSelected in State) then
            begin
               DbGradeItemPedido.Canvas.Brush.Color := $00FFEFDF;
               DbGradeItemPedido.Canvas.FillRect(rect);
               DbGradeItemPedido.DefaultDrawDataCell(Rect,column.Field,state);
            end;
      end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'Selecao' then
      begin
         if (CdsPedidoItensPRF_QTDE.AsFloat = CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsFloat) then
            begin
               DbGradeItemPedido.Canvas.Font.Color := clGreen;
               DbGradeItemPedido.Canvas.FillRect(rect);
               DbGradeItemPedido.DefaultDrawDataCell(Rect,column.Field,state);
            end
         else
            begin
               DbGradeItemPedido.Canvas.FillRect(Rect);
               Check := 0;
               if CdsPedidoItensSelecao.AsBoolean then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
            end;

      end;

end;

procedure TFrmPedidoPCP.CdsPedidoItensBeforeInsert(DataSet: TDataSet);
begin
   CdsPedidoItens.Cancel;
end;

procedure TFrmPedidoPCP.CdsPedidoItensCalcFields(DataSet: TDataSet);
begin
   if (CdsPedidoItensPRF_QTDE_REC_PRODUCAO.AsCurrency > 0)and(CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsCurrency > 0) then
      CdsPedidoItensConclusao.AsCurrency := CdsPedidoItensPRF_QTDE_REC_PRODUCAO.AsCurrency * 100 / CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsCurrency
   else
      CdsPedidoItensConclusao.AsCurrency := 0;
   if (CdsPedidoItensPRF_QTDE_REC_PRODUCAO_PEDIDO.AsCurrency > 0)and(CdsPedidoItensPRF_QTDE_ENV_PRODUCAO_PEDIDO.AsCurrency > 0) then
      CdsPedidoItensConclusaoPedido.AsCurrency := CdsPedidoItensPRF_QTDE_REC_PRODUCAO_PEDIDO.AsCurrency * 100 / CdsPedidoItensPRF_QTDE_ENV_PRODUCAO_PEDIDO.AsCurrency
   else
      CdsPedidoItensConclusaoPedido.AsCurrency := 0;
   CdsPedidoItensDias.AsInteger := DaysBetween(Date, CdsPedidoItensPED_DTSAIDA.AsDateTime);
   if (CdsPedidoItensPED_DTSAIDA.AsDateTime < Date) then
      CdsPedidoItensDias.AsInteger := CdsPedidoItensDias.AsInteger * -1;

end;

procedure TFrmPedidoPCP.DbGradeItemPedidoDblClick(Sender: tObject);
begin
   Selecao;
end;

procedure TFrmPedidoPCP.Selecao;
begin
   if (not CdsPedidoItens.IsEmpty) then
      begin
         if not (CdsPedidoItensPRF_QTDE.AsFloat = CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsFloat) then
            begin
               CdsPedidoItens.Edit;
               CdsPedidoItensSelecao.AsBoolean := not CdsPedidoItensSelecao.AsBoolean;
               CdsPedidoItens.Post;
            end;
      end;
end;

procedure TFrmPedidoPCP.SelecaoTudo(bStatus: Boolean);
var
   ponto:TBookmark;
begin
   if (not CdsPedidoItens.IsEmpty) then
      begin
         CdsPedidoItens.DisableControls;
         CdsPedidoItens.First;
         while (not CdsPedidoItens.Eof) do
            begin
               if not (CdsPedidoItensPRF_QTDE.AsFloat = CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsFloat) then
                  begin
                     CdsPedidoItens.Edit;
                     CdsPedidoItensSelecao.AsBoolean := bStatus;
                     CdsPedidoItens.Post;

                  end;
               CdsPedidoItens.Next;
            end;
         CdsPedidoItens.EnableControls;
      end;
end;

procedure TFrmPedidoPCP.SelecionarTodas1Click(Sender: tObject);
begin
   SelecaoTudo(True);
end;

procedure TFrmPedidoPCP.cbProdutoSelect(Sender: tObject);
begin

   if (CbProduto.idRetorno<>'') then
      CbGrade.Condicao := 'prd_codigo = '+QuotedStr(CbProduto.idRetorno);

end;

procedure TFrmPedidoPCP.DesmarcarTodas1Click(Sender: tObject);
begin
   SelecaoTudo(False);
end;

procedure TFrmPedidoPCP.Pesquisa;
var
   sCondicaoPedidoItem,
   sCondicaoPedido,
   sCondicaoProduto:string;
begin
   sCondicaoPedido := '';
   sCondicaoProduto := '';
   sCondicaoPedidoItem := ' 1 = 1 and t1.PRF_QTDEFAT = 0 ';
   if (Trim(EdPedidoNumero.Text) <> '') then
      begin
         sCondicaoPedido := sCondicaoPedido + ' AND T4.PED_CODIGO = '+QuotedStr(StrZero(Trim(EdPedidoNumero.Text),6));
      end;
   if (Trim(EdClienteCodigo.Text) <> '') then
      begin
         sCondicaoPedido := sCondicaoPedido + ' AND T4.CLI_CODIGO = '+QuotedStr(Trim(EdClienteCodigo.Text));
      end;
   if (CbProduto.idRetorno <> null) then
      begin
         sCondicaoProduto := sCondicaoProduto + ' AND T2.PRD_CODIGO = '+QuotedStr(CbProduto.idRetorno);
      end;
   if (Trim(CbGrade.Text) <> '') then
      begin
         sCondicaoPedidoItem := sCondicaoPedidoItem + ' AND T1.PRG_REGISTRO = '+QuotedStr(CbGrade.CodigoLista);
      end;
   if (RxDataInicial.Text <> '  /  /    ')and(RxDataFinal.Text <> '  /  /    ') then
      begin
         if (rbEntrada.Checked) then
            sCondicaoPedido := sCondicaoPedido + 'and T4.PED_DTENTRADA '
         else
            sCondicaoPedido := sCondicaoPedido + 'and T4.PED_DTSAIDA ';
         sCondicaoPedido := sCondicaoPedido +' BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text))+' AND '+QuotedStr(DataAmericana(RxDataFinal.Text));
      end;
   CdsPedidoItens.Close;
   CdsPedidoItens.CommandText := 'SELECT '+
                                 ' t1.PRF_REGISTRO, '+
                                 ' t1.EMP_CODIGO, '+
                                 ' T4.CLI_CODIGO, '+
                                 ' T5.CLI_RAZAO, '+
                                 ' t4.PED_CODIGO, '+
                                 ' t2.PRD_CODIGO, '+
                                 ' T1.PRD_REFER, '+
                                 ' COALESCE(T2.PRD_DESCRI,'''')||'' ''||coalesce(T3.PRG_DESCRICAO,'''')AS DESCRICAO, '+
                                 ' T4.PED_DTENTRADA, '+
                                 ' T4.PED_DTSAIDA, '+
                                 ' t2.PRD_DESCRI, '+
                                 ' T2.PRD_UND, '+
                                 ' t7.PTI_SIGLA, '+
                                 ' T3.PRG_DESCRICAO, '+
                                 ' T1.PRF_QTDE, '+
                                 ' T1.PRF_QTDE_ENV_PRODUCAO, '+
                                 ' T1.PRF_QTDE_REC_PRODUCAO, '+
                                 '(select sum(t10.PRF_QTDE_ENV_PRODUCAO) from PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE_ENV_PRODUCAO_PEDIDO, '+
                                 '(select sum(t10.PRF_QTDE_REC_PRODUCAO) from PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE_REC_PRODUCAO_PEDIDO, '+
                                 ' t4.PED_OBSERVACAO '+
                                 'FROM '+
                                 'PED_IT01 T1 '+
                                 'JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER and T2.PRD_PRODSERV = ''P'' '+sCondicaoProduto+') '+
                                 'JOIN PED0000 T4 ON (T4.PED_CODIGO = T1.PED_CODIGO '+sCondicaoPedido+') '+
                                 'JOIN OPV0000 T6 ON (T6.OPV_CODIGO = T4.OPV_CODIGO AND T6.OPV_PRODUCAO = ''S'') '+
                                 'JOIN CLI0000 T5 ON (T5.CLI_CODIGO = T4.CLI_CODIGO) '+
                                 'LEFT JOIN PRD_TIPO T7 ON (T7.PTI_CODIGO = T2.PTI_CODIGO) '+
                                 'LEFT JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = T1.PRG_REGISTRO) '+
                                 'where '+sCondicaoPedidoItem+
                                 'order by T4.PED_CODIGO desc';
   CdsPedidoItens.open;
   CdsPedidoItens.Filtered := False;
   CdsPedidoItens.Filter := '';
   if (SpinDias.AsInteger > 0)or(SpinConclusao.AsInteger >0) then
      begin
         if (SpinDias.AsInteger > 0) then
            CdsPedidoItens.Filter := 'Dias '+IIF(cbbDias.ItemIndex = 0,' >= ',iif(cbbDias.ItemIndex = 1,' = ',' <= '))+' '+IntToStr(SpinDias.AsInteger);
         if (SpinConclusao.AsInteger > 0) then
            begin
               if (SpinDias.AsInteger > 0) then
                  CdsPedidoItens.Filter := CdsPedidoItens.Filter + ' and ';
               CdsPedidoItens.Filter := CdsPedidoItens.Filter + ' Conclusao '+IIF(cbbConclusao.ItemIndex = 0,' >= ',iif(cbbConclusao.ItemIndex = 1,' = ',' <= '))+' '+IntToStr(SpinConclusao.AsInteger);

            end;
         CdsPedidoItens.Filtered := True;
      end; 

   if (CdsPedidoItens.IsEmpty) then
      begin
         uteis.aviso('Nenhum item localizado com os parâmetros informados');
         EdPedidoNumero.SetFocus;
         EdPedidoNumero.SelectAll;
      end
   else
      begin
         DbGradeItemPedido.SetFocus;
      end;
end;

procedure TFrmPedidoPCP.BitPesquisarClick(Sender: tObject);
begin
   Pesquisa;
end;

procedure TFrmPedidoPCP.DbGradeItemPedidoTitleClick(Column: TColumn);
begin
   try
      CdsPedidoItens.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFrmPedidoPCP.btnEnviarClick(Sender: tObject);
begin
   EnviarProducao;
end;

procedure TFrmPedidoPCP.EnviarProducao;
var
   bSelecionado:Boolean;
   point:TBookmark;
begin
   bSelecionado := False;
   if (CdsPedidoItens.IsEmpty) then
      begin
         uteis.aviso('Não existe itens à ser enviado');
      end
   else
      begin
         point := CdsPedidoItens.GetBookmark;
         CdsPedidoItens.DisableControls;
         CdsPedidoItens.First;
         while (not CdsPedidoItens.Eof) do
            begin
               if (CdsPedidoItensSelecao.AsBoolean) then
                  begin
                     bSelecionado := True;
                  end;
               CdsPedidoItens.Next;
            end;
         if (not bSelecionado) then
            begin
               uteis.aviso('Nenhum item foi selecionado');
            end
         else
            begin
               //Chama a tela de Lançamento
               try
                  FrmPedidoPCPLanca := TFrmPedidoPCPLanca.Create(Application);
                  FrmPedidoPCPLanca.ShowModal;
               finally
                  FrmPedidoPCPLanca.Destroy;
                  FrmPedidoPCPLanca := nil;
               end;

            end;
         CdsPedidoItens.EnableControls;
         CdsPedidoItens.GotoBookmark(point);
         CdsPedidoItens.Refresh;

      end;
end;

procedure TFrmPedidoPCP.DbGradeItemPedidoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         Selecao;
      end;
end;

procedure TFrmPedidoPCP.ReceberPrducao;
var
   data: TIdMultiPartFormDataStream;
   retorno:WideString;
   NodePai,NodeSec,NodeTmp: IXMLNode;
   sCodigo, stmp, sRegistroProduto:string;
   rQuantidade,rQuantidadeJaBaixada:Double;
begin
   AtivaPanelAguarde(true);
   try
       CdsBaixar.Close;
       CdsBaixar.CommandText := 'SELECT T1.prf_registro, T1.prd_refer, t1.ped_codigo, T2.prg_descricao FROM ped_it01 T1 '+
                                'LEFT JOIN prd_grade T2 ON (T2.prg_registro = T1.prg_registro) '+
                                'WHERE T1.prf_qtde_env_producao > T1.prf_qtde_rec_producao';
       CdsBaixar.Open;
       while (not CdsBaixar.Eof) do
       begin
             Memo.Clear;
             //Monta XML
             Memo.Lines.Add('<produtoProducao>');
             Memo.Lines.Add('<pedido>'+CdsBaixar.FieldByName('ped_codigo').AsString+'</pedido>');
             Memo.Lines.Add('<referenciaProduto>'+CdsBaixar.FieldByName('prd_refer').AsString+'</referenciaProduto>');
             Memo.Lines.Add('<gradeProduto>'+CdsBaixar.FieldByName('prg_descricao').AsString+'</gradeProduto>');
             Memo.Lines.Add('</produtoProducao>');
             //Transmite
             data := TIdMultiPartFormDataStream.Create;
             data.AddFormField('xmlProdutoProducao',UTF8Encode(Memo.Text), 'utf-8').ContentTransfer := '8bit' ;
             try
                IdHTTP1.ReadTimeout := 1000;
                retorno := IdHTTP1.Post(sCaminhoServidorPCP+'webService/consultaProdutoProduzido', data{, IndyUTF8Encoding});
                //le xml de retorno
                vXMLDoc.XML.Clear;
                vXMLDoc.XML.Add(retorno);
                vXMLDoc.Active := True;
                NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
                NodePai.ChildNodes.First;
                sCodigo := '';
                rQuantidade := 0;
                repeat
                   if (NodePai.NodeName = 'codigo') then
                      begin
                         sCodigo := NodePai.Text;
                      end;
                   if (NodePai.NodeName = 'qtdeProduzida') then
                      begin
                         stmp := StringReplace(NodePai.Text,',','',[]);
                         stmp := StringReplace(stmp,'.',',',[]);
                         rQuantidade := StrToFloat(stmp);
                      end;
                   NodePai := NodePai.NextSibling;
                until NodePai = nil;
                //se importado pelo pcp atualiza quantidades
                if (sCodigo <> '')or(sCodigo <> '0') then
                begin
                      //Pega Quantidade já Baixada
                      rQuantidadeJaBaixada := dbInicio.buscaumdadosqlasfloat('SELECT prf_qtde_rec_producao FROM PED_IT01  WHERE PRF_REGISTRO = '+CdsBaixar.FieldByName('prf_registro').AsString);
                      dbInicio.ExecSql('UPDATE PED_IT01 SET prf_qtde_rec_producao = '+ValorAmericano(FloatToStr(rQuantidade))+' WHERE PRF_REGISTRO = '+CdsBaixar.FieldByName('prf_registro').AsString);
                      //Registro do Produto
                      sRegistroProduto := RetornaProdutoReferencia(CdsBaixar.FieldByName('prd_refer').AsString);
                      if ((rQuantidade-rQuantidadeJaBaixada) > 0)and(sRegistroProduto <> '') then
                      begin
                            KardexLancamento(CdsBaixar.FieldByName('prf_registro').AsString,
                                          'PRD',
                                          StrZero(wPmt_Amx_Producao_saida,4),
                                          '',
                                          sRegistroProduto,
                                          RetornaIdProdutoGrade(sRegistroProduto,CdsBaixar.FieldByName('prg_descricao').AsString),//grade
                                          '',
                                          'E',
                                          '',
                                          '',//Novo esquema de lote
                                          'PRODUTO PRODUZIDO',
                                          Now,
                                          rQuantidade-rQuantidadeJaBaixada,
                                          CdsBaixar.FieldByName('ped_codigo').AsString,
                                          'DESCRITIVO DA OP',
                                          0);
                      end;
                end;
             except
                   AtivaPanelAguarde(False);
                   uteis.aviso('Problemas ao se conectar com o Webservice');
                   Exit;
             end;
             CdsBaixar.Next;
       end;
   finally
          AtivaPanelAguarde(False);
   end;
   CdsBaixar.Close;
end;

procedure TFrmPedidoPCP.btnAtualizarClick(Sender: tObject);
begin
   ReceberPrducao;
   CdsPedidoItens.Refresh;   
end;

procedure TFrmPedidoPCP.Timer1Timer(Sender: tObject);
begin
   Timer1.Enabled := False;
   ReceberPrducao;
end;

procedure TFrmPedidoPCP.ReceberRequisicaoCompra;
   var
      data: TIdMultiPartFormDataStream;
      retorno:WideString;
      NodePai,NodeSec,NodeTmp: IXMLNode;
begin
   AtivaPanelAguarde(true);
   CdsRequisaoMaterial.EmptyDataSet;
   try
      //Criar xml de altenticação
      data := TIdMultiPartFormDataStream.Create;
      data.AddFormField('xmlAutenticacao', '<autorizacao><login>admin</login><passw>admin</passw></autorizacao>');
      //CXhamo Serviço
      IdHTTP1.ReadTimeout := 1000;
      retorno := IdHTTP1.post(sCaminhoServidorPCP+'webService/consultaMaterialFalta', data{,IndyUTF8Encoding});

      vXMLDoc.XML.Clear;
      vXMLDoc.XML.Add(retorno);
      vXMLDoc.Active := True;
      NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
      NodePai.ChildNodes.First;
      repeat
         if (NodePai.NodeName = 'listaRequisicaoMateria') then
            begin
               NodeSec := NodePai.ChildNodes.First;
               if (Assigned(NodeSec)) then
                  begin
                     repeat
                        if (NodeSec.NodeName = 'item') then
                           begin
                              NodeTmp := NodeSec.ChildNodes.First;
                              CdsRequisaoMaterial.Append;
                              repeat
                                 if (NodeTmp.NodeName = 'ordemProducao') then
                                    begin
                                       CdsRequisaoMaterialOrdemProducao.AsString := NodeTmp.Text;
                                    end
                                 else
                                 if (NodeTmp.NodeName = 'produto') then
                                    begin
                                       CdsRequisaoMaterialProdutoReferencia.AsString := NodeTmp.Text;
                                    end
                                 else
                                 if (NodeTmp.NodeName = 'produtoDescricao') then
                                    begin
                                       CdsRequisaoMaterialProdutoDescricao.AsString := NodeTmp.Text;
                                    end
                                 else
                                 if (NodeTmp.NodeName = 'quantidade') then
                                    begin
                                       CdsRequisaoMaterialQuantidade.AsFloat := StrToFloat(AnsiReplaceStr(AnsiReplaceStr(NodeTmp.Text,',',''),'.',','));
                                    end;
                                 NodeTmp := NodeTmp.NextSibling;
                              until NodeTmp = nil;
                              CdsRequisaoMaterial.Post;
                           end;
                        NodeSec := NodeSec.NextSibling;
                     until NodeSec = nil;
                  end;
            end;
         NodePai := NodePai.NextSibling;
      until NodePai = nil;

   except
      uteis.aviso('Problemas ao se conectar com o Webservice');
   end;
   AtivaPanelAguarde(False);
end;

procedure TFrmPedidoPCP.BitBtn3Click(Sender: tObject);
begin
   RecebeAlmoxarifadoProducao;
   ReceberRequisicaoCompra;
end;

procedure TFrmPedidoPCP.edtAlmoxarifadoSaidaCodigoExit(Sender: tObject);
begin
   edtAlmoxarifadoSaidaCodigo.Text := StrZero(edtAlmoxarifadoSaidaCodigo.Text,4);

   if (edtAlmoxarifadoSaidaCodigo.Text = '0000') then
      begin
         edtAlmoxarifadoSaidaCodigo.Clear;
         cbAlmoxarifadoSaida.Text := '';
      end
   else
      begin
         cbAlmoxarifadoSaida.TextoLocalizar := edtAlmoxarifadoSaidaCodigo.Text;
         cbAlmoxarifadoSaida.Localizar := True;
         if (cbAlmoxarifadoSaida.Localizado) then
            begin
              // BuscaCliente(EdClienteCodigo.Text);
            end
         else
            begin
               uteis.aviso('Almoxarifado não localizado com o código informado');
               cbAlmoxarifadoSaida.Text := '';
               edtAlmoxarifadoSaidaCodigo.SetFocus;
               edtAlmoxarifadoSaidaCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmPedidoPCP.cbAlmoxarifadoSaidaChange(Sender: tObject);
begin
   edtAlmoxarifadoSaidaCodigo.Text := cbAlmoxarifadoSaida.CodigoLista;
end;

procedure TFrmPedidoPCP.cbAlmoxarifadoSaidaExit(Sender: tObject);
begin
   if (cbAlmoxarifadoSaida.CodigoLista = '') or (cbAlmoxarifadoSaida.Text = '') then
      begin
         cbAlmoxarifadoSaida.Text := '';
         edtAlmoxarifadoSaidaCodigo.Text := '';
      end
   else
      begin
         edtAlmoxarifadoSaidaCodigo.Text := cbAlmoxarifadoSaida.CodigoLista;
      end;
end;

procedure TFrmPedidoPCP.RecebeAlmoxarifadoProducao;
   var
      data: TIdMultiPartFormDataStream;
      retorno:WideString;
      NodePai,NodeSec,NodeTmp: IXMLNode;
begin
   AtivaPanelAguarde(True);
   CdsAlmoxarifadoProducao.EmptyDataSet;
   try
      //Criar xml de altenticação
      data := TIdMultiPartFormDataStream.Create;
      data.AddFormField('xmlAutenticacao', '<autorizacao><login>admin</login><passw>admin</passw></autorizacao>');
      //CXhamo Serviço
      IdHTTP1.ReadTimeout := 1000;
      retorno := IdHTTP1.get(sCaminhoServidorPCP+'webService/almoxarifados'{, IndyUTF8Encoding});

      vXMLDoc.XML.Clear;
      vXMLDoc.XML.Add(retorno);

      vXMLDoc.Active := True;
      NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
      NodePai.ChildNodes.First;
      repeat
         if (NodePai.NodeName = 'item') then
         begin
               NodeSec := NodePai.ChildNodes.First;
               CdsAlmoxarifadoProducao.Append;
               repeat
                  if (NodeSec.NodeName = 'codigo') then
                     CdsAlmoxarifadoProducaoId.AsString := NodeSec.Text
                  else
                  if (NodeSec.NodeName = 'nome') then
                     CdsAlmoxarifadoProducaoDescricao.AsString := NodeSec.Text;
                  NodeSec := NodeSec.NextSibling;
               until NodeSec = nil;
               CdsAlmoxarifadoProducao.Post;
         end;
         NodePai := NodePai.NextSibling;
      until NodePai = nil;
   except
      uteis.aviso('Problemas ao se conectar com o Webservice');
   end;
   try
      dblkcbbAlmoxarifadoProducao.KeyValue := '1';
   except

   end;  
   AtivaPanelAguarde(False);
end;

procedure TFrmPedidoPCP.AtivaPanelAguarde(pAtivar:boolean);
begin
     PanelAguarde.visible := pAtivar;
     JvGifAnimator2.Animate:= pAtivar;
end;


procedure TFrmPedidoPCP.ts2Show(Sender: tObject);
begin
   RecebeAlmoxarifadoProducao;
   ReceberRequisicaoCompra;
end;

function TFrmPedidoPCP.EnviarRetirarQuantidadeProducao(sTipo,
  sProdutoReferencia, sProdutoGrade, sAlmoxarifadoAdjutor, sAlmoxarifadoProducao, sDocumento: String;
  rQuantidade: Double): Boolean;
   var
      rSaldo:Double;
      sXmlRetiraEnvio:WideString;
      sCodigo, mensagem, sRegistroProduto:string;
      data: TIdMultiPartFormDataStream;
      retorno:WideString;
      NodePai,NodeSec,NodeTmp: IXMLNode;
begin

   Result := False;

   sXmlRetiraEnvio := '';

   if (sTipo <> 'E')and(sTipo <> 'R') then
      begin
         uteis.aviso('Fornecer os caracteres E ou R para o tipo da operação');
      end
   else
   if (sProdutoReferencia = '') then
      begin
         uteis.aviso('Informe a Referência');
      end
   else
   if (sAlmoxarifadoAdjutor = '') then
      begin
         uteis.aviso('Informe o Almoxarifado do Adjutor');
      end
   else
   if (sAlmoxarifadoProducao = '') then
      begin
         uteis.aviso('Informe o Almoxarifado da Produção');
      end
   else
   if (rQuantidade <= 0) then
      begin
         uteis.aviso('Informe a quantidade da operação');
      end
   else
      begin
         //Se for E = Envio Verifica se tem saldo no Adjutor
         if (sTipo = 'E') then
            begin
               sRegistroProduto := RetornaProdutoReferencia(sProdutoReferencia);
               rSaldo := KardexRetornaSaldo(sRegistroProduto, edtAlmoxarifadoSaidaCodigo.Text,'');
               if (rSaldo > 0) then
                  begin
                     //Atente o que tiver
                     if (rSaldo < rQuantidade) then
                        begin
                           rQuantidade := rSaldo
                        end;
                     // Envia para produção
                     try
                        //Criar xml de altenticação
                        data := TIdMultiPartFormDataStream.Create;
                        data.AddFormField('xmlAutenticacao', '<autorizacao><login>admin</login><passw>admin</passw></autorizacao>');
                        //Cria XML do pedido de Envio
                        sXmlRetiraEnvio := '<produtoEntradaRetiradaEstoque>'+
                                           '  <empresa>'+dbInicio.EMPRESA.EMP_CODIGO+'</empresa>'+
                                           '  <referenciaProduto>'+sProdutoReferencia+'</referenciaProduto>'+
                                           '  <gradeProduto>'+sProdutoGrade+'</gradeProduto>'+
                                           '  <almoxarifado>'+sAlmoxarifadoProducao+'</almoxarifado>'+
                                           '  <documento>'+sDocumento+'</documento>'+
                                           '  <quantidade>'+AnsiReplaceStr(FormatFloat('0.0000' , rQuantidade), FormatSettings.DecimalSeparator , '.')+'</quantidade>'+
                                           '  <tipo>E</tipo>'+
                                           '</produtoEntradaRetiradaEstoque>';

                        data.AddFormField('xmlEntradaRetiradaEstoque', UTF8Encode(sXmlRetiraEnvio), 'utf-8').ContentTransfer := '8bit'; ;
                        //CXhamo Serviço
                        IdHTTP1.ReadTimeout := 1000;
                        retorno := IdHTTP1.Post(sCaminhoServidorPCP+'webService/entradaRetiradaEstoque', data{, IndyUTF8Encoding});

                        vXMLDoc.XML.Clear;
                        vXMLDoc.XML.Add(retorno);
                        vXMLDoc.Active := True;
                        NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
                        NodePai.ChildNodes.First;
                        repeat
                           if (NodePai.NodeName = 'codigo') then
                              begin
                                 sCodigo := NodePai.Text;
                              end
                           else
                           if (NodePai.NodeName = 'mensagem') then
                              begin
                                 mensagem := NodePai.Text;
                              end
                           else
                           if (NodePai.NodeName = 'resultado') then
                              begin
                                 mensagem := NodePai.Text;
                              end;
                           NodePai := NodePai.NextSibling;
                        until NodePai = nil;
                        if (sCodigo <> '')and(sCodigo <> '0') then
                           begin
                              //Retira do estoque atual
                              KardexLancamento('0',
                                               'PRD',
                                               StrZero(wPmt_Amx_Producao_Entrada,4),
                                               '',
                                               sRegistroProduto,
                                               RetornaIdProdutoGrade(sRegistroProduto,sProdutoGrade),//grade
                                               '',
                                               'S',
                                               '',
                                               '',//Novo esquema de lote
                                               'PRODUTO PARA ATENDER PRODUCAO '+sDocumento,
                                               Now,
                                               rQuantidade,
                                               '',
                                               sDocumento,                     
                                               0);
                              Result := True;
                           end
                        else
                           begin
                              uteis.aviso(Pchar('Problemas: '+mensagem));
                              Exit;
                           end;


                     except
                        uteis.aviso('Problemas ao se conectar com o Webservice');
                        Exit;
                     end;

                  end;
            end
         else
            begin
               //R = Retirada


            end;


      end;
end;

procedure TFrmPedidoPCP.BitBtn1Click(Sender: tObject);
begin
   AtenderProducao;
end;

procedure TFrmPedidoPCP.AtenderProducao;
begin
   if (edtAlmoxarifadoSaidaCodigo.Text = '') then
      begin
         uteis.aviso('Informe o Almoxarifado do Adjutor');
         edtAlmoxarifadoSaidaCodigo.SetFocus;
         edtAlmoxarifadoSaidaCodigo.SelectAll;
      end
   else
   if (CdsAlmoxarifadoProducao.IsEmpty) then
      begin
         uteis.aviso('Informe o Almoxarifado da Produção');
      end
   else
      begin
         CdsRequisaoMaterial.First;
         while (not CdsRequisaoMaterial.Eof) do
            begin
               EnviarRetirarQuantidadeProducao('E', //E = Entrada na Producao R = Retirada da Produção
                                             CdsRequisaoMaterialProdutoReferencia.AsString,
                                             '',
                                             edtAlmoxarifadoSaidaCodigo.Text,
                                             CdsAlmoxarifadoProducaoId.AsString,
                                             ' Ordem de Produção : '+CdsRequisaoMaterialOrdemProducao.AsString,
                                             CdsRequisaoMaterialQuantidade.AsFloat);
               CdsRequisaoMaterial.Next;
            end;
         ReceberRequisicaoCompra;
      end;
end;

procedure TFrmPedidoPCP.AtualizaSaldos;
begin
   try
      EdAlmoxarifadoOrigemDescricao.Text := CbAlmoxarifadoOrigem.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifadoOrigem.EditValue,'AMX_DESCRI');
   except

   end;
   
   try
      EdProdutoDescricao.Text := CbProdutoEnvio.Properties.DataController.DataSet.Lookup('PRD_CODIGO',CbProdutoEnvio.EditValue,'PRD_DESCRI');
   except

   end;
   CurSaldoOrigem.Value := 0;
   if ( CbProdutoEnvio.EditValue <> null)and(CbAlmoxarifadoOrigem.EditValue <> null) then
     CurSaldoOrigem.Value := KardexRetornaSaldo(CbProdutoEnvio.EditValue, CbAlmoxarifadoOrigem.EditValue,'');
end;

procedure TFrmPedidoPCP.SelecionaProduto;
begin
  CdsSaldos.DisableControls;
  CdsSaldos.Close;
  if ( CbProdutoEnvio.EditValue <> null) then
    begin
      try
        CdsProdutoEnvio.Locate('PRD_CODIGO',CbProdutoEnvio.EditValue,[]);
      except

      end;
      CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(dbInicio.EMPRESA.EMP_CODIGO)+','+QuotedStr(CbProdutoEnvio.EditValue)+',null)';
      CdsSaldos.Open;
      CdsSaldos.First;  
    end;
  AtualizaSaldos;
  CdsSaldos.EnableControls;
end;

procedure TFrmPedidoPCP.CbProdutoEnvioClick(Sender: tObject);
begin
  SelecionaProduto;
end;

procedure TFrmPedidoPCP.CbProdutoEnvioExit(Sender: tObject);
begin
  SelecionaProduto;
end;

procedure TFrmPedidoPCP.RadioButton2Enter(Sender: tObject);
begin
   CbProdutoEnvio.Properties.ListFieldIndex := 1;
   CbAlmoxarifadoOrigem.Properties.ListFieldIndex := 1;
   CbProdutoEnvio.SetFocus;
   CbProdutoEnvio.SelectAll;
end;

procedure TFrmPedidoPCP.RadioButton1Enter(Sender: tObject);
begin      
   CbProdutoEnvio.Properties.ListFieldIndex := 0;
   CbAlmoxarifadoOrigem.Properties.ListFieldIndex := 0;
   CbProdutoEnvio.SetFocus;
   CbProdutoEnvio.SelectAll;
end;

procedure TFrmPedidoPCP.CbAlmoxarifadoOrigemClick(Sender: tObject);
begin
   AtualizaSaldos;
end;

procedure TFrmPedidoPCP.CbAlmoxarifadoOrigemExit(Sender: tObject);
begin
  AtualizaSaldos;
end;

procedure TFrmPedidoPCP.TabSheet1Show(Sender: tObject);
begin
   RecebeAlmoxarifadoProducao;
   try
      dblkcbbAlmoxarifadoProducao.KeyValue := '1';   
   except

   end; 
   CdsProdutoEnvio.Open;
   SqlCdsAlmoxarifadoOrigem.Open;
end;

procedure TFrmPedidoPCP.BitBtn4Click(Sender: tObject);
begin
   if (CurSaldoOrigem.Value < CurSaldoTransferir.Value) then
      begin
         uteis.aviso('Saldo Insuficiente para realizar transferência');
         CurSaldoTransferir.SetFocus;
         CurSaldoTransferir.SelectAll;
      end
   else
      begin
         if (EnviarRetirarQuantidadeProducao('E', //E = Entrada na Producao R = Retirada da Produção
                                         CbProdutoEnvio.Text,
                                         '',
                                         CbAlmoxarifadoOrigem.Text,
                                         CdsAlmoxarifadoProducaoId.AsString,
                                         EdDocumento.Text,
                                         CurSaldoTransferir.Value
                                         )) then
            begin
               SelecionaProduto;
               AtualizaSaldos;
               uteis.aviso('Transferência Realizada');
            end;
      end;
end;

end.
