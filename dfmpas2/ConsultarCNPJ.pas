unit ConsultarCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, ACBrBase, ACBrSocket, ACBrConsultaCNPJ,
  vcl.imaging.PngImage;

type
  TFrmConsultarCNPJ = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ACBrConsultaCNPJ_cliente: TACBrConsultaCNPJ;
    Timer1: TTimer;
    Label1: TLabel;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fCNPJ: string;
    fImportar : boolean;
    procedure setCNPJ (Const AValue: string );
  public
   property CNPJ : string read fCNPJ write setCNPJ;
   property Importar: boolean read fImportar write fImportar;
  end;

var
  FrmConsultarCNPJ: TFrmConsultarCNPJ;

implementation

{$R *.dfm}

{ TFrmConsultarCNPJ }

procedure TFrmConsultarCNPJ.ButBuscarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    Importar := False;
    if ACBrConsultaCNPJ_cliente.Consulta( CNPJ, EditCaptcha.Text, true) then
    begin
      if (MessageDlg('Encontrou . Deseja completar as informações do cadastro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        Importar := True;
    end
    else
       MessageDlg('Não encontrou CNPJ', mtInformation, [mbOK], 0);
    close;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;

end;

procedure TFrmConsultarCNPJ.FormShow(Sender: TObject);
begin
Timer1.Enabled:= True;
end;

procedure TFrmConsultarCNPJ.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  png: TPngImage;
begin
  Stream:= TMemoryStream.Create;
  try
    ACBrConsultaCNPJ_cliente.Captcha(Stream);


    png:= TPngImage.Create;
    try
      png.LoadFromStream(Stream);
      Image1.Picture.Assign(png);
    finally
      png.Free;
    end;

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;

end;

procedure TFrmConsultarCNPJ.setCNPJ(const AValue: string);
begin
 fCNPJ := AValue;
end;

procedure TFrmConsultarCNPJ.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
end;

end.
