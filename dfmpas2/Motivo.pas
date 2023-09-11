unit Motivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmMotivo = class(TForm)
    GroupBox1: TGroupBox;
    Edt_Motivo: TEdit;
    BitConfirma: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitConfirmaClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMotivo: TFrmMotivo;

implementation

uses Uteis, Rec0001, Rec0002, Pag0001, Pag0002, ImpCh;

{$R *.dfm}





procedure TFrmMotivo.BitConfirmaClick(Sender: tObject);
begin
   if (Edt_Motivo.Text <> '') then
      begin
         if Assigned(FormContasReceber)
         and not Assigned(FormContasRecParcelas) then
            begin
               FormContasReceber.bConfirmar_Exclusao := True;
            end
         else
         if Assigned(FormContasRecParcelas)
         and Assigned(FormContasReceber) then
            begin
               FormContasRecParcelas.bConfirmar_Exclusao_parcela := True;
            end
         else
         if Assigned(formContasPagar)
         and not Assigned(FormContasPagParcelas) then
            begin
               FormContasPagar.bConfirmar_Exclusao := True;
            end
         else
         if Assigned(FormContasPagParcelas)
         and Assigned(formContasPagar) then
            begin
               FormContasPagParcelas.bConfirmar_Exclusao_parcela := True;
            end
         else
         if Assigned(FormImpCheque) then
            begin
               FormImpCheque.bConfirmar_Exclusao_cheque := True;
            end;
         Close;
      end
   else
      begin
         uteis.aviso('Informe o Motivo !');
         Edt_Motivo.SetFocus;
         Edt_Motivo.SelectAll;
      end;
end;

procedure TFrmMotivo.BitBtn1Click(Sender: tObject);
begin
   if Assigned(FormContasReceber) then
      begin
         FormContasReceber.bConfirmar_Exclusao := False;
      end
   else
   if Assigned(FormContasRecParcelas) then
      begin
         FormContasRecParcelas.bConfirmar_Exclusao_parcela := False;
      end
   else
   if Assigned(formContasPagar) then
      begin
         FormContasPagar.bConfirmar_Exclusao := False;
      end
   else
   if Assigned(FormContasPagParcelas) then
      begin
         FormContasPagParcelas.bConfirmar_Exclusao_parcela := False;
      end
   else
   if Assigned(FormImpCheque) then
      begin
         FormImpCheque.bConfirmar_Exclusao_cheque := False;
      end;
   Close;
end;

end.

