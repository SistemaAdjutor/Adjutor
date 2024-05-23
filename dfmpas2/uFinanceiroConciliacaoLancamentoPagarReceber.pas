unit uFinanceiroConciliacaoLancamentoPagarReceber;

interface

uses
  DataCad, InicioDB, Uteis, rwFunc,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, SgDbSeachComboUnit, JvMaskEdit, Vcl.Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmFinanceiroConciliacaoLancamentoPagarReceber = class(TfrmBaseDBEdit)
    Panel1: TPanel;
    rgReceitaDespesa: TRadioGroup;
    qCliFor: TSQLQuery;
    qFPagto: TSQLQuery;
    qContaBancaria: TSQLQuery;
    qContaContabil: TSQLQuery;
    qCentroCusto: TSQLQuery;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    lbCliFor: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sbCliFor: TSgDbSearchCombo;
    sbFormaPagamento: TSgDbSearchCombo;
    edDataVencimento: TJvDateEdit;
    edDataCompensacao: TJvDateEdit;
    edValor: TJvValidateEdit;
    sbContaBancaria: TSgDbSearchCombo;
    sbCategoriaConta: TSgDbSearchCombo;
    sbCentroCusto: TSgDbSearchCombo;
    GroupBox1: TGroupBox;
    edObservacao: TMemo;
    lbVendedor: TLabel;
    sbVendedor: TSgDbSearchCombo;
    qVendedor: TSQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgReceitaDespesaClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceiroConciliacaoLancamentoPagarReceber: TfrmFinanceiroConciliacaoLancamentoPagarReceber;

implementation

{$R *.dfm}

procedure TfrmFinanceiroConciliacaoLancamentoPagarReceber.btnCancelarClick(Sender: TObject);
begin
  // inherited;
  Close;

end;

procedure TfrmFinanceiroConciliacaoLancamentoPagarReceber.btnOKClick(Sender: TObject);
var
  nFatura, fatRegistro, pagCodigo, pagRegistro, pgPCRegistro: string;
