unit UEquip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, SgDbSeachComboUnit, JvExMask, JvToolEdit, JvDBControls, System.TypInfo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDBEdit;

type
  TfmEquip = class(TfrmBaseDBEdit)
    edDescricao: TDBEdit;
    lbl2: TLabel;
    edID: TDBEdit;
    lbl1: TLabel;
    qEditCODIGO: TIntegerField;
    qEditDESCRICAO: TStringField;
    CdsEditCODIGO: TIntegerField;
    CdsEditDESCRICAO: TStringField;
    lblProjcx: TLabel;
    DBePcx_Codigo: TDBEdit;
    CbxProjCx: TSgDbSearchCombo;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    CdsEditEQP_REFER: TStringField;
    CdsEditEQP_ESPECIFICACAO: TStringField;
    CdsEditPCX_CODIGO: TStringField;
    CdsEditTPR_CODIGO: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    qEditEQP_REFER: TStringField;
    qEditEQP_ESPECIFICACAO: TStringField;
    qEditPCX_CODIGO: TStringField;
    qEditTPR_CODIGO: TIntegerField;
    qEditEMP_CODIGO: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SgDbSearchCombo1: TSgDbSearchCombo;
    JvDBDateEdit1: TJvDBDateEdit;
    Label4: TLabel;
    CdsEditEQP_DATAAQUISICAO: TDateField;
    qEditEQP_DATAAQUISICAO: TDateField;
    qEditEQP_CERTIFICADO: TStringField;
    qEditEQP_DATACALIBRACAO: TDateField;
    qEditEQP_DATAVALIDACAO: TDateField;
    CdsEditEQP_CERTIFICADO: TStringField;
    CdsEditEQP_DATACALIBRACAO: TDateField;
    CdsEditEQP_DATAVALIDACAO: TDateField;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    SgDbSearchCombo2: TSgDbSearchCombo;
    CdsEditSET_CODIGO: TIntegerField;
    qEditSET_CODIGO: TIntegerField;
    qEditEQP_CUSTOHORA: TFMTBCDField;
    CdsEditEQP_CUSTOHORA: TFMTBCDField;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEquip: TfmEquip;

implementation
 uses uteis, InicioDB;
{$R *.dfm}

procedure TfmEquip.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;

  if CdsEditDESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');

	CheckErrors;

	if CdsEditCODIGO.IsNull then
		 CdsEditCODIGO.asInteger := GetNextSequence('GEN_EQUIP');
  if CdsEditEMP_CODIGO.AsString = '' then
     CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;

end;

procedure TfmEquip.FormCreate(Sender: TObject);
begin
	inherited;
	CampoID:='EQP_CODIGO';
	Tabela:='EQUIPAMENTO';
	SetTamanhoMinimo(322,671);
end;

procedure TfmEquip.FormResize(Sender: TObject);
begin
  inherited;
  self.Height :=  322;
  self.Width := 869;
end;

procedure TfmEquip.FormShow(Sender: TObject);
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
