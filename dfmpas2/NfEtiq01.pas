unit NfEtiq01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;



type
  TRelEtiqNota1 = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    TQNotaEtiq: TQuery;
    TQNotaEtiqNF_NU_NOTA: TStringField;
    TQNotaEtiqNF_NOMECLI: TStringField;
    TQNotaEtiqNF_ENDCLI: TStringField;
    TQNotaEtiqNF_CIDCLI: TStringField;
    TQNotaEtiqNF_ESTCLI: TStringField;
    TQNotaEtiqNF_TRP_NOME: TStringField;
    TQNotaEtiqNF_QTDE: TFloatField;
    TQNotaEtiqNF_PESOBRU: TFloatField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
  private

  public

  end;

var
  RelEtiqNota1: TRelEtiqNota1;

implementation

Uses  Database;

{$R *.DFM}

end.
