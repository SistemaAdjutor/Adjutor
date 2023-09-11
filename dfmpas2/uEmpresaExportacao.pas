unit uEmpresaExportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmEmpresaExportacao = class(TfrmBaseDBFDAC)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsAux: TDataSource;
    cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1EMP_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1Selecionado: TcxGridDBColumn;
    dspAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure cxGrid1DBTableView1Column1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresaExportacao: TfrmEmpresaExportacao;

implementation

{$R *.dfm}

procedure TfrmEmpresaExportacao.cxGrid1DBTableView1Column1PropertiesChange(Sender: TObject);
begin
  inherited;
  if cdsAux.State <> dsEdit then
    cdsAux.Edit;
  cdsAux.FieldByName('Selecionado').AsString := cxGrid1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1Selecionado.Index];
  cdsAux.Post;
end;

procedure TfrmEmpresaExportacao.FormShow(Sender: TObject);
begin
  inherited;
  cdsAux.Open;
end;

end.
