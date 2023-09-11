unit uGanchoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmGanchoEdit = class(TfrmBaseDBEdit)
    CdsEditGAN_CODIGO: TIntegerField;
    CdsEditGAN_NOME: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    Label2: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label3: TLabel;
    CdsEditGAN_QTD_ESPIRAS: TSingleField;
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGanchoEdit: TfrmGanchoEdit;

implementation

{$R *.dfm}

uses InicioDB, uteis,System.TypInfo;

procedure TfrmGanchoEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
	ClearErrors;

	if CdsEditGAN_NOME.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');
  if CdsEditGAN_QTD_ESPIRAS.AsString=EmptyStr THEN
		 AddErrValidation('Quantidade de espiras precisa ser informado.');

	CheckErrors;

	if CdsEditGAN_CODIGO.IsNull then
		 CdsEditGAN_CODIGO.asInteger := GetNextSequence('GEN_GANCHO');

end;

procedure TfrmGanchoEdit.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='GAN_CODIGO';
  Tabela:='GANCHO';
  SetTamanhoMinimo(178,671);
end;

procedure TfrmGanchoEdit.FormShow(Sender: TObject);
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
