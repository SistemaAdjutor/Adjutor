unit Pcl0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Mask, Grids, DBGrids, Buttons, RwFunc, Data.DBXFirebird, SimpleDS;

type
  TFormParcelasGrid = class(TForm)
    GroupBox1: TGroupBox;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    DBGridCliente: TDBGrid;
    GbLista: TGroupBox;
    Msk_Lista: TMaskEdit;
    RadCodigo: TRadioButton;
    RadParcela: TRadioButton;
    BitCancelar: TBitBtn;
    SqlCdsConsParc: TSQLClientDataSet;
    DsConsParc: TDataSource;
    SqlCdsConsParcPCL_CODIGO: TStringField;
    SqlCdsConsParcPCL_NOME: TStringField;
    SqlCdsConsParcEMP_CODIGO: TStringField;
    SqlCdsConsParcPCL_DIASENTREP: TSmallintField;
    SqlCdsConsParcPCL_CARENC_PRI: TSmallintField;
    SqlCdsConsParcPCL_NPARCELAS: TSmallintField;
    SqlCdsConsParcPCL_TIPO: TStringField;
    lblTipo: TLabel;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure RadParcelaClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure Msk_ListaEnter(Sender: tObject);
    procedure Msk_ListaExit(Sender: tObject);
    procedure Msk_ListaKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridClienteDblClick(Sender: tObject);
    procedure DBGridClienteKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridClienteDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    procedure MostraParc;
    procedure BotaoPesquisa;
    procedure LayOutPesq;
    procedure BuscaParc;
    procedure Mensagens;
  public
    { Public declarations }
  end;

var
  FormParcelasGrid: TFormParcelasGrid;

implementation

uses DataCad, Pcl0001, uteis, iniciodb;

{$R *.dfm}

procedure TFormParcelasGrid.FormShow(Sender: tObject);
begin
    Left := 130;
    Top  := 155;
    Screen.Cursor := crHourGlass;
    MostraParc;
    RadParcela.Checked := True;
    LayOutPesq;
    Screen.Cursor := crDefault;
end;

procedure TFormParcelasGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormParcelasGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Msk_Lista.Text <> '') then
       begin
           BuscaParc;
       end
    else
       begin
           Mensagens;
           Msk_Lista.Text := '';
           BotaoPesquisa;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormParcelasGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraParc;
    Msk_Lista.Text := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    Msk_Lista.SetFocus;
end;

procedure TFormParcelasGrid.MostraParc;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsConsParc.Close;
      SqlCdsConsParc.CommandText := SQLDEF('TABELAS','select PCL_TIPO, PCL_CODIGO,PCL_NOME,PCL_NPARCELAS,PCL_DIASENTREP,PCL_CARENC_PRI,EMP_CODIGO from PCL0000','','PCL_NOME','');
      SqlCdsConsParc.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela PCL0000 !'+E.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormParcelasGrid.BotaoPesquisa;
begin
    if Msk_Lista.Text <> '' then
       begin
           BitCancelar.Visible := True;
           BitPesquisar.Visible := False;
       end
    else
       begin
           BitCancelar.Visible := False;
           BitPesquisar.Visible := True;
       end;
end;

procedure TFormParcelasGrid.LayOutPesq;
begin
    if RadCodigo.checked  then
       begin
           GBLista.Caption     := 'Código da Parcela:';
           //GBLista.Width       := 105;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 3;
           Msk_Lista.Width     := 50;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;
    if RadParcela.checked  then
       begin
           GBLista.Caption     := 'Descrição da Parcela:';
           //GBLista.Width       := 281;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 35;
           Msk_Lista.Width     := 270;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;
end;

procedure TFormParcelasGrid.BuscaParc;
Var
wSelect, wOrdem : String;
begin
    {Busca pelo nome}
    if Msk_Lista.Text <> '' then
       begin
           if RadCodigo.checked  then
              begin
                  Msk_Lista.Text := StrZero(Msk_Lista.Text,3);
                  wSelect := 'where PCL_CODIGO = '''+Msk_lista.Text +'''';
                  wOrdem  := 'PCL_CODIGO';
              end;
           if RadParcela.checked  then
              begin
                  {Caso seja compartilhado}
                  wSelect := 'where PCL_NOME LIKE '''+Msk_lista.Text +'%''';
                  wOrdem  := 'PCL_NOME';
              end;
           try
             SqlCdsConsParc.Close;
             SqlCdsConsParc.CommandText := SQLDEF('TABELAS','select * from PCL0000',wSelect,wOrdem,'');
             SqlCdsConsParc.Open;
             if SqlCdsConsParc.IsEmpty then
                begin
                    Mensagens;
                    Msk_Lista.Text := '';
                    BotaoPesquisa;
                    BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
                 end
             else
                begin
                    BotaoPesquisa;
                    DbGridCliente.SetFocus;
                end;
           except on E:EdataBaseError do
               uteis.erro  (Pchar('Erro ao abrir a tabela de Clientes !'+e.message));
           end;
       end;
end;

procedure TFormParcelasGrid.Mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe o Código do Parcela !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if RadParcela.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe a Descrição da Parcela !')
           else
              uteis.aviso('Parcela não encontrado !');
       end;
end;

procedure TFormParcelasGrid.RadParcelaClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormParcelasGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormParcelasGrid.Msk_ListaEnter(Sender: tObject);
begin
    Msk_Lista.Text  := '';
    BotaoPesquisa;
    Msk_Lista.Color := $0080FFFF;
end;

procedure TFormParcelasGrid.Msk_ListaExit(Sender: tObject);
begin
    Msk_Lista.Color := clWindow;
end;

procedure TFormParcelasGrid.Msk_ListaKeyPress(Sender: tObject;
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

procedure TFormParcelasGrid.DBGridClienteDblClick(Sender: tObject);
begin
    FormParcelas.EdtPCL_CODIGO.Text := SqlCdsConsParcPCL_CODIGO.AsString;
    FormParcelas.BuscaParcelas;
    FormParcelas.DbePcl_nome.SetFocus;
    close;
end;

procedure TFormParcelasGrid.DBGridClienteKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           FormParcelas.EdtPCL_CODIGO.Text := SqlCdsConsParcPCL_CODIGO.AsString;
           FormParcelas.BuscaParcelas;
           FormParcelas.DbePcl_nome.SetFocus;
           close;
           Key := #0;
       end;
end;

procedure TFormParcelasGrid.DBGridClienteDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsConsParc.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridCliente.Canvas.Brush.Color := $00FFEFDF;
              DBGridCliente.Canvas.FillRect(rect);
              DBGridCliente.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

end.
