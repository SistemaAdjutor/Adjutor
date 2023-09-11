{**********************************************************************
| Programa...: QRExpDet  - Nome formulario = RelExpDetalhe
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
***********************************************************************}
unit QRExpDet;

interface


uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelExpDetalhe = class(TQuickRep)
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
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRBand5: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    TQReceber: TQuery;
    TQPedido: TQuery;
    DSQPedido: TDataSource;
    TQPedidoPED_DTSAIDA: TDateTimeField;
    TQPedidoPED_CODIGO: TStringField;
    TQPedidoPED0000TRP_CODIGO: TStringField;
    TQPedidoTrp0000TRP_CODIGO: TStringField;
    TQPedidoTRP_RAZAO: TStringField;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    TQReceberFAT0000FAT_CODIGO: TStringField;
    TQReceberFAT_VLFAT: TFloatField;
    TQReceberFAT_DTEMIS: TDateTimeField;
    TQReceberPED_CODIGO: TStringField;
    TQReceberFAT0000CLI_CODIGO: TStringField;
    TQReceberCLI0000CLI_CODIGO: TStringField;
    TQReceberCLI_RAZAO: TStringField;
    TQReceberCLI_CIDADE: TStringField;
    TQReceberCLI_UF: TStringField;
    TQReceberFAT_IT02FAT_CODIGO: TStringField;
    TQReceberFAT_IT02PRD_REFER: TStringField;
    TQReceberFIT_QTDE: TFloatField;
    TQReceberFIT_PRECO: TFloatField;
    TQReceberPRD_DESCRI: TStringField;
    TQReceberPRD0000PRD_REFER: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelExpDetalhe: TRelExpDetalhe;

implementation

{$R *.DFM}


uses ADJ0001, Men0001;

procedure TRelExpDetalhe.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
