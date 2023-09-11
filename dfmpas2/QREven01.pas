unit QREven01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelEvento01 = class(TQuickRep)
    QRBand1: TQRBand;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
  private

  public

  end;

var
  RelEvento01: TRelEvento01;

implementation

{$R *.DFM}

uses Database;

end.
