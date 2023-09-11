unit uFinanceiroConciliacaoTransferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  rxCurrEdit, ComboBoxRw, Mask,
  RxToolEdit, SgDbSeachComboUnit;

type
  TFrmFinanceiroConciliacaoTransferencia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    RxDataLancamento: TDateEdit;
    Label1: TLabel;
    EdDocumento: TEdit;
    Label2: TLabel;
    EdObservacao: TEdit;
    CbContaBancoOrigem: TComboBoxRw;
    EdContaBancoOrigem: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CurSaldoOrigem: TCurrencyEdit;
    Label6: TLabel;
    EdContaBancoDestino: TEdit;
    CbContaBancoDestino: TComboBoxRw;
    Label7: TLabel;
    CurSaldoDestino: TCurrencyEdit;
    Label8: TLabel;
    CurValorTransferencia: TCurrencyEdit;
    btManutencao: TBitBtn;
    btHistorico: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdContaBancoOrigemExit(Sender: tObject);
    procedure EdContaBancoDestinoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CbContaBancoOrigemSelect(Sender: tObject);
    procedure CbContaBancoDestinoSelect(Sender: tObject);
    procedure CbContaBancoOrigemChange(Sender: TObject);
    procedure btManutencaoClick(Sender: TObject);
    procedure btHistoricoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiroConciliacaoTransferencia: TFrmFinanceiroConciliacaoTransferencia;

implementation

uses Men0001, RWFunc, uFinanceiroDao, uFinanceiroConciliacao, uteis, iniciodb, uFinanceiroConciliacaoTransferenciaManutencao, uFinanceiroConciliacaoTransferenciaManutencaoHistorico;

{$R *.dfm}





procedure TFrmFinanceiroConciliacaoTransferencia.Bit_CancelarClick(
  Sender: tObject);
begin
   Close;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.EdContaBancoOrigemExit(
  Sender: tObject);
