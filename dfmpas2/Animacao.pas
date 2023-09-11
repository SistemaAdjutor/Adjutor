unit Animacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvAnimatedImage, JvGIFCtrl, Vcl.ExtCtrls, Vcl.StdCtrls, JvComponentBase, JvThread;

type
  TfmAnimacao = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnimacao: TfmAnimacao;

implementation

{$R *.dfm}


procedure TfmAnimacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
end;

procedure TfmAnimacao.FormCreate(Sender: TObject);
begin
    Application.ProcessMessages;
    Panel1.Left := (Screen.Width div 2) - (Panel1.Width div 2);
    Panel1.Top := (Screen.Height div 2) - (Panel1.Height div 2);
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
end;

procedure TfmAnimacao.FormDestroy(Sender: TObject);
begin
  fmAnimacao := nil;
end;

end.
