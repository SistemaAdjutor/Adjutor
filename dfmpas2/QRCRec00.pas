unit QRCRec00;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRelconReceber00 = class(TQuickRep)
    TbReceberQR: TTable;
    TbRecParcQR: TTable;
    TbClienteQR: TTable;
    TbBancoQR: TTable;
    DsReceberQR: TDataSource;
    DsRecParceQR: TDataSource;
    DsClienteQR: TDataSource;
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
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
    TbReceberQRFAT_OBS: TStringField;
    TbReceberQRFAT_OPERACAO: TStringField;
    TbReceberQRFAT_BASEICMS: TFloatField;
    TbReceberQRFAT_ALIQUOTA: TFloatField;
    TbReceberQRFAT_OBSLIVRO: TStringField;
    TbReceberQRFAT_OPERUF: TStringField;
    TbReceberQRFAT_LIVRO: TBooleanField;
    TbReceberQREMP_CODIGO: TStringField;
    TbRecParcQRREG: TAutoIncField;
    TbRecParcQRFAT_CODIGO: TStringField;
    TbRecParcQRFPC_NUMER: TStringField;
    TbRecParcQRBAN_CODIGO: TStringField;
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
    TbClienteQRCLI_CODIGO: TStringField;
    TbClienteQRCLI_RAZAO: TStringField;
    TbClienteQRREG_CODIGO: TStringField;
    TbClienteQRCLI_ATIVIDADE: TStringField;
    TbClienteQRCLI_PORTE: TStringField;
    TbClienteQRCLI_ENDERE: TStringField;
    TbClienteQRCLI_BAIRRO: TStringField;
    TbClienteQRCLI_CIDADE: TStringField;
    TbClienteQRCLI_CEP: TStringField;
    TbClienteQRCLI_CXPOST: TStringField;
    TbClienteQRCLI_EMAIL: TStringField;
    TbClienteQRCLI_HOME: TStringField;
    TbClienteQRCLI_FONE: TStringField;
    TbClienteQRCLI_FAX: TStringField;
    TbClienteQRTRP_CODIGO: TStringField;
    TbClienteQRCLI_INSC: TStringField;
    TbClienteQRCLI_CGC: TStringField;
    TbClienteQRCLI_PESSOA: TStringField;
    TbClienteQRCLI_CONTATO: TStringField;
    TbClienteQRCLI_FUNCONT: TStringField;
    TbClienteQRREP_CODIGO: TStringField;
    TbClienteQRCLI_DTINICIO: TDateTimeField;
    TbClienteQRCLI_DTULTCOM: TDateTimeField;
    TbClienteQRCLI_ENDENTR: TStringField;
    TbClienteQRCLI_CIDENTR: TStringField;
    TbClienteQRCLI_CEPENTR: TStringField;
    TbClienteQRCLI_ENDFAT: TStringField;
    TbClienteQRCLI_CIDFAT: TStringField;
    TbClienteQRCLI_CEPFAT: TStringField;
    TbClienteQRCLI_OBS: TStringField;
    TbClienteQRCLI_UF: TStringField;
    TbClienteQRCLI_UFENTR: TStringField;
    TbClienteQRCLI_UFFAT: TStringField;
    TbClienteQREMP_CODIGO: TStringField;
    TbBancoQRBAN_CODIGO: TStringField;
    TbBancoQRBAN_RAZAO: TStringField;
    TbBancoQRBAN_APELIDO: TStringField;
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
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelconReceber00: TRelconReceber00;

implementation

{$R *.DFM}

uses Database, ADJ0001;

procedure TRelconReceber00.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia;
end;

end.
