unit QRFatRep;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFaturaRepresentante = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    TQReceberRep: TQuery;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText8: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText5: TQRDBText;
    QRBand5: TQRBand;
    QRExpr4: TQRExpr;
    LabelFinal: TQRLabel;
    LabelInicial: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr3: TQRExpr;
    TQReceberRepFAT0000REP_CODIGO: TStringField;
    TQReceberRepFAT_QTDITEM: TFloatField;
    TQReceberRepFAT_VLFAT: TFloatField;
    TQReceberRepFAT_DTEMIS: TDateTimeField;
    TQReceberRepREP0000REP_CODIGO: TStringField;
    TQReceberRepREP_NOME: TStringField;
    TQReceberRepREP_QUOTA: TFloatField;
    TQReceberRepFAT_VL_LIQ: TFloatField;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQReceberRepFAT_CANCELADA: TBooleanField;
    QRDBText4: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr6: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFaturaRepresentante: TRelFaturaRepresentante;

implementation

{$R *.DFM}


uses  Database, ADJ0001;

procedure TRelFaturaRepresentante.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia;
end;

end.
