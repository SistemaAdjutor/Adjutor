unit uDataSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmDataSimples = class(TForm)
    lbData: TLabel;
    Data: TJvDateEdit;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataSimples: TfrmDataSimples;

implementation

{$R *.dfm}

procedure TfrmDataSimples.FormCreate(Sender: TObject);
begin
  data.Date := Now;
  Left := (Screen.Width div 2) - (Width div 2);
  Top := (Screen.Height div 2) - (Height div 2);
end;

procedure TfrmDataSimples.FormShow(Sender: TObject);
begin
  Data.SetFocus;
end;

end.
