unit MemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmMemo = class(TfrmBase)
    Memo1: TMemo;
    Panel1: TPanel;
    btnCancelar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure SetMemoText(const Value: String);
    procedure SetMemoAdd(const Value: String);
    { Private declarations }
  public
    Property Text: String Write SetMemoText;
    Property Add: String Write SetMemoAdd;
  end;

var
  frmMemo: TfrmMemo;

implementation

{$R *.dfm}

procedure TfrmMemo.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMemo.FormCreate(Sender: TObject);
begin
  inherited;
  Memo1.Clear;
  Caption:='Avisos';
end;

procedure TfrmMemo.SetMemoAdd(const Value: String);
begin
     memo1.Lines.ADD( Value );
end;

procedure TfrmMemo.SetMemoText(const Value: String);
begin
     memo1.Lines.Text := Value;
end;

end.
