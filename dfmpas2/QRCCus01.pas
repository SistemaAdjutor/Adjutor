unit QRCCus01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCentroCusto01 = class(TQuickRep)
    QRBand1: TQRBand;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    LabelEmpresa: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    TQCtAnalise: TQuery;
    TQCtAnaliseCCT_CODIGO: TStringField;
    TQCtAnaliseCCT_DESCRI: TStringField;
    TQCtAnaliseCCT_TIPO: TStringField;
    TQCtAnaliseCCT_CONTA: TStringField;
    TQCtAnaliseCct_0000CEC_CODIGO: TStringField;
    TQCtAnaliseEMP_CODIGO: TStringField;
    TQCtAnaliseCec_0000CEC_CODIGO: TStringField;
    TQCtAnaliseCEC_DESCRI: TStringField;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQCtAnaliseCCT_PROVISAO: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCentroCusto01: TRelCentroCusto01;

implementation

{$R *.DFM}

uses Database,ADJ0001, Men0001;

procedure TRelCentroCusto01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
