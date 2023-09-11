unit QRClie05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCliente05 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    TQFatParcel: TQuery;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    TQFatParcelAtraso_CC: TStringField;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQFatParcelFAT_PC01FAT_CODIGO: TStringField;
    TQFatParcelFPC_NUMER: TStringField;
    TQFatParcelFPC_DTEMIS: TDateTimeField;
    TQFatParcelFPC_VENCTO: TDateTimeField;
    TQFatParcelFPC_PAGTO: TDateTimeField;
    TQFatParcelFPC_VLPARC: TFloatField;
    TQFatParcelFPC_VLPAGO: TFloatField;
    TQFatParcelCLI_CODIGO: TStringField;
    TQFatParcelFPC_STATUS: TStringField;
    TQFatParcelFat0000FAT_CODIGO: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure TQFatParcelCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCliente05: TRelCliente05;

implementation

{$R *.DFM}

Uses Database,DataQuery,adj0001;

procedure TRelCliente05.TQFatParcelCalcFields(DataSet: TDataSet);
var
wAux:string;
begin
wAux:=FloatToStr(Int(TQFatParcelFPC_PAGTO.Value - TQFatParcelFPC_VENCTO.Value));
// se data de pagto nao foi preenchida diminuo pela data de hoje
If TQFatParcelFPC_PAGTO.IsNull then
  wAux:=FloatToStr(Int(Now -TQFatParcelFPC_VENCTO.Value));
// se pagou em dia ou adiantado
if wAux <= '2' then     // até 2 dias nao considero atraso(final de semana)
   wAux:='';

TQFatParcelAtraso_CC.Value := wAux;
end;

procedure TRelCliente05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
