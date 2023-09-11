unit QRForn02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRelFornEtiq = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
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
    procedure RelFornEtiqBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RelFornEtiq: TRelFornEtiq;

implementation

uses GImpForn;

{$R *.DFM}

procedure TRelFornEtiq.RelFornEtiqBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
{Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
RelFornEtiq.Page.Columns     := wNumeroColunas;

RelFornEtiq.Page.LeftMargin  := wMargemEsquerta;
RelFornEtiq.Page.RightMargin := wMargemDireita;
RelFornEtiq.Page.Width       := wPagLargura;
RelFornEtiq.Page.Length      := wPagComprimento;
RelFornEtiq.Page.TopMargin   := wMargemTopo;
RelFornEtiq.Page.BottomMargin:= wMargemRodape;
{Parametros do tamanho da Etiqueta na Band}
RelFornEtiq.QRBand1.Size.Height := wLarguraEtiq;
RelFornEtiq.QRBand1.Size.Width  := wComprimentoEtiq;
end;

end.
