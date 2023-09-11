{***************************************************************
| Programa...: Ped0006- Nome formulario = FormPedProd          
| Objetivo...: Localiza Item do pedido na grade
| Analista...: Márcio Neu Pacheco
| Programador: Márcio Neu Pacheco
|
| Comentários:
|
| Criação..........: Abr/01
| Ultima Alteração.:
| Alterado por.....:
|
****************************************************************}
unit Ped0006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons,Db, DBTables;

type
  TFormPedProd = class(TForm)
    DbGridProd: TDBGrid;
    GroupBox1: TGroupBox;
    RadRefer: TRadioButton;
    RadProduto: TRadioButton;
    Edt_Pesq: TEdit;
    FiltroProd: TSpeedButton;
    procedure FiltroProdClick(Sender: tObject);
    procedure Edt_PesqExit(Sender: tObject);
    procedure Edt_PesqChange(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure RadProdutoClick(Sender: tObject);
    procedure DbGridProdDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbGridProdKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_PesqEnter(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedProd: TFormPedProd;

implementation

uses database, Prd0007, PedItem;

{$R *.DFM}




procedure TFormPedProd.FiltroProdClick(Sender: tObject);
begin
 try
    try
     FormPrdFiltro := TFormPrdFiltro.Create(Application);
     FormPrdFiltro.Top := 76;
     FormPrdFiltro.Left:= 37;
     FormPrdFiltro.ShowModal;
    finally
     FormPrdFiltro.Destroy;
     FormPrdFiltro := nil //  nil é - From Assigned = False
    end;
  except
    //beep;
    uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormPedProd.Edt_PesqExit(Sender: tObject);
begin
if RadProduto.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
     Datamodulo.TbProduto.FindNearest([Edt_Pesq.text]);
     DbGridProd.Setfocus;
   end;
if RadRefer.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
     if Datamodulo.TbProduto.Findkey([Edt_Pesq.text]) = False Then
       begin
         messagebeep(10);
         uteis.aviso('Referência não encontrada !');
       end;
     DbGridProd.Setfocus;
   end;

Edt_Pesq.Color := clWindow;
end;

procedure TFormPedProd.Edt_PesqChange(Sender: tObject);
begin
Edt_Pesq.SelectAll;
end;

procedure TFormPedProd.FormShow(Sender: tObject);
begin
Left := 184;
Top := 25;
// default alfabetica
Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
DbGridProd.SetFocus;
end;

procedure TFormPedProd.RadReferClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 11;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 110;  
end;

procedure TFormPedProd.RadProdutoClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 40;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 410;
end;

procedure TFormPedProd.DbGridProdDblClick(Sender: tObject);
begin
 FormPedItens.EditRef.Text:=Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

 if (Datamodulo.TbPedItem.State in [dsBrowse]) then
    // alterando produto atual
    Datamodulo.TbPedItem.Edit;

 FormPedItens.BuscaProduto;
 close;
end;

procedure TFormPedProd.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
// volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
end;

procedure TFormPedProd.DbGridProdKeyPress(Sender: tObject; var Key: Char);
begin
 FormPedItens.EditRef.Text:=Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

 if (Datamodulo.TbPedItem.State in [dsBrowse]) then
    // alterando produto atual
    Datamodulo.TbPedItem.Edit;

 FormPedItens.BuscaProduto;
 close;
end;

procedure TFormPedProd.Edt_PesqEnter(Sender: tObject);
begin
Edt_Pesq.Color := $0080FFFF;
end;

end.
