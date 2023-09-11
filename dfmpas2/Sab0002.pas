{***************************************************************
| Programa...: SAB0002   - Nome formulario = FormSaldoBancoGrid |
| Objetivo...: Lista  do Saldo Bancario                         |
| Analista...: Marcio Neu Pacheco                               |
| Programador: Jackson Neu Pacheco                              |
| Comentários:                                                  |
|                                                               |
| Criação..........:  fev/1999.                                 |
| Ultima Alteração.:  mai/1999.                                 |
| Feito por........:  Jackson Neu Pacheco                       |
|                                                               |
****************************************************************}

unit Sab0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls,  rxToolEdit,RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, rxCurrEdit,
  SimpleDS, Data.DBXFirebird;

type
  TFormSaldoBancoGrid = class(TForm)
    GroupBox1: TGroupBox;
    RadBanco: TRadioButton;
    RadData: TRadioButton;
    GroupBox2: TGroupBox;
    DBGridSaldoBanco: TDBGrid;
    CdsSaldo: TSQLClientDataSet;
    DsSaldo: TDataSource;
    CdsSaldoSAB_DIA: TSQLTimeStampField;
    CdsSaldoSAB_CODIGO: TStringField;
    CdsSaldoSAB_BLOQUEADO: TFMTBCdField;
    CdsSaldoSAB_APLICADO: TFMTBCdField;
    CdsSaldoSAB_SALDO: TFMTBCdField;
    CdsSaldoBAN_APELIDO: TStringField;
    GbBanco: TGroupBox;
    CurrCodBanco: TCurrencyEdit;
    CbBanco: TComboBox;
    CdsBancos: TSQLClientDataSet;
    GbData: TGroupBox;
    RxDataInicial: TDateEdit;
    RxDataFinal: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    CdsSaldoBAN_CODIGO: TStringField;
    BitCancelar: TBitBtn;
    BitPesquisa: TBitBtn;
    BitSair: TBitBtn;
    procedure RadBancoClick(Sender: tObject);
    procedure RadDataClick(Sender: tObject);
    procedure DBGridSaldoBancoDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure ImgVoltarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpFecharClick(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure CbBancoClick(Sender: tObject);
    procedure CurrCodBancoExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure DBGridSaldoBancoKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridSaldoBancoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
  private
    procedure PreencheCombo;
    procedure LayOutPesquisa;
    procedure MostraBanco;
    procedure BuscaBanco;
    procedure Mensagens;
    procedure BotaoPesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSaldoBancoGrid: TFormSaldoBancoGrid;

implementation

{$R *.DFM}

uses Sab0001, DataCad, DataMov, Men0001, uteis, iniciodb;


function TestaCGC (CampoCGC :TmaskEdit; CGC:String):boolean; far; external 'mensagen.dll';



procedure TFormSaldoBancoGrid.DBGridSaldoBancoDblClick(Sender: tObject);
begin
    FormSaldoBanco.EdtSAB_CODIGO.Text := CdsSaldoSAB_CODIGO.AsString;
    FormSaldoBanco.BuscaSaldo;
    FormSaldoBanco.DbCodBanco.SetFocus;
    CdsSaldo.Close;
    Close;
end;

procedure TFormSaldoBancoGrid.RadBancoClick(Sender: tObject);
begin
    LayOutPesquisa;
end;

procedure TFormSaldoBancoGrid.RadDataClick(Sender: tObject);
begin
    LayOutPesquisa;
end;

procedure TFormSaldoBancoGrid.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange   := NIL;
end;

procedure TFormSaldoBancoGrid.ImgVoltarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormSaldoBancoGrid.FormShow(Sender: tObject);
begin
    Left := 1;
    Top := 82;
    RxDataInicial.Date := date - 30;
    RxDataFinal.Date   := date;
    Screen.Cursor := crHourGlass;
    MostraBanco;
    RadBanco.Checked := True;
    LayOutPesquisa;
    PreencheCombo;
    Screen.Cursor := crDefault;
end;

procedure TFormSaldoBancoGrid.SpFecharClick(Sender: tObject);
begin
    close;
end;

procedure TFormSaldoBancoGrid.RxDataInicialExit(Sender: tObject);
begin
    if not TestaDataStr(rxDataInicial.Text) then
       RxDataInicial.setfocus;
end;

procedure TFormSaldoBancoGrid.PreencheCombo;
begin
    CdsBancos.Close;
    Cdsbancos.CommandText := SQLDEF('BANCOS','SELECT BAN_CODIGO,BAN_APELIDO FROM BAN0000','','BAN_APELIDO','');
    CdsBancos.Open;
    CdsBancos.First;
    While not CdsBancos.Eof do
    begin
        CbBanco.Items.Add(CdsBancos.FieldByName('BAN_APELIDO').AsString);
        CdsBancos.Next;
    end;
end;

procedure TFormSaldoBancoGrid.CbBancoClick(Sender: tObject);
begin
    if CdsBancos.Locate('BAN_APELIDO',CbBanco.Text,[]) = true then
       begin
           CurrCodBanco.Text := FormatFloat('0000',CdsBancos.FieldByName('BAN_CODIGO').value);
       end;
end;

procedure TFormSaldoBancoGrid.CurrCodBancoExit(Sender: tObject);
begin
    if (CurrCodBanco.Value <> 0) and (CurrCodBanco.Text <> '') then
       begin
           if CdsBancos.Locate('BAN_CODIGO',FormatFloat('0000',CurrCodBanco.value),[]) = true then
              begin
                  CbBanco.Text := CdsBancos.FieldByName('BAN_APELIDO').value;
              end
           else
              Begin
                  uteis.aviso('Banco não cadastrado com o código informado !');
              end;
       end;
end;

procedure TFormSaldoBancoGrid.RxDataFinalExit(Sender: tObject);
begin
    if not TestaDataStr(rxDataFinal.Text) then
       RxDataFinal.setfocus
end;

procedure TFormSaldoBancoGrid.DBGridSaldoBancoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           FormSaldoBanco.EdtSAB_CODIGO.Text := CdsSaldoSAB_CODIGO.AsString;
           FormSaldoBanco.BuscaSaldo;
           FormSaldoBanco.DbCodBanco.SetFocus;
           CdsSaldo.Close;
           Close;
           Key := #0;
       end;
end;

procedure TFormSaldoBancoGrid.DBGridSaldoBancoDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    If Not odd(CdsSaldo.RecNo) then
       If not (GdSelected in State) then
           Begin
               DBGridSaldoBanco.Canvas.Brush.Color := $00FFEFDF;
               DBGridSaldoBanco.Canvas.FillRect(rect);
               DBGridSaldoBanco.DefaultDrawDataCell(Rect,column.Field,state);
           end;
end;

procedure TFormSaldoBancoGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormSaldoBancoGrid.BitPesquisaClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (CurrCodBanco.Text <> '') or (RxDataInicial.Text <> '') then
       begin
           BuscaBanco;
       end
    else
       begin
           Mensagens;
           CurrCodBanco.Text := '';
           RxDataInicial.Text:= '';
           BotaoPesquisa;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormSaldoBancoGrid.LayOutPesquisa;
begin
    if RadBanco.checked  then
       begin
           GbData.Visible   := false;
           GbBanco.Visible  := true;
           GbBanco.TabOrder := 1;
           CurrCodBanco.Setfocus;
       end;
    if RadData.checked  then
       begin
           GbData.Visible  := true;
           GbData.TabOrder := 1;
           GbBanco.Visible := false;
           RxDataInicial.Setfocus;
       end;
end;

procedure TFormSaldoBancoGrid.MostraBanco;
begin
    Screen.Cursor := crHourGlass;
    try
      CdsSaldo.Close;
      CdsSaldo.CommandText := SQLDEF('BANCOS','select S1.BAN_CODIGO,S1.SAB_DIA,S1.SAB_CODIGO,S1.SAB_BLOQUEADO,S1.SAB_SALDO,S1.SAB_APLICADO,B1.BAN_APELIDO '+
                                     'from SALDOBCO S1 join BAN0000 B1 ON S1.BAN_CODIGO = B1.BAN_CODIGO','','B1.BAN_APELIDO','S1.');
      CdsSaldo.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormSaldoBancoGrid.BotaoPesquisa;
begin
    if (CurrCodBanco.Text <> '') or (RxDataInicial.Text <> '  /  /    ') then
       begin
           BitCancelar.Visible := True;
           BitPesquisa.Visible := False;
       end
    else
       begin
           BitCancelar.Visible := False;
           BitPesquisa.Visible := True;
       end;
end;

procedure TFormSaldoBancoGrid.BuscaBanco;
var
wSeleciona,wOrdem : String;
begin
    if RadBanco.checked  then
       begin
           wSeleciona := 'where S1.Ban_codigo = '''+FormatFloat('0000',CurrcodBanco.Value)+'''';
       end;
    if RadData.checked  then
       begin
           wSeleciona := 'where S1.Sab_Dia BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
       end;
    wOrdem := 'S1.Sab_Dia desc';
    try
      CdsSaldo.Close;
      CdsSaldo.CommandText := SQLDEF('BANCOS','select S1.BAN_CODIGO,S1.SAB_DIA,S1.SAB_CODIGO,S1.SAB_BLOQUEADO,S1.SAB_SALDO,S1.SAB_APLICADO,B1.BAN_APELIDO from SALDOBCO S1 '+
                                     'join BAN0000 B1 ON S1.BAN_CODIGO = B1.BAN_CODIGO',wSeleciona,wOrdem,'S1.');
      CdsSaldo.Open;
      if CdsSaldo.IsEmpty then
         begin
             Mensagens;
             CurrCodBanco.Text  := '';
             RxDataInicial.Text := '';
             RxDataFinal.Text   := '';
             BotaoPesquisa;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BotaoPesquisa;
             DBGridSaldoBanco.SetFocus;
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao abrir as tabelas !'+e.Message));
    end;
end;

procedure TFormSaldoBancoGrid.Mensagens;
begin
    if RadBanco.checked  then
       begin
           if CurrCodBanco.Text = '' then
              uteis.aviso('Informe o Código do Banco !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if RadData.checked  then
       begin
           if RxDataInicial.Text = '  /  /    ' then
              uteis.aviso('Informe a Data inicial !')
           else
              uteis.aviso('Periódo não encontrado !');
       end;
    CurrCodBanco.Text  := '';
    RxDataInicial.Text := '';
    BotaoPesquisa;
end;

procedure TFormSaldoBancoGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraBanco;
    CurrCodBanco.Text := '';
    RxDataInicial.Text:= '';
    CbBanco.Text      := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    if RadBanco.checked  then
       CurrCodBanco.SetFocus
    else
       RxDataInicial.SetFocus;
end;

procedure TFormSaldoBancoGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    try
      FormSaldoBanco.DbCodBanco.SetFocus;
      CdsSaldo.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

end.
