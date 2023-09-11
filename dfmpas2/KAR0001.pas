unit KAR0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, Buttons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCalendar, cxLookAndFeelPainters, cxButtons, DBCtrls, FMTBCd, cxPC,
  frxClass, frxDBSet, frxExportXLS, frxExportPDF, JvLabel, JvExControls,
  JvGradient, DateUtils, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxLookAndFeels, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, cxNavigator, cxDBExtLookupComboBox, cxDBEditRepository ;

type
  TFrmKardex = class(TForm)
    SqlCdsAlmoxarifado: TSQLClientDataSet;
    DsAlmoxarifado: TDataSource;
    SqlCdsAlmoxarifadoAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoEMP_CODIGO: TStringField;
    DsProduto: TDataSource;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_UND: TStringField;
    SqlCdsKardex: TSQLClientDataSet;
    DsKardex: TDataSource;
    SqlCdsKardexKEX_REGISTRO: TIntegerField;
    SqlCdsKardexKEX_DATA_HORA: TSQLTimeStampField;
    SqlCdsKardexKEX_TIPO: TStringField;
    SqlCdsKardexKEX_QUANTIDADE: TFMTBCdField;
    SqlCdsKardexKEX_USUARIO_CODIGO: TIntegerField;
    SqlCdsKardexKEX_USUARIO_DESCRICAO: TStringField;
    SqlCdsKardexKEX_SALDO: TFMTBCdField;
    SqlCdsKardexKEX_ORIGEM: TStringField;
    SqlCdsKardexKEX_DETALHE: TStringField;
    SqlCdsKardexKEX_OBSERVACAO: TStringField;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CbAlmoxarifado: TcxLookupComboBox;
    cxDateFinal: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RbReferencia: TRadioButton;
    RbDescricao: TRadioButton;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    SqlCdsAlmoxarifadoGeral: TSQLClientDataSet;
    DsAlmoxarifadoGeral: TDataSource;
    SqlCdsProdutoGeral: TSQLClientDataSet;
    DsProdutoGeral: TDataSource;
    GroupBox7: TGroupBox;
    SqlCdsAlmoxarifadoGeralAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoGeralEMP_CODIGO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_FISICO: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_TERCEIROS: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_FORATERCEIROS: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_CIRCULANTE: TStringField;
    SqlCdsAlmoxarifadoGeralAMX_VIRTUAL: TStringField;
    SqlCdsProdutoGeralPRD_REFER: TStringField;
    SqlCdsProdutoGeralPRD_DESCRI: TStringField;
    SqlCdsProdutoGeralPRD_UND: TStringField;
    SqlSaldosGeral: TSQLDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FMTBCdField1: TFMTBCdField;
    DspSaldosGeral: TDataSetProvider;
    CdsSaldosGeral: TClientDataSet;
    StringField3: TStringField;
    StringField4: TStringField;
    FMTBCdField2: TFMTBCdField;
    DsSaldosGeral: TDataSource;
    SqlCdsProdutoGeralPRD_CODIGO: TStringField;
    SqlCdsKardexKEX_DOCUMENTO: TStringField;
    Label1: TLabel;
    cxDateInicial: TcxDateEdit;
    frxKardexExtrato: TfrxReport;
    frxDBKardexExtrato: TfrxDBDataset;
    cxButton3: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    JvLabel1: TJvLabel;
    EdProdutoDescricao: TEdit;
    EdAlmoxarifadoDescricao: TEdit;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    JvDBGrid3: TJvDBGrid;
    gridExtrato: TJvDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    cxButton4: TcxButton;
    SqlCdsKardexPRDL_LOTE: TStringField;
    SqlCdsKardexPRG_DESC_GRADE: TStringField;
    SqlCdsKardexKEX_PRECO: TFMTBCDField;
    Label5: TLabel;
    edColaborador: TSgDbSearchCombo;
    qCol: TSQLQuery;
    SqlCdsKardexCOL_CODIGO: TIntegerField;
    chkInativos: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    SqlCdsProdutoPRD_STATUS: TStringField;
    cbproduto: TcxExtLookupComboBox;
    procedure BitSairClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cxButton1Click(Sender: tObject);
    procedure cxButton2Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure RbDescricaoEnter(Sender: tObject);
    procedure RbReferenciaEnter(Sender: tObject);
    procedure DsAlmoxarifadoGeralDataChange(Sender: tObject;
      Field: TField);
    procedure DsProdutoGeralDataChange(Sender: tObject; Field: TField);
    procedure FormShow(Sender: tObject);
    procedure cxButton3Click(Sender: tObject);
    procedure frxKardexExtratoGetValue(const VarName: String;
      var Value: Variant);
    procedure CbProdutoPropertiesChange(Sender: tObject);
    procedure CbAlmoxarifadoPropertiesChange(Sender: tObject);
    procedure CbProduto3Exit(Sender: tObject);
    procedure CbAlmoxarifadoExit(Sender: tObject);
    procedure cxPageControl1Change(Sender: tObject);
    procedure cxButton4Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edColaboradorSelect(Sender: TObject);
    procedure chkInativosClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure RbReferenciaClick(Sender: TObject);
    procedure RbDescricaoClick(Sender: TObject);
    procedure CbAlmoxarifadoClick(Sender: TObject);
  private
    { Private declarations }
    FEntradaManualKardex : boolean;
    procedure AtualizaSaldos;
    procedure ListaProdutoAlmoxarifado;
    procedure ListaSaldoProdutoAlmoxarifado;
    procedure Filtro;
  public
    { Public declarations }
  end;

