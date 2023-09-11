unit uClienteOrigem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,SYSTEM.TypInfo;

type
  TfrmClieOrigem = class(TfrmBaseDBEdit)
    CdsEditCORI_CODIGO: TIntegerField;
    CdsEditCORI_DESCRICAO: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClieOrigem: TfrmClieOrigem;

implementation

USES InicioDB;

{$R *.dfm}

procedure TfrmClieOrigem.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
    CheckErrors;
  if CdsEditCORI_DESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

  CheckErrors;

  if CdsEditCORI_CODIGO.IsNull then
     CdsEditCORI_CODIGO.asInteger := GetNextSequence('gen_cliente_origem');
end;

procedure TfrmClieOrigem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmClieOrigem := nil;
end;

procedure TfrmClieOrigem.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='CORI_CODIGO';
  Tabela:='CLIENTE_ORIGEM';
  SetTamanhoMinimo(187,502);

end;

procedure TfrmClieOrigem.FormShow(Sender: TObject);
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

end.
