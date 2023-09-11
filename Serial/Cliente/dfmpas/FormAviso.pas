unit FormAviso;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, StdCtrls, RxGIF, ExtCtrls, Buttons, FormApresKey;

type
  TFrmAviso = class(tFrmBase)
    Image1: TImage;
    StaticText1: TStaticText;
    Label1: TLabel;
    LblDias: TLabel;
    StaticText2: TStaticText;
    Btn_Fechar: TBitBtn;
    Bevel1: TBevel;
    BtnValidar: TBitBtn;
    procedure BtnValidarClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAviso: TFrmAviso;

implementation

{$R *.dfm}

procedure TFrmAviso.BtnValidarClick(Sender: TObject);
begin
   try
      FrmApresKey := TFrmApresKey.Create(Application);
      FrmApresKey.ShowModal;
   finally
      FrmApresKey.Destroy;
      FrmApresKey := nil;
   end;
   Close;
end;

procedure TFrmAviso.Btn_FecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmAviso.FormCreate(Sender: TObject);
begin
   {configuração da data}
   FormatSettings.FormatSettings.ShortDateFormat   := 'dd/mm/yyyy';
end;

end.