begin
//  inherited;
  if rgReceitaDespesa.ItemIndex = -1 then
  begin
    MessageDlg('Escolha um Tipo de Lançamento: Receita ou Despesa', mtWarning, [mbOk], 0);
    rgReceitaDespesa.SetFocus;
  end
  else
  if sbCliFor.idRetorno = '' then
  begin
    MessageDlg('Escolha um Cliente/Fornecedor', mtWarning, [mbOk], 0);
    sbCliFor.SetFocus;
  end
  else
  if edDataVencimento.Date = 0 then
  begin
    MessageDlg('Escolha uma Data de Vencimento', mtWarning, [mbOk], 0);
    edDataVencimento.SetFocus;
  end
  else
  if edDataCompensacao.Date = 0 then
  begin
    MessageDlg('Escolha uma Data de Compensação', mtWarning, [mbOk], 0);
    edDataCompensacao.SetFocus;
  end
  else
  if edValor.Value = 0 then
  begin
    MessageDlg('Escolha um Valor para o Documento', mtWarning, [mbOk], 0);
    edValor.SetFocus;
  end
  else
  if sbFormaPagamento.idRetorno = '' then
  begin
    MessageDlg('Escolha uma Forma de Pagamento', mtWarning, [mbOk], 0);
    sbFormaPagamento.SetFocus;
  end
  else
  if sbContaBancaria.idRetorno = '' then
  begin
    MessageDlg('Escolha uma Conta Bancária', mtWarning, [mbOk], 0);
    sbContaBancaria.SetFocus;
  end
  else
  if sbCategoriaConta.idRetorno = '' then
  begin
    MessageDlg('Escolha uma Categoria de Conta', mtWarning, [mbOk], 0);
    sbCategoriaConta.SetFocus;
  end
  else
  if sbCentroCusto.idRetorno = '' then
  begin
    MessageDlg('Escolha um Centro de Custo', mtWarning, [mbOk], 0);
    sbCentroCusto.SetFocus;
  end
  else
  if rgReceitaDespesa.ItemIndex = 0 then
  begin
    if sbVendedor.idRetorno = '' then
    begin
      MessageDlg('Escolha um Vendedor', mtWarning, [mbOk], 0);
      sbVendedor.SetFocus;
      Exit;
    end;
    nFatura := SequenciadorPRC(DataCadastros.SQLConnection1, //Conexao
                                       dbInicio.Empresa.EMP_CODIGO,  //empresa
                                       'NF0001',                     //Tabela
                                       'NF_NOTANUMBER_N',            //Campo da Tabela
                                       0);
    nFatura := strzero(nFatura, 6);

    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO FAT0000 (' +
        'FAT_CODIGO, ' +
        'EMP_CODIGO, ' +
        'CLI_CODIGO, ' +
        'REP_CODIGO, ' +
        'OPV_CODIGO, ' +
        'PCL_CODIGO, ' +
        'PCX_CODIGO, ' +
        'CCT_CODIGO, ' +
        'FAT_PREVISAO, ' +
        'FAT_QTDITEM, ' +
        'FAT_VL_LIQ, ' +
        'FAT_VLFAT, ' +
        'FAT_DTEMIS, ' +
        'FAT_OBS, ' +
        'FAT_OPERACAO, ' +
        'OPE_CODIGO, ' +
        'FAT_EXCLUSAO ) ' +
        ' VALUES ( ' +
        QuotedStr(nFatura) + ', ' +
        QuotedStr(DBInicio.Emp_Codigo) + ', ' +
        QuotedStr(sbCliFor.idRetorno) + ', ' +
        QuotedStr(sbVendedor.idRetorno) + ', ' +
        IntToStr(DBInicio.Empresa.USP_OPV_CODIGO) + ', ' +
        QuotedStr(BuscaUmDadoSqlAsString('SELECT PCL_CODIGO FROM PCL0000 p WHERE PCL_NPARCELAS = 1 AND PCL_DIASENTREP = 1 AND PCL_CARENC_PRI = 0')) + ', ' +
        QuotedStr(sbCentroCusto.idRetorno) + ', ' +
        QuotedStr(sbCategoriaConta.idRetorno) + ', ' +
        QuotedStr('N') + ', ' +
        '0, ' +
        FloatToSQL(edValor.Value) + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        DateToSQL(Date) + ', ' +
        QuotedStr('LANÇAMENTO PELA CONCILIÇÃO BANCÁRIA.') + ', ' +
        QuotedStr(BuscaUmDadoSqlAsString( 'select OPE_CODIGO_DENTRO FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.empresa.EMP_CODIGO ) )) + ', ' +
        QuotedStr(BuscaUmDadoSqlAsString( 'select OPE_CODIGO_DENTRO FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.empresa.EMP_CODIGO ) )) + ', ' +
        QuotedStr('N') + ')';
    qAux.ExecSQL;

    qAux.Close;
    fatRegistro := IntToStr(dbInicio.GetNextSequence('GEN_FAT_PC01_REGISTRO'));
    qAux.SQL.Text := 'INSERT INTO FAT_PC01 (' +
        'FAT_REGISTRO, ' +
        'FAT_CODIGO, ' +
        'FPC_NUMER, ' +
        'FPG_REGISTRO, ' +
        'BAN_CODIGO, ' +
        'REP_CODIGO, ' +
        'CCT_CODIGO, ' +
        'PCX_CODIGO, ' +
        'FPC_DTEMIS, ' +
        'FPC_NPARCELAS, ' +
        'FPC_SITPAG, ' +
        'FPC_STATUS, ' +
        'FPC_VENCTO, ' +
        'FPC_PAGTO, ' +
        'FPC_VLPARC, ' +
        'FPC_VLPAGO, ' +
        'FPC_OBS, ' +
        'CLI_CODIGO, ' +
        'FPC_IMPDUP, ' +
        'EMP_CODIGO, ' +
        'FPC_PREVISAO, ' +
        'FPC_STATUS_REMESSA, ' +
        'BAN_COD_APELIDO, ' +
        'FPC_DESCONTADO, ' +
        'FPC_CONFIRMADEVOLUCAO, ' +
        'FPC_EXCLUSAO, ' +
        'USU_CODIGO, ' +
        'USU_LOGIN, ' +
        'FPC_REEMBOLSO )' +
        ' VALUES (' +
        fatRegistro + ', ' +
        QuotedStr(nFatura) + ', ' +
        QuotedStr('01') + ', ' +
        QuotedStr(sbFormaPagamento.idRetorno) + ', ' +
        QuotedStr(sbContaBancaria.idRetorno) + ', ' +
        QuotedStr(sbVendedor.idRetorno) + ', ' +
        QuotedStr(sbCategoriaConta.idRetorno) + ', ' +
        QuotedStr(sbCentroCusto.idRetorno) + ', ' +
        DateToSQL(Date) + ', ' +
        '1,' +
        QuotedStr('L')  + ', ' +
        QuotedStr('Liquidada') + ', ' +
        DateTimeToSQL(edDataVencimento.Date) + ', ' +
        DateTimeToSQL(edDataCompensacao.Date) + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        QuotedStr(edObservacao.Text) + ', ' +
        QuotedStr(sbCliFor.idRetorno) + ', ' +
        QuotedStr('N') + ', ' +
        QuotedStr(DBInicio.Emp_Codigo) + ', ' +
        QuotedStr('N') + ', ' +
        QuotedStr('N') + ', ' +
        sbContaBancaria.idRetorno + ', ' +
        QuotedStr('N') + ', ' +
        QuotedStr('N') + ', ' +
        QuotedStr('N') + ', ' +
        DBInicio.Usuario.CODIGO + ', ' +
        QuotedStr(dbInicio.Usuario.USERNAME) + ', ' +
        QuotedStr('N') + ')';
    qAux.ExecSQL;

    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO FAT_RECEBIMENTO '+
                   '('+
                   'EMP_CODIGO,'+
                   'FAT_REGISTRO,'+
                   'FRE_DATA_RECEBIMENTO,'+
                   'FRE_DATA_LANCAMENTO,'+
                   'FRE_VALOR,'+
                   'FRE_RECEBIDO,'+
                   'BAN_CODIGO,'+
                   'FPG_REGISTRO,'+
                   'USU_CODIGO'+
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(fatRegistro) + ', ' +
                   DateToSQL(edDataCompensacao.Date) + ', ' +
                   DateToSQL(edDataCompensacao.Date) + ', ' +
                   FloatToSQL(edValor.Value) + ', ' +
                   FloatToSQL(edValor.Value) + ', ' +
                   QuotedStr(sbContaBancaria.idRetorno) + ', ' +
                   QuotedStr(sbFormaPagamento.idRetorno) + ', ' +
                   QuotedStr(DBInicio.Usuario.CODIGO)+
                   ')';
    qAux.ExecSql;

    MessageDlg('Registro Inserido com Sucesso.', mtInformation, [mbOk], 0);
    Close;

  end
  else
  if rgReceitaDespesa.ItemIndex = 1 then
  begin
    pagRegistro := BuscaUmDadoSqlAsString('SELECT max(PAG_REGISTRO) + 1 FROM PAG0000');
    pagCodigo := SequenciadorPRC(DataCadastros.SQLConnection1,   //Conexao
                               dbInicio.Empresa.EMP_CODIGO, //empresa
                               'PAG0000',                      //Tabela
                               'PAG_CODIGO',                   //Campo da Tabela
                               0);
    pagCodigo := strzero(pagCodigo, 5);
    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO PAG0000 ( ' +
        'PAG_REGISTRO, ' +
        'PAG_CODIGO, ' +
        'OPV_CODIGO, ' +
        'FOR_CODIGO, ' +
        'PAG_DTEMIS, ' +
        'CCT_CODIGO, ' +
        'PCX_CODIGO, ' +
        'PAG_PREVISAO, ' +
        'PAG_VLNOTA, ' +
        'PAG_OBS, ' +
        'PAG_OPERACAO, ' +
        'EMP_CODIGO, ' +
        'PAG_EXCLUSAO, ' +
        'USU_CODIGO, ' +
        'USU_LOGIN, ' +
        'PAG_REEMBOLSO ) ' +
        ' VALUES ( ' +
        pagRegistro + ', ' +
        QuotedStr(pagCodigo) + ', ' +
        IntToStr(DBInicio.Empresa.USP_OPV_CODIGO) + ', ' +
        QuotedStr(sbCliFor.idRetorno) + ', ' +
        DateToSQL(Date) + ', ' +
        QuotedStr(sbCategoriaConta.idRetorno) + ', ' +
        QuotedStr(sbCentroCusto.idRetorno) + ', ' +
        QuotedStr('N') + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        QuotedStr('LANÇAMENTO PELA CONCILIÇÃO BANCÁRIA.') + ', ' +
        QuotedStr(BuscaUmDadoSqlAsString( 'select OPE_CODIGO_DENTRO FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.empresa.EMP_CODIGO ) )) + ', ' +
        QuotedStr(DBInicio.Emp_Codigo) + ', ' +
        QuotedStr('N') + ', ' +
        DBInicio.Usuario.CODIGO + ', ' +
        QuotedStr(dbInicio.Usuario.USERNAME) + ', ' +
        QuotedStr('N') + ')';
    qAux.ExecSQL;

    pgPCRegistro := IntToStr(dbInicio.GetNextSequence( 'GEN_PAG_PC01')) ;
    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO PAG_PC01 (' +
        'PAG_REGISTRO, ' +
        'PAG_CODIGO, ' +
        'PPC_NUMER, ' +
        'FPG_REGISTRO, ' +
        'BAN_CODIGO, ' +
        'PPC_BANCO, ' +
        'CCT_CODIGO, ' +
        'PCX_CODIGO, ' +
        'PPC_DTEMIS, ' +
        'PPC_NPARCELAS, ' +
        'PPC_SITPAG, ' +
        'PPC_STATUS, ' +
        'PPC_VENCTO, ' +
        'PPC_PAGTO, ' +
        'PPC_VLPARC, ' +
        'PPC_VLPAGO, ' +
        'PPC_OBS, ' +
        'EMP_CODIGO, ' +
        'FOR_CODIGO, ' +
        'PPC_PREVISAO, ' +
        'PPC_EXCLUSAO, ' +
        'USU_CODIGO, ' +
        'USU_LOGIN, ' +
        'PPC_REEMBOLSO ) ' +
        ' VALUES ( ' +
        pgPCRegistro + ', ' +
        QuotedStr(pagCodigo) + ', ' +
        QuotedStr('01')  + ', ' +
        QuotedStr(sbFormaPagamento.idRetorno) + ', ' +
        QuotedStr(sbContaBancaria.idRetorno) + ', ' +
        QuotedStr(sbContaBancaria.Text) + ', ' +
        QuotedStr(sbCategoriaConta.idRetorno) + ', ' +
        QuotedStr(sbCentroCusto.idRetorno) + ', ' +
        DateToSQL(Date) + ', ' +
        '1, ' +
        QuotedStr('L') + ', ' +
        QuotedStr('Liquidada') + ', ' +
        DateTimeToSQL(edDataVencimento.Date) + ', ' +
        DateTimeToSQL(edDataCompensacao.Date) + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        FloatToSQL(edValor.Value) + ', ' +
        QuotedStr(edObservacao.Text) + ', ' +
        QuotedStr(DBInicio.Emp_Codigo) + ', ' +
        QuotedStr(sbCliFor.idRetorno) + ', ' +
        QuotedStr('N') + ', ' +
        QuotedStr('N') + ', ' +
        DBInicio.Usuario.CODIGO + ', ' +
        QuotedStr(dbInicio.Usuario.USERNAME) + ', ' +
        QuotedStr('N') + ')';
    qAux.ExecSQL;

    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO PAG_PAGAMENTO '+
                   '('+
                   'EMP_CODIGO,'+
                   'PAG_REGISTRO,'+
                   'PAG_DATA_PAGAMENTO,'+
                   'PAG_DATA_LANCAMENTO,'+
                   'PAG_VALOR,'+
                   'PAG_PAGO,'+
                   'BAN_CODIGO,'+
                   'FPG_REGISTRO,'+
                   'USU_CODIGO,'+
                   'PAG_OBSERVACAO'+
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO) + ','+
                   pgPCRegistro + ','+
                   DateToSQL(edDataCompensacao.Date) + ', ' +
                   DateToSQL(edDataCompensacao.Date) + ', ' +
                   FloatToSQL(edValor.Value) + ', ' +
                   FloatToSQL(edValor.Value) + ', ' +
                   QuotedStr(sbContaBancaria.idRetorno) + ', ' +
                   QuotedStr(sbFormaPagamento.idRetorno) + ', ' +
                   QuotedStr(DBInicio.Usuario.CODIGO) + ', ' +
                   QuotedStr('LANÇAMENTO PELA CONCILIÇÃO BANCÁRIA.') +
                   ')';
    qAux.ExecSql;

    MessageDlg('Registro Inserido com Sucesso.', mtInformation, [mbOk], 0);
    Close;



  end;


end;

procedure TfrmFinanceiroConciliacaoLancamentoPagarReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmFinanceiroConciliacaoLancamentoPagarReceber := nil;
end;

procedure TfrmFinanceiroConciliacaoLancamentoPagarReceber.FormShow(Sender: TObject);
begin
  Width := 640;
  Height := 420;
  sbCliFor.idRetorno := '';
  sbFormaPagamento.idRetorno := '';
  sbContaBancaria.idRetorno := '';
  sbCategoriaConta.idRetorno := '';
  sbCentroCusto.idRetorno := '';
  edDataVencimento.Date := 0;
  edDataCompensacao.Date := 0;
  rgReceitaDespesa.ItemIndex := -1;
  inherited;
end;

procedure TfrmFinanceiroConciliacaoLancamentoPagarReceber.rgReceitaDespesaClick(Sender: TObject);
begin
  inherited;
  if rgReceitaDespesa.ItemIndex = 0 then
  begin
    lbCliFor.Caption := 'Cliente';
    sbCliFor.AutoF8WinTitulo := 'Clientes';
    sbCliFor.LookupDispl := 'CLI_RAZAO';
    sbCliFor.LookupKeyField := 'CLI_CODIGO';
    sbCliFor.LookupOrderBy := 'CLI_RAZAO';
    sbCliFor.LookupSelect := 'CLI_CODIGO,CLI_RAZAO';
    sbCliFor.LookupTable := 'CLI0000';
    lbVendedor.Visible := True;
    sbVendedor.Visible := True;
  end;
  if rgReceitaDespesa.ItemIndex = 1 then
  begin
    lbCliFor.Caption := 'Fornecedor';
    sbCliFor.AutoF8WinTitulo := 'Fornecedores';
    sbCliFor.LookupDispl := 'FOR_RAZAO';
    sbCliFor.LookupKeyField := 'FOR_CODIGO';
    sbCliFor.LookupOrderBy := 'FOR_RAZAO';
    sbCliFor.LookupSelect := 'FOR_CODIGO,FOR_RAZAO';
    sbCliFor.LookupTable := 'FOR0000';
    lbVendedor.Visible := False;
    sbVendedor.Visible := False;
  end;
  sbCliFor.Refresh;
  sbCliFor.Enabled := True;
  sbVendedor.Enabled := True;

end;

end.
