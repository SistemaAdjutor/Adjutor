unit QREstat1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelEstatVenda = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LabelTipo: TQRLabel;
    QRLabel1: TQRLabel;
    LabelInicial: TQRLabel;
    LabelFinal: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    TQEstatistQR: TQuery;
    TQEstatistQRTmpestatPRD_REFER: TStringField;
    TQEstatistQRFIT_QTDE: TFloatField;
    TQEstatistQRFIT_VALOR: TFloatField;
    TQEstatistQRFAT_DTEMIS: TDateTimeField;
    TQEstatistQRFAT_CODIGO: TStringField;
    TQEstatistQRPrd0000PRD_REFER: TStringField;
    TQEstatistQRPRD_DESCRI: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand4: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    TQEstatistQRPER_QTDE: TFloatField;
    TQEstatistQRPRD_PMATPRI: TFloatField;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TQEstatistQRLIN_CODIGO: TStringField;
    TQEstatistQRPRD_TABPRECO: TStringField;
    LabelFiltro: TQRLabel;
    QRDBText7: TQRDBText;
    TQEstatistQRPER_VL_BRUTO: TFloatField;
    TQEstatistQRFIT_VL_BRUTO: TFloatField;
    QRLabel14: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr6: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelEstatVenda: TRelEstatVenda;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelEstatVenda.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
