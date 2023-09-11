unit uSelecionaAlmoxarifado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons;

type
  TfrmSelecionaAlmoxarifado = class(TfrmBaseDB)
    cbAlmoxarifado: TSgDbSearchCombo;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
    edAlmoxarifado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure cbAlmoxarifadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaAlmoxarifado: TfrmSelecionaAlmoxarifado;

implementation

{$R *.dfm}

procedure TfrmSelecionaAlmoxarifado.cbAlmoxarifadoChange(Sender: TObject);
begin
  inherited;
  if cbAlmoxarifado.CDS.Active then
    edAlmoxarifado.Text := cbAlmoxarifado.CDS.FieldByName('AMX_CODIGO').AsString
  else
    edAlmoxarifado.Clear;
end;

end.
