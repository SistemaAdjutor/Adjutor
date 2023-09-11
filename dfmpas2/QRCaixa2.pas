unit QRCaixa2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TRelCaixaFixo02 = class(TQuickRep)
    TQCaixaFixoQR: TQuery;
    TQCaixaFixoQRCXA_LANCTO: TStringField;
    TQCaixaFixoQRCXA_DATA: TDateTimeField;
    TQCaixaFixoQRCXA_HISTORICO: TStringField;
    TQCaixaFixoQRCCT_CODIGO: TStringField;
    TQCaixaFixoQRCXA_DOCUMENTO: TStringField;
    TQCaixaFixoQRCXA_TIPODOC: TStringField;
    TQCaixaFixoQRCXA_SAIDA: TFloatField;
    TQCaixaFixoQRCXA_ENTRADA: TFloatField;
    TQCaixaFixoQRCXA_SITUACAO: TStringField;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand4: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr3: TQRExpr;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCaixaFixo02: TRelCaixaFixo02;

implementation

uses ADJ0001;

{$R *.DFM}

procedure TRelCaixaFixo02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 // Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
