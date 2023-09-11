unit uUndTributaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfrmUndTributaria = class(TForm)
    Label140: TLabel;
    cxComboBox1: TcxComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUndTributaria: TfrmUndTributaria;

implementation

{$R *.dfm}

procedure TfrmUndTributaria.FormResize(Sender: TObject);
begin
  self.Width := 247;
  self.Height := 122;
end;

end.
