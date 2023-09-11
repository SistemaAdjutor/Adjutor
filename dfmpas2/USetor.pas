unit USetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,System.TypInfo, SgDbSeachComboUnit;

type
  TfmSetor = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    qEditSET_CODIGO: TIntegerField;
    qEditSET_DESCRICAO: TStringField;
    qEditEMP_CODIGO: TStringField;
    CdsEditSET_CODIGO: TIntegerField;
    CdsEditSET_DESCRICAO: TStringField;
    CdsEditEMP_CODIGO: TStringField;
    qCCusto: TSQLQuery;
    edCCusto: TSgDbSearchCombo;
    PCX_CODIGO: TDBEdit;
    Label1: TLabel;
    qEditPCX_CODIGO: TStringField;
    CdsEditPCX_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSetor: TfmSetor;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfmSetor.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditSET_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditSET_CODIGO.IsNull then
     CdsEditSET_CODIGO.asInteger := GetNextSequence('GEN_SETOR');

  if CdsEditEMP_CODIGO.AsString = '' then
    CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;

end;

procedure TfmSetor.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='SET_CODIGO';
  Tabela:='SETOR';
  SetTamanhoMinimo(285,671);
  edCCusto.FiltroTabela :=  'PCX_TIPO = ''T'' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)  + ' AND COALESCE(NIVEL_PAI,	'''') <> ''''  ';
end;

procedure TfmSetor.FormShow(Sender: TObject);

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

end.
