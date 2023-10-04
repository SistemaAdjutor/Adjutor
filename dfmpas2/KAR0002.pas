unit KAR0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, DataMov,
  cxDBLookupComboBox, StdCtrls, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids,   FMTBCd, Mask,  rxToolEdit,  rxCurrEdit, Buttons, Men0001, JvLabel,
  JvExControls, JvGradient, ComboBoxRw, RWFunc, cxLookAndFeels,
  cxLookAndFeelPainters, Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, cxGraphics, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrmKardexTransferencia = class(TfrmBaseDbEstoque)
    SqlSaldos: TSQLDataSet;
    DspSaldos: TDataSetProvider;
    CdsSaldos: TClientDataSet;
    DsSaldos: TDataSource;
    SqlSaldosAMX_CODIGO_RET: TStringField;
    SqlSaldosAMX_DESCRI_RET: TStringField;
    SqlSaldosAMX_SALDO_RET: TFMTBCdField;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
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
    dsAlmoxarifadoDestino: TDataSource;
    qEmp1: TSQLQuery;
    qEmp2: TSQLQuery;
    qProd: TSQLQuery;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    MemoObservacao: TMemo;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    CbAlmoxarifadoOrigem: TcxLookupComboBox;
    CurSaldoOrigem: TCurrencyEdit;
    EdAlmoxarifadoOrigemDescricao: TEdit;
    edtCodigoEmpresaOrigem: TEdit;
    cbEmpresaOrigem: TSgDbSearchCombo;
    grp1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    CbAlmoxarifadoDestino: TcxLookupComboBox;
    CurSaldoDestino: TCurrencyEdit;
    EdAlmoxarifadoDestinoDescricao: TEdit;
    edtCodigoEmpresaDestino: TEdit;
    cbEmpresaDestino: TSgDbSearchCombo;
    grp2: TGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    EdDocumento: TEdit;
    CurSaldoTransferir: TCurrencyEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    GroupBox2: TGroupBox;
    grProduto: TDBGrid;
    cbProdutoDestino: TSgDbSearchCombo;
    Label4: TLabel;
    cbProduto: TSgDbSearchCombo;
    Label10: TLabel;
    dsDesino: TDataSource;
    cdsDestino: TClientDataSet;
    dspDestino: TDataSetProvider;
    qDestino: TSQLDataSet;
    qDestinoAMX_CODIGO_RET: TStringField;
    qDestinoAMX_DESCRI_RET: TStringField;
    qDestinoAMX_SALDO_RET: TFMTBCDField;
    cdsDestinoAMX_CODIGO_RET: TStringField;
    cdsDestinoAMX_DESCRI_RET: TStringField;
    cdsDestinoAMX_SALDO_RET: TFMTBCDField;
    gbDestino: TGroupBox;
    grProdutoDestino: TDBGrid;
    qProdDest: TSQLQuery;
    qProdPRD_REFER: TStringField;
    qProdPRD_DESCRI: TStringField;
    qProdprd_und: TStringField;
    qProdprd_CODIGO: TStringField;
    qProdDESCRICAO: TStringField;
    qProdDestPRD_REFER: TStringField;
    qProdDestPRD_DESCRI: TStringField;
    qProdDestprd_und: TStringField;
    qProdDestprd_CODIGO: TStringField;
    qProdDestDESCRICAO: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure CbAlmoxarifadoOrigemPropertiesChange(Sender: tObject);
    procedure CbAlmoxarifadoDestinoPropertiesChange(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CbAlmoxarifadoOrigemExit(Sender: tObject);
    procedure CbAlmoxarifadoDestinoExit(Sender: tObject);
    procedure CbAlmoxarifadoOrigemClick(Sender: tObject);
    procedure CbAlmoxarifadoDestinoClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure edtCodigoEmpresaOrigemExit(Sender: tObject);
    procedure edtCodigoEmpresaDestinoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure cbProdutoSelect(Sender: TObject);
    procedure cbEmpresaOrigemSelect(Sender: TObject);
    procedure cbEmpresaDestinoSelect(Sender: TObject);
    procedure qProdAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbProdutoDestinoSelect(Sender: TObject);
  private
    FePedido : boolean;
    { Private declarations }
    procedure LimparCampos;
    procedure AtualizaSaldos;
    procedure SelecionaProduto;
    procedure SelecionaProdutoDestino;
  public
    property Epedido: boolean read FEPEDIDO write fePedido  ;
  end;

var
  FrmKardexTransferencia: TFrmKardexTransferencia;

implementation

uses uPedidoItem, uteis, iniciodb, Prd0001;


{$R *.dfm}

procedure TFrmKardexTransferencia.FormCreate(Sender: tObject);
begin
  INHERITED  ;
  SqlCdsAlmoxarifadoOrigem.Open;
  SqlCdsAlmoxarifadoDestino.Open;
  cbProduto.CDS.AfterScroll:=qProd.AfterScroll;
  grProduto.Align := alClient;
  FePedido := False;
end;

procedure TFrmKardexTransferencia.FormDestroy(Sender: TObject);
begin
  inherited;
  if not assigned(FrmPedidoItem) then
     FrmKardexTransferencia := Nil;
end;

procedure TFrmKardexTransferencia.FormResize(Sender: TObject);
begin
  inherited;
  Height:= 543;
  Width := 935;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoOrigemPropertiesChange(
  Sender: tObject);
begin
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoDestinoPropertiesChange(
  Sender: tObject);
begin
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.Bit_CancelarClick(Sender: tObject);
begin
  Close;
end;

procedure TFrmKardexTransferencia.LimparCampos;
begin
  cbProduto.text := '';
  edtCodigoEmpresaOrigem.text := '';
  cbEmpresaOrigem.text := '';
  edtCodigoEmpresaDestino.clear;
  cbEmpresaDestino.clear;
  EdDocumento.clear;
  CurSaldoTransferir.clear;
  cbProdutoDestino.clear;
  CbAlmoxarifadoDestino.clear;
  CurSaldoDestino.Clear;

  EdAlmoxarifadoOrigemDescricao.clear;
  EdAlmoxarifadoDestinoDescricao.clear;
  CbAlmoxarifadoOrigem.clear;
  MemoObservacao.clear;
  CurSaldoOrigem.text := '';
end;


procedure TFrmKardexTransferencia.Bit_GravarClick(Sender: tObject);
var EmpresaOrigem, EmpresaDestino ,
    DetalheOrigem, DetalheDestino ,
    ObsOrigem, ObsDestino : string;

begin
  (*Validações*)
  //saldo origem mair que o solicitado
  if (CbProduto.idRetorno='') then
  begin
    uteis.aviso('Informe o produto');
    CbProduto.SetFocus;
  end
  else
  if ((edtCodigoEmpresaOrigem.Text = '')or(edtCodigoEmpresaOrigem.Text = '000')) and  (Share('ESTOQUES')='E')  then
  begin
    uteis.aviso('Informe a empresa de origem');
    edtCodigoEmpresaOrigem.SetFocus;
  end
  else
  if (CbAlmoxarifadoOrigem.EditValue = Null) then
  begin
    uteis.aviso('Informe o almoxarifado de origem');
    CbAlmoxarifadoOrigem.SetFocus;
  end
  else
  if ((edtCodigoEmpresaDestino.Text = '')or(edtCodigoEmpresaDestino.Text = '000')) and  (Share('ESTOQUES')='E') then
    begin
      uteis.aviso('Informe a empresa de destino');
      edtCodigoEmpresaDestino.SetFocus;
    end
  else
  if (CbAlmoxarifadoDestino.EditValue = Null) then
    begin
      uteis.aviso('Informe o almoxarifado de destino');
      CbAlmoxarifadoDestino.SetFocus;
    end
  else
  if ((CurSaldoOrigem.Value <= 0) or (CurSaldoOrigem.Value < CurSaldoTransferir.Value)) then
    begin
      uteis.aviso('Não possui saldo no almoxarifado de origem');
      CbAlmoxarifadoOrigem.SetFocus;
    end
  else
  if (CurSaldoTransferir.Value <= 0) then
    begin
      uteis.aviso('Informe a quantidade para transferência');
      //CurSaldoTransferir.SetFocus;
    end
  else
  if (uteis.confirmacao ( 'Confirma a transferência?')=mrYes) then
  begin
    if trim(EdDocumento.Text)='' then
      EdDocumento.Text:='Transf.';
    if (Share('ESTOQUES')='E') then
    begin
      EmpresaOrigem := edtCodigoEmpresaOrigem.Text;
      EmpresaDestino := edtCodigoEmpresaDestino.Text;
      DetalheOrigem :=  ' Para: '+cbEmpresaDestino.Text;
      DetalheDestino := ' De: '+cbEmpresaOrigem.Text;
    end
    else
    begin
      EmpresaOrigem := DBInicio.Empresa.EMP_CODIGO;
      EmpresaDestino := DBInicio.Empresa.EMP_CODIGO;
      DetalheOrigem :=  'Para Almoxarifado: '+CbAlmoxarifadoDestino.Text;
      DetalheDestino := 'De Almoxarifado: '+CbAlmoxarifadoOrigem.Text;
    end;
    if (cbProdutoDestino.idRetorno = '') then
    begin
      ObsOrigem :=   MemoObservacao.Text + 'Para Almoxarifado: '+CbAlmoxarifadoDestino.Text;
      ObsDestino :=   MemoObservacao.Text+  'De Almoxarifado: '+CbAlmoxarifadoOrigem.Text;
    end
    else
    begin
      ObsOrigem :=  'Para REFER : '+cbProdutoDestino.CDS.FieldByName('PRD_REFER').AsString+'-'+
            cbProdutoDestino.CDS.FieldByName('prd_descri').AsString  + ', Almoxarifado: '+CbAlmoxarifadoDestino.Text;
      ObsDestino :=  'De REFER : '+cbProduto.CDS.FieldByName('PRD_REFER').AsString+'-'+
                cbProduto.CDS.FieldByName('prd_descri').AsString  + ', Almoxarifado: '+CbAlmoxarifadoOrigem.Text;
    end;
    //Débito Origem
    KardexLancamentoEmpresa(EmpresaOrigem,'0',
                     iif(Epedido,'TRP','TRA'),
                     CbAlmoxarifadoOrigem.EditValue,
                     CbAlmoxarifadoDestino.EditValue,
                     CbProduto.idRetorno,
                     '',//grade
                     cbProduto.cds.fieldbyname('PRD_UND').AsString,
                     'S',
                     '',
                     '',//Novo esquema de lote
                     ObsOrigem,
                     Now,
                     CurSaldoTransferir.Value,
                     EdDocumento.Text,
                    DetalheOrigem,
                     0.00);
    //Crédito Destino
    KardexLancamentoEmpresa(EmpresaDestino , '0',
                     iif(Epedido,'TRP','TRA'),
                     CbAlmoxarifadoDestino.EditValue,
                     CbAlmoxarifadoOrigem.EditValue,
                     IIF(cbProdutoDestino.idRetorno = '', CbProduto.idRetorno,cbProdutoDestino.idRetorno),
                     '',//grade
                     cbProduto.cds.fieldbyname('PRD_UND').AsString,
                     'E',
                     '',
                     '',//Novo esquema de lote
                     ObsDestino,

                     Now,
                     CurSaldoTransferir.Value,
                     EdDocumento.Text,
                     DetalheDestino,
                     0.00);

    showmessage('Sucesso!');
    if Epedido then
        close;

    CdsSaldos.Close;
    CdsSaldos.CommandTEXT := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(EmpresaOrigem)+','+QuotedStr(CbProduto.idRetorno)+',null) t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';

    CdsSaldos.Open;
    SelecionaProdutoDestino;

    AtualizaSaldos;
    LimparCampos
  end;
end;


procedure TFrmKardexTransferencia.AtualizaSaldos;
var EmpresaOrigem, EmpresaDestino : string;
begin
  if (Share('ESTOQUES')='E') then
  begin
    EmpresaOrigem := edtCodigoEmpresaOrigem.Text;
    EmpresaDestino := edtCodigoEmpresaDestino.Text;
  end
  else
  begin
    EmpresaOrigem := DBInicio.Empresa.EMP_CODIGO;
    EmpresaDestino := DBInicio.Empresa.EMP_CODIGO;
  end;
//  if (Assigned(FrmPedidoItem)) then
//    CurSaldoTransferir.Value := FrmPedidoItem.CurQuantidade.Value;

  if not VarIsNull(CbAlmoxarifadoOrigem.EditValue) and (CbAlmoxarifadoOrigem.EditValue <> '' )then
    EdAlmoxarifadoOrigemDescricao.Text := CbAlmoxarifadoOrigem.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifadoOrigem.EditValue,'AMX_DESCRI');
   if not VarIsNull(CbAlmoxarifadoDestino.EditValue) then
     EdAlmoxarifadoDestinoDescricao.Text := CbAlmoxarifadoDestino.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifadoDestino.EditValue,'AMX_DESCRI');
   CurSaldoOrigem.Value := 0;
   if ( CbProduto.idRetorno <> '')and(CbAlmoxarifadoOrigem.EditValue <> null) and (EmpresaOrigem <> '') then
      CurSaldoOrigem.Value := KardexRetornaSaldo(CbProduto.idRetorno, CbAlmoxarifadoOrigem.EditValue,EmpresaOrigem);
   CurSaldoDestino.Value := 0;
   if ( CbProduto.idRetorno <> '')and(CbAlmoxarifadoDestino.EditValue <> null) and (EmpresaDestino <> '') then
   begin
     if cbProdutoDestino.idRetorno <> '' then
       CurSaldoDestino.Value := KardexRetornaSaldo(cbProdutoDestino.idRetorno, CbAlmoxarifadoDestino.EditValue,EmpresaDestino )
     else
      CurSaldoDestino.Value := KardexRetornaSaldo(CbProduto.idRetorno, CbAlmoxarifadoDestino.EditValue,EmpresaDestino );
   end;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoOrigemExit(
  Sender: tObject);
