unit uEspecificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfmEspecificacao = class(TfrmBaseDBEdit)
    qEditESP_CODIGO: TIntegerField;
    qEditESP_NOME: TStringField;
    qEditESP_PADROES: TStringField;
    qEditENG_CODIGO: TIntegerField;
    qEditESP_COL1: TStringField;
    qEditESP_COL2: TStringField;
    qEditESP_COL3: TStringField;
    qEditESP_COL4: TStringField;
    qEditESP_COL5: TStringField;
    qEditESP_COL6: TStringField;
    qEditESP_COL7: TStringField;
    CdsEditESP_CODIGO: TIntegerField;
    CdsEditESP_NOME: TStringField;
    CdsEditESP_PADROES: TStringField;
    CdsEditENG_CODIGO: TIntegerField;
    CdsEditESP_COL1: TStringField;
    CdsEditESP_COL2: TStringField;
    CdsEditESP_COL3: TStringField;
    CdsEditESP_COL4: TStringField;
    CdsEditESP_COL5: TStringField;
    CdsEditESP_COL6: TStringField;
    CdsEditESP_COL7: TStringField;
    laESP_NOME: TLabel;
    cxESP_NOME: TcxDBTextEdit;
    laESP_PADROES: TLabel;
    cxesp_padroes: TcxDBTextEdit;
    laESP_COL1: TLabel;
    cxESP_COL1: TcxDBTextEdit;
    laESP_COL2: TLabel;
    cxESP_COL2: TcxDBTextEdit;
    laESP_COL3: TLabel;
    cxESP_COL3: TcxDBTextEdit;
    laESP_COL4: TLabel;
    cxESP_COL4: TcxDBTextEdit;
    laESP_COL5: TLabel;
    cxESP_COL5: TcxDBTextEdit;
    laESP_COL6: TLabel;
    cxESP_COL6: TcxDBTextEdit;
    laESP_COL7: TLabel;
    cxESP_COL7: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    FENG_CODIGO : integer;
    procedure SetENG_CODIGO (AValue : Integer );

  public
    Property ENG_CODIGO : integer read FENG_CODIGO write SetENG_CODIGO;
  end;

var
  fmEspecificacao: TfmEspecificacao;

implementation

uses InicioDB;
{$R *.dfm}

procedure TfmEspecificacao.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  CdsEditENG_CODIGO.AsInteger := ENG_CODIGO;
  if CdsEditESP_CODIGO.IsNull then
     CdsEditESP_CODIGO.asInteger := GetNextSequence('GEN_ESPECIFICACOES');
end;

procedure TfmEspecificacao.FormCreate(Sender: TObject);
var i : integer;
 la : TLabel;
 cxedi : TcxDBTextEdit;
begin
  inherited;
  CampoID:='ESP_CODIGO';
  Tabela:='ESPECIFICACOES';
  SetTamanhoMinimo(355,918);

  laESP_NOME.Visible := False;
  cxESP_NOME.Visible := False;
  laESP_PADROES.Visible := False;
  laESP_COL1.Visible := False;
  laESP_COL2.Visible := False;
  laESP_COL3.Visible := False;
  laESP_COL4.Visible := False;
  laESP_COL5.Visible := False;
  laESP_COL6.Visible := False;
  laESP_COL7.Visible := False;
  cxesp_padroes.Visible:=False;
  cxESP_COL1.Visible := False;
  cxESP_COL2.Visible := False;
  cxESP_COL3.Visible := False;
  cxESP_COL4.Visible := False;
  cxESP_COL5.Visible := False;
  cxESP_COL6.Visible := False;
  cxESP_COL7.Visible := False;

    qAux.SQL.Clear;
    qAux.SQL.Text := ' SELECT ESP_NOME,ESP_PADROES, ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7  FROM PRMT0001 '+
                   ' WHERE EMP_CODIGO = '+ dbInicio.Empresa.EMP_CODIGO;
  qAux.Open;
  if not ((qAux.FieldByName('ESP_NOME').IsNull) OR (qAux.FieldByName('ESP_NOME').AsString = '')) then
  begin
   laESP_NOME.Visible := True;
   cxESP_NOME.Visible := True;
   laESP_NOME.Caption := qAux.FieldByName('ESP_NOME').AsString;
  end;
  if not ((qAux.FieldByName('ESP_PADROES').IsNull) OR (qAux.FieldByName('ESP_PADROES').AsString = '')) then
  begin
   laESP_PADROES.Visible := True;
   cxesp_padroes.Visible := True;
   laESP_PADROES.Caption := qAux.FieldByName('ESP_PADROES').AsString;
  end;
  for I := 1 to 7 do
  if not ((qAux.FieldByName('ESP_COL'+IntToStr(i)).IsNull) OR (qAux.FieldByName('ESP_COL'+IntToStr(i)).AsString = '')) then
  begin

    la := FindComponent('laESP_COL' + IntToStr(i)) as TLabel;
    la.Visible := true;
    la.Caption :=  qAux.FieldByName('ESP_COL'+IntToStr(i)).AsString ;
    cxedi :=  FindComponent('cxESP_COL' + IntToStr(i)) as TcxDBTextEdit;
    cxedi.Visible := True;
  end;

  qAux.Close;
end;

procedure TfmEspecificacao.SetENG_CODIGO(AValue: Integer);
begin
 FENG_CODIGO := AValue;
end;

end.
