unit QRClie06;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCliente06 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    TQFatItens: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    TQFatItensFat_it02FAT_CODIGO: TStringField;
    TQFatItensPRD_CODIGO: TStringField;
    TQFatItensFat_it02PRD_REFER: TStringField;
    TQFatItensFIT_QTDE: TFloatField;
    TQFatItensFIT_IPIALIQ: TFloatField;
    TQFatItensFIT_PRECO: TFloatField;
    TQFatItensEMP_CODIGO: TStringField;
    TQFatItensPRD_DESCRI: TStringField;
    TQFatItensPrd0000PRD_REFER: TStringField;
    TQFatItensFat0000FAT_CODIGO: TStringField;
    TQFatItensCLI_CODIGO: TStringField;
    TQFatItensFAT_DTEMIS: TDateTimeField;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQFatItensFAT_CANCELADA: TBooleanField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCliente06: TRelCliente06;

implementation

Uses Database, ADJ0001;

{$R *.DFM}


procedure TRelCliente06.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
