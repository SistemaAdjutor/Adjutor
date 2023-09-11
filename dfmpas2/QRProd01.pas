// Estoque Fisico
unit QRProd01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelProduto01 = class(TQuickRep)
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
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr3: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    Ltitulo2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelProduto01: TRelProduto01;

implementation

{$R *.DFM}

USES Database, ADJ0001,GimpProd;


procedure TRelProduto01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;



end.
