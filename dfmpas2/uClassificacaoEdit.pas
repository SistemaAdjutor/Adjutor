unit uClassificacaoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmClassificacao = class(TfrmBaseDBEdit)
    CdsEditCMO_CODIGO: TIntegerField;
    CdsEditCMO_NOME: TStringField;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClassificacao: TfrmClassificacao;

implementation

{$R *.dfm}

uses InicioDB, uteis,System.TypInfo;



procedure TfrmClassificacao.CdsEditBeforePost(DataSet: TDataSet);
begin
	ClearErrors;

	if CdsEditCMO_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditCMO_CODIGO.IsNull then
		 CdsEditCMO_CODIGO.asInteger := GetNextSequence('gen_classificacao_mola');

end;

procedure TfrmClassificacao.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='CMO_CODIGO';
  Tabela:='CLASSIFICACAO_MOLA';
  SetTamanhoMinimo(178,671);

end;

procedure TfrmClassificacao.FormShow(Sender: TObject);
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
