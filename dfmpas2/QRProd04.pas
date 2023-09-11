// Estoque financeiro
unit QRProd04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelProduto04 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
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
  RelProduto04: TRelProduto04;

implementation

{$R *.DFM}

uses Database, ADJ0001,GimpProd;

procedure TRelProduto04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
