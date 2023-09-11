unit fat0009;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComboBoxRw, SqlExpr,SqlClientDataSet,
  Provider, DB, DBClient, Mask,  rxToolEdit,  rxCurrEdit,
  Menus, SimpleDS, SgDbSeachComboUnit;

type
  TFormContasReceberBaixa = class(TForm)
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
    CdSRecebimentos: TSQLClientDataSet;
    CdSRecebimentosFatura: TStringField;
    CdSRecebimentosParcela: TStringField;
    CdSRecebimentosVencimento: TDateField;
    CdSRecebimentosValor: TFloatField;
    CdSRecebimentosPendente: TFloatField;
    CdSRecebimentosBaixar: TFloatField;
    CdSRecebimentosDesconto: TFloatField;
    CdSRecebimentosJuros: TFloatField;
    CdSRecebimentosMulta: TFloatField;
    CdSRecebimentosRecebido: TFloatField;
    CdSRecebimentosCliente: TStringField;
    Sb_FormaPagamento: TSpeedButton;
    CdSRecebimentosFatRegistro: TIntegerField;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CurTotalPendente: TCurrencyEdit;
    CurTotalBaixar: TCurrencyEdit;
    CurTotalDesconto: TCurrencyEdit;
    CurTotalJuros: TCurrencyEdit;
    CurTotalMulta: TCurrencyEdit;
    CurTotalPago: TCurrencyEdit;
    Label10: TLabel;
    CurrTotalQuantidade: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    Descartar1: TMenuItem;
    Label2: TLabel;
    DataRecebimento: TDateEdit;
    CdSRecebimentosBanco: TStringField;
    btnCheques: TButton;
    procedure Bit_CancelarClick(Sender: tObject);
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
    procedure CdSRecebimentosBeforeInsert(DataSet: TDataSet);
    procedure Sb_FormaPagamentoClick(Sender: tObject);
    procedure CdSRecebimentosAfterPost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: tObject);
    procedure Descartar1Click(Sender: tObject);
    procedure btnChequesClick(Sender: tObject);
    procedure CDSRecebimentosDescontoSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosJurosSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosMultaSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosBaixarSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosDescontoValidate(Sender: TField);
  private

    procedure CalculaTotal;
    procedure CalculaRecebido;
  public
    { Public declarations }
    bBloqueado:Boolean;
  end;

var
  FormContasReceberBaixa: TFormContasReceberBaixa;

implementation

uses RwFunc, uFinanceiroDao, uCadastroFormaPagamento,
  uChequeCadastro, uteis, iniciodb;

{$R *.dfm}

procedure TFormContasReceberBaixa.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasReceberBaixa.CDSRecebimentosDescontoSetText(Sender: TField; const Text: string);
begin
  Sender.Asfloat := StrToFloatDef( Text , 0 );
  CalculaRecebido;
end;

procedure TFormContasReceberBaixa.CDSRecebimentosDescontoValidate(Sender: TField);
begin
  if TField( Sender).AsFloat> CdSRecebimentosBaixar.AsFloat  then
    raise Exception.Create('Desconto não pode ser maior que o valor baixar');

end;

procedure TFormContasReceberBaixa.CDSRecebimentosJurosSetText(Sender: TField; const Text: string);
begin
     Sender.Asfloat := StrToFloatDef( Text , 0 );
     CalculaRecebido;
end;

procedure TFormContasReceberBaixa.CDSRecebimentosMultaSetText(Sender: TField; const Text: string);
begin
     Sender.Asfloat := StrToFloatDef( Text , 0 );
     CalculaRecebido;
end;

procedure TFormContasReceberBaixa.CalculaRecebido;
var rDiferenca:Currency;
begin


         if (CdSRecebimentosValor.AsFloat < CdSRecebimentosBaixar.AsFloat  ) then
         begin
               if (uteis.confirmacao ( 'O Valor informado está maior que o valor da parcela,'+#13#10+
                               'gostaria de lancar como juros?')=mrYes) then
               begin
                     rDiferenca := CdSRecebimentosBaixar.AsFloat - CdSRecebimentosValor.AsFloat;
                     CdSRecebimentosBaixar.AsFloat := CdSRecebimentosValor.AsFloat;
                     CdSRecebimentosJuros.AsFloat  := rDiferenca;
               end;
