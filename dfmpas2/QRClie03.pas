unit QRClie03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCliente03 = class(TQuickRep)
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCliente03: TRelCliente03;

implementation

uses ADJ0001,GImpClie;

{$R *.DFM}

procedure TRelCliente03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
