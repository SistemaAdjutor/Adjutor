unit uArtefatoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,  System.TypInfo;

type
  TfrmArtefato = class(TfrmBaseDBEdit)
    CdsEditART_CODIGO: TIntegerField;
    CdsEditART_NOME: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArtefato: TfrmArtefato;

implementation

uses InicioDB, uteis;
{$R *.dfm}

procedure TfrmArtefato.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;

	if CdsEditART_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditART_CODIGO.IsNull then
		 CdsEditART_CODIGO.asInteger := GetNextSequence('GEN_ARTEFATO');

end;

procedure TfrmArtefato.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='ART_CODIGO';
  Tabela:='ARTEFATO';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmArtefato.FormShow(Sender: TObject);
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