var
   FrmKardex: TFrmKardex;

implementation

uses Men0001, UFuncoes, iniciodb, uteis, DataCad, KAR0003, rwfunc, DataCad1;

{$R *.dfm}

procedure TFrmKardex.BitSairClick(Sender: tObject);
begin
  Close;
end;

procedure TFrmKardex.FormCreate(Sender: tObject);
begin
  SqlCdsAlmoxarifado.Open;

  SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000',' where PRD_STATUS = '+QuotedStr('A'),'PRD_REFER','');
  SqlCdsProduto.Open;
  cxDateInicial.Date := Now - 30;
  cxDateFinal.Date   := IncHour(Now,1);
  cxPageControl1.ActivePageIndex := 0;
  FEntradaManualKardex := False;
  cxButton4.Enabled := FrmMenu.EntradaeSadaManual.Enabled ;
  GroupBox4.Caption := 'Saldos dos Almoxarifados da EMPRESA '+ DBInicio.Empresa.EMP_CODIGO;
  if Share('ESTOQUES')  = 'C' then
   GroupBox2.Caption := 'Movimentação do Produto - ESTOQUE COMPARTILHADO'
  Else
   GroupBox2.Caption := 'Movimentação do Produto - ESTOQUE EXCLUSIVO';
end;

procedure TFrmKardex.FormDestroy(Sender: TObject);
begin
     FrmKardex := Nil;
end;

procedure TFrmKardex.FormResize(Sender: TObject);
begin
     Height := 638;
     Width := 980;
end;

procedure TFrmKardex.chkInativosClick(Sender: TObject);
var where : string;
begin
  Try
    Screen.Cursor := crHourGlass;
    if not chkInativos.Checked then
      where := ''
    else
      where := ' where PRD_STATUS = '+QuotedStr('A');

    SqlCdsProduto.Close;
    SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000',where,'PRD_REFER','');
    SqlCdsProduto.Open;
  Finally
     Screen.Cursor := crDefault;
  End;
end;

procedure TFrmKardex.cxButton1Click(Sender: tObject);
begin
  Filtro;
end;

procedure TFrmKardex.cxButton2Click(Sender: tObject);
begin
    Close;
end;

procedure TFrmKardex.Filtro;
var
   sAmxCodigo:String;
