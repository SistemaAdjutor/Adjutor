unit Pag0007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComboBoxRw, SqlExpr,SqlClientDataSet,
  Provider, DB, DBClient, Mask,  rxToolEdit,  rxCurrEdit,
  Menus, SimpleDS, SgDbSeachComboUnit, Vcl.DBCtrls;

type
  TFormContasPagarBaixa = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CbContaBanco: TComboBoxRw;
    EdContaBanco: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    EdFormaPagamento: TEdit;
    CBFormaPagamento: TComboBoxRw;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DsRecebimentos: TDataSource;
    CdSPagamento: TSQLClientDataSet;
    CdSPagamentoFatura: TStringField;
    CdSPagamentoParcela: TStringField;
    CdSPagamentoVencimento: TDateField;
    CdSPagamentoValor: TFloatField;
    CdSPagamentoPendente: TFloatField;
    CdSPagamentoBaixar: TFloatField;
    CdSPagamentoDesconto: TFloatField;
    CdSPagamentoJuros: TFloatField;
    CdSPagamentoMulta: TFloatField;
    CdSPagamentoRecebido: TFloatField;
    CdSPagamentoCliente: TStringField;
    Sb_FormaPagamento: TSpeedButton;
    CdSPagamentoFatRegistro: TIntegerField;
    GroupBox3: TGroupBox;
    CurTotalPendente: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    CurTotalBaixar: TCurrencyEdit;
    Label5: TLabel;
    CurTotalDesconto: TCurrencyEdit;
    Label6: TLabel;
    CurTotalJuros: TCurrencyEdit;
    Label8: TLabel;
    CurTotalMulta: TCurrencyEdit;
    CurTotalPago: TCurrencyEdit;
    Label9: TLabel;
    CurrTotalQuantidade: TCurrencyEdit;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    Descartar1: TMenuItem;
    Label2: TLabel;
    DataRecebimento: TDateEdit;
    CdSPagamentoBanco: TStringField;
    btnCheques: TButton;
    CDSPagamentoObs: TStringField;
    edObs: TDBEdit;
    Label11: TLabel;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure CdSPagamentoCalcFields(DataSet: TDataSet);
    procedure EdContaBancoExit(Sender: tObject);
    procedure EdFormaPagamentoExit(Sender: tObject);
    procedure CbContaBancoChange(Sender: tObject);
    procedure CBFormaPagamentoChange(Sender: tObject);
    procedure CbContaBancoExit(Sender: tObject);
    procedure CBFormaPagamentoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CdSPagamentoBeforeInsert(DataSet: TDataSet);
    procedure Sb_FormaPagamentoClick(Sender: tObject);
    procedure CdSPagamentoAfterOpen(DataSet: TDataSet);
    procedure CdSPagamentoAfterUpdateRecord(Sender: tObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure CdSPagamentoAfterPost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: tObject);
    procedure Descartar1Click(Sender: tObject);
    procedure btnChequesClick(Sender: tObject);
    procedure CDSPagamentoBaixarValidate(Sender: TField);
  private
    { Private declarations }
    procedure CalculaTotal;
  public
    { Public declarations }
    bBloqueado:Boolean;
  end;

var
  FormContasPagarBaixa: TFormContasPagarBaixa;

implementation

uses Uteis, iniciodb, RwFunc, uFinanceiroDao, uCadastroFormaPagamento,
  uChequeCadastro;

{$R *.dfm}

procedure TFormContasPagarBaixa.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasPagarBaixa.CdSPagamentoCalcFields(
  DataSet: TDataSet);
var
   rDiferenca:Currency;
begin
   CdSPagamentoRecebido.AsFloat := CdSPagamentoBaixar.AsFloat - CdSPagamentoDesconto.AsFloat + CdSPagamentoJuros.AsFloat + CdSPagamentoMulta.AsFloat;
   if (CdSPagamentoBaixar.AsFloat > CdSPagamentoValor.AsFloat) then
      begin
         if (uteis.confirmacao ( 'O Valor informado está maior que o valor da parcela,'+#13#10+
                         'gostaria de lancar como juros?')=mrYes) then
            begin
               rDiferenca := CdSPagamentoBaixar.AsFloat - CdSPagamentoValor.AsFloat;
               CdSPagamentoBaixar.AsFloat := CdSPagamentoValor.AsFloat;
               CdSPagamentoJuros.AsFloat  := rDiferenca;
            end
         else
            CdSPagamento.Cancel;
      end
   else
   if (CdSPagamentoRecebido.AsFloat < 0) then
      begin
         uteis.aviso('O Valor do Pagamento não pode ser Negativo');
         CdSPagamento.Cancel;
      end;
end;

