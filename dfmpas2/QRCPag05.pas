unit QRCPag05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConPagar05 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    TQPagarQR: TQuery;
    TQPagarQRPAG_CODIGO: TStringField;
    TQPagarQRPAG_NUMDOC: TStringField;
    TQPagarQRFOR_CODIGO: TStringField;
    TQPagarQRPAG_TIPO: TStringField;
    TQPagarQRPAG_DTEMIS: TDateTimeField;
    TQPagarQRPAG_VLNOTA: TFloatField;
    TQPagarQRPAG_BASEICMS: TFloatField;
    TQPagarQRPAG_ALIQICMS: TFloatField;
    TQPagarQRPAG_BASEIPI: TFloatField;
    TQPagarQRPAG_VL_IPI: TFloatField;
    TQPagarQRPAG_FAVORECIDO: TStringField;
    TQPagarQRPAG_LIVRO: TBooleanField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand4: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelConPagar05: TRelConPagar05;

implementation

uses ADJ0001;

{$R *.DFM}

procedure TRelConPagar05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia;
end;

end.
