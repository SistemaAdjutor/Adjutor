unit ProcGen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB;

 procedure DesabilitaBotoes;
 procedure HabilitaBotoes;


implementation

uses Ban0001;

procedure DesabilitaBotoes;
begin
  Bit_novo.Enabled := False;
  Bit_Excluir.Enabled := False;
  Bit_Sair.Enabled := False;
  Bit_Lista.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Enabled := True;
end;

procedure HabilitaBotoes;
begin
  Bit_novo.Enabled := True;
  Bit_Excluir.Enabled := True;
  Bit_Sair.Enabled := True;
  Bit_Lista.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
end;


end.
