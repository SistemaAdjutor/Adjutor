{**************************************************************
 *  Programa...: BAN0001  - Nome formulario = FormBanc
 *  Objetivo...: Cadastrar Bancos
 *  Analista...: Márcio Neu Pacheco
 *  Programador:
 *
 *  Comentários:
 *
 *  Criação..........: Out/1998.
 *  Ultima Alteração.: Out/2011
 *  Alterado por.....: Márcio
 *
 ***************************************************************}
unit Ban0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, Grids, DBGrids,
  RwFunc, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS;

type
  TFormBancoGrid = class(TForm)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_nome: TEdit;
    DBGridBanco: TDBGrid;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsConsBco: TSQLClientDataSet;
    DsConsBco: TDataSource;
    SqlCdsConsBcoBAN_CODIGO: TStringField;
    SqlCdsConsBcoBAN_APELIDO: TStringField;
    SqlCdsConsBcoBAN_CODAGE: TStringField;
    SqlCdsConsBcoBAN_FONE: TStringField;
    SqlCdsConsBcoBAN_CONTATO: TStringField;
    SqlCdsConsBcoBAN_JUROMES: TFMTBCdField;
    SqlCdsConsBcoBAN_CODAGEDIG: TStringField;
    SqlCdsConsBcoBAN_CONTA: TStringField;
    SqlCdsConsBcoBAN_DIGCONTA: TStringField;
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure Edt_nomeExit(Sender: tObject);
    procedure DBGridBancoDblClick(Sender: tObject);
    procedure Edt_nomeClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_nomeEnter(Sender: tObject);
    procedure DBGridBancoKeyPress(Sender: tObject; var Key: Char);
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_nomeKeyPress(Sender: tObject; var Key: Char);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBGridBancoDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure LayOutBanco;
    procedure BotaoPesquisar;
    procedure mensagens;
    procedure MostraBanco;
    procedure BuscaBanco;
  public
    { Public declarations }
  end;

var
  FormBancoGrid: TFormBancoGrid;

implementation

{$R *.DFM}

uses Uteis, Ban0001, DataCad;






procedure TFormBancoGrid.BuscaBanco;
Var
wSelect, wOrdem : String;
begin
    {Busca pelo nome}
    if Edt_Nome.Text <> '' then
       begin
           if RadCodigo.checked  then
              begin
                  Edt_nome.Text :=  StrZero(Edt_nome.Text,Edt_nome.MaxLength);
                  wSelect := 'where BAN_CODIGO = '''+Edt_nome.Text+'''';
                  wOrdem  := 'BAN_CODIGO';
              end;
           if RadNome.checked  then
              begin
                  wSelect := 'where BAN_APELIDO LIKE '''+Edt_nome.Text+'%''';
                  wOrdem  := 'BAN_APELIDO';
              end;
           try
             SqlCdsConsBco.Close;
             SqlCdsConsBco.CommandText := SqlDef('BANCOS','Select Ban_Codigo,Ban_Apelido,Ban_Codage,Ban_Fone,Ban_Contato,Ban_Juromes from BAN0000',wSelect,wOrdem,'');
             SqlCdsConsBco.Open;
             if SqlCdsConsBco.IsEmpty then
                begin
                    Mensagens;
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
                 end
             else
                begin
                    BotaoPesquisar;
                    DbGridBanco.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela de BANCOS !'+e.message));
            end;
       end;
end;

procedure TFormBancoGrid.RadNomeClick(Sender: tObject);
begin
    LayOutBanco;
end;

procedure TFormBancoGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutBanco;
end;

procedure TFormBancoGrid.Edt_nomeExit(Sender: tObject);
begin
    Edt_nome.Color := clWindow;
    if Edt_Nome.text <>'' then
       begin
           if RadCodigo.checked  then
              Edt_Nome.Text := StrZero(Edt_Nome.text,Edt_Nome.MaxLength);
       end;
end;

procedure TFormBancoGrid.DBGridBancoDblClick(Sender: tObject);
begin
    FormBanco.EdtBan_Codigo.Text := SqlCdsConsBcoBAN_CODIGO.AsString;
    FormBanco.PageControl1.ActivePageIndex := 0;
    close;
end;

procedure TFormBancoGrid.Edt_nomeClick(Sender: tObject);
begin
    Edt_nome.SelectAll;
end;

procedure TFormBancoGrid.FormShow(Sender: tObject);
begin
    Left:= 80;
    Top := 87;
    Edt_Nome.SetFocus;
    MostraBanco;
    RadNome.Checked := True;
    LayOutBanco;
end;

procedure TFormBancoGrid.Edt_nomeEnter(Sender: tObject);
begin
    Edt_nome.Text := '';
    BotaoPesquisar;
    MostraBanco;
    Edt_nome.Color := $0080FFFF;
end;

procedure TFormBancoGrid.DBGridBancoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           FormBanco.EdtBan_Codigo.Text := SqlCdsConsBcoBAN_CODIGO.AsString;
           Close;
           key := #0;
       end;
end;

procedure TFormBancoGrid.SpeedButton1Click(Sender: tObject);
begin
    close;
end;

procedure TFormBancoGrid.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
           close;
           key := #0;
       end;
end;

procedure TFormBancoGrid.Edt_nomeKeyPress(Sender: tObject; var Key: Char);
begin
    if RadCodigo.checked  then
       begin
           if not(Key in['0'..'9',#8]) then
              begin
                  //beep;
                  Key:=#0;
              end;
       end;
end;

procedure TFormBancoGrid.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFormBancoGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           BuscaBanco;
       end
    else
       begin
           Mensagens;
           Edt_Nome.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormBancoGrid.LayOutBanco;
begin
    if RadNome.checked  then
       begin
           GbPesquisa.Caption := 'Digite nome da conta';
           Edt_nome.text      := '';
           Edt_nome.MaxLength := 35;
           Edt_nome.Width     := 240;
       end;
    if RadCodigo.checked  then
       begin
           gbPesquisa.Caption := 'Digite código da conta';
           Edt_nome.text      := '';
           Edt_nome.MaxLength := 4;
           Edt_nome.Width     := 30;
       end;
    Edt_nome.SetFocus;
    BotaoPesquisar;
    MostraBanco;
end;

procedure TFormBancoGrid.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
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

procedure TFormBancoGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraBanco;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormBancoGrid.mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código da conta !')
           else
              uteis.aviso('Código da conta não encontrado !');
       end;
    if RadNome.checked  then
      begin
          if Edt_Nome.Text = '' then
             uteis.aviso('Informe a Nome da conta !')
          else
             uteis.aviso('Conta não encontrado !');
      end;
end;

procedure TFormBancoGrid.MostraBanco;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsConsBco.Close;
     // SqlCdsConsBco.CommandText := SQLDEF('BANCOS','SELECT Ban_Codigo,Ban_Apelido,Ban_Codage,Ban_Fone,Ban_Contato,Ban_Juromes from BAN0000','','BAN_APELIDO','');
      SqlCdsConsBco.CommandText := SQLDEF('BANCOS','SELECT * from BAN0000','','BAN_APELIDO','');
      SqlCdsConsBco.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela BAN0000 !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormBancoGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsConsBco.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormBancoGrid.DBGridBancoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsConsBco.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridBanco.Canvas.Brush.Color := $00FFEFDF;
              DBGridBanco.Canvas.FillRect(rect);
              DBGridBanco.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

end.
