
unit uEntradaNotaXmlItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, DBClient, DBLocal,
  DBLocalS, uCadastroConversaoMedida,  rxToolEdit, rxCurrEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters,  SimpleDS, Data.DBXFirebird,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, System.StrUtils, RxLookup,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmEntradaNotaXmlItem = class(TForm)
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    dbedtReferencia: TDBEdit;
    imgProduto: TImage;
    Label1: TLabel;
    dbedtReferenciaFornecedor: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    imgNaturezaOperacao: TImage;
    Label3: TLabel;
    btnVincular: TBitBtn;
    btnCadastrar: TBitBtn;
    DsCfop: TDataSource;
    CdsCFOP: TSQLClientDataSet;
    CdsCFOPOPE_CODIGO: TStringField;
    CdsCFOPOPE_DESCRI: TStringField;
    cxNaturezaOperacao: TcxLookupComboBox;
    dbedtDescricao: TMemo;
    CdsCFOPOPE_NATUREZA: TStringField;
    grpConversao: TGroupBox;
    imgConversao: TImage;
    sbCFOP: TSpeedButton;
    pnlBotao: TPanel;
    btnBit_Cancelar: TBitBtn;
    chkConversao: TCheckBox;
    grpLote: TGroupBox;
    CbLoteProduto: TcxLookupComboBox;
    LblLote: TLabel;
    sbLote: TSpeedButton;
    CdsLoteProduto: TSQLClientDataSet;
    dsLoteProduto: TDataSource;
    CdsLoteProdutoPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoEMP_CODIGO: TStringField;
    CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    CdsLoteProdutoPRDL_LOTE: TStringField;
    CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLoteProdutoPRDL_SALDO: TFMTBCdField;
    CdsLoteProdutoPRD_CODIGO: TStringField;
    imgLote: TImage;
    CdsConversaoUnidade: TSQLClientDataSet;
    CdsConversaoUnidadeCONV_REGISTRO: TIntegerField;
    CdsConversaoUnidadeCONV_UND_DE: TStringField;
    CdsConversaoUnidadeCONV_UND_PARA: TStringField;
    CdsConversaoUnidadeDESCRICAO: TStringField;
    CdsConversaoUnidadeCONV_OPERACAO: TStringField;
    CdsConversaoUnidadeCONV_FATOR: TFMTBCdField;
    dsConversao: TDataSource;
    CdsConversaoUnidadeOperacao: TStringField;
    grpAlmoxarifado: TGroupBox;
    CbAlmox: TComboBox;
    EdtAlmox: TEdit;
    btnAlmoxarifado: TSpeedButton;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    ImgAlmozarifado: TImage;
    pnlConversaoFormula: TPanel;
    pnlConversaoManual: TPanel;
    gbOriginal: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    eUnidadeOriginal: TEdit;
    CurPrecoOriginal: TCurrencyEdit;
    curQuantOriginal: TCurrencyEdit;
    lmuitasRefer: TLabel;
    lxmlduplicado: TLabel;
    lretornoAlmo: TLabel;
    CurFator: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    edtQuantidadeConversao: TCurrencyEdit;
    edtUnidadeSistema: TEdit;
    Label7: TLabel;
    edtPrecoConversaoManual: TCurrencyEdit;
    Label8: TLabel;
    edtTotalConversaoManual: TCurrencyEdit;
    SqlCdsAlmoxamx_cnpj_part: TStringField;
    gbRetorno: TGroupBox;
    imgNaturezaOperacaoRetorno: TImage;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    cxNaturezaOperacaoRetorno: TcxLookupComboBox;
    cdsCFOPRetorno: TSqlClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    dsCFOPRetorno: TDataSource;
    gbCentroCusto: TGroupBox;
    imgCentroCusto: TImage;
    Label10: TLabel;
    cxCentroCusto: TcxLookupComboBox;
    cdsCentroCusto: TSqlClientDataSet;
    dsCentroCusto: TDataSource;
    cdsCentroCustoPCX_CODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoPCX_DESCRI: TStringField;
    cdsUnidade: TSqlClientDataSet;
    dsUnidade: TDataSource;
    lkUnidade: TRxDBLookupCombo;
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: tObject);
    procedure btnVincularClick(Sender: tObject);
    procedure btnCadastrarClick(Sender: tObject);
    procedure dbedtReferenciaChange(Sender: tObject);
    procedure sbCFOPClick(Sender: tObject);
    procedure sbLoteClick(Sender: tObject);
    procedure CbLoteProdutoPropertiesChange(Sender: tObject);
    procedure btnAlmoxarifadoClick(Sender: tObject);
    procedure EdtAlmoxExit(Sender: tObject);
    procedure EdtAlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure CbAlmoxClick(Sender: tObject);
    procedure EdtAlmoxChange(Sender: tObject);
    procedure cxNaturezaOperacaoPropertiesEditValueChanged(Sender: TObject);
    procedure edtQuantidadeConversaoExit(Sender: TObject);
    procedure CurFatorExit(Sender: TObject);
    procedure cxNaturezaOperacaoRetornoPropertiesEditValueChanged(Sender: TObject);
    procedure cxCentroCustoPropertiesChange(Sender: TObject);
    procedure lkUnidadeClick(Sender: TObject);
    procedure edtUnidadeSistemaChange(Sender: TObject);
  private
    { Private declarations }

    procedure CalculaConversao;

  public
    { Public declarations }
    sPrdCodigo:String;
  end;

