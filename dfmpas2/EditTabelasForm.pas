unit EditTabelasForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, ACBrBase, ACBrCalculadora, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids,  ComCtrls,   Mask, DBCtrls, ComObj,
  SgDbSeachComboUnit, SgDbLookupComboUnit,  rxCurrEdit, JvExMask,
  JvBaseEdits, JvDBControls, JvExDBGrids, JvDBGrid, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab, JvToolEdit, frxClass, frxDBSet, frxExportPDF;

type
  TfrmEditTabelas = class(TfrmBaseDBEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    grItens: TJvDBGrid;
    qEditPRE_ID: TIntegerField;
    qEditPRE_CODIGO: TIntegerField;
    qEditPRE_DESCRICAO: TStringField;
    qEditPRE_VIGENCIA1: TDateField;
    qEditPRE_VIGENCIA2: TDateField;
    qEditPRE_TIPO_TABELA: TIntegerField;
    qEditCLI_RAZAO: TStringField;
    CdsEditPRE_ID: TIntegerField;
    CdsEditPRE_CODIGO: TIntegerField;
    CdsEditPRE_DESCRICAO: TStringField;
    CdsEditPRE_VIGENCIA1: TDateField;
    CdsEditPRE_VIGENCIA2: TDateField;
    CdsEditPRE_TIPO_TABELA: TIntegerField;
    CdsEditCLI_RAZAO: TStringField;
    lbl1: TLabel;
    dbedtIBPT_ID: TDBEdit;
    Label1: TLabel;
    qEditPRE_DTCADASTRO: TDateField;
    CdsEditPRE_DTCADASTRO: TDateField;
    Label2: TLabel;
    lb2: TLabel;
    lb1: TLabel;
    qEditEMP_CODIGO: TStringField;
    CdsEditEMP_CODIGO: TStringField;
    edDesc: TDBEdit;
    lbDesc: TLabel;
    qCli0000: TSQLQuery;
    qItensTabela: TSQLQuery;
    DspItensTabela: TDataSetProvider;
    CdsItensTabela: TClientDataSet;
    dsItensTabela: TDataSource;
    qCli0000CLI_CODIGO: TStringField;
    qCli0000EMP_CODIGO: TStringField;
    qCli0000CLI_RAZAO: TStringField;
    qItensTabelaID: TIntegerField;
    qItensTabelaPRE_ID: TIntegerField;
    qItensTabelaPRD_CODIGO: TStringField;
    qItensTabelaPRE_MARGEM: TFMTBCdField;
    qItensTabelaPRE_PRECO: TFMTBCdField;
    qItensTabelaPRD_DESCRI: TStringField;
    qItensTabelaPRD_REFER: TStringField;
    CdsItensTabelaID: TIntegerField;
    CdsItensTabelaPRE_ID: TIntegerField;
    CdsItensTabelaPRD_CODIGO: TStringField;
    CdsItensTabelaPRE_MARGEM: TFMTBCdField;
    CdsItensTabelaPRE_PRECO: TFMTBCdField;
    CdsItensTabelaPRD_DESCRI: TStringField;
    CdsItensTabelaPRD_REFER: TStringField;
    qPrd0000: TSQLQuery;
    qEditCLI_CODIGO: TStringField;
    CdsEditCLI_CODIGO: TStringField;
    Timer1: TTimer;
    qItensTabelaPRD_PCUSTO: TFMTBCdField;
    CdsItensTabelaPRD_PCUSTO: TFMTBCdField;
    GroupBox1: TGroupBox;
    edDescItem: TEdit;
    Label6: TLabel;
    edReferItem: TEdit;
    Label5: TLabel;
    btnExcel: TSpeedButton;
    btnImporta: TSpeedButton;
    OpenDialog1: TOpenDialog;
    btnImprime: TSpeedButton;
    SpeedButton1: TSpeedButton;
    qItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField;
    CdsItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField;
    Label3: TLabel;
    edCodProdCli: TEdit;
    qItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField;
    CdsItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField;
    btnLimpar: TSpeedButton;
    qItensTabelaPERC_COMISSAO: TFMTBCDField;
    qItensTabelaPERC_VERBA: TFMTBCDField;
    cdsItensTabelaPERC_COMISSAO: TFMTBCDField;
    cdsItensTabelaPERC_VERBA: TFMTBCDField;
    EDv1: TJvDBDateEdit;
    EDv2: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    CdsEditPRE_DATAELABORACAO: TSQLTimeStampField;
    CdsEditPRE_ACORDOCOM: TIntegerField;
    CdsEditPRE_REVISAO: TIntegerField;
    CdsEditPRE_DATAREVISAO: TSQLTimeStampField;
    CdsEditPRE_ISO_FORM: TStringField;
    qEditPRE_DATAELABORACAO: TSQLTimeStampField;
    qEditPRE_ACORDOCOM: TIntegerField;
    qEditPRE_REVISAO: TIntegerField;
    qEditPRE_DATAREVISAO: TSQLTimeStampField;
    qEditPRE_ISO_FORM: TStringField;
    pAcordo: TPanel;
    Label4: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label7: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    qItensTabelaPRD_TIPOPECA_TERM: TStringField;
    qItensTabelaPRD_MATERIAL_TERM: TStringField;
    qItensTabelaPRD_DUREZASUPERFICIAL_TERM: TStringField;
    qItensTabelaPRD_DUREZANUCLEO_TERM: TStringField;
    qItensTabelaPRD_PROFUNDIDADE_TERM: TStringField;
    qItensTabelaPRD_TAMANHOGRAO_TERM: TStringField;
    qItensTabelaPRD_EHT_TERM: TStringField;
    qItensTabelaPRD_DESENHO_TERM: TStringField;
    cdsItensTabelaPRD_TIPOPECA_TERM: TStringField;
    cdsItensTabelaPRD_MATERIAL_TERM: TStringField;
    cdsItensTabelaPRD_DUREZASUPERFICIAL_TERM: TStringField;
    cdsItensTabelaPRD_DUREZANUCLEO_TERM: TStringField;
    cdsItensTabelaPRD_PROFUNDIDADE_TERM: TStringField;
    cdsItensTabelaPRD_TAMANHOGRAO_TERM: TStringField;
    cdsItensTabelaPRD_EHT_TERM: TStringField;
    cdsItensTabelaPRD_DESENHO_TERM: TStringField;
    frxAcordo: TfrxReport;
    frxcdsEdit: TfrxDBDataset;
    frxItensTabela: TfrxDBDataset;
    cdsItensTabelaPRD_UND: TStringField;
    qItensTabelaPRD_UND: TStringField;
    edTipo: TDBComboBox;
    edCli: TSgDbSearchCombo;
    cdsItensTabelaPRE_PREV_ENTREGA: TIntegerField;
    qItensTabelaPRE_PREV_ENTREGA: TIntegerField;
    frxPDFExport1: TfrxPDFExport;
    cdsItensTabelaPRE_DATAAJUSTE: TSQLTimeStampField;
    qItensTabelaPRE_DATAAJUSTE: TSQLTimeStampField;
    cdsItensTabelaPTI_CODIGO: TStringField;
    cdsItensTabelaPGR_CODIGO: TStringField;
    cdsItensTabelaLIN_CODIGO: TStringField;
    qItensTabelaPTI_CODIGO: TStringField;
    qItensTabelaPGR_CODIGO: TStringField;
    qItensTabelaLIN_CODIGO: TStringField;
    qItensTabelaPRD_ESTOQUE: TFMTBCDField;
    cdsItensTabelaPRD_ESTOQUE: TFMTBCDField;
    GroupBox2: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    DsSaldos: TDataSource;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCDField;
    DspSaldos: TDataSetProvider;
    sqlSaldos: TSQLQuery;
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure CdsEditPRE_TIPO_TABELAGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure CdsEditPRE_TIPO_TABELASetText(Sender: TField; const Text: String);
    procedure FormCreate(Sender: tObject);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure CdsEditAfterRefresh(DataSet: TDataSet);
    procedure qEditAfterOpen(DataSet: TDataSet);
    procedure CdsEditAfterScroll(DataSet: TDataSet);
    procedure CdsItensTabelaAfterInsert(DataSet: TDataSet);
    procedure Timer1Timer(Sender: tObject);
    procedure DefaultOnChange(Sender: tObject);
    procedure grItensEditButtonClick(Sender: tObject);
    procedure CdsItensTabelaPRD_REFERValidate(Sender: TField);
    procedure CdsItensTabelaPRD_CODIGOValidate(Sender: TField);
    procedure CdsItensTabelaPRE_MARGEMValidate(Sender: TField);
    procedure CdsItensTabelaPRE_PRECOValidate(Sender: TField);
    procedure CdsItensTabelaBeforePost(DataSet: TDataSet);
    procedure CdsItensTabelaAfterPost(DataSet: TDataSet);
    procedure btnExcelClick(Sender: tObject);
    procedure btnImportaClick(Sender: tObject);
    procedure btnPesquisaClick(Sender: tObject);
    procedure btnLimparClick(Sender: tObject);
    procedure DspItensTabelaGetTableName(Sender: tObject;
      DataSet: TDataSet; var TableName: String);
    procedure grItensKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimeClick(Sender: tObject);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: tObject);
    procedure CdsItensTabelaBeforeDelete(DataSet: TDataSet);
    procedure SalvarItens(Sender: tObject);
    procedure CdsEditBeforeDelete(DataSet: TDataSet);
    procedure grItensKeyPress(Sender: tObject; var Key: Char);
    procedure edTipoChange(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure edClikeyPress(Sender: tObject; var Key: Char);
    procedure frxAcordoGetValue(const VarName: string; var Value: Variant);
    procedure cdsItensTabelaPRE_PREV_ENTREGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure edCliButtonClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsItensTabelaAfterScroll(DataSet: TDataSet);
    procedure grItensAfterPaint(Sender: TObject);
    procedure grItensColExit(Sender: TObject);
  private

   vgPRD_CODIGOValidate:Boolean;
   vlFiltrados:Boolean;
   vgInsErindo:Boolean;
   vgTabelaExclusiva: Boolean;
   vTabelaCliente:string;
   vgrItens: Pointer;
   procedure SetaCamposTipoTabela;
   procedure SetaItensListaPrecos;
   function ObtemTituloRelatorio: string;
   procedure SetaCamposTipoTabelaB;
   procedure SetTabelaCliente(const Value: string);
    function AutorizaPreco: Boolean;

         { Private declarations }
  public
        Property TabelaCliente: string Read vTabelaCliente write SetTabelaCliente;
  end;

var
  frmEditTabelas: TfrmEditTabelas;

implementation

uses Uteis, InicioDB, PesquisaClientesForm, Prd0006, ReajusteTabelaPrecosForm, BaseTelaRelatorioForm, AutorizaForm,
  Men0001, RWFunc;

{$R *.dfm}

procedure TfrmEditTabelas.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEditPRE_ID.asinteger := DBInicio.GetNextSequence( 'GEN_PRE_ID' );
  CdsEditEMP_CODIGO.asstring := StrZero( DBInicio.Empresa.EMP_CODIGO, 3 );
  CdsEditPRE_DTCADASTRO.AsDateTime := Date ;
  if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    precos0000 where pre_tipo_tabela=0')=0 then
  begin
     CdsEditPRE_TIPO_TABELA.asInteger := 0;  // padrão - principal
     CdsEditPRE_Descricao.asString := 'Tabela Padrão';
     edTipo.Enabled:=False;  // obriga a criar a tabela padrão
  end
  else
  begin
       CdsEditPRE_TIPO_TABELA.asInteger := 1; // Alternativa
      
  end;

end;

procedure TfrmEditTabelas.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CdsEditPRE_CODIGO.IsNull then
     CdsEditPRE_CODIGO.asinteger := DBInicio.GetNextSequence( 'GEN_PRE_CODIGO' );
  if CdsEditPRE_TIPO_TABELA.asInteger<3 then
     CdsEditCLI_CODIGO.Clear
  Else
     CdsEditPRE_DESCRICAO.Clear;
end;

procedure TfrmEditTabelas.CdsEditPRE_TIPO_TABELAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  CASE Sender.AsInteger of
  0: Text:= 'Padrão';
  1: Text:= 'Alternativa';
  2: Text:= 'Promocional';
  3: tEXT:= 'Exclusiva';
  END;
  SetaCamposTipoTabelaB;
end;

procedure TfrmEditTabelas.CdsEditPRE_TIPO_TABELASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  If Text= 'Padrão' then
     Sender.asInteger := 0
  else
  If Text= 'Alternativa' then
     Sender.asInteger := 1
  else
  If Text= 'Promocional' then
     Sender.asInteger := 2
  Else
  If tEXT= 'Exclusiva' then
     Sender.AsInteger := 3;
  SetaCamposTipoTabelaB;
end;

procedure TfrmEditTabelas.FormCreate(Sender: tObject);
var vCasas: integer ;
begin
  inherited;
  CampoID:='PRE_ID';
  CampoIDRetorno:='PRE_ID';
  Tabela:='PRECOS0000';
  SetTamanhoMinimo(538,1061);
  SalvaStatusGrid := False;
  //edCli.FiltroTabela:='EMP_CODIGO='+strZero(dbInicio.Empresa.EMP_CODIGO,3);

  qItensTabela.tag := 1;
  vgPRD_CODIGOValidate:=False;
  vlFiltrados:=False;
  //vgInsErindo:=False;
  AfterApplyUpdates:=SalvarItens;
  edTipo.ItemIndex:=0;
  self.windowState := wsMaximized;
  vTabelaCliente:='';
  vgrItens:=grItens;

  vCasas := StrToIntDef(dbInicio.GetParametroSistema('PMT_QTDE_DEC_PED'),2);
  if vCasas<2 then
     vCasas:=2;

  CdsItensTabelaPRE_PRECO.DisplayFormat := '#0.'+StrZero( '',vCasas );
  CdsItensTabelaPRD_PCUSTO.DisplayFormat := '#0.'+StrZero( '',vCasas );

  grItens.Columns[3].Visible := DBInicio.empresa.wPMT_PROD_TERMICO;
  grItens.Columns[4].Visible := DBInicio.empresa.wPMT_PROD_TERMICO;
  grItens.Columns[5].Visible := DBInicio.empresa.wPMT_PROD_TERMICO;
  grItens.Columns[6].Visible :=  DBInicio.empresa.wPMT_PROD_TERMICO;
  grItens.Columns[14].Visible :=  DBInicio.empresa.wPMT_PROD_TERMICO;


end;

procedure TfrmEditTabelas.SalvarItens(Sender: tObject);
begin
  if CdsItensTabela.State in dsEditModes then
    CdsItensTabela.Post;
  CdsItensTabela.ApplyUpdates(0);
end;

procedure TfrmEditTabelas.SetaCamposTipoTabela;
begin
  vgTabelaExclusiva:=edTipo.ItemIndex=3;
  EDv1.Visible:=(edTipo.ItemIndex>1); // dt1
  lb1.visible :=(edTipo.ItemIndex>1);
  EDv2.Visible:=(edTipo.ItemIndex>1); // dt2
  lb2.visible :=(edTipo.ItemIndex>1);
  TJvDBGrid(vgrItens).Columns[9].Visible:=vgTabelaExclusiva; // exclusiva - CODIGO DO PRODUTO CLIENTE
  TJvDBGrid(vgrItens).Columns[10].Visible:=vgTabelaExclusiva; // exclusiva - DESCRICAO DO PRODUTO CLIENTE
  if vgTabelaExclusiva then // cliente
    lbDesc.Caption:='Cliente:'
  else
  begin
      edDesc.Top:=edCli.top;
      edDesc.Left:=edCli.Left;
      edDesc.Width :=edCli.Width;
      lbDesc.Caption:='Descrição da Tabela:';
  end;
  edcli.Visible :=vgTabelaExclusiva;

end;

procedure TfrmEditTabelas.SetaCamposTipoTabelaB;
begin
     edTipo.ItemIndex:=CdsEditPRE_TIPO_TABELA.asInteger;
     SetaCamposTipoTabela;
end;


procedure TfrmEditTabelas.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //SetaCamposTipoTabela;
  SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.CdsEditAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  //SetaCamposTipoTabela;
  SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.qEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //SetaCamposTipoTabela;
  SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.CdsEditAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //SetaCamposTipoTabela;
  SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.SetaItensListaPrecos;
begin
  if qItensTabela.tag = 1 then
  try
    CdsItensTabela.DisableControls;
    qItensTabela.tag := 0;
    CdsItensTabela.close;
    qItensTabela.sql.clear;
    qItensTabela.sql.add('select a.*, b.prd_descri, b.prd_refer, PRD_UND, b.PRD_PCUSTO, b.PRD_TIPOPECA_TERM,');
    qItensTabela.sql.add(' PRD_MATERIAL_TERM, PRD_DUREZASUPERFICIAL_TERM, PRD_DUREZANUCLEO_TERM, PRD_PROFUNDIDADE_TERM, ');

    qItensTabela.sql.ADD( '        (SELECT SUM(KAS_SALDO) - COALESCE(sum(KAS_RESERVA),0) FROM KARDEX_ALMOX_SALDO kas WHERE kas.PRD_CODIGO = B.PRD_CODIGO ' +
      iif(dbInicio.Exclusivo('ESTOQUES') , ' AND kas.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ,'') + ' ) as PRD_ESTOQUE,');

    qItensTabela.sql.add(' PRD_TAMANHOGRAO_TERM, PRD_EHT_TERM  , PRD_DESENHO_TERM, PRE_PREV_ENTREGA,PTI_CODIGO, PGR_CODIGO, LIN_CODIGO ');
    qItensTabela.sql.add('From precos0001 a');
    qItensTabela.sql.add('     join prd0000 b on b.prd_codigo=a.prd_codigo');
    qItensTabela.sql.add('where a.pre_id='+IntToStr(CdsEditPre_ID.asinteger));
    if (Trim(edReferItem.Text)<>'') then
       qItensTabela.sql.add(' and b.prd_refer like '+qStr( edReferItem.Text+'%' ) );
    if (Trim(edCodProdCli.Text)<>'') then
       qItensTabela.sql.add(' and a.CODIGO_PRODUTO_CLIENTE like '+qStr( edCodProdCli.Text+'%' ) );
    if (Trim(edDescItem.Text)<>'') then
       qItensTabela.sql.add(' and b.prd_descri like '+qStr( edDescItem.Text+'%' ) );
    vlFiltrados := (Pos(' and ', qItensTabela.sql.Text)>0);
    CdsItensTabela.Open;
  finally
    CdsItensTabela.EnableControls;
    qItensTabela.tag := 1;
  end;
end;

procedure TfrmEditTabelas.CdsItensTabelaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsItensTabelaID.AsInteger := DBInicio.GetNextSequence( 'GEN_PRE_ID_DET' );
  CdsItensTabelaPRE_ID.asInteger := CdsEditPRE_ID.AsInteger;
  grItens.SelectedField:=  CdsItensTabelaPRD_REFER;
  //vgInserindo := true;
end;

procedure TfrmEditTabelas.Timer1Timer(Sender: tObject);
begin
     inherited;
     timer1.Enabled:=false;
     if qItensTabela.tag=1 then
        SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.DefaultOnChange(Sender: tObject);
var ChangeEvnt : tNotifyEvent;
begin

  if timer1.Enabled then
    timer1.Enabled:=false; // desabilita timer / reseta tempos

  timer1.interval := 300; // 0,3 segundos
  timer1.Enabled:=true; // reabilita timer

end;

procedure TfrmEditTabelas.grItensAfterPaint(Sender: TObject);
begin
  inherited;
  GetColumn(grItens, 'PRE_PRECO').Visible := True;
end;

procedure TfrmEditTabelas.grItensColExit(Sender: TObject);
begin
  inherited;
  if TDBGrid(sender).SelectedIndex = 0 then
    CdsItensTabelaPRD_REFERValidate(CdsItensTabelaPRD_REFER);
end;

procedure TfrmEditTabelas.grItensEditButtonClick(Sender: tObject);
var tcr: TFormProdutoGrid;
begin
  inherited;
  if grItens.SelectedField.FieldName = 'PRD_REFER' then
  begin
      tcr := TFormProdutoGrid.Create(self);
      try
         tcr.tag:=-1;
         tcr.showmodal;
         if tcr.CodigoRetorno<>'' then
         begin
            if CdsItensTabela.State=dsBrowse then
               CdsItensTabela.Edit;
            CdsItensTabelaPRD_CODIGO.AsString:=tcr.CodigoRetorno;
         end;
      finally
             FreeAndNil(tcr);
      end;
  end;

end;

procedure TfrmEditTabelas.CdsItensTabelaPRD_REFERValidate(Sender: TField);
var lId: Integer;
    lCod: string;
begin
  inherited;
  if not vgPRD_CODIGOValidate then
  begin
       if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    prd0000 where prd_refer = '+qStr(Sender.AsString))>0 then
       Begin
            if not (CdsItensTabela.State in dsEditModes ) then
              CdsItensTabela.Edit;
            lCod := BuscaUmDadoSqlAsString('Select prd_codigo from prd0000 where prd_refer = '+qStr(Sender.AsString) +ConcatSe (' and ',DBInicio.ExclusivoSql('PRODUTOS')) );
            lId := BuscaUmDadoSqlAsInteger('select id from precos0001 where pre_id='+CdsEditPRE_ID.AsString+' and prd_codigo='+qStr(lCod)+' and id<>'+CdsItensTabelaID.asString);
            if lId = 0 then // novo
               CdsItensTabelaPRD_CODIGO.asstring := lCod
            else
            begin
              uteis.aviso('Produto já cadastrado nesta tabela!');
              CdsItensTabela.Cancel;
              CdsItensTabela.Refresh;
              CdsItensTabela.Locate('id', lId, []);
              CdsItensTabela.Edit;
              gritens.SetFocus;
              gritens.SelectedField := Sender;
              Exit;
            end;
       end
       else
          GeraException('Produto não localizado!');
  end;
end;

procedure TfrmEditTabelas.CdsItensTabelaPRD_CODIGOValidate(Sender: TField);
begin
  inherited;
  try
     vgPRD_CODIGOValidate:=True;
     if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    prd0000 where prd_codigo = '+qStr(Sender.AsString))>0 then
     begin
          qPrd0000.Close;
          qPrd0000.SQL.Clear;
          qPrd0000.SQL.Add('select  PRD_REFER, PRD_PCUSTO, PRD_DESCRI from prd0000 WHERE prd_codigo='+qStr(Sender.AsString) );
          IF DBInicio.Exclusivo('PRODUTOS') THEN
             qPrd0000.SQL.Add('AND EMP_CODIGO='+qStr(dbInicio.Empresa.EMP_CODIGO));

          qPrd0000.Open;
          CdsItensTabelaPRD_REFER.asstring := qPrd0000.FieldByName('PRD_REFER').asstring ;
          CdsItensTabelaPRD_PCUSTO.asCurrency := qPrd0000.FieldByName('PRD_PCUSTO').asCurrency ;
          CdsItensTabelaPRD_DESCRI.asstring := qPrd0000.FieldByName('PRD_DESCRI').asstring ;
          if (CdsItensTabelaPRD_PCUSTO.asCurrency>0) and (CdsItensTabelaPRE_PRECO.asCurrency>0) then
             CdsItensTabelaPRE_MARGEM.AsCurrency := ((CdsItensTabelaPRE_PRECO.asCurrency / CdsItensTabelaPRD_PCUSTO.asCurrency) - 1)*100;
          if (CdsItensTabelaPRD_PCUSTO.asCurrency=0) and (CdsItensTabelaPRE_MARGEM.AsCurrency<>0) then
             CdsItensTabelaPRE_MARGEM.AsCurrency:=0;
     end;
  finally
         vgPRD_CODIGOValidate:=False;
  end;
end;

procedure TfrmEditTabelas.CdsItensTabelaPRE_MARGEMValidate(Sender: TField);
begin
  inherited;
//  if (CdsItensTabelaPRE_MARGEM.asCurrency <> 0) and (CdsItensTabelaPRD_PCUSTO.AsCurrency<>0) then
//     CdsItensTabelaPRE_PRECO.AsCurrency:= CdsItensTabelaPRD_PCUSTO.AsCurrency * ( 1 + (CdsItensTabelaPRE_MARGEM.AsCurrency / 100 ) );

end;

procedure TfrmEditTabelas.CdsItensTabelaPRE_PRECOValidate(Sender: TField);
begin
  inherited;
  if not (CdsItensTabela.State in dsEditModes ) then
    CdsItensTabela.Edit;
  if (CdsItensTabelaPRE_PRECO.AsCurrency<>0) and (CdsItensTabelaPRD_PCUSTO.AsCurrency<>0) then
     CdsItensTabelaPRE_MARGEM.AsCurrency:= ((CdsItensTabelaPRE_PRECO.AsCurrency / CdsItensTabelaPRD_PCUSTO.AsCurrency) - 1)*100;
end;

procedure TfrmEditTabelas.cdsItensTabelaPRE_PREV_ENTREGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    text := '-'
  else if sender.AsInteger = 0 then
    text := 'Imediato'
  else
    text := IntToStr(sender.AsInteger) + ' dias ';
end;

procedure TfrmEditTabelas.CdsItensTabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;
  ErrHandler.autoriza := nil;
  if CdsItensTabelaPRD_CODIGO.ASSTRING='' then
    addErrValidation('Informe um Produto!');
  if CdsItensTabelaPRE_PRECO.AsCurrency<=0 then
    addErrValidation('Informe um Preço de Venda para o Produto!');
  if CdsItensTabelaPRE_PRECO.AsCurrency < CdsItensTabelaPRD_PCUSTO.AsCurrency then
  begin
      addErrWarning('AVISO: Preço de venda informado é menor que o valor de custo do produto!!!!'); // avisa
      if not dbInicio.empresa.pVENDA_ABAIXO_CUSTO then
         ErrHandler.autoriza := AutorizaPreco;
  end;
  CheckErrors;
end;

function TfrmEditTabelas.AutorizaPreco: Boolean ;
var tcr : tFrmAutoriza;
begin
     tcr := tFrmAutoriza.Create(self) ;
     try
        tcr.TipoValidacao := vPrecoAbaixoCusto;
        tcr.lbAviso.Caption := 'Preço de venda menor que o custo!';
        tcr.ShowModal;
        Result := tcr.modalresult=mrOk ;
        if not result then
           uteis.aviso('Não Autorizado!!!');
     finally
            FreeAndNil( tcr ) ;
     end;
end;

procedure TfrmEditTabelas.CdsItensTabelaAfterPost(DataSet: TDataSet);
var SqlWhere: string;
begin
  inherited;
  //inserir dados dos itens do cliente
  if edTipo.ItemIndex=3 then // tabela exclusiva
     if Trim(CdsItensTabelaCODIGO_PRODUTO_CLIENTE.AsString)<>'' then
     begin
          SqlWhere:= ' WHERE PRD_CODIGO='+qStr(CdsItensTabelaPRD_CODIGO.asstring)+
                     ' AND CLI_CODIGO='+qStr(CdsEditCLI_CODIGO.asstring)+
                     ' AND PRDCO_CODIGO_ORIGINAL='+qStr(CdsItensTabelaCODIGO_PRODUTO_CLIENTE.AsString);
          if BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRD_CODIGOORIGINAL '+SqlWhere )=0 then
          begin
               ExecSql('Insert Into PRD_CODIGOORIGINAL (PRD_CODIGO, CLI_CODIGO, PRDCO_CODIGO_ORIGINAL) '+
               'VALUES ('+qStr(CdsItensTabelaPRD_CODIGO.asstring)+','+qStr(CdsEditCLI_CODIGO.asstring)+','+qStr(CdsItensTabelaCODIGO_PRODUTO_CLIENTE.AsString)+')');
          end;
          if Trim(CdsItensTabelaDESCRICAO_PRODUTO_CLIENTE.AsString)<>'' then
             ExecSql( 'UPDATE PRD_CODIGOORIGINAL SET PRDCO_DESCRICAO='+qStr(CdsItensTabelaDESCRICAO_PRODUTO_CLIENTE.AsString)+sqlwhere )
          else
             ExecSql( 'UPDATE PRD_CODIGOORIGINAL SET PRDCO_DESCRICAO=NULL'+sqlwhere );
     end;
  Cdspost; // evitar perda de dados (esc/queda de luz)
  CdsEdit.Edit;
end;

procedure TfrmEditTabelas.cdsItensTabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
     CdsSaldos.DisableControls;
     CdsSaldos.Close;
     SqlSaldos.CommandText := 'SELECT * '+
                              'FROM pCd_kardex_saldo(' +qStr(dbInicio.Empresa.EMP_CODIGO) + ',' +qStr(CdsItensTabelaPRD_CODIGO.Value) +',null) t1 '+
                              'where t1.AMX_CODIGO_RET in ( SELECT t2.AMX_CODIGO from ALMOX0000 t2 '+
                              '                             WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
     CdsSaldos.Open;
     CdsSaldos.EnableControls;
end;

Function TfrmEditTabelas.ObtemTituloRelatorio:string;
var lText: string;
begin
     CASE CdsEditPRE_TIPO_TABELA.AsInteger of
     1: lText:= 'Padrão';
     2: lText:= 'Promocional' ;
     3: lText:= 'Exclusiva para o Cliente '+CdsEditCLI_CODIGO.asstring+'-'+edCli.Text;
     END;
     if not CdsEditPRE_VIGENCIA1.isnull then
     begin
          if CdsEditPRE_VIGENCIA2.isnull then
             lText := lText + ' ( Vigora a partir de '+CdsEditPRE_VIGENCIA1.asstring+' )'
          Else
              lText := lText + ' ( Vigora de '+CdsEditPRE_VIGENCIA1.asstring+' até '+CdsEditPRE_VIGENCIA2.asstring+' )';
     end
     Else
     if not CdsEditPRE_VIGENCIA2.isnull then
        lText := lText + ' ( Vigora até ' + CdsEditPRE_VIGENCIA2.asstring+' )'
     Else
        lText := lText + ' ( Tabela Ativa - Vigorando )';
     Result := 'Tabela de Preços '+lText;
end;

procedure TfrmEditTabelas.btnExcelClick(Sender: tObject);
var vlinha, vcoluna,colunaVisivel, vColCount, vqtdrow : integer;
    vplanilha : variant;
    valorcampo : string;
    vit: tBookMark;
    vCampo: tField;
begin

     vit := CdsItensTabela.GetBookmark;
     try
        CdsItensTabela.DisableControls;
        CdsItensTabela.Last;

        vQtdRow := CdsItensTabela.RecordCount;
        CdsItensTabela.First;

        if vqtdrow>0 then
        begin
          if messagedlg('Exportar '+inttostr(vqtdRow)+' registros para planilha Excel ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
          begin
              vplanilha:= CreateoleObject('Excel.Application');
              vplanilha.WorkBooks.add(1);
              vplanilha.caption := 'Exportando dados para o Excel';

              vplanilha.cells[1,1] := ObtemTituloRelatorio;

              vColCount:=TJvDBGrid(vgrItens).Columns.Count;
              colunaVisivel:= 0;
              for vColuna:=1 to vColCount do
              begin
                 if TJvDBGrid(vgrItens).Columns[vColuna-1].Visible then
                 begin
                   inc(colunaVisivel,1);
                   vplanilha.cells[3,colunaVisivel] :=TJvDBGrid(vgrItens).Columns[vColuna-1].Title.Caption;

                 end;
              end;
              vlinha := 4;
              try

                while not tJvDbGrid(vgrItens).DataSource.DataSet.eof do
                begin
                     TButton(Sender).Caption:='Envia: '+inttostr(vLinha);
                     application.ProcessMessages;
                     colunaVisivel :=0 ;
                     for vColuna := 1 to vColCount do
                     begin
                         if tJvDbGrid(vgrItens).Columns[vColuna-1].Visible then
                         begin
                            inc(colunaVisivel,1) ;
                            vCampo := CdsItensTabela.fieldbyname(tJvDbGrid(vgrItens).Columns[vColuna-1].FieldName);
                            if assigned(vCampo.OnGetText) then
                               vCampo.OnGetText(vCampo,valorcampo,true)
                            Else
                               valorcampo := vCampo.AsString;
                            if tJvDbGrid(vgrItens).Columns[vColuna-1].Field.DataType  = ftFMTBCD then
                            begin
                              vplanilha.cells[vlinha,colunaVisivel] := valorcampo;
                              vplanilha.cells[vlinha,colunaVisivel].NumberFormat := '#,##0.00';
                            end
                            else
                          //  vplanilha.cells[vlinha,vcoluna] := ''''+valorCampo;
                              vplanilha.cells[vlinha,colunaVisivel] := ''+valorCampo;

                         end;
                     end;
                     tJvDbGrid(vgrItens).DataSource.DataSet.Next;
                     Inc(vLinha);
                end;
              finally
                     tButton(Sender).Caption:='&Exportar';
                     application.ProcessMessages;
              end;
              //vplanilha.columns.Autofit;
              vplanilha.visible := True;
          end;
        end
        Else
            GeraException('Não Existem Registros!');

     finally
             if vit<>Nil then
                if CdsItensTabela.BookmarkValid(vit) then
                   CdsItensTabela.GotoBookmark(vit);
             CdsItensTabela.EnableControls;
     end;
end;

procedure TfrmEditTabelas.btnImportaClick(Sender: tObject);
const xlCellTypeLastCell = $0000000B;
var XLSAplicacao, AbaXLS: OLEVariant;
    //RangeMatrix: Variant;
    x, k, lColTit, n: Integer;
    lRefer, lCod, lCodProCli, lDesProCli, lMsg:string;
    lTemErros:Boolean;
    lCusto: Currency ;
begin

     ShowMessage('A planilha importada deve obedecer a seguinte estrutura:'+#13+#13+
                 '* A primeira linha DEVE ser o cabeçalho e por isso será desconsiderada.'#13+
                 '1 - Coluna A : Referência - codigo do Produto cadastrada no sistema (Preenchimento Obrigatório).' +#13+#13+
                 '2 - Coluna B : Descrição - Descrição do produto (Preenchimento Opcional). '+#13+#13+
                 '3 - Coluna C : Custo - Preço de Custo do Produto (Preenchimento Opcional). '+#13+#13+
                 '4 - Coluna D : Margem - Margem de lucro (Preenchimento Opcional). '+#13+#13+
                 '5 - Coluna E : Preço - Preço de venda do produto. (Preenchimento Obrigatório).' +#13+#13+
                 '6 - Coluna F : Cliente - Código Produto/cliente - Código específico para o cliente/comprador. (Preenchimento Opcional)'+#13+#13+
                 '7 - Coluna G : Cliente - Descrição Produto/cliente - Descrição diferenciada para o cliente/comprador. (Preenchimento Opcional)' +#13+#13+
                 '8 - Coluna H : Comissão (%) - Comissão pela venda do produto ao vendedor. (Preenchimento com valor ou zero)' +#13+#13+
                 '9 - Coluna I : Verba (%) - Crédito para uso nas vendas do vendedor. Moeda de desconto. (Preenchimento com valor ou zero)' );

     TrimAppMemorySize;
     if OpenDialog1.Execute then
     try
        if CdsEdit.State<>dsBrowse then
           CdsPost;
        CdsEdit.Edit;
        CdsItensTabela.BeforePost:=nil;
        CdsItensTabela.DisableControls;
        CdsItensTabela.IndexFieldNames:='PRD_REFER';
        CdsItensTabela.Last;
        CdsItensTabela.First;
        XLSAplicacao := CreateoleObject('Excel.Application');
        //ListaRefer:=',';
        try
          XLSAplicacao.Workbooks.Open(OpenDialog1.FileName);
          AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(OpenDialog1.FileName)].WorkSheets[1];
          AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
          x := XLSAplicacao.ActiveCell.Row;
          n := 1;
          try

             for k := 2 to x do // linhas
             begin
                  btnImporta.Caption:='Lendo: '+inttostr(k);
                  application.ProcessMessages;
                  lRefer:=(XLSAplicacao.cells[k,1]);
                       lCod := BuscaUmDadoSqlAsString('select prd_codigo from prd0000 where prd_refer='+qStr(UpperCase(lRefer)));
                       lCusto := BuscaUmDadoSqlAsCurrency('select PRD_PCUSTO from prd0000 where prd_refer='+qStr(UpperCase(lRefer)));
                       if lCod<>'' then
                       begin
                            CdsItensTabela.SetKey;
                            vgPRD_CODIGOValidate:=True;
                            CdsItensTabela.FieldByName('PRD_REFER').Value := lRefer;
                            vgPRD_CODIGOValidate:=False;

                            //if Pos( ','+lRefer+',', ListaRefer)>0 then
                            if CdsItensTabela.GotoKey then
                               CdsItensTabela.Edit
                            Else
                            begin
                                 CdsItensTabela.Insert;
                                 CdsItensTabelaPRD_CODIGO.asstring := lCod;
                            end;
                            //ListaRefer := ListaRefer+lRefer+',';

                            CdsItensTabelaPRE_PRECO.AsCurrency     := StrToFloat(XLSAplicacao.cells[k,5]);
                            cdsItensTabelaPERC_COMISSAO.AsCurrency := StrToFloat(XLSAplicacao.cells[k,8]);
                            cdsItensTabelaPERC_VERBA.AsCurrency    := StrToFloat(XLSAplicacao.cells[k,9]);

                            if CdsItensTabelaPRE_PRECO.AsCurrency < lCusto then
                            begin
                                 lTemErros:=True;
                                 if dbInicio.empresa.pVENDA_ABAIXO_CUSTO then // permite mas avisa
                                    XLSAplicacao.cells[k,10]:='*** ALERTA: PREÇO DE VENDA ABAIXO DO CUSTO ***'
                                 Else
                                 BEGIN
                                    XLSAplicacao.cells[k,10]:='*** ERRO: PREÇO DE VENDA ABAIXO DO CUSTO - ITEM IGNORADO ***';
                                    CdsItensTabela.Cancel;
                                 END;
                            end;

                            IF CdsItensTabela.State in [ dsInsert , dsEdit ] then
                            begin
                               lCodProCli := trim(XLSAplicacao.cells[k,6]);
                               if lCodProCli<>'' then
                               begin
                                    CdsItensTabelaCODIGO_PRODUTO_CLIENTE.AsString:=lCodProCli;
                                    lDesProCli:=trim(XLSAplicacao.cells[k,7]);
                                    if lDesProCli<>'' then
                                       CdsItensTabelaDESCRICAO_PRODUTO_CLIENTE.AsString:=lDesProCli;
                               end;
                               CdsItensTabela.Post;

                               Inc(n);
                               if n=101 then
                               begin
                                    CdsItensTabela.ApplyUpdates(0);
                                    n:=1;
                               end;

                               XLSAplicacao.cells[k,10]:='';

                            end;
                       end
                       Else
                       begin

                            XLSAplicacao.cells[k,10]:='*** Informações ignoradas - Referência não localizada ***';
                            lTemErros:=True;

                       end;

             end;

             XLSAplicacao.Cells[1,1].Select;

          finally
                  btnImporta.Caption:='&Importar';
                  application.ProcessMessages;
          end;
        finally
               if lTemErros then
               begin
                    XLSAplicacao.cells[lColTit,10]:='*** ERROS ***';
                    ShowMessage('Existem erros na importação da planilha, por favor verifique a coluna *** ERROS *** na planilha');
               end   ;
      //         Else
//                   XLSAplicacao.cells[lColTit,10]:='';

                 XLSAplicacao.columns.Autofit;
                 XLSAplicacao.visible := True;
                // Fecha o Microsoft Excel
                if not VarIsEmpty(XLSAplicacao) then
                 begin

                    XLSAplicacao.Quit;
                    XLSAplicacao := Unassigned;
                    AbaXLS := Unassigned;
                 end;
                 FreeAndNil(XLSAplicacao);
        end;
     finally
            CdsItensTabela.ApplyUpdates(0);
            CdsItensTabela.Close;
            CdsItensTabela.BeforePost:=CdsItensTabelaBeforePost;
            CdsItensTabela.Open;
            CdsItensTabela.EnableControls;
     end;
end;


procedure TfrmEditTabelas.btnPesquisaClick(Sender: tObject);
begin
  inherited;
  SetaItensListaPrecos;
end;

procedure TfrmEditTabelas.btnLimparClick(Sender: tObject);
begin
  inherited;
  qItensTabela.Tag:=0;
  edReferItem.Clear;
  edCodProdCli.Clear;
  edDescItem.Clear;
  qItensTabela.Tag:=1;
  SetaItensListaPrecos;
  vlFiltrados:=False;
end;

procedure TfrmEditTabelas.btnOKClick(Sender: TObject);
begin
  if CdsItensTabela.State in dsEditModes then
    CdsItensTabela.post;
  //tabela exclusiva e não preencheu o cliente
  if (edTipo.ItemIndex = 3) and ( edCli.idRetorno = '' ) then
  begin

    raise Exception.Create('Para tabela exclusiva deve preencher o cliente ');
  end;
  inherited;
end;

procedure TfrmEditTabelas.DspItensTabelaGetTableName(Sender: tObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName:='PRECOS0001';
end;

procedure TfrmEditTabelas.grItensKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F8 then //
  begin
       if (CdsItensTabela.State<>dsBrowse) and (tJvDbGrid(vgrItens).SelectedField=CdsItensTabelaPRD_REFER) then
       begin
            tJvDbGrid(vgrItens).OnEditButtonClick(Sender);
            key := 0;
       end;
  end
  else
  if key = VK_ESCAPE then
  begin
       if CdsItensTabela.State<>dsBrowse then
       begin
            CdsItensTabela.Cancel;
            key := 0 ;
       end;
  end;
end;



procedure TfrmEditTabelas.btnImprimeClick(Sender: tObject);
var tcr: tFrmBaseTelaRelatorio;
  var imagem: TStream;
begin
  inherited;
  if CdsEditPRE_ACORDOCOM.AsString <> '' then
  begin
    //TfrxPictureView(frxAcordo.FindObject('logorodape')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
    TfrxPictureView(frxAcordo.FindObject('logoempresa')).Picture.Bitmap.Assign(DbInicio.empresa.logo);
    frxAcordo.ShowReport();

  end
  else
  begin
    tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       tcr.TituloRelatorio:=ObtemTituloRelatorio;
       tcr.SetListaGrid(vlFiltrados);
       tcr.SelecionaTodos:=btnLimparClick;
       tcr.dbGrid:=tJvDbGrid(vgrItens);
       tcr.ShowModal;
    finally
      FreeAndNil(tcr);
    end;
  end;
end;

procedure TfrmEditTabelas.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     inherited;
     if key = VK_F6 then //
     begin
          if btnImprime.enabled then
             btnImprime.click;
          key:=0;
     end;
end;

procedure TfrmEditTabelas.frxAcordoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'RAZAO' then
    Value := DBInicio.Empresa.RAZAO
  else if VarName = 'FONE' then
    Value := DBInicio.Empresa.FONE
  else if VarName = 'SITE' then
    Value := DBInicio.Empresa.HOME_PAGE;

 // OpenAux(SQLDEF('CLIENTES', 'SELECT CLI_CODIGO, CLI_FANTASIA, CLI_ENDERE, CLI_BAIRRO, CLI_CGC, CLI_INSC, CLI_CIDADE, CLI_UF, CLI_CEP, CLI_FONE, CLI_FAX, CLI_CONTATO, CLI_EMAIL_ALTERNATIVO, CLI_FRETE, PC.PCL_NOME FROM CLI0000 ' ,
//                              ' WHERE CLI_CODIGO = '+QuotedStr(edCli.idRetorno) ,'',''));
  OpenAux('SELECT CLI_CODIGO, CLI_FANTASIA, CLI_ENDERE, CLI_BAIRRO, CLI_CGC, CLI_INSC, CLI_CIDADE, CLI_UF, CLI_CEP, CLI_FONE, CLI_FAX, CLI_CONTATO, CLI_EMAIL_ALTERNATIVO, CLI_FRETE, PC.PCL_NOME FROM CLI0000 CL '+
  ' LEFT JOIN PCL0000 PC ON (PC.PCL_CODIGO = CL.PCL_CODIGO) WHERE CLI_CODIGO = '+QuotedStr(edCli.idRetorno));


  if VarName = 'FANTASIA' then
    Value := qAux.FieldByName('CLI_FANTASIA').AsString
  else if VarName = 'ENDERECO' then
    Value := qAux.FieldByName('CLI_ENDERE').AsString
  else if VarName = 'BAIRRO' then
    Value := qAux.FieldByName('CLI_BAIRRO').AsString
  else if VarName = 'CNPJ' then
    Value := MascaraCNPJ_CPF(qAux.FieldByName('CLI_CGC').AsString)
  else if VarName = 'IE' then
    Value := qAux.FieldByName('CLI_INSC').AsString
  else if VarName = 'CIDADE' then
    Value := qAux.FieldByName('CLI_CIDADE').AsString + '-'+   qAux.FieldByName('CLI_UF').AsString
  else if VarName = 'CEP' then
    Value := MascaraCep(qAux.FieldByName('CLI_CEP').AsString)
  else if VarName = 'TELEFONE' then
    Value := MascaraFone(qAux.FieldByName('CLI_FONE').AsString)
  else if VarName = 'CONTATO' then
    Value := qAux.FieldByName('CLI_CONTATO').AsString
  else if VarName = 'EMAIL' then
    Value := qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString
  else if VarName = 'RODAPE' then
    Value := DBInicio.Empresa.sMensagemPadraoPedido
  else if VarName = 'FAX' then
       Value := MascaraFone(qAux.FieldByName('CLI_FAX').AsString)
  else if VarName = 'FRETE' then
    Value := qAux.FieldByName('CLI_FRETE').AsString
  else if VarName = 'PAGAMENTO' then
    Value := qAux.FieldByName('PCL_NOME').AsString
  else if VarName = 'PMT_VALOR_MINIMO_DO_SERVICO' then
    Value := DBInicio.GetParametroSistema('PMT_VALOR_MINIMO_DO_SERVICO')
  else if VarName = 'PMT_REVISAO_RELATORIO' then
    Value := DBInicio.GetParametroSistema('PMT_REVISAO_RELATORIO')
  else if VarName = 'PMT_MSG_ORCAMENTO_INDUST' then
    Value := DBInicio.GetParametroSistema('PMT_MSG_ORCAMENTO_INDUST')
    ;



end;

procedure TfrmEditTabelas.SpeedButton1Click(Sender: tObject);
var tcr: TfrmReajusteTabelaPrecos;
begin
  inherited;
  if CdsItensTabela.State<>dsBrowse then
    CdsItensTabela.Cancel;
  tcr:= TfrmReajusteTabelaPrecos.Create(Self);
  CdsItensTabela.DisableControls;
  try
    tcr.pre_id :=  CdsEditPRE_ID.AsInteger;
    tcr.ShowModal;
    if tcr.ModalResult=mrOk then
    begin
      CdsItensTabela.First;

      while not CdsItensTabela.Eof do
      begin
        if (tcr.edTipo.idRetorno <> '') and (cdsItensTabelaPTI_CODIGO.AsString <> tcr.edTipo.idRetorno ) then 
          Continue;
        if (tcr.edGrupo.idRetorno <> '') and (cdsItensTabelaPGR_CODIGO.AsString <> tcr.edGrupo.idRetorno ) then 
          Continue;
        if (tcr.edLinha.idRetorno <> '') and (cdsItensTabelaLIN_CODIGO.AsString <> tcr.edLinha.idRetorno ) then 
          Continue;                  
        CdsItensTabela.Edit;
        cdsItensTabelaPRE_DATAAJUSTE.AsDateTime := now;
        CdsItensTabelaPRE_PRECO.AsFloat := (CdsItensTabelaPRE_PRECO.AsFloat * ((tcr.currpercentual.Value/100) +1));
        CdsItensTabela.Post;                                                                                                                  
        CdsItensTabela.Next;
      end;      
      CdsItensTabela.ApplyUpdates(-1);
      if not (cdsedit.state in dsEditModes) then      
        cdsedit.Edit;
      CdsEditPRE_REVISAO.AsInteger := CdsEditPRE_REVISAO.AsInteger +1;
      CdsEditPRE_DATAREVISAO.AsDateTime := date;
      CdsEdit.Post;

       if (CdsEdit.ChangeCount > 0) then
          CdsEdit.ApplyUpdates(-1);

    end;
  finally
    FreeAndNil(tcr);
    CdsItensTabela.EnableControls;
  end;
end;

procedure TfrmEditTabelas.CdsItensTabelaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (Dialogs.MessageDlg('Confirma a Exclusão ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
     Abort;
end;

procedure TfrmEditTabelas.CdsEditBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  ExecSql( 'delete from precos0001 where pre_id='+CdsEditPRE_ID.asstring );
end;

procedure TfrmEditTabelas.grItensKeyPress(Sender: tObject; var Key: Char);
begin
  inherited;
  if (tJvDbGrid(vgrItens).SelectedField.FieldName='PRD_REFER') or
     (tJvDbGrid(vgrItens).SelectedField.FieldName='CODIGO_PRODUTO_CLIENTE') or
     (tJvDbGrid(vgrItens).SelectedField.FieldName='DESCRICAO_PRODUTO_CLIENTE') THEN
      Key := AnsiUpperCase(Key)[Length(Key)];
end;

procedure TfrmEditTabelas.edTipoChange(Sender: tObject);
begin
  inherited;
  if edTipo.ItemIndex=0 then // padrão
     if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    precos0000 where pre_tipo_tabela=0')>0 then
     begin
          edTipo.ItemIndex:=1;
          GeraException('Já Existe Uma Tabela Padrão Cadastrada!');
     end;
  SetaCamposTipoTabela ;
end;

procedure TfrmEditTabelas.FormActivate(Sender: tObject);
begin
  inherited;
  //SetaCamposTipoTabela;
end;

procedure TfrmEditTabelas.edCliButtonClick(Sender: TObject);
var tcr :tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
        EdCli.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;

end;

procedure TfrmEditTabelas.edClikeyPress(Sender: tObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[Length(Key)];

end;

procedure TfrmEditTabelas.SetTabelaCliente(const Value: string);
begin
   vTabelaCliente:=Value;
   ReadOnly := True;
   CdsEdit.DisableControls;
   CdsEdit.close;
   qEdit.Params[0].Value := DbInicio.BuscaUmDadoSqlAsInteger('select pre_id from precos0000 where cli_codigo='+qStr(value)+ConcatSe( ' and ', dbInicio.Exclusivosql('PEDIDOS')) );
   CdsEdit.open;
   CdsEdit.EnableControls;
end;

end.
