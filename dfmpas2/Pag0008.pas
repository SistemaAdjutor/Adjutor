unit Pag0008;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, StdCtrls, Grids, DBGrids, DB, DBClient,
  DBLocal, DBLocalS, Buttons, ComboBoxRw, Mask,  rxToolEdit, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, frxExportODF,  rxCurrEdit, Menus,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, BaseForm, BaseDBForm, Data.FMTBcd, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid ;

type
  TFormContasPagarBaixas = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    BitPesquisar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    BitBtn2: TBitBtn;
    Bit_Sair: TBitBtn;
    CdsPagarBaixas: TSQLClientDataSet;
    DsPagarBaixas: TDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EdFatura: TEdit;
    Label2: TLabel;
    RxDataInicial: TDateEdit;
    Label3: TLabel;
    RxDataFinal: TDateEdit;
    CbFornecedor: TComboBoxRw;
    EdFornecedorCodigo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdFormaCodigo: TEdit;
    CbForma: TComboBoxRw;
    Label6: TLabel;
    EdContaBancoCodigo: TEdit;
    CbContaBanco: TComboBoxRw;
    frxReportPagar: TfrxReport;
    frxDBDatasetPagar: TfrxDBDataset;
    frxODSExport1: TfrxODSExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    CdsPagarBaixasPAP_REGISTRO: TIntegerField;
    CdsPagarBaixasEMP_CODIGO: TStringField;
    CdsPagarBaixasPAG_REGISTRO: TIntegerField;
    CdsPagarBaixasPAG_DATA_PAGAMENTO: TDateField;
    CdsPagarBaixasPAG_VALOR: TFMTBCdField;
    CdsPagarBaixasPAG_DESCONTO: TFMTBCdField;
    CdsPagarBaixasPAG_JUROS: TFMTBCdField;
    CdsPagarBaixasPAG_MULTA: TFMTBCdField;
    CdsPagarBaixasPAG_PAGO: TFMTBCdField;
    CdsPagarBaixasBAN_CODIGO: TStringField;
    CdsPagarBaixasFPG_REGISTRO: TIntegerField;
    CdsPagarBaixasUSU_CODIGO: TIntegerField;
    CdsPagarBaixasBAN_APELIDO: TStringField;
    CdsPagarBaixasFPG_DESCRICAO: TStringField;
    CdsPagarBaixasUSU_NOME: TStringField;
    CdsPagarBaixasFOR_CODIGO: TStringField;
    CdsPagarBaixasFOR_RAZAO: TStringField;
    CdsPagarBaixasPAG_CODIGO: TStringField;
    CdsPagarBaixasPPC_NUMER: TStringField;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CurTotalValor: TCurrencyEdit;
    CurTotalDesconto: TCurrencyEdit;
    CurTotalJuros: TCurrencyEdit;
    CurTotalMulta: TCurrencyEdit;
    CurTotalPago: TCurrencyEdit;
    CdsPagarBaixasPPC_VENCTO: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    ImprimirRecibo1: TMenuItem;
    chkMultiEmpresa: TCheckBox;
    chkImpAgrupado: TCheckBox;
    frxReportPagarAgrupado: TfrxReport;
    CdsPagarBaixasPPC_NPARCELAS: TSmallintField;
    DBGridRecParceDBTableView1: TcxGridDBTableView;
    DBGridRecParceLevel1: TcxGridLevel;
    DBGridRecParce: TcxGrid;
    DBGridRecParceDBTableView1EMP_CODIGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_DATA_PAGAMENTO: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_VALOR: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_DESCONTO: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_JUROS: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_MULTA: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_PAGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1BAN_APELIDO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FPG_DESCRICAO: TcxGridDBColumn;
    DBGridRecParceDBTableView1USU_NOME: TcxGridDBColumn;
    DBGridRecParceDBTableView1FOR_CODIGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FOR_RAZAO: TcxGridDBColumn;
    DBGridRecParceDBTableView1PAG_CODIGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1PPC_NUMER: TcxGridDBColumn;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure EdFornecedorCodigoExit(Sender: tObject);
    procedure CbFornecedorExit(Sender: tObject);
    procedure CbFornecedorChange(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdFormaCodigoExit(Sender: tObject);
    procedure EdContaBancoCodigoExit(Sender: tObject);
    procedure CbFormaChange(Sender: tObject);
    procedure CbContaBancoChange(Sender: tObject);
    procedure CbFormaExit(Sender: tObject);
    procedure CbContaBancoExit(Sender: tObject);
    procedure EdFaturaExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure frxReportPagarGetValue(const VarName: String;
      var Value: Variant);
    procedure BitBtn2Click(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure ImprimirRecibo1Click(Sender: tObject);
    procedure CdsPagarBaixasPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EdFaturaKeyPress(Sender: TObject; var Key: Char);
    procedure RxDataInicialChange(Sender: TObject);
    procedure CbFornecedorSelect(Sender: TObject);
    procedure CbContaBancoSelect(Sender: TObject);
    procedure CbFormaSelect(Sender: TObject);
    procedure CbFornecedorButtonClick(Sender: TObject);
  private
    { Private declarations }
    sFiltro:WideString;
    arquivo: string;
    procedure RealizaPesquisa;
    procedure CalculaTotal;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormContasPagarBaixas: TFormContasPagarBaixas;

implementation

uses
  DataCad, RWFunc, Men0001, uRecibo, uteis, iniciodb,For0002;

{$R *.dfm}

procedure TFormContasPagarBaixas.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasPagarBaixas.BotoesAcesso;
begin
     if Assigned(FormContasPagarBaixas) then
     begin
          BitBtn2.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,FormContasPagarBaixas).Relatorio;
     end;
end;

procedure TFormContasPagarBaixas.FormShow(Sender: tObject);
begin
   //Carrega Combos
   CbFornecedor.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbFornecedor.Compartilhar := 'FORNECEDORES';
   CbFornecedor.CarregarCombo := True;

   CbForma.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbForma.Compartilhar := 'TABELAS';
   CbForma.CarregarCombo := True;

   CbContaBanco.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBanco.Compartilhar := 'BANCOS';
   CbContaBanco.CarregarCombo := True;

   //Consulta padrão

   RxDataInicial.Date := Date -30;
   RxDataFinal.Date := Date;

   CbForma.Enabled := true;
   CbFornecedor.Enabled := true;
   CbContaBanco.Enabled := true;
   arquivo := dbInicio.SistemaLocal+'settings\'+ Self.Name + '.DBGridRecParceDBTableView1.grid';
   DBGridRecParceDBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );

