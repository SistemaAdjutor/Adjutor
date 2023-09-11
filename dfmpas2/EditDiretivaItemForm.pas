unit EditDiretivaItemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, ACBrBase, ACBrCalculadora, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, SgDbSeachComboUnit, SgDbLookupComboUnit, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TfrmEditDiretivaItem = class(TfrmBaseDBEdit)
    qEditPDI_REGISTRO: TIntegerField;
    qEditPRF_REGISTRO: TIntegerField;
    qEditPRDD_REGISTRO: TIntegerField;
    CdsEditPDI_REGISTRO: TIntegerField;
    CdsEditPRF_REGISTRO: TIntegerField;
    CdsEditPRDD_REGISTRO: TIntegerField;
    lbl1: TLabel;
    dbedtIBPT_ID: TDBEdit;
    edDiretiva: TsgDBLookupCombo;
    Label1: TLabel;
    qDiretivas: TSQLQuery;
    qDiretivasPRDD_REGISTRO: TIntegerField;
    qDiretivasPRDD_DESCRICAO: TStringField;
    qDiretivasPRDD_SIGLA: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dsDiretivas: TDataSource;
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure edDiretivaMenuNovoClick(Sender: tObject);
    procedure edDiretivaMenuPesquisaClick(Sender: tObject);
    procedure btnOKClick(Sender: tObject);
  private
    pPRF_REGISTRO: Integer;
    fCds: tClientDataSet ;
    procedure CadDiretiva;
  public
    property PRF_REGISTRO: Integer read pPRF_REGISTRO write pPRF_REGISTRO;
    Property Cds: tClientDataSet Read     fCds write fCds; 
  end;

var
  frmEditDiretivaItem: TfrmEditDiretivaItem;

implementation

uses Uteis, InicioDB, uCadastroDiretiva;

{$R *.dfm}

procedure TfrmEditDiretivaItem.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEditPRF_REGISTRO.asinteger := PRF_REGISTRO;
  CdsEditPDI_REGISTRO.asinteger := GetNextSequence('GEN_PRD_DIRETIVA_ITEM_ID');

end;

procedure TfrmEditDiretivaItem.CdsEditBeforePost(DataSet: TDataSet);
begin
  ClearErrors;
  if CdsEditPRDD_REGISTRO.asstring = '' then
     AddErrValidation('Informe a Diretiva.');
  CheckErrors;
end;

procedure TfrmEditDiretivaItem.FormCreate(Sender: tObject);
begin
  inherited;
  edDiretiva.FiltroTabela:='EMP_CODIGO='+qStr(dbInicio.empresa.emp_codigo);
  self.SetTamanhoMinimo(231,640);
  CAMPOID:='PDI_REGISTRO';
End;

procedure TfrmEditDiretivaItem.FormShow(Sender: tObject);
begin
  inherited;
  cbPersiStente.Checked:=True;
  cbPersiStente.visible := False;
end;

procedure TfrmEditDiretivaItem.CadDiretiva;
begin
  try
    FormDiretiva := TFormDiretiva.Create(Application);
    FormDiretiva.ShowModal;
    if (FormDiretiva.ModalResult = mrOk) and (CdsEdit.State<>dsBrowse) then
       CdsEditPRDD_REGISTRO.asinteger := FormDiretiva.diretiva;
  finally
    FormDiretiva.Destroy;
    FormDiretiva := nil;
  end;
end;

procedure TfrmEditDiretivaItem.edDiretivaMenuNovoClick(Sender: tObject);
begin
  inherited;
  CadDiretiva;
end;

procedure TfrmEditDiretivaItem.edDiretivaMenuPesquisaClick(
  Sender: tObject);
begin
  inherited;
  CadDiretiva;
end;

procedure TfrmEditDiretivaItem.btnOKClick(Sender: tObject);
begin
  inherited;
  if assigned ( fCds ) then
     fCds.Refresh; 
end;

end.


