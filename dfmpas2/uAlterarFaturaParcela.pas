unit uAlterarFaturaParcela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit,
  ComboBoxRW, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TformParcelaFatura = class(TfrmBaseDB)
    CurrcodBanco: TCurrencyEdit;
    CbBancos: TComboBoxRw;
    Label1: TLabel;
    edFPagto: TSgDbSearchCombo;
    Label2: TLabel;
    qFPagto: TSQLQuery;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    procedure CurrcodBancoExit(Sender: TObject);
    procedure CbBancosSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formParcelaFatura: TformParcelaFatura;

implementation

{$R *.dfm}
uses uteis;


procedure TformParcelaFatura.CbBancosSelect(Sender: TObject);
begin
  inherited;
  CurrCodBanco.Text := cbBancos.idRetorno;
end;

procedure TformParcelaFatura.CurrcodBancoExit(Sender: TObject);
begin
  inherited;
  if CurrCodBanco.Value <> 0 then
  begin
    //cbBancos.idRetorno := CurrCodBanco.text;
    if cbBancos.idRetorno='' then
      GeraException('Banco Não Localizado!');
  end;
end;

end.
