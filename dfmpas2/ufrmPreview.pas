unit ufrmPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Menus, ActnList,
  ExtCtrls, ppViewr, ppReport, ppPDFDevice, ppTypes, System.Actions,
  System.ImageList;

type
  TfrmPreview = class(TForm)
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ppViewer1: TppViewer;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    XT1: TMenuItem;
    ActionList1: TActionList;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltima: TAction;
    actMaisZoom: TAction;
    actMenosZoom: TAction;
    actImprimir: TAction;
    actSair: TAction;
    actTexto: TAction;
    actPDF: TAction;
    PDF1: TMenuItem;
    procedure actSairExecute(Sender: tObject);
    procedure actPrimeiroExecute(Sender: tObject);
    procedure actAnteriorExecute(Sender: tObject);
    procedure actProximoExecute(Sender: tObject);
    procedure actUltimaExecute(Sender: tObject);
    procedure actMaisZoomExecute(Sender: tObject);
    procedure actMenosZoomExecute(Sender: tObject);
    procedure actImprimirExecute(Sender: tObject);
    procedure actTextoExecute(Sender: tObject);
    procedure actPDFExecute(Sender: tObject);
  private
    { Private declarations }
    aReport: TppReport;
  public
    constructor Create(AOWner: TComponent; out appReport: TppReport); reintroduce;
  end;

var
  frmPreview: TfrmPreview;

Procedure RBuilderPreview( appReport: TppReport );
var tcr: tFrmPreview;
begin
     tcr:= tFrmPreview.Create(application, appReoprt);
     try
        tcr.ShowModal;
     finally
            FreeAndNil( tcr );
     end;
end;

implementation

{$R *.dfm}

procedure TfrmPreview.actSairExecute(Sender: tObject);
begin
  Close;
end;

procedure TfrmPreview.actPrimeiroExecute(Sender: tObject);
begin
  ppViewer1.FirstPage;
end;

procedure TfrmPreview.actAnteriorExecute(Sender: tObject);
begin
  ppViewer1.PriorPage;
end;

procedure TfrmPreview.actProximoExecute(Sender: tObject);
begin
  ppViewer1.NextPage;
end;

procedure TfrmPreview.actUltimaExecute(Sender: tObject);
begin
  ppViewer1.LastPage;
end;

procedure TfrmPreview.actMaisZoomExecute(Sender: tObject);
begin
  ppViewer1.ZoomPercentage := ppViewer1.ZoomPercentage + 10;
end;

procedure TfrmPreview.actMenosZoomExecute(Sender: tObject);
begin
  ppViewer1.ZoomPercentage := ppViewer1.ZoomPercentage - 10;
end;

procedure TfrmPreview.actImprimirExecute(Sender: tObject);
begin
  ppViewer1.Print;
end;

procedure TfrmPreview.actTextoExecute(Sender: tObject);
begin
  with aReport do
  begin
    AllowPrintToFile := True;
    DeviceType := dtTextFile;
    TextFileName := 'arquivo.txt';
    Print;
  end;
end;

constructor TfrmPreview.Create(AOWner: TComponent; out appReport: TppReport);
begin
  inherited Create(AOWner);
  aReport := appReport;
  ppViewer1.Report := appReport;
  appReport.PrintToDevices;
end;

procedure TfrmPreview.actPDFExecute(Sender: tObject);
begin
  with aReport do
  begin
    AllowPrintToFile := True;
    DeviceType := dtPDF;
    TextFileName := 'arquivo.pdf';
    Print;
  end;
end;

end.
