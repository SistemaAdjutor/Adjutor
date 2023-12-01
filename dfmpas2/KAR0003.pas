unit KAR0003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, SqlExpr,SqlClientDataSet, Provider, FMTBCd, StdCtrls,
  Buttons, DBClient, DBLocal, DBLocalS, Mask,  rxToolEdit,  rxCurrEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvLabel, JvExControls, JvGradient, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  Data.DBXFirebird, SimpleDS, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, ACBrETQ, SgDbSeachComboUnit, ComboBoxRW, Vcl.ComCtrls, cxDBExtLookupComboBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmKardexLancamentoManual = class(TFrmBaseDbEstoque)
    DsProduto: TDataSource;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_UND: TStringField;
    DsSaldos: TDataSource;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
    DspSaldos: TDataSetProvider;
    SqlSaldos: TSQLDataSet;
    SqlSaldosAMX_CODIGO_RET: TStringField;
    SqlSaldosAMX_DESCRI_RET: TStringField;
    SqlSaldosAMX_SALDO_RET: TFMTBCdField;
    SqlCdsAlmoxarifadoDestino: TSQLClientDataSet;
    SqlCdsAlmoxarifadoDestinoAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoDestinoAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoDestinoAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoDestinoEMP_CODIGO: TStringField;
    DsAlmoxarifadoDestino: TDataSource;
    dsLoteProduto: TDataSource;
    CdsLoteProduto: TSQLClientDataSet;
    CdsLoteProdutoPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoEMP_CODIGO: TStringField;
    CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    CdsLoteProdutoPRDL_LOTE: TStringField;
    CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLoteProdutoPRDL_SALDO: TFMTBCdField;
    CdsLoteProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_GRADE_OBRIGATORIO: TStringField;
    dspGrade: TDataSetProvider;
    sGrade: TSQLQuery;
    sGradePRG_REGISTRO: TIntegerField;
    sGradePRD_CODIGO: TStringField;
    sGradePRG_SALDO: TFMTBCDField;
    sGradePRG_DESCRICAO: TStringField;
    sGradePRG_QTDE: TFMTBCDField;
    cdsGrade: TClientDataSet;
    cdsGradePRG_REGISTRO: TIntegerField;
    cdsGradePRG_DESCRICAO: TStringField;
    cdsGradePRG_SALDO: TFMTBCDField;
    cdsGradePRG_QTDE: TFMTBCDField;
    cdsGradePRD_CODIGO: TStringField;
    dsGrade: TDataSource;
    qCli: TSQLQuery;
    qFor: TSQLQuery;
    qForfor_codigo: TStringField;
    qForfor_razao: TStringField;
    qForfor_bairro: TStringField;
    qForfor_cidade: TStringField;
    qCol: TSQLQuery;
    PageControl1: TPageControl;
    tsgrade: TTabSheet;
    tslote: TTabSheet;
    dbgLancarinfo: TDBGrid;
    dgrLote: TDBGrid;
    SqlCdsProdutoPRD_GERENCIA_LOTE: TStringField;
    Panel1: TPanel;
    chkMaiorZero: TCheckBox;
    CdsLoteProdutoPRG_QTDE: TFMTBCDField;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    CurSaldoTransferir: TCurrencyEdit;
    LabelQuant: TLabel;
    EdDocumento: TEdit;
    Label4: TLabel;
    CurSaldoDestino: TCurrencyEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    RbReferencia: TRadioButton;
    RbDescricao: TRadioButton;
    EdProdutoDescricao: TEdit;
    PesqCliente: TSgDbSearchCombo;
    labelforncliente: TLabel;
    edColaborador: TSgDbSearchCombo;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    MemoObservacao: TMemo;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    CbLoteProduto: TcxLookupComboBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    RbAdicionar: TRadioButton;
    RbRetirar: TRadioButton;
    RbBalanco: TRadioButton;
    PesqFornecedor: TSgDbSearchCombo;
    CdsLoteProdutoPRDL_QTDELOTE: TFMTBCDField;
    chkvencida: TCheckBox;
    CbAlmoxarifadoDestino: TComboBoxRw;
    Label1: TLabel;
    cbProduto: TComboBoxRw;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cbProduto2: TcxExtLookupComboBox;
    chkTodosLotes: TCheckBox;
    CdsLoteProdutoAMX_CODIGO: TStringField;
    CdsLoteProdutoAMX_DESCRI: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure RbAdicionarClick(Sender: tObject);
    procedure RbRetirarClick(Sender: tObject);
    procedure RbBalancoClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgLancarinfoEnter(Sender: TObject);
    procedure dbgLancarinfoExit(Sender: TObject);
    procedure dbgLancarinfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgLancarinfoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgLancarinfoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsGradeAfterScroll(DataSet: TDataSet);
    procedure cdsGradeNewRecord(DataSet: TDataSet);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure CbAlmoxarifadoDestinoSelect(Sender: TObject);
    procedure dgrLoteKeyPress(Sender: TObject; var Key: Char);
    procedure chkvencidaClick(Sender: TObject);
    procedure CdsLoteProdutoPRG_QTDEValidate(Sender: TField);
    procedure RbReferenciaClick(Sender: TObject);
    procedure RbDescricaoClick(Sender: TObject);
    procedure CbAlmoxarifadoDestinokeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbAlmoxarifadoDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure CbAlmoxarifadoDestinokeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbProduto2Exit(Sender: TObject);
    procedure cbProduto2PropertiesChange(Sender: TObject);
    procedure chkTodosLotesClick(Sender: TObject);
  private
   KardexLancEntrada    :boolean;
   KardexLancSaida      :boolean;
   KardexLancBalanco    :boolean;
	 bGrade,blote : Boolean;
		procedure AtualizaSaldos;
		procedure NomeOperacao;
		procedure CarregaItensGrade (const pCodigo : string);
	 	procedure FecharGrade;
		procedure ReconfigurarTela (const baumentar : Boolean);
		function Validacoes: Boolean;
		function ValidacoesGrade: Boolean;
	public
		procedure SelecionaProduto;
		procedure TotaisQtde;
    procedure Filtro;
  end;

