unit QREveRep;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelEventoRepresentante = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    TQEveRep: TQuery;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    TQEveRepERP_CODIGO: TStringField;
    TQEveRepERP_VALOR: TFloatField;
    TQEveRepERP_TIPO: TStringField;
    TQEveRepERP_DATA: TDateTimeField;
    TQEveRepERP_COMPL: TStringField;
    TQEveRepERP_IMPOSTO: TStringField;
    TQEveRepEve_rp01REP_CODIGO: TStringField;
    TQEveRepEMP_CODIGO: TStringField;
    TQEveRepRep0000REP_CODIGO: TStringField;
    TQEveRepREP_NOME: TStringField;
    TQEveRepEve_rp01EVE_CODIGO: TStringField;
    TQEveRepEve0000EVE_CODIGO: TStringField;
    TQEveRepEVE_DESCRI: TStringField;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    TQEveReptotal_debito_CC: TFloatField;
    TQEveReptotal_credito_CC: TFloatField;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TQEveRepCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelEventoRepresentante: TRelEventoRepresentante;

implementation

{$R *.DFM}

uses Database, ADJ0001, Men0001;



procedure TRelEventoRepresentante.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

procedure TRelEventoRepresentante.TQEveRepCalcFields(DataSet: TDataSet);
begin
// somar debitos e creditos
if TQEveRepERP_TIPO.Value = 'D' then
  TQEveRepTotal_debito_cc.Value:=TQEveRepERP_VALOR.Value
else
  TQEveRepTotal_credito_cc.Value:=TQEveRepERP_VALOR.Value;
end;

end.
