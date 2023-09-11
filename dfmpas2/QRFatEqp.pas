unit QRFatEqp;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, QRExport;

type
  TRelFaturaEquipe = class(TQuickRep)
    TQReceberEquip: TQuery;
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText5: TQRDBText;
    QRExpr4: TQRExpr;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr5: TQRExpr;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    LTitulo2: TQRLabel;
    TQReceberEquipRep0000REP_CODIGO: TStringField;
    TQReceberEquipREP_SUPERVISAO: TStringField;
    TQReceberEquipREP_RAZAO: TStringField;
    TQReceberEquipREP_NOME: TStringField;
    TQReceberEquipREP_QUOTA: TFloatField;
    TQReceberEquipREP_FUNCAO: TStringField;
    TQReceberEquipFAT_CODIGO: TStringField;
    TQReceberEquipFat0000REP_CODIGO: TStringField;
    TQReceberEquipFAT_VL_LIQ: TFloatField;
    TQReceberEquipFAT_VLFAT: TFloatField;
    TQReceberEquipFAT_DTEMIS: TDateTimeField;
    TQReceberEquipFAT_QTDITEM: TFloatField;
    QRDBText1: TQRDBText;
    TQReceberEquipFAT_CANCELADA: TBooleanField;
    QRTextFilter1: TQRTextFilter;
    TQReceberEquipREP_GERENTE: TStringField;
    QRDBText2: TQRDBText;
    TQReceberEquipREP_GRUPO: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFaturaEquipe: TRelFaturaEquipe;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelFaturaEquipe.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
