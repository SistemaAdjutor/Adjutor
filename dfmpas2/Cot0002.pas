unit Cot0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RwFunc, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, rxToolEdit;

type
  TFormCotacaoGrid = class(TForm)
    DBGridCotacao: TDBGrid;
    GroupBox1: TGroupBox;
    Rad_Data: TRadioButton;
    Rad_Fornecedor: TRadioButton;
    Rad_Codigo: TRadioButton;
    Mks_Emiss: TDateEdit;
    Edt_lista: TEdit;
    Lb_lista: TLabel;
    ImgVoltar: TImage;
    procedure Busca;
    procedure Rad_CodigoClick(Sender: tObject);
    procedure DBGridCotacaoDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Rad_FornecedorClick(Sender: tObject);
    procedure Rad_DataClick(Sender: tObject);
    procedure Edt_listaExit(Sender: tObject);
    procedure Mks_EmissExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_listaClick(Sender: tObject);
    procedure ImgVoltarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCotacaoGrid: TFormCotacaoGrid;

implementation

{$R *.DFM}

uses Database, Cot0001;








procedure TFormCotacaoGrid.Busca;//Busca Genérica
var
WForCodigo : String;
begin
if Rad_Codigo.checked  then
   Begin
     screen.cursor := crHourglass;
     Edt_lista.Text := StrZero(Edt_lista.Text,5);
     Datamodulo.TbCotacao.IndexName := 'XCOT_CODI';
     Datamodulo.TbCotacao.FindKey([Edt_Lista.text]);
     if Datamodulo.TbCotacao.Findkey([Edt_Lista.text]) = False Then
      begin
      messagebeep(MB_ICONEXCLAMATION);
      uteis.aviso('Código da cotação não encontrado !');
      end;
     screen.cursor := crDefault;
     DBGridCotacao.setfocus;
     end;
   //
if Rad_Data.checked  then
   Begin
   screen.cursor := crHourglass;
   Datamodulo.TbCotacao.IndexName := 'XCOT_DATA';
   if Datamodulo.TbCotacao.Findkey([Mks_Emiss.text]) = False Then
      begin
      messagebeep(MB_OK);
      uteis.aviso('Não existe cotação nessa data!');
      end;
   screen.cursor := crDefault;
   DBGridCotacao.setfocus;
   end;
//
if Rad_Fornecedor.checked  then
   Begin
   screen.cursor := crHourglass;
   //faz busca na tabela (TbFornec)
   Datamodulo.TbFornec.IndexName := 'XFOR_RAZA';
   Datamodulo.TbFornec.FindNearest([Edt_Lista.text]);
   WForCodigo := Datamodulo.TbFornecFOR_CODIGO.value;
   //Rebusca na tabela (TbCotação)
   Datamodulo.TbCotacao.IndexName := 'XFOR_CODI_COT';
   if Datamodulo.TbCotacao.Findkey([WForCodigo]) = False Then
      begin
      //beep;
      uteis.aviso('Nenhuma cotação com esse fornecedor foi encontrada!');
      end;
   //Datamodulo.TbCotacao.GotoNearest;
   screen.cursor := crDefault;
   DBGridCotacao.setfocus;
   end;
end;


procedure TFormCotacaoGrid.Rad_CodigoClick(Sender: tObject);
begin
  Mks_Emiss.Visible := False;
  Edt_Lista.Visible := True;
  Edt_Lista.MaxLength := 5;
  Edt_Lista.Width:= 50;
  Lb_Lista.Caption := 'Digite Código';
  Edt_Lista.Text := '';
  Edt_Lista.SetFocus;
end;


procedure TFormCotacaoGrid.Rad_FornecedorClick(Sender: tObject);
begin
  Mks_Emiss.Visible := False;
  Edt_Lista.Visible := True;
  Edt_lista.MaxLength := 45;
  Edt_Lista.Width:= 340;
  Lb_Lista.Caption := 'Nome do Fornecedor';
  Edt_Lista.Text := '';
  Edt_Lista.SetFocus;
end;


procedure TFormCotacaoGrid.DBGridCotacaoDblClick(Sender: tObject);
begin
  Close;
end;


procedure TFormCotacaoGrid.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  FormCotacao.EdtCot_codigo.text := Datamodulo.TbCotacaoCOT_CODIGO.Value;
  Datamodulo.TbCotacao.IndexName := 'XCOT_CODI';
end;


procedure TFormCotacaoGrid.Rad_DataClick(Sender: tObject);
begin
  Mks_Emiss.Visible := True;
  Edt_Lista.Visible := False;
  Lb_Lista.Caption := 'Data de Emissão';
  Mks_Emiss.Clear;
  Mks_Emiss.SetFocus;
end;


procedure TFormCotacaoGrid.Edt_listaExit(Sender: tObject);
begin
  busca;
end;

procedure TFormCotacaoGrid.Mks_EmissExit(Sender: tObject);
begin
  busca;
end;


procedure TFormCotacaoGrid.FormShow(Sender: tObject);
begin
   Left := 1;
   Top := 68;
   Datamodulo.TbCotacao.IndexName := 'XCOT_DATA';
end;

procedure TFormCotacaoGrid.Edt_listaClick(Sender: tObject);
begin
Edt_lista.SelectAll;
end;

procedure TFormCotacaoGrid.ImgVoltarClick(Sender: tObject);
begin
  Close;
end;

end.
