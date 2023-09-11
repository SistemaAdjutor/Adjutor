{***********************************************************
| Programa...:trp0002 - Nome formulario = FormTransportGrid
| Objetivo...: Listar TRansportadoras
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários:
|
| Criação..........: Out/1998.
| Ultima Alteração.: Mai/1999.
| Alterado por.....: Jackson Neu Pacheco
|
| Migração ............Julho/2003
| Feito por ...........Rodrigo Ramos
|
|
***********************************************************}
unit Trp0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, RwFunc, ExtCtrls,variants,db,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, DBCtrls, Data.DBXFirebird, SimpleDS;

type
  TFormTransportGrid = class(TForm)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    Lb_Lista: TLabel;
    GroupBox2: TGroupBox;
    DBGridTransport: TDBGrid;
    GbPesquisa: TGroupBox;
    Edt_Nome: TEdit;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    BitCancelar: TBitBtn;
    DsConsTransp: TDataSource;
    SqlCdsConsTransp: TSQLClientDataSet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    SqlCdsConsTranspCC_ATIVO: TStringField;
    SqlCdsConsTranspTRP_CODIGO: TStringField;
    SqlCdsConsTranspTRP_RAZAO: TStringField;
    SqlCdsConsTranspTRP_CONTATO: TStringField;
    SqlCdsConsTranspTRP_FONE: TStringField;
    SqlCdsConsTranspTRP_ATIVO: TStringField;
    SqlCdsConsTranspTRP_OBSERVACAO: TMemoField;
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure DBGridTransportDblClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Edt_NomeClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure DBGridTransportKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_NomeKeyPress(Sender: tObject; var Key: Char);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure DBGridTransportDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SqlCdsConsTranspCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LayOutTransp;
    procedure MostrarTransp;
    procedure Mensagens;
    procedure BotaoPesquisar;
    procedure BuscaTransp;
    procedure Transferir_Transportadora;
  public
    { Public declarations }
  end;

var
  FormTransportGrid: TFormTransportGrid;

implementation

{$R *.DFM}

uses Uteis, TRP0001, DataCad;







Procedure TFormTransportGrid.BuscaTransp;
Var
wSelect,wOrdem :String;
begin
    screen.Cursor := crHourGlass;
    if RadCodigo.checked  then
       begin
           wSelect := 'where TRP_CODIGO ='''+Edt_nome.Text+'''';
           wOrdem  := 'TRP_RAZAO';
       end
    else
    if RadNome.checked  then
       begin
           wSelect := 'where TRP_RAZAO LIKE'''+Edt_nome.Text+'%''';
           wOrdem  := 'TRP_RAZAO';
       end;
    try
      SqlCdsConsTransp.Close;
      SqlCdsConsTransp.CommandText := SQLDEF('TRANSPORTADORAS','SELECT TRP_CODIGO,TRP_RAZAO,TRP_CONTATO,TRP_FONE,TRP_ATIVO,TRP_OBSERVACAO from TRP0000',wSelect,wOrdem,'');
      SqlCdsConsTransp.Open;
      if SqlCdsConsTransp.IsEmpty then
         begin
             Mensagens;
             Edt_Nome.Text := '';
             BotaoPesquisar;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BotaoPesquisar;
             DBGridTransport.setfocus;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao pesquisar transportadora !'+e.Message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormTransportGrid.RadNomeClick(Sender: tObject);
begin
    LayOutTransp;
end;


procedure TFormTransportGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutTransp;
end;

procedure TFormTransportGrid.DBGridTransportDblClick(Sender: tObject);
begin
   Transferir_Transportadora;
end;

procedure TFormTransportGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsConsTransp.close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Impossivel Fechar as Tabelas !'+e.message));
    end;
end;

procedure TFormTransportGrid.Edt_NomeClick(Sender: tObject);
begin
    Edt_nome.SelectAll;
end;

procedure TFormTransportGrid.FormShow(Sender: tObject);
begin
    Left := 83;
    Top  := 36;
    Edt_Nome.SetFocus;
    MostrarTransp;
    RadNome.Checked := True;
    LayOutTransp;
end;

procedure TFormTransportGrid.SpeedButton1Click(Sender: tObject);
begin
   close;
end;

procedure TFormTransportGrid.Edt_NomeEnter(Sender: tObject);
begin
    Edt_nome.Color := $0080FFFF;
end;

procedure TFormTransportGrid.DBGridTransportKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         Transferir_Transportadora;
         Key := #0;
      end;
end;

procedure TFormTransportGrid.Edt_NomeKeyPress(Sender: tObject;
  var Key: Char);
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

procedure TFormTransportGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           BuscaTransp;
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

procedure TFormTransportGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostrarTransp;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormTransportGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormTransportGrid.MOSTRARTRANSP;
begin
   try
     Screen.Cursor := crHourGlass;
     try
       SqlCdsConsTransp.Close;
       SqlCdsConsTransp.CommandText := SQLDEF('TRANSPORTADORAS','SELECT TRP_CODIGO,TRP_RAZAO,TRP_CONTATO,TRP_FONE,TRP_ATIVO,TRP_OBSERVACAO from TRP0000','','TRP_RAZAO','');
       SqlCdsConsTransp.Open;
     finally
        Screen.Cursor := crDefault;
     end;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao Abrir a Tabela TRP0000 !'+#13#10+
                 'Mensagem erro: '+E.MESSAGE));
   end;
end;

procedure TFormTransportGrid.Mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código da Transportadora !')
           else
              uteis.aviso('Código da Transportadora não encontrado !');
       end;
    if RadNome.checked  then
      begin
          if Edt_Nome.Text = '' then
             uteis.aviso('Informe a Nome da Transportadora !')
          else
             uteis.aviso('Transportadora não encontrado !');
      end;
end;

procedure TFormTransportGrid.BotaoPesquisar;
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

procedure TFormTransportGrid.LayOutTransp;
begin
    if RadCodigo.checked  then
       begin
           GbPesquisa.Caption    := 'Digite código da transportadora';
           Edt_Nome.Clear;
           Edt_Nome.Width     := 35;
           Edt_Nome.MaxLength := 3;
           Edt_Nome.SetFocus;
       end;
    if RadNome.checked  then
       begin
           GbPesquisa.Caption    := 'Digite nome da transportadora';
           Edt_Nome.Clear;
           Edt_Nome.width     := 330;
           Edt_Nome.MaxLength := 45;
           Edt_Nome.SetFocus;
       end;
end;

procedure TFormTransportGrid.Edt_NomeExit(Sender: tObject);
begin
    Edt_nome.Color := clWindow;
    if Edt_Nome.text <>'' then
       begin
           if RadCodigo.checked  then
              Edt_Nome.Text := StrZero(Edt_Nome.text,Edt_Nome.MaxLength);
       end;
end;

procedure TFormTransportGrid.DBGridTransportDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsConsTransp.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridTransport.Canvas.Brush.Color := $00FFEFDF;
              DBGridTransport.Canvas.FillRect(rect);
              DBGridTransport.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormTransportGrid.SqlCdsConsTranspCalcFields(DataSet: TDataSet);
begin
   SqlCdsConsTranspCC_ATIVO.AsString := IIF(SqlCdsConsTranspTRP_ATIVO.AsString = 'S','Ativo','Inativo');
end;

procedure TFormTransportGrid.Transferir_Transportadora;
begin
    FormTransport.EdtTrp_Codigo.text := SqlCdsConsTranspTRP_CODIGO.AsString;
    FormTransport.BuscaTransport;
    close;
end;

end.

