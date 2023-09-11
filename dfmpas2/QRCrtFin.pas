unit QRCrtFin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelControleFinanceiro = class(TQuickRep)
    QRGroup1: TQRGroup;
    TbTempFinanceiro: TTable;
    TbTempFinanceiroFIN_VCTO: TDateTimeField;
    TbTempFinanceiroFIN_VLRECEBIDO: TFloatField;
    TbTempFinanceiroFIN_VLRECEBER: TFloatField;
    TbTempFinanceiroFIN_VLPAGO: TFloatField;
    TbTempFinanceiroFIN_VLPAGAR: TFloatField;
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    PAGO: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr9: TQRExpr;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    LabelInicial: TQRLabel;
    QRLabel9: TQRLabel;
    LabelFinal: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelControleFinanceiro: TRelControleFinanceiro;

implementation

{$R *.DFM}



uses ADJ0001, Men0001;

procedure TRelControleFinanceiro.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
