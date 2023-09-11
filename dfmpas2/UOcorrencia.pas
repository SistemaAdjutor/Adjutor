unit UOcorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfmOcorrencia = class(TfrmBaseDBEdit)
    edDescricao: TDBEdit;
    lbl2: TLabel;
    edID: TDBEdit;
    lbl1: TLabel;
    CdsEditCODIGO: TIntegerField;
    CdsEditDESCRICAO: TStringField;
    qEditOCO_CODIGO: TIntegerField;
    qEditOCO_DESCRICAO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    CdsEditOCO_TIPO: TIntegerField;
    qEditOCO_TIPO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOcorrencia: TfmOcorrencia;

implementation

{$R *.dfm}

{ TfmOcorrencia }

procedure TfmOcorrencia.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEditoco_tipo.AsInteger:= 1;
end;

procedure TfmOcorrencia.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditDESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditCODIGO.IsNull then
     CdsEditCODIGO.asInteger := GetNextSequence('GEN_OCORRENCIA_CODIGO');
end;

procedure TfmOcorrencia.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='OCO_CODIGO';
  Tabela:='OCORRENCIA';
  DspEdit.UpdateMode := upWhereKeyOnly;
  SetTamanhoMinimo(288,671);
end;

end.
