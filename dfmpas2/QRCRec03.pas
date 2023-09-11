unit QRCRec03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelConReceber03 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRBand2: TQRBand;
    TbReceberQR: TTable;
    TbClienteQR: TTable;
    DsRecParcQR: TDataSource;
    DsReceberQR: TDataSource;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    TbRecParcQR: TTable;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRDBText6: TQRDBText;
    TbRecParcQRFPC_DIA_CC: TStringField;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRGroup1: TQRGroup;
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
    TbClienteQRCLI_FONE: TStringField;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRExpr7: TQRExpr;
    TbRecParcQRFPC_VLPARC_CC: TFloatField;
    QRDBText1: TQRDBText;
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
  RelConReceber03: TRelConReceber03;

implementation

{$R *.DFM}
uses Database, ADJ0001;






procedure TRelConReceber03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao
end;

procedure TRelConReceber03.TbRecParcQRCalcFields(DataSet: TDataSet);
var
  WFPC_DIA:String;
begin
    WFPC_DIA := FloatToStr(Int(Now - TbRecParcQrFPC_VENCTO.Value));
    IF RelConReceber03.TbRecParcQRFPC_STATUS.Value<>'Cancelada' then
      begin
          TbRecParcQRFPC_DIA_CC.Value := WFPC_DIA;
          RelConReceber03.TbRecParcQRFPC_VLPARC_CC.Value := RelConReceber03.TbRecParcQRFPC_VLPARC.Value;
      end;
end;

end.


