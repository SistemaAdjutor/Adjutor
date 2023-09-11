unit QRCPag04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConPagar04 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    TQPagarQr: TQuery;
    DsQPagarQr: TDataSource;
    TQPagarQrPag_pc01PAG_CODIGO: TStringField;
    TQPagarQrPPC_VENCTO: TDateTimeField;
    TQPagarQrPPC_PAGTO: TDateTimeField;
    TQPagarQrPPC_VLPARC: TFloatField;
    TQPagarQrPPC_VLPAGO: TFloatField;
    TQPagarQrPag_pc01CCT_CODIGO: TStringField;
    TQPagarQrPag0000PAG_CODIGO: TStringField;
    TQPagarQrPAG_DTEMIS: TDateTimeField;
    TQPagarQrPag0000CCT_CODIGO: TStringField;
    TQPagarQrCct_0000CCT_CODIGO: TStringField;
    TQPagarQrCCT_DESCRI: TStringField;
    TQPagarQrCEC_CODIGO: TStringField;
    TQPagarQrCEC_DESCRI: TStringField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    TQPagarQrCCT_PROVISAO: TFloatField;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand5: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand6: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelConPagar04: TRelConPagar04;

implementation

uses ADJ0001;

{$R *.DFM}

procedure TRelConPagar04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
  LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
