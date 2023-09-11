unit uCoresEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmCoresEdit = class(TfrmBaseDBEdit)
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    CdsEditACO_CODIGO: TIntegerField;
    CdsEditACO_NOME: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCoresEdit: TfrmCoresEdit;

implementation
uses InicioDB, uteis,System.TypInfo;
{$R *.dfm}

procedure TfrmCoresEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;

	if CdsEditACO_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditACO_CODIGO.IsNull then
		 CdsEditACO_CODIGO.asInteger := GetNextSequence('GEN_ACABAMENTO_CORES');
end;

procedure TfrmCoresEdit.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='ACO_CODIGO';
  Tabela:='ACABAMENTO_CORES';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmCoresEdit.FormShow(Sender: TObject);
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