var
	FrmKardexLancamentoManual: TFrmKardexLancamentoManual;

implementation

uses Men0001, InicioDb, DataCad, RWFunc, uProdutoDao, uCadastroLote, uteis,
PesquisaClientesForm;

{$R *.dfm}

procedure TFrmKardexLancamentoManual.AtualizaSaldos;
begin
  CurSaldoDestino.Value := 0;
  if ( CbProduto.idRetorno <> null)and(CbAlmoxarifadoDestino.idRetorno <> '') then
    CurSaldoDestino.Value := KardexRetornaSaldo(CbProduto.idRetorno, CbAlmoxarifadoDestino.idRetorno,'');
end;

procedure TFrmKardexLancamentoManual.FormCreate(Sender: tObject);
begin
   inherited;
  cbProduto.CDS.PacketRecords := -1;

  KardexLancEntrada    := (dbInicio.GetParametroUsuario('USP_KARDEX_LANC_ENTRADA') = 'S');
  KardexLancSaida      := (dbInicio.GetParametroUsuario('USP_KARDEX_LANC_SAIDA') = 'S');
  KardexLancBalanco    := (dbInicio.GetParametroUsuario('USP_KARDEX_LANC_BALANCO') = 'S');

  SqlCdsAlmoxarifadoDestino.Open;
  SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000','WHERE PRD_STATUS = ''A'' ','PRD_REFER','');
  SqlCdsProduto.Open;
	tsgrade.TabVisible := False;
  tslote.TabVisible := False;
  ReconfigurarTela(False);
end;

procedure TFrmKardexLancamentoManual.FormDestroy(Sender: TObject);
begin
  inherited;
	FrmKardexLancamentoManual := Nil;
end;

procedure TFrmKardexLancamentoManual.FormResize(Sender: TObject);
begin
	inherited;
	//ReconfigurarTela(bgrade);
end;

procedure TFrmKardexLancamentoManual.SelecionaProduto;
begin
	CdsSaldos.DisableControls;
	CdsSaldos.Close;
	if ( CbProduto.idRetorno <> '') then
		begin
			SqlCdsProduto.Locate('PRD_CODIGO',CbProduto.idRetorno,[]);
			EdProdutoDescricao.Text := CbProduto.CDS.FieldByName('PRD_DESCRI').AsString;
			CdsSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(CbProduto.idRetorno)+',null) t1 where t1.AMX_CODIGO_RET in (SELECT t2.AMX_CODIGO from ALMOX0000 t2 WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')' +
      ' AND t1.AMX_CODIGO_RET IN (SELECT t3.AMX_CODIGO FROM USUARIO_ALMOXARIFADO t3 WHERE t3.AMX_CODIGO = t1.AMX_CODIGO_RET)' ;
			CdsSaldos.Open;
			CdsSaldos.First;

		 CdsLoteProduto.Close;
		 CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT pl.*, a.AMX_DESCRI from PRD_LOTE pl LEFT JOIN ALMOX0000 a ON (a.AMX_CODIGO = pl.AMX_CODIGO) ','where PRD_CODIGO = '''+CbProduto.idRetorno+'''','PRD_CODIGO','pl.');
		 CdsLoteProduto.Open;
		 bGrade := ((dbInicio.Empresa.bUtilizaGrade) or (dbInicio.Empresa.bDigitacaoGradeVendas)) and
			(SqlCdsProduto.FieldByName('PRD_GRADE_OBRIGATORIO').AsString = 'S');

     blote := (SqlCdsProdutoPRD_GERENCIA_LOTE.AsString = 'S');

     PageControl1.Visible := bGrade or blote ;
     if bgrade then
      PageControl1.ActivePage := tsgrade
     else if blote then
      PageControl1.ActivePage := tslote;
		 ReconfigurarTela(bGrade or blote);
		 if bGrade then
		 begin
			 CarregaItensGrade(CbProduto.idRetorno);
		 end;
		end
    else
      PageControl1.Visible := False;
	CurSaldoTransferir.Enabled :=  not (bGrade or blote);
	AtualizaSaldos;
	CdsSaldos.EnableControls
