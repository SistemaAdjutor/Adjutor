unit QrMCel04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, QRExport;

type
  TRelCelEntrega = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabelTitu1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabelTitu2: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRBand2: TQRBand;
    QRGroupCelula: TQRGroup;
    QRBandetalhe: TQRBand;
    TQMovEntrega: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    TQMovEntregaPRD_REFER: TStringField;
    TQMovEntregaOSV_QTDE: TFloatField;
    TQMovEntregaOSV_QTDECONC: TFloatField;
    TQMovEntregaOSV_QTDEDEFE: TFloatField;
    TQMovEntregaOSV_VALORPECA: TFloatField;
    TQMovEntregaOSV_VALORDEFE: TFloatField;
    TQMovEntregaCEM_DTENTROU: TDateTimeField;
    TQMovEntregaCEM_DTCONCLUIU: TDateTimeField;
    TQMovEntregaCel_mov03OSV_CODIGO: TStringField;
    TQMovEntregaOsv0001OSV_CODIGO: TStringField;
    TQMovEntregaCel_mov03CEL_CODIGO: TStringField;
    TQMovEntregaOSV_PRDDESCRI: TStringField;
    TQMovEntregaCel0000CEL_CODIGO: TStringField;
    TQMovEntregaCEL_NOME: TStringField;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRBandTotCel: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCelEntrega: TRelCelEntrega;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelCelEntrega.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
