unit UOperacoes;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,System.TypInfo, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, SgDbSeachComboUnit, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBControls, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Controls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
	TfmOperacoes = class(TfrmBaseDBEdit)
		qEditCODIGO: TIntegerField;
		qEditDESCRICAO: TStringField;
		edDescricao: TDBEdit;
		lbl2: TLabel;
		edID: TDBEdit;
		lbl1: TLabel;
    CdsEditOPE_CODIGO: TIntegerField;
    CdsEditOPE_DESCRICAO: TStringField;
    qEditOPE_OBSERVACAO: TBlobField;
    CdsEditOPE_OBSERVACAO: TBlobField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    CdsEditOPE_NOME: TStringField;
    CdsEditOPE_CUSTOHORA: TFMTBCDField;
    CdsEditPCX_CODIGO: TStringField;
    qEditOPE_NOME: TStringField;
    qEditOPE_CUSTOHORA: TFMTBCDField;
    qEditPCX_CODIGO: TStringField;
    Label2: TLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Label3: TLabel;
    lblProjcx: TLabel;
    DBePcx_Codigo: TDBEdit;
    CbxProjCx: TSgDbSearchCombo;
    CdsEditEMP_CODIGO: TStringField;
    qEditEMP_CODIGO: TStringField;
    qEditOPE_NAOUSACARGA: TStringField;
    DBCheckBox1: TDBCheckBox;
    CdsEditOPE_NAOUSACARGA: TStringField;
    btnParametros: TButton;
    btnResultado: TButton;
    qEditOPE_TEMRESULTADO: TStringField;
    CdsEditOPE_TEMRESULTADO: TStringField;
    chkResultado: TDBCheckBox;
    CdsEditOPE_FORMULARIO: TIntegerField;
    qEditOPE_FORMULARIO: TIntegerField;
    rgForm: TDBRadioGroup;
    Label4: TLabel;
    SgDbSearchCombo1: TSgDbSearchCombo;
    dbeEQP_CODIGO: TDBEdit;
    qEditEQP_CODIGO: TIntegerField;
    CdsEditEQP_CODIGO: TIntegerField;
    qEquipamento: TSQLQuery;
    Label5: TLabel;
    SgDbSearchCombo2: TSgDbSearchCombo;
    DBEdit2: TDBEdit;
    qSetor: TSQLQuery;
    qEditSET_CODIGO: TIntegerField;
    CdsEditSET_CODIGO: TIntegerField;
		procedure FormCreate(Sender: TObject);
		procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnParametrosClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure chkResultadoClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
    procedure rgFormEnter(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	fmOperacoes: TfmOperacoes;

implementation

{$R *.dfm}

uses InicioDB, uteis, uedParamQualidade, uparamResultado;
{ TfmOperacoes }

procedure TfmOperacoes.btnOKClick(Sender: TObject);
var vTag : integer;
begin
 if btnParametros.Enabled  then
   inherited
 Else
 begin
  CdsPost; // post and applyupdates
  if cbPersistente.Checked then
    CdsEdit.Insert;
  btnParametros.Enabled := (CdsEditOPE_CODIGO.asInteger > 0 );
  btnResultado.Enabled := (CdsEditOPE_CODIGO.AsInteger > 0) and chkResultado.Checked;
 end;

end;

procedure TfmOperacoes.btnParametrosClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmParametrosQualidade) then
    frmParametrosQualidade := TfrmParametrosQualidade.Create(self);
  frmParametrosQualidade.CodOperacoes := IntToStr(CdsEditOPE_CODIGO.AsInteger);
  frmParametrosQualidade.poperacoes.Caption := 'Operação : '+ IntToStr(CdsEditOPE_CODIGO.AsInteger) + '-' + CdsEditOPE_DESCRICAO.AsString;

  frmParametrosQualidade.AbreTela ;

end;

procedure TfmOperacoes.btnResultadoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmParamResultados) then
    frmParamResultados := TfrmParamResultados.Create(self);
  frmParamResultados.CodOperacoes := IntToStr(CdsEditOPE_CODIGO.AsInteger);
  //frmParamResultados.operacoes.Caption := 'Operação : '+ IntToStr(CdsEditOPE_CODIGO.AsInteger) + '-' + CdsEditOPE_DESCRICAO.AsString;

  frmParamResultados.AbreTela ;

end;

procedure TfmOperacoes.CdsEditBeforePost(DataSet: TDataSet);
begin
	inherited;
	ClearErrors;

	if CdsEditOPE_DESCRICAO.AsString=EmptyStr THEN
		 AddErrValidation('Descrição precisa ser informado.');
  if (CdsEditOPE_NOME.AsString = EmptyStr )  and (DBInicio.Empresa.PMT_HABILITAR_MRP) then
     AddErrValidation('Apelido precisa ser informado.');
	CheckErrors;

	if CdsEditOPE_CODIGO.IsNull then
		 CdsEditOPE_CODIGO.asInteger := GetNextSequence('GEN_OPERACOES');
  if CdsEditEMP_CODIGO.AsString = '' then
    CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
end;

procedure TfmOperacoes.chkResultadoClick(Sender: TObject);
begin
  inherited;
  btnResultado.Enabled := (CdsEditOPE_CODIGO.AsInteger > 0) and chkResultado.Checked;

  if (chkResultado.checked = true) then
    rgForm.Enabled := true

  else
  begin
    rgForm.enabled := false;
    rgForm.ItemIndex :=-1;
    rgForm.Value := '';
    if (CdsEditOPE_TEMRESULTADO.AsString = 'N') then
      CdsEditOPE_FORMULARIO.Clear;

   end
end;

procedure TfmOperacoes.FormCreate(Sender: TObject);
begin
	inherited;
  CampoID:='OPE_CODIGO';
  Tabela:='OPERACOES';
  SetTamanhoMinimo(344,671);
end;

procedure TfmOperacoes.FormShow(Sender: TObject);
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
  btnParametros.Enabled := (CdsEditOPE_CODIGO.asInteger > 0 );
  btnResultado.Enabled := (CdsEditOPE_CODIGO.AsInteger > 0) and chkResultado.Checked;
end;

procedure TfmOperacoes.rgFormEnter(Sender: TObject);
begin
  inherited;
  //rgForm.ItemIndex := rgForm.Values.IndexOf( CdsEdit.FieldByName('OPE_FORMULARIO').AsString );
end;

end.


