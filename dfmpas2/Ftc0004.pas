{***************************************************************
| Programa...: FTC0004- Nome formulario = FormFTCMaterial
| Objetivo...: Localiza Item da ficha na grade
| Analista...: Márcio Neu Pacheco
| Programador: Márcio Neu Pacheco
|
| Comentários:
|
| Criação..........: Set/01
| Ultima Alteração.:
| Alterado por.....:
|
****************************************************************}
unit Ftc0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables, Buttons;

type
  TFormFTCMaterial = class(TForm)
    DbGridMat: TDBGrid;
    GroupBox1: TGroupBox;
    RadRefer: TRadioButton;
    RadProduto: TRadioButton;
    Edt_Pesq: TEdit;
    FiltroProd: TSpeedButton;
    procedure RadReferClick(Sender: tObject);
    procedure RadProdutoClick(Sender: tObject);
    procedure Edt_PesqExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DbGridMatDblClick(Sender: tObject);
    procedure FiltroProdClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbGridMatKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_PesqEnter(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFTCMaterial: TFormFTCMaterial;

implementation

Uses Ftc0003, Database, Ftc0001, Prd0007;

{$R *.DFM}





procedure TFormFTCMaterial.RadReferClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 11;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 120;
end;

procedure TFormFTCMaterial.RadProdutoClick(Sender: tObject);
begin
Edt_Pesq.Visible := True;
Edt_Pesq.Text := '';
Edt_Pesq.MaxLength := 40;
Edt_Pesq.setfocus;
Edt_Pesq.Width := 410;
end;

procedure TFormFTCMaterial.Edt_PesqExit(Sender: tObject);
begin
if RadProduto.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
     Datamodulo.TbProduto.FindNearest([Edt_Pesq.text]);
     DbGridMat.Setfocus;
   end;
if RadRefer.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
     if Datamodulo.TbProduto.Findkey([Edt_Pesq.text]) = False Then
       begin
         messagebeep(10);
         uteis.aviso('Material não encontrado !');
       end;
     DbGridMat.Setfocus;
   end;
Edt_Pesq.Color := clWindow;   
end;

procedure TFormFTCMaterial.FormShow(Sender: tObject);
begin
Left := 184;
Top := 25;
// default alfabetica
Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
DbGridMat.SetFocus;
end;

procedure TFormFTCMaterial.DbGridMatDblClick(Sender: tObject);
begin
 FormItemFichaTec.EditMaterial.Text:= Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

// if (FormFichaTecnica.TbFichaTecnicaItem.State in [dsBrowse]) then
    // alterando items atual
//    FormFichaTecnica.TbFichaTecnicaItem.Edit;

// FormItemFichaTec.BuscaMaterial;
 close;
end;

procedure TFormFTCMaterial.FiltroProdClick(Sender: tObject);
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

procedure TFormFTCMaterial.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
// volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
 FormItemFichaTec.DbeDescricao.SetFocus;
end;

procedure TFormFTCMaterial.DbGridMatKeyPress(Sender: tObject;
  var Key: Char);
begin
FormItemFichaTec.EditMaterial.Text:= Datamodulo.TbProdutoPRD_REFER.Value;
 // volta indice p/ tela anterior
 Datamodulo.TbProduto.IndexName := 'XPRD_REFE';

// if (FormFichaTecnica.TbFichaTecnicaItem.State in [dsBrowse]) then
    // alterando items atual
//    FormFichaTecnica.TbFichaTecnicaItem.Edit;

// FormItemFichaTec.BuscaMaterial;
 close;
end;

procedure TFormFTCMaterial.Edt_PesqEnter(Sender: tObject);
begin
Edt_Pesq.Color := $0080FFFF;
end;

end.
