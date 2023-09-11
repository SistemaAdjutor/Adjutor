unit QRForn01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelFornecedor01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    TQFornecQR: TQuery;
    TQFornecQRFOR_CODIGO: TStringField;
    TQFornecQRFOR_RAZAO: TStringField;
    TQFornecQRCCT_CODIGO: TStringField;
    TQFornecQRFOR_ENDERE: TStringField;
    TQFornecQRFOR_CIDADE: TStringField;
    TQFornecQRFOR_UF: TStringField;
    TQFornecQRFOR_CEP: TStringField;
    TQFornecQRFOR_CONTATO: TStringField;
    TQFornecQRFOR_FONE: TStringField;
    TQFornecQRFOR_FAX: TStringField;
    TQFornecQRFOR_EMAIL: TStringField;
    TQFornecQRFOR_FONCONT: TStringField;
    TQFornecQRFOR_FAXCONT: TStringField;
    TQFornecQRFOR_OBS: TStringField;
    TQFornecQRFOR_CGC: TStringField;
    TQFornecQRFOR_INSC: TStringField;
    TQFornecQRFOR_HOME: TStringField;
    TQFornecQRFOR_EMAILCONT: TStringField;
    TQFornecQREMP_CODIGO: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelFornecedor01: TRelFornecedor01;

implementation

{$R *.DFM}

uses DAtabase,ADJ0001;

procedure TRelFornecedor01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption := FormAdjutor.wEmp_Razao;
end;

end.
