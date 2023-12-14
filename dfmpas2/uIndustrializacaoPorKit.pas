unit uIndustrializacaoPorKit;

interface

uses
   Prd0006, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons, SqlExpr,Provider, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, {uProcedimentos,} Mask,  rxToolEdit, DBCtrls,
  Data.DBXFirebird, SimpleDS, Iniciodb, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, JvExMask, JvToolEdit, SgDbSeachComboUnit, RxCurrEdit, Vcl.Menus,
  frxClass, frxDBSet, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmIndustrializacaoPorKit = class(TfrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    dbgrdNotasDisponveis: TDBGrid;
    SqlCdsNotasDisponiveis: TClientDataSet;
    dsNotaDisponivel: TDataSource;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsProduto: TClientDataSet;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_PCUSTO: TFMTBCdField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_CODBARRA: TStringField;
    SqlCdsProdutoPRD_CODORIGINAL: TStringField;
    SqlCdsProdutoPRD_PVENDA: TFMTBCdField;
    SqlCdsProdutoPRD_PRODSERV: TStringField;
    SqlCdsProdutoPRD_CUSTOCOMIPI: TFMTBCdField;
    SqlCdsProdutoPRD_MARGEMVENDA: TFMTBCdField;
    SqlCdsProdutoLIN_DESCRI: TStringField;
    SqlCdsProdutoPRD_UND: TStringField;
    SqlCdsProdutoPRD_ORIGEM: TIntegerField;
    SqlCdsProdutoPTI_SIGLA: TStringField;
    grpFiltro: TGroupBox;
    qSqlCdsProduto: TSQLQuery;
    qSqlCdsNotasDisponiveis: TSQLQuery;
    DspSqlCdsProduto: TDataSetProvider;
    dspSqlCdsNotasDisponiveis: TDataSetProvider;
    qProdutos: TSQLQuery;
    Label1: TLabel;
    prdRefer: TEdit;
    Label2: TLabel;
    SqlCdsNotasDisponiveisENF_NOTANUMBER: TStringField;
    SqlCdsNotasDisponiveisENF_EMISSAO: TDateField;
    SqlCdsNotasDisponiveisENF_CFOP: TStringField;
    SqlCdsNotasDisponiveisPRD_REFER: TStringField;
    SqlCdsNotasDisponiveisPRD_DESCRI: TStringField;
    SqlCdsNotasDisponiveisENF_QTDE: TFMTBCDField;
    SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO: TFMTBCDField;
    SqlCdsNotasDisponiveisENF_PRECO: TFMTBCDField;
    SqlCdsNotasDisponiveisAMX_CODIGO: TStringField;
    SqlCdsNotasDisponiveisENF_REGISTRO: TIntegerField;
    SqlCdsNotasDisponiveisSelecao: TBooleanField;
    SqlCdsNotasDisponiveisPRD_CODIGO: TStringField;
    SqlCdsNotasDisponiveisENF_IPIALIQ: TFMTBCDField;
    SqlCdsNotasDisponiveisENF_VLSUBST: TFMTBCDField;
    SqlCdsNotasDisponiveisQuantidadeTmp: TFloatField;
    SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo: TIntegerField;
    SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao: TStringField;
    CurQuantidade: TCurrencyEdit;
    SqlCdsNotasDisponiveisQUANTIDADEFT: TFMTBCDField;
    SqlCdsNotasDisponiveisqtdSolicitada: TFloatField;
    SqlCdsNotasDisponiveisRETORNADO: TFloatField;
    SqlCdsNotasDisponiveisSaldo: TFloatField;
    prdDescricao: TEdit;
    Bit_Lista: TBitBtn;
    cbNotaFiscal: TComboBox;
    pmSelecao: TPopupMenu;
    InverteSeleo1: TMenuItem;
    SqlCdsNotasDisponiveisOPE_CODIGO_RETORNO: TStringField;
    SqlCdsNotasDisponiveisENF_CFOP_RETORNO: TStringField;
    AlterarCFOPdeRetorno1: TMenuItem;
    Label3: TLabel;
    lbNItensFichaTecnica: TLabel;
    Label4: TLabel;
    lbNItensSelecionados: TLabel;
    SqlCdsNotasDisponiveisENF_IT_DET_NITEM: TIntegerField;
    cbSelecionados: TCheckBox;
    BitBtn1: TBitBtn;
    frxNotasDisponiveis: TfrxReport;
    frxDBNotasDisponiveis: TfrxDBDataset;
    SqlCdsNotasDisponiveisENF_SERIE: TStringField;
    SqlCdsNotasDisponiveisENF_UCOM: TStringField;
    SqlCdsNotasDisponiveisPRD_REFER_PAI: TStringField;
    procedure Bit_SairClick(Sender: tObject);
    procedure dbgrdNotasDisponveisDblClick(Sender: tObject);
    procedure dbgrdNotasDisponveisKeyPress(Sender: tObject; var Key: Char);
    procedure FormShow(Sender: tObject);
    procedure dbgrdNotasDisponveisDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure CurQuantidadeExit(Sender: TObject);
    procedure Bit_ListaClick(Sender: TObject);
    procedure prdReferExit(Sender: TObject);
    procedure cbNotaFiscalChange(Sender: TObject);
    procedure dbgrdNotasDisponveisCellClick(Column: TColumn);
    procedure InverteSeleo1Click(Sender: TObject);
    procedure AlterarCFOPdeRetorno1Click(Sender: TObject);
    procedure cbSelecionadosClick(Sender: TObject);
    procedure frxNotasDisponiveisBeginDoc(Sender: TObject);
    procedure frxNotasDisponiveisGetValue(const VarName: string;
      var Value: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgrdNotasDisponveisTitleClick(Column: TColumn);
    procedure SqlCdsNotasDisponiveisCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ConsultaDisponiveis;
    procedure Seleciona;
    var SelecionaNotaFiscal : boolean;
  public
    { Public declarations }
    sPrdCodigo, iRegistroPedidoItem, sFornecedorCnpj : String;
    rQuantidade:Real;
  end;

var
  FrmIndustrializacaoPorKit: TFrmIndustrializacaoPorKit;
  FormProdutoGrid: TFormProdutoGrid;

implementation

uses
  Uteis, DataCad, Men0001, RWFunc, uPedido, uPedidoDAO,
  uVinculacaoIndustrializacaoRetornoVincula, uSelecinaCFOP;

{$R *.dfm}

procedure TFrmIndustrializacaoPorKit.Bit_ListaClick(Sender: TObject);
begin
  inherited;
  FormProdutoGrid := TFormProdutoGrid.Create(Application);
  try
    FormProdutoGrid.TAG := 4;
    FormProdutoGrid.ShowModal;
    if FormProdutoGrid.ModalResult = mrOk then
    begin
         prdRefer.Text := FormProdutoGrid.ReferRetorno;
         prdDescricao.Text := FormProdutoGrid.DescricaoRetorno;
         ConsultaDisponiveis;
    end;
  finally
    FreeAndNil(FormProdutoGrid);
  end;
end;

procedure TFrmIndustrializacaoPorKit.Bit_SairClick(
  Sender: tObject);
begin
  Close;
end;


procedure TFrmIndustrializacaoPorKit.cbNotaFiscalChange(Sender: TObject);
begin
  inherited;
  SelecionaNotaFiscal := cbNotaFiscal.ItemIndex > 0;
  ConsultaDisponiveis;
end;

procedure TFrmIndustrializacaoPorKit.cbSelecionadosClick(Sender: TObject);
begin
  inherited;
  if cbSelecionados.Checked then
  begin
    SqlCdsNotasDisponiveis.Filtered := False;
    SqlCdsNotasDisponiveis.Filter := 'Selecao = True';
    SqlCdsNotasDisponiveis.Filtered := True;
  end
  else
    SqlCdsNotasDisponiveis.Filtered := False;

end;

procedure TFrmIndustrializacaoPorKit.ConsultaDisponiveis;
var
  NotaFiscal, sql: string;
  itemIndex : integer;
begin
  if SelecionaNotaFiscal then
  begin
    NotaFiscal := copy(cbNotaFiscal.Text, pos('|',cbNotaFiscal.Text) + 2);
    itemIndex := cbNotaFiscal.ItemIndex;
  end;
  SqlCdsNotasDisponiveis.Close;
  // traz somente os itens da ficha tecnica
  qAux.Close;
  qAux.SQL.Text := 'SELECT ft.PRD_REFER_ITENS FROM FTC_IT01 ft WHERE ft.PRD_REFER = ' + QuotedStr(prdRefer.Text) ;
  qAux.Open;
  sql :=       'SELECT ' +
      '    ft.FTI_UC as QuantidadeFT,'+
      '    (SELECT SUM(pk.QTD_RETORNADO) ' +
      '       FROM PED_IND_KIT pk ' +
      '       	WHERE pk.ENF_NOTANUMBER = ef.enf_notanumber ' +
      '  	      AND pk.PRD_REFER = ft.PRD_REFER_ITENS ' +
      '  	      AND pk.ENF_REGISTRO = ei.ENF_REGISTRO ' +
      '    ) AS retornado, ' +
      '    ei.ENF_IT_DET_NITEM, ' +
      '    ei.prd_codigo, ' +
      '    ei.ENF_REGISTRO, ' +
      '    ei.enf_ipialiq, ' +
      '    ei.enf_vlsubst, '+
      '    ef.enf_notanumber, '+
      '    ef.ENF_SERIE, ' +
      '    ef.enf_emissao, '+
      '    ei.enf_cfop, '+
      '    ei.OPE_CODIGO_RETORNO, '+
      '    (SELECT OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = ei.OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '+
      '    ft.prd_refer AS PRD_REFER_PAI, '+
      '    ei.prd_refer, '+
      '    ei.prd_descri, '+
      '    ei.enf_qtde, '+
      '    ei.enf_ucom, '+
      '    ei.enf_quantidade_ind_retorno, '+
      '    ei.enf_preco, '+
      '    ei.amx_codigo '+
      ' FROM '+
      '     enf_it01 ei '+
      '   join enf0001 ef on (ef.enf_notanumber = ei.enf_it_notanumber and ef.for_codigo = ei.for_codigo and ef.enf_industrializacao = ''S'') '+
      '   JOIN FTC_IT01 ft ON (ft.PRD_REFER_ITENS = ei.PRD_REFER AND ft.EMP_CODIGO = ei.EMP_CODIGO AND ft.FTI_UTILIZA_ITEM_NO_RETORNO = ''S''    ) ' +
      '   JOIN for0000 fo ON (fo.for_codigo = ef.for_codigo ) '+
      '   left join almox0000 al on (al.amx_codigo = ei.amx_codigo) '+
      ' WHERE ei.enf_qtde > ei.enf_quantidade_ind_retorno '+
      ' AND ft.PRD_REFER = ' + QuotedStr(prdRefer.Text) +
      iif(SelecionaNotaFiscal, ' AND ef.enf_notanumber = ' + QuotedStr(NotaFiscal), '') ;

  if not qAux.Eof then
    sql := sql + ' UNION ' ;

  while not qAux.eof do
  begin
    sql := sql +
      'SELECT ' +
      '    ft.FTI_UC as QuantidadeFT,'+
      '    (SELECT SUM(pk.QTD_RETORNADO) ' +
      '       FROM PED_IND_KIT pk ' +
      '       	WHERE pk.ENF_NOTANUMBER = ef.enf_notanumber ' +
      '  	      AND pk.PRD_REFER = ft.PRD_REFER_ITENS ' +
      '  	      AND pk.ENF_REGISTRO = ei.ENF_REGISTRO ' +
      '    ) AS retornado, ' +
      '    ei.ENF_IT_DET_NITEM, ' +
      '    ei.prd_codigo, ' +
      '    ei.ENF_REGISTRO, ' +
      '    ei.enf_ipialiq, ' +
      '    ei.enf_vlsubst, '+
      '    ef.enf_notanumber, '+
      '    ef.ENF_SERIE, ' +
      '    ef.enf_emissao, '+
      '    ei.enf_cfop, '+
      '    ei.OPE_CODIGO_RETORNO, '+
      '    (SELECT OPE_NATUREZA FROM OPE0000 op WHERE op.OPE_CODIGO = ei.OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '+
      '    ft.prd_refer AS PRD_REFER_PAI, '+
      '    ei.prd_refer, '+
      '    ei.prd_descri, '+
      '    ei.enf_qtde, '+
      '    ei.enf_ucom, '+
      '    ei.enf_quantidade_ind_retorno, '+
      '    ei.enf_preco, '+
      '    ei.amx_codigo '+
      ' FROM '+
      '     enf_it01 ei '+
      '   join enf0001 ef on (ef.enf_notanumber = ei.enf_it_notanumber and ef.for_codigo = ei.for_codigo and ef.enf_industrializacao = ''S'') '+
      '   JOIN FTC_IT01 ft ON (ft.PRD_REFER_ITENS = ei.PRD_REFER AND ft.EMP_CODIGO = ei.EMP_CODIGO AND ft.FTI_UTILIZA_ITEM_NO_RETORNO = ''S''    ) ' +
      '   JOIN for0000 fo ON (fo.for_codigo = ef.for_codigo ) '+
      '   left join almox0000 al on (al.amx_codigo = ei.amx_codigo) '+
      ' WHERE ei.enf_qtde > ei.enf_quantidade_ind_retorno '+
      ' AND ft.PRD_REFER = ' + QuotedStr(qAux.FieldByName('PRD_REFER_ITENS').AsString) +
      iif(SelecionaNotaFiscal, ' AND ef.enf_notanumber = ' + QuotedStr(NotaFiscal), '') ;
    qAux.Next;
    if not qAux.Eof then
      sql := sql + ' UNION ' ;

  end;
  // sql := sql +  '  order by ei.prd_refer, ef.enf_emissao ';
  sql := sql +  '  order by 15,10'; // o firebird não aceitou o nome das colunas...

  qSqlCdsNotasDisponiveis.sql.Text := sql;
  if DBInicio.IsDesenvolvimento then
    CopyToClipboard(sql);
  SqlCdsNotasDisponiveis.Open;

  SqlCdsNotasDisponiveis.DisableControls;
  SqlCdsNotasDisponiveis.First;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisSaldo.AsFloat := SqlCdsNotasDisponiveisENF_QTDE.AsFloat - SqlCdsNotasDisponiveisRETORNADO.AsFloat;
    SqlCdsNotasDisponiveisSelecao.AsBoolean := True;
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  lbNItensSelecionados.Caption :=  IntToStr(SqlCdsNotasDisponiveis.RecordCount);
  SqlCdsNotasDisponiveis.First;
  OpenAux(
    'SELECT ' +
    '    ef.enf_notanumber, '+
    '    ef.enf_emissao '+
    ' FROM '+
    '     enf_it01 ei '+
    '   join enf0001 ef on (ef.enf_notanumber = ei.enf_it_notanumber and ef.for_codigo = ei.for_codigo and ef.enf_industrializacao = ''S'') '+
    '   JOIN FTC_IT01 ft ON (ft.PRD_REFER_ITENS = ei.PRD_REFER AND ft.EMP_CODIGO = ei.EMP_CODIGO AND ft.FTI_UTILIZA_ITEM_NO_RETORNO = ''S''     ) ' +
    '   JOIN for0000 fo ON (fo.for_codigo = ef.for_codigo ) '+
    '   left join almox0000 al on (al.amx_codigo = ei.amx_codigo) '+
    ' WHERE ei.enf_qtde > ei.enf_quantidade_ind_retorno '+
    ' AND ft.PRD_REFER = ' + QuotedStr(prdRefer.Text) +
    '  group by ef.enf_emissao, ef.enf_notanumber' +
    '  order by ef.enf_emissao, ef.enf_notanumber desc'
  );
  cbNotaFiscal.Items.Clear;
  cbNotaFiscal.Items.Add('Seleciona Nota Fiscal');
  while not qAux.Eof do
  begin
    cbNotaFiscal.Items.Add(qAux.FieldByName('ENF_EMISSAO').AsString + ' | ' + qAux.FieldByName('ENF_NOTANUMBER').AsString);
    qAux.Next
  end;
  cbNotaFiscal.ItemIndex := itemIndex;
  SqlCdsNotasDisponiveis.EnableControls;
end;

procedure TFrmIndustrializacaoPorKit.CurQuantidadeExit(Sender: TObject);
var
  Quantidade, Base: double;
begin

  inherited;
  SqlCdsNotasDisponiveis.DisableControls;
  SqlCdsNotasDisponiveis.First;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    qAux.Close;
    qAux.SQL.Text :=
      'SELECT FTI_UC, FTC_BASEFORMULA ' +
      ' FROM FTC_IT01 fi  ' +
      ' JOIN FTC0000 f ON f.PRD_REFER = fi.PRD_REFER ' +
      ' LEFT JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS AND pr.EMP_CODIGO = fi.EMP_CODIGO ) ' +
      ' LEFT JOIN PRD_GRADE pg ON (pg.PRG_REGISTRO = fi.PRG_REGISTRO) ' +
      ' WHERE fi.PRD_REFER_ITENS = ' +  QuotedStr(SqlCdsNotasDisponiveisPRD_REFER.AsString) +
      ' AND fi.PRD_REFER = ' +  QuotedStr(SqlCdsNotasDisponiveisPRD_REFER_PAI.AsString) +
//      ' AND fi.PRD_REFER = ' +  QuotedStr(prdRefer.Text) +
      ' AND FTI_UTILIZA_ITEM_NO_RETORNO = ''S'' ' +
      ' AND pr.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
    ;
    qAux.Open;
    Quantidade := qAux.FieldByName('FTI_UC').AsFloat;
    Base := qAux.FieldByName('FTC_BASEFORMULA').AsFloat;
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisqtdSolicitada.AsFloat := (CurQuantidade.Value * Quantidade) / Base;
    SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat := (CurQuantidade.Value * Quantidade) / Base;
    SqlCdsNotasDisponiveisSaldo.AsFloat := SqlCdsNotasDisponiveisENF_QTDE.AsFloat - SqlCdsNotasDisponiveisRETORNADO.AsFloat;
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.First;
  SqlCdsNotasDisponiveis.EnableControls;
end;


procedure TFrmIndustrializacaoPorKit.dbgrdNotasDisponveisCellClick(Column: TColumn);
var
  sel, rec: integer;

begin
  inherited;
  if Column.FieldName = 'Selecao' then
  begin
    SqlCdsNotasDisponiveis.Edit;
    Column.Field.AsBoolean := not Column.Field.AsBoolean;
    SqlCdsNotasDisponiveis.Post;
  end;
  rec := SqlCdsNotasDisponiveis.RecNo;
  SqlCdsNotasDisponiveis.DisableControls;
  SqlCdsNotasDisponiveis.First;
  sel := 0;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    if SqlCdsNotasDisponiveis.FieldByName('Selecao').AsBoolean then
      inc(sel);
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.RecNo := rec;
  SqlCdsNotasDisponiveis.EnableControls;
  lbNItensSelecionados.Caption := IntToStr(sel);
end;

procedure TFrmIndustrializacaoPorKit.dbgrdNotasDisponveisDblClick(
  Sender: tObject);
begin
  //Vincular;
  Seleciona;
end;


procedure TFrmIndustrializacaoPorKit.dbgrdNotasDisponveisKeyPress(
  Sender: tObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      Seleciona;
    end;
end;

procedure TFrmIndustrializacaoPorKit.dbgrdNotasDisponveisTitleClick(
  Column: TColumn);
begin
  inherited;
  // faz nada. Para desabilitar a ordenação das colunas
end;

procedure TFrmIndustrializacaoPorKit.FormShow(Sender: tObject);
begin
  inherited;
  SqlCdsProduto.Close;

  qSqlCdsProduto.sql.text := SQLDEF('PRODUTOS','SELECT t3.PTI_SIGLA, t2.lin_descri,t1.prd_margemvenda,T1.prd_codigo,T1.prd_und, t1.prd_origem, T1.PRD_PCUSTO, t1.PRD_CUSTOCOMIPI, T1.prd_refer, T1.prd_descri, T1.prd_codbarra, T1.prd_codoriginal, T1.PRD_PVENDA,COALESCE(T1.PRD_PRODSERV,''P'')'+
                                 'as  PRD_PRODSERV  FROM prd0000 T1 left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo) left join PRD_TIPO t3 on (t3.PTI_CODIGO = t1.PTI_CODIGO)','WHERE T1.PRD_STATUS = ''A''','','t1.')+' ORDER BY T1.prd_refer';
  SqlCdsProduto.Open;
  AlterarCFOPdeRetorno1.Visible := (DBInicio.GetParametroSistema('PMT_NAT_OPER_RETORNO') = 'S');

end;

procedure TFrmIndustrializacaoPorKit.frxNotasDisponiveisBeginDoc(
  Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxNotasDisponiveis.FindObject('logoempresa')).Picture.Bitmap.Assign(DbInicio.empresa.logo);
end;

procedure TFrmIndustrializacaoPorKit.frxNotasDisponiveisGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.RAZAO
  else
  if VarName = 'PRODUTO' then
    Value := prdRefer.Text + ' - ' + prdDescricao.Text
  else
  if VarName = 'QUANTIDADE' then
    Value := CurQuantidade.Value
  else
  if VarName = 'NITENS' then
    Value := lbNItensFichaTecnica.Caption
  else
  if VarName = 'NITENSSEL' then
    Value := lbNItensSelecionados.Caption
  ;
end;

procedure TFrmIndustrializacaoPorKit.InverteSeleo1Click(Sender: TObject);
var
  sel, rec: integer;
begin
  inherited;
  SqlCdsNotasDisponiveis.DisableControls;
  rec := SqlCdsNotasDisponiveis.RecNo;
  SqlCdsNotasDisponiveis.First;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisSelecao.AsBoolean := not SqlCdsNotasDisponiveisSelecao.AsBoolean;
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.First;

  sel := 0;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    if SqlCdsNotasDisponiveis.FieldByName('Selecao').AsBoolean then
      inc(sel);
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.RecNo := rec;
  lbNItensSelecionados.Caption := IntToStr(sel);
  SqlCdsNotasDisponiveis.EnableControls;
end;

procedure TFrmIndustrializacaoPorKit.prdReferExit(Sender: TObject);
begin
  inherited;
  prdDescricao.Text := BuscaUmDadoSqlAsString(
    'SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(prdRefer.Text)
  );
  if prdDescricao.Text = '' then
    MessageDlg('Referência não encontrada', mtError, [mbOk], 0)
  else
    ConsultaDisponiveis;
  lbNItensFichaTecnica.Caption := BuscaUmDadoSqlAsString('SELECT COUNT(FTI_REGISTRO) FROM FTC_IT01 fi WHERE PRD_REFER = '  + QuotedStr(prdRefer.Text) );
end;

procedure TFrmIndustrializacaoPorKit.dbgrdNotasDisponveisDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not SqlCdsNotasDisponiveis.IsEmpty) then
      begin
         if Column.FieldName = 'Selecao' then
            begin
               dbgrdNotasDisponveis.Canvas.FillRect(Rect);
               Check := 0;
               if SqlCdsNotasDisponiveisSelecao.AsBoolean then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(dbgrdNotasDisponveis.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
            end;
      end;

end;

procedure TFrmIndustrializacaoPorKit.Seleciona;
var value: String;
    tcr: TFrmVinculacaoIndustrializacaoRetornoVincula;
begin
     if (not SqlCdsNotasDisponiveis.IsEmpty) then
     begin
          tcr := TFrmVinculacaoIndustrializacaoRetornoVincula.Create(Application);
          try
             tcr.GroupBox2.Visible := False;
             tcr.Itt_Registro:=SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger;
             tcr.QtdRetornar:=SqlCdsNotasDisponiveisENF_QTDE.AsFloat - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsFloat;
             tcr.ShowModal;
             if tcr.ModalResult=mrOk then
             begin
                  SqlCdsNotasDisponiveis.Edit;
                  SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger := tcr.ITT_REGISTRO;
                  SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao.AsString := tcr.ITT_DESCRICAO;
                  SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat:=tcr.QtdRetornar; //  * tcr.CurQuantidade.Value;
                  SqlCdsNotasDisponiveisSelecao.AsBoolean := (tcr.QtdRetornar <> 0);
                  SqlCdsNotasDisponiveis.Post;
             end;
          finally
                FreeAndNil(tcr) ;
          end;
      end;
end;


procedure TFrmIndustrializacaoPorKit.SqlCdsNotasDisponiveisCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SqlCdsNotasDisponiveisQuantidadeTmp.asFloat = 0 then
    SqlCdsNotasDisponiveisQuantidadeTmp.asFloat := 0;      // para não aparecer NAN no grid
  if SqlCdsNotasDisponiveisqtdSolicitada.AsFloat = 0 then
    SqlCdsNotasDisponiveisqtdSolicitada.AsFloat := 0;      // para não aparecer NAN no grid
  
end;

procedure TFrmIndustrializacaoPorKit.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frxNotasDisponiveis.ShowReport();
end;

procedure TFrmIndustrializacaoPorKit.BitCancelarClick(
  Sender: tObject);
begin
  Close;
end;

procedure TFrmIndustrializacaoPorKit.BitConfirmarClick(
  Sender: tObject);
var
  sReferenciaProdutoSelecionada,
  sCodigoProdutoSelecionado, prdDescri :string;
  iRegistro,
  iRegistroItem:Integer;

begin
  //Verifica se Selecionou algum e Filtra Selecionados
  SqlCdsNotasDisponiveis.Filtered := False;
  SqlCdsNotasDisponiveis.Filter   := 'Selecao = True';
  SqlCdsNotasDisponiveis.Filtered := True;
  if (SqlCdsNotasDisponiveis.IsEmpty) then
    begin
      uteis.aviso('Selecione pelo menos um item para realizar o retorno de industrialização');
      SqlCdsNotasDisponiveis.Filtered := False;
    end
  else
    begin
      SqlCdsNotasDisponiveis.First;
      while (not SqlCdsNotasDisponiveis.Eof) do
      begin
        if SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat > SqlCdsNotasDisponiveisENF_QTDE.AsFloat then
        begin
          MessageDlg('Quantidade informada é maior que o saldo'
          + #13 +
          SqlCdsNotasDisponiveisPRD_DESCRI.AsString + ' = ' + SqlCdsNotasDisponiveisQuantidadeTmp.AsString
          , mtError, [mbOK], 0);
          SqlCdsNotasDisponiveis.Filtered := False;
          abort;
        end;
        if SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat = 0 then
        begin
          Aviso('Item:'  + SqlCdsNotasDisponiveisPRD_DESCRI.AsString + ', marcado para retorno mas com quantidade 0 (Zero)');
          SqlCdsNotasDisponiveis.Filtered := False;
          Abort;
        end;

        SqlCdsNotasDisponiveis.Next;

      end;

      SqlCdsNotasDisponiveis.First;
      while (not SqlCdsNotasDisponiveis.Eof) do
        begin
          //Lanca Item e Cria vinculação
          //Colocado somente para segurança
           //if (SqlCdsProduto.Locate('prd_codigo',SqlCdsNotasDisponiveisPRD_CODIGO.AsString,[])) then
              begin
                 sReferenciaProdutoSelecionada := SqlCdsProdutoPRD_REFER.AsString;
                 sCodigoProdutoSelecionado := SqlCdsNotasDisponiveisPRD_CODIGO.AsString;
                 iRegistro := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
                 if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                    begin
                       //Verifica se atualiza estoque pelo pedido
                       if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE') = 'P') then
                          begin
                             KardexLancamento(IntToStr(iRegistro),
                                              'PED',
                                              SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                              '',
                                              SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                              '',
                                              '',
                                              FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                              '',
                                              IntToStr(0),
                                              'RETORNO DE INDUSTRIALIZAÇÃO POR KIT',
                                              Now,
                                              SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                              FrmPedido.EdPedidoNumero.Text,
                                              FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                              SqlCdsNotasDisponiveisENF_PRECO.AsFloat);
                          end;
                    end;


//                 if (DBInicio.GetParametroSistema('PMT_VINC_NF_ITEM_RETORNO') = 'S') then
//                    prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString + ' ' +
//                                 ' # RETORNO REF NF ' + SqlCdsNotasDisponiveisENF_NOTANUMBER.AsString +
//                                 ' SÉRIE '  + SqlCdsNotasDisponiveisENF_SERIE.AsString +
//                                 ' EMITIDA EM ' +  SqlCdsNotasDisponiveisENF_EMISSAO.AsString


                 if (DBInicio.GetParametroSistema('PMT_VINC_NF_ITEM_RETORNO') = 'S') then
                    prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString + ' ' +
                                 ' #RR|' + SqlCdsNotasDisponiveisENF_NOTANUMBER.AsString +
                                 '|'  + SqlCdsNotasDisponiveisENF_IT_DET_NITEM.AsString + '|'
                 else
                    prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString  ;

                 iRegistroItem := GravarPedidoItem(0,
                                                   SqlCdsNotasDisponiveisENF_UCOM.AsString,
                                                   FrmPedido.EdPedidoNumero.Text,
                                                   SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                                   SqlCdsNotasDisponiveisPRD_REFER.AsString,
                                                   SqlCdsProdutoPRD_CODORIGINAL.AsString,
                                                   COPY(prdDescri,1,100),
                                                   SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                                   '',
                                                   '',
                                                   '',
                                                   '0',
                                                   true,
                                                   false,
                                                   SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                                   SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                                   0,
                                                   SqlCdsNotasDisponiveisENF_PRECO.AsFloat,
                                                   SqlCdsNotasDisponiveisENF_PRECO.AsFloat,
                                                   SqlCdsNotasDisponiveisENF_PRECO.AsFloat,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   SqlCdsNotasDisponiveisENF_IPIALIQ.AsFloat,
                                                   SqlCdsNotasDisponiveisENF_VLSUBST.AsFloat,
                                                   0,
                                                   0,
                                                   0,
                                                   StrToInt(dbInicio.Usuario.Codigo),
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,'');
                 //Lanca Vinculação

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'INSERT INTO PED_IT01_INDUST (PRF_REGISTRO,ENF_REGISTRO,PEDIND_QUANTIDADE) VALUES ('+IntToStr(iRegistroItem)+','+SqlCdsNotasDisponiveisENF_REGISTRO.AsString+','+ValorAmericano(FloatToStr(SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat))+')';
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ' +
                                                      ' ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO + '+ValorAmericano(FloatToStr(SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat)) +
                                                      ' WHERE ENF_REGISTRO = '+SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                 DataCadastros.sqlUpdate2.ExecSql;

                 if SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString = '' then
                 begin
                   SqlCdsNotasDisponiveis.Edit;
                   SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString := '0';
                   SqlCdsNotasDisponiveis.Post;
                 end;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET ITT_REGISTRO = '+QuotedStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString)+' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem);
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET OPE_CODIGO_RETORNO = '+QuotedStr(SqlCdsNotasDisponiveisOPE_CODIGO_RETORNO.AsString)+' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem);
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ITT_REGISTRO = '+QuotedStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString)+' WHERE ENF_REGISTRO = '+SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'INSERT INTO PED_IND_KIT (ENF_NOTANUMBER, PRD_REFER, QTD_RETORNADO, ENF_REGISTRO)' +
                                                      ' VALUES ('+
                                                      QuotedStr(SqlCdsNotasDisponiveisENF_NOTANUMBER.AsString) + ',' +
                                                      QuotedStr(SqlCdsNotasDisponiveisPRD_REFER.AsString) + ',' +
                                                      FloatToSQL(SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat) + ',' +
                                                      SqlCdsNotasDisponiveisENF_REGISTRO.AsString +
                                                      ')'   ;
                 DataCadastros.sqlUpdate2.ExecSql;

              end;
          SqlCdsNotasDisponiveis.Next;
        end;
       SqlCdsNotasDisponiveis.Filtered := False;
       Close;
    end;
end;

procedure TFrmIndustrializacaoPorKit.AlterarCFOPdeRetorno1Click(Sender: TObject);
var
  marcado: array of boolean;
  qtRetorno: array of double;
  rec, j : integer;
begin
  inherited;
  if not SqlCdsNotasDisponiveisSelecao.AsBoolean then
  begin
    Aviso('Selecione o registro para alterar');
    Exit;
  end;

  if frmSelecionaCFOP = nil then
    frmSelecionaCFOP := TfrmSelecionaCFOP.Create(Self);
  frmSelecionaCFOP.Caption := 'Selecione a CFOP de Retorno';
  frmSelecionaCFOP.cbCFOP.idRetorno := SqlCdsNotasDisponiveisOPE_CODIGO_RETORNO.AsString;
  frmSelecionaCFOP.ShowModal;
  if frmSelecionaCFOP.ModalResult <> mrOk then
  begin
    FreeAndNil(frmSelecionaCFOP);
    exit;
  end;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='UPDATE ENF_IT01 SET OPE_CODIGO_RETORNO = ' + QuotedStr(frmSelecionaCFOP.cbCFOP.idRetorno) + ' WHERE ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
  DataCadastros.sqlUpdate.Execsql;

  SqlCdsNotasDisponiveis.DisableControls;
  rec := SqlCdsNotasDisponiveis.RecNo;
  SqlCdsNotasDisponiveis.First;
  j := 0;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    Inc(j);
    SetLength(marcado, j);
    SetLength(qtRetorno, j);
    marcado[j-1] := SqlCdsNotasDisponiveisSelecao.AsBoolean;
    qtRetorno[j-1] := SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat;
    SqlCdsNotasDisponiveis.Next;;
  end;
  SqlCdsNotasDisponiveis.Refresh;
  SqlCdsNotasDisponiveis.First;
  for j := 0 to Length(marcado) -1  do
  begin
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisSelecao.AsBoolean := marcado[j] ;
    SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat := qtRetorno[j];
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.RecNo := rec;
  SqlCdsNotasDisponiveis.EnableControls;
  // frmSelecionaCFOP.Free;
  // frmSelecionaCFOP := nil;
end;

end.
