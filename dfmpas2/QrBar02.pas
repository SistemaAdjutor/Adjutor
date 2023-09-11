unit QrBar02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TRelEtiqBarra02 = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
  private

  public

  end;

var
  RelEtiqBarra02: TRelEtiqBarra02;

implementation

uses Prd0010;

{$R *.DFM}


end.
 