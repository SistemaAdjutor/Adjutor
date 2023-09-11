 unit QRCRec02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConReceber02 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    TbReceberQr: TTable;
    TbRecParcQR: TTable;
    DsRecParcelaQr: TDataSource;
    DsReceberQR: TDataSource;
    TbClienteQR: TTable;
    DsClienteQR: TDataSource;
    TbBancoQR: TTable;
    QRGroup1: TQRGroup;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    DsBancoQR: TDataSource;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr2: TQRExpr;
    TbReceberQrFAT_CODIGO: TStringField;
    TbReceberQrPCL_CODIGO: TStringField;
    TbReceberQrCLI_CODIGO: TStringField;
    TbReceberQrREP_CODIGO: TStringField;
    TbReceberQrPED_CODIGO: TStringField;
    TbReceberQrFAT_QTDITEM: TFloatField;
    TbReceberQrFAT_VL_LIQ: TFloatField;
    TbReceberQrFAT_VLFAT: TFloatField;
    TbReceberQrFAT_VLNCOMIS: TFloatField;
    TbReceberQrFAT_DTEMIS: TDateTimeField;
    TbReceberQrFAT_COMIS1: TFloatField;
    TbReceberQrFAT_COMIS2: TFloatField;
    TbReceberQrFAT_COMIS3: TFloatField;
    TbReceberQrFAT_OPERACAO: TStringField;
    TbReceberQrFAT_BASEICMS: TFloatField;
    TbReceberQrFAT_ALIQUOTA: TFloatField;
    TbReceberQrFAT_OBSLIVRO: TStringField;
    TbReceberQrFAT_OPERUF: TStringField;
    TbReceberQrFAT_LIVRO: TBooleanField;
    TbReceberQrEMP_CODIGO: TStringField;
    TbClienteQRCLI_CODIGO: TStringField;
    TbClienteQRCLI_RAZAO: TStringField;
    TbClienteQREMP_CODIGO: TStringField;
    TbBancoQRBAN_CODIGO: TStringField;
    TbBancoQRBAN_RAZAO: TStringField;
    TbBancoQRBAN_CODAGE: TStringField;
    TbBancoQRBAN_ENDERE: TStringField;
    TbBancoQRBAN_CIDADE: TStringField;
    TbBancoQRBAN_UF: TStringField;
    TbBancoQRBAN_FONE: TStringField;
    TbBancoQRBAN_FAX: TStringField;
    TbBancoQRBAN_CEP: TStringField;
    TbBancoQRBAN_CONTATO: TStringField;
    TbBancoQRBAN_JUROMES: TFloatField;
    TbBancoQRBAN_OBS: TStringField;
    TbBancoQREMP_CODIGO: TStringField;
    TbBancoQRBAN_DNAS_CONT: TDateTimeField;
    TbBancoQRBAN_EMAIL: TStringField;
    TbBancoQRBAN_HOME: TStringField;
    TbRecParcQRFAT_CODIGO: TStringField;
    TbRecParcQRFPC_NUMER: TStringField;
    TbRecParcQRBAN_CODIGO: TStringField;
    TbRecParcQRREP_CODIGO: TStringField;
    TbRecParcQRFPC_DTEMIS: TDateTimeField;
    TbRecParcQRFPC_COBNUM: TStringField;
    TbRecParcQRFPC_COBTIPO: TStringField;
    TbRecParcQRFPC_STATUS: TStringField;
    TbRecParcQRFPC_DESCTO: TFloatField;
    TbRecParcQRFPC_DTDESC: TDateTimeField;
    TbRecParcQRFPC_VENCTO: TDateTimeField;
    TbRecParcQRFPC_PAGTO: TDateTimeField;
    TbRecParcQRFPC_VLPARC: TFloatField;
    TbRecParcQRFPC_VLPAGO: TFloatField;
    TbRecParcQRFPC_OBS: TStringField;
    TbRecParcQRFPC_SITPAG: TBooleanField;
    TbRecParcQREMP_CODIGO: TStringField;
    TbRecParcQRCLI_CODIGO: TStringField;
    TbRecParcQRFPC_IMPDUP: TStringField;
    TbBancoQRBAN_APELIDO: TStringField;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TbRecParcQRFPC_VLPARC_CC: TFloatField;
    TbRecParcQRFPC_VLPAGO_CC: TFloatField;
    QRExpr7: TQRExpr;
    QRExpr5: TQRExpr;
    QRDBText1: TQRDBText;
    QRExpr6: TQRExpr;
    QRDBText7: TQRDBText;
    TbReceberQrCCT_CODIGO: TStringField;
    TbReceberQrPCX_CODIGO: TStringField;
    TbReceberQrFAT_PREVISAO: TBooleanField;
    TbReceberQrFAT_OBS: TStringField;
    TbReceberQrFAT_VL_IPI: TFloatField;
    TbReceberQrFAT_CANCELADA: TBooleanField;
    TbReceberQrFAT_BASESUB: TFloatField;
    TbReceberQrFAT_ICMSRET: TFloatField;
    TbReceberQrFAT_DESP_ACES: TFloatField;
    TbRecParcQRCCT_CODIGO: TStringField;
    TbRecParcQRPCX_CODIGO: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TbRecParcQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelConReceber02: TRelConReceber02;

implementation

{$R *.DFM}
uses  ADJ0001;






procedure TRelConReceber02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;



procedure TRelConReceber02.TbRecParcQRCalcFields(DataSet: TDataSet);
begin
IF RelConReceber02.TbRecParcQRFPC_STATUS.Value<>'Cancelada' then
   begin
   RelConReceber02.TbRecParcQRFPC_VLPARC_CC.Value := RelConReceber02.TbRecParcQRFPC_VLPARC.Value;
   RelConReceber02.TbRecParcQRFPC_VLPAGO_CC.Value := RelConReceber02.TbRecParcQRFPC_VLPAGO.Value;
   end;
end;

end.
