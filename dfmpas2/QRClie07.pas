unit QRClie07;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelCliMail = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCliMail: TRelCliMail;

implementation

uses GImpClie, ADJ0001;

{$R *.DFM}

procedure TRelCliMail.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