//               else
//                  CdSRecebimentos.Cancel;
         end
         else
         if (CdSRecebimentosRecebido.AsFloat < 0) then
         begin
               uteis.aviso('O Valor do Recebimento não pode ser Negativo');
               CdSRecebimentos.Cancel;
         end;

     CDSRecebimentosRecebido.AsFloat :=  CDSRecebimentosBaixar.AsFloat + CDSRecebimentosJuros.AsFloat + CDSRecebimentosMulta.AsFloat - CDSRecebimentosDesconto.AsFloat ;

end;

procedure TFormContasReceberBaixa.EdContaBancoExit(Sender: tObject);
begin
  EdContaBanco.Text := PreenchezeroEsquerda(EdContaBanco.Text,4);
  if (EdContaBanco.Text = '0000') then
  begin
         EdContaBanco.Clear;
         CbContaBanco.Text := '';
  end
  Else
  begin
    DBInicio.qAux3.Close;
    DBInicio.qAux3.SQL.Text := 'select BAN_ATIVO from ban0000 where ban_codigo = '+QuotedStr( EdContaBanco.Text);
    DBInicio.qAux3.open;
    if DBInicio.qAux3.FieldByName('BAN_ATIVO').AsString = 'N' then
      CbContaBanco.Localizar := False
    else
    begin
      CbContaBanco.TextoLocalizar := EdContaBanco.Text;
      CbContaBanco.Localizar := True;
    end;
    if not (CbContaBanco.Localizado) then
    begin
       uteis.aviso('Conta Banco não localizado com o código informado');
       CbContaBanco.Text := '';
       EdContaBanco.SetFocus;
       EdContaBanco.SelectAll;
    end;
  end;
end;

procedure TFormContasReceberBaixa.EdFormaPagamentoExit(Sender: tObject);
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

procedure TFormContasReceberBaixa.CbContaBancoChange(Sender: tObject);
begin
   EdContaBanco.Text := CbContaBanco.CodigoLista;
end;

procedure TFormContasReceberBaixa.CBFormaPagamentoChange(Sender: tObject);
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

procedure TFormContasReceberBaixa.CbContaBancoExit(Sender: tObject);
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

procedure TFormContasReceberBaixa.CBFormaPagamentoExit(Sender: tObject);
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

procedure TFormContasReceberBaixa.FormShow(Sender: tObject);
begin
   //Combos
   CbContaBanco.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBanco.Compartilhar := 'BANCOS';
   CbContaBanco.CarregarCombo := True;

   CBFormaPagamento.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CBFormaPagamento.Compartilhar := 'TABELAS';
   CBFormaPagamento.CarregarCombo := True;

   DataRecebimento.Date := Now;

   CalculaTotal;

   DBGrid1.SelectedIndex := 5;

   bBloqueado := True;

end;

procedure TFormContasReceberBaixa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdSRecebimentos.EmptyDataSet;
   CbContaBanco.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := False;
end;

procedure TFormContasReceberBaixa.FormCreate(Sender: tObject);
begin

   CdSRecebimentos.CreateDataSet;
end;

procedure TFormContasReceberBaixa.Bit_GravarClick(Sender: tObject);
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
         uteis.aviso('Informe data de Recebimento');
         DataRecebimento.SetFocus;
         DataRecebimento.SelectAll;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma a baixa das duplicatas listadas acima?')=mrYes) then
            begin
               //Grava Pagamento
               CdSRecebimentos.First;
               while (not CdSRecebimentos.Eof) do
                  begin
                     if CdSRecebimentosBaixar.AsCurrency> 0  then
                       ContasReceberBaixa(PreenchezeroEsquerda(CdSRecebimentosFatRegistro.AsString,6), //sFaturaRegistro,
                                          PreenchezeroEsquerda(EdContaBanco.Text,4), //sContaBancoRegistro,
                                          EdFormaPagamento.Text, //sFormaPgtoRegistro,
                                          dbInicio.Usuario.Codigo, //sUsuarioCodido
                                           //:String;
                                          CdSRecebimentosPendente.AsCurrency, //rPendente,
                                          CdSRecebimentosBaixar.AsCurrency, //rBaixar,
                                          CdSRecebimentosDesconto.AsCurrency, //rDesconto,
                                          CdSRecebimentosJuros.AsCurrency, //rJuros,
                                          CdSRecebimentosMulta.AsCurrency, //rMulta,
                                          CdSRecebimentosRecebido.AsCurrency, //rRecebido
                                           //:Currency;
                                          DataRecebimento.Date); //dDataRecebimento:TDateTime):Boolean;
                     CdSRecebimentos.Next;
                  end;
               ModalResult := mrOk;
               Close;
            end;
      end;


end;

procedure TFormContasReceberBaixa.CdSRecebimentosBeforeInsert(
  DataSet: TDataSet);
begin
   if (bBloqueado) then
      CdSRecebimentos.Cancel;
end;

procedure TFormContasReceberBaixa.Sb_FormaPagamentoClick(Sender: tObject);
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
      FrmCadastroFormaPagamento := Nil;           }

   end;

   CBFormaPagamento.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := True;
end;

procedure TFormContasReceberBaixa.CdSRecebimentosAfterPost(
  DataSet: TDataSet);
begin
   CalculaTotal;
end;

procedure TFormContasReceberBaixa.CDSRecebimentosBaixarSetText(Sender: TField; const Text: string);
begin
     Sender.Asfloat := StrToFloatDef( Text , 0 );
     CalculaRecebido;
end;

procedure TFormContasReceberBaixa.CalculaTotal;
var
   ponto:TBookmark;
begin
   ponto := CdSRecebimentos.GetBookmark;
   CdSRecebimentos.DisableControls;
   CdSRecebimentos.First;
   CurTotalPendente.Clear;
   CurTotalBaixar.Clear;
   CurTotalDesconto.Clear;
   CurTotalJuros.Clear;
   CurTotalMulta.Clear;
   CurTotalPago.Clear;
   CurrTotalQuantidade.Clear;
   while (not CdSRecebimentos.Eof) do
   begin
         CurTotalPendente.Value := CurTotalPendente.Value + CdSRecebimentosValor.AsCurrency;
         CurTotalBaixar.Value := CurTotalBaixar.Value + CdSRecebimentosBaixar.AsCurrency;
         CurTotalDesconto.Value := CurTotalDesconto.Value + CdSRecebimentosDesconto.AsCurrency;
         CurTotalJuros.Value := CurTotalJuros.Value + CdSRecebimentosJuros.AsCurrency;
         CurTotalMulta.Value := CurTotalMulta.Value + CdSRecebimentosMulta.AsCurrency;
         CurTotalPago.Value := CurTotalPago.Value + CdSRecebimentosRecebido.AsCurrency;
         CurrTotalQuantidade.Value := CurrTotalQuantidade.Value + 1;
         CdSRecebimentos.Next;
   end;
   CdSRecebimentos.EnableControls;
   CdSRecebimentos.GotoBookmark(ponto);

end;

procedure TFormContasReceberBaixa.DBGrid1Exit(Sender: tObject);
begin
   if not(CdSRecebimentos.State in [Dsbrowse]) then
      CdSRecebimentos.Post;
end;

procedure TFormContasReceberBaixa.Descartar1Click(Sender: tObject);
begin
  if (not CdSRecebimentos.IsEmpty) then
    if (uteis.confirmacao ( 'Gostaria de descartar esta fatura?')=mrYes) then
       CdSRecebimentos.Delete;
  if (CdSRecebimentos.IsEmpty) then
   begin
     uteis.aviso('Como não existe mais parcela a ser baixada, esta tela será fechada');
     Close;
   end;
end;

procedure TFormContasReceberBaixa.btnChequesClick(Sender: tObject);
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
