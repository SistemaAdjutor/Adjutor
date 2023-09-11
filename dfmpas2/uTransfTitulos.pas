unit uTransfTitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, SgDbSeachComboUnit, ComboBoxRW, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Data.DB, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora;

type
  TfrmTransfTitulo = class(TfrmBaseDB)
    Label4: TLabel;
    CbxCarteira: TComboBox;
    Label18: TLabel;
    Label14: TLabel;
    CbxTipoDoc: TComboBox;
    CurrcodBanco: TCurrencyEdit;
    CbBancos: TComboBoxRw;
    btnconfirmar: TButton;
    Button2: TButton;
    procedure CurrcodBancoExit(Sender: TObject);
    procedure CbBancosSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfTitulo: TfrmTransfTitulo;

implementation

{$R *.dfm}

uses uteis;

procedure TfrmTransfTitulo.btnconfirmarClick(Sender: TObject);
begin
  if (CbBancos.idRetorno = '') OR  (CbxCarteira.ItemIndex = -1)  or (CbxTipoDoc.ItemIndex = -1) then
  begin
    raise Exception.Create('Todos os campos devem ser preenchidos')
  end
  else
  begin
    Self.ModalResult := mrOk;
    inherited;

  end;


end;

procedure TfrmTransfTitulo.CbBancosSelect(Sender: TObject);
begin
  inherited;
  if CbBancos.idRetorno <> '' then
    CurrcodBanco.Text := CbBancos.idRetorno
  Else
   CurrcodBanco.Clear;
end;

procedure TfrmTransfTitulo.CurrcodBancoExit(Sender: TObject);
begin
  inherited;
  if TRIM(CurrcodBanco.Text) <> '' then
    CbBancos.idRetorno := strzero(CurrcodBanco.Text,4)
  else
    CbBancos.Clear;
end;

procedure TfrmTransfTitulo.FormShow(Sender: TObject);
begin
  inherited;
  CurrcodBanco.SetFocus;
end;

end.
