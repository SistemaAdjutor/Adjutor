unit EditCestForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, ACBrBase, ACBrCalculadora, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  Mask, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TFrmEditCest = class(TfrmBaseDBEdit)
    lbl2: TLabel;
    dbedtCEST: TDBEdit;
    lbl3: TLabel;
    dbedtNCM: TDBEdit;
    lbl4: TLabel;
    lbl1: TLabel;
    dbedtIBPT_ID: TDBEdit;
    dbmmoDESC: TDBMemo;
    qEditCEST_ID: TIntegerField;
    qEditCEST_COD: TStringField;
    qEditCEST_NCM: TStringField;
    qEditCEST_DESCRICAO: TStringField;
    CdsEditCEST_ID: TIntegerField;
    CdsEditCEST_COD: TStringField;
    CdsEditCEST_NCM: TStringField;
    CdsEditCEST_DESCRICAO: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditCest: TFrmEditCest;

implementation

{$R *.dfm}

procedure TFrmEditCest.FormCreate(Sender: tObject);
begin
  inherited;
  CampoID:='CEST_ID';
  Tabela:='CEST0000';
  SetTamanhoMinimo(285,699);
end;

procedure TFrmEditCest.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;

  ClearErrors;
  if CdsEditCEST_COD.AsString='' THEN
     AddErrValidation('Código CEST precisa ser informado.')
  Else
  if length( trim(CdsEditCEST_COD.AsString) )<7 THEN
     AddErrValidation('Código CEST precisa ter no mínimo 7 caracteres.');

  if CdsEditCEST_NCM.AsString='' THEN
     AddErrValidation('Código NCM precisa ser informado.')
  Else
  if length( Trim(CdsEditCEST_NCM.asString) )<2 THEN
     AddErrValidation('Código NCM precisa ter no mínimo 2 caracteres.');

  if CdsEditCEST_DESCRICAO.AsString='' then
     AddErrValidation('Descrição NCM precisa ser informada.');
  CheckErrors;
  if CdsEditCEST_ID.IsNull then
     CdsEditCEST_ID.asInteger := GetNextSequence('GEN_CEST_ID');
end;

end.
