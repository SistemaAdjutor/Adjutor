
unit uPedidoConsultaProducao;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OleCtrls, SHDocVw, ExtCtrls;

type
  TFrmPedidoConsultaProducao = class(TForm)
    pnlTop: TPanel;
    WebBrowser1: TWebBrowser;
    Bit_Sair: TBitBtn;
    lblPedido: TLabel;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidoConsultaProducao: TFrmPedidoConsultaProducao;

implementation

uses InicioDb;

{$R *.dfm}

procedure TFrmPedidoConsultaProducao.FormShow(Sender: tObject);
begin
     WebBrowser1.Navigate(dbInicio.GetParametroSistema('PMT_PROD_PCP_ENDERECO')+'pedidoProducao/consulta/'+lblPedido.Caption);
end;

procedure TFrmPedidoConsultaProducao.Bit_SairClick(Sender: tObject);
begin
     Close;
end;

end.
