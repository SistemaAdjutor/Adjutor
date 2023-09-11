unit QRBloc02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRelBloquetoItau = class(TQuickRep)
    QRBand1: TQRBand;
    TQReceberQR: TQuery;
    QRDBText2: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    TQReceberQRFAT_CODIGO: TStringField;
    TQReceberQRFPC_DTEMIS: TDateTimeField;
    TQReceberQRBAN_CODIGO: TStringField;
    TQReceberQRFPC_VENCTO: TDateTimeField;
    TQReceberQRFPC_VLPARC: TFloatField;
    TQReceberQRCLI_CODIGO: TStringField;
    TQDSReceberQR: TDataSource;
    TQClienteQR: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    TQBancoQR: TQuery;
    TQBancoQRBAN_CODIGO: TStringField;
    TQBancoQRBAN_JUROMES: TFloatField;
    TQBancoQRBAN_APELIDO: TStringField;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    TQBancoQRBAN_JUROMES_CC: TFloatField;
    procedure TQBancoQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelBloquetoItau: TRelBloquetoItau;

implementation

{$R *.DFM}


uses Database, ADJ0001, Prmd0001;

procedure TRelBloquetoItau.TQBancoQRCalcFields(DataSet: TDataSet);
begin
  TQBancoQRBan_JuroMes_CC.Value := TQBancoQRBan_JuroMes.Value/30;
end;

end.
