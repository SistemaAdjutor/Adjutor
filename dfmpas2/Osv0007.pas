unit Osv0007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormOrdServConsiderar = class(TForm)
    GroupBox1: TGroupBox;
    Rad_Sim_Considera: TRadioButton;
    Rad_Nao_Considera: TRadioButton;
    Chk_PA: TCheckBox;
    Chk_PI: TCheckBox;
    Btn_OK: TBitBtn;
    Bit_Cancelar: TBitBtn;
    procedure Btn_OKClick(Sender: tObject);
    procedure Rad_Sim_ConsideraClick(Sender: tObject);
    procedure Chk_PAClick(Sender: tObject);
    procedure Chk_PIClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdServConsiderar: TFormOrdServConsiderar;

implementation

uses Osv0001B, RWFunc;

{$R *.dfm}





procedure TFormOrdServConsiderar.Btn_OKClick(Sender: tObject);
begin
    if (Rad_Sim_Considera.checked ) then
       begin
           FormOrdServCentroB.wConsiderar := 'S';
       end
    else
       begin
{
           if ((Chk_PA.Checked = False) and (Chk_PI.Checked = False)) then
              begin
                  uteis.aviso('Favor marcar umas das Opções !');
                  Chk_Pa.SetFocus;
                  Exit;
              end
           else
              begin
}
                  FormOrdServCentroB.wConsiderar := 'N'
//              end;
       end;
    Close;
end;

procedure TFormOrdServConsiderar.Rad_Sim_ConsideraClick(Sender: tObject);
begin
    if (Rad_Sim_Considera.checked ) then
       begin
           Chk_PA.Checked := False;
           Chk_PA.Enabled := False;
           Chk_PI.Enabled := False;
           Chk_PI.Checked := False;
       end
    else
       begin
           Chk_PA.Enabled             := True;
           FormOrdServCentroB.wBtn_Pa := True;
           Chk_PI.Enabled             := True;
           FormOrdServCentroB.wBtn_Pi := True;
       end;
end;

procedure TFormOrdServConsiderar.Chk_PAClick(Sender: tObject);
begin
    if (Chk_PA.checked ) then
        begin
           FormOrdServCentroB.wBtn_Pa := True;
       end
    else
       begin
           FormOrdServCentroB.wBtn_Pa := False;
       end;
end;

procedure TFormOrdServConsiderar.Chk_PIClick(Sender: tObject);
begin
    if (Chk_PI.checked ) then
       begin
           FormOrdServCentroB.wBtn_Pi := True;
       end
    else
       begin
           FormOrdServCentroB.wBtn_Pi := False;
       end;
end;

procedure TFormOrdServConsiderar.Bit_CancelarClick(Sender: tObject);
begin
    FormOrdServCentroB.wBtn_Cancel := 'S';
    Close;
end;

end.