begin
     if (cxDateInicial.EditValue = Null) then
     begin
          uteis.aviso('Informe a Data Inicial');
          cxDateInicial.SetFocus;
     end
     else
     if (cxDateFinal.EditValue = Null) then
     begin
          uteis.aviso('Informe a Data Final');
          cxDateFinal.SetFocus;
     end
     else
     if (cxDateFinal.Date < cxDateInicial.Date) then
     begin
          uteis.aviso('A Data inicial não pode ser maior que data final');
          cxDateFinal.SetFocus;
     end
     else
     if (CbProduto.EditValue = Null) then
     begin
          uteis.aviso('Informe o Produto');
          CbProduto.SetFocus;
     end
     else
     if (CbAlmoxarifado.EditValue = Null) then
     begin
          uteis.aviso('Informe o almoxarifado');
          CbAlmoxarifado.SetFocus;
     end
     else
     begin
        if ((CbAlmoxarifado.EditValue = NULL) or (CbAlmoxarifado.EditValue = '')) then
            sAmxCodigo := 'null'
        else
            sAmxCodigo := ''''+CbAlmoxarifado.EditValue+'''';

        SqlCdsKardex.Close;
				SqlCdsKardex.CommandText := 'SELECT * FROM pCd_kardex_extrato('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(CbProduto.EditValue)+','+sAmxCodigo+','+QuotedStr(FormatDateTime('MM/DD/yyyy HH:MM:SS',cxDateInicial.EditValue))+','+QuotedStr(FormatDateTime('MM/DD/yyyy HH:MM:SS',cxDateFinal.EditValue))+',''N'')';
        SqlCdsKardex.open;
        SqlCdsKardex.Filter := '';
        IF edColaborador.idRetorno <> '' then
        Begin
          SqlCdsKardex.Filtered := False;
          SqlCdsKardex.Filter := 'COL_CODIGO ='+edColaborador.idRetorno;
          SqlCdsKardex.Filtered := True;
        End;
        AtualizaSaldos;

        gridExtrato.SetFocus;
     end;
end;

procedure TFrmKardex.FormActivate(Sender: TObject);
begin
 if not Assigned(FrmKardexLancamentoManual) and FEntradaManualKardex  then
    cxButton1.Click;
end;

procedure TFrmKardex.FormClose(Sender: tObject; var Action: TCloseAction);
begin
     SqlCdsAlmoxarifadoGeral.Close;
     SqlCdsAlmoxarifado.Close;
     SqlCdsProduto.Close;
     Action := CaFree;
end;


procedure TFrmKardex.AtualizaSaldos;
begin
     CdsSaldos.DisableControls;
     CdsSaldos.Close;
     if ( CbProduto.EditValue <> null) then
     begin
          SqlCdsProduto.Locate('PRD_CODIGO',CbProduto.EditValue,[]);
          CdsSaldos.CommandText := 'SELECT * '+
                                   'FROM pCd_kardex_saldo('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(CbProduto.EditValue)+',null) t1 '+
                                   'where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'') ' +
                                   ' AND t1.AMX_CODIGO_RET IN (SELECT t3.AMX_CODIGO FROM USUARIO_ALMOXARIFADO t3 WHERE t3.AMX_CODIGO = t1.AMX_CODIGO_RET) '
                                   ;
          CdsSaldos.Open;
          CdsSaldos.First;
     end;
     CdsSaldos.EnableControls;
end;

procedure TFrmKardex.RbDescricaoClick(Sender: TObject);
begin
  cbproduto.Properties.ListFieldItem := cxGrid1DBTableView1PRD_DESCRI;
end;

procedure TFrmKardex.RbDescricaoEnter(Sender: tObject);
begin
   RbDescricao.Checked := True;
   cbproduto.Properties.ListFieldItem := cxGrid1DBTableView1PRD_DESCRI;
//   CbProduto.Properties.ListFieldIndex := 1;
   CbAlmoxarifado.Properties.ListFieldIndex := 1;
   CbProduto.SetFocus;
   CbProduto.SelectAll;
end;