begin
  if not AlmoxarifadoUsuario(CbAlmoxarifadoOrigem.EditValue) then
  begin
    CbAlmoxarifadoOrigem.SetFocus;
    Exit;
  end
  else
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoDestinoExit(
  Sender: tObject);
begin
  if not AlmoxarifadoUsuario(CbAlmoxarifadoDestino.EditValue) then
  begin
    CbAlmoxarifadoDestino.SetFocus;
    Exit;
  end
  else
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoOrigemClick(
  Sender: tObject);
begin
//  if not AlmoxarifadoUsuario(CbAlmoxarifadoOrigem.EditValue) then
//  begin
//    CbAlmoxarifadoOrigem.SetFocus;
//    Exit;
//  end
//  else
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.CbAlmoxarifadoDestinoClick(
  Sender: tObject);
begin
//  if not AlmoxarifadoUsuario(CbAlmoxarifadoDestino.EditValue) then
//  begin
//    CbAlmoxarifadoDestino.SetFocus;
//    Exit;
//  end
//  else
    AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.SelecionaProduto;
var EmpresaOrigem: string;
begin
  if (Share('ESTOQUES')='E') then
    EmpresaOrigem := iif(cbEmpresaOrigem.idRetorno='',dbInicio.Empresa.EMP_CODIGO, cbEmpresaOrigem.idRetorno)
  else
    EmpresaOrigem := DBInicio.Empresa.EMP_CODIGO;

  CdsSaldos.DisableControls;
  CdsSaldos.Close;
  if ( CbProduto.idRetorno<>'') then
  begin
       CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(EmpresaOrigem)  +','+
       QuotedStr(CbProduto.idRetorno)+',null) t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')' +
        ' AND t1.AMX_CODIGO_RET IN (SELECT t3.AMX_CODIGO FROM USUARIO_ALMOXARIFADO t3 WHERE t3.AMX_CODIGO = t1.AMX_CODIGO_RET) ' ;
       CdsSaldos.Open;
       atualizasaldos;
  end;
  CdsSaldos.EnableControls;
