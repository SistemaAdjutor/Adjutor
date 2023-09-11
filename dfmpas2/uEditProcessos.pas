unit uEditProcessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase,
  ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox;

type
  TfrmEditProcessos = class(TfrmBaseDBEditFDAC)
    cdsEditPRO_CODIGO: TIntegerField;
    cdsEditPRO_DESCRICAO: TStringField;
    Panel1: TPanel;
    edProcesso: TDBEdit;
    DBEdit1: TDBEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsEditDetailPRO_CODIGO: TIntegerField;
    cdsEditDetailOPE_DESCRICAO: TStringField;
    cdsEditDetailPOP_SEQ: TIntegerField;
    cdsEditDetailOPE_CODIGO: TIntegerField;
    cdsEditDetailPOP_CODIGO: TIntegerField;
    fdOperacoes: TFDQuery;
    cxGrid1DBTableView1OPE_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1OPE_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1POP_SEQ: TcxGridDBColumn;
    fdOperacoesOPE_CODIGO: TIntegerField;
    fdOperacoesOPE_NOME: TStringField;
    fdOperacoesOPE_DESCRICAO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    dsoperacoes: TDataSource;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditDetailPOP_TEMPOESTIMADO: TTimeField;
    cxGrid1DBTableViewPop_tempoestimado: TcxGridDBColumn;
    ValidarProcesso: TJvCustomValidator;
    fdtipo: TFDQuery;
    dstipo: TDataSource;
    cbTipo: TcxDBLookupComboBox;
    Tipo: TLabel;
    ValidarTipo: TJvCustomValidator;
    fdtipoSRV_CODIGO: TIntegerField;
    fdtipoEMP_CODIGO: TStringField;
    fdtipoSRV_NOME: TStringField;
    fdtipoSET_CODIGO: TIntegerField;
    cdsEditSRV_CODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsEditDetailNewRecord(DataSet: TDataSet);
    procedure ValidarProcessoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure cdsEditDetailBeforePost(DataSet: TDataSet);
    procedure ValidarTipoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditProcessos: TfrmEditProcessos;

implementation

uses iniciodb;
{$R *.dfm}

procedure TfrmEditProcessos.btnOkClick(Sender: TObject);
var i : integer;
begin
  if  EstadoTela = teExclusao then
  begin

    TemDetalhe := False;
    ExecSql( 'delete from MODl_PROCESSOS_OPERACOES WHERE PRO_CODIGO = '  +IntToStr(cdsEditPRO_CODIGO.AsInteger));

    inherited;
  end
  else
  begin

   if cdsEditPRO_CODIGO.IsNull then
      cdsEditPRO_CODIGO.AsInteger := GetNextSequence('GEN_MODL_PROCESSOS') ;

   if cdsEditEMP_CODIGO.AsString = '' then
     cdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;

    if cdsEditDetail.State IN dsEditModes then
      cdsEditDetail.Post;
    //ordernar as sequencias
    cdsEditDetail.DisableControls;
    try
      cdsEditDetail.Filtered := False;
      cdsEditDetail.First;
      i:= 1;
      while not cdsEditDetail.Eof do
      begin
        if cdsEditDetail.State = dsBrowse then
          cdsEditDetail.Edit;
        //cdsEditDetailPOP_SEQ.AsInteger := i;
        if cdsEditDetailPOP_CODIGO.IsNull then
          cdsEditDetailPOP_CODIGO.AsInteger := GetNextSequence('GEN_MODL_PROCESSOS_OPERACOES_ID');
        if cdsEditDetailPRO_CODIGO.IsNull  OR  (cdsEditDetailPRO_CODIGO.AsInteger = 0 ) then
           cdsEditDetailPRO_CODIGO.AsInteger := cdsEditPRO_CODIGO.AsInteger;
        cdsEditDetail.Post;
        //inc(i) ;
        cdsEditDetail.Next;
      end;

    finally
      cdsEditDetail.EnableControls;

    end;
    inherited;
  end;
end;

procedure TfrmEditProcessos.cdsEditDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsEditDetail.FieldByName('OPE_CODIGO').AsString = '' then
    raise Exception.Create('Selecionar uma operação');
end;

procedure TfrmEditProcessos.cdsEditDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  if cdsEditDetailPOP_SEQ.IsNull then
    cdsEditDetailPOP_SEQ.AsInteger := cdsEditDetail.RecordCount +1;
  if cdsEditDetailPOP_CODIGO.IsNull then
    cdsEditDetailPOP_CODIGO.AsInteger := GetNextSequence('GEN_MODL_PROCESSOS_OPERACOES_ID');
  if cdsEditDetailPRO_CODIGO.IsNull AND  (cdsEditDetailPRO_CODIGO.AsInteger = 0 ) then
     cdsEditDetailPRO_CODIGO.AsInteger := cdsEditPRO_CODIGO.AsInteger;
end;

procedure TfrmEditProcessos.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='PRO_CODIGO';
	Tabela:='MODL_PROCESSOS';
  CampoIDRetorno := 'PRO_CODIGO';
  self.Constraints.MinHeight:= 555;
  self.Constraints.MinWidth:=1139;
  self.Constraints.MaxHeight:= 0;
  TemDetalhe := true;
end;

procedure TfrmEditProcessos.FormShow(Sender: TObject);
begin
  inherited;
  fdOperacoes.Open('select ope_codigo, ope_nome, ope_Descricao from operacoes' );
  fdtipo.open;
  if SELF.EstadoTela = teNovo then
  begin

    if not cdsEditDetail.Active then
    begin
      cdsEditDetail.Params[0].AsInteger := -1;
      cdsEditDetail.Open;
    end;
    cdsEditDetail.Insert;

  end;
end;

procedure TfrmEditProcessos.ValidarProcessoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid :=  edProcesso.Text <> ''
end;

procedure TfrmEditProcessos.ValidarTipoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid := cbTipo.EditValue > 0 ;
end;

end.
