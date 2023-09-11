unit uMolaToleranciaDiametroMedio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmMolaToleranciaDiametroMedio = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaMMO_GRAU: TIntegerField;
    cdsBuscaMTM_RELACAO_MIN: TFMTBCDField;
    cdsBuscaMTM_RELACAO_MAX: TFMTBCDField;
    cdsBuscaMTM_DM_DE: TFMTBCDField;
    cdsBuscaMTM_DM_ATE: TFMTBCDField;
    cdsBuscaMTM_INTERVALO: TFMTBCDField;
    cxgrd1DBTableView1MMO_GRAU: TcxGridDBColumn;
    cxgrd1DBTableView1MTM_RELACAO_MIN: TcxGridDBColumn;
    cxgrd1DBTableView1MTM_RELACAO_MAX: TcxGridDBColumn;
    cxgrd1DBTableView1MTM_DM_DE: TcxGridDBColumn;
    cxgrd1DBTableView1MTM_DM_ATE: TcxGridDBColumn;
    cxgrd1DBTableView1MTM_INTERVALO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMolaToleranciaDiametroMedio: TfrmMolaToleranciaDiametroMedio;

implementation

{$R *.dfm}

procedure TfrmMolaToleranciaDiametroMedio.btnSelectClick(Sender: TObject);
begin
//  inherited;
  Close;
end;

procedure TfrmMolaToleranciaDiametroMedio.FormShow(Sender: TObject);
begin
  inherited;
  cdsBusca.Open;
  pnlpn1.Height := 0;
  pnlFiltro.Height := 0;
end;

end.
