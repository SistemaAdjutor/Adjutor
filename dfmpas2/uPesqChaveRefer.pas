unit uPesqChaveRefer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqChaveRefer = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    sbNovo: TSpeedButton;
    btExcluir: TSpeedButton;
    cdsBuscoCOD_REFERENCIA: TIntegerField;
    cdsBuscoNF_CHAVE_NFE_REFERENCIADA: TStringField;
    cdsBuscoNF_REGISTRO: TIntegerField;
    qBuscoCOD_REFERENCIA: TIntegerField;
    qBuscoNF_CHAVE_NFE_REFERENCIADA: TStringField;
    qBuscoNF_REGISTRO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
   fregistro: integer;
  public
    procedure filtro;
    property registro: integer read fregistro write fregistro;
  end;

var
  frmPesqChaveRefer: TfrmPesqChaveRefer;

implementation

{$R *.dfm}

{ TfrmBaseDBPesquisa1 }

procedure TfrmPesqChaveRefer.btExcluirClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir '+cdsBusco.FieldByName('NF_CHAVE_NFE_REFERENCIADA').asString +' ?', mtWarning, [mbYes, mbNo], 0)=mrYes) then
  begin
   ExecSql('DELETE FROM NF_REFERENCIA WHERE NF_REGISTRO = '+ IntToStr(registro) +
           ' AND NF_CHAVE_NFE_REFERENCIADA = '+ QuotedStr(cdsBusco.FieldByName('NF_CHAVE_NFE_REFERENCIADA').asString) );
   cdsBusco.Refresh;
  end;
end;

procedure TfrmPesqChaveRefer.btnNovoClick(Sender: TObject);
var sql : string;
begin
  inherited;
  if Length(LabeledEdit1.Text)> 44 then
    raise Exception.Create('Chave inválida maior de 44 caracteres');

  if Length(LabeledEdit1.Text)< 44 then
    raise Exception.Create('Chave inválida menor de 44 caracteres');

  if LabeledEdit1.Text <> EmptyStr then
  begin
   sql:= 'INSERT INTO NF_REFERENCIA '+
         '  (NF_REGISTRO, NF_CHAVE_NFE_REFERENCIADA) '+
         ' VALUES('+ IntToStr(registro) + ','+
          QuotedStr(LabeledEdit1.Text) +')';
   ExecSql(sql);
   LabeledEdit1.Clear;
   cdsBusco.Refresh;
  end;
end;

procedure TfrmPesqChaveRefer.filtro;
begin
 with qBusco do
	begin
		sql.Clear;
 		SQL.Add('SELECT COD_REFERENCIA, NF_CHAVE_NFE_REFERENCIADA,NF_REGISTRO  FROM NF_REFERENCIA');
    sql.Add('where NF_REGISTRO = '+IntToStr(registro) );

  end;

end;

procedure TfrmPesqChaveRefer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqChaveRefer.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='NF_REFERENCIA';
	Self.ProcedureFiltro:=filtro;
end;

procedure TfrmPesqChaveRefer.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqChaveRefer := nil;
end;

procedure TfrmPesqChaveRefer.FormResize(Sender: TObject);
begin
  inherited;
   Width := 409;
end;

procedure TfrmPesqChaveRefer.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;

	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

procedure TfrmPesqChaveRefer.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    sbNovo.Click;
end;

end.
