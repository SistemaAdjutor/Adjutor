unit QrMCel05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, QRExport;

type
  TRelCelRecibo = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRTextFilter1: TQRTextFilter;
    TQMovRecibo: TQuery;
    TQMovReciboPRD_REFER: TStringField;
    TQMovReciboOSV_QTDE: TFloatField;
    TQMovReciboOSV_QTDECONC: TFloatField;
    TQMovReciboOSV_QTDEDEFE: TFloatField;
    TQMovReciboOSV_VALORPECA: TFloatField;
    TQMovReciboOSV_VALORDEFE: TFloatField;
    TQMovReciboCEM_DTENTROU: TDateTimeField;
    TQMovReciboCEM_DTCONCLUIU: TDateTimeField;
    TQMovReciboCel_mov03OSV_CODIGO: TStringField;
    TQMovReciboOsv0001OSV_CODIGO: TStringField;
    TQMovReciboCel_mov03CEL_CODIGO: TStringField;
    TQMovReciboOSV_PRDDESCRI: TStringField;
    TQMovReciboCel0000CEL_CODIGO: TStringField;
    TQMovReciboCEL_NOME: TStringField;
    LabelEmpresa: TQRLabel;
    QRLabelTitu1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCelRecibo: TRelCelRecibo;

implementation

{$R *.DFM}

procedure TRelCelRecibo.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
