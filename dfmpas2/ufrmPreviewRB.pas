unit ufrmpreviewrb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseForm,
  Dialogs, ComCtrls, ToolWin, ImgList, Menus, ActnList,
  ExtCtrls, ppViewr, ppReport, ppPDFDevice, ppTypes, System.Actions,
  System.ImageList, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ;

type
  TfrmPreviewrb = class(TfrmBase)
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
    Excel1: TMenuItem;
    N1: TMenuItem;
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
    procedure Excel1Click(Sender: tObject);
  private
    { Private declarations }
    aReport: TppReport;
  public
    constructor Create(AOWner: TComponent; out appReport: TppReport); reintroduce;
  end;

var
  frmPreviewrb: TfrmPreviewrb;

Procedure RBuilderPreview( appReport: TppReport );

implementation

{$R *.dfm}

Procedure RBuilderPreview( appReport: TppReport );
var tcr: tFrmPreviewRB;
begin
     if appReport.DeviceType = 'Printer' then
        appReport.Print
     Else
     Begin

         tcr:= tFrmPreviewRB.Create(application, appReport);
         try
            tcr.ShowModal;
         finally
                FreeAndNil( tcr );
         end;
     end;
end;

procedure TfrmPreviewrb.actSairExecute(Sender: tObject);
begin
  Close;
end;

procedure TfrmPreviewrb.actPrimeiroExecute(Sender: tObject);
begin
  ppViewer1.FirstPage;
end;

procedure TfrmPreviewrb.actAnteriorExecute(Sender: tObject);
begin
  ppViewer1.PriorPage;
end;

procedure TfrmPreviewrb.actProximoExecute(Sender: tObject);
begin
  ppViewer1.NextPage;
end;

procedure TfrmPreviewrb.actUltimaExecute(Sender: tObject);
begin
  ppViewer1.LastPage;
end;

procedure TfrmPreviewrb.actMaisZoomExecute(Sender: tObject);
begin
  ppViewer1.ZoomPercentage := ppViewer1.ZoomPercentage + 10;
end;

procedure TfrmPreviewrb.actMenosZoomExecute(Sender: tObject);
begin
  ppViewer1.ZoomPercentage := ppViewer1.ZoomPercentage - 10;
end;

procedure TfrmPreviewrb.actImprimirExecute(Sender: tObject);
begin
  ppViewer1.Print;
end;

procedure TfrmPreviewrb.actTextoExecute(Sender: tObject);
begin
  with aReport do
  begin
    AllowPrintToFile := True;
    DeviceType := 'TextFile';
    TextFileName := ChangeFileExt( TextFileName,'.txt') ;
    Print;
  end;
end;

constructor TfrmPreviewrb.Create(AOWner: TComponent; out appReport: TppReport);
begin
  inherited Create(AOWner);
  aReport := appReport;
  ppViewer1.Report := appReport;
  appReport.PrintToDevices;
end;

procedure TfrmPreviewrb.Excel1Click(Sender: tObject);
begin
  with aReport do
  begin
       AllowPrintToFile := True;
       DeviceType := 'XLSData';
       TextFileName := ChangeFileExt( TextFileName,'.XLS') ;
       Print;
  end;

end;

procedure TfrmPreviewrb.actPDFExecute(Sender: tObject);
begin
    with aReport do
    begin
         AllowPrintToFile := True;
         DeviceType := 'PDF';
         TextFileName := ChangeFileExt( TextFileName,'.PDF') ;
         Print;
    end;
end;

end.
