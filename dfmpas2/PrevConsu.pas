unit PrevConsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  NumEdit, StdCtrls, Grids, DBGrids, Buttons, DBCtrls, ExtCtrls, Mask, Db;

type
  TFormPrevConsumo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtProduto: TSpeedButton;
    EdtRefer: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    BitPrevisao: TBitBtn;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    LbVar1: TLabel;
    LbVar2: TLabel;
    LbVar5: TLabel;
    LbVar4: TLabel;
    LbVar6: TLabel;
    LbVar3: TLabel;
    Panel4: TPanel;
    BitIncluir: TSpeedButton;
    BitExcluir: TSpeedButton;
    BitGravar: TBitBtn;
    BitCancelar: TBitBtn;
    BirSair: TBitBtn;
    BitPedido: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitIncluirClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitExcluirClick(Sender: tObject);
    procedure BitPrevisaoClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtReferKeyPress(Sender: tObject; var Key: Char);
    procedure EdtReferExit(Sender: tObject);
    procedure BitGravarClick(Sender: tObject);
    procedure BuscaProd;
    Procedure Browse;
    Procedure Editing;
    procedure BirSairClick(Sender: tObject);
    Function SetFicha(Refer:String):Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrevConsumo: TFormPrevConsumo;

implementation

uses Database, RWFunc;

{$R *.DFM}

////function uteis.confirmacao ( msg : pchar ) : word; far; external 'mensagen';
//procedure aviso ( msg : pchar ); far; external 'mensagen';
//procedure uteis.erro ( msg : pchar ); far; external 'mensagen';



Function TFormPrevConsumo.SetFicha(Refer:String):Boolean;
begin
if DataModulo.TbFichaTec.FindKey([Refer]) then
   begin
   Result := True;
   LbVar1.Caption := DataModulo.TbFichaTecFTC_DCMODE1.Value;
   LbVar2.Caption := DataModulo.TbFichaTecFTC_DCMODE2.Value;
   LbVar3.Caption := DataModulo.TbFichaTecFTC_DCMODE3.Value;
   LbVar4.Caption := DataModulo.TbFichaTecFTC_DCMODE4.Value;
   LbVar5.Caption := DataModulo.TbFichaTecFTC_DCMODE5.Value;
   LbVar6.Caption := DataModulo.TbFichaTecFTC_DCMODE6.Value;
   end
else
   begin
   Result := False;
   LbVar1.Caption := 'VARIA플O 1';
   LbVar2.Caption := 'VARIA플O 2';
   LbVar3.Caption := 'VARIA플O 3';
   LbVar4.Caption := 'VARIA플O 4';
   LbVar5.Caption := 'VARIA플O 5';
   LbVar6.Caption := 'VARIA플O 6';
   end;
end;

procedure TFormPrevConsumo.Browse;
begin
EdtRefer.Enabled := False;
BtProduto.Enabled   := True;
BitPrevisao.Enabled := True;
BitPedido.Enabled   := True;
BitIncluir.Enabled  := True;
BitExcluir.Enabled  := True;
BitGravar.Enabled   := False;
BitCancelar.Enabled := False;
DBNavigator1.Enabled := True;
end;

procedure TFormPrevConsumo.Editing;
begin
if DataModulo.TbPrevCons.State in [dsInsert] then
   EdtRefer.Enabled := True;//n? muda da edi豫o
BtProduto.Enabled   := False;
BitPrevisao.Enabled := False;
BitPedido.Enabled   := False;
BitIncluir.Enabled  := False;
BitExcluir.Enabled  := False;
BitGravar.Enabled   := True;
BitCancelar.Enabled := True;
DBNavigator1.Enabled := False;
end;
                            
procedure TFormPrevConsumo.FormShow(Sender: tObject);
begin
Screen.Cursor := crHourGlass;
Try
  DataModulo.TbProduto.DatabaseName := PreOpen('Produtos');
  DataModulo.TbProduto.IndexName := 'XPRD_REFE';
  DataModulo.TbProduto.Open;
except
  uteis.erro  ('Ocorreu um Erro na Abertura da Tabela "PRODUTOS".');
End;
Try
  DataModulo.TbPrevCons.DatabaseName := PreOpen('Produtos');
  DataModulo.TbPrevCons.IndexName := 'XPRD_REFER';
  DataModulo.TbPrevCons.Open;