procedure TFormContasPagarBaixa.EdContaBancoExit(Sender: tObject);
begin
  DBInicio.qAux3.Close;
  DBInicio.qAux3.SQL.Text := 'select BAN_ATIVO from ban0000 where ban_codigo = '+QuotedStr( PreenchezeroEsquerda(EdContaBanco.Text,4));
  DBInicio.qAux3.open;
  if DBInicio.qAux3.FieldByName('BAN_ATIVO').AsString = 'N' then
       EdContaBanco.Clear
  Else
  begin
   EdContaBanco.Text := PreenchezeroEsquerda(EdContaBanco.Text,4);
   if (EdContaBanco.Text = '0000') then
      begin
         EdContaBanco.Clear;
         CbContaBanco.Text := '';
      end
   else
      begin
         CbContaBanco.TextoLocalizar := EdContaBanco.Text;
         CbContaBanco.Localizar := True;
         if (CbContaBanco.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               CbContaBanco.Text := '';
               EdContaBanco.SetFocus;
               EdContaBanco.SelectAll;
            end;
      end;
  end;
end;

procedure TFormContasPagarBaixa.EdFormaPagamentoExit(Sender: tObject);
begin
   if (EdFormaPagamento.Text = '') then
      begin
         EdFormaPagamento.Clear;
         CBFormaPagamento.Text := '';
      end
   else
      begin
         CBFormaPagamento.TextoLocalizar := EdFormaPagamento.Text;
         CBFormaPagamento.Localizar := True;
         if (CBFormaPagamento.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Forma de Pagamento não localizado com o código informado');
               CBFormaPagamento.Text := '';
               EdFormaPagamento.SetFocus;
               EdFormaPagamento.SelectAll;
            end;
      end;
end;

procedure TFormContasPagarBaixa.CbContaBancoChange(Sender: tObject);
begin
   EdContaBanco.Text := CbContaBanco.CodigoLista;
end;

procedure TFormContasPagarBaixa.CBFormaPagamentoChange(Sender: tObject);
begin
   EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
   if (CBFormaPagamento.Text = 'CHEQUE')OR(CBFormaPagamento.Text = 'CHEQUES') then
      begin
         btnCheques.Visible := True;
      end
   else
      begin
         btnCheques.Visible := False;
      end;
end;

procedure TFormContasPagarBaixa.CbContaBancoExit(Sender: tObject);
begin
   if (CbContaBanco.CodigoLista = '') or (CbContaBanco.Text = '') then
      begin
         CbContaBanco.Text := '';
         EdContaBanco.Text := '';
      end
   else
      begin
         EdContaBanco.Text := CbContaBanco.CodigoLista;
      end;
end;

procedure TFormContasPagarBaixa.CBFormaPagamentoExit(Sender: tObject);
begin
   if (CBFormaPagamento.CodigoLista = '') or (CBFormaPagamento.Text = '') then
      begin
         CBFormaPagamento.Text := '';
         EdFormaPagamento.Text := '';
      end
   else
      begin
         EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
      end;
end;

procedure TFormContasPagarBaixa.FormShow(Sender: tObject);
begin
   //Combos
   CbContaBanco.CodigoEmpresa := StrToInt(dbinicio.EMPRESA.EMP_CODIGO);
   CbContaBanco.Compartilhar := 'BANCOS';
   CbContaBanco.CarregarCombo := True;

   CBFormaPagamento.CodigoEmpresa := StrToInt(dbinicio.EMPRESA.EMP_CODIGO);
   CBFormaPagamento.Compartilhar := 'TABELAS';
   CBFormaPagamento.CarregarCombo := True;

   DataRecebimento.Date := Now;


   CalculaTotal;

   DBGrid1.SelectedIndex := 5;

   bBloqueado := True;
end;

procedure TFormContasPagarBaixa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdSPagamento.EmptyDataSet;
   CbContaBanco.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := False;
end;

procedure TFormContasPagarBaixa.FormCreate(Sender: tObject);
begin
   CdSPagamento.CreateDataSet;
end;

procedure TFormContasPagarBaixa.Bit_GravarClick(Sender: tObject);
begin
   if (EdContaBanco.Text = '') then
      begin
         uteis.aviso('Informe a Conta Banco');
         EdContaBanco.SetFocus;
         EdContaBanco.SelectAll;
      end
   else
   if (EdFormaPagamento.Text = '') then
      begin
         uteis.aviso('Informe a Forma de Pagamento');
         EdFormaPagamento.SetFocus;
         EdFormaPagamento.SelectAll;
      end
   else
   if (DataRecebimento.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe data de Pagamento');
         DataRecebimento.SetFocus;
         DataRecebimento.SelectAll;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma o pagamento das duplicatas listadas acima?')=mrYes) then
            begin
               //Grava Pagamento
               CdSPagamento.First;
               while (not CdSPagamento.Eof) do
                  begin
                     ContasPagarBaixa(PreenchezeroEsquerda(CdSPagamentoFatRegistro.AsString,6), //sFaturaRegistro,
                                        PreenchezeroEsquerda(EdContaBanco.Text,4), //sContaBancoRegistro,
                                        EdFormaPagamento.Text, //sFormaPgtoRegistro,
                                        dbInicio.USUARIO.CODIGO, //sUsuarioCodido
                                        CDSPagamentoObs.AsString,
                                         //:String;
                                        CdSPagamentoPendente.AsCurrency, //rPendente,
                                        CdSPagamentoBaixar.AsCurrency, //rBaixar,
                                        CdSPagamentoDesconto.AsCurrency, //rDesconto,
                                        CdSPagamentoJuros.AsCurrency, //rJuros,
                                        CdSPagamentoMulta.AsCurrency, //rMulta,
                                        CdSPagamentoRecebido.AsCurrency, //rRecebido
                                         //:Currency;
                                        DataRecebimento.Date); //dDataRecebimento:TDateTime):Boolean;
                     CdSPagamento.Next;
                  end;
               ModalResult := mrOk;
               Close;

            end;
      end;


end;

procedure TFormContasPagarBaixa.CdSPagamentoBeforeInsert(
  DataSet: TDataSet);
begin
   if (bBloqueado) then
      CdSPagamento.Cancel;
end;

procedure TFormContasPagarBaixa.Sb_FormaPagamentoClick(Sender: tObject);
begin
if not assigned(FrmCadastroFormaPagamento) then
    begin
      FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
      FrmCadastroFormaPagamento.BotoesAcesso;
    if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)

{
   try
      FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
      FrmCadastroFormaPagamento.ShowModal;
   finally
      FrmCadastroFormaPagamento.Destroy;
      FrmCadastroFormaPagamento := Nil;      }

   end;

   CBFormaPagamento.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := True;
end;

procedure TFormContasPagarBaixa.CalculaTotal;
var
   ponto:TBookmark;
begin
   ponto := CdSPagamento.GetBookmark;
   try
     CdSPagamento.DisableControls;
     CdSPagamento.First;
     CurTotalPendente.Clear;
     CurTotalBaixar.Clear;
     CurTotalDesconto.Clear;
     CurTotalJuros.Clear;
     CurTotalMulta.Clear;
     CurTotalPago.Clear;
     CurrTotalQuantidade.Clear;
     while (not CdSPagamento.Eof) do
        begin
           CurTotalPendente.Value := CurTotalPendente.Value + CdSPagamentoValor.AsCurrency;
           CurTotalBaixar.Value := CurTotalBaixar.Value + CdSPagamentoBaixar.AsCurrency;
           CurTotalDesconto.Value := CurTotalDesconto.Value + CdSPagamentoDesconto.AsCurrency;
           CurTotalJuros.Value := CurTotalJuros.Value + CdSPagamentoJuros.AsCurrency;
           CurTotalMulta.Value := CurTotalMulta.Value + CdSPagamentoMulta.AsCurrency;
           CurTotalPago.Value := CurTotalPago.Value + CdSPagamentoRecebido.AsCurrency;
           CurrTotalQuantidade.Value := CurrTotalQuantidade.Value + 1;
           CdSPagamento.Next;
        end;
     CdSPagamento.EnableControls;
     CdSPagamento.GotoBookmark(ponto);
   finally
     CdSPagamento.FreeBookmark(ponto);
   end;
end;

procedure TFormContasPagarBaixa.CdSPagamentoAfterOpen(DataSet: TDataSet);
begin
   CalculaTotal;
end;



procedure TFormContasPagarBaixa.CdSPagamentoAfterUpdateRecord(
  Sender: tObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
   CalculaTotal;
end;

procedure TFormContasPagarBaixa.CDSPagamentoBaixarValidate(Sender: TField);
begin

  if Sender.AsFloat > CdSPagamentoPendente.AsFloat then
    raise Exception.Create('Valor baixado não pode ser maior que o pendente autorizado');
end;

procedure TFormContasPagarBaixa.CdSPagamentoAfterPost(DataSet: TDataSet);
begin
   CalculaTotal;
end;

procedure TFormContasPagarBaixa.DBGrid1Exit(Sender: tObject);
begin
   if not(CdSPagamento.State in [Dsbrowse]) then
      CdSPagamento.Post;
end;

procedure TFormContasPagarBaixa.Descartar1Click(Sender: tObject);
begin
   if (not CdSPagamento.IsEmpty) then
      if (uteis.confirmacao ( 'Gostaria de descartar esta fatura?')=mrYes) then
         CdSPagamento.Delete;
      if (CdSPagamento.IsEmpty) then
         begin
            uteis.aviso('Como não existe mais parcela a ser baixada, esta tela será fechada');
            Close;
         end;
end;

procedure TFormContasPagarBaixa.btnChequesClick(Sender: tObject);
begin
    FrmChequeCadastro := TFrmChequeCadastro.Create(Application);
   try
      FrmChequeCadastro.ShowModal;
   finally
      FrmChequeCadastro.Destroy;
      FrmChequeCadastro := Nil;
   end;
end;

end.
