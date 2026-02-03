unit uApagaFaturamento;

interface

uses
  InicioDB, Data.DBXCommon,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird,
  Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls;

type
  TfrmApagaFaturamento = class(TfrmBaseDB)
    btConfirma: TButton;
    btCancela: TButton;
    mFatura: TMemo;
    mPedido: TMemo;
    lbFatura: TLabel;
    lbPedido: TLabel;
    edNumeroFatura: TEdit;
    edNumeroPedido: TEdit;
    procedure btConfirmaClick(Sender: TObject);
    procedure edNumeroFaturaExit(Sender: TObject);
    procedure edNumeroPedidoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApagaFaturamento: TfrmApagaFaturamento;

implementation

{$R *.dfm}

procedure TfrmApagaFaturamento.btConfirmaClick(Sender: TObject);
var
  sql: string;
begin
  inherited;

  if (Trim(edNumeroFatura.Text) = '')  then
  begin
    MessageDlg('Informe o número da fatura.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if Trim(edNumeroPedido.Text) = '' then
    sql := 'SELECT f.FAT_CODIGO FROM FAT0000 f WHERE f.FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND f.PED_CODIGO IS NULL AND f.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)
  else
    sql := 'SELECT f.FAT_CODIGO FROM FAT0000 f WHERE f.FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND f.PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) + ' AND f.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  if BuscaUmDadoSqlAsString(sql) = ''  then
  begin
    MessageDlg('Este Pedido não está ligado à Fatura.', mtWarning, [mbOK], 0);
    Exit;
  end;



  if MessageDlg(
       'ATENÇÃO!' + sLineBreak + sLineBreak +
       'Esta operação irá APAGAR o faturamento, a nota fiscal e ' +
       'reabrir o pedido.' + sLineBreak +
       'Essa ação NÃO poderá ser desfeita.' + sLineBreak + sLineBreak +
       'Deseja continuar?',
       mtWarning, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  BeginTransaction;

  try
    qAux.Close;
    qAux.SQL.Text :=
      '  DELETE FROM FAT_RECEBIMENTO WHERE EXISTS ( ' +
      '    SELECT 1 FROM FAT_PC01 fat ' +
      '     WHERE fat.FAT_REGISTRO = FAT_RECEBIMENTO.FAT_REGISTRO ' +
      '       AND fat.FAT_CODIGO =  ' + QuotedStr(edNumeroFatura.Text) +
      '       AND fat.EMP_CODIGO = ' +  QuotedStr(DBInicio.EMP_CODIGO) + ')';
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  DELETE FROM FAT0000 WHERE FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) ;
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  DELETE FROM FAT_PC01 WHERE FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND EMP_CODIGO =  ' + QuotedStr(DBInicio.EMP_CODIGO);
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  DELETE FROM NF_PC01  WHERE FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND EMP_CODIGO =  ' + QuotedStr(DBInicio.EMP_CODIGO);
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  DELETE FROM NF_IT01  WHERE NF_IT_NOTANUMER = ' + QuotedStr(edNumeroFatura.Text) + ' AND EMP_CODIGO =  ' + QuotedStr(DBInicio.EMP_CODIGO);
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  DELETE FROM NF0001   WHERE NF_NOTANUMBER   = ' + QuotedStr(edNumeroFatura.Text) + '  AND PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) + ' AND EMP_CODIGO = '  + QuotedStr(DBInicio.EMP_CODIGO) ;
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  UPDATE PED_IT01 SET PRF_QTDEFAT = 0 ' +
      '   WHERE PED_CODIGO =  ' + QuotedStr(edNumeroPedido.Text) + '  AND EMP_CODIGO = '  + QuotedStr(DBInicio.EMP_CODIGO) ;
    qAux.ExecSQL;

    qAux.SQL.Text :=
      'ALTER TRIGGER PED0000_BU0 INACTIVE';
    qAux.ExecSQL;

    qAux.SQL.Text :=
      '  UPDATE PED0000 SET PED_SITUACAO = ''F'' ' +
      '   WHERE PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) + ' AND EMP_CODIGO = '  + QuotedStr(DBInicio.EMP_CODIGO) ;
    qAux.ExecSQL;

    qAux.SQL.Text :=
      'ALTER TRIGGER PED0000_BU0 ACTIVE';
    qAux.ExecSQL;


    CommitTransaction;

    MessageDlg('Faturamento apagado com sucesso.',
               mtInformation, [mbOK], 0);

    ModalResult := mrOk;
  except
    on E: Exception do
    begin
      RollBackTransaction;
      MessageDlg('Erro ao apagar faturamento:' + sLineBreak + E.Message,
                 mtError, [mbOK], 0);
    end;
  end;
end;


