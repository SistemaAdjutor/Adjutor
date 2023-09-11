unit PesqPedidoGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Win.ComObj,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls, JvComponentBase, JvDBGridExport, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Buttons, SgDbSeachComboUnit, Vcl.Mask, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
   pesquisaClientesForm, JvgExportComponents, animacao, system.UITypes, JvExMask, JvToolEdit;

type
  TFrmPesquisaPedidoGrade = class(TfrmBaseDB)
    gbPeriodo: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    DataTipo: TComboBox;
    gbTipo: TGroupBox;
    cbTipo: TSgDbSearchCombo;
    gbFaturamento: TGroupBox;
    cbbFaturamento: TComboBox;
    BtnSair: TBitBtn;
    BtnRel: TBitBtn;
    BitPesquisar: TBitBtn;
    dspSqlCdsPesq: TDataSetProvider;
    SqlCdsPesq: TClientDataSet;
    dbgrdResultado: TDBGrid;
    DsPedidos: TDataSource;
    CdsResultado: TClientDataSet;
    dsResultado: TDataSource;
    GbCliente: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    PesqCliente: TSgDbSearchCombo;
    EdClienteCodigo: TEdit;
    pesqVendedor: TSgDbSearchCombo;
    edVendedorCodigo: TEdit;
    edNumeroPedido: TLabeledEdit;
    SaveDialog1: TSaveDialog;
    qSqlPesq: TSQLQuery;
    qCli: TSQLQuery;
    qRep: TSQLQuery;
    SqlCdsTipo: TSQLQuery;
    BtnLimpar: TBitBtn;
    cbReferencia: TSgDbSearchCombo;
    Label3: TLabel;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    edProdutoCodigo: TEdit;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    procedure BitPesquisarClick(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edVendedorCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure pesqVendedorSelect(Sender: TObject);
    procedure edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnRelClick(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure edVendedorCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure JvDBGridExcelExport1Progress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string; var AContinue: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNumeroPedidoExit(Sender: TObject);
  private
    Procedure BuscaPedidos;
    procedure PreencherColunasProdutos (cdsProduto: TSQLQuery);
    procedure PreencherGrades(cdsGrade: TClientDataSet);
    function MontarColunas(cdsGrade: TSQLQuery): TStringList;
    procedure PadroesPesquisa;
    procedure ExportarExcelFiltro ( dbGrid: tDbGrid; Sender: TObject; Filtro : TStringList; const NomeArquivo:string) ;
    function FiltroAtual:TStringList;

  public
    { Public declarations }
  end;

var
  FrmPesquisaPedidoGrade: TFrmPesquisaPedidoGrade;

implementation

{$R *.dfm}
uses Uteis, DataCad, Prd0006;

procedure TFrmPesquisaPedidoGrade.BitPesquisarClick(Sender: TObject);
begin
  inherited;
  try
   Screen.Cursor := crHourGlass;
   GbCliente.Enabled := False;
   gbPeriodo.Enabled := False;
   gbTipo.Enabled := False;
   gbFaturamento.Enabled := False;
   BuscaPedidos;

  finally
   Screen.Cursor := crDefault;
   GbCliente.Enabled := True;
   gbPeriodo.Enabled := True;;
   gbTipo.Enabled := True;
   gbFaturamento.Enabled := True;
  end;
end;

procedure TFrmPesquisaPedidoGrade.BtnLimparClick(Sender: TObject);
begin
  inherited;
  PadroesPesquisa;
end;

procedure TFrmPesquisaPedidoGrade.BtnRelClick(Sender: TObject);
begin
  inherited;
  if not (dbgrdResultado.DataSource.DataSet.Active) or   (dbgrdResultado.DataSource.DataSet.RecordCount <= 0)  then
      GeraException('Não Existem Registros!');

  SaveDialog1.Filter:='Arquivo do Microsoft Excel|*.xlsx';
  SaveDialog1.DefaultExt:='xls';
  SaveDialog1.FilterIndex:=1;
  if (SaveDialog1.Execute) then
    begin
    try
     ExportarExcelFiltro(dbgrdResultado,sender,FiltroAtual,SaveDialog1.FileName );
    except
     on e: Exception do
        raise Exception.Create(e.Message);

    end;
    MessageDlg('Arquivo Exportado com sucesso',mtInformation,[mbOk],0);
    end;
end;

procedure TFrmPesquisaPedidoGrade.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmPesquisaPedidoGrade.BuscaPedidos;
var condicaoSQL, SQLPrincipal, CampoData : string;
stgrade : TstringList;
i : integer;
 function ColocaraAND (const condicao: string): string;
 begin
    if condicaoSQL = '' then
       result :=  condicao
    else
       result := ' and ' + condicao;
 end;

begin
  //Limpar
  CdsResultado.Close;
  CdsResultado.FieldDefs.Clear;
  try

  //pesquisa por pedido
  if edNumeroPedido.Text <> '' then
     condicaosql := ' P1.PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text)
  else
  begin
    if PesqCliente.idRetorno <> '' then
       condicaosql := condicaoSQL + ColocaraAND('P1.CLI_CODIGO = ' + PesqCliente.idRetorno) ;

    if pesqVendedor.idRetorno <> '' then
       condicaoSQL := condicaoSQL + ColocaraAND('P1.REP_CODIGO  =  '+ pesqVendedor.idRetorno) ;

    if cbTipo.idRetorno <> '' then
       condicaoSQL :=  condicaoSQL + ColocaraAND('P1.OPV_CODIGO = '+ cbTipo.idRetorno);
    if cbReferencia.idRetorno <> '' then
       condicaoSQL :=  condicaoSQL + ColocaraAND(' pit.PRD_REFER = '+QuotedStr(cbReferencia.idRetorno));

     case DataTipo.ItemIndex of
      0: campoData :='P1.PED_DTENTRADA';
      1: campoData :='p1.PED_DTSAIDA';
   //   2: campoData :='T1.NF_EMISSAO';   --faturamento
     else
        campoData :='P1.PED_DTENTRADA';
     end;

    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       condicaoSQL := condicaoSQL +  ColocaraAND(CampoData + ' between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date))
    else if  (RxDataInicial.Date > 0)  then
         condicaoSQL := condicaoSQL +  ColocaraAND(CampoData + ' >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        condicaoSQL := condicaoSQL +  ColocaraAND(CampoData + ' <= ' + DateToSQL(RxDataFinal.Date));
    (*
    opção
    0- TODOS
    1 FATURADO
    2 - PENDENTE
   situação
    C- CANCELADO
    F - A FATURAR
    P - FATURADO PARCIAL
    T- TOTALMENTE FATURADO
    *)
    case cbbFaturamento.ItemIndex of
      1:  condicaoSQL := condicaoSQL +  ColocaraAND('P1.PED_SITUACAO not in (''F'',''C'')');
      2:  condicaoSQL := condicaoSQL +  ColocaraAND('P1.PED_SITUACAO in (''P'',''F'')');
    end;
  end;// fim-se pesquisa exceto por pedido

  SqlCdsPesq.Close ;
  sqlPrincipal:=
      'SELECT pit.PRD_REFER as PRD_REFER,                               '#13+
      '        PRD.PRD_DESCRI as DESCRICAO,                             '#13+
      '  COALESCE(trim(t3.PRG_DESCRICAO),''SEM GRADE'') as GRADE ,      '#13+
      '       min(t3.PRG_SALDO) as SALDO,                               '#13+
      '        opv.OPV_DESCRICAO,                                       '#13+
      '       sum(COALESCE(pit.prf_qtde,0)) as prf_qtde                 '#13+
      '  FROM ped_it01 pit                                              '#13+
      '  LEFT JOIN PED0000 P1   ON (pit.PED_CODIGO = p1.PED_CODIGO)     '#13+
      '  left join prd0000 prd on (pit.prd_refer = prd.prd_refer)       '#13+
      '  LEFT JOIN OPV0000 OPV ON (P1.OPV_CODIGO = OPV.OPV_CODIGO)      '#13+
      '  left JOIN prd_grade t3 on (t3.prg_registro = pit.prg_registro) '#13 ;
  if condicaoSQL  <> '' then
     SQLPrincipal := SQLPrincipal + #13 + ' WHERE '+ condicaoSQL;
  SQLPrincipal := SQLPrincipal + #13 + ' GROUP BY  pit.PRD_REFER,  PRD.PRD_DESCRI, COALESCE(trim(t3.PRG_DESCRICAO),''SEM GRADE'') ,  opv.OPV_DESCRICAO';
  qSqlPesq.SQL.Text := SQLPrincipal;


  SqlCdsPesq.open;
  if SqlCdsPesq.RecordCount = 0 then
  begin
   if edNumeroPedido.Text <> '' then
     uteis.Aviso('Pedido não encontrado')
   else
     uteis.aviso('Sem informações no periodo');
   exit;
  end;


  SQLPrincipal:=  '  SELECT DISTINCT                                             '#13+
                   '  COALESCE(trim(t3.PRG_DESCRICAO),''SEM GRADE'') as GRADE    '#13+
                   ' FROM ped_it01 pit                                           '#13+
                   ' LEFT JOIN PED0000 P1   ON (pit.PED_CODIGO = p1.PED_CODIGO)  '#13+
                   ' left join prd0000 prd on (pit.prd_refer = prd.prd_refer)    '#13+
                   ' LEFT JOIN OPV0000 OPV ON (P1.OPV_CODIGO = OPV.OPV_CODIGO)   '#13+
                   ' left JOIN prd_grade t3 on (t3.prg_registro = pit.prg_registro)  '#13;
  if condicaoSQL  <> '' then
     SQLPrincipal := SQLPrincipal + #13 + ' WHERE '+ condicaoSQL;
  DataCadastros.SqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text:= SQLPrincipal ;
  DataCadastros.sqlUpdate.Open;


//  stgrade := TStringList.Create;
  stgrade:= MontarColunas ( DataCadastros.sqlUpdate);

  //Cria Colunas com base nos centro de custos mascados
  CdsResultado.FieldDefs.Clear;
  for i:= 0 to CdsResultado.FieldDefs.Count -1 do
       CdsResultado.FieldDefs[i].Destroy;
  CdsResultado.FieldDefs.Add('Referencia',ftString,100);
  CdsResultado.FieldDefs.Add('Descricao',ftString,150);
  CdsResultado.FieldDefs.Add('Tipo',ftString,100);

  for I := 0 to stgrade.Count-1 do
      CdsResultado.FieldDefs.Add(stgrade[i], ftInteger);
  CdsResultado.FieldDefs.Add('Ordem',ftInteger);



  cdsResultado.CreateDataSet;
  CdsResultado.IndexFieldNames := 'Referencia;Ordem';

  dbgrdResultado.Columns[0].Title.Caption:='Referência' ;
  dbgrdResultado.Columns[0].width := 130;
  dbgrdResultado.Columns[1].Title.Caption:='Descrição' ;
  dbgrdResultado.Columns[1].width := 130;
  dbgrdResultado.Columns[2].Title.Caption:='Tipo' ;
  dbgrdResultado.Columns[2].width := 130;

  dbgrdResultado.Columns[CdsResultado.FieldByName('Ordem').Index].Visible := False;



  SQLPrincipal:=  '  SELECT DISTINCT pit.PRD_REFER as PRD_REFER,                  '#13+
                   '   PRD.PRD_DESCRI as DESCRICAO,  opv.OPV_DESCRICAO           '#13+
                   ' FROM ped_it01 pit                                           '#13+
                   ' LEFT JOIN PED0000 P1   ON (pit.PED_CODIGO = p1.PED_CODIGO)  '#13+
                   ' left join prd0000 prd on (pit.prd_refer = prd.prd_refer)    '#13+
                   ' LEFT JOIN OPV0000 OPV ON (P1.OPV_CODIGO = OPV.OPV_CODIGO)   '#13+
                   ' inner JOIN prd_grade t3 on (t3.prg_registro = pit.prg_registro)  '#13;
  if condicaoSQL  <> '' then
     SQLPrincipal := SQLPrincipal + #13 + ' WHERE '+ condicaoSQL;
  DataCadastros.SqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text:= SQLPrincipal;
  DataCadastros.sqlUpdate.Open;
  PreencherColunasProdutos(DataCadastros.sqlUpdate);
  PreencherGrades(SqlCdsPesq);
  dbgrdResultado.DataSource.DataSet.First;
  dbgrdResultado.Refresh;
  finally
   // CdsResultado.EnableControls;


  end;
end;


procedure TFrmPesquisaPedidoGrade.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TFrmPesquisaPedidoGrade.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.idRetorno <> '' then
    edProdutoCodigo.Text := cbReferencia.idRetorno
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;

end;

procedure TFrmPesquisaPedidoGrade.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      PesqCliente.idRetorno:=edClienteCodigo.Text;
      if PesqCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');
  end
  Else
  begin
      edClienteCodigo.clear;
      PesqCliente.Clear;
  end;


end;

procedure TFrmPesquisaPedidoGrade.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TFrmPesquisaPedidoGrade.EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if Pos(key,'1234567890'+#8)=0 then
        key := #0;
end;

procedure TFrmPesquisaPedidoGrade.edNumeroPedidoExit(Sender: TObject);
begin
  inherited;
  if edNumeroPedido.Text <> '' then
    edNumeroPedido.Text := strzero(edNumeroPedido.Text,6)
end;

procedure TFrmPesquisaPedidoGrade.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;

  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;


end;

procedure TFrmPesquisaPedidoGrade.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

procedure TFrmPesquisaPedidoGrade.edVendedorCodigoExit(Sender: TObject);
begin
  inherited;
  edVendedorCodigo.Text:=StrZero(edVendedorCodigo.Text,3);
  if edVendedorCodigo.Text<>'000' then
  begin
      pesqVendedor.idRetorno:=edVendedorCodigo.Text;
      if pesqVendedor.idRetorno='' then
         GeraException('Vendedor não localizado com o código informado');
  end
  Else
  begin
      edVendedorCodigo.clear;
      pesqVendedor.Clear;
  end;
end;

function TFrmPesquisaPedidoGrade.MontarColunas(cdsGrade: TSQLQuery): TStringList;
var st :TStringList;
begin

  st:= TStringList.Create;
   cdsGrade.First;
   while not cdsGrade.Eof do
   begin
     st.Add(DataCadastros.SqlUpdate.FieldByName('GRADE').AsString);
     cdsGrade.Next;
   end;
   result:= st;
end;

procedure TFrmPesquisaPedidoGrade.PadroesPesquisa;
begin
  RxDataInicial.Date := Date-45;
  RxDataFinal.Date := Date;
  dataTipo.ItemIndex := 0;
  PesqCliente.idRetorno := '';
  pesqVendedor.idRetorno := '';
  cbReferencia.idRetorno := '';
  edNumeroPedido.Text := '';
  cbTipo.idRetorno := '15';
  cbbFaturamento.ItemIndex := 2;

end;

procedure TFrmPesquisaPedidoGrade.PesqClienteButtonClick(Sender: TObject);
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

procedure TFrmPesquisaPedidoGrade.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
    EdClienteCodigo.Text := PesqCliente.IdRetorno
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;
end;

procedure TFrmPesquisaPedidoGrade.pesqVendedorSelect(Sender: TObject);
begin
  inherited;
  if pesqVendedor.idRetorno <> '' then
    edVendedorCodigo.Text := pesqVendedor.idRetorno
  else
  begin
    edVendedorCodigo.Clear;
    pesqVendedor.Clear;

  end;
end;

procedure TFrmPesquisaPedidoGrade.PreencherColunasProdutos(cdsProduto: TSQLQuery);
begin
  cdsProduto.First;
  while not cdsProduto.Eof do
  begin
   // linha do estoque
   CdsResultado.Insert;
   CdsResultado.FieldByName('Referencia').AsString:=  cdsProduto.FieldByName('PRD_REFER').AsString;
   CdsResultado.FieldByName('Descricao').AsString := cdsProduto.FieldByName('DESCRICAO').AsString;
   CdsResultado.FieldByName('Ordem').AsInteger:=   1;
   CdsResultado.FieldByName('Tipo').AsString:=   'ESTOQUE ATUAL';
   CdsResultado.Post;

   //linha da venda
   CdsResultado.Insert;
   CdsResultado.FieldByName('Referencia').AsString:=  cdsProduto.FieldByName('PRD_REFER').AsString;
   //CdsResultado.FieldByName('Descricao').AsString := cdsProduto.FieldByName('DESCRICAO').AsString;
   CdsResultado.FieldByName('Tipo').AsString:=   cdsProduto.FieldByName('OPV_DESCRICAO').AsString;
   CdsResultado.FieldByName('Ordem').AsInteger:=   2;
   CdsResultado.Post;

   //linha toatl
   CdsResultado.Insert;
   CdsResultado.FieldByName('Referencia').AsString:=  cdsProduto.FieldByName('PRD_REFER').AsString;
//   CdsResultado.FieldByName('Descricao').AsString := cdsProduto.FieldByName('DESCRICAO').AsString;
   CdsResultado.FieldByName('Tipo').AsString:=   'TOTAL';
   CdsResultado.FieldByName('Ordem').AsInteger:=   3;
   CdsResultado.Post;


    cdsProduto.Next;
  end;
end;

procedure TFrmPesquisaPedidoGrade.PreencherGrades(cdsGrade: TClientDataSet);
 var cdsclone : TClientDataSet;
begin
  cdsclone := TClientDataSet.Create(Self);
  try
    cdsclone.CloneCursor(cdsGrade,true);
    cdsclone.First;
    while not cdsclone.Eof do
    begin
     if CdsResultado.Locate('Referencia;Tipo',
           VarArrayOf([cdsclone.FieldByName('PRD_REFER').AsString,
           cdsclone.FieldByName('OPV_DESCRICAO').AsString]),[]) then
     begin
       CdsResultado.Edit;
       if not cdsclone.FieldByName('Grade').IsNull  then
          CdsResultado.FieldByName(cdsclone.FieldByName('Grade').AsString).AsInteger :=  cdsclone.FieldByName('prf_qtde').AsInteger;

        CdsResultado.Post;
        if CdsResultado.Locate('Referencia;Tipo',
           VarArrayOf([cdsclone.FieldByName('PRD_REFER').AsString,
           'ESTOQUE ATUAL']),[])  then
         begin
           CdsResultado.Edit;
           if not cdsclone.FieldByName('Grade').IsNull  then
              CdsResultado.FieldByName(cdsclone.FieldByName('Grade').AsString).AsInteger :=  cdsclone.FieldByName('Saldo').AsInteger;

            CdsResultado.Post;

         end;
        if  CdsResultado.Locate('Referencia;Tipo',
           VarArrayOf([cdsclone.FieldByName('PRD_REFER').AsString,
           'TOTAL']),[])  then
        begin
           CdsResultado.Edit;
           if not cdsclone.FieldByName('Grade').IsNull  then
              CdsResultado.FieldByName(cdsclone.FieldByName('Grade').AsString).AsInteger :=
               ( cdsclone.FieldByName('Saldo').AsInteger-cdsclone.FieldByName('prf_qtde').AsInteger);

            CdsResultado.Post;

        end;

     end;
      cdsclone.Next;
    end;
  finally
   FreeAndNil(cdsclone);
  end;

end;

function TFrmPesquisaPedidoGrade.FiltroAtual: TStringList;
var
 memov: TStringList;
 vdate : string;
begin
  memov := TStringList.Create;

  if edNumeroPedido.Text = ''  then
  begin
    memov.Add ('Data ' +   DataTipo.Text + ': ' + RxDataInicial.Text + ' a '+ RxDataFinal.Text);
    if PesqCliente.idRetorno <> '' then
       memov.Add('Cliente: ' +  PesqCliente.Text);
    if pesqVendedor.idRetorno <> ''  then
       memov.Add('Vendedor: ' +pesqVendedor.Text) ;
    if cbReferencia.idRetorno <> '' then
       memov.Add('Produto: '+ cbReferencia.Text);
    if cbTipo.idRetorno <> '' then
       memov.Add('Tipos de Pedidos: '+cbTipo.Text);
    if cbbFaturamento.ItemIndex <> -1  then
      memov.Add('Faturamento: '+ cbbFaturamento.Items[cbbFaturamento.ItemIndex]);

  end
  else
  begin
   // se for o numero do pedido , trazer outras informações sobre o pedido
    memov.Add( 'Número do Pedido: ' + edNumeroPedido.Text)  ;

    DataCadastros.SqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text:=  'SELECT opv.OPV_DESCRICAO,                                    '#13+
                                        '       p1.PED_DTENTRADA,                                     '#13+
                                        '       cli.CLI_RAZAO                                         '#13+
                                        ' FROM PED0000 P1                                             '#13+
                                        '  LEFT JOIN OPV0000 OPV ON (P1.OPV_CODIGO = OPV.OPV_CODIGO)  '#13+
                                        '  LEFT JOIN CLI0000 cli ON (p1.CLI_CODIGO = cli.CLI_CODIGO)  '#13+
                                        ' WHERE P1.PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) ;
    DataCadastros.sqlUpdate.Open;
    memov.Add('Tipo Pedido: '+DataCadastros.sqlUpdate.FieldByName('OPV_DESCRICAO').AsString);
    DateTimeToString(vdate,'dd/mm/yyyy',DataCadastros.sqlUpdate.FieldByName('PED_DTENTRADA').AsDateTime);
    memov.Add('Data do Pedido: '+vdate);
    memov.add('Cliente :'+DataCadastros.sqlUpdate.FieldByName('CLI_RAZAO').AsString );
  end;
  result := memov;


end;

procedure TFrmPesquisaPedidoGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmPesquisaPedidoGrade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  inherited;
end;

procedure TFrmPesquisaPedidoGrade.FormCreate(Sender: TObject);
begin
  inherited;
  PadroesPesquisa;
  SalvaStatusGrid:= False;
  Width:=1067;
  Height:=638;

end;

procedure TFrmPesquisaPedidoGrade.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPesquisaPedidoGrade := nil;
end;

procedure TFrmPesquisaPedidoGrade.JvDBGridExcelExport1Progress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
  inherited;
  fmAnimacao.Panel1.Caption := 'Processando '+ FloatToStrF(((Position/max)*100),ffFixed, 3, 0)+ ' %' ;
  Application.ProcessMessages;
end;

procedure TFrmPesquisaPedidoGrade.edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_F4 then
      pesqVendedor.Button.Click;
end;

procedure TFrmPesquisaPedidoGrade.edVendedorCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if Pos(key,'1234567890'+#8)=0 then
        key := #0;
end;

procedure TFrmPesquisaPedidoGrade.ExportarExcelFiltro(dbGrid: tDbGrid; Sender: TObject; Filtro: TStringList; const NomeArquivo:string);

var vlinha, vcoluna, vColCount, vqtdrow,nfil,i,j : integer;
    vplanilha : variant;
    valorcampo : string;
    vit: tBookMark;
    vCampo: tField;
    vcalculo : Double;
begin
     try
      vplanilha:= CreateoleObject('Excel.Application');
     except on E : Exception do
        raise Exception.Create('Excel não instalado ou com erros!');
     end;
     vit:=dbGrid.DataSource.DataSet.GetBookmark;
     screen.Cursor:=crHourGlass;
     application.processmessages;

     try
         dbGrid.DataSource.DataSet.DisableControls;
         dbGrid.DataSource.DataSet.First;
         dbGrid.DataSource.DataSet.Last;

         vqtdRow := dbGrid.DataSource.DataSet.RecordCount;
         if vqtdrow>0 then
         begin
          fmAnimacao := TfmAnimacao.Create(Application);
          fmAnimacao.Panel1.Caption := 'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
          fmAnimacao.Show;


           //if messagedlg('Exportar '+inttostr(vqtdRow)+' registros para planilha Excel ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
           begin
               vplanilha.WorkBooks.add(1);
               vplanilha.caption := 'Exportando dados do dbGrid para o Excel';
               nfil:= FiltroAtual.Count;
               if (nfil mod 2)<>0 then
                  nfil:= (nfil div 2) + 1
               else
                  nfil:= (nfil div 2) ;
               j:= 0 ;
               for I := 1 to nfil do
               begin
                vplanilha.cells[i,1] :=  FiltroAtual[j];
                inc(j);
                if (j) < FiltroAtual.Count then
                begin
                  vplanilha.cells[i,2] :=  FiltroAtual[j];
                  inc(j);
                end;
               end;

               dbGrid.DataSource.DataSet.First;
               for I := 0 to dbGrid.Columns.Count-1 do
                 if dbGrid.Columns[i].Visible then
                   inc(vColCount);
                   //   vColCount:=dbGrid.Columns.Count;

               for vColuna:=1 to vColCount do
               begin
                    if dbGrid.Columns[vColuna-1].Visible then
                       vplanilha.cells[nfil+1,vcoluna] :=dbGrid.Columns[vColuna-1].Title.Caption;
               end;
               vlinha := nfil+2;
               try
                 while not dbGrid.DataSource.DataSet.eof do
                 begin
                      TButton(Sender).Caption:='Linha: '+inttostr(vLinha);
                      application.ProcessMessages;
                      vcalculo := (vLinha/vqtdrow)*100;
                      if vcalculo <=100 then
                        fmAnimacao.Panel1.Caption := 'Processando '+ FloatToStrF(vcalculo,ffFixed, 3, 0) + ' %' ;
                      for vColuna := 1 to dbGrid.Columns.Count do
                      begin
                           if dbGrid.Columns[vColuna-1].Visible then
                           begin
                              If NOT( (dbGrid.DataSource.DataSet.fieldbyname('Tipo').asstring <> 'ESTOQUE ATUAL') AND
                                (vColuna  in [1,2]))    then
                              begin
                               vCampo := dbGrid.DataSource.DataSet.fieldbyname(dbGrid.Columns[vColuna-1].FieldName);
                               if assigned(vCampo.OnGetText) then
                                vCampo.OnGetText(vCampo,valorcampo,true)
                               Else
                                valorcampo := vCampo.AsString;
                                vplanilha.cells[vlinha,vcoluna] := ''''+valorCampo;
                              end;
                           end;
                      end;
                       //MESCLAR
                      if dbGrid.DataSource.DataSet.fieldbyname('Tipo').asstring = 'TOTAL' then
                      begin
                          vplanilha.range['A'+IntToStr(vlinha-2)+':A'+IntToStr(VLINHA)].Mergecells := True;

                          vplanilha.range['B'+IntToStr(vlinha-2)+':B'+IntToStr(VLINHA)].Mergecells := True;



                      end;
                      dbGrid.DataSource.DataSet.Next;

                      Inc(vLinha);
                 end;
               finally
                      tButton(Sender).Caption:='&Exportar';
                      application.ProcessMessages;
                      screen.Cursor:=crDefault;
                     fmAnimacao.Close;
               end;
               vplanilha.columns.Autofit;
               vplanilha.WorkBooks[1].SaveAs(NomeArquivo);
               vplanilha.visible := True;
           end;
         end;
     finally
            if vIt <> Null  then
               if dbGrid.DataSource.DataSet.BookmarkValid(vit) then
                  dbGrid.DataSource.DataSet.GotoBookmark(vit);
            dbGrid.DataSource.DataSet.EnableControls;
     end;

end;

end.
