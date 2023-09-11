unit QRClie01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelCliente01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCliente01: TRelCliente01;

implementation

   uses adj0001,GImpClie;

{$R *.DFM}

procedure TRelCliente01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
