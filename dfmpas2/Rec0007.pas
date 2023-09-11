unit Rec0007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RXSpin, DB, DBClient, Vcl.Mask;

type
  TFormContasReceberRepetir = class(TForm)
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    GroupBox3: TGroupBox;
    RbMensal: TRadioButton;
    RbSemanal: TRadioButton;
    RbIntervalo: TRadioButton;
    RxIntervalo: TRxSpinEdit;
    RxsQunatidade: TRxSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DsParcela: TDataSource;
    CdsParcela: TClientDataSet;
    CdsParcelaVencimento: TDateField;
    CdsParcelaValor: TFloatField;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure RbMensalEnter(Sender: tObject);
    procedure RbSemanalEnter(Sender: tObject);
    procedure RbIntervaloEnter(Sender: tObject);
    procedure RxsQunatidadeChange(Sender: tObject);
    procedure RxIntervaloChange(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CdsParcelaBeforePost(DataSet: TDataSet);
    procedure CdsParcelaBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Layout;
    procedure Parcela;
    procedure GravaParcelas;
  public
    { Public declarations }
  end;

var
  FormContasReceberRepetir: TFormContasReceberRepetir;

implementation

uses
  Rec0001, RWFunc, uteis, iniciodb;

{$R *.dfm}






procedure TFormContasReceberRepetir.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasReceberRepetir.Layout;
begin
   RxIntervalo.Enabled := RbIntervalo.Checked;
   Parcela;
end;

procedure TFormContasReceberRepetir.RbMensalEnter(Sender: tObject);
begin
   RbMensal.Checked := True;
   Layout;
end;

procedure TFormContasReceberRepetir.RbSemanalEnter(Sender: tObject);
begin
   RbSemanal.Checked := True;
   Layout;
end;

procedure TFormContasReceberRepetir.RbIntervaloEnter(Sender: tObject);
begin
   RbIntervalo.Checked := True;
   Layout;
end;

procedure TFormContasReceberRepetir.Parcela;
var
   i:Integer;
   dDataVencimento:TDate;
begin
   i := 1;
   formContasReceber.CdsParcelasGrid.First;
   dDataVencimento := formContasReceber.CdsParcelasGridFPC_VENCTO.AsDateTime;
   if (CdsParcela.Active)and(RxIntervalo.Text <> '')and(RxsQunatidade.Text <> '') then
      begin
         CdsParcela.EmptyDataSet;
         while (i <= RxsQunatidade.AsInteger) do
            begin
               if (RbMensal.Checked) then
                  dDataVencimento := AddMonth(dDataVencimento,1)
               else
               if (RbSemanal.Checked) then
                  dDataVencimento := dDataVencimento + 7
               else
                  dDataVencimento := dDataVencimento + RxIntervalo.AsInteger;
               CdsParcela.Append;
               CdsParcelaVencimento.AsDateTime := dDataVencimento;
               CdsParcelaValor.AsCurrency := formContasReceber.CdsParcelasGridFPC_VLPARC.AsCurrency;
               CdsParcela.Post;
               Inc(i);
            end;
      end;
end;

procedure TFormContasReceberRepetir.RxsQunatidadeChange(Sender: tObject);
begin
   Parcela;
end;

procedure TFormContasReceberRepetir.RxIntervaloChange(Sender: tObject);
begin
   Parcela;
end;

procedure TFormContasReceberRepetir.Bit_GravarClick(Sender: tObject);
begin
   GravaParcelas;
end;

procedure TFormContasReceberRepetir.GravaParcelas;
begin
   if (CdsParcela.IsEmpty) then
      begin
         uteis.aviso('Não existe parcela a ser lançada');
         RxsQunatidade.SetFocus;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma a Replicação?'))=mrYes then
            begin
               //
            end;
      end;

end;

procedure TFormContasReceberRepetir.FormShow(Sender: tObject);
begin
   CdsParcela.CreateDataSet;
   RbMensal.Checked := True;
   Layout;
end;

procedure TFormContasReceberRepetir.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsParcela.EmptyDataSet;
end;

procedure TFormContasReceberRepetir.CdsParcelaBeforePost(
  DataSet: TDataSet);
begin
   if (CdsParcelaValor.AsCurrency <= 0) then
      CdsParcela.Cancel;

end;

procedure TFormContasReceberRepetir.CdsParcelaBeforeInsert(
  DataSet: TDataSet);
begin
   CdsParcela.Cancel;
end;

end.
