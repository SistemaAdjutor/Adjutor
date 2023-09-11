unit usobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, JvExControls, JvLinkLabel;

type
  TfrmSobre = class(TForm)
    Image1: TImage;
    RxLversao: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Button1: TButton;
    Label1: TLabel;
    LinkLabel1: TLinkLabel;
    StaticText1: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    llicencas: TLabel;
    lvalidade: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

uses iniciodb, val0002;

procedure TfrmSobre.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSobre.FormResize(Sender: TObject);
begin
 Self.Height := 469;
 self.Width := 398;
end;

procedure TfrmSobre.FormShow(Sender: TObject);
begin
  RxLversao.Caption := DBInicio.Versao.VERSAOCOMPLETO;
  llicencas.Caption :=  IntToStr(Conexoes(DBInicio.Empresa.CHAVE));
  lvalidade.Caption := DateToStr(Validade(dbInicio.Empresa.CHAVE));
end;

end.
