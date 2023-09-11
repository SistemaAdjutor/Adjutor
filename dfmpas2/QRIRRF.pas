unit QRIRRF;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelatorioIRRF = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    TbIRRFQR: TTable;
    TbIRRFQRIR_MES: TStringField;
    TbIRRFQRIR_TETO1: TFloatField;
    TbIRRFQRIR_TETO2: TFloatField;
    TbIRRFQRIR_TETO3: TFloatField;
    TbIRRFQRIR_ALIQ1: TFloatField;
    TbIRRFQRIR_ALIQ2: TFloatField;
    TbIRRFQRIR_ALIQ3: TFloatField;
    TbIRRFQRIR_DEDU1: TFloatField;
    TbIRRFQRIR_DEDU2: TFloatField;
    TbIRRFQRIR_DEDU3: TFloatField;
    TbIRRFQRIR_JURIDI: TFloatField;
    TbIRRFQRIR_DEPEND: TFloatField;
    TbIRRFQREMP_CODIGO: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRTextFilter1: TQRTextFilter;
  private

  public

  end;

var
  RelatorioIRRF: TRelatorioIRRF;

implementation

{$R *.DFM}

uses Database, ADJ0001;


end.
