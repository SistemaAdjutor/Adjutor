// Estoque Antecipado
unit QRProd02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelProduto02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    Ltitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRLabel13: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelProduto02: TRelProduto02;

implementation

{$R *.DFM}

uses Database, ADJ0001,GimpProd;


procedure TRelProduto02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