var
  FrmEntradaNotaXmlItem: TFrmEntradaNotaXmlItem;

implementation

uses Uteis, uEntradaNotaXml, Prd0006, DataCad, Prd0001, UFuncoes, RWFunc,
  uProdutoDao, Math, Ope0001, uCadastroLote, Almox0001, iniciodb;

{$R *.dfm}

procedure TFrmEntradaNotaXmlItem.btnBit_CancelarClick(Sender: tObject);
var
  // point:TBookmark;
  registro: integer;
  sCfopSelecionado:string;
  cfop: variant;
begin

   if (FrmEntradaNotaXml.CdsItens.State in [dsbrowse]) and not (FrmEntradaNotaXml.CdsItens.IsEmpty) then
       FrmEntradaNotaXml.CdsItens.Edit;

   // point := FrmEntradaNotaXml.CdsItens.GetBookmark;
   registro := FrmEntradaNotaXml.CdsItens.RecNo;

   FrmEntradaNotaXml.CdsItensReferencia.AsString := dbedtReferencia.text ;
   If (VarIsNull(cxNaturezaOperacao.EditValue)) or (cxNaturezaOperacao.EditValue = '') then
   begin
     MessageDlg('Natureza da operação obrigatória', mtWarning, [mbOk], 0);
     exit;
   end;
   if DBInicio.GetParametroSistema('PMT_CENTRO_CUSTO_ENF') = 'S' then
   begin
     if (VarIsNull(cxCentroCusto.EditValue)) or (cxCentroCusto.EditValue = '') then
     begin
       MessageDlg('Centro de Custo Obrigatório', mtWarning, [mbOk], 0);
       exit;
     end;
   end;

   if chkConversao.Checked then
   begin
     edtQuantidadeConversao.Value := curQuantOriginal.Value;
     edtUnidadeSistema.Text := eUnidadeOriginal.Text ;
     if lkUnidade.Visible and (edtUnidadeSistema.Text = '') then
       edtUnidadeSistema.Text := 'PC';

     edtPrecoConversaoManual.Text := CurPrecoOriginal.Text;
     edtTotalConversaoManual.Value :=  FrmEntradaNotaXml.cdsItensENF_PTOTAL_ORIGINAL.AsFloat;
   end;
   if imgConversao.Visible and not chkConversao.Checked  then
   begin
      MessageDlg('Quantidade obrigatório', mtWarning, [mbOk], 0);
      exit;
   end;
   if (CurFator.Value = 0) and not chkConversao.Checked  then
   begin
     MessageDlg('Fator obrigatório', mtWarning, [mbOk], 0);
     exit;
   end;
   FrmEntradaNotaXml.cdsItensOPE_CODIGO.AsString := cxNaturezaOperacao.EditValue;
   if cxNaturezaOperacaoRetorno.EditValue <> Null then
      FrmEntradaNotaXml.cdsItensOPE_CODIGO_RETORNO.AsString := cxNaturezaOperacaoRetorno.EditValue;
   if cxCentroCusto.EditValue <> Null then
      FrmEntradaNotaXml.cdsItensPCX_CODIGO.AsString := cxCentroCusto.EditValue;


   cfop := cxNaturezaOperacao.Properties.DataController.DataSet.Lookup('OPE_CODIGO',cxNaturezaOperacao.EditValue,'OPE_NATUREZA');
   if not VarIsNull(cfop) then
     FrmEntradaNotaXml.CdsItensCFOP.AsString := VarToStr(cfop);
   FrmEntradaNotaXml.CdsItensUnidadeCadastro.AsString := edtUnidadeSistema.Text;
   if DBInicio.Empresa.bPMT_INCLUIRRAPIDO then
   begin
     FrmEntradaNotaXml.CdsItensUnidade.AsString := edtUnidadeSistema.Text;
     FrmEntradaNotaXml.cdsItensUCom.AsString := edtUnidadeSistema.Text;
   end;




   FrmEntradaNotaXml.CdsItensAlmoxarifadoCodigo.AsString := EdtAlmox.Text;
   sCfopSelecionado := EdtAlmox.Text;
   FrmEntradaNotaXml.CdsItensAlmoxarifadoDescricao.AsString := CbAlmox.Text;


   FrmEntradaNotaXml.CdsItensPrecoUnitario.AsFloat := edtPrecoConversaoManual.Value;
   FrmEntradaNotaXml.CdsItensQuantidade.AsFloat := edtQuantidadeConversao.Value;


   if (CbLoteProduto.EditValue = Null) then
      FrmEntradaNotaXml.CdsItensRegistroLote.AsString := ''
   else
      FrmEntradaNotaXml.CdsItensRegistroLote.AsString := CbLoteProduto.EditValue;

   if (chkConversao.Checked) then
      FrmEntradaNotaXml.CdsItensRegistroConversao.AsString := '0';

   FrmEntradaNotaXml.cdsItensFatorConversao.AsFloat := CurFator.Value;

   FrmEntradaNotaXml.CdsItensok.AsBoolean := not ((imgProduto.Visible) or (imgNaturezaOperacao.Visible) or (imgConversao.Visible) or (imgLote.Visible) or (ImgAlmozarifado.Visible )) ;
   FrmEntradaNotaXml.CdsItens.Post;

   FrmEntradaNotaXml.CdsItens.DisableControls;
   FrmEntradaNotaXml.CdsItens.First;


   while (not FrmEntradaNotaXml.CdsItens.Eof) do
      begin
         if (FrmEntradaNotaXml.CdsItensCFOP.AsString = '') then
            begin
               FrmEntradaNotaXml.CdsItens.Edit;
               FrmEntradaNotaXml.CdsItensCFOP.AsString :=  sCfopSelecionado;
               FrmEntradaNotaXml.CdsItens.Post;
            end;
         FrmEntradaNotaXml.CdsItens.Next;
      end;

   FrmEntradaNotaXml.CdsItens.RecNo := registro;
 //   FrmEntradaNotaXml.CdsItens.GotoBookmark(point);
   FrmEntradaNotaXml.CdsItens.EnableControls;

   CdsConversaoUnidade.Close;
   CdsCFOP.Close;
   cdsCentroCusto.Close;
   SqlCdsAlmox.Close;
   Close;

