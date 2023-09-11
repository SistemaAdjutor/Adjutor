unit QRPedi02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelPedido02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    TbPedidoQR: TTable;
    TbRepresenQR: TTable;
    TbClienteQR: TTable;
    QRGroup1: TQRGroup;
    TbClienteQRCLI_CODIGO: TStringField;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    TbRepresenQRREP_CODIGO: TStringField;
    TbRepresenQRREP_GRUPO: TStringField;
    TbRepresenQRREG_CODIGO: TStringField;
    TbRepresenQRREP_FUNCAO: TStringField;
    TbRepresenQRREP_SUPERVISAO: TStringField;
    TbRepresenQRREP_RAZAO: TStringField;
    TbRepresenQRREP_NOME: TStringField;
    TbRepresenQRREP_ENDERE: TStringField;
    TbRepresenQRREP_CIDADE: TStringField;
    TbRepresenQRREP_UF: TStringField;
    TbRepresenQRREP_CEP: TStringField;
    TbRepresenQRREP_FONE: TStringField;
    TbRepresenQRREP_FAX: TStringField;
    TbRepresenQRREP_EMAIL: TStringField;
    TbRepresenQRREP_TIPO: TStringField;
    TbRepresenQRREP_SITUACAO: TStringField;
    TbRepresenQRREP_OBS: TMemoField;
    TbRepresenQRREP_QUOTA: TFloatField;
    TbRepresenQRREP_NDEPEND: TSmallintField;
    TbRepresenQRREP_DTNASC: TDateTimeField;
    TbRepresenQRREP_INSC: TStringField;
    TbRepresenQRREP_CGC: TStringField;
    TbRepresenQREMP_CODIGO: TStringField;
    DsPedidoQR: TDataSource;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand5: TQRBand;
    QRLabel2: TQRLabel;
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
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    TbClienteQRCLI_RAZAO: TStringField;
    TbPedidoQRPED_DTEMBARQUE: TDateTimeField;
    TbPedidoQRPED_EXPEDICAO: TStringField;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    TbPedidoQRPED_VLFATBRUTO: TFloatField;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TbClienteQRCLI_UF: TStringField;
    QRDBText6: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelPedido02: TRelPedido02;

implementation

{$R *.DFM}

uses ADJ0001, Men0001;

procedure TRelPedido02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;


end.
