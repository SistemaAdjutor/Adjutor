unit CEL0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, Mask, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFormComponenteGrid = class(TForm)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Lista: TEdit;
    DsFiltra: TDataSource;
    GroupBox2: TGroupBox;
    Cbfiltra: TComboBox;
    SqlCdsFiltra: TSQLClientDataSet;
    SqlCdsFiltraCEL_CODIGO: TStringField;
    SqlCdsFiltraCEL_NOME: TStringField;
    SqlCdsInt: TSQLClientDataSet;
    SqlCdsIntCCP_CODIGO: TStringField;
    SqlCdsIntCCP_NOME: TStringField;
    SqlCdsIntCCP_FUNCAO: TStringField;
    SqlCdsIntCCP_TUPDIARIO: TFloatField;
    SqlCdsIntCEL_CODIGO: TStringField;
    SqlCdsIntEMP_CODIGO: TStringField;
    SqlCdsIntCEL_NOME: TStringField;
    DBGridComponetes: TDBGrid;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Edt_ListaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DBGridComponetesDblClick(Sender: tObject);
    procedure Edt_ListaEnter(Sender: tObject);
    procedure Edt_ListaKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure CbfiltraEnter(Sender: tObject);
    procedure CbfiltraClick(Sender: tObject);
  private
    { Private declarations }
    procedure PreencheCombo;
    procedure FiltraCelula;
    procedure BuscaComponente;
    procedure LayOutIntegrante;
    procedure BotaoPesquisar;
    procedure mensagens;
    procedure MostraIntegrante;


  public
    { Public declarations }
  end;

var
  FormComponenteGrid: TFormComponenteGrid;

implementation

uses Uteis, Cel0002, RWFunc, DataCad, DmProdu, Men0001;

{$R *.DFM}







Procedure TFormComponenteGrid.BuscaComponente;
Var
  wSeleciona,wOrdem :String;
begin
    {Pesquisa por Codigo}
    if RadCodigo.checked  then
       Begin
           wSeleciona := 'where P1.CEL_CODIGO = '''+SqlCdsFiltraCEL_CODIGO.AsString+''' and P1.CCP_CODIGO='''+StrZero(Edt_lista.Text,4)+'''';
           wOrdem     := 'P1.CCP_CODIGO';
       end;
    {Pesquisa por nome}
    if RadNome.checked  Then
       Begin
           wSeleciona := 'where P1.CEL_CODIGO = '''+SqlCdsFiltraCEL_CODIGO.AsString+''' and P1.CCP_NOME LIKE '''+Edt_lista.Text+'%''';
           wOrdem     := 'P1.CCP_NOME';
       end;
    try
      SqlCdsInt.Close;
      SqlCdsInt.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT P1.*, C1.CEL_NOME FROM CEL_CP01 P1 LEFT JOIN CEL0000 C1 ON P1.CEL_CODIGO = C1.CEL_CODIGO ',wSeleciona,wOrdem,'P1.');
      SqlCdsInt.open;
      If SqlCdsInt.IsEmpty then
         begin
             Mensagens;
             Edt_lista.Text := '';
             BotaoPesquisar;
             BitCancelar.Click;
         end
      else
         begin
             BotaoPesquisar;
             DBGridComponetes.SetFocus;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
end;

procedure TFormComponenteGrid.RadNomeClick(Sender: tObject);
begin
    LayOutIntegrante;
End;

procedure TFormComponenteGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutIntegrante;
end;

procedure TFormComponenteGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   try
     SqlCdsInt.Close;
     SqlCdsFiltra.Close;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
        end;
    end;
end;

procedure TFormComponenteGrid.Edt_ListaClick(Sender: tObject);
begin
    Edt_Lista.SelectAll;
end;

procedure TFormComponenteGrid.FormShow(Sender: tObject);
begin
    Screen.Cursor:=crHourglass;
    Left:= 10;
    Top := 55;
    PreencheCombo;
    Edt_Lista.SetFocus;
    MostraIntegrante;
    RadNome.Checked := true;
    LayOutIntegrante;
    Screen.Cursor := crDefault;
end;

procedure TFormComponenteGrid.DBGridComponetesDblClick(Sender: tObject);
begin
    FormComponentes.EdtCCP_CODIGO.Text:=SqlCdsIntCCP_CODIGO.AsString;
    FormComponentes.BuscaComp;
    FormComponentes.DbeCCP_NOME.SetFocus;
    FormComponentes.DbeCCP_NOME.Color:= $0080FFFF;
    close;
end;

procedure TFormComponenteGrid.Edt_ListaEnter(Sender: tObject);
begin
    Edt_Lista.Text := '';
    BotaoPesquisar;
    MostraIntegrante;
    Edt_Lista.Color := $0080FFFF;
end;

