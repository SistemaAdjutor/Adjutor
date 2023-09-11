//faturamento diario
unit QRCRec04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFaturaDia = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand3: TQRBand;
    TQReceberQR: TQuery;
    TQReceberQRFAT_CODIGO: TStringField;
    TQReceberQRFAT_DTEMIS: TDateTimeField;
    TQReceberQRFAT_VLFAT: TFloatField;
    TQReceberQRFAT_VL_LIQ: TFloatField;
    TQReceberQRFAT_COMIS1: TFloatField;
    TQReceberQRREP_CODIGO: TStringField;
    TQReceberQRFAT_QTDITEM: TFloatField;
    TQReceberQRCLI_RAZAO: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    TQReceberQRCLI0000CLI_CODIGO: TStringField;
    TQReceberQRFAT0000CLI_CODIGO: TStringField;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRExpr4: TQRExpr;
    TQReceberQRFAT_CANCELADA: TBooleanField;
    TQReceberQRFAT_VLFAT_CC: TFloatField;
    QRExpr1: TQRExpr;
    TQReceberQRFAT_VLLIQ_CC: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    TQReceberQRCLI_UF: TStringField;
    QRDBText4: TQRDBText;
    QRExpr6: TQRExpr;
    TQReceberQRFAT_QTDITEM_CC: TFloatField;
    TQRepresQR: TQuery;
    TQRepresQRREP_CODIGO: TStringField;
    TQRepresQRREP_NOME: TStringField;
    TQReceberQRREP_NOME_CC: TStringField;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr10: TQRExpr;
    TQReceberQRFAT_ICMS_CC: TFloatField;
    TQReceberQRFAT_ICMSRET_CC: TFloatField;
    QRLabel17: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabel18: TQRLabel;
    TQReceberQRFAT_BASEICMS: TFloatField;
    TQReceberQRFAT_ALIQUOTA: TFloatField;
    TQReceberQRFAT_VL_IPI: TFloatField;
    TQReceberQRFAT_BASESUB: TFloatField;
    TQReceberQRFAT_ICMSRET: TFloatField;
    TQReceberQRFAT_VL_IPI_CC: TFloatField;
    QRExpr12: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr13: TQRExpr;
    QRLabel20: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel21: TQRLabel;
    QRExpr15: TQRExpr;
    QRDBText7: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TQReceberQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelFaturaDia: TRelFaturaDia;

implementation

uses ADJ0001;

{$R *.DFM}

procedure TRelFaturaDia.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia;
end;

procedure TRelFaturaDia.TQReceberQRCalcFields(DataSet: TDataSet);
begin
IF not RelFaturaDia.TQReceberQRFAT_CANCELADA.Value then
   begin
       RelFaturaDia.TQReceberQRFAT_VLFAT_CC.Value   := RelFaturaDia.TQReceberQRFAT_VLFAT.Value;
       RelFaturaDia.TQReceberQRFAT_VLLIQ_CC.Value   := RelFaturaDia.TQReceberQRFAT_VL_LIQ.Value;
       RelFaturaDia.TQReceberQRFAT_QTDITEM_CC.Value := RelFaturaDia.TQReceberQRFAT_QTDITEM.Value;
       RelFaturaDia.TQReceberQRFAT_ICMS_CC.Value    := RelFaturaDia.TQReceberQRFAT_BASEICMS.Value* RelFaturaDia.TQReceberQRFAT_ALIQUOTA.Value/100;
       RelFaturaDia.TQReceberQRFAT_ICMSRET_CC.Value := RelFaturaDia.TQReceberQRFAT_ICMSRET.Value;
       RelFaturaDia.TQReceberQRFAT_VL_IPI_CC.Value  := RelFaturaDia.TQReceberQRFAT_VL_IPI.Value;
       // recebe nome do representante
       RelFaturaDia.TQRepresQR.Locate('REP_CODIGO',RelFaturaDia.TQReceberQRREP_CODIGO.Value,[]);
       RelFaturaDia.TQReceberQRREP_NOME_CC.Value := RelFaturaDia.TQRepresQRREP_NOME.Value;
   end;
end;

end.
