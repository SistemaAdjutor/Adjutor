unit QrBar03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TRelEtiqBarra03 = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    procedure RelEtiqBarra03BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RelEtiqBarra03: TRelEtiqBarra03;

implementation

uses Prd0010;

{$R *.DFM}

procedure TRelEtiqBarra03.RelEtiqBarra03BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
{Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
RelEtiqBarra03.Page.Columns     := wNumeroColunas;
RelEtiqBarra03.Page.LeftMargin  := wMargemEsquerta;
RelEtiqBarra03.Page.RightMargin := wMargemDireita;
RelEtiqBarra03.Page.Width       := wPagLargura;
RelEtiqBarra03.Page.Length      := wPagComprimento;
RelEtiqBarra03.Page.TopMargin   := wMargemTopo;
RelEtiqBarra03.Page.BottomMargin:= wMargemRodape;
{ Parametros do tamanho da Etiqueta na Band}
RelEtiqBarra03.QRBand1.Size.Height := wAlturaEtiq;
RelEtiqBarra03.QRBand1.Size.Width  := wLarguraEtiq;
end;

end.
