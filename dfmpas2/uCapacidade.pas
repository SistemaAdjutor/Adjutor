unit UCapacidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,System.TypInfo, SgDbSeachComboUnit;

type
  TfrmCapacidade = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    qEditCAP_CODIGO: TIntegerField;
    qEditCAP_DESCRICAO: TStringField;
    CdsEditCAP_CODIGO: TIntegerField;
    CdsEditCAP_DESCRICAO: TStringField;
    qEditEMP_CODIGO: TStringField;
    CdsEditEMP_CODIGO: TStringField;
    dbTemST: TDBCheckBox;
    qEditCAP_SUBSTITUICAO_TRIBUTARIA: TStringField;
    CdsEditCAP_SUBSTITUICAO_TRIBUTARIA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCapacidade: TfrmCapacidade;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfrmCapacidade.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditCAP_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditCAP_CODIGO.IsNull then
     CdsEditCAP_CODIGO.asInteger := GetNextSequence('GEN_CAPACIDADE');
  CdsEditEMP_CODIGO.asString := DBInicio.Emp_Codigo;


end;

procedure TfrmCapacidade.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='CAP_CODIGO';
  Tabela:='CAPACIDADE';
  SetTamanhoMinimo(135,460);

end;

procedure TfrmCapacidade.FormShow(Sender: TObject);

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