end;

procedure TFrmEntradaNotaXmlItem.FormShow(Sender: tObject);
var
   wSeleciona : string;
   posicao : integer;
begin
   if (FrmEntradaNotaXml.CdsItens.State in [dsbrowse]) and not (FrmEntradaNotaXml.CdsItens.IsEmpty) then
       FrmEntradaNotaXml.CdsItens.Edit;

   if (FrmEntradaNotaXml.edtFornecedorUF.Text = dbInicio.Empresa.UF) then
      wSeleciona := ' WHERE OPE_DENTRO = ''D'''
   else
      wSeleciona := ' WHERE OPE_DENTRO = ''F''';
   wSeleciona := wSeleciona + ConcatSe(' AND ',DBInicio.ExclusivoSql('OPERACAOFISCAL'));
   SqlCdsAlmox.Close;
//   if FrmEntradaNotaXml.cdsItensamx_terceiro_retorno.AsBoolean then
//    SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','where AMX_CNPJ_PART= '+
//                                    QuotedStr(RetirarMascaraCNPJ_INSC(FrmEntradaNotaXml.edtFornecedorCnpj.Text)),'AMX_DESCRI','')
//   else
   SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','','AMX_DESCRI','');
   SqlCdsAlmox.Open;
   CbAlmox.Clear;
   SqlCdsAlmox.First;
   while not SqlCdsAlmox.Eof do
   begin
     CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
     SqlCdsAlmox.Next;
   end;

   lretornoAlmo.Visible := ( MatchStr(FrmEntradaNotaXml.cdsItensCFOP_ORIGINAL.AsString,['5901','5902','5903','5925', '6902','6903','6925','1902','1925','2902','2925']));
   //CbAlmox.ItemIndex := 0;
   EdtAlmox.Text := StrZero(FrmEntradaNotaXml.CdsItensAlmoxarifadoCodigo.AsString,EdtAlmox.MaxLength);
//   EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
   if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[])  then
   begin
     posicao:= CbAlmox.Items.IndexOf(SqlCdsAlmoxAMX_DESCRI.AsString);
     CbAlmox.ItemIndex := posicao;
     ImgAlmozarifado.Visible := False;
