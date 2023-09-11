unit fat0008;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormFaturamentoOpcao = class(TForm)
    GroupBox1: TGroupBox;
    RadPS: TRadioButton;
    RadP: TRadioButton;
    RadS: TRadioButton;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    chkIntegrar: TCheckBox;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: TObject);
  private
         sTipoFaturamento: string;
  public
        Property TipoFaturamento: string Read sTipoFaturamento write sTipoFaturamento;
  end;

var
  FormFaturamentoOpcao: TFormFaturamentoOpcao;

implementation

uses iniciodb;
{$R *.dfm}

procedure TFormFaturamentoOpcao.Bit_CancelarClick(Sender: tObject);
begin
   sTipoFaturamento := '';
   ModalResult:=mrCancel;
end;

procedure TFormFaturamentoOpcao.Bit_GravarClick(Sender: tObject);
begin
   if (RadPS.Checked) then
      sTipoFaturamento := 'J'
   else
   if (RadS.Checked) then
      sTipoFaturamento := 'S'
   else
   if (RadP.Checked) then
      sTipoFaturamento := 'P';
   ModalResult:=mrOk;
end;

procedure TFormFaturamentoOpcao.FormShow(Sender: TObject);
begin
 chkIntegrar.Visible := not dbinicio.Empresa.PMT_INTEGRAR_PRD_SERV;
end;

end.
