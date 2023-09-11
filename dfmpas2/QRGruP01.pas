 unit QRGruP01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelGruProdu01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelGruProdu01: TRelGruProdu01;

implementation

{$R *.DFM}

uses Database,ADJ0001;

procedure TRelGruProdu01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia
end;

end.