end;

procedure TFrmKardexTransferencia.SelecionaProdutoDestino;
begin
  cdsDestino.DisableControls;
  try
    cdsDestino.Close;
    if ( CbProduto.idRetorno<>'') or ( cbProdutoDestino.idRetorno<>'') then
    begin
         cdsDestino.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(edtCodigoEmpresaDestino.Text)+','+
         iif(cbProdutoDestino.idRetorno = '',QuotedStr(CbProduto.idRetorno),QuotedStr(cbProdutoDestino.idRetorno))+
         ',null) t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
         cdsDestino.Open;
         atualizasaldos;
    end;
  finally
    cdsDestino.EnableControls;
  end;

end;

procedure TFrmKardexTransferencia.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsAlmoxarifadoOrigem.Close;
   SqlCdsAlmoxarifadoDestino.Close;
   INHERITED;
   if not assigned(FrmPedidoItem) then
      Action := CaFree;
end;

procedure TFrmKardexTransferencia.cbProdutoDestinoSelect(Sender: TObject);
begin

  if (cbProdutoDestino.idRetorno<> '') then
  begin
    grProduto.Align := alTop;
    grProduto.Height := 223;
    gbDestino.Visible:=True;
    gbDestino.Align := alClient;
    SelecionaProdutoDestino;

  end
  else
  begin
    grProduto.Align := alClient;
    gbDestino.Visible:=False;
    gbDestino.Visible := False;
  end;