//     CbAlmox.text := SqlCdsAlmoxAMX_DESCRI.AsString;
   end
   else
   begin
     EdtAlmox.Text := '';
     ImgAlmozarifado.Visible := True;
      CbAlmox.ItemIndex := -1;
   end;


   CdsCFOP.Close;
   CdsCFOP.CommandText := 'Select OPE_CODIGO,OPE_NATUREZA, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000 '+wSeleciona+   ' ORDER BY OPE_NATUREZA,OPE_DESCRI';
   CdsCFOP.Open;

   cdsCFOPRetorno.Close;
   cdsCFOPRetorno.CommandText := 'Select OPE_CODIGO,OPE_NATUREZA, OPE_NATUREZA||''-''||OPE_DESCRI as OPE_DESCRI FROM OPE0000 WHERE OPE_TIPO = ''S'' ORDER BY OPE_NATUREZA,OPE_DESCRI';
   cdsCFOPRetorno.Open;

   cdsCentroCusto.Open;
   cdsUnidade.Open;
   lkUnidade.Visible := DBInicio.Empresa.bPMT_INCLUIRRAPIDO;
   lkUnidade.Top := edtUnidadeSistema.Top;
   //
   imgProduto.Visible := FrmEntradaNotaXml.CdsItensReferencia.AsString = '';
   dataCadastros.sqlUpdate.Close;
   lmuitasRefer.Visible := False;
   lxmlduplicado.Visible :=  (FrmEntradaNotaXml.cdsItensXMLDuplicado.AsBoolean) and (FrmEntradaNotaXml.CdsItensReferencia.AsString = '');
   if  not FrmEntradaNotaXml.cdsItensXMLDuplicado.AsBoolean then
   begin
     DataCadastros.SqlUpdate.sql.text :='SELECT count(*) conta FROM PRD0000_CODIGO T1 JOIN PRD0000 t2 ON (t1.PRD_CODIGO = t2.PRD_CODIGO AND t2.PRD_STATUS = ''A'' )  WHERE T1.PRDC_REFERENCIA = '
                                        +QuotedStr(UpperCase(dbedtReferenciaFornecedor.Text))+
                                        ' and T1.FOR_CODIGO = '+QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor)+
                                         ConcatSe(' and T2.',DBInicio.ExclusivoSql('PRODUTOS')) ;
     dataCadastros.SqlUpdate.Open;

     lmuitasRefer.Visible :=  (not DataCadastros.SqlUpdate.IsEmpty) and  (DataCadastros.SqlUpdate.FieldByName('conta').AsInteger> 1) and (FrmEntradaNotaXml.CdsItensReferencia.AsString = '');
   end;
   imgNaturezaOperacao.Visible := FrmEntradaNotaXml.CdsItensCFOP.AsString = '';
   dbedtDescricao.Text := FrmEntradaNotaXml.CdsItensDescricao.AsString;
   edtUnidadeSistema.Text := FrmEntradaNotaXml.CdsItensUnidadeCadastro.AsString;
   if lkUnidade.Visible and (edtUnidadeSistema.Text = '') then
     edtUnidadeSistema.Text := 'PC';

   eUnidadeOriginal.Text := FrmEntradaNotaXml.cdsItensUCom.AsString;
   CurPrecoOriginal.Value :=    FrmEntradaNotaXml.cdsItensENF_PRECO_ORIGINAL.AsFloat;
   curQuantOriginal.Value :=   FrmEntradaNotaXml.cdsItensENF_QTDE_ORIGINAL.AsFloat;

   if (edtUnidadeSistema.Text <>  eUnidadeOriginal.Text)  and ( curQuantOriginal.Value   = FrmEntradaNotaXml.CdsItensQuantidade.AsFloat ) and
    (FrmEntradaNotaXml.cdsItensFatorConversao.AsFloat = 0) then
     edtQuantidadeConversao.Value := 0
   else
   begin
    edtQuantidadeConversao.Value := FrmEntradaNotaXml.CdsItensQuantidade.AsFloat;
    if FrmEntradaNotaXml.cdsItensFatorConversao.AsFloat > 0 then
      CurFator.Value := FrmEntradaNotaXml.cdsItensFatorConversao.AsFloat
    else
      CurFator.Value := edtQuantidadeConversao.Value/curQuantOriginal.Value;
     edtQuantidadeConversao.Value :=  CurFator.Value * curQuantOriginal.Value;
   end;

   CbLoteProduto.EditValue := FrmEntradaNotaXml.CdsItensRegistroLote.AsString;
   imgLote.Visible := (FrmEntradaNotaXml.CdsItensRegistroLote.AsString = '')and(ProdutoGerenciaLote(FrmEntradaNotaXml.CdsItensReferencia.AsString));

   chkConversao.Checked := FrmEntradaNotaXml.CdsItensRegistroConversao.AsString = '0';

   cxNaturezaOperacao.EditValue := FrmEntradaNotaXml.cdsItensOPE_CODIGO.AsString;
   cxNaturezaOperacaoRetorno.EditValue := FrmEntradaNotaXml.cdsItensOPE_CODIGO_RETORNO.AsString;
   cxCentroCusto.EditValue := FrmEntradaNotaXml.cdsItensPCX_CODIGO.AsString;

   CalculaConversao;
   imgConversao.Visible := (edtUnidadeSistema.Text <> eUnidadeOriginal.Text) and (edtQuantidadeConversao.Value = 0)  ;
   gbRetorno.Visible :=  DBInicio.GetParametroSistema('PMT_NAT_OPER_RETORNO') = 'S';
   gbCentroCusto.Visible :=  DBInicio.GetParametroSistema('PMT_CENTRO_CUSTO_ENF') = 'S';
end;

