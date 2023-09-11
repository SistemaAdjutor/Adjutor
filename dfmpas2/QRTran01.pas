unit QRTran01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelTransportadora01 = class(TQuickRep)
    QRBand1: TQRBand;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    LabelEmpresa: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelTransportadora01: TRelTransportadora01;

implementation

{$R *.DFM}

uses Database,ADJ0001, Men0001;

procedure TRelTransportadora01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
