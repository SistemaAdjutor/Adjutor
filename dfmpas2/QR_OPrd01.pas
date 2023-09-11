{*******************************************************************
| Programa...: QR_OPPrd01 - Nome formulario = RelOrdemProd01
| Objetivo...: Relatorio Ordem de Produção
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários: Modelo Industria quimica (inquibra)
|
| Criação..........: Set/1999
| Ultima Alteração.:
| Alterado por.....: Márcio
|
|******************************************************************}
unit QR_OPrd01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelOrdemProd01 = class(TQuickRep)
    TQOrdemServ: TQuery;
    TQOrdemItem: TQuery;
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRBand2: TQRBand;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    TQOrdemServOSV_CODIGO: TStringField;
    TQOrdemServOSV_EMISSAO: TDateTimeField;
    TQOrdemServOsv0001PRD_REFER: TStringField;
    TQOrdemServPRD0000PRD_REFER: TStringField;
    TQOrdemServPRD_DESCRI: TStringField;
    TQOrdemItemOSV_CODIGO: TStringField;
    TQOrdemItemPRD_REFER: TStringField;
    TQOrdemItemPRD_REFER_ITENS: TStringField;
    TQOrdemItemOSI_UC: TFloatField;
    TQOrdemItemOSI_QTDE1: TFloatField;
    TQOrdemItemOSI_QTDE2: TFloatField;
    TQOrdemItemOSI_QTDE3: TFloatField;
    TQOrdemItemOSI_QTDE4: TFloatField;
    TQOrdemItemOSI_QTDE5: TFloatField;
    TQOrdemItemEMP_CODIGO: TStringField;
    QRShape15: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    TQOrdemServFTC0000PRD_REFER: TStringField;
    TQOrdemServFTC_PROC1: TStringField;
    TQOrdemServFTC_PROC2: TStringField;
    TQOrdemServFTC_PROC3: TStringField;
    TQOrdemServFTC_PROC4: TStringField;
    TQOrdemServFTC_PROC5: TStringField;
    TQOrdemServFTC_PROC6: TStringField;
    TQOrdemServFTC_PROC7: TStringField;
    TQOrdemServFTC_PROC8: TStringField;
    QRBand4: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape17: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape30: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape31: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape32: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape33: TQRShape;
    QRLabel35: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText15: TQRDBText;
    QRShape40: TQRShape;
    TQOrdemServOSV_DCMOD1: TStringField;
    TQOrdemServOSV_DCMOD2: TStringField;
    TQOrdemServOSV_DCMOD3: TStringField;
    TQOrdemServOSV_DCMOD4: TStringField;
    TQOrdemServOSV_DCMOD5: TStringField;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TQOrdemServOSV_DCMOD6: TStringField;
    TQOrdemItemOSI_QTDE6: TFloatField;
    TQOrdemItemOSI_PRDDESCRI: TStringField;
    TQOrdemServPED_CODIGO: TStringField;
    TQOrdemServOSV_CONCLUSAO: TDateTimeField;
    TQOrdemServOSV_PRDDESCRI: TStringField;
    TQOrdemServOSV_CLIRAZAO: TStringField;
    TQOrdemServOSV_QTDE1: TFloatField;
    TQOrdemServOSV_QTDE2: TFloatField;
    TQOrdemServOSV_QTDE3: TFloatField;
    TQOrdemServOSV_QTDE4: TFloatField;
    TQOrdemServOSV_QTDE5: TFloatField;
    TQOrdemServOSV_QTDE6: TFloatField;
    TQOrdemServOSV_QTDE: TFloatField;
    TQOrdemServFTC_TUP: TFloatField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelOrdemProd01: TRelOrdemProd01;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelOrdemProd01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