procedure TFormComponenteGrid.PreencheCombo;
begin
    try
      {Preenche a combo de celeulas}
      SqlCdsFiltra.Close;
      SqlCdsFiltra.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT C1.CEL_CODIGO,C1.CEL_NOME FROM CEL0000 C1','','C1.CEL_NOME','C1.');
      SqlCdsFiltra.open;
      SqlCdsFiltra.First;
      While not SqlCdsFiltra.Eof do
       begin
           CbFiltra.Items.Add(SqlCdsFiltraCEL_NOME.ASstring);
           SqlCdsFiltra.Next;
       end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir a tabela Cel0000 !'+e.message));
    end;
end;

procedure TFormComponenteGrid.Edt_ListaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if RadCodigo.Checked=true then
       begin
           If not( key in['0'..'9',#8] ) then
              begin
                  Key:=#0;
              end;
       end;
end;

procedure TFormComponenteGrid.FormClose(Sender: tObject;
var
  Action: TCloseAction);
begin
    Try
      SqlCdsFiltra.Close;
      SqlCdsInt.Close;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
        end;
   end;

end;

procedure TFormComponenteGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormComponenteGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') then
       begin
           BuscaComponente;
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

procedure TFormComponenteGrid.BotaoPesquisar;
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

procedure TFormComponenteGrid.LayOutIntegrante;
begin
    if RadNome.checked  then
       begin
           GBPESQUISA.Caption:='Informe o Nome Integrante:';
           Edt_lista.Clear;
           Edt_Lista.Visible   := True;
           Edt_Lista.Width     := 252;
           Edt_Lista.MaxLength := 35;
           Edt_Lista.SetFocus;
       end;
    if RadCodigo.checked  then
       begin
           GBPESQUISA.Visible:=TRUE;
           GBPESQUISA.Caption:='Informe o Código do Integrante:';
           Edt_Lista.Clear;
           Edt_Lista.Visible   := True;
           Edt_Lista.Width     := 45;
           Edt_Lista.MaxLength := 4;
           Edt_Lista.SetFocus;
       end;
end;

procedure TFormComponenteGrid.mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Código do Integrante !')
           else
              uteis.aviso('Código integrante não encontrado !');
       end;
    if RadNome.checked  then
      begin
          if Edt_Lista.Text = '' then
             uteis.aviso('Informe a Nome do integrante !')
          else
             uteis.aviso('Integrante não encontrado !');
      end;
end;

procedure TFormComponenteGrid.MostraIntegrante;
Var
  wFiltra : String;
begin
    if SqlCdsFiltra.Locate('CEL_NOME',CbFiltra.text,[]) = True THEN
       begin
           wFiltra := ' where P1.CEL_CODIGO = '''+SqlCdsFiltraCEL_CODIGO.AsString+''' and C1.CEL_CODIGO= '''+SqlCdsFiltraCEL_CODIGO.AsString+'''';
       end
    else
       begin
           wFiltra:= '';
       end;
    Try
      SqlCdsInt.Close;
      SqlCdsInt.CommandText:= SQLDEF('ORDEMPRODUCAO','select P1.*,C1.CEL_NOME from CEL_CP01 P1 LEFT JOIN CEL0000 C1 ON P1.CEL_CODIGO = C1.CEL_CODIGO ',wFiltra,'P1.CCP_NOME','P1.');
      SqlCdsInt.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    Cbfiltra.Color := clWindow;
end;

procedure TFormComponenteGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraIntegrante;
    Edt_Lista.Text := '';
    BotaoPesquisar;
    Edt_Lista.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormComponenteGrid.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
    if Edt_Lista.text <>'' then
       begin
           if RadCodigo.checked  then
              Edt_Lista.Text := StrZero(Edt_Lista.text,Edt_Lista.MaxLength);
       end;
end;

procedure TFormComponenteGrid.CbfiltraEnter(Sender: tObject);
begin
    Cbfiltra.Color := $0080FFFF;
end;

procedure TFormComponenteGrid.FiltraCelula;
Var
  wFiltra : String;
begin
    if SqlCdsFiltra.Locate('CEL_NOME',CbFiltra.text,[]) = True THEN
       begin
           wFiltra := ' where P1.CEL_CODIGO = '''+SqlCdsFiltraCEL_CODIGO.AsString+''' and C1.CEL_CODIGO= '''+SqlCdsFiltraCEL_CODIGO.AsString+'''';
       end
    else
       begin
           wFiltra:= '';
       end;
    Try
      SqlCdsInt.Close;
      SqlCdsInt.CommandText:= SQLDEF('ORDEMPRODUCAO','select P1.*,C1.CEL_NOME from CEL_CP01 P1 LEFT JOIN CEL0000 C1 ON P1.CEL_CODIGO = C1.CEL_CODIGO ',wFiltra,'P1.CCP_NOME','P1.');
      SqlCdsInt.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    Cbfiltra.Color := clWindow;
end;

procedure TFormComponenteGrid.CbfiltraClick(Sender: tObject);
begin
    MostraIntegrante;
//    FiltraCelula;
end;

end.