end;

procedure TFrmKardexLancamentoManual.cdsGradeAfterScroll(DataSet: TDataSet);
begin
  inherited;
	TotaisQtde
end;

procedure TFrmKardexLancamentoManual.cdsGradeNewRecord(DataSet: TDataSet);
begin
  inherited;
	cdsGrade.Cancel;
end;

procedure TFrmKardexLancamentoManual.CdsLoteProdutoPRG_QTDEValidate(Sender: TField);
begin
  inherited;
  if RbAdicionar.Checked and ((CdsLoteProdutoPRG_QTDE.AsFloat + CdsLoteProdutoPRDL_SALDO.AsFloat) > CdsLoteProdutoPRDL_QTDELOTE.AsFloat) and (CdsLoteProdutoPRDL_QTDELOTE.AsFloat > 0 ) then
     raise Exception.Create('Saldo inicial menor que a soma do estoque atual e quantidade de entrada');
  if RbRetirar.Checked and  ((CdsLoteProdutoPRDL_SALDO.AsFloat - CdsLoteProdutoPRG_QTDE.AsFloat)<0) then
     raise Exception.Create('Quantidade de saída insuficiente em estoque atual');
//  if RbBalanco.Checked and (CdsLoteProdutoPRG_QTDE.AsFloat > CdsLoteProdutoPRDL_QTDELOTE.AsFloat) then
//     raise Exception.Create('Balanço maior que a quantidade inicial');


end;

procedure TFrmKardexLancamentoManual.chkTodosLotesClick(Sender: TObject);
begin
  inherited;
  Filtro;
end;

