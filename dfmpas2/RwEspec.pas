{******************************************************************
| Programa...: RWEspec
| Objetivo...: Procedures Especificas das empresas
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários: Rotinas dististas usadas p/ determinada empresa
|              principalmente p/ impressao de notas fiscais
|
| Criação..........: Out/99
| Ultima Alteração : Fev/03
| Alterado Por     : Márcio
**********************************************************************}
unit RwEspec;

interface

Uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ERPrint,Grids, DBGrids, RWfunc;

Procedure GravaFlagDuplicata(wTipo:String);

implementation

USES database, NFImprim, ADJ0001;




Procedure GravaFlagDuplicata(wTipo:String);
var
wfat_Codigo:string;
begin
// Colocar flag de impressao nas faturas impressas
// Flag ->  S = sim
// Paramentros : wTipo -> "DT" = impressao por Data ou "NM" = impressao por numero
{
if wTipo = 'DT' then
  begin
  // marcar todas as faturas como impressas
  if  TbRecParce.FindKey([FormGimpDuplicata.TQReceberParcFAT_CODIGO.Value])= True then
     begin
     wFat_Codigo:= FormGimpDuplicata.TbRecParceFAT_CODIGO.Value;
     while (wFat_Codigo=FormGimpDuplicata.TbRecParceFAT_CODIGO.Value)and not(FormGimpDuplicata.TbRecParce.Eof) do
       begin
       FormGimpDuplicata.TbRecParce.Edit;
       FormGimpDuplicata.TbRecParceFPC_IMPDUP.Value := 'S';
       FormGimpDuplicata.TbRecParce.Post;
       FormGimpDuplicata.TbRecParce.Next;
       end;
    end;
  end
else
  // Wtipo = 'NM', marcar somente a fatura que foi digitado, como impressa
  begin
  // marcar somente a parcela escolhida
  if  FormGimpDuplicata.TbRecParce.FindKey([FormGimpDuplicata.TQReceberParcFAT_CODIGO.Value])= True then
     begin
     wFat_Codigo:= FormGimpDuplicata.TbRecParceFAT_CODIGO.Value;
     while (wFat_Codigo=FormGimpDuplicata.TbRecParceFAT_CODIGO.Value)and not(FormGimpDuplicata.TbRecParce.Eof) do
       begin
       IF FormGimpDuplicata.TbRecParceFPC_NUMER.Value = FormGimpDuplicata.EditParcela.Text then
         begin
         FormGimpDuplicata.TbRecParce.Edit;
         FormGimpDuplicata.TbRecParceFPC_IMPDUP.Value := 'S';
         FormGimpDuplicata.TbRecParce.Post;
         end;
       FormGimpDuplicata.TbRecParce.Next;
       end;
     end;

  end;
}
end;

end.
