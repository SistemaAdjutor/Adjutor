unit UPivot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab;

type
  TfrmBaseDBFDAC1 = class(TfrmBaseDBFDAC)
    cxDBPivotGrid1: TcxDBPivotGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseDBFDAC1: TfrmBaseDBFDAC1;

implementation

{$R *.dfm}

end.