end;

procedure TFrmKardexTransferencia.cbProdutoSelect(Sender: TObject);
begin
  inherited;
  SelecionaProduto;
end;

procedure TFrmKardexTransferencia.edtCodigoEmpresaOrigemExit(
  Sender: tObject);
begin

   cbEmpresaOrigem.idretorno := PreenchezeroEsquerda(edtCodigoEmpresaOrigem.Text,3);
   if cbEmpresaOrigem.idretorno='' then
   begin
     uteis.aviso('Empresa não localizada com o código informado');
     cbEmpresaOrigem.setFocus;
   end;
end;

procedure TFrmKardexTransferencia.edtCodigoEmpresaDestinoExit(
  Sender: tObject);
begin
  cbEmpresaDestino.idretorno := PreenchezeroEsquerda(edtCodigoEmpresaDestino.Text,3);
  if cbEmpresaDestino.idretorno='' then
  begin
     uteis.aviso('Empresa não localizada com o código informado');
     edtCodigoEmpresaDestino.SetFocus;
  end;
end;

procedure TFrmKardexTransferencia.cbEmpresaDestinoSelect(Sender: TObject);
begin
  inherited;

  edtCodigoEmpresaDestino.Text := cbEmpresaDestino.idRetorno;
  if (cbEmpresaDestino.idRetorno <> '') and (cbEmpresaOrigem.idRetorno <> cbEmpresaDestino.idRetorno) and (Share('ESTOQUES')='E')   then
  begin
    grProduto.Align := alTop;
    grProduto.Height := 223;
    gbDestino.Visible:=True;
    gbDestino.Align := alClient;
    SelecionaProdutoDestino;

  end
  else
  begin
    grProduto.Align := alClient;
    gbDestino.Visible:=False;

  end;
end;

procedure TFrmKardexTransferencia.cbEmpresaOrigemSelect(Sender: TObject);
begin
  inherited;
  edtCodigoEmpresaOrigem.Text :=cbEmpresaOrigem.IdRetorno;
  AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.FormShow(Sender: tObject);
begin
   INHERITED;
   gbDestino.Visible := False;
//   if assigned(FrmPedidoItem) then
//      cbEmpresaOrigem.idRetorno := FrmPedidoItem.CdsSaldos.FieldByName('EMP_Codigo').value;

   if (Share('ESTOQUES')='C') then
   Begin
     cbEmpresaOrigem.Enabled:= False;
     cbEmpresaDestino.Enabled := False;
     edtCodigoEmpresaOrigem.Enabled := False;
     edtCodigoEmpresaDestino.Enabled := False;

   End;
   cbEmpresaOrigem.idRetorno := dbInicio.Empresa.EMP_CODIGO;
  
  AtualizaSaldos;
end;

procedure TFrmKardexTransferencia.qProdAfterScroll(DataSet: TDataSet);
begin
     inherited;
//     CdsSaldos.Close;
//     CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(dataset.fieldbyname('prd_codigo').asstring)+',null) t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
//     CdsSaldos.Open;
end;

end.

