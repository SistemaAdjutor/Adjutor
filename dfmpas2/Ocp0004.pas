unit Ocp0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Db, RwFunc, DBTables;

type
  TFormOcpProd = class(TForm)
    DbGridProd: TDBGrid;
    GroupBox1: TGroupBox;
    RadRefer: TRadioButton;
    RadProduto: TRadioButton;
    FiltroProd: TSpeedButton;
    Edt_Pesq: TEdit;
    procedure FiltroProdClick(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure RadProdutoClick(Sender: tObject);
    procedure DbGridProdDblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_PesqChange(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbGridProdKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_PesqExit(Sender: tObject);
    procedure Edt_PesqEnter(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOcpProd: TFormOcpProd;

implementation

uses Prd0007, Ocp0003, Database;

{$R *.DFM}






procedure TFormOcpProd.FiltroProdClick(Sender: tObject);
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

procedure TFormOcpProd.RadReferClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 11;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 100;
end;

procedure TFormOcpProd.RadProdutoClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 40;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 410;
end;

procedure TFormOcpProd.DbGridProdDblClick(Sender: tObject);
begin
 FormOcpItem.EditMaterial.Text:=Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

 if (Datamodulo.TbOrdCompItem.State in [dsBrowse]) then
    // alterando produto atual
    Datamodulo.TbOrdCompItem.Edit;

 FormOcpItem.BuscaMaterial;
 close;
end;

procedure TFormOcpProd.FormShow(Sender: tObject);
begin
Left := 172;
Top := 25;
// default alfabetica
Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
DbGridProd.SetFocus;
end;

procedure TFormOcpProd.Edt_PesqChange(Sender: tObject);
begin
Edt_Pesq.SelectAll;
end;

procedure TFormOcpProd.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
// volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
end;

procedure TFormOcpProd.DbGridProdKeyPress(Sender: tObject; var Key: Char);
begin
 FormOcpItem.EditMaterial.Text:=Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

 if (Datamodulo.TbOrdCompItem.State in [dsBrowse]) then
    // alterando produto atual
    Datamodulo.TbOrdCompItem.Edit;

 FormOcpItem.BuscaMaterial;
 close;
end;

procedure TFormOcpProd.Edt_PesqExit(Sender: tObject);
begin
Edt_Pesq.Color := clWindow;

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

end;

procedure TFormOcpProd.Edt_PesqEnter(Sender: tObject);
begin
Edt_Pesq.Color := $0080FFFF;
end;

end.
