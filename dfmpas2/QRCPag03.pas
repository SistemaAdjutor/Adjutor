unit QRCPag03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConPagar03 = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    TQPagarQr: TQuery;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel19: TQRLabel;
    QRBandDetail: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRGrpConta: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRBandConta: TQRBand;
    TQPagarQrPag_pc01PAG_CODIGO: TStringField;
    TQPagarQrPPC_NUMER: TStringField;
    TQPagarQrPPC_VENCTO: TDateTimeField;
    TQPagarQrPPC_PAGTO: TDateTimeField;
    TQPagarQrPPC_VLPARC: TFloatField;
    TQPagarQrPPC_VLPAGO: TFloatField;
    TQPagarQrPag_pc01CCT_CODIGO: TStringField;
    TQPagarQrPag0000PAG_CODIGO: TStringField;
    TQPagarQrPAG_NUMDOC: TStringField;
    TQPagarQrPAG_DTEMIS: TDateTimeField;
    TQPagarQrPAG_FAVORECIDO: TStringField;
    TQPagarQrPag0000CCT_CODIGO: TStringField;
    TQCCusto: TQuery;
    DsQPagarQr: TDataSource;
    TQCCustoCCT_CODIGO: TStringField;
    TQCCustoCCT_DESCRI: TStringField;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    TQCCustoCCT_PROVISAO: TFloatField;
    TQPagarQrFOR_CODIGO: TStringField;
    QRBandFavor: TQRBand;
    QRBand5: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel15: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel16: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRGrpFavorecido: TQRGroup;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelConPagar03: TRelConPagar03;

implementation

uses Database, ADJ0001;

{$R *.DFM}

procedure TRelConPagar03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
  LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
