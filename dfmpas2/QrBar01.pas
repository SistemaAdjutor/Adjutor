unit QrBar01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TRelEtiqBarra01 = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure RelEtiqBarraBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RelEtiqBarra01: TRelEtiqBarra01;

implementation

uses Prd0010;

{$R *.DFM}

procedure TRelEtiqBarra01.RelEtiqBarraBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
{Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
RelEtiqBarra01.Page.Columns     := wNumeroColunas;
RelEtiqBarra01.Page.LeftMargin  := wMargemEsquerta;
RelEtiqBarra01.Page.RightMargin := wMargemDireita;
RelEtiqBarra01.Page.Width       := wPagLargura;
RelEtiqBarra01.Page.Length      := wPagComprimento;
RelEtiqBarra01.Page.TopMargin   := wMargemTopo;
RelEtiqBarra01.Page.BottomMargin:= wMargemRodape;
{ Parametros do tamanho da Etiqueta na Band}
RelEtiqBarra01.QRBand1.Size.Height := wAlturaEtiq;
RelEtiqBarra01.QRBand1.Size.Width  := wLarguraEtiq;
end;

end.
