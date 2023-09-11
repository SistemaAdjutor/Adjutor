unit uAcabamentoSupEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAcabamentoSuperEdit = class(TfrmBaseDBEdit)
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    CdsEditASU_CODIGO: TIntegerField;
    CdsEditASU_NOME: TStringField;
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcabamentoSuperEdit: TfrmAcabamentoSuperEdit;

implementation

{$R *.dfm}
uses InicioDB, uteis,System.TypInfo;

procedure TfrmAcabamentoSuperEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;

	if CdsEditASU_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditASU_CODIGO.IsNull then
		 CdsEditASU_CODIGO.asInteger := GetNextSequence('gen_acabamento_superficial');

end;

procedure TfrmAcabamentoSuperEdit.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='ASU_CODIGO';
  Tabela:='ACABAMENTO_SUPERFICIAL';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmAcabamentoSuperEdit.FormShow(Sender: TObject);
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
  VisibleAndEnabl(cbPersistente, false, false);


end;

end.
