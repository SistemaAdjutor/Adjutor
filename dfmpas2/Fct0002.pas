unit Fct0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Uteis,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TFormFCustoGrid = class(TForm)
    Lb_Busca: TLabel;
    GroupBox1: TGroupBox;
    Rd_Refe: TRadioButton;
    Rd_Desc: TRadioButton;
    Edt_Busca: TEdit;
    DBGridFicha: TDBGrid;
    TQFichaCusto: TQuery;
    DsQFichaCusto: TDataSource;
    TQFichaCustoFTC0000PRD_REFER: TStringField;
    TQFichaCustoFTC_TUP: TFloatField;
    TQFichaCustoPRD0000PRD_REFER: TStringField;
    TQFichaCustoPRD_DESCRI: TStringField;
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Busca;
    procedure Rd_RefeClick(Sender: tObject);
    procedure Rd_DescClick(Sender: tObject);
    procedure Edt_BuscaExit(Sender: tObject);
    procedure DBGridFichaDblClick(Sender: tObject);
    procedure Edt_BuscaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure ImgVoltarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFCustoGrid: TFormFCustoGrid;

implementation

uses Fct0001;

{$R *.DFM}







procedure TFormFCustoGrid.Busca;
begin
if Rd_Refe.checked  then
   Begin
   screen.cursor := crHourglass;
   WITH TQFichaCusto do
     begin
     Close;
     SQL.Clear;
     Sql.Add('SELECT FTC0000.PRD_REFER, FTC0000.FTC_TUP, PRD0000.PRD_REFER, PRD0000.PRD_DESCRI');
     Sql.Add('FROM FTC0000, PRD0000');
     Sql.Add('WHERE FTC0000.PRD_REFER = PRD0000.PRD_REFER');
     Sql.Add('ORDER BY FTC0000.PRD_REFER');
     Open;
     end;
   if TQFichaCusto.Locate('PRD0000.PRD_REFER',Edt_busca.Text,[])=False Then
      begin
      uteis.aviso('Ficha de Custo não encontrada!');
      end;
   screen.cursor := crDefault;
   DBGridFicha.setfocus;
   end;
if Rd_Desc.checked  then
   Begin
   screen.cursor := crHourglass;
   WITH TQFichaCusto do
     begin
     Close;
     SQL.Clear;
     Sql.Add('SELECT FTC0000.PRD_REFER, FTC0000.FTC_TUP, PRD0000.PRD_REFER, PRD0000.PRD_DESCRI');
     Sql.Add('FROM FTC0000, PRD0000');
     Sql.Add('WHERE FTC0000.PRD_REFER = PRD0000.PRD_REFER');
     Sql.Add('ORDER BY FTC0000.PRD_DESCRI');
     Open;
     end;
   if TQFichaCusto.Locate('PRD_DESCRI',Edt_busca.Text,[loPartialKey])=False Then
      begin
      uteis.aviso('Ficha de Custo não encontrada!');
      end;
   screen.cursor := crDefault;
   DBGridFicha.setfocus;
   end;
end;


procedure TFormFCustoGrid.Rd_RefeClick(Sender: tObject);
begin
Lb_Busca.Caption    := 'Digite a Referência do Produto.';
Edt_Busca.text      := '';
Edt_Busca.Visible   := True;
Edt_Busca.Width     := 98;
Edt_Busca.MaxLength := 11;
Edt_Busca.setfocus;
end;


procedure TFormFCustoGrid.Rd_DescClick(Sender: tObject);
begin
Lb_Busca.Caption    := 'Digite Descrição do Produto.';
Edt_Busca.text      := '';
Edt_Busca.Visible   := True;
Edt_Busca.Width     := 330;
Edt_Busca.MaxLength := 45;
Edt_Busca.SetFocus;
end;


procedure TFormFCustoGrid.Edt_BuscaExit(Sender: tObject);
begin
  Busca;
end;


procedure TFormFCustoGrid.DBGridFichaDblClick(Sender: tObject);
begin
  close;
end;


procedure TFormFCustoGrid.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  screen.Cursor := CrHourglass;
  // Antes de fechar Tquery fazer busca no registro atual
  FormFichaCusto.EdtPRD_REFER.Text := TQFichaCustoFtc0000PRD_REFER.Value;
  FormFichaCusto.TbFichaCusto.FindKey([TQFichaCustoFtc0000PRD_REFER.Value]);
  //
  // Atualizar FILTRO Itens
  With FormFichaCusto.TbFichaCustoItem do
    begin
    Filtered := False;
    Filter := 'PRD_REFER = '''+FormFichaCusto.EdtPRD_REFER.Text+'''';
    Filtered := True;
    end;
  Try
    TQFichaCusto.close;
  except
    uteis.erro  ('Impossível fechar tabela "TQFichaCusto"');
  end;
  screen.Cursor := CrDefault;
end;


procedure TFormFCustoGrid.Edt_BuscaClick(Sender: tObject);
begin
  Edt_Busca.SelectAll;
end;


procedure TFormFCustoGrid.FormShow(Sender: tObject);
begin
  Left := 4;
  Top := 6;
  Try
    TQFichaCusto.open;
  except
    uteis.erro  ('Impossível abrir tabela "TQFichaCusto"');
  end;
end;

procedure TFormFCustoGrid.ImgVoltarClick(Sender: tObject);
begin
  Close;
end;

end.
