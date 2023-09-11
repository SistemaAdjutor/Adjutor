unit QRRep01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelRepresentante01 = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRExpr3: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelRepresentante01: TRelRepresentante01;

implementation

{$R *.DFM}

uses Database ,ADJ0001;

procedure TRelRepresentante01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
