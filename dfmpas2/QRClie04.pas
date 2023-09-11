unit QRClie04;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TRelClienteEtiq = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    procedure RelClienteEtiqBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RelClienteEtiq: TRelClienteEtiq;

implementation

uses GImpClie;

{$R *.DFM}


procedure TRelClienteEtiq.RelClienteEtiqBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
{Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
RelClienteEtiq.Page.Columns     := wNumeroColunas;

RelClienteEtiq.Page.LeftMargin  := wMargemEsquerta;
RelClienteEtiq.Page.RightMargin := wMargemDireita;
RelClienteEtiq.Page.Width       := wPagLargura;
RelClienteEtiq.Page.Length      := wPagComprimento;
RelClienteEtiq.Page.TopMargin   := wMargemTopo;
RelClienteEtiq.Page.BottomMargin:= wMargemRodape;
{Parametros do tamanho da Etiqueta na Band}
RelClienteEtiq.QRBand1.Size.Height := wLarguraEtiq;
RelClienteEtiq.QRBand1.Size.Width  := wComprimentoEtiq;

end;

end.
