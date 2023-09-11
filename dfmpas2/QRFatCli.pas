unit QRFatCli;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFaturamentoCliente = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    TQFaturamento: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    LabelInicial: TQRLabel;
    QRLabel12: TQRLabel;
    LabelFinal: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    TQFaturamentoCli0000CLI_CODIGO: TStringField;
    TQFaturamentoCLI_RAZAO: TStringField;
    TQFaturamentoCLI_UF: TStringField;
    TQFaturamentoFAT_CODIGO: TStringField;
    TQFaturamentoFat0000CLI_CODIGO: TStringField;
    TQFaturamentoFAT_QTDITEM: TFloatField;
    TQFaturamentoFAT_VL_LIQ: TFloatField;
    TQFaturamentoFAT_VLFAT: TFloatField;
    TQFaturamentoFAT_DTEMIS: TDateTimeField;
    TQFaturamentoFAT_CANCELADA: TBooleanField;
    TQFaturamentoCLI_CIDADE: TStringField;
    TQFaturamentoCLI_ENDERE: TStringField;
    TQFaturamentoCLI_EMAIL: TStringField;
    TQFaturamentoCLI_CGC: TStringField;
    TQFaturamentoCLI_INSC: TStringField;
    TQFaturamentoCLI_CONTATO: TStringField;
    TQFaturamentoCLI_FUNCONT: TStringField;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFaturamentoCliente: TRelFaturamentoCliente;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelFaturamentoCliente.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