procedure TFrmEntradaNotaXmlItem.cxCentroCustoPropertiesChange(Sender: TObject);
begin
  imgCentroCusto.Visible := cxCentroCusto.EditValue = Null;
end;

procedure TFrmEntradaNotaXmlItem.cxLookupComboBox1PropertiesChange(
  Sender: tObject);

begin
  imgNaturezaOperacao.Visible := cxNaturezaOperacao.EditValue = Null;
end;

procedure TFrmEntradaNotaXmlItem.btnVincularClick(Sender: tObject);
var
  prdcDescricao: string;
begin
  FormProdutoGrid := TFormProdutoGrid.Create(Application);
  try
     FormProdutoGrid.SoAtivos:=True;
     dataCadastros.cdsSQLupd.Close;
     DataCadastros.SqlUpdate.sql.text :='SELECT  t1.PRD_CODIGO FROM PRD0000_CODIGO T1 '+
                                        ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) +
                                        ' WHERE T1.PRDC_REFERENCIA = '
                                        +QuotedStr(UpperCase(dbedtReferenciaFornecedor.Text))+
                                        ' and T1.FOR_CODIGO = '+QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor) ;
     dataCadastros.cdsSQLupd.Open;
     if (not dataCadastros.cdsSQLupd.IsEmpty) and (dataCadastros.cdsSQLupd.RecordCount>0)  then
        FormProdutoGrid.CodigoFornecedor  :=UpperCase(dbedtReferenciaFornecedor.Text);

     FormProdutoGrid.ShowModal;
     if FormProdutoGrid.ModalResult=mrOk then
     begin
          CurFator.Value :=
          dbinicio.
          BuscaUmDadoSqlAsFloat('SELECT FIRST 1 FAT_CONV FROM PRD_FATORCONVERSAO  '+
                                ' WHERE PRD_CODIGO = '+QuotedStr(FormProdutoGrid.CodigoRetorno)+
                                ' AND FOR_CODIGO = '+  QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor)+
                                ' AND UNID_CONV  = '+ QuotedStr(edtUnidadeSistema.Text));

          if not (FrmEntradaNotaXml.CdsItens.state in dsEditModes) then
            FrmEntradaNotaXml.CdsItens.Edit;
          FrmEntradaNotaXml.CdsItensReferencia.Asstring := FormProdutoGrid.ReferRetorno;


          if MatchStr(
            DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_NATUREZA FROM OPE0000 WHERE OPE_CODIGO = ' + QuotedStr(cxNaturezaOperacao.EditValue))
            , ['5901','5902','5903','5925','1901', '1903']
          )
          and (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') = 'S')
          then
            FrmEntradaNotaXml.CdsItensDescricao.Asstring := '[' + UpperCase(dbedtReferenciaFornecedor.Text) + '] ' + UpperCase(FrmEntradaNotaXml.CdsItensDescricaoFornecedor.AsString)
          else
            FrmEntradaNotaXml.CdsItensDescricao.Asstring := FormProdutoGrid.DescricaoRetorno;

          sPrdCodigo := FormProdutoGrid.CodigoRetorno;
          edtUnidadeSistema.Text := FormProdutoGrid.UnidadeRetorno;
          if lkUnidade.Visible and (edtUnidadeSistema.Text = '') then
            edtUnidadeSistema.Text := 'PC';

          // dbedtDescricao.Text := FormProdutoGrid.DescricaoRetorno;
          dbedtDescricao.Text := FrmEntradaNotaXml.CdsItensDescricao.Asstring;
          if (UpperCase(eUnidadeOriginal.Text) = UpperCase(edtUnidadeSistema.Text)) and (CurFator.Value = 0)  then
            CurFator.Value := 1;
           edtQuantidadeConversao.Value :=  CurFator.Value * curQuantOriginal.Value;
           CalculaConversao;
     end;
  finally
     FreeAndNil(FormProdutoGrid);
  end;

  if (FrmEntradaNotaXml.CdsItensReferencia.AsString <> '') then
  begin
       if (uteis.confirmacao ( ('Confirma a vinculação do código '+dbedtReferenciaFornecedor.Text+' ao produto '+FrmEntradaNotaXml.CdsItensReferencia.AsString+' ?'))=mrYes) then
       begin
           dataCadastros.cdsSQLupd.Close;
           // verifica se o fornecedor em questão já vinculou seu codigo do produto a um produto do adjutor
           DataCadastros.SqlUpdate.sql.text :='SELECT t1.PRD_CODIGO FROM PRD0000_CODIGO T1 '+
                                              ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) +
                                              ' WHERE T1.PRDC_REFERENCIA = ' +QuotedStr(UpperCase(dbedtReferenciaFornecedor.Text))+
                                              ' and T1.FOR_CODIGO = '+QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor) +
                                              ' and t1.prd_codigo = ' +  QuotedStr(sPrdCodigo) ;
           dataCadastros.cdsSQLupd.Open;
           if dataCadastros.cdsSQLupd.RecordCount  = 0 then
              DBInicio.ExecSql('INSERT INTO PRD0000_CODIGO (PRD_CODIGO,PRDC_REFERENCIA,PRDC_DESSCRICAO,FOR_CODIGO) '+
              ' VALUES ('+QuotedStr(sPrdCodigo)+','+QuotedStr(UpperCase(dbedtReferenciaFornecedor.Text))+','+QuotedStr(UpperCase(FrmEntradaNotaXml.CdsItensDescricaoFornecedor.AsString))+','+QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor)+')');
            imgProduto.Visible := False;
           dataCadastros.cdsSQLupd.Close;
       end
       else
           dbedtReferencia.Clear;

  end;

  prdcDescricao := UpperCase(FrmEntradaNotaXml.CdsItensDescricaoFornecedor.AsString);
  if ((sPrdCodigo <> '')and(FrmEntradaNotaXml.sRegistroFornecedor <> '')and(FrmEntradaNotaXml.CdsItensDescricaoFornecedor.AsString <> '')) then
     DBINICIO.ExecSql('update PRD0000_CODIGO pc set PRDC_DESSCRICAO  = '+QuotedStr(prdcDescricao)+
                      ' where PRD_CODIGO = '+QuotedStr(sPrdCodigo)+' and FOR_CODIGO = '+QuotedStr(FrmEntradaNotaXml.sRegistroFornecedor) +
                      ' AND EXISTS (SELECT 1 FROM PRD0000 t2 WHERE pc.PRD_CODIGO = t2.PRD_CODIGO ' +
                        ' AND pc.PRDC_REFERENCIA = ' + QuotedStr(UpperCase(dbedtReferenciaFornecedor.Text)) +
                        ' AND t2.PRD_STATUS = ''A'') ')    ;

    imgConversao.Visible := (edtUnidadeSistema.Text <> eUnidadeOriginal.Text) and (edtQuantidadeConversao.Value = 0)  ;
  if (ProdutoGerenciaLote(dbedtReferencia.Text)) then
  begin
    grpLote.Visible := True;
    CdsLoteProduto.Close;
    CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where AMX_CODIGO = ' + QuotedStr(edtAlmox.Text) +  ' and PRD_CODIGO = '''+RetornaProdutoReferencia(dbedtReferencia.Text)+'''','PRD_CODIGO','');
    CdsLoteProduto.Open;
  end;
