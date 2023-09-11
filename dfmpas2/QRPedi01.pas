unit QRPedi01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelPedido01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    TbClienteQR: TTable;
    TbPedidoQR: TTable;
    DspedidoQR: TDataSource;
    TbRepresenQr: TTable;
    QRGroup1: TQRGroup;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    TbClienteQRCLI_CODIGO: TStringField;
    TbClienteQRCLI_UF: TStringField;
    TbClienteQREMP_CODIGO: TStringField;
    TbRepresenQrREP_CODIGO: TStringField;
    TbRepresenQrREP_GRUPO: TStringField;
    TbRepresenQrREG_CODIGO: TStringField;
    TbRepresenQrREP_FUNCAO: TStringField;
    TbRepresenQrREP_SUPERVISAO: TStringField;
    TbRepresenQrREP_RAZAO: TStringField;
    TbRepresenQrREP_NOME: TStringField;
    TbRepresenQrREP_ENDERE: TStringField;
    TbRepresenQrREP_CIDADE: TStringField;
    TbRepresenQrREP_UF: TStringField;
    TbRepresenQrREP_CEP: TStringField;
    TbRepresenQrREP_FONE: TStringField;
    TbRepresenQrREP_FAX: TStringField;
    TbRepresenQrREP_EMAIL: TStringField;
    TbRepresenQrREP_TIPO: TStringField;
    TbRepresenQrREP_SITUACAO: TStringField;
    TbRepresenQrREP_OBS: TMemoField;
    TbRepresenQrREP_QUOTA: TFloatField;
    TbRepresenQrREP_NDEPEND: TSmallintField;
    TbRepresenQrREP_DTNASC: TDateTimeField;
    TbRepresenQrREP_INSC: TStringField;
    TbRepresenQrREP_CGC: TStringField;
    TbRepresenQrEMP_CODIGO: TStringField;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRLabel11: TQRLabel;
    QRExpr3: TQRExpr;
    QRBand5: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr2: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    TbPedidoItenQR: TTable;
    TbPedidoItenQRPED_CODIGO: TStringField;
    TbPedidoItenQRPRF_QTDE: TFloatField;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    TbPedidoQRPED_CODIGO: TStringField;
    TbPedidoQRCLI_CODIGO: TStringField;
    TbPedidoQRREP_CODIGO: TStringField;
    TbPedidoQRPED_DTENTRADA: TDateTimeField;
    TbPedidoQRPED_COMIS1: TFloatField;
    TbPedidoQRPED_COMIS2: TFloatField;
    TbPedidoQRPED_COMIS3: TFloatField;
    TbPedidoQRPCL_CODIGO: TStringField;
    TbPedidoQRPED_DESCTOVL: TFloatField;
    TbPedidoQRPED_DESCTOPC: TFloatField;
    TbPedidoQRTRP_CODIGO: TStringField;
    TbPedidoQRPED_FRETE: TStringField;
    TbPedidoQRPED_FRETE2: TStringField;
    TbPedidoQRTRP_REDESP: TStringField;
    TbPedidoQRPED_OBSNOTA: TStringField;
    TbPedidoQRPED_SITUACAO: TStringField;
    TbPedidoQRPED_VLTOTAL: TFloatField;
    TbPedidoQRPED_VLFATURADO: TFloatField;
    TbPedidoQRPED_FATURAS: TStringField;
    TbPedidoQRPED_SITCRED: TStringField;
    TbPedidoQRPED_OBSGERAL01: TStringField;
    TbPedidoQRPED_OBSGERAL02: TStringField;
    TbPedidoQRPED_OBSGERAL03: TStringField;
    TbPedidoQRPED_DTLIM_ATD: TDateTimeField;
    TbPedidoQRPED_DTSAIDA: TDateTimeField;
    TbPedidoQRPED_PRIORIDADE: TStringField;
    TbPedidoQREMP_CODIGO: TStringField;
    TbClienteQRCLI_RAZAO: TStringField;
    TbPedidoQRPED_DTEMBARQUE: TDateTimeField;
    TbPedidoQRPED_EXPEDICAO: TStringField;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelPedido01: TRelPedido01;

implementation

{$R *.DFM}

uses ADJ0001, Men0001;

procedure TRelPedido01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;


end.
