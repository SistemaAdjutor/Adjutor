unit CustomRBuilderPreviewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, ppViewr, ppComm,
  ppEndUsr;

type
  TfrmBase1 = class(TfrmBase)
    ppDesigner1: TppDesigner;
    ppViewer1: TppViewer;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase1: TfrmBase1;

implementation

{$R *.dfm}

end.
