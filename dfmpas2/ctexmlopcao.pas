unit ctexmlopcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons, iniciodb, uteis;

type
  TfrmCtexmlopcao = class(TForm)
    JvFilenameEdit1: TJvFilenameEdit;
    btnBit_Gravar: TBitBtn;
    btnBit_Cancelar: TBitBtn;
    procedure btnBit_CancelarClick(Sender: TObject);
    procedure btnBit_GravarClick(Sender: TObject);
  private
    { Private declarations }
  public
   scaminho :string;
   resultado : integer;
  end;

var
  frmCtexmlopcao: TfrmCtexmlopcao;

implementation

{$R *.dfm}

procedure TfrmCtexmlopcao.btnBit_CancelarClick(Sender: TObject);
begin
  resultado := mrCancel;
  close;

end;

procedure TfrmCtexmlopcao.btnBit_GravarClick(Sender: TObject);
begin
  if (JvFilenameEdit1.FileName <> '')and(UpperCase(ExtractFileExt(JvFilenameEdit1.FileName)) = '.XML') then
  begin
    scaminho := JvFilenameEdit1.FileName;
    resultado := mrOk;
    close;
  end
  else
       uteis.aviso('Selecione uma Ct-e');
end;

end.