procedure TFrmKardexLancamentoManual.chkvencidaClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TFrmKardexLancamentoManual.cbProduto2Exit(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := SqlCdsProdutoPRD_CODIGO.AsString;
	NomeOperacao;
  SelecionaProduto
end;

procedure TFrmKardexLancamentoManual.cbProduto2PropertiesChange(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := SqlCdsProdutoPRD_CODIGO.AsString;
  SelecionaProduto;
end;

procedure TFrmKardexLancamentoManual.dbgLancarinfoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
	inherited;
	if not TDBGrid(Sender).DataSource.DataSet.IsEmpty then begin
	 if column.FieldName = 'PRG_QTDE' then begin
			TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue;
			if (gdSelected in State) or (gdFocused in State)  then
				 TDBGrid(Sender).Canvas.Font.Color :=  clBlack;
		 if RbAdicionar.checked  then
				column.Title.Caption := 'Qtde de Entrada';
		 if RbRetirar.checked  then
				column.Title.caption := 'Qtde de Saída';
		 if RbBalanco.checked  then
				column.Title.caption := 'Qtde do Balanço';
	 end;

   end;
	TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmKardexLancamentoManual.dbgLancarinfoEnter(Sender: TObject);
begin
	inherited;
	ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmKardexLancamentoManual.dbgLancarinfoExit(Sender: TObject);
begin
	inherited;
	ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmKardexLancamentoManual.dbgLancarinfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var recno, recordcount : integer;
begin
  inherited;
  recno := TDBGrid(sender).DataSource.DataSet.RecNo;
  recordcount := TDBGrid(sender).DataSource.DataSet.RecordCount;
	if  Key = VK_DELETE then
			Key := VK_NONAME;
	if  ( Key = VK_INSERT )
	 or  ( (Key = VK_DOWN) and (RecNo = RecordCount) ) then
				 key := 0;
	if  ( Key = VK_TAB ) and ( RecNo = RecordCount )
			 and ( TDBGrid(Sender).SelectedIndex = RetIdxUltimaColVisivel(TDBGrid(Sender)) ) then
		 key := 0 ;
	if (key = VK_RETURN) and ( RecNo = RecordCount ) then
		 key := VK_UP;
end;

procedure TFrmKardexLancamentoManual.dbgLancarinfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key = #13 Then begin
		 if cdsGrade.State  in dsEditModes then
				cdsGrade.Post;
		 cdsGrade.Next;
	end;
end;

procedure TFrmKardexLancamentoManual.dgrLoteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key = #13 Then begin
		 if CdsLoteProduto.State  in dsEditModes then
				CdsLoteProduto.Post;
		 CdsLoteProduto.Next;
	end;
end;

procedure TFrmKardexLancamentoManual.NomeOperacao;
begin


  if RbAdicionar.checked  then
  begin
    LabelQuant.caption := 'Qtde de Entrada';
    labelforncliente.Caption := 'Fornecedor';
    labelforncliente.Visible := True;
    PesqCliente.Visible := False;
    PesqFornecedor.Visible := True;
    PesqCliente.idRetorno := '';
  end;
  if RbRetirar.checked  then
  begin
    labelforncliente.Caption := 'Cliente';
    LabelQuant.caption := 'Qtde de Saída';
    labelforncliente.Visible := True;
    PesqCliente.Visible := True;
    PesqFornecedor.Visible := False;
    PesqFornecedor.idRetorno := '';
  end;
  if RbBalanco.checked  then
  begin
    PesqFornecedor.idRetorno := '';
    PesqCliente.idRetorno := '';
    LabelQuant.caption := 'Qtde do Balanço';
    PesqCliente.Visible := False;
    PesqFornecedor.Visible := False;
    labelforncliente.Visible := False;
  end;
end;

procedure TFrmKardexLancamentoManual.PesqClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         PesqCliente.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;

end;

procedure TFrmKardexLancamentoManual.CarregaItensGrade(const pCodigo: string);
begin
	cdsGrade.Close;
	if (not VarIsEmpty(pCodigo)) then
	begin
		sGrade.SQL.Clear;
		sGrade.SQL.Add(SQLDEF('PRODUTOS','SELECT PRG_REGISTRO, PRD_CODIGO, PRG_SALDO, ' +
														'PRG_DESCRICAO,  0.0 as PRG_QTDE '+
														' FROM PRD_GRADE AS G ',
			'WHERE PRD_CODIGO = ' + qStr(pCodigo),
			'PRG_DESCRICAO', 'g.'));
			cdsGrade.Open;
	end;
  TotaisQtde;

end;

procedure TFrmKardexLancamentoManual.CbAlmoxarifadoDestinokeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  Key := 0;
end;

procedure TFrmKardexLancamentoManual.CbAlmoxarifadoDestinoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure TFrmKardexLancamentoManual.CbAlmoxarifadoDestinokeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  key := 0;
end;

procedure TFrmKardexLancamentoManual.CbAlmoxarifadoDestinoSelect(Sender: TObject);
begin
  inherited;
  if FrmKardexLancamentoManual.ActiveControl.Name = 'Bit_Gravar' then
    exit;

  if CbAlmoxarifadoDestino.Text = '' then
  begin
    MessageDlg('Informar o Almoxarifado', mtWarning, [mbOK], 0);
    CbAlmoxarifadoDestino.SetFocus;
    Exit;
  end
  else
  begin
    if not AlmoxarifadoUsuario(CbAlmoxarifadoDestino.idRetorno) then
    begin
      CbAlmoxarifadoDestino.SetFocus;
      Exit;
    end
    else
    begin
      AtualizaSaldos;
    end;
    Filtro;
  end;
end;

procedure TFrmKardexLancamentoManual.FecharGrade;
begin
	cdsGrade.Close;
end;

procedure TFrmKardexLancamentoManual.Filtro;
var filtro : string;
begin
  CdsLoteProduto.Filter := '';
  CdsLoteProduto.Filtered := False;
  if chkMaiorZero.Checked then
    CdsLoteProduto.Filter := 'PRDL_SALDO > 0';
  if chkvencida.Checked then
  begin
    if CdsLoteProduto.Filter = '' then
     CdsLoteProduto.Filter := 'PRDL_DATA_VALIDADE < '+ QuotedStr(FormatDateTime('dd/mm/yyyy',date))
    else
     CdsLoteProduto.Filter := CdsLoteProduto.Filter + ' and PRDL_DATA_VALIDADE < '+ QuotedStr(FormatDateTime('dd/mm/yyyy',date))
  end;
  if not chkTodosLotes.Checked then
  begin
    if CdsLoteProduto.Filter = '' then
     CdsLoteProduto.Filter := 'AMX_CODIGO =  '+ QuotedStr(CbAlmoxarifadoDestino.idRetorno)
    else
     CdsLoteProduto.Filter := CdsLoteProduto.Filter + ' and AMX_CODIGO =  '+ QuotedStr(CbAlmoxarifadoDestino.idRetorno)
  end;

  CdsLoteProduto.Filtered := chkMaiorZero.Checked or chkvencida.Checked or (not chkTodosLotes.Checked) ;
end;

procedure TFrmKardexLancamentoManual.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  SqlCdsAlmoxarifadoDestino.Close;
	SqlCdsProduto.Close;
	CdsLoteProduto.Close;
	inherited;
	Action := CaFree;
end;

procedure TFrmKardexLancamentoManual.Bit_CancelarClick(Sender: tObject);
begin
	 Close;
end;

procedure TFrmKardexLancamentoManual.Bit_GravarClick(Sender: tObject);
var
	 sTipo, slote, sDescricao: string;
	 rValor:Real;
	 cdsclone : TClientDataSet;
   stipoRegistro, stipoES :string;

begin

  if CbAlmoxarifadoDestino.Text = '' then
  begin
    MessageDlg('Informe o Almoxarifado', mtWarning, [mbOK], 0);
    CbAlmoxarifadoDestino.SetFocus;
    Exit;
  end
  else
  begin
    if not AlmoxarifadoUsuario(CbAlmoxarifadoDestino.idRetorno) then
    begin
      CbAlmoxarifadoDestino.SetFocus;
      Exit;
    end
    else
    begin
      AtualizaSaldos;
    end;
  end;





  if RbBalanco.Checked then
    stipoRegistro:= 'BAL'
  else
    stipoRegistro := 'MAN';
	if Validacoes  then
 		if (uteis.confirmacao ( 'Confirma a Operação?')=mrYes) then
		begin
			 //atualizações por grade
       if RbAdicionar.Checked then
         sDescricao :=  iif(PesqFornecedor.idRetorno<> '', PesqFornecedor.idRetorno+'-'+PesqFornecedor.Text,'')
       else if RbRetirar.Checked then
         sDescricao :=  iif(PesqCliente.idRetorno<> '', PesqCliente.idRetorno+'-'+PesqCliente.Text,'') ;
       ///GRADE DE PRODUTOS
			 if bgrade then
       begin
				 cdsclone := TClientDataSet.Create(Self);
				 try

					cdsclone.CloneCursor(cdsGrade,true);
					cdsclone.First;
						// PRG_QTDE - valor para transferir
						// PRG_SALDO - saldo atual
						//balanço

						if RbBalanco.Checked then begin
							//
							if (CurSaldoDestino.Value > 0)   then begin
								sTipo := 'S';
								rvalor :=  CurSaldoDestino.Value
							end
							else
							if CurSaldoDestino.Value < 0 then begin
								sTipo := 'E';
								rvalor :=  CurSaldoDestino.Value *(-1)
							end;
							// o primeiro da grade ele ajuSta o saldo geral DE TODOS
							 if CurSaldoDestino.AsInteger <> 0 then
								KardexLancamento('0',
																stipoRegistro,
																CbAlmoxarifadoDestino.idRetorno,
																'',
																CbProduto.idRetorno,
																'',//Grade
																SqlCdsProdutoPRD_UND.AsString,
																sTipo,
																'',
																'',//Novo esquema de lote
																'AJUSTE GERAL DO BALANÇO',
																Now,
																rValor,
																EdDocumento.Text,
																EdDocumento.Text,
																0.00   );

							while not cdsclone.Eof do begin
										KardexLancamento('0',
																		stipoRegistro,
																		CbAlmoxarifadoDestino.idRetorno,
																		'',
																		CbProduto.idRetorno,
																		cdsclone.FieldByName('PRG_REGISTRO').Value,//grade
																		SqlCdsProdutoPRD_UND.AsString,
																		'E',
																		'',
																		'',//Novo esquema de lote
																		MemoObservacao.Text,
																		Now,
																		cdsclone.FieldByName('PRG_QTDE').Value,
																		EdDocumento.Text,
																		EdDocumento.Text,
																		0.00  );

								cdsclone.Next;
							end;//while-cdsclone.eof para balanço
						end
						else // entrada ou saida
						begin
						 while not cdsclone.Eof do begin
							 if cdsclone.FieldByName('PRG_QTDE').Value > 0  then
								 KardexLancamento('0',
																	stipoRegistro, //  sTipoRegistro
																	CbAlmoxarifadoDestino.idRetorno,
																	'',
																	CbProduto.idRetorno,
																	cdsclone.FieldByName('PRG_REGISTRO').Value,//grade
																	SqlCdsProdutoPRD_UND.AsString,
																	iif(RbAdicionar.Checked,'E','S'),
																	'',
																	'',//Novo esquema de lote
																	MemoObservacao.Text,
																	Now,
																	cdsclone.FieldByName('PRG_QTDE').Value,
																	EdDocumento.Text,
																	iif(sDescricao<>'',sDescricao,EdDocumento.Text),
																	0.00,
                                  PesqCliente.idRetorno,
                                  PesqFornecedor.idRetorno,
                                  edColaborador.idRetorno    );

								 cdsclone.Next;
							end; //fim-while not cdsclone.eof para entrada ou saida
						end;//fim entrada-saida
				 finally
					 FreeAndNil(cdsclone);
				 end;
			 end /// LOTE
       else if blote then
       begin
         cdsclone := TClientDataSet.Create(Self);
				 try
          if CdsLoteProduto.State in dsEditModes then
            CdsLoteProduto.Post;
					cdsclone.CloneCursor(CdsLoteProduto,true);
          cdsclone.First;
          //ShowMessage(SqlCdsProdutoPRD_REFER.AsString +'-'+SqlCdsProdutoPRD_CODIGO.AsString);
          while not cdsclone.Eof do
          begin

             // se for balanço mais o valor é igual desconsiderar
            // se a quantidade estive zerada ou não preenchida deve desconsidear se não for balanço
            If (RbBalanco.Checked and ((cdsclone.FieldByName('PRG_QTDE').AsFloat = cdsclone.FieldByName('PRDL_SALDO').AsFloat) or (cdsclone.FieldByName('PRG_QTDE').AsString = ''))  )
            or   (not RbBalanco.Checked and (cdsclone.FieldByName('PRG_QTDE').AsFloat  = 0) )  then
            begin
              cdsclone.Next;
              Continue;

            end;
            if RbBalanco.Checked then
            begin
              if (cdsclone.FieldByName('PRG_QTDE').AsFloat < cdsclone.FieldByName('PRDL_SALDO').AsFloat) then
                stipoES := 'S'
              else
                stipoES := 'E';

            end
            else
              stipoES := iif(RbAdicionar.Checked,'E','S');

            KardexLancamento('0',
                            stipoRegistro,
                            CbAlmoxarifadoDestino.idRetorno,
                            '',
                            CbProduto.idRetorno,
                            '',
                            SqlCdsProdutoPRD_UND.AsString,
                          	stipoES,
                            cdsclone.FieldByName('PRDL_LOTE').AsString,
                            IntToStr(cdsclone.FieldByName('PRDL_REGISTRO').AsInteger) ,//Novo esquema de lote
                            MemoObservacao.Text,
                            Now,
//                            iif( RbBalanco.Checked,
//                                 abs (cdsclone.FieldByName('PRG_QTDE').AsFloat - cdsclone.FieldByName('PRDL_SALDO').AsFloat),
//                                 cdsclone.FieldByName('PRG_QTDE').Value),
                            cdsclone.FieldByName('PRG_QTDE').Value,
                            EdDocumento.Text,
                            EdDocumento.Text,
                            0.00 ,'','','',SqlCdsProdutoPRD_REFER.AsString );
            cdsclone.Next;
          end; {fim-while cdsclone.eof}
         finally
           FreeAndNil(cdsclone);
         end;
       end
			 else // não é por grade de produtos
			 begin			 //Débito Origem
			 if (RbBalanco.Checked) then
			 begin
         KardexLancamento('0',
                          stipoRegistro,
                          CbAlmoxarifadoDestino.idRetorno,
                          '',
                          CbProduto.idRetorno,
                          '',//grade
                          SqlCdsProdutoPRD_UND.AsString,
                          'S',
                          '',
                          '',//Novo esquema de lote
                          MemoObservacao.Text,
                          Now,
                          CurSaldoTransferir.Value,
                          EdDocumento.Text,
                          EdDocumento.Text,
                          0.00);



         {




				 if (CurSaldoTransferir.Value = 0) then
				 begin
						 if (CurSaldoDestino.Value > 0) then
						 begin
									 KardexLancamento('0',
																		stipoRegistro,
																		CbAlmoxarifadoDestino.idRetorno,
																		'',
																		CbProduto.idRetorno,
																		'',//grade
																		SqlCdsProdutoPRD_UND.AsString,
																		'S',
																		'',
																		'',//Novo esquema de lote
																		MemoObservacao.Text,
																		Now,
																		CurSaldoDestino.Value,
																		EdDocumento.Text,
																		EdDocumento.Text,
																		0.00);
						 end
						 else
						 begin
									 if (CurSaldoDestino.Value < 0) then
										 CurSaldoDestino.Value := CurSaldoDestino.Value * -1;

									 KardexLancamento('0',
																		stipoRegistro,
																		CbAlmoxarifadoDestino.idRetorno,
																		'',
																		CbProduto.idRetorno,
																		'',//grade
																		SqlCdsProdutoPRD_UND.AsString,
																		'E',
																		'',
																		'',//Novo esquema de lote
																		MemoObservacao.Text,
																		Now,
																		CurSaldoDestino.Value,
																		EdDocumento.Text,
																		EdDocumento.Text,
																		0.00);
						 end;
				 end
				 else
				 if (CurSaldoDestino.Value > CurSaldoTransferir.Value) then
				 begin
							 KardexLancamento('0',
																stipoRegistro,
																CbAlmoxarifadoDestino.idRetorno,
																'',
																CbProduto.idRetorno,
																'',//grade
																SqlCdsProdutoPRD_UND.AsString,
																'S',
																'',
																'',//Novo esquema de lote
																MemoObservacao.Text,
																Now,
																CurSaldoDestino.Value - CurSaldoTransferir.Value,
																EdDocumento.Text,
																EdDocumento.Text,
																0.00);
				 end
				 else
				 begin
							 KardexLancamento('0',
																stipoRegistro,
																CbAlmoxarifadoDestino.idRetorno,
																'',
																CbProduto.idRetorno,
																'',//grade
																SqlCdsProdutoPRD_UND.AsString,
																'E',
																'',
																'',//Novo esquema de lote
																MemoObservacao.Text,
																Now,
																CurSaldoTransferir.Value - CurSaldoDestino.Value,
																EdDocumento.Text,
																EdDocumento.Text,
																0.00);
				 end;

         }








			 end
			 else   //se for operação tipo entrada e saida
			 begin
						 KardexLancamento('0',
															stipoRegistro,
															CbAlmoxarifadoDestino.idRetorno,
															'',
															CbProduto.idRetorno,
															'',//grade
															SqlCdsProdutoPRD_UND.AsString,
															iif(RbAdicionar.Checked,'E','S'),
															'',
															'',//Novo esquema de lote
															MemoObservacao.Text,
															Now,
															CurSaldoTransferir.Value,
															EdDocumento.Text,
															iif(sDescricao<>'',sDescricao,EdDocumento.Text),
															0.00,
                              PesqCliente.idRetorno,
                              PesqFornecedor.idRetorno,
                              edColaborador.idRetorno       );

			 end;

			 end;

			 uteis.aviso('Operação Realizada');
			 CbProduto.idRetorno := '';
       EdProdutoDescricao.Text := '';
			 CurSaldoTransferir.Value := 0;
			 CurSaldoDestino.Value := 0;
			 SelecionaProduto;
			 AtualizaSaldos;
			 MemoObservacao.Text := '';
       PesqFornecedor.idRetorno := '';
       PesqCliente.idRetorno := '';
       CbAlmoxarifadoDestino.idRetorno := '';
       edColaborador.idRetorno := '';
			 CbProduto2.SetFocus;
       chkMaiorZero.Checked := False;
       chkvencida.Checked := False;
			 if bGrade then
				FecharGrade;
			 ReconfigurarTela(False);
       Commit;
       CommitTransaction;
		end;
end;

procedure TFrmKardexLancamentoManual.RbReferenciaClick(Sender: TObject);
begin
  inherited;
  cbproduto2.Properties.ListFieldItem := cxGrid1DBTableView1PRD_REFER;
{
	RbReferencia.Checked := True;
  cbProduto.LookupDispl := 'prd_refer';
  cbProduto.LookupOrderBy := 'prd_refer';
  cbProduto.CamposOrdernar := 'prd_refer';
  cbProduto.idRetorno := '';
  cbProduto.Refresh;}

end;

procedure TFrmKardexLancamentoManual.RbDescricaoClick(Sender: TObject);
begin
  inherited;
  cbproduto2.Properties.ListFieldItem := cxGrid1DBTableView1PRD_DESCRI;

{	RbDescricao.Checked := True;
  cbProduto.LookupDispl := 'prd_descri';
  cbProduto.LookupOrderBy := 'prd_descri';
  cbProduto.CamposOrdernar := 'prd_descri';
  cbProduto.idRetorno := '';
  cbProduto.Refresh;
  }
end;

procedure TFrmKardexLancamentoManual.FormShow(Sender: tObject);
begin
  inherited;
  RbAdicionar.Enabled := KardexLancEntrada;
  RbRetirar.Enabled   := KardexLancSaida;
  RbBalanco.Enabled   := KardexLancBalanco;
  NomeOperacao;
  CbAlmoxarifadoDestino.SetFocus;

  RbDescricao.Checked := True;
  cbProduto.WherePersonalizado := ' WHERE PRD_STATUS = ''A'' ' ;
 // 	RbReferencia.Checked := True;

  end;

procedure TFrmKardexLancamentoManual.RbAdicionarClick(Sender: tObject);
begin
	NomeOperacao;
end;

procedure TFrmKardexLancamentoManual.RbRetirarClick(Sender: tObject);
begin
	NomeOperacao;
end;

procedure TFrmKardexLancamentoManual.ReconfigurarTela(const bAumentar: Boolean);
begin
  if bAumentar then begin
    Height := 620;
    Width := 980;
  end
  else
  begin
    Height := 455;
    Width := 980;
   end
end;

procedure TFrmKardexLancamentoManual.RbBalancoClick(Sender: tObject);
begin
	NomeOperacao;
end;

procedure TFrmKardexLancamentoManual.SpeedButton1Click(Sender: tObject);
begin
	 if (SqlCdsProdutoPRD_CODIGO.AsString = '') then
			begin
				 uteis.aviso('selecione um produto');
			end
	 else
			begin
				 try
						try
							FrmCadastroProdutoLote := TFrmCadastroProdutoLote.Create(Application);
							FrmCadastroProdutoLote.sPrdCodido := SqlCdsProdutoPRD_CODIGO.AsString;
              FrmCadastroProdutoLote.amxCodigo := CbAlmoxarifadoDestino.idRetorno;
              FrmCadastroProdutoLote.lbAlmoxarifado.Caption := CbAlmoxarifadoDestino.Text;
							FrmCadastroProdutoLote.ShowModal;
						finally
							FrmCadastroProdutoLote.Destroy;
							FrmCadastroProdutoLote := nil;
						end;
						CdsLoteProduto.Refresh;
            if CurSaldoTransferir.CanFocus then
   						CurSaldoTransferir.SetFocus;

					except
							//beep;
							uteis.erro  ('Ocorreu um erro na criação do formulário!');
					end;
			end;
end;

procedure TFrmKardexLancamentoManual.TotaisQtde;
var cdsclone : TClientDataSet;
 valor,saldo : Currency;
begin
	inherited;
	cdsclone:= TClientDataSet.Create(self);
	try
	 cdsclone.CloneCursor(cdsGrade,true);
	 cdsclone.First;
	 while not cdsclone.Eof do begin
		if cdsclone.FieldByName('PRG_QTDE').value > 0 then begin
			 valor := valor + cdsclone.FieldByName('PRG_QTDE').Value;
			 saldo := saldo + cdsclone.FieldByName('PRG_SALDO').Value
		end;
		cdsclone.Next;
	 end;
	finally
	 FreeAndNil(cdsclone);
	end;
	CurSaldoTransferir.Value := valor;
end;

function TFrmKardexLancamentoManual.Validacoes: Boolean;
begin
	//saldo origem mair que o solicitado
	if (CbProduto.idRetorno = '') then
	begin
		 uteis.aviso('Informe o produto');
		 CbProduto.SetFocus;
	end
	else
	if (RbRetirar.Checked and (CurSaldoDestino.Value < CurSaldoTransferir.value)) then
	begin
		 uteis.aviso('Não possui saldo para a operação');
		 CurSaldoTransferir.SetFocus;
	end
	else
	if (CurSaldoTransferir.Value <= 0)and(not RbBalanco.Checked) and not blote then
	begin
		 uteis.aviso('Informe o quantidade');
		 CurSaldoTransferir.SetFocus;
	end
	else
	if (CbAlmoxarifadoDestino.idRetorno = '') then
	begin
		 uteis.aviso('Informe o almoxarifado');
		 CbAlmoxarifadoDestino.SetFocus;
	end
	else
		result := ValidacoesGrade;
end;

function TFrmKardexLancamentoManual.ValidacoesGrade: Boolean;
var cdsclone: TClientDataSet;
begin
	result := True;
	if bGrade then
  begin
		cdsclone := TClientDataSet.Create(self);
		try
			cdsclone.CloneCursor(cdsGrade,true);
			cdsclone.First;
			cdsclone.Filtered := False;
			cdsclone.Filter := 'PRG_QTDE > 0' ;
			cdsclone.Filtered := True;
			if (cdsclone.RecordCount = 0) and (RbAdicionar.Checked or RbRetirar.Checked) then begin
				uteis.Erro('Nenhuma quantidade na grade.');
				result := False;
			end;
		finally
			FreeAndNil(cdsclone);
		end;

	end;
end;

end.

