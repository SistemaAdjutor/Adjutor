unit QrFatUF;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, QRExport;

type
  TRelFatEstado = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    LTitulo2: TQRLabel;
    QRGroupUF: TQRGroup;
    QRBand3: TQRBand;
    QRBandUF: TQRBand;
    QRDBText5: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    TQVendUF: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DateTimeField1: TDateTimeField;
    QRGroupCidade: TQRGroup;
    QRBandCidade: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand4: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel4: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFatEstado: TRelFatEstado;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelFatEstado.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Fantasia;
end;

end.
