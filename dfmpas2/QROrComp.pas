{}
unit QROrComp;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelOrdemCompra = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QrTQItemOrdem: TQuery;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QrTQOrdem: TQuery;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    LTitulo1: TQRLabel;
    QrTQOrdemFor0000FOR_CODIGO: TStringField;
    QrTQOrdemFOR_RAZAO: TStringField;
    QrTQOrdemOCP0000FOR_CODIGO: TStringField;
    QrTQOrdemOCP_CODIGO: TStringField;
    QrTQOrdemOCP_DTMAXIMA: TDateTimeField;
    QrTQOrdemOCP_DTEMIS: TDateTimeField;
    QrTQOrdemOCP_DTMINIMA: TDateTimeField;
    QrTQOrdemOCP_PRAZOPGTO: TStringField;
    QrTQOrdemOCP_STATUS: TStringField;
    QrTQOrdemOCP_TOTAL: TFloatField;
    DsQrTQItemOrdem: TDataSource;
    QrTQItemOrdemPRD_DESCRI: TStringField;
    QrTQItemOrdemPRD0000PRD_REFER: TStringField;
    QrTQItemOrdemOCP_IT01PRD_REFER: TStringField;
    QrTQItemOrdemOCI_QTDE: TFloatField;
    QrTQItemOrdemOCI_PRECO: TFloatField;
    QrTQItemOrdemOCI_IPI: TFloatField;
    QrTQItemOrdemOCI_SITUACAO: TStringField;
    QrTQItemOrdemOCP_IT01OCP_CODIGO: TStringField;
    QrTQItemOrdemOCP0000OCP_CODIGO: TStringField;
    QrTQItemOrdemOCP_DTEMIS: TDateTimeField;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    LTitulo2: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel3: TQRLabel;
    QrTQItemOrdemTotComprasRec_CC: TFloatField;
    QrTQItemOrdemTotComprasPed_CC: TFloatField;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel17: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrTQItemOrdemCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelOrdemCompra: TRelOrdemCompra;

implementation

uses ADJ0001,GimpOC, Men0001;

{$R *.DFM}

procedure TRelOrdemCompra.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:= dbInicio.Empresa.Razao;
end;

procedure TRelOrdemCompra.QrTQItemOrdemCalcFields(DataSet: TDataSet);
begin
 if QrTQItemOrdemOCI_SITUACAO.Value = 'R' then
   // total recebidos
   begin
       QrTQItemOrdemTotComprasRec_CC.Value:=(QrTQItemOrdemOCI_QTDE.Value*QrTQItemOrdemOCI_PRECO.Value)+((QrTQItemOrdemOCI_QTDE.Value*QrTQItemOrdemOCI_PRECO.Value)*QrTQItemOrdemOCI_IPI.Value/100);
   end
else
   // total pendentes
   begin
       QrTQItemOrdemTotComprasPed_CC.Value:=(QrTQItemOrdemOCI_QTDE.Value*QrTQItemOrdemOCI_PRECO.Value)+((QrTQItemOrdemOCI_QTDE.Value*QrTQItemOrdemOCI_PRECO.Value)*QrTQItemOrdemOCI_IPI.Value/100);
   end;
end;

end.