end;

procedure TFormContasPagarBaixas.EdFornecedorCodigoExit(Sender: tObject);
begin
   EdFornecedorCodigo.Text := PreenchezeroEsquerda(EdFornecedorCodigo.Text,4);

   if (EdFornecedorCodigo.Text = '0000') then
      begin
         EdFornecedorCodigo.Clear;
         CbFornecedor.Text := '';
      end
   else
      begin
         CbFornecedor.TextoLocalizar := EdFornecedorCodigo.Text;
         CbFornecedor.Localizar := True;
         if (CbFornecedor.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Fornecedor não localizado com o código informado');
               CbFornecedor.Text := '';
               EdFornecedorCodigo.SetFocus;
               EdFornecedorCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasPagarBaixas.CbFornecedorExit(Sender: tObject);
begin
   if (CbFornecedor.CodigoLista = '') or (CbFornecedor.Text = '') then
      begin
         CbFornecedor.Text := '';
         EdFornecedorCodigo.Text := '';
      end
   else
      begin
         EdFornecedorCodigo.Text := CbFornecedor.CodigoLista;
      end;
end;

procedure TFormContasPagarBaixas.CbFornecedorSelect(Sender: TObject);
begin
  inherited;
  RealizaPesquisa;
end;

procedure TFormContasPagarBaixas.CdsPagarBaixasPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not CdsPagarBaixas.IsEmpty then
  begin
     if (sender.IsNull) or (Sender.AsString = '') then
       text := '1/1'
     else
       text := IntToStr(StrToInt(Sender.AsString)) +'/' + IntToStr (CdsPagarBaixas.FieldByName('PPC_NPARCELAS').AsInteger);
  end;
end;

procedure TFormContasPagarBaixas.CbFornecedorButtonClick(Sender: TObject);
var tcr: TFormFornecGrid;
begin
  tcr:= TFormFornecGrid.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbFornecedor.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;

end;

procedure TFormContasPagarBaixas.CbFornecedorChange(Sender: tObject);
begin
   EdFornecedorCodigo.Text := CbFornecedor.CodigoLista;
end;

procedure TFormContasPagarBaixas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   //Combos
   CbFornecedor.CarregarCombo := False;
   CbForma.CarregarCombo := False;
   CbContaBanco.CarregarCombo := False;
   //CdS
   CdsPagarBaixas.Close;
   DBGridRecParceDBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter, gsoUseSummary] );
