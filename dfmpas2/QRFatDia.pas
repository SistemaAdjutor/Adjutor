// SIE - faturamento por dia
unit QRFatDia;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFaturamentoDiario = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    TQReceber: TQuery;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    TQReceberFAT_DTEMIS: TDateTimeField;
    TQReceberFAT_QTDITEM: TFloatField;
    TQReceberFAT_VLFAT: TFloatField;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    LabelInicial: TQRLabel;
    QRLabel9: TQRLabel;
    LabelFinal: TQRLabel;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQReceberFAT_CANCELADA: TBooleanField;
    TQReceberFAT_VL_LIQ: TFloatField;
    QRLabel8: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFaturamentoDiario: TRelFaturamentoDiario;

implementation

{$R *.DFM}

uses Adj0001,GImpAdmi, Men0001;


procedure TRelFaturamentoDiario.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
