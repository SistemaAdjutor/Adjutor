{*********************************************************************
| Programa...: QR_OPPrd01 - Nome formulario = RelOrdemProd02
| Objetivo...: Relatorio Ordem de Produção
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários: Modelo Industria (Danka/DK)
|
| Criação..........: Jun/2001
| Ultima Alteração.:
| Alterado por.....: Márcio
|
|********************************************************************}
unit QR_OPrd02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelOrdemProd02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    TQOrdemServ: TQuery;
    TQOrdemServOSV_CODIGO: TStringField;
    TQOrdemServOSV_EMISSAO: TDateTimeField;
    TQOrdemServOsv0001PRD_REFER: TStringField;
    TQOrdemServPRD0000PRD_REFER: TStringField;
    TQOrdemServPRD_DESCRI: TStringField;
    TQOrdemServFTC0000PRD_REFER: TStringField;
    TQOrdemServFTC_PROC1: TStringField;
    TQOrdemServFTC_PROC2: TStringField;
    TQOrdemServFTC_PROC3: TStringField;
    TQOrdemServFTC_PROC4: TStringField;
    TQOrdemServFTC_PROC5: TStringField;
    TQOrdemServFTC_PROC6: TStringField;
    TQOrdemServFTC_PROC7: TStringField;
    TQOrdemServFTC_PROC8: TStringField;
    TQOrdemServOSV_DCMOD1: TStringField;
    TQOrdemServOSV_DCMOD2: TStringField;
    TQOrdemServOSV_DCMOD3: TStringField;
    TQOrdemServOSV_DCMOD4: TStringField;
    TQOrdemServOSV_DCMOD5: TStringField;
    TQOrdemServOSV_DCMOD6: TStringField;
    TQOrdemItem: TQuery;
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
    TQOrdemItemOSI_QTDE6: TFloatField;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape10: TQRShape;
    QRDBText10: TQRDBText;
    QRShape12: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand2: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    TQOrdemItemOSI_PRDDESCRI: TStringField;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape6: TQRShape;
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
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    TQOrdemServFTC_TUP: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel9: TQRLabel;
    QRLbTupTotal: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape13: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText22: TQRDBText;
    QRBand3: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelOrdemProd02: TRelOrdemProd02;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelOrdemProd02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
  // jogar tup total na label, pois nao posso fazer calculo c/ Tquery secundária
  QRLbTupTotal.Caption := FloatToStr(TQOrdemServFTC_TUP.Value*TQOrdemServOSV_QTDE.Value);

end;

end.
