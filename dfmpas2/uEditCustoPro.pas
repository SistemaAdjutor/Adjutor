unit uEditCustoPro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB,
  JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls;

type
  TfrmCustoMesAno = class(TfrmBaseDBEditFDAC)
    cdsEditMESANO: TStringField;
    cdsEditCIO_CODIGO: TIntegerField;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditCIO_MES: TIntegerField;
    cdsEditCIO_ANO: TIntegerField;
    cdsEditSRV_CODIGO: TIntegerField;
    cdsEditCIO_IMPOSTOS: TBCDField;
    cdsEditCIO_MKP: TBCDField;
    cdsEditCIO_REPORTE: TBCDField;
    cdsEditCIO_PV: TBCDField;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrd1DBTableView1CIO_MES: TcxGridDBColumn;
    cxgrd1DBTableView1CIO_ANO: TcxGridDBColumn;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2SRV_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2SRV_NOME: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_CUSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_DESPESAS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_IMPOSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_MKP: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_PV: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    edMesAno: TEdit;
    cdsEditCIO_TOTAL: TFMTBCDField;
    cxgrd1DBTableView2CIO_TOTAL: TcxGridDBColumn;
    cdsEditSET_DESCRICAO: TStringField;
    cdsEditSET_CODIGO: TIntegerField;
    cdsEditCIO_CUSTOS: TBCDField;
    cdsEditCIO_DESPESAS: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsEditCIO_CUSTOSChange(Sender: TField);
    procedure cdsEditCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustoMesAno: TfrmCustoMesAno;

implementation

{$R *.dfm}

procedure TfrmCustoMesAno.cdsEditCalcFields(DataSet: TDataSet);
VAR reporte, pv : Double;
begin
  inherited;
  if not DataSet.FieldByName('CIO_REPORTE').IsNull and not DataSet.FieldByName('CIO_PV').IsNull then
    DataSet.FieldByName('CIO_TOTAL').AsFloat :=  DataSet.FieldByName('CIO_REPORTE').AsFloat *   DataSet.FieldByName('CIO_PV').AsFloat;
end;

procedure TfrmCustoMesAno.cdsEditCIO_CUSTOSChange(Sender: TField);
begin
  inherited;
  if   ((cdsEditCIO_CUSTOS.AsFloat > 0)
    or (cdsEditCIO_DESPESAS.AsFloat > 0)
    or (cdsEditCIO_IMPOSTOS.AsFloat > 0) )
    // and (cdsEditCIO_MKP.AsFloat <> 0)
  then
  begin
    cdsEditCIO_PV.AsFloat :=
      (cdsEditCIO_CUSTOS.AsFloat + cdsEditCIO_DESPESAS.AsFloat + cdsEditCIO_IMPOSTOS.AsFloat) *
      ((cdsEditCIO_MKP.AsFloat/100)+1)

  end;


end;

procedure TfrmCustoMesAno.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='CIO_CODIGO';
  CampoIDRetorno := 'MESANO';

	Tabela:='CUSTOINDUST';
  self.Constraints.MinHeight:= 359;
  self.Constraints.MinWidth:=990;
  self.Constraints.MaxHeight:= 0;
  TemDetalhe := false;
end;

procedure TfrmCustoMesAno.FormShow(Sender: TObject);
begin
  inherited;
  edMesAno.text := cdsEditCIO_MES.AsString +'/'+  cdsEditCIO_ANO.AsString;
end;

end.
