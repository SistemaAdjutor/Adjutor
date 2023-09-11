unit QRBloc01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRelBloquetoBanestado = class(TQuickRep)
    QRBand1: TQRBand;
    TQReceberQR: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    TQReceberQRFAT_CODIGO: TStringField;
    TQReceberQRFPC_DTEMIS: TDateTimeField;
    TQReceberQRFPC_VENCTO: TDateTimeField;
    TQReceberQRFPC_VLPARC: TFloatField;
    TQClienteQR: TQuery;
    TQBancoQR: TQuery;
    TQDsReceberQR: TDataSource;
    TQBancoQRBAN_CODIGO: TStringField;
    TQBancoQRBAN_JUROMES: TFloatField;
    TQReceberQRCLI_CODIGO: TStringField;
    TQReceberQRBAN_CODIGO: TStringField;
    TQBancoQRBAN_APELIDO: TStringField;
    QRLabel2: TQRLabel;
    TQClienteQRCLI_CODIGO: TStringField;
    TQClienteQRCLI_RAZAO: TStringField;
    TQClienteQRCLI_ENDERE: TStringField;
    TQClienteQRCLI_CIDADE: TStringField;
    TQClienteQRCLI_CEP: TStringField;
    TQClienteQRCLI_CGC: TStringField;
    TQClienteQRCLI_UF: TStringField;
    TQBancoQRBAN_JUROMES_CC: TFloatField;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    procedure TQBancoQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelBloquetoBanestado: TRelBloquetoBanestado;

implementation

{$R *.DFM}


uses GImpBloc, Prmd0001, DAtabase;

procedure TRelBloquetoBanestado.TQBancoQRCalcFields(DataSet: TDataSet);
begin
  TQBancoQRBan_JuroMes_CC.Value := TQBancoQRBan_JuroMes.Value/30;
end;

end.
