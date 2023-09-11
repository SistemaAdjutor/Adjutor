unit InsereRateioCustoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXInterBase,
  Data.FMTBCd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DBXFirebird, SgDbSeachComboUnit, SgDbLookupComboUnit, Vcl.Mask,
  RxToolEdit, RxCurrEdit, RxDBCurrEdit, Math, Vcl.DBCtrls, ACBrEnterTab;

type
  TfrmInsereRateioCusto = class(TfrmBaseDBEdit)
    qPerfil: TSQLQuery;
    qConta: TSQLQuery;
    edConta: TsgDBSearchCombo;
    Label1: TLabel;
    Label2: TLabel;
    qCusto: TSQLQuery;
    Label3: TLabel;
    edCusto: TsgDBSearchCombo;
    lbQtd: TLabel;
    DBEdit1: TDBEdit;
    edPerfil: TSgDbSearchCombo;
    qEditPCXP_REGISTRO: TIntegerField;
    qEditEMP_CODIGO: TStringField;
    qEditCCT_0000: TStringField;
    qEditPCX_CODIGO: TStringField;
    qEditPCXPF_REGISTRO: TIntegerField;
    qEditPCXP_TIPO: TStringField;
    qEditPCXP_INDICE: TFMTBCDField;
    qEditPCXP_INDICE_REAL: TFMTBCDField;
    CdsEditPCXP_REGISTRO: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditCCT_0000: TStringField;
    CdsEditPCX_CODIGO: TStringField;
    CdsEditPCXPF_REGISTRO: TIntegerField;
    CdsEditPCXP_TIPO: TStringField;
    CdsEditPCXP_INDICE: TFMTBCDField;
    CdsEditPCXP_INDICE_REAL: TFMTBCDField;
    qCustoPCX_CODIGO: TStringField;
    qCustoPCX_NIVEL: TStringField;
    qCustoPCX_DESCRI: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure edCustoMenuPesquisaClick(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure DspEditAfterApplyUpdates(Sender: tObject;
      var OwnerData: OleVariant);
    procedure CdsEditPCX_CODIGOChange(Sender: TField);
    procedure qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnOKClick(Sender: TObject);
  private
    fperfil: integer;
    fconta: string;
    procedure AjustaIndicesTotais;

  public
    property conta:string read fconta write fconta;
    property perfil:integer read fperfil write fperfil;

  end;

var
  frmInsereRateioCusto: TfrmInsereRateioCusto;

implementation

uses uteis, iniciodb, PCX0000;

{$R *.dfm}

procedure TfrmInsereRateioCusto.btnOKClick(Sender: TObject);
begin
  inherited;
  edCusto.SetFocus;
End;

procedure TfrmInsereRateioCusto.CdsEditAfterInsert(DataSet: TDataSet);
begin
    inherited;
    CdsEditcct_0000.AsString := conta;
    CdsEditpcxpf_registro.AsInteger := Perfil;
    CdsEditEmp_Codigo.asString := dbInicio.Empresa.EMP_CODIGO;
    CdsEditpcxp_Tipo.asstring := 'L' ;
end;

procedure TfrmInsereRateioCusto.AjustaIndicesTotais;
var Total, IndReal, IndRealT: Currency;
    lCod: string;
begin
end;

procedure TfrmInsereRateioCusto.CdsEditBeforePost(DataSet: TDataSet);
begin
     inherited;
     ClearErrors;
     if (CdsEditPcx_codigo.IsNull) or (CdsEditPcx_Codigo.asInteger=0) then
        AddErrValidation('Informe o Centro de Custo para Rateio !');
     if CdsEditpcxp_indice.asCurrency<=0 then
        AddErrValidation('Informe a Margem para Rateio !');
     CheckErrors;
     CdsEditpcxp_registro.AsInteger := dbInicio.GetNextSequence('gen_pcx0000_plano_id');
end;

procedure TfrmInsereRateioCusto.CdsEditPCX_CODIGOChange(Sender: TField);
var id: integer;
begin
  inherited;
  if CdsEdit.State<>dsBrowse then
  begin
       id := BuscaUmDadoSqlAsInteger( 'select pcxp_registro '+
                                      'from PCX0000_PLANO '+
                                      'where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+
                                      '      and cct_0000='+qStr(conta)+
                                      '      and pcxpf_registro='+Perfil.ToString+
                                      '      and pcx_codigo='+qStr(sender.AsString) );
       if id <> 0 then
       begin
            CdsEdit.Cancel;
            OpenEditID(id);
            CdsEdit.Edit;
       end;
  end;

end;

procedure TfrmInsereRateioCusto.DspEditAfterApplyUpdates(Sender: tObject;var OwnerData: OleVariant);
begin
     inherited;
     AjustaIndicesTotais;
end;

procedure TfrmInsereRateioCusto.edCustoMenuPesquisaClick(Sender: tObject);
var tcr: TFormProjCaixa;
begin
     inherited;
     tcr := TFormProjCaixa.Create(Application);
     try
        tcr.ShowModal;
        if tcr.ModalResult=mrOk then
           CdsEditPcx_codigo.asstring:=tcr.retorno;
   finally
      FreeAndNil(tcr);
   end;
end;

procedure TfrmInsereRateioCusto.FormCreate(Sender: tObject);
begin
  inherited;
  conta := '';
  perfil := 0;
  CampoID:='PPC_REGISTRO';
  CampoIdRetorno:='PPC_REGISTRO';
  Tabela:='PCX0000_PERFIL_COLABORADOR';
  edConta.FiltroTabela:='cct_tipo='+qStr('CV')+' and emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO);
  edPerfil.FiltroTabela:='emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO);
  edCusto.FiltroTabela:='emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO);
  SetTamanhoMinimo(230,660);
  cbPersistente.Checked:=TRUE;
end;



procedure TfrmInsereRateioCusto.qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     text := edCusto.cds.fieldbyname('PCX_nivel').AsString+' - '+edCusto.cds.fieldbyname('PCX_DESCRI').AsString;
end;

end.





object edCusto: TSgDbSearchCombo
  Left = 86
  Top = 77
  Width = 305
  Height = 21
  EmptyText = 'Selecione..'
  TabOrder = 2
  CharCase = ecUpperCase

  LookupDispl = 'PCX_DESCRI'
  GridAutoSize = False
  LookupSource = qCusto
  DataField = 'PCX_CODIGO'
  DataSource = dsEditS
  LookupKeyField = 'pcx_codigo'
  ShowButton = True
  AutoF8WinTitulo = 'Centros de Custos'
  AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
  GridLeft = 0
  GridWidth = 0
  GridHeight = 100
  GridShowWhenEnter = False
end

