unit uRecorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird,
  Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, SgDbSeachComboUnit;

type
  TfrmRecorrencia = class(TfrmBaseDB)
    gbRecorrencia: TGroupBox;
    Label5: TLabel;
    cbContaFinanceiraRecorrencia: TSgDbSearchCombo;
    edTaxaRecorrencia: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure edTaxaRecorrenciaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecorrencia: TfrmRecorrencia;

implementation

{$R *.dfm}

uses uPedidoPesqDoacao;

procedure TfrmRecorrencia.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cbContaFinanceiraRecorrencia.idRetorno = '' then
  begin
    MessageDlg('Informe a Conta Financeira da recorrência.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    Exit;
  end;
  ModalResult := mrOk;

end;

procedure TfrmRecorrencia.edTaxaRecorrenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, '-', FormatSettings.DecimalSeparator]) then
  begin
    Key := #0;
    Exit;
  end;

  // Apenas um sinal de menos e somente no início
  if (Key = '-') and
     ((TEdit(Sender).SelStart <> 0) or (Pos('-', TEdit(Sender).Text) > 0)) then
    Key := #0;

  // Apenas um separador decimal
  if (Key = FormatSettings.DecimalSeparator) and
     (Pos(FormatSettings.DecimalSeparator, TEdit(Sender).Text) > 0) then
    Key := #0;
end;

end.
