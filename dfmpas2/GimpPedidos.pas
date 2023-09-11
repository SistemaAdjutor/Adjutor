unit GimpPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormGImpPedidos = class(TForm)
    Btn_Imprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Btn_ImprimirClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGImpPedidos: TFormGImpPedidos;

implementation

uses Ped0008;

{$R *.dfm}

procedure TFormGImpPedidos.Btn_ImprimirClick(Sender: tObject);
begin
{
    if (RxDataInicial.Text = '  /  /    ') or (RxDataFinal.Text = '  /  /    ') then
       begin
           uteis.aviso('Informe o Periódo !');
           RxDataInicial.SetFocus;
           exit;
       end
    else
       begin
           BuscaVendas;
           LBL_00_LTITULO1.Caption := 'Relatório de Pedidos';
           LBL_00_LTITULO2.Caption := 'Periódo de: '+RxDataInicial.Text+' até '+RxDataFinal.Text;
           if Rad_todos.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Todos os Pedidos';
           if Rad_Fatu.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Faturado(s)';
           if Rad_Pend.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Pendente(s)';
           if Rad_Cliente.checked  then
              begin
                  if CbPesq.ItemIndex <> 0 then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Cliente: '+Edt_Lista.Text+' '+CbPesq.Text;
              end;
           if Rad_Rep.checked  then
              begin
                  if CbPesq.ItemIndex <> 0 then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Representante: '+Edt_Lista.Text+' '+CbPesq.Text;
              end;
           if Rad_Ref.checked  then
              begin
                  if Edt_Lista.Text <> '' then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Ref. ao produto: '+Edt_Lista.Text;
              end;
           Screen.Cursor := crHourGlass;
           if SqlCdsPesq.IsEmpty = false then
              begin
                  ppRpPesq.DeviceType := 'Screen';
                  ppRpPesq.Print;
              end
           else
              begin
                  uteis.aviso('Deve informar um periódo !');
                  RxDataInicial.SetFocus;
              end;
       end;
    Screen.Cursor := crDefault;
}    
end;

end.
