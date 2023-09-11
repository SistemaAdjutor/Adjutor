unit uManifestar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmManifestar = class(TForm)
    rgTipoManifesto: TRadioGroup;
    btnConfirmar: TButton;
    Button2: TButton;
    gbJustificativa: TGroupBox;
    MJustificativa: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rgTipoManifestoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManifestar: TFrmManifestar;

implementation

{$R *.dfm}

procedure TFrmManifestar.btnConfirmarClick(Sender: TObject);
begin
  if rgTipoManifesto.ItemIndex = -1 then
    raise Exception.Create('Selecione um tipo');
  if (rgTipoManifesto.ItemIndex = 2) then
  begin
    if Length(MJustificativa.Text) < 15 then
      raise Exception.Create('Justificativa tem menos de 15 caracteres.');

    if Length(MJustificativa.Text) > 255 then
      raise Exception.Create('Justificativa tem mais de 255 caracteres.');

  end;
  ModalResult := mrOk;


end;

procedure TFrmManifestar.Button2Click(Sender: TObject);
begin
  Close;
  ModalResult := mrCancel;
end;

procedure TFrmManifestar.rgTipoManifestoClick(Sender: TObject);
begin
  gbJustificativa.Visible := rgTipoManifesto.ItemIndex = 2;
end;

end.
