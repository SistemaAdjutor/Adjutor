unit uFaturamentoNotaFiscalOpcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmFaturamentoNovoOpcao = class(TForm)
    grpOpcoes: TGroupBox;
    rbPedido: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    rbNotaFiscalEntrada: TRadioButton;
    rbManual: TRadioButton;
    Label3: TLabel;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaturamentoNovoOpcao: TFrmFaturamentoNovoOpcao;

implementation

uses Nfs0003, uFaturamentoNotaFiscal;

{$R *.dfm}

procedure TFrmFaturamentoNovoOpcao.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmFaturamentoNovoOpcao.Bit_GravarClick(Sender: tObject);
begin
   //Pedido
   if (rbPedido.Checked) then
      begin
         //Chama tela de Pedidos Pendentes de Faturamento
         try
            //FrmFaturamentoNovoPedidos := TFrmFaturamentoNovoPedidos.Create(Application);
            //FrmFaturamentoNovoPedidos.ShowModal;
         finally
            //FrmFaturamentoNovoPedidos.Destroy;
            //FrmFaturamentoNovoPedidos := Nil;
         end;
      end
   else
   //Nota Fiscal de Entrada
   if (rbNotaFiscalEntrada.Checked) then
      begin
         //Chama tela de Pedidos Pendentes de Faturamento
         try
            FormConsNFGrid := TFormConsNFGrid.Create(Application);
            FormConsNFGrid.ShowModal;
         finally
            FormConsNFGrid.Destroy;
            FormConsNFGrid := Nil;
         end;

      end
   else
      begin
         //Manual
         try
            FrmFaturamentoNovoNotaFiscal := TFrmFaturamentoNovoNotaFiscal.Create(Application);
            FrmFaturamentoNovoNotaFiscal.ShowModal;
         finally
            FrmFaturamentoNovoNotaFiscal.Destroy;
            FrmFaturamentoNovoNotaFiscal := Nil;
         end;
      end;
   Close; 
end;

end.
