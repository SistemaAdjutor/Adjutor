unit QRGCusto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCustoGlobal = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    LabelEmpresa: TQRLabel;
    Label1: TQRLabel;
    LTitulo1: TQRLabel;
    TQProdCusto: TQuery;
    TQProdCustoPRD_DESCRI: TStringField;
    TQProdCustoPRD_REFER: TStringField;
    TQProdCustoPRD_PCUSTO: TFloatField;
    TQProdCustoPRD_PVENDA: TFloatField;
    TQProdCustoPRD_PMATPRI: TFloatField;
    TQProdCustoPRD_MAOOBRA: TFloatField;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    TQProdCustoLIN_CODIGO: TStringField;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCustoGlobal: TRelCustoGlobal;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelCustoGlobal.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
