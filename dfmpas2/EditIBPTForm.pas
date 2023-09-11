unit EditIBPTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr,ACBrBase, ACBrCalculadora, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls,  rxToolEdit,  rxCurrEdit, RXDBCtrl, JvBaseEdits, JvDBControls,
  JvExMask, JvMaskEdit, Data.DBXInterBase, JvToolEdit, Data.DBXFirebird,
  ACBrEnterTab;

type
  TfrmEditIBPT = class(TfrmBaseDBEdit)
    qEditIBPT_ID: TIntegerField;
    qEditIBPT_NCM: TStringField;
    qEditIBPT_EX: TStringField;
    qEditIBPT_TABELA: TIntegerField;
    qEditIBPT_DESCRICAO: TStringField;
    qEditIBPT_ALIQFEDNACIONAL: TFMTBCdField;
    qEditIBPT_ALIQFEDIMPORTADO: TFMTBCdField;
    qEditIBPT_ALIQESTADUAL: TFMTBCdField;
    qEditIBPT_ALIQMUNICIPAL: TFMTBCdField;
    CdsEditIBPT_ID: TIntegerField;
    CdsEditIBPT_NCM: TStringField;
    CdsEditIBPT_EX: TStringField;
    CdsEditIBPT_TABELA: TIntegerField;
    CdsEditIBPT_DESCRICAO: TStringField;
    CdsEditIBPT_ALIQFEDNACIONAL: TFMTBCdField;
    CdsEditIBPT_ALIQFEDIMPORTADO: TFMTBCdField;
    CdsEditIBPT_ALIQESTADUAL: TFMTBCdField;
    CdsEditIBPT_ALIQMUNICIPAL: TFMTBCdField;
    lbl1: TLabel;
    dbedtIBPT_ID: TDBEdit;
    lbl2: TLabel;
    dbedtIBPT_NCM: TDBEdit;
    lbl3: TLabel;
    dbedtIBPT_EX: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedtIBPT_DESCRICAO: TDBEdit;
    lbl6: TLabel;
    dbedtIBPT_ALIQFEDNACIONAL: TJvDBCalcEdit;
    lbl7: TLabel;
    dbedtIBPT_ALIQFEDIMPORTADO: TJvDBCalcEdit;
    lbl8: TLabel;
    dbedtIBPT_ALIQESTADUAL: TJvDBCalcEdit;
    lbl9: TLabel;
    dbedtIBPT_ALIQMUNICIPAL: TJvDBCalcEdit;
    dbcbbIBPT_TABELA: TDBComboBox;
    procedure FormCreate(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure CdsEditIBPT_TABELAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CdsEditIBPT_TABELASetText(Sender: TField;
      const Text: String);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure dbedtIBPT_EXKeyPress(Sender: tObject; var Key: Char);
    procedure dbedtIBPT_EXExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditIBPT: TfrmEditIBPT;

implementation

Uses Uteis, InicioDB;

{$R *.dfm}

procedure TfrmEditIBPT.FormCreate(Sender: tObject);
begin
  inherited;
  CampoID:='IBPT_ID';
  Tabela:='IBPT0000';
  SetTamanhoMinimo(369,654);
  
end;

procedure TfrmEditIBPT.FormShow(Sender: tObject);
begin
  inherited;
  //Self.Caption:='Tabela IBPT'; (automático)
end;

procedure TfrmEditIBPT.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;
  if CdsEditIBPT_NCM.AsString='' THEN
     AddErrValidation('NCM precisa ser informado.');
  if CdsEditIBPT_DESCRICAO.AsString='' then
     AddErrValidation('Descrição precisa ser informada.');
  CheckErrors;
  if CdsEditIBPT_ID.IsNull then
     CdsEditIBPT_ID.asInteger := GetNextSequence('GEN_IBPT_ID');
end;

procedure TfrmEditIBPT.CdsEditIBPT_TABELAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
  0: Text := 'NCM';
  1: Text := 'NBS';
  2: Text := 'LST';
  end;
end;

procedure TfrmEditIBPT.CdsEditIBPT_TABELASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  If Text = 'NCM' then
     Sender.AsInteger:=0
  Else
  If Text = 'NBS' then
     Sender.AsInteger:=1
  Else
  if Text = 'LST' Then
     Sender.AsInteger:=2;
end;

procedure TfrmEditIBPT.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEditIBPT_TABELA.asInteger := 0; // ncm
end;

procedure TfrmEditIBPT.dbedtIBPT_EXKeyPress(Sender: tObject;
  var Key: Char);
begin
     inherited;
     AcceptNumberOnly( key );
end;

procedure TfrmEditIBPT.dbedtIBPT_EXExit(Sender: tObject);
begin
     inherited;
     with TDBEdit(sender) do
     begin
          if Trim(text)<>'' then
             text := strzero( StrToIntDef( text , 0 ), 2);
     end;
end;

end.
