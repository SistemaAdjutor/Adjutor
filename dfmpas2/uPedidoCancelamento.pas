unit uPedidoCancelamento;

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComboBoxRw, SgDbSeachComboUnit;

type
  TFrmPedidoCancelemento = class(TForm)
    GroupBox1: TGroupBox;
    CbMotivo: TComboBoxRw;
    GroupBox2: TGroupBox;
    EdMotivo: TEdit;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
         fNumPedido: String;
    procedure SetNumPedido(const Value: string);
  public
        Property NumPedido: string Write SetNumPedido;

  end;

var

  FrmPedidoCancelemento: TFrmPedidoCancelemento;

implementation

uses
  Uteis, iniciodb, uPedido, uPedidoItem;

{$R *.dfm}


procedure TFrmPedidoCancelemento.Bit_CancelarClick(Sender: tObject);
begin
     ModalResult := mrCancel ;
end;

procedure TFrmPedidoCancelemento.Bit_GravarClick(Sender: tObject);
begin
     if (CbMotivo.Text = '') then
     begin
          uteis.aviso('Informar o motivo do cancelamento.')
     end
     else
     if (uteis.confirmacao ( 'Confirma o Cancelamento?')=mrYes) then
     begin
          // MARCA O PEDIDO COMO CANCELADO
          dbInicio.ExecSql( 'Update PED0000 SET PED_SITUACAO = '+QStr('C')+', '+
                            '                  PED_MOTIVO_CANCELAMENTO = '+QStr(edMotivo.Text)+', '+
                            '                  PED_USUARIO_CANCELAMENTO = '+ DBInicio.Usuario.CODIGO+ ','+
                            '                  PED_DATA_CANCELAMENTO    = '+ DateTimeToSQL(NOW)+','+
                            '                  PMT_REGISTRO = '+cbMotivo.idRetorno+
                            '  WHERE PED_CODIGO = '+QStr(fNumPedido)+
                            ConcatSe( ' and ', dbinicio.ExclusivoSql( 'PEDIDOS' ) ) );

         ModalResult := mrOk;
     end;
  with FrmPedido do
  begin
     SqlCdsPedidoItem.First;
     while not SqlCdsPedidoItem.Eof do
     begin
        FrmPedidoItem.ExcluiContaCorrente(SqlCdsPedidoItemPRD_REFER.Value,SqlCdsPedidoPED_CODIGO.Value);
        SqlCdsPedidoItem.Next;
     end;
  end;
end;

procedure TFrmPedidoCancelemento.FormShow(Sender: tObject);
begin
     CbMotivo.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
     CbMotivo.CarregarCombo := True;
     CbMotivo.ItemIndex := 0;
end;

procedure TFrmPedidoCancelemento.SetNumPedido(const Value: string);
begin
     fNumPedido := Value ;
     Self.Caption:='Cancelamento do Pedido Nro.'+Value;
end;

end.
