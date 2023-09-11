unit UColaborador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,  Vcl.Mask, Vcl.DBCtrls,System.TypInfo;

type
  TFmColaborador = class(TfrmBaseDBEdit)
    qEditCOL_CODIGO: TIntegerField;
    qEditCOL_NOME: TStringField;
    qEditCOL_FUNC: TStringField;
    qEditCOL_SETOR: TStringField;
    qEditCOL_SALARIO_HORA: TFMTBCDField;
    CdsEditCOL_CODIGO: TIntegerField;
    CdsEditCOL_NOME: TStringField;
    CdsEditCOL_FUNC: TStringField;
    CdsEditCOL_SETOR: TStringField;
    CdsEditCOL_SALARIO_HORA: TFMTBCDField;
    lbl2: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbedFuncao: TDBEdit;
    Label1: TLabel;
    dbedSetor: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEditCodigo: TDBEdit;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure qEditCOL_SALARIO_HORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmColaborador: TFmColaborador;

implementation

{$R *.dfm}



procedure TFmColaborador.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;
	if CdsEditCOL_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Nome precisa ser informado.');

	CheckErrors;

	if CdsEditCOL_CODIGO.IsNull then
		 CdsEditCOL_CODIGO.asInteger := GetNextSequence('GEN_COLABORADOR');

end;

procedure TFmColaborador.FormCreate(Sender: TObject);
begin
	inherited;
	CampoID:='COL_CODIGO';
	Tabela:='COLABORADOR';
	SetTamanhoMinimo(285,671);
end;

procedure TFmColaborador.FormShow(Sender: TObject);
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;

  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);

end;

procedure TFmColaborador.qEditCOL_SALARIO_HORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := BcdToStr(Sender.AsBCD);
end;

end.
