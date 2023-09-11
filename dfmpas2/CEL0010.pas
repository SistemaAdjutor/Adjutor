unit CEL0010;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, Buttons, StdCtrls, ppComm, ppRelatv, ppProd, ppClass, Data.DBXFirebird, SimpleDS;

type
  TFormCelPesquisa = class(TForm)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadRazao: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Lista: TEdit;
    SqlCdsPesCelula: TSQLClientDataSet;
    SqlCdsPesCelulaCEL_CODIGO: TStringField;
    SqlCdsPesCelulaCEL_NOME: TStringField;
    SqlCdsPesCelulaCEL_RAZAO: TStringField;
    DsPesqCelula: TDataSource;
    DBGridComponetes: TDBGrid;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    procedure FormShow(Sender: tObject);
    procedure Edt_ListaClick(Sender: tObject);
    procedure Edt_ListaEnter(Sender: tObject);
    procedure DBGridComponetesDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
  private
    { Private declarations }
    procedure MostraCelula;
    procedure LayOutCelula;
    procedure BotaoPesquisar;
    procedure mensagens;
    procedure BuscaCelula;

  public
    { Public declarations }
  end;

var
  FormCelPesquisa: TFormCelPesquisa;

implementation

Uses Uteis, RWFunc, CEL0001, DmProdu, Men0001, ufrmpreviewrb, iniciodb;
{$R *.dfm}





procedure TFormCelPesquisa.FormShow(Sender: tObject);
begin
    Left := 50;
    Top := 110;
    Screen.Cursor := crHourglass;
    MostraCelula;
    RadNome.Checked := true;
    LayOutCelula;
    Edt_Lista.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormCelPesquisa.Edt_ListaClick(Sender: tObject);
begin
    Edt_lista.SelectAll;
end;

procedure TFormCelPesquisa.Edt_ListaEnter(Sender: tObject);
begin
    Edt_Lista.Text := '';
    BotaoPesquisar;
    MostraCelula;
    Edt_Lista.Color := $0080FFFF;
end;

procedure TFormCelPesquisa.BuscaCelula;
Var
  wSeleciona,wOrdem :String;
Begin
    screen.Cursor := crHourGlass;
    {Pesquisa por Nome}
    If RadNome.checked  then
       Begin
           wSeleciona := 'where C1.CEL_NOME LIKE '''+Edt_Lista.Text+'%''';
           wOrdem     := 'C1.CEL_NOME';
       end;
    {Pesquisa por nome}
    if RadRazao.checked  Then
       Begin
           wSeleciona := 'where C1.CEL_RAZAO LIKE '''+Edt_Lista.Text+'%''';
           wOrdem     := 'C1.CEL_RAZAO';
       end;
    try
      SqlCdsPesCelula.Close;
      SqlCdsPesCelula.CommandText:=Sqldef('ORDEMPRODUCAO','SELECT C1.CEL_CODIGO,C1.CEL_NOME,C1.CEL_RAZAO FROM CEL0000 C1 ',wSeleciona,wOrdem,'C1.');
      SqlCdsPesCelula.open;
      If SqlCdsPesCelula.IsEmpty then
         begin
             mensagens;
             Edt_lista.Text:='';
             BotaoPesquisar;
             BitCancelar.Click;
         end
      else
         begin
             BotaoPesquisar;
             DBGridComponetes.SetFocus;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir a tabela CEL0000 !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormCelPesquisa.DBGridComponetesDblClick(Sender: tObject);
begin
    FormCelula.EdtCel_codigo.Text:=SqlCdsPesCelulaCEL_CODIGO.AsString;
    FormCelula.PesquisaCelula;
    FormCelula.DbeCEL_NOME.SetFocus;
    Close;
end;

procedure TFormCelPesquisa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Try
      SqlCdsPesCelula.Close;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao Fechar a tabela CEL0000 !'+e.message));
   end;
end;

procedure TFormCelPesquisa.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') then
       begin
           BuscaCelula;
       end
    else
       begin
           Mensagens;
           Edt_Lista.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormCelPesquisa.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCelPesquisa.BotaoPesquisar;
begin
    if Edt_Lista.Text <> '' Then
       begin
           BitPesquisar.Visible := False;
           BitCancelar .Visible := True;
       end
    else
       begin
           BitPesquisar.Visible := True;
           BitCancelar .Visible := False;
       end;
end;

procedure TFormCelPesquisa.LayOutCelula;
begin
    if RadNome.checked  then
       begin
           GBPESQUISA.Caption:='Informe o Nome da Célula:';
       end;
    if RadRazao.checked  then
       begin
           GBPESQUISA.Caption:='Informe a Razão Social da Célula:';
       end;
    Edt_lista.Clear;
    Edt_Lista.SetFocus;
end;

procedure TFormCelPesquisa.mensagens;
begin
    if RadNome.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Nome da Célula !')
           else
              uteis.aviso('Nome não encontrado !');
       end;
    if RadRazao.checked  then
      begin
          if Edt_Lista.Text = '' then
             uteis.aviso('Informe a Razão !')
          else
             uteis.aviso('Razão não encontrado !');
      end;
end;

procedure TFormCelPesquisa.MostraCelula;
begin
    try
      Screen.Cursor := crHourglass;
      SqlCdsPesCelula.Close;
      SqlCdsPesCelula.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT C1.CEL_CODIGO,C1.CEL_NOME,C1.CEL_RAZAO FROM CEL0000 C1','','C1.CEL_NOME','C1.');
      SqlCdsPesCelula.Open;
      Screen.Cursor := crDefault;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir tabela CEL0000!'+e.message));
    end;
end;

procedure TFormCelPesquisa.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
end;

procedure TFormCelPesquisa.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraCelula;
    Edt_Lista.Text := '';
    BotaoPesquisar;
    Edt_Lista.SetFocus;
    Screen.Cursor := crDefault;
end;

end.
