unit QRCtrCom;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  Provider, SqlExpr,SqlClientDataSet, DBLocal, DBLocalS, DBClient;

type
  TRelControleCom = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape6: TQRShape;
    QRLabel24: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel25: TQRLabel;
    QRShape9: TQRShape;
    QRLabel26: TQRLabel;
    QRShape10: TQRShape;
    QRLabel27: TQRLabel;
    QRShape11: TQRShape;
    LabelRecibo: TQRLabel;
    LabelRepresentante: TQRLabel;
    LabelEmpres: TQRLabel;
    LabelQuinzena: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape12: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    LabelDatas: TQRLabel;
    QRBand2: TQRBand;
    LabelObservacao01: TQRLabel;
    QRExpr4: TQRExpr;
    LabelObservacao02: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRShape13: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText10: TQRDBText;
    CdsTmp_Rcom: TClientDataSet;
    CdsTmp_RcomEMP_CODIGO: TStringField;
    CdsTmp_RcomREP_CODIGO: TStringField;
    CdsTmp_RcomREP_GRUPO: TStringField;
    CdsTmp_RcomREP_RAZAO: TStringField;
    CdsTmp_RcomREP_AGENCIA: TStringField;
    CdsTmp_RcomREP_CONTA: TStringField;
    CdsTmp_RcomREP_BANCO: TStringField;
    CdsTmp_RcomREP_BANCOFAVOR: TStringField;
    CdsTmp_RcomREP_CGC: TStringField;
    CdsTmp_RcomREP_TIPO: TStringField;
    CdsTmp_RcomRCOM_VENDAS: TCurrencyField;
    CdsTmp_RcomRCOM_COMISSOES: TCurrencyField;
    CdsTmp_RcomRCOM_CREDITOS: TCurrencyField;
    CdsTmp_RcomRCOM_DEBITOS: TCurrencyField;
    CdsTmp_RcomRCOM_IRRF: TCurrencyField;
    DsTmp_Rcom: TDataSource;
    SqlCdsEventos: TSQLClientDataSet;
    SqlCdsEventosEMP_CODIGO: TStringField;
    SqlCdsEventosREP_CODIGO: TStringField;
    SqlCdsEventosEVE_CODIGO: TStringField;
    SqlCdsEventosEVE_DESCRI: TStringField;
    SqlCdsEventosERP_VALOR: TFMTBCdField;
    SqlCdsEventosERP_TIPO: TStringField;
    SqlCdsEventosERP_DATA: TSQLTimeStampField;
    SqlCdsEventosERP_COMPL: TStringField;
    SqlCdsEventosERP_CODIGO: TStringField;
    SqlCdsEventosERP_IMPOSTO: TStringField;
    DsEventos: TDataSource;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelControleCom: TRelControleCom;

implementation

{$R *.DFM}

USES ADJ0001, Men0001;

procedure TRelControleCom.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  wRepresentante,wObs_Recibo:String;
begin
   //Nome na empresa no topo do relatorio
  LabelEmpresa.Caption:= dbInicio.Empresa.Razao;
  //
  wRepresentante := 'Representante: '+CdsTmp_RcomREP_CODIGO.AsString+'-'+CdsTmp_RcomREP_GRUPO.AsString+' '+CdsTmp_RcomREP_RAZAO.AsString;
  //
  wObs_Recibo := 'Eu '+CdsTmp_RcomREP_RAZAO.AsString+'  Declaro que recebi de ';
  //
  LabelRepresentante.Caption := wRepresentante;
  LabelRecibo.Caption := WObs_REcibo;
  LabelEmpres.Caption := LabelEmpresa.Caption;
end;

end.
