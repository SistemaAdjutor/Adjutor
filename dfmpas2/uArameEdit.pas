unit uArameEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmArameEdit = class(TfrmBaseDBEdit)
    CdsEditARA_CODIGO: TIntegerField;
    CdsEditNOME: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArameEdit: TfrmArameEdit;


implementation

uses InicioDB, uteis,System.TypInfo;
{$R *.dfm}

procedure TfrmArameEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
	ClearErrors;

	if CdsEditNOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditARA_CODIGO.IsNull then
		 CdsEditARA_CODIGO.asInteger := GetNextSequence('gen_arame');
end;

procedure TfrmArameEdit.FormCreate(Sender: TObject);
begin
   inherited;
  CampoID:='ARA_CODIGO';
  Tabela:='ARAME';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmArameEdit.FormShow(Sender: TObject);
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