end;

procedure TFrmEntradaNotaXmlItem.btnCadastrarClick(Sender: tObject);
var sReferencia, prd_codigo :String;
    iLetra: Integer;
///
   function ProdutoJaExiste(sReferencia:String):Boolean;
   begin
        if (sReferencia <> '') then
        begin
            DataCadastros.sqlUpdate1.Close;
            DataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS','Select PRD_REFER from PRD0000','where PRD_REFER = '''+sReferencia+'''','PRD_REFER','');
            DataCadastros.sqlUpdate1.Open;
            if DataCadastros.sqlUpdate1.IsEmpty then
               Result := False
            else
               Result := True;
        end
        else
            Result := False;
        DataCadastros.sqlUpdate1.Close;
   end;
///
begin
  prd_codigo:= FrmEntradaNotaXml.CadastarProduto;
  sreferencia := DBInicio.BuscaUmDadoSqlAsString('select prd_refer from PRD0000 where prd_codigo = ' + QuotedStr(prd_codigo))  ;
  edtUnidadeSistema.Text := FrmEntradaNotaXml.CdsItensUnidade.AsString;
  if lkUnidade.Visible and (edtUnidadeSistema.Text = '') then
    edtUnidadeSistema.Text := 'PC';


  FormProduto := TFormProduto.Create(Application);
  try
      FormProduto.FormStyle := fsNormal;
      FormProduto.Visible := false;
      FormProduto.EdtPrd_Refer.Text := sReferencia;
      FormProduto.eNotaEntrada := true;