except
  uteis.erro  ('Ocorreu um Erro na Abertura da Tabela "PREVIS?".');
End;
Try
  DataModulo.TbFichaTec.DatabaseName := PreOpen('Produtos');
  DataModulo.TbFichaTec.IndexName := 'XPRD_REFER_FTC';
  DataModulo.TbFichaTec.Open;
except
  uteis.erro  ('Ocorreu um Erro na Abertura da Tabela "FTC0000".');
End;
Browse;
while not DataModulo.TbPrevCons.Eof do
  DataModulo.TbPrevCons.Delete;
DataModulo.TbPrevCons.DisableControls;
Screen.Cursor := crDefault;
end;

procedure TFormPrevConsumo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
DataModulo.TbProduto.Close;
DataModulo.TbPrevCons.Close;
end;

procedure TFormPrevConsumo.BitIncluirClick(Sender: tObject);
begin
Screen.Cursor := crHourGlass;
DataModulo.TbPrevCons.EnableControls;
DataModulo.TbPrevCons.Insert;
Editing;
EdtRefer.SetFocus;
Screen.Cursor := crDefault;
end;

procedure TFormPrevConsumo.BitCancelarClick(Sender: tObject);
begin
DataModulo.TbPrevCons.Cancel;
if DataModulo.TbPrevCons.IsEmpty then DataModulo.TbPrevCons.DisableControls else DataModulo.TbPrevCons.EnableControls;
Browse;
end;

procedure TFormPrevConsumo.BitExcluirClick(Sender: tObject);
begin
if not DataModulo.TbPrevCons.IsEmpty then
   if uteis.confirmacao ( 'Deseja Excluir?') = idYes then
      DataModulo.TbPrevCons.Delete;
if DataModulo.TbPrevCons.IsEmpty then DataModulo.TbPrevCons.DisableControls else DataModulo.TbPrevCons.EnableControls;
end;

procedure TFormPrevConsumo.BitPrevisaoClick(Sender: tObject);
begin
//GERAR E APAGAR TB PRINCIPAL
end;

procedure TFormPrevConsumo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
if not DataModulo.TbPrevCons.IsEmpty then
   if uteis.confirmacao ( 'Deseja Abandonar a Previs? Atual?') = idNo then
      CanClose := False;
end;

procedure TFormPrevConsumo.EdtReferKeyPress(Sender: tObject;
  var Key: Char);
begin
if Key = #13 then
   BuscaProd;
end;

procedure TFormPrevConsumo.BuscaProd;
begin
if DataModulo.TbPrevCons.State in [dsInsert]then
   begin
   if not (EdtRefer.Text = '' )then
      begin
      if Datamodulo.TbProduto.FindKey([EdtRefer.Text]) = True then
         begin
         if SetFicha(EdtRefer.Text) = True then
            begin
            DataModulo.TbPrevConsPRD_REFER.Value := EdtRefer.Text;
            DataModulo.TbPrevConsPRD_DESCRI.Value := DataModulo.TbProdutoPRD_DESCRI.Value;
            end
         else
            begin
            uteis.aviso(Pchar('A Refer?cia "'+EdtRefer.Text+'" n?"n? Possui Ficha T?nica!'));
            EdtRefer.Text := '';
            DataModulo.TbPrevConsPRD_REFER.Value := '';
            DataModulo.TbPrevConsPRD_DESCRI.Value := '';
            end;
         end
      else
         begin
         uteis.aviso('Produto n? Encontrado!');
         EdtRefer.Text := DataModulo.TbPrevConsPRD_REFER.Value;
         EdtRefer.SetFocus;
         end;
      end;
   end;
end;


procedure TFormPrevConsumo.EdtReferExit(Sender: tObject);
begin
BuscaProd;
end;

procedure TFormPrevConsumo.BitGravarClick(Sender: tObject);
begin
if DataModulo.TbPrevConsPRD_REFER.Value = '' then
   begin
   uteis.aviso('Entre com a Refer?cia!!!');
   EdtRefer.SetFocus;
   exit;
   end;
DataModulo.TbPrevCons.Post;
Browse;
end;

procedure TFormPrevConsumo.BirSairClick(Sender: tObject);
begin
Close;
end;

end.
