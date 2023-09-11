unit IbgeForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.DB,
  Data.SqlExpr, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls;

type
  TfrmBaseDB1 = class(TfrmBaseDB)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseDB1: TfrmBaseDB1;

implementation

{$R *.dfm}

end.