//      FormProduto.dbchkProdutoAtivo.Checked := true;
//      FormProduto.BringToFront;
//      self.SendToBack;
      FormProduto.DesabilitaBotoes;
      FormProduto.ShowModal;
  finally
     sreferencia := DBInicio.BuscaUmDadoSqlAsString('select prd_refer from PRD0000 where prd_codigo = ' + QuotedStr(prd_codigo))  ;
      if UpperCase(eUnidadeOriginal.Text) = UpperCase(edtUnidadeSistema.Text) then
      begin
        CurFator.Value := 1;
        edtQuantidadeConversao.Value :=  CurFator.Value * curQuantOriginal.Value;
        CalculaConversao;
      end;

      FreeAndNil( FormProduto );
  end;
  if not ( FrmEntradaNotaXml.cdsItens.State in dsEditModes) then
    FrmEntradaNotaXml.cdsItens.Edit;
  FrmEntradaNotaXml.cdsItensReferencia.AsString := sReferencia;
  FrmEntradaNotaXml.cdsItens.Post;
  FrmEntradaNotaXmlItem.SetFocus;


  dbedtDescricao.Text :=  DataCadastros.CdsProdutosPRD_DESCRI.AsString;
  imgProduto.Visible :=  sReferencia = '';
  imgConversao.Visible := (edtUnidadeSistema.Text <> eUnidadeOriginal.Text) and (edtQuantidadeConversao.Value = 0)  ;
 // Close;


   if (ProdutoGerenciaLote(dbedtReferencia.Text)) then
   begin
        grpLote.Visible := True;
        CdsLoteProduto.Close;
        CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where AMX_CODIGO = ' + QuotedStr(edtAlmox.Text) +  ' and PRD_CODIGO = '''+RetornaProdutoReferencia(dbedtReferencia.Text)+'''','PRD_CODIGO','');
        CdsLoteProduto.Open;
   end;
end;

procedure TFrmEntradaNotaXmlItem.dbedtReferenciaChange(Sender: tObject);
begin
   btnVincular.Visible := True;
   btnCadastrar.Visible := True;

   grpLote.Visible := False;

   if (Trim(dbedtReferencia.Text) <> '') then
   begin
     sPrdCodigo := RetornaProdutoReferencia(dbedtReferencia.Text);
     if (ProdutoGerenciaLote(dbedtReferencia.Text)) then
     begin
       grpLote.Visible := True;
       CdsLoteProduto.Close;
       CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where AMX_CODIGO = ' + QuotedStr(edtAlmox.Text) +  ' and PRD_CODIGO = '''+RetornaProdutoReferencia(dbedtReferencia.Text)+'''','PRD_CODIGO','');
       CdsLoteProduto.Open;
     end;
   end;
end;

procedure TFrmEntradaNotaXmlItem.lkUnidadeClick(Sender: TObject);
begin
  edtUnidadeSistema.Text := lkUnidade.KeyValue;
end;

procedure TFrmEntradaNotaXmlItem.cxNaturezaOperacaoPropertiesEditValueChanged(Sender: TObject);
//var cfop : variant;
begin
//  if not VarIsNull(cxNaturezaOperacao.EditValue) then
//  begin
//    cfop := cxNaturezaOperacao.Properties.DataController.DataSet.Lookup('OPE_CODIGO',cxNaturezaOperacao.EditValue,'OPE_NATUREZA');
//    if not VarIsNull(cfop) then
//      if MatchStr(VarToStr(cfop),['5901','5902','5915','5903','5925', '6902','6903','6925','1901','1902','1925','2902','2925']) then
//      begin
//        lretornoAlmo.Visible := True;
//        CbAlmox.ItemIndex := -1;
//        EdtAlmox.Clear;
//
//      end;
//
//  end;
      end;


procedure TFrmEntradaNotaXmlItem.cxNaturezaOperacaoRetornoPropertiesEditValueChanged(Sender: TObject);
begin
  imgNaturezaOperacaoRetorno.Visible := cxNaturezaOperacaoRetorno.EditValue = Null;
end;

procedure TFrmEntradaNotaXmlItem.sbCFOPClick(Sender: tObject);
begin
   try
      FormOperFisc := TFormOperFisc.Create(Application);
      try
        FormOperFisc.ShowModal;
      finally
        FormOperFisc.Destroy;
        FormOperFisc := nil;
      end;
      CdsCFOP.Refresh;
      CdsCFOPRetorno.Refresh;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFrmEntradaNotaXmlItem.CalculaConversao;
var
   rQuantidade,
   rPrecoTotal : Double;
begin

  edtPrecoConversaoManual.Clear;

  rPrecoTotal := FrmEntradaNotaXml.cdsItensENF_PTOTAL_ORIGINAL.AsFloat;
  rQuantidade := edtQuantidadeConversao.Value;
  edtTotalConversaoManual.Value := rPrecoTotal;
  if (rPrecoTotal > 0) and (rQuantidade > 0) then
    edtPrecoConversaoManual.Value := rPrecoTotal / rQuantidade;

end;

