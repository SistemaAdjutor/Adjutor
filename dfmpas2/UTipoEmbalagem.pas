unit UTipoEmbalagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,System.TypInfo;

type
  TfmTipoEmbalagem = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    qEditEMP_CODIGO: TStringField;
    CdsEditTEM_CODIGO: TIntegerField;
    CdsEditTEM_DESCRICAO: TStringField;
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
  fmTipoEmbalagem: TfmTipoEmbalagem;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfmTipoEmbalagem.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditTEM_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descri��o precisa ser informado.');

  CheckErrors;

  if CdsEditTEM_CODIGO.IsNull then
     CdsEditTEM_CODIGO.asInteger := GetNextSequence('GEN_TIPO_EMBALAGEM');

  if CdsEditEMP_CODIGO.AsString = '' then
    CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;

end;

procedure TfmTipoEmbalagem.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='TEM_CODIGO';
  Tabela:='TIPO_EMBALAGEM';
  SetTamanhoMinimo(285,671);
end;

procedure TfmTipoEmbalagem.FormShow(Sender: TObject);

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
