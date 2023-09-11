unit QRDupl01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRelDuplicata = class(TQuickRep)
    TQReceberParc02: TQuery;
    TQCliente02: TQuery;
    TQReceberParc02FAT_CODIGO: TStringField;
    TQReceberParc02FPC_DTEMIS: TDateTimeField;
    TQReceberParc02FPC_DESCTO: TFloatField;
    TQReceberParc02FPC_DTDESC: TDateTimeField;
    TQReceberParc02FPC_VENCTO: TDateTimeField;
    TQReceberParc02FPC_VLPARC: TFloatField;
    TQReceberParc02CLI_CODIGO: TStringField;
    TQCliente02CLI_CODIGO: TStringField;
    TQCliente02CLI_RAZAO: TStringField;
    TQCliente02CLI_ENDERE: TStringField;
    TQCliente02CLI_BAIRRO: TStringField;
    TQCliente02CLI_CIDADE: TStringField;
    TQCliente02CLI_CEP: TStringField;
    TQCliente02CLI_FONE: TStringField;
    TQCliente02CLI_INSC: TStringField;
    TQCliente02CLI_CGC: TStringField;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    TQCliente02CLI_UF: TStringField;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel3: TQRLabel;
    TQReceber02: TQuery;
    TQReceber02FAT_CODIGO: TStringField;
    TQReceber02FAT_OPERACAO: TStringField;
    TQReceber02CLI_CODIGO: TStringField;
    TQDSReceberParcQR: TDataSource;
  private

  public

  end;

var
  RelDuplicata: TRelDuplicata;

implementation

{$R *.DFM}



end.