procedure TfrmApagaFaturamento.edNumeroFaturaExit(Sender: TObject);
begin
  inherited;
  mFatura.Lines.Clear;
  qAux.Close;
  qAux.SQL.Text := 'SELECT ' +
                   '   DISTINCT c.CLI_RAZAO, ' +
                   '   f.FAT_VLFAT, ' +
                   '   fp.FPC_STATUS, ' +
                   '   fp.FPC_VENCTO, ' +
                   '   fp.FPC_PAGTO, ' +
                   '   CASE ' +
                   '     WHEN fp.FPC_SITPAG = ''L'' THEN ''Liquidado''  ' +
                   '     ELSE ''Pendente'' ' +
                   '   END AS FPC_SITPAG ' +
                   ' FROM ' +
                   '   FAT0000 f ' +
                   ' LEFT JOIN FAT_PC01 fp ON ' +
                   '   (fp.FAT_CODIGO = f.FAT_CODIGO) ' +
                   ' JOIN CLI0000 c ON ' +
                   '   (c.CLI_CODIGO = f.CLI_CODIGO) ' +
                   ' WHERE ' +
                   '   f.FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) +
                   '   AND f.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);
  qAux.Open;
  if qAux.Eof then
    MessageDlg('Fatura Não Encontrada',  mtWarning, [mbYes, mbNo], 0)
  else
  begin
      while not qAux.Eof do
      begin
        mFatura.Lines.Add('Cliente: ' + qAux.FieldByName('CLI_RAZAO').AsString + #13 + #10 +
                          'Valor da Fatura: ' + FormatFloat('R$ #,##0.00', qAux.FieldByName('FAT_VLFAT').AsFloat) + #13 + #10 +
                          'Status da Fatura: ' + qAux.FieldByName('FPC_STATUS').AsString + #13 + #10+
                          'Vencimento da Parcela: ' + qAux.FieldByName('FPC_VENCTO').AsString + #13 + #10 +
                          'Pagamento da Parcela: ' + qAux.FieldByName('FPC_PAGTO').AsString + #13 + #10 +
                          'Situação do pagamento da Parcela : ' + qAux.FieldByName('FPC_SITPAG').AsString + #13 + #10 +
                          '===========' + #13 + #10
                         );
        qAux.Next;
      end;
  end;

end;

procedure TfrmApagaFaturamento.edNumeroPedidoExit(Sender: TObject);
var
  sql: string;
begin
  inherited;
  if Trim(edNumeroPedido.Text) = '' then
    sql := 'SELECT f.FAT_CODIGO FROM FAT0000 f WHERE f.FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND f.PED_CODIGO IS NULL AND f.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)
  else
    sql := 'SELECT f.FAT_CODIGO FROM FAT0000 f WHERE f.FAT_CODIGO = ' + QuotedStr(edNumeroFatura.Text) + ' AND f.PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) + ' AND f.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  if BuscaUmDadoSqlAsString(sql) = ''  then
  begin
    MessageDlg('Este Pedido não está ligado à Fatura.', mtWarning, [mbOK], 0);
    Exit;
  end;

  mPedido.Lines.Clear;
  qAux.Close;
  qAux.SQL.Text :=
    'SELECT DISTINCT ' +
    '  c.CLI_RAZAO, ' +
    '  PED_DTENTRADA, ' +
    '  CASE ' +
    '    WHEN p.PED_SITUACAO = ''F'' THEN ''FATURAR'' ' +
    '    WHEN p.PED_SITUACAO = ''C'' THEN ''CANCELADO'' ' +
    '    WHEN p.PED_SITUACAO = ''T'' THEN ''FATURADO TOTAL'' ' +
    '    WHEN p.PED_SITUACAO = ''P'' THEN ''PARCIAL'' ' +
    '    WHEN p.PED_SITUACAO = ''A'' THEN ''FATURADO AGRUPADO'' ' +
    '    WHEN p.PED_SITUACAO = ''I'' THEN ''PEDIDO INTERNO'' ' +
    '    ELSE ''SITUAÇÃO NÃO INFORMADA'' ' +
    '  END AS PED_SITUACAO, ' +
    '  p.PED_VLTOTAL_BRUTO, ' +
    '  pid.PRF_PRECO * pid.PRF_QTDE AS PRF_PRECO, ' +
    '  prd.PRD_DESCRI ' +
    'FROM PED0000 p ' +
    'LEFT JOIN PED_IT01 pid ON pid.PED_CODIGO = p.PED_CODIGO ' +
    ' AND pid.EMP_CODIGO = p.EMP_CODIGO ' +
    'LEFT JOIN PRD0000 prd ON prd.PRD_codigo = pid.PRD_CODIGO ' +
    'JOIN CLI0000 c ON c.CLI_CODIGO = p.CLI_CODIGO ' +
    '   WHERE p.PED_CODIGO = ' + QuotedStr(edNumeroPedido.Text) +
    '   AND p.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);
  qAux.Open;
  if qAux.Eof then
    MessageDlg('Pedido Não Encontrado',  mtWarning, [mbYes, mbNo], 0)
  else
  begin
      while not qAux.Eof do
      begin
        mPedido.Lines.Add('Cliente: ' + qAux.FieldByName('CLI_RAZAO').AsString + #13 + #10 +
                          'Data da Entrada: ' + qAux.FieldByName('PED_DTENTRADA').AsString + #13 + #10 +
                          'Situação do Pedido : ' + qAux.FieldByName('PED_SITUACAO').AsString + #13 + #10 +
                          'Valor Total Bruto: ' + FormatFloat('R$ #,##0.00', qAux.FieldByName('PED_VLTOTAL_BRUTO').AsFloat) + #13 + #10 +
                          'Produto: ' + qAux.FieldByName('PRD_DESCRI').AsString + #13 + #10 +
                          'Total do Produto: ' + FormatFloat('R$ #,##0.00', qAux.FieldByName('PRF_PRECO').AsFloat) + #13 + #10+
                          '===========' + #13 + #10
                         );
        qAux.Next;
      end;
  end;

end;

end.
