unit QRCPag01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConPagar01 = class(TQuickRep)
    QRBand1: TQRBand;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    TbPagarQR: TTable;
    TbParPagQR: TTable;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    LabelEmpresa: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    LTitulo1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    DsParPagQR: TDataSource;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr4: TQRExpr;
    TbPagarQRPAG_CODIGO: TStringField;
    TbPagarQRFOR_CODIGO: TStringField;
    TbPagarQRPAG_TIPO: TStringField;
    TbPagarQRPAG_DTEMIS: TDateTimeField;
    TbPagarQRCCT_CODIGO: TStringField;
    TbPagarQRPAG_VLNOTA: TFloatField;
    TbPagarQRPAG_SERIE: TStringField;
    TbPagarQRPAG_BASEICMS: TFloatField;
    TbPagarQRPAG_ALIQICMS: TFloatField;
    TbPagarQRPAG_BASEIPI: TFloatField;
    TbPagarQRPAG_VL_IPI: TFloatField;
    TbPagarQRPAG_OBS: TStringField;
    TbPagarQRPAG_FAVORECIDO: TStringField;
    TbPagarQRPAG_LIVRO: TBooleanField;
    TbPagarQREMP_CODIGO: TStringField;
    TbParPagQRPAG_CODIGO: TStringField;
    TbParPagQRPPC_NUMER: TStringField;
    TbParPagQRPPC_BANCO: TStringField;
    TbParPagQRPPC_VENCTO: TDateTimeField;
    TbParPagQRPPC_PAGTO: TDateTimeField;
    TbParPagQRPPC_VLPARC: TFloatField;
    TbParPagQRPPC_VLPAGO: TFloatField;
    TbParPagQRPPC_OBS: TStringField;
    TbParPagQRPPC_SITPAG: TBooleanField;
    TbParPagQREMP_CODIGO: TStringField;
    TbParPagQRFOR_CODIGO: TStringField;
    TbParPagQRCCT_CODIGO: TStringField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand6: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel15: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    TbPagarQRPAG_NUMDOC: TStringField;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel21: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText9: TQRDBText;
    TbPagarQRFAVORECIDO_CC: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TbPagarQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelConPagar01: TRelConPagar01;

implementation

{$R *.DFM}

uses ADJ0001, database;

procedure TRelConPagar01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

procedure TRelConPagar01.TbPagarQRCalcFields(DataSet: TDataSet);
begin
    TbPagarQRFAVORECIDO_CC.Value := Copy(TbPagarQRPAG_FAVORECIDO.Value,1,32);
end;

end.
