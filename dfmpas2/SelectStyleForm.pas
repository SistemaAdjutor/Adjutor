unit SelectStyleForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, inifiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Themes, VCL.Styles;

type
  TFrmSelectStyle = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: tObject);
    procedure Button2Click(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelectStyle: TFrmSelectStyle;

implementation

{$R *.dfm}

procedure TFrmSelectStyle.Button1Click(Sender: tObject);
var ArquivoIni:TiniFile;
    Path:String;

begin

    self.Refresh;
    application.ProcessMessages;
    Path := ExtractFilePath(Application.ExeName)+'\Adjutor.ini';
    if FileExists(Path)then
    begin
       ArquivoIni := TiniFile.Create(Path);
       ArquivoIni.WriteString('APARENCIA','estilo', combobox1.ItemS[combobox1.ItemIndex]);
    end;
    tStyleManager.TrySetStyle( combobox1.Text );

end;

procedure TFrmSelectStyle.Button2Click(Sender: tObject);
begin
     Close;
end;

procedure TFrmSelectStyle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmSelectStyle.FormCreate(Sender: tObject);
var styles: string;
begin
     ComboBox1.items.BeginUpdate;
     ComboBox1.items.clear;
     for styles in tStyleManager.StyleNames do
       ComboBox1.Items.Add(styles);
     combobox1.Sorted:=true;
     combobox1.ItemIndex:=combobox1.Items.IndexOf(tStyleManager.ActiveStyle.NAME);
     ComboBox1.items.EndUpdate;
end;

procedure TFrmSelectStyle.FormDestroy(Sender: TObject);
begin
     FrmSelectStyle := Nil;
end;

procedure TFrmSelectStyle.FormResize(Sender: TObject);
begin
     Height := 211;
     Width := 461;
end;

end.
