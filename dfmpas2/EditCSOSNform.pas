unit EditCSOSNform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, ACBrBase, ACBrCalculadora, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TfrmEditCSOSN = class(TfrmBaseDBEdit)
    qEditCSON_ID: TIntegerField;
    qEditCSON_COD: TStringField;
    qEditCSON_DESCRICAO: TStringField;
    CdsEditCSON_ID: TIntegerField;
    CdsEditCSON_COD: TStringField;
    CdsEditCSON_DESCRICAO: TStringField;
    lbl1: TLabel;
    dbedtIBPT_ID: TDBEdit;
    lbl2: TLabel;
    dbedtCEST: TDBEdit;
    lbl3: TLabel;
    dbedtNCM: TDBEdit;
    procedure FormCreate(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditCSOSN: TfrmEditCSOSN;

implementation

{$R *.dfm}

procedure TfrmEditCSOSN.FormCreate(Sender: tObject);
begin
     INHERITED;
     CampoID:='CSON_ID';
     Tabela:='CSON0000';
     SetTamanhoMinimo(250,680);  
end;

procedure TfrmEditCSOSN.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;
  if CdsEditCSON_COD.AsString='' THEN
     AddErrValidation('Código CSOSN precisa ser informado.')
  Else
  if length( trim(CdsEditCSON_COD.AsString) )<3 THEN
     AddErrValidation('Código CSOSN precisa ter no mínimo 7 caracteres.');
  if CdsEditCSON_DESCRICAO.AsString='' then
     AddErrValidation('Descrição CSON precisa ser informada.');
  CheckErrors;
  if CdsEditCSON_ID.IsNull then
     CdsEditCSON_ID.asInteger := GetNextSequence('GEN_CSON_ID');
end;

end.
