unit UServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmItemServico = class(TfrmBaseDBEdit)
    CdsEditSRV_REGISTRO: TIntegerField;
    CdsEditSRV_CODIGO: TStringField;
    CdsEditSRV_DESCRICAO: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qEditSRV_REGISTRO: TIntegerField;
    qEditSRV_CODIGO: TStringField;
    qEditSRV_DESCRICAO: TStringField;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    CdsEditCODIGOSERVICO: TStringField;
    qEditCODIGOSERVICO: TStringField;
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItemServico: TfrmItemServico;

implementation

{$R *.dfm}

procedure TfrmItemServico.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditSRV_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  if (CdsEditSRV_CODIGO.IsNull) OR (CdsEditSRV_CODIGO.AsString = '') then
    AddErrValidation('Código precisa ser informado.');
	CheckErrors;

	if CdsEditSRV_REGISTRO.IsNull then
		 CdsEditSRV_REGISTRO.asInteger := GetNextSequence('GEN_SRV0000_ID');
end;

procedure TfrmItemServico.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='SRV_REGISTRO';
	Tabela:='SRV0000';
end;

end.
