unit QRVenda2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelEstati02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    LabelInicial: TQRLabel;
    QRLabel14: TQRLabel;
    LabelFinal: TQRLabel;
    TQRecItens: TQuery;
    TQRecItensPRD_CODIGO: TStringField;
    TQRecItensFAT_IT02PRD_REFER: TStringField;
    TQRecItensFIT_QTDE: TFloatField;
    TQRecItensFIT_PRECO: TFloatField;
    TQRecItensPRD_DESCRI: TStringField;
    TQRecItensPRD0000PRD_REFER: TStringField;
    TQRecItensFAT_IT02FAT_CODIGO: TStringField;
    TQRecItensFat0000FAT_CODIGO: TStringField;
    TQRecItensFAT_DTEMIS: TDateTimeField;
    DataSource1: TDataSource;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText1: TQRDBText;
    QRBand5: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelEstati02: TRelEstati02;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelEstati02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
