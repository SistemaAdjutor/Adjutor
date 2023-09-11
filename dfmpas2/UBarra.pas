unit UBarra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TfrmBarra = class(TForm)
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBarra: TfrmBarra;

implementation

{$R *.dfm}

procedure TfrmBarra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;
end;

procedure TfrmBarra.FormDestroy(Sender: TObject);
begin
  frmBarra := nil;
end;

end.
