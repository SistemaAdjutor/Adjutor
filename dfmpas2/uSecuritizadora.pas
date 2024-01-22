unit USecuritizadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,System.TypInfo, SgDbSeachComboUnit;

type
  TfrmSecuritizadora = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    qEditSEC_CODIGO: TIntegerField;
    qEditSEC_DESCRICAO: TStringField;
    CdsEditSEC_CODIGO: TIntegerField;
    CdsEditSEC_DESCRICAO: TStringField;
    qEditEMP_CODIGO: TStringField;
    CdsEditEMP_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSecuritizadora: TfrmSecuritizadora;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfrmSecuritizadora.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditSEC_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditSEC_CODIGO.IsNull then
     CdsEditSEC_CODIGO.asInteger := GetNextSequence('GEN_SECURITIZADORA');
  CdsEditEMP_CODIGO.asString := DBInicio.Emp_Codigo;


end;

procedure TfrmSecuritizadora.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='SEC_CODIGO';
  Tabela:='SECURITIZADORA';
  SetTamanhoMinimo(180,655);

end;

procedure TfrmSecuritizadora.FormShow(Sender: TObject);

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
