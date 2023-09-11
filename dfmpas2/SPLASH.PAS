unit Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RXCtrls, Gauges, RxGIF, jpeg;

type
  TFrmSplash = class(TForm)
    Panel1: TPanel;
    ImgLotipo1: TImage;
    RxLabel2: TRxLabel;
    Panel2: TPanel;
    GaugeAbertura: TGauge;
    RxLabel4: TRxLabel;
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

uses Men0001;

{$R *.DFM}


procedure TFrmSplash.FormShow(Sender: tObject);
 Var
 Path:string;
begin
   GaugeAbertura.MinValue := 0;
   GaugeAbertura.MaxValue := 4;
   GaugeAbertura.Progress := 0;
   Path := ExtractFilePath(Application.ExeName)+'logo.jpg';
   GaugeAbertura.Progress := GaugeAbertura.Progress +1;
   if FileExists(Path )then
      begin
         GaugeAbertura.Progress := GaugeAbertura.Progress +1;
         ImgLotipo1.Picture.LoadFromFile(Path);
      end
   else
      begin
         GaugeAbertura.Progress := GaugeAbertura.Progress +1;
         MessageDlg('Arquivo não encotrado...', mtInformation, [mbOk], 0);
      end;

end;



end.
