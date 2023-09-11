unit uSelecinaCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons;

type
  TfrmSelecionaCFOP = class(TfrmBaseDB)
    cbCFOP: TSgDbSearchCombo;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
    edNatureza: TEdit;
    procedure cbCFOPChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaCFOP: TfrmSelecionaCFOP;

implementation

{$R *.dfm}

procedure TfrmSelecionaCFOP.cbCFOPChange(Sender: TObject);
begin
  inherited;
  if cbCFOP.CDS.Active then
    edNatureza.Text := cbCFOP.CDS.FieldByName('OPE_NATUREZA').AsString
  else
    edNatureza.Clear;
end;

end.
