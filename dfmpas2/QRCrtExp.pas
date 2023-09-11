{*************************************************************
| Programa...: QRCrtExp  - Nome formulario = RelControleExpedicao
| Objetivo...: Rel. de Faturamento de Pedidos c/ detalhes de Itens
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários:
|
| Criação..........: Nov/1999
| Ultima Alteração.: Nov/2000
| Alterado por.....: Márcio
|
**************************************************************}
unit QRCrtExp;

interface
                   

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelControleExpedicao = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    DSQReceber: TDataSource;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    TQReceber: TQuery;
    TQPedido: TQuery;
    DSQPedido: TDataSource;
    TQPedidoPED_DTSAIDA: TDateTimeField;
    TQPedidoPED_CODIGO: TStringField;
    TQPedidoPED0000TRP_CODIGO: TStringField;
    TQPedidoTrp0000TRP_CODIGO: TStringField;
    TQPedidoTRP_RAZAO: TStringField;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    TQReceberFAT_CODIGO: TStringField;
    TQReceberFAT_VLFAT: TFloatField;
    TQReceberFAT_DTEMIS: TDateTimeField;
    TQReceberPED_CODIGO: TStringField;
    TQReceberFAT0000CLI_CODIGO: TStringField;
    TQReceberCLI0000CLI_CODIGO: TStringField;
    TQReceberCLI_RAZAO: TStringField;
    TQReceberCLI_CIDADE: TStringField;
    TQReceberCLI_UF: TStringField;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelControleExpedicao: TRelControleExpedicao;

implementation

{$R *.DFM}


uses ADJ0001;

procedure TRelControleExpedicao.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