procedure TFrmEntradaNotaXmlItem.sbLoteClick(Sender: tObject);
begin
   try
      try
        FrmCadastroProdutoLote := TFrmCadastroProdutoLote.Create(Application);
        FrmCadastroProdutoLote.sPrdCodido := sPrdCodigo;
        if (FrmEntradaNotaXml.CdsItensRegistroLote.AsInteger = 0)and(FrmEntradaNotaXml.CdsItensLoteNumero.AsString <> '') then
          begin
            if (uteis.confirmacao ( 'Existem informações de lote no xml gostaria que o sistema preencha a tela com estes valores?')=mrYes) then
               begin
                  FrmCadastroProdutoLote.edtNumeroLote.Text := FrmEntradaNotaXml.CdsItensLoteNumero.AsString;
                  FrmCadastroProdutoLote.CurPrecoMaximo.Value := FrmEntradaNotaXml.CdsItensLoteValorMinimo.AsCurrency;
                  FrmCadastroProdutoLote.RxDataFabricacao.Date := FrmEntradaNotaXml.CdsItensLoteFabricacao.AsDateTime;
                  FrmCadastroProdutoLote.RxDataValidade.Date := FrmEntradaNotaXml.CdsItensLoteValidade.AsDateTime;
                  FrmCadastroProdutoLote.edtIdentificacao.Text := FrmEntradaNotaXml.edtFornecedorRazao.Text+' NFe:'+FrmEntradaNotaXml.edtNumerNfe.Text;
               end;
          end;
        FrmCadastroProdutoLote.amxCodigo := EdtAlmox.Text;
        FrmCadastroProdutoLote.lbAlmoxarifado.Caption := CbAlmox.Text;
        FrmCadastroProdutoLote.ShowModal;
      finally
        FrmCadastroProdutoLote.Destroy;
        FrmCadastroProdutoLote := nil;
      end;
      CdsLoteProduto.Refresh
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFrmEntradaNotaXmlItem.CbLoteProdutoPropertiesChange(
  Sender: tObject);
begin
   imgLote.Visible := CbLoteProduto.EditValue = Null;
end;

procedure TFrmEntradaNotaXmlItem.CurFatorExit(Sender: TObject);
begin
  if (CurFator.Value > 0) then
   edtQuantidadeConversao.Value :=  CurFator.Value * curQuantOriginal.Value;
end;

procedure TFrmEntradaNotaXmlItem.btnAlmoxarifadoClick(Sender: tObject);
begin
   try
       FormCadAlmox := TFormCadAlmox.Create(Application);
      try
        FormCadAlmox.Visible := False;
        FormCadAlmox.ShowModal;
      finally
        FormCadAlmox.Destroy;

      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
   SqlCdsAlmox.Close;
   if FrmEntradaNotaXml.cdsItensamx_terceiro_retorno.AsBoolean then
    SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','where AMX_CNPJ_PART= '+
                                    QuotedStr(RetirarMascaraCNPJ_INSC(FrmEntradaNotaXml.edtFornecedorCnpj.Text)),'AMX_DESCRI','')
   else
   SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','','AMX_DESCRI','');

   SqlCdsAlmox.Open;
   CbAlmox.Clear;
   SqlCdsAlmox.First;
   while not SqlCdsAlmox.Eof do
   begin
     CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
     SqlCdsAlmox.Next;
   end;
end;

procedure TFrmEntradaNotaXmlItem.EdtAlmoxExit(Sender: tObject);
begin
  EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
  if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[]) = true then
    CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString
  else
    EdtAlmox.Text := '';

end;

procedure TFrmEntradaNotaXmlItem.EdtAlmoxKeyPress(Sender: tObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
    key:=#0;//beep;

end;

procedure TFrmEntradaNotaXmlItem.CbAlmoxClick(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.name <> 'btnBit_Cancelar') then
       begin
           if CbAlmox.Text <> '' then
              begin
                  if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[loCaseInsensitive]) = True) then
                     begin
                         CbAlmox.Text  := SqlCdsAlmoxAMX_DESCRI.AsString;
                         EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Almoxarifado destino não encontrado !');
                         CbAlmox.Text  := '';
                         EdtAlmox.Text := '';
                     end;
              end
           else
              begin
                  if not (ActiveControl.Name = 'CbAlmox') then
                     begin
                         uteis.aviso('Informe o almoxarifado destino !');
                         CbAlmox.Text  := '';
                         EdtAlmox.Text := '';
                     end;
              end;
       end;
end;

procedure TFrmEntradaNotaXmlItem.EdtAlmoxChange(Sender: tObject);
begin
   ImgAlmozarifado.Visible := (EdtAlmox.Text = '') ;
       CdsLoteProduto.Close;
       CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where AMX_CODIGO = ' + QuotedStr(EdtAlmox.Text) +  ' and PRD_CODIGO = '''+RetornaProdutoReferencia(dbedtReferencia.Text)+'''','PRD_CODIGO','');
       CdsLoteProduto.Open;

end;

procedure TFrmEntradaNotaXmlItem.edtQuantidadeConversaoExit(Sender: TObject);
begin
  if edtQuantidadeConversao.Value > 0 then
    CurFator.Value := edtQuantidadeConversao.Value/curQuantOriginal.Value
  else
     CurFator.Value := 0 ;
  imgConversao.Visible := (edtUnidadeSistema.Text <> eUnidadeOriginal.Text) and (edtQuantidadeConversao.Value = 0)  ;
  CalculaConversao;
end;

procedure TFrmEntradaNotaXmlItem.edtUnidadeSistemaChange(Sender: TObject);
begin
  lkUnidade.KeyValue := edtUnidadeSistema.Text;
end;

end.