end;

procedure TFormContasPagarBaixas.EdFormaCodigoExit(Sender: tObject);
begin
   EdFormaCodigo.Text := PreenchezeroEsquerda(EdFormaCodigo.Text,5);

   if (EdFormaCodigo.Text = '00000') then
      begin
         EdFormaCodigo.Clear;
         CbForma.Text := '';
      end
   else
      begin
         CbForma.TextoLocalizar := EdFormaCodigo.Text;
         CbForma.Localizar := True;
         if (CbForma.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Forma de Pagamento não localizado com o código informado');
               CbForma.Text := '';
               EdFormaCodigo.SetFocus;
               EdFormaCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasPagarBaixas.EdContaBancoCodigoExit(Sender: tObject);
begin
   EdContaBancoCodigo.Text := PreenchezeroEsquerda(EdContaBancoCodigo.Text,4);

   if (EdContaBancoCodigo.Text = '0000') then
      begin
         EdContaBancoCodigo.Clear;
         CbContaBanco.Text := '';
      end
   else
      begin
         CbContaBanco.TextoLocalizar := EdContaBancoCodigo.Text;
         CbContaBanco.Localizar := True;
         if (CbContaBanco.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               CbContaBanco.Text := '';
               EdContaBancoCodigo.SetFocus;
               EdContaBancoCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasPagarBaixas.CbFormaChange(Sender: tObject);
begin
   EdFormaCodigo.Text := CbForma.CodigoLista;
end;

procedure TFormContasPagarBaixas.CbContaBancoChange(Sender: tObject);
begin
   EdContaBancoCodigo.Text := CbContaBanco.CodigoLista;
end;

procedure TFormContasPagarBaixas.CbFormaExit(Sender: tObject);
begin
   if (CbForma.CodigoLista = '') or (CbForma.Text = '') then
      begin
         CbForma.Text := '';
         EdFormaCodigo.Text := '';
      end
   else
      begin
         EdFormaCodigo.Text := CbForma.CodigoLista;
      end;
end;

procedure TFormContasPagarBaixas.CbFormaSelect(Sender: TObject);
begin
  inherited;
  RealizaPesquisa;
end;

procedure TFormContasPagarBaixas.CbContaBancoExit(Sender: tObject);
begin
   if (CbContaBanco.CodigoLista = '') or (CbContaBanco.Text = '') then
      begin
         CbContaBanco.Text := '';
         EdContaBancoCodigo.Text := '';
      end
   else
      begin
         EdContaBancoCodigo.Text := CbContaBanco.CodigoLista;
      end;
end;

procedure TFormContasPagarBaixas.CbContaBancoSelect(Sender: TObject);
begin
  inherited;
  RealizaPesquisa;
end;

procedure TFormContasPagarBaixas.EdFaturaExit(Sender: tObject);
begin
     if trim(EdFatura.Text)<>'' then
        EdFatura.Text := StrZero(EdFatura.Text,EdFatura.MaxLength);
end;

procedure TFormContasPagarBaixas.EdFaturaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key= #13)  then
  begin
    if EdFatura.Text ='' then
       RealizaPesquisa
    else
    begin
      EdFatura.Text := StrZero(EdFatura.Text,EdFatura.MaxLength);
      RealizaPesquisa;
    end;
  end;
  key := #13;
end;


procedure TFormContasPagarBaixas.BitPesquisarClick(Sender: tObject);
begin
  RealizaPesquisa;

end;

procedure TFormContasPagarBaixas.RealizaPesquisa;
var
   sCondicao:WideString;
begin
   if (RxDataInicial.Text = '  /  /    ') then
    begin
       GeraException('Informe a data Inicial');
       RxDataInicial.SetFocus;
       RxDataInicial.SelectAll;
    end
   else
   if (RxDataFinal.Text = '  /  /    ') then
    begin
       GeraException('Informe a data Final');
       RxDataFinal.SetFocus;
       RxDataFinal.SelectAll;
    end
   else
   if (RxDataInicial.Date > RxDataFinal.Date) then
    begin
       GeraException('A Data Final não pode ser menor que a data Inicial');
       RxDataFinal.SetFocus;
       RxDataFinal.SelectAll;
    end;
   CdsPagarBaixas.Close;
   sCondicao := 'WHERE PAG_DATA_PAGAMENTO BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text))+' AND '+QuotedStr(DataAmericana(RxDataFinal.Text));
   sFiltro := 'Pagamentos: '+RxDataInicial.Text+' até '+RxDataFinal.Text;
   //Fatura
   if (EdFatura.Text <> '')and(EdFatura.Text <> '000000') then
      begin
         sCondicao := ' and T5.PAG_CODIGO = '+QuotedStr(EdFatura.Text);
         sFiltro := sFiltro+' Fatura:'+EdFatura.Text;
      end
   else
      begin
         //Cliente
         if (EdFornecedorCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T5.FOR_CODIGO = '+QuotedStr(EdFornecedorCodigo.Text);
               sFiltro := sFiltro+' Fornecedor:'+CbFornecedor.Text;
            end;
         //Forma
         if (EdFormaCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T1.FPG_REGISTRO = '+QuotedStr(EdFormaCodigo.Text);
               sFiltro := sFiltro+' Forma:'+CbForma.Text;
            end;
         //Conta Banco
         if (EdContaBancoCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T1.BAN_CODIGO = '+QuotedStr(EdContaBancoCodigo.Text);
               sFiltro := sFiltro+' Banco:'+CbContaBanco.Text;
            end;
      end;
   //Pesquisa
   CdsPagarBaixas.Close;
   CdsPagarBaixas.CommandText := SqlDef(IIF(chkMultiEmpresa.Checked,'MULTIEMPRESA','PAGAR'),'SELECT  '+
                                                       'T1.*, '+
                                                       'T2.BAN_APELIDO, '+
                                                       'T3.FPG_DESCRICAO, '+
                                                       'T4.USU_NOME, '+
                                                       'T5.FOR_CODIGO, '+
                                                       'T6.FOR_RAZAO, '+
                                                       't5.PAG_CODIGO, '+
                                                       't5.PPC_VENCTO, '+
                                                       't5.PPC_NUMER,   '+
                                                       't5.PPC_NPARCELAS '+
                                                       'FROM  '+
                                                       'PAG_PAGAMENTO T1  '+
                                                       'JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                                                       'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                                                       'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO) '+
                                                       'JOIN PAG_PC01 T5 ON (T5.PAG_REGISTRO = T1.PAG_REGISTRO)  '+
                                                       'JOIN FOR0000 T6 ON (T6.FOR_CODIGO = T5.FOR_CODIGO) ',sCondicao,'PAG_DATA_PAGAMENTO desc','T1.');
   CdsPagarBaixas.Open;
   CalculaTotal;
   if (CdsPagarBaixas.IsEmpty) and (self.Visible) then
    begin
     //  uteis.aviso('Não foi possível localizar nenhum Pagamento');
       EdFatura.SetFocus;
       EdFatura.SelectAll;
    end
   else
    begin
       DBGridRecParce.SetFocus;
    end;
end;

procedure TFormContasPagarBaixas.RxDataInicialChange(Sender: TObject);
begin
  inherited;
  if (RxDataInicial.Date <> 0) and (RxDataFinal.Date <> 0 ) then
     RealizaPesquisa;
end;

procedure TFormContasPagarBaixas.frxReportPagarGetValue(
  const VarName: String; var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFormContasPagarBaixas.BitBtn2Click(Sender: tObject);
begin
   if (CdsPagarBaixas.IsEmpty) then
      begin
         uteis.aviso('Não existe Pagamentos para serem impressos');
      end
   else
      begin
         if (chkImpAgrupado.Checked) then
            begin
               CdsPagarBaixas.IndexFieldNames:='FPG_DESCRICAO;PAG_DATA_PAGAMENTO';
               frxReportPagarAgrupado.ShowReport();
            end
         else
            frxReportPagar.ShowReport();

      end;
end;

procedure TFormContasPagarBaixas.CalculaTotal;
begin
   //Limpa Valores
   CurTotalValor.Clear;
   CurTotalDesconto.Clear;
   CurTotalJuros.Clear;
   CurTotalMulta.Clear;
   CurTotalPago.Clear;
   CdsPagarBaixas.First;
   CdsPagarBaixas.DisableControls;
   while (not CdsPagarBaixas.Eof) do
      begin
         CurTotalValor.Value := CurTotalValor.Value + CdsPagarBaixasPAG_VALOR.AsCurrency;
         CurTotalDesconto.Value := CurTotalDesconto.Value + CdsPagarBaixasPAG_DESCONTO.AsCurrency;
         CurTotalJuros.Value := CurTotalJuros.Value + CdsPagarBaixasPAG_JUROS.AsCurrency;
         CurTotalMulta.Value := CurTotalMulta.Value + CdsPagarBaixasPAG_MULTA.AsCurrency;
         CurTotalPago.Value := CurTotalPago.Value + CdsPagarBaixasPAG_PAGO.AsCurrency;
         CdsPagarBaixas.Next;
      end;
   CdsPagarBaixas.First;
   CdsPagarBaixas.EnableControls
end;

procedure TFormContasPagarBaixas.Bit_CancelarClick(Sender: tObject);
begin
   CalculaTotal;
end;

procedure TFormContasPagarBaixas.ImprimirRecibo1Click(Sender: tObject);
begin
   if (not CdsPagarBaixas.IsEmpty) then
      begin
         try
            FrmRecibo := TFrmRecibo.Create(Application);
            FrmRecibo.rbPagamento.Checked := True;
            FrmRecibo.dataRecebimento := CdsPagarBaixasPAG_DATA_PAGAMENTO.AsDateTime;
            FrmRecibo.CurValor.Value := CdsPagarBaixasPAG_VALOR.AsCurrency;
            FrmRecibo.edtRecebemosPagamos.Text := CdsPagarBaixasFOR_RAZAO.Text;
            FrmRecibo.mmoReferente.Lines.Add('Fatura: '+CdsPagarBaixasPAG_CODIGO.AsString+' Vencimento: '+CdsPagarBaixasPPC_VENCTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdsPagarBaixasPAG_VALOR.AsCurrency));
            FrmRecibo.mmoReferente.Lines.Add('Liquidação '+iif(CdsPagarBaixasPAG_VALOR.AsCurrency < CdsPagarBaixasPAG_VALOR.AsCurrency,'Parcial','Total' )+' :'+CdsPagarBaixasPAG_DATA_PAGAMENTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdsPagarBaixasPAG_VALOR.AsCurrency) );
            FrmRecibo.ShowModal;
         finally
            FrmRecibo.Destroy;
            FrmRecibo := nil;
         end;
      end;
end;

end.


