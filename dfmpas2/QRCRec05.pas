unit QRCRec05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConReceber05 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr13: TQRExpr;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    TbReceberQR: TTable;
    TbReceberQRFAT_CODIGO: TStringField;
    TbReceberQRPCL_CODIGO: TStringField;
    TbReceberQRCLI_CODIGO: TStringField;
    TbReceberQRREP_CODIGO: TStringField;
    TbReceberQRPED_CODIGO: TStringField;
    TbReceberQRFAT_QTDITEM: TFloatField;
    TbReceberQRFAT_VL_LIQ: TFloatField;
    TbReceberQRFAT_VLFAT: TFloatField;
    TbReceberQRFAT_VLNCOMIS: TFloatField;
    TbReceberQRFAT_DTEMIS: TDateTimeField;
    TbReceberQRFAT_COMIS1: TFloatField;
    TbReceberQRFAT_COMIS2: TFloatField;
    TbReceberQRFAT_COMIS3: TFloatField;
    TbReceberQRFAT_OPERACAO: TStringField;
    TbReceberQRFAT_BASEICMS: TFloatField;
    TbReceberQRFAT_ALIQUOTA: TFloatField;
    TbReceberQRFAT_OBSLIVRO: TStringField;
    TbReceberQRFAT_OPERUF: TStringField;
    TbReceberQRFAT_LIVRO: TBooleanField;
    TbReceberQREMP_CODIGO: TStringField;
    TbRecParcQR: TTable;
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
    TbRecParcQRBan_Apelido_LK: TStringField;
    TbRecParcQRFPC_VLPARC_CC: TFloatField;
    TbRecParcQRFPC_VLPAGO_CC: TFloatField;
    DsRecParcQR: TDataSource;
    TbClienteQR: TTable;
    TbClienteQRCLI_CODIGO: TStringField;
    TbClienteQRCLI_RAZAO: TStringField;
    TbClienteQREMP_CODIGO: TStringField;
    DsReceberQR: TDataSource;
    TbBancoQR: TTable;
    TbBancoQRBAN_CODIGO: TStringField;
    TbBancoQRBAN_APELIDO: TStringField;
    QRExpr14: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    TbReceberQRCCT_CODIGO: TStringField;
    TbReceberQRPCX_CODIGO: TStringField;
    TbReceberQRFAT_PREVISAO: TBooleanField;
    TbReceberQRFAT_OBS: TStringField;
    TbReceberQRFAT_VL_IPI: TFloatField;
    TbReceberQRFAT_CANCELADA: TBooleanField;
    TbReceberQRFAT_BASESUB: TFloatField;
    TbReceberQRFAT_ICMSRET: TFloatField;
    TbReceberQRFAT_DESP_ACES: TFloatField;
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
  RelConReceber05: TRelConReceber05;

implementation

uses ADJ0001;

{$R *.DFM}

procedure TRelConReceber05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{Nome na empresa no topo do relatorio}
LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

procedure TRelConReceber05.TbRecParcQRCalcFields(DataSet: TDataSet);
begin
IF TbRecParcQRFPC_STATUS.Value<>'Cancelada' then
   begin
   TbRecParcQRFPC_VLPARC_CC.Value := TbRecParcQRFPC_VLPARC.Value;
   TbRecParcQRFPC_VLPAGO_CC.Value := TbRecParcQRFPC_VLPAGO.Value;
   end;
end;

end.
