unit URequisicaoMaterialOri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,System.TypInfo, SgDbSeachComboUnit;

type
  TfrmRequisicaoMaterialOri = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    qEditRMO_CODIGO: TIntegerField;
    qEditRMO_DESCRICAO: TStringField;
    CdsEditRMO_CODIGO: TIntegerField;
    CdsEditRMO_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequisicaoMaterialOri: TfrmRequisicaoMaterialOri;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfrmRequisicaoMaterialOri.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditRMO_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditRMO_CODIGO.IsNull then
     CdsEditRMO_CODIGO.asInteger := GetNextSequence('GEN_REQUISICAO_MATERIAL_ORI');


end;

procedure TfrmRequisicaoMaterialOri.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='RMO_CODIGO';
  Tabela:='REQUISICAO_MATERIAL_ORI';
  SetTamanhoMinimo(135,460);

end;

procedure TfrmRequisicaoMaterialOri.FormShow(Sender: TObject);

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
