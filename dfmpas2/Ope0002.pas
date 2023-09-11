{*********************************************************
| Programa...: Ope0002  - Nome formulario =  FormOperFiscGrid
| Objetivo...: Lista da tabela de Operações Fiscais
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários:
|
| Criação..........: 08/1999
| Ultima Alteração.: 07/2000
| Alterado por.....: Márcio
|
|**********************************************************}
unit Ope0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,db, Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, RwFunc, ImgList, Data.DBXFirebird, System.ImageList, SimpleDS;

type
  TFormOperFiscGrid = class(TForm)
    DBGridOperFisc: TDBGrid;
    GroupBox1: TGroupBox;
    RadCFOP: TRadioButton;
    RadNatureza: TRadioButton;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    GroupLista: TGroupBox;
    Edt_Lista: TEdit;
    BitCancelar: TBitBtn;
    SqlCdsOPE: TSQLClientDataSet;
    DsOpe: TDataSource;
    SqlCdsOPEOPE_NATUREZA: TStringField;
    SqlCdsOPEOPE_DESCRI: TStringField;
    SqlCdsOPEOPE_CODIGO: TStringField;
    SqlCdsOPEOPE_DESCRINATUREZA: TStringField;
    ImageList1: TImageList;
    SqlCdsOPEOPE_ATIVA: TStringField;
    SqlCdsOPEOPE_TRIBIPI: TStringField;
    SqlCdsOPEOPE_TRIBICMS: TStringField;
    SqlCdsOPEOPE_TRIBPISCOFINS: TStringField;
    strngfldSqlCdsOPEOPE_TIPO_OPERACAO: TStringField;
    Label1: TLabel;
    procedure FormShow(Sender: tObject);
    procedure DBGridOperFisCdblClick(Sender: tObject);
    procedure Edt_ListaEnter(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure RadCFOPClick(Sender: tObject);
    procedure RadNaturezaClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Edt_ListaExit(Sender: tObject);
    procedure DBGridOperFisCdrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridOperFiscTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure BotaoPesquisa;
    procedure Mensagens;
    procedure BuscaOperacao;
    procedure LayOutOpe;
    procedure MostraOpe;
  public
    { Public declarations }
  end;

var
  FormOperFiscGrid: TFormOperFiscGrid;

implementation

uses Ope0001, DataCad, uteis, iniciodb;

{$R *.DFM}

procedure TFormOperFiscGrid.FormShow(Sender: tObject);
begin
  Left := 65;
  Top  := 84;
  Screen.Cursor := crHourGlass;
  MostraOpe;
  RadNatureza.Checked := false;
  RadCFOP.Checked     := True;  
  LayOutOpe;
  Screen.Cursor := crDefault;
end;

procedure TFormOperFiscGrid.DBGridOperFisCdblClick(Sender: tObject);
begin
    FormOperFisc.EdtOpe_Codigo.Text := SqlCdsOPEOPE_CODIGO.AsString;
    FormOperFisc.BuscaCodigo;
    FormOperFisc.edCSTPIS.idRetorno  := DataCadastros.CdsOperFiscOPE_CST_PISCOFINS.AsString;
    if FormOperFisc.EdtOpe_Codigo.Enabled then
      FormOperFisc.EdtOpe_Codigo.SetFocus;
    Close;
end;

procedure TFormOperFiscGrid.Edt_ListaEnter(Sender: tObject);
begin
    BitCancelar.Click;
    Edt_Lista.Color := $0080FFFF;
end;

procedure TFormOperFiscGrid.SpeedButton1Click(Sender: tObject);
begin
  close;
end;

procedure TFormOperFiscGrid.BuscaOperacao;
Var
  wSeleciona,wOrdem :String;
begin
    if RadNatureza.checked  then
       begin
           wSeleciona := 'where O1.OPE_DESCRI LIKE '''+Edt_lista.Text +'%''';
           wOrdem     := 'O1.OPE_DESCRI';
       end;

    if RadCFOP.checked  then
       begin
           wSeleciona := 'where O1.OPE_NATUREZA = '''+Edt_Lista.Text+'''';
           wOrdem     := 'O1.OPE_NATUREZA';
       end;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsOPE.Close;
      SqlCdsOPE.CommandText := SQLDEF('OPERACAOFISCAL','SELECT O1.OPE_CODIGO,O1.OPE_NATUREZA,O1.OPE_DESCRI,O1.OPE_ATIVA,O1.OPE_DESCRINATUREZA,O1.OPE_TRIBIPI,O1.OPE_TRIBICMS,O1.OPE_TRIBPISCOFINS, O1.OPE_TIPO_OPERACAO FROM OPE0000 O1 ',wSeleciona,wOrdem,'O1.');
      SqlCdsOPE.Open;


      if SqlCdsOPE.IsEmpty then
         begin
             Mensagens;
             Edt_Lista.Text := '';
             BotaoPesquisa;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BotaoPesquisa;
             DBGridOperFisc.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela !'+e.message));
    end;

    Screen.Cursor := crDefault;
end;

procedure TFormOperFiscGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOperFiscGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') then
       begin
           BuscaOperacao;
       end
    else
       begin
           Mensagens;
           Edt_Lista.Text := '';
           BotaoPesquisa;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormOperFiscGrid.RadCFOPClick(Sender: tObject);
begin
    LayOutOpe;
end;

procedure TFormOperFiscGrid.RadNaturezaClick(Sender: tObject);
begin
    LayOutOpe;
end;

procedure TFormOperFiscGrid.LayOutOpe;
begin
    if RadCFOP.checked  then
       begin
           GroupLista.Caption  := 'Código do CFOP:';
           Edt_Lista.MaxLength := 4;
           Edt_Lista.Width     := 35;
           Edt_Lista.Text      := '';
           Edt_Lista.SetFocus;
       end;
    if RadNatureza.checked  then
       begin
           GroupLista.Caption  := 'Natureza da Operação:';
           Edt_Lista.MaxLength := 45;
           Edt_Lista.Width     := 250;
           Edt_Lista.Text      := '';
           Edt_Lista.SetFocus;
       end;
end;

procedure TFormOperFiscGrid.Mensagens;
begin
    if RadCFOP.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o CFOP !')
           else
              uteis.aviso('CFOP não encontrado !');
       end;
    if RadNatureza.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe a Natureza !')
           else
              uteis.aviso('Natureza não encontrado !');
       end;
    Edt_Lista.Text := '';
    BotaoPesquisa;
end;

procedure TFormOperFiscGrid.BotaoPesquisa;
begin
    if Edt_Lista.Text <> '' then
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

procedure TFormOperFiscGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraOpe;
    Edt_Lista.Text := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    Edt_Lista.SetFocus;
end;

procedure TFormOperFiscGrid.MostraOpe;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsOPE.Close;
      SqlCdsOPE.CommandText := SQLDEF('OPERACAOFISCAL','SELECT O1.OPE_CODIGO,O1.OPE_NATUREZA,O1.OPE_DESCRI,O1.OPE_ATIVA,O1.OPE_DESCRINATUREZA,O1.OPE_TRIBIPI,O1.OPE_TRIBICMS,O1.OPE_TRIBPISCOFINS, O1.OPE_TIPO_OPERACAO FROM OPE0000 O1 ','','O1.OPE_NATUREZA','O1.');
      SqlCdsOPE.Open;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Abrir o arquivo de OPE0000 !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOperFiscGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsOPE.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOperFiscGrid.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
end;


procedure TFormOperFiscGrid.DBGridOperFisCdrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
    if (not odd(SqlCdsOPE.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridOperFisc.Canvas.Brush.Color := $00FFEFDF;
              DBGridOperFisc.Canvas.FillRect(rect);
              DBGridOperFisc.DefaultDrawDataCell(Rect,column.Field,state);
          end;

   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'OPE_TRIBICMS' then
      begin
         DBGridOperFisc.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsOPEOPE_TRIBICMS.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DBGridOperFisc.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPE_TRIBIPI' then
      begin
         DBGridOperFisc.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsOPEOPE_TRIBIPI.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DBGridOperFisc.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPE_TRIBPISCOFINS' then
      begin
         DBGridOperFisc.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsOPEOPE_TRIBPISCOFINS.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DBGridOperFisc.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
    if Column.FieldName = 'OPE_ATIVA' then
      begin
         DBGridOperFisc.Canvas.FillRect(Rect);
         Check := 0;
         if SqlCdsOPEOPE_ATIVA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DBGridOperFisc.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;




end;

procedure TFormOperFiscGrid.DBGridOperFiscTitleClick(Column: TColumn);
begin
  try
      SqlCdsOPE.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

end.