procedure TFrmKardex.RbReferenciaClick(Sender: TObject);
begin
  cbproduto.Properties.ListFieldItem := cxGrid1DBTableView1PRD_REFER;
end;

procedure TFrmKardex.RbReferenciaEnter(Sender: tObject);
begin
  RbReferencia.Checked := True;
  cbproduto.Properties.ListFieldItem := cxGrid1DBTableView1PRD_REFER;
//  CbProduto.Properties.ListFieldIndex := 0;
  CbAlmoxarifado.Properties.ListFieldIndex := 0;
  CbProduto.SetFocus;
  CbProduto.SelectAll;
end;

procedure TFrmKardex.DsAlmoxarifadoGeralDataChange(Sender: tObject;
  Field: TField);
begin
   ListaProdutoAlmoxarifado;
end;

procedure TFrmKardex.ListaProdutoAlmoxarifado;
begin
   SqlCdsProdutoGeral.Close;
   if (not SqlCdsAlmoxarifadoGeral.IsEmpty) then
      begin
         SqlCdsProdutoGeral.CommandText:= 'SELECT '
                                         +'     PRD0000.PRD_REFER, '
                                         +'     PRD0000.PRD_CODIGO, ' 
                                         +'     PRD0000.PRD_DESCRI, '
                                         +'     PRD0000.PRD_UND '
                                         +'FROM kardex t1'
                                         +'     join prd0000 on (prd0000.prd_codigo = t1.prd_codigo)'
                                         +' where t1.AMX_CODIGO = '+QuotedStr(SqlCdsAlmoxarifadoGeralAMX_CODIGO.AsString)+' '
                                         +' group by PRD0000.PRD_REFER, PRD0000.PRD_CODIGO, PRD0000.PRD_DESCRI, PRD0000.PRD_UND order by PRD0000.PRD_DESCRI';
         SqlCdsProdutoGeral.Open;
      end;
end;

procedure TFrmKardex.ListaSaldoProdutoAlmoxarifado;
begin
   CdsSaldosGeral.Close;
   if (not SqlCdsProdutoGeral.IsEmpty) then
      begin
         CdsSaldosGeral.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(SqlCdsProdutoGeralPRD_CODIGO.AsString)+',null)  t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
         CdsSaldosGeral.Open;
      end;
end;

procedure TFrmKardex.DsProdutoGeralDataChange(Sender: tObject;
  Field: TField);
begin
   ListaSaldoProdutoAlmoxarifado;
end;

procedure TFrmKardex.edColaboradorSelect(Sender: TObject);
begin
  Filtro;
end;

procedure TFrmKardex.FormShow(Sender: tObject);
begin
   CbProduto.SetFocus;
end;

procedure TFrmKardex.cxButton3Click(Sender: tObject);
begin
    if (SqlCdsKardex.IsEmpty) then
      begin
         uteis.aviso('Não existe movimento para ser impresso');
      end
    else
      frxKardexExtrato.ShowReport();
end;

procedure TFrmKardex.frxKardexExtratoGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'produto') then
      Value := CbProduto.EditText
   else
   if (VarName = 'dataInicial') then
      Value := cxDateInicial.Date
   else
   if (VarName = 'dataFinal') then
      Value := cxDateFinal.Date
   else
   if (VarName = 'almoxarifado') then
      Value := CbAlmoxarifado.EditText;
end;

procedure TFrmKardex.CbProdutoPropertiesChange(Sender: tObject);
begin

  if trim(cbProduto.text)<>''   then
     EdProdutoDescricao.Text :=   SqlCdsProduto.FieldByName('prd_descri').AsString // dbinicio.buscaumdadosqlasstring('select prd_descri from prd0000 where prd_refer = '+qStr( CbProduto.Text ) )
  else
     EdProdutoDescricao.CLEAR;
  if SqlCdsProduto.FieldByName('prd_status').AsString = 'I' then
    EdProdutoDescricao.Color := clRed
  else
  begin
    EdProdutoDescricao.Color := $00D7D7D7 ;
  end;

      //CbProduto.Properties.DataController.DataSet.Lookup('PRD_CODIGO',CbProduto.Text,'PRD_DESCRI');
