unit uJustificativa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvButton, JvNavigationPane, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrmjustificativa = class(TForm)
    GroupBox1: TGroupBox;
    MJustificativa: TMemo;
    Panel1: TPanel;
    edConta: TEdit;
    BitConfirmar: TJvNavPanelButton;
    BitCancelar: TJvNavPanelButton;
    procedure FormResize(Sender: TObject);
    procedure MJustificativaChange(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmjustificativa: Tfrmjustificativa;

implementation

{$R *.dfm}

procedure Tfrmjustificativa.BitCancelarClick(Sender: TObject);
begin
 ModalResult  := mrCancel;
end;

procedure Tfrmjustificativa.BitConfirmarClick(Sender: TObject);
begin
  if Length(MJustificativa.Text) < 15 then
    raise Exception.Create('Justificativa tem menos de 15 caracteres.');

  if Length(MJustificativa.Text) > 255 then
    raise Exception.Create('Justificativa tem mais de 255 caracteres.');
  ModalResult  := mrok;

end;

procedure Tfrmjustificativa.FormResize(Sender: TObject);
begin
  self.Height:=223 ;
  self.Width := 547;
end;

procedure Tfrmjustificativa.MJustificativaChange(Sender: TObject);
begin
  edConta.Text := IntToStr( Length(MJustificativa.Text) );
end;

end.
