unit val0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, JvSpin, JvExMask, JvToolEdit,
  Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCnpj: TMaskEdit;
    Validade: TJvDateEdit;
    Conexoes: TJvSpinEdit;
    Label4: TLabel;
    Valor1: TMaskEdit;
    Valor2: TMaskEdit;
    Valor3: TMaskEdit;
    Valor4: TMaskEdit;
    Valor5: TMaskEdit;
    Bit_Gravar: TBitBtn;
    Image2: TImage;
    Panel1: TPanel;
    Image4: TImage;
    LblLicencas: TLabel;
    Label5: TLabel;
    Bit_Sair: TBitBtn;
    procedure Bit_GravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses val0002;

{$R *.dfm}

procedure TForm1.Bit_GravarClick(Sender: TObject);
var
  sContraSenha:String;
begin
  if (EdCnpj.Text = '') then
    begin
      ShowMessage('Informe o CNPJ');
      EdCnpj.SetFocus;
      EdCnpj.SelectAll;
    end
  else
  if (Validade.Date < Now) then
    begin
      ShowMessage('A Data de Validade tem que ser superior a data de Hoje');
      Validade.SetFocus;
      Validade.SelectAll;
    end
  else
    begin
      sContraSenha := LicencaCriptografa(PreenchezeroEsquerda(EdCnpj.Text,14)+
                                         FormatDateTime('DDMMYYYY',Validade.Date)+
                                         PreenchezeroEsquerda(IntToStr(Conexoes.AsInteger),3));
      Valor1.Text := COPY(sContraSenha,0,6);
      Valor2.Text := COPY(sContraSenha,7,6);
      Valor3.Text := COPY(sContraSenha,13,6);
      Valor4.Text := COPY(sContraSenha,19,6);
      Valor5.Text := COPY(sContraSenha,25,6);
    end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Validade.Date := Date + 30;
end;

procedure TForm1.Bit_SairClick(Sender: TObject);
begin
  Close;
end;

end.
