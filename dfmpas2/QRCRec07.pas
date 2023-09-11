unit QRCRec07;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelLiqFatu = class(TQuickRep)
    QRBand1: TQRBand;
    BdHeader: TQRBand;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    GrFooter2: TQRBand;
    GrFooter1: TQRBand;
    BdSumario: TQRBand;
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
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel13: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRDetalhe: TQRBand;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelLiqFatu: TRelLiqFatu;

implementation

uses GImpRece, ADJ0001, GImpAdmi, Men0001;

{$R *.DFM}

procedure TRelLiqFatu.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
LTitulo2.Caption := 'TÍTULOS FATURADOS - entre '+FormGImpRelAdm.EditDataI.Text+' e '+FormGImpRelAdm.EditDataF.Text;
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
