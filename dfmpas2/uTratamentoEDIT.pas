unit uTratamentoEDIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmTratamentoEdit = class(TfrmBaseDBEdit)
    CdsEditTSU_CODIGO: TIntegerField;
    CdsEditTSU_NOME: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTratamentoEdit: TfrmTratamentoEdit;

implementation
uses InicioDB, uteis,System.TypInfo;
{$R *.dfm}

procedure TfrmTratamentoEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;

	if CdsEditTSU_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditTSU_CODIGO.IsNull then
		 CdsEditTSU_CODIGO.asInteger := GetNextSequence('GEN_TRATAMENTO_SUPERFICIAL');
end;

procedure TfrmTratamentoEdit.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='TSU_CODIGO';
  Tabela:='TRATAMENTO_SUPERFICIAL';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmTratamentoEdit.FormShow(Sender: TObject);
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
