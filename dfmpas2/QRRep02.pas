unit QRRep02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelRepresentante02 = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    AAA: TQRExpr;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    A: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelRepresentante02: TRelRepresentante02;

implementation

{$R *.DFM}

uses Database ,ADJ0001, Men0001;

procedure TRelRepresentante02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
