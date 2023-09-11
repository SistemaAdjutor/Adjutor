unit QRCPag02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConPagar02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    TbPagarQR: TTable;
    TbParPagarQR: TTable;
    QRDBText4: TQRDBText;
    DsParcPagarQR: TDataSource;
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
    TbParPagarQRPAG_CODIGO: TStringField;
    TbParPagarQRPPC_NUMER: TStringField;
    TbParPagarQRPPC_BANCO: TStringField;
    TbParPagarQRPPC_VENCTO: TDateTimeField;
    TbParPagarQRPPC_PAGTO: TDateTimeField;
    TbParPagarQRPPC_VLPARC: TFloatField;
    TbParPagarQRPPC_VLPAGO: TFloatField;
    TbParPagarQRPPC_OBS: TStringField;
    TbParPagarQRPPC_SITPAG: TBooleanField;
    TbParPagarQREMP_CODIGO: TStringField;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    TbParPagarQRFOR_CODIGO: TStringField;
    TbParPagarQRCCT_CODIGO: TStringField;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr4: TQRExpr;
    TbPagarQRPAG_NUMDOC: TStringField;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    TbPagarQRFAVORECIDO_CC: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TbPagarQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelConPagar02: TRelConPagar02;

implementation

{$R *.DFM}

uses ADJ0001;

procedure TRelConPagar02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;


procedure TRelConPagar02.TbPagarQRCalcFields(DataSet: TDataSet);
begin
TbPagarQRFAVORECIDO_CC.Value := Copy(TbPagarQRPAG_FAVORECIDO.Value,1,30);
end;

end.
