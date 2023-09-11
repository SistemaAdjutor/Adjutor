unit uAutorizaPedidoAbaixoMinimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TfrmAutorizaPedidoAbaixoMinimo = class(TForm)
    lbAviso: TLabel;
    Label3: TLabel;
    EdUsuario: TEdit;
    msksenha: TMaskEdit;
    Label4: TLabel;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    Label1: TLabel;
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
  private
  public
  end;

var
  frmAutorizaPedidoAbaixoMinimo: TfrmAutorizaPedidoAbaixoMinimo;

implementation

uses Uteis, InicioDB, uPedido;

{$R *.dfm}

procedure TfrmAutorizaPedidoAbaixoMinimo.BitConfirmarClick(Sender: tObject);
begin
  DBInicio.qAux.Close;
  DBInicio.qAux.SQL.Text :=
    'SELECT COUNT(USP_PEDIDO_ABAIXO_PRAZO_MINIMO) AS AUTORIZADO FROM USUARIO u , USUARIO_PARAMETRO p WHERE u.usu_codigo = p.usp_cod_usuario ' +
    ' AND USU_LOGIN = '+ qStr( EdUsuario.Text ) + ' AND USU_SENHA = ' + qStr(msksenha.Text) +
    ' AND USP_PEDIDO_ABAIXO_PRAZO_MINIMO = ' + qStr('S')  ;
  DBInicio.qAux.Open;
  // CopyToClipBoard(DBInicio.qAux.SQL.Text);
  if dbInicio.qAux.FieldByName('AUTORIZADO').AsInteger > 0 then
     ModalResult := mrOk
  else
     GeraException('Usuário não autorizado a vender abaixo do valor mínimo para o prazo especificado');
end;

procedure TfrmAutorizaPedidoAbaixoMinimo.BitCancelarClick(Sender: tObject);
begin
     ModalResult := mrCancel ;
end;

end.
