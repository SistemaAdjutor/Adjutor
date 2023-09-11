unit QRCRec01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConReceber01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    TbReceberQR: TTable;
    TbRecParcQR: TTable;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel15: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    DsRecParcQR: TDataSource;
    QRDBText3: TQRDBText;
    TbClienteQR: TTable;
    DsReceberQR: TDataSource;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
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
    TbClienteQRCLI_CODIGO: TStringField;
    TbClienteQRCLI_RAZAO: TStringField;
    TbClienteQREMP_CODIGO: TStringField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
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
    QRExpr7: TQRExpr;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel21: TQRLabel;
    TbBancoQR: TTable;
    TbBancoQRBAN_CODIGO: TStringField;
    TbBancoQRBAN_APELIDO: TStringField;
    TbRecParcQRBan_Apelido_LK: TStringField;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TbRecParcQRFPC_VLPARC_CC: TFloatField;
    TbRecParcQRFPC_VLPAGO_CC: TFloatField;
    QRExpr13: TQRExpr;
    QRDBText5: TQRDBText;
    QRExpr14: TQRExpr;
    QRDBText7: TQRDBText;
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
    QRRichText1: TQRRichText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TbRecParcQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelConReceber01: TRelConReceber01;

implementation

{$R *.DFM}

uses Database ,ADJ0001;






procedure TRelConReceber01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;
procedure TRelConReceber01.TbRecParcQRCalcFields(DataSet: TDataSet);
begin
IF RelConReceber01.TbRecParcQRFPC_STATUS.Value<>'Cancelada' then
   begin
       RelConReceber01.TbRecParcQRFPC_VLPARC_CC.Value := RelConReceber01.TbRecParcQRFPC_VLPARC.Value;
       RelConReceber01.TbRecParcQRFPC_VLPAGO_CC.Value := RelConReceber01.TbRecParcQRFPC_VLPAGO.Value;
   end;
end;

end.









