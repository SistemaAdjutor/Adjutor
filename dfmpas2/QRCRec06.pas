unit QRCRec06;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelLiquidFatur = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRBand5: TQRBand;
    QRBand4: TQRBand;
    TQReceber: TQuery;
    TQReceberFAT_CODIGO: TStringField;
    TQReceberFPC_DTEMIS: TDateTimeField;
    TQReceberFPC_NUMER: TStringField;
    TQReceberCCT_CODIGO: TStringField;
    TQReceberPCX_CODIGO: TStringField;
    TQReceberBAN_CODIGO: TStringField;
    TQReceberFPC_COBNUM: TStringField;
    TQReceberFPC_COBTIPO: TStringField;
    TQReceberFPC_STATUS: TStringField;
    TQReceberFPC_DESCTO: TFloatField;
    TQReceberFPC_DTDESC: TDateTimeField;
    TQReceberFPC_VENCTO: TDateTimeField;
    TQReceberFPC_PAGTO: TDateTimeField;
    TQReceberFPC_VLPARC: TFloatField;
    TQReceberFPC_VLPAGO: TFloatField;
    TQReceberFPC_OBS: TStringField;
    TQReceberFPC_SITPAG: TBooleanField;
    TQReceberFat_pc01CLI_CODIGO: TStringField;
    TQReceberFPC_IMPDUP: TStringField;
    TQReceberCli0000CLI_CODIGO: TStringField;
    TQReceberCLI_RAZAO: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr16: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText5: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelLiquidFatur: TRelLiquidFatur;

implementation

uses GImpRece, ADJ0001, Men0001;

{$R *.DFM}

procedure TRelLiquidFatur.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
LTitulo2.Caption := 'TÍTULOS FATURADOS - entre '+FormGImpRece.EditDataI.Text+' e '+FormGImpRece.EditDataF.Text;
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.                          
