unit QRFCusto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFichaCusto = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    TQProduto: TQuery;
    TQProdutoPRD_DESCRI: TStringField;
    TQProdutoPRD_REFER: TStringField;
    TQProdutoPRD_COMPL: TStringField;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    TQItensCusto: TQuery;
    TQItensCustoFtc_it01PRD_REFER: TStringField;
    TQItensCustoPRD_REFER_ITENS: TStringField;
    TQItensCustoFTI_UC: TFloatField;
    TQItensCustoFTI_MODE1: TStringField;
    TQItensCustoPrd0000PRD_REFER: TStringField;
    TQItensCustoPRD_DESCRI: TStringField;
    TQItensCustoPRD_DTPCUSTO: TDateTimeField;
    TQItensCustoPRD_PCUSTO: TFloatField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    TQFatCustos: TQuery;
    TQItensCustoFTC0000PRD_REFER: TStringField;
    TQItensCustoFTC_TUP: TFloatField;
    ChildBand1: TQRChildBand;
    QRLabel31: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel32: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabel33: TQRLabel;
    QRExpr12: TQRExpr;
    QRLabel34: TQRLabel;
    QRExpr13: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel36: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRExpr23: TQRExpr;
    QRShape8: TQRShape;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel64: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel67: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText43: TQRDBText;
    QRShape5: TQRShape;
    DsQFatCustos: TDataSource;
    TQFatCustosVCT_CLASSE: TStringField;
    TQFatCustosVCT_TUP: TFloatField;
    TQFatCustosVCT_TMAQ: TFloatField;
    TQFatCustosVCT_DF: TFloatField;
    TQFatCustosVCT_DV: TFloatField;
    TQFatCustosVCT_ICMS: TFloatField;
    TQFatCustosVCT_FED: TFloatField;
    TQFatCustosVCT_DPG: TFloatField;
    TQFatCustosVCT_LV: TFloatField;
    TQFatCustosVCT_FIN: TFloatField;
    TQFatCustosVCT_COMRP: TFloatField;
    TQFatCustosVCT_COMSP: TFloatField;
    TQFatCustosVCT_COMGE: TFloatField;
    TQFatCustosVCT_DESC: TFloatField;
    QRDBText9: TQRDBText;
    TQItensCustoTup_CC: TFloatField;
    TQItensCustoDF_CC: TFloatField;
    TQItensCustoDV_CC: TFloatField;
    TQItensCustoICMS_CC: TFloatField;
    TQItensCustoFED_CC: TFloatField;
    TQItensCustoDPG_CC: TFloatField;
    TQItensCustoLV_CC: TFloatField;
    TQItensCustoFIN_CC: TFloatField;
    TQItensCustoCOMRP_CC: TFloatField;
    TQItensCustoCOMSP_CC: TFloatField;
    TQItensCustoCOMGE_CC: TFloatField;
    TQItensCustoDesc_CC: TFloatField;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    TQItensCustoFTI_MODIFICADA: TDateTimeField;
    TQItensCustoFTI_UCMODIFIC: TFloatField;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TQItensCustoCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelFichaCusto: TRelFichaCusto;

implementation

uses ADJ0001, GimpCust, Men0001;

{$R *.DFM}

procedure TRelFichaCusto.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

procedure TRelFichaCusto.TQItensCustoCalcFields(DataSet: TDataSet);
begin
TQItensCustoTUP_CC.Value := TQFatCustosVCT_TUP.Value;
TQItensCustoDF_CC.Value :=  TQFatCustosVCT_DF.Value;
TQItensCustoDV_CC.Value :=  TQFatCustosVCT_DV.Value;
TQItensCustoICMS_CC.Value := TQFatCustosVCT_ICMS.Value;
TQItensCustoFED_CC.Value :=  TQFatCustosVCT_FED.Value;
TQItensCustoDPG_CC.Value :=  TQFatCustosVCT_DPG.Value;
TQItensCustoLV_CC.Value :=   TQFatCustosVCT_LV.Value;
TQItensCustoFIN_CC.Value :=  TQFatCustosVCT_FIN.Value;
TQItensCustoCOMRP_CC.Value := TQFatCustosVCT_COMRP.Value;
TQItensCustoCOMSP_CC.Value := TQFatCustosVCT_COMSP.Value;
TQItensCustoCOMGE_CC.Value := TQFatCustosVCT_COMGE.Value;
TQItensCustoDESC_CC.Value := TQFatCustosVCT_DESC.Value;
end;

end.