end;

procedure TFrmKardex.CbAlmoxarifadoPropertiesChange(Sender: tObject);
begin
   try
      if CbAlmoxarifado.EditValue<>null then
         if CbAlmoxarifado.Properties.DataController.DataSet.active then
            EdAlmoxarifadoDescricao.Text := CbAlmoxarifado.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifado.EditValue,'AMX_DESCRI');
   except

   end;
end;

procedure TFrmKardex.CbProduto3Exit(Sender: tObject);

function KardexDataPrimeiroLancamento(sProduto:String):TDateTime;
begin
   Result := Now - 30;
   //
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT FIRST 1 T1.DATA_HORA FROM KARDEX T1 WHERE T1.PRD_CODIGO = (SELECT T2.PRD_CODIGO FROM PRD0000 T2 WHERE T2.PRD_REFER =  '+QuotedStr(sProduto)+')';
   DataCadastros.sqlUpdate.open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      Result := DataCadastros.sqlUpdate.FieldByName('DATA_HORA').AsDateTime
   else
      begin
         Result := Now - 30;
      end;
   DataCadastros.sqlUpdate.Close;
end;

begin
     if CbProduto.EditValue <>  Null then
        cxDateInicial.Date := KardexDataPrimeiroLancamento(CbProduto.EditValue);
     if CbProduto.EditValue <> Null then
        EdProdutoDescricao.Text := CbProduto.Properties.DataController.DataSet.Lookup('PRD_CODIGO',CbProduto.EditValue,'PRD_DESCRI');
end;

procedure TFrmKardex.CbAlmoxarifadoClick(Sender: TObject);
begin
  if CbAlmoxarifado.EditValue <> null then
    if not AlmoxarifadoUsuario(CbAlmoxarifado.EditValue) then
      CbAlmoxarifado.SetFocus;
end;

procedure TFrmKardex.CbAlmoxarifadoExit(Sender: tObject);
begin

   try
    if not AlmoxarifadoUsuario(CbAlmoxarifado.EditValue) then
    begin
      CbAlmoxarifado.SetFocus;
      Exit;
    end
    else
      EdAlmoxarifadoDescricao.Text := CbAlmoxarifado.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifado.EditValue,'AMX_DESCRI');
   except

   end;
end;

procedure TFrmKardex.cxPageControl1Change(Sender: tObject);
begin
     if cxPageControl1.ActivePage=cxTabSheet2 then
     begin
          if not SqlCdsAlmoxarifadoGeral.active then
             SqlCdsAlmoxarifadoGeral.Open;
     end;
end;

procedure TFrmKardex.cxButton4Click(Sender: tObject);
begin
  FEntradaManualKardex := False;
  if not assigned(FrmKardexLancamentoManual) then
  begin
    FrmKardexLancamentoManual := TFrmKardexLancamentoManual.Create(Application);
    FrmKardexLancamentoManual.CbProduto.text := cbProduto.Text ;
    FrmKardexLancamentoManual.CbAlmoxarifadoDestino.idRetorno := CbAlmoxarifado.EditValue;
    FrmKardexLancamentoManual.SelecionaProduto;
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

  end;
  FEntradaManualKardex:=True;
  FrmKardexLancamentoManual.Show;




end;

procedure TFrmKardex.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if  AViewInfo.GridRecord.Selected then
//    ACanvas.Brush.Color := clHighlight
//  else
//  if cxGrid1DBTableView1.DataController.DataSet.FieldByName('PRD_STATUS').AsString = 'I' then
//     ACanvas.Font.Color := clRed
//
//  else
//  If AViewInfo.GridRecord.RecordIndex mod 2 = 0 Then
//       ACanvas.Brush.Color := $FFFAFA  // --->  Quero trocar aqui por STYLES
//    Else
//       ACanvas.Brush.Color := $CDC9C9; // --->  Quero trocar aqui por STYLES
end;

end.




