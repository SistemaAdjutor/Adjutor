unit UCadParametrosDaQualidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,  Vcl.Mask, Vcl.DBCtrls,System.TypInfo;
type
  TfrmCadParametrosDaQualidade = class(TfrmBaseDBEdit)
    qEditPAR_CODIGO: TIntegerField;
    qEditPAR_DESCRICAO: TStringField;
    CdsEditPAR_CODIGO: TIntegerField;
    CdsEditPAR_DESCRICAO: TStringField;
    lbl2: TLabel;
    PAR_DESCRICAO: TDBEdit;
    Label4: TLabel;
    DBEditCodigo: TDBEdit;
    Label1: TLabel;
    PAR_OBSERVACAO: TDBEdit;
    qEditPAR_OBSERVACAO: TStringField;
    CdsEditPAR_OBSERVACAO: TStringField;
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
  frmCadParametrosDaQualidade: TfrmCadParametrosDaQualidade;

implementation

{$R *.dfm}



procedure TfrmCadParametrosDaQualidade.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;
	if CdsEditPAR_DESCRICAO.AsString=EmptyStr THEN
		 AddErrValidation('Nome precisa ser informado.');

	CheckErrors;

	if CdsEditPAR_CODIGO.IsNull then
		 CdsEditPAR_CODIGO.asInteger := GetNextSequence('GEN_PARAMETROS_DA_QUALIDADE');

end;

procedure TfrmCadParametrosDaQualidade.FormCreate(Sender: TObject);
begin
	inherited;
	CampoID:='PAR_CODIGO';
	Tabela:='PARAMETROS_DA_QUALIDADE';
	SetTamanhoMinimo(210,685);
end;

procedure TfrmCadParametrosDaQualidade.FormShow(Sender: TObject);
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

procedure TfrmCadParametrosDaQualidade.qEditCOL_SALARIO_HORAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := BcdToStr(Sender.AsBCD);
end;

end.