begin
   EdContaBancoOrigem.Text := PreenchezeroEsquerda(EdContaBancoOrigem.Text,4);
   if (EdContaBancoOrigem.Text = '0000') then
      begin
         EdContaBancoOrigem.Clear;
         CbContaBancoOrigem.Text := '';
      end
   else
      begin
         CbContaBancoOrigem.TextoLocalizar := EdContaBancoOrigem.Text;
         CbContaBancoOrigem.Localizar := True;
         if (CbContaBancoOrigem.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               CbContaBancoOrigem.Text := '';
               EdContaBancoOrigem.SetFocus;
               EdContaBancoOrigem.SelectAll;
            end;
      end;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.EdContaBancoDestinoExit(
  Sender: tObject);
begin
   EdContaBancoDestino.Text := PreenchezeroEsquerda(EdContaBancoDestino.Text,4);
   if (EdContaBancoDestino.Text = '0000') then
      begin
         EdContaBancoDestino.Clear;
         CbContaBancoDestino.Text := '';
      end
   else
      begin
         CbContaBancoDestino.TextoLocalizar := EdContaBancoDestino.Text;
         CbContaBancoDestino.Localizar := True;
         if (CbContaBancoDestino.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               CbContaBancoDestino.Text := '';
               EdContaBancoDestino.SetFocus;
               EdContaBancoDestino.SelectAll;
            end;
      end;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.CbContaBancoOrigemChange(Sender: TObject);
var
  texto :string;
begin
  if (CbContaBancoOrigem.idRetorno <> '') and (CbContaBancoDestino.idRetorno <> '') then
  begin
  //Transferência da conta "0001 - Banco do Brasil" para "0003 - Itaú".

    texto := CbContaBancoOrigem.CDS.FieldByName('BAN_CODIGO').AsString + '-' +
      CbContaBancoOrigem.CDS.FieldByName('BAN_APELIDO').AsString  + ' para '+
      CbContaBancoDestino.CDS.FieldByName('BAN_CODIGO').AsString + '-' +    CbContaBancoDestino.CDS.FieldByName('BAN_APELIDO').AsString;
     if (Length(texto)>52) then
     begin
      texto :=  'Transf. '+ CbContaBancoOrigem.CDS.FieldByName('BAN_CODIGO').AsString + '-' +
        copy(CbContaBancoOrigem.CDS.FieldByName('BAN_APELIDO').AsString,1,18)  + ' para '+
        CbContaBancoDestino.CDS.FieldByName('BAN_CODIGO').AsString + '-' +
        copy(CbContaBancoDestino.CDS.FieldByName('BAN_APELIDO').AsString,1,18);
     end
     else
     if  (Length(texto)>44) and (Length(texto)<53) then
       texto := 'Transf. '+texto
     else if (Length(texto)>37) and (Length(texto)<44) then
       texto := 'Transf. de conta '+texto
     else
       texto := 'Transferência de conta '+texto;
     EdObservacao.Text := texto;
  end;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.CbContaBancoOrigemSelect(
  Sender: tObject);
begin
     if (CbContaBancoOrigem.CodigoLista = '') or (CbContaBancoOrigem.Text = '') then
      begin
           CbContaBancoOrigem.Text := '';
           EdContaBancoOrigem.Text := '';
      end
      else
      begin
         EdContaBancoOrigem.Text := CbContaBancoOrigem.CodigoLista;
      end;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.CbContaBancoDestinoSelect(
  Sender: tObject);
begin
   if (CbContaBancoDestino.CodigoLista = '') or (CbContaBancoDestino.Text = '') then
      begin
         CbContaBancoDestino.Text := '';
         EdContaBancoDestino.Text := '';
      end
   else
      begin
         EdContaBancoDestino.Text := CbContaBancoDestino.CodigoLista;
      end;

end;

procedure TFrmFinanceiroConciliacaoTransferencia.FormShow(Sender: tObject);
begin
   //combo
   CbContaBancoOrigem.CarregarCombo := False;
   CbContaBancoOrigem.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBancoOrigem.CarregarCombo := True;

   CbContaBancoDestino.CarregarCombo := False;
   CbContaBancoDestino.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBancoDestino.CarregarCombo := True;
   //
   RxDataLancamento.Date := Date;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.Bit_GravarClick(
  Sender: tObject);
begin
   if (EdContaBancoOrigem.Text = '') then
      begin
         uteis.aviso('Informe a Conta de Origem');
         EdContaBancoOrigem.SetFocus;
      end
   else
   if (EdContaBancoDestino.Text = '') then
      begin
         uteis.aviso('Informe a Conta de Destino');
         EdContaBancoDestino.SetFocus;
      end
   else
   if (EdContaBancoOrigem.Text = EdContaBancoDestino.Text) then
      begin
         uteis.aviso('As contas informadas são iguais, informe uma conta diferente');
         EdContaBancoDestino.SetFocus;
      end
   else
   if (RxDataLancamento.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe a data de lancamento');
         RxDataLancamento.SetFocus;
      end
   else
   if (CurValorTransferencia.Value <= 0) then
      begin
         uteis.aviso('Informe o valor da Transferência');
         CurValorTransferencia.SetFocus;
      end
   else
      begin
         if (uteis.confirmacao  ( 'Confirma a transferência?')=mrYes) then
            begin
               //Realiza Transferencia
               ContasTranferencia(EdContaBancoOrigem.Text,
                                  EdContaBancoDestino.Text,
                                  EdDocumento.Text,
                                  EdObservacao.Text,
                                  RxDataLancamento.Date,
                                  CurValorTransferencia.Value
                                 );
               uteis.aviso('Transferência realizada');
               try
                  FrmFinanceiroConciliacao.SQLCdsConciliacaoN.Close;
                  FrmFinanceiroConciliacao.SQLCdsConciliacaoN.Open;
               except

               end;
               try
                  FrmFinanceiroConciliacao.SQLCdsConciliacaoS.Close;
                  FrmFinanceiroConciliacao.SQLCdsConciliacaoS.Open;
               except

               end;
               FrmFinanceiroConciliacao.CalculaTotal;
               Close;
            end;
      end;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.btHistoricoClick(Sender: TObject);
begin
  if frmFinanceiroConciliacaoTransferenciaManutencaoHistorico = nil then
    frmFinanceiroConciliacaoTransferenciaManutencaoHistorico := TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.Create(Application);
  frmFinanceiroConciliacaoTransferenciaManutencaoHistorico.ShowModal;
end;

procedure TFrmFinanceiroConciliacaoTransferencia.btManutencaoClick(Sender: TObject);
begin
  if frmFinanceiroConciliacaoTransferenciaManutencao = nil then
    frmFinanceiroConciliacaoTransferenciaManutencao := TfrmFinanceiroConciliacaoTransferenciaManutencao.Create(Application);
  frmFinanceiroConciliacaoTransferenciaManutencao.ShowModal;
end;

end.
