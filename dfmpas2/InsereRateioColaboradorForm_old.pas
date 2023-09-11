unit InsereRateioColaboradorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXInterBase,
  Data.FMTBCd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DBXFirebird, SgDbSeachComboUnit, SgDbLookupComboUnit, Vcl.Mask,
  RxToolEdit, RxCurrEdit, RxDBCurrEdit, Math, Vcl.DBCtrls, ACBrEnterTab;

type
  TfrmInsereRateioColaborador = class(TfrmBaseDBEdit)
    qPerfil: TSQLQuery;
    qConta: TSQLQuery;
    edConta: TsgDBSearchCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCusto: TsgDBSearchCombo;
    lbQtd: TLabel;
    DBEdit1: TDBEdit;
    edPerfil: TSgDbSearchCombo;
    qEditPPC_REGISTRO: TIntegerField;
    qEditEMP_CODIGO: TStringField;
    qEditCCT_0000: TStringField;
    qEditPCX_CODIGO: TStringField;
    qEditPCXPF_REGISTRO: TIntegerField;
    qEditPPC_TIPO: TStringField;
    qEditPPC_QUANTIDADE: TFMTBCDField;
    qEditPPC_INDICE_REAL: TFMTBCDField;
    CdsEditPPC_REGISTRO: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditCCT_0000: TStringField;
    CdsEditPCX_CODIGO: TStringField;
    CdsEditPCXPF_REGISTRO: TIntegerField;
    CdsEditPPC_TIPO: TStringField;
    CdsEditPPC_QUANTIDADE: TFMTBCDField;
    CdsEditPPC_INDICE_REAL: TFMTBCDField;
    qCusto: TSQLQuery;
    qCustoPCX_CODIGO: TStringField;
    qCustoPCX_NIVEL: TStringField;
    qCustoPCX_DESCRI: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure edCustoMenuPesquisaClick(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure CdsEditPCX_CODIGOChange(Sender: TField);
    procedure qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fperfil: integer;
    fconta: string;
    procedure AjustaIndicesTotais;

  public
    property conta:string read fconta write fconta;
    property perfil:integer read fperfil write fperfil;

  end;

var
  frmInsereRateioColaborador: TfrmInsereRateioColaborador;

implementation

uses uteis, iniciodb, PCX0000;

{$R *.dfm}

procedure TfrmInsereRateioColaborador.btnOKClick(Sender: TObject);
begin
     inherited;
     edCusto.SetFocus;
End;

procedure TfrmInsereRateioColaborador.CdsEditAfterInsert(DataSet: TDataSet);
begin
    inherited;
    CdsEditcct_0000.AsString := conta;
    CdsEditpcxpf_registro.AsInteger := Perfil;
    CdsEditEmp_Codigo.asString := dbInicio.Empresa.EMP_CODIGO;
    CdsEditppc_Tipo.asstring := 'L' ;
end;

procedure TfrmInsereRateioColaborador.AjustaIndicesTotais;
var Total, IndReal, IndRealT: Currency;
    lCod: string;
begin

     Total := dbInicio.BuscaUmDadoSqlAsInteger('select sum( ppc_quantidade ) from PCX0000_PERFIL_COLABORADOR where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString);
     dbInicio.ExecSql( 'Update PCX0000_PERFIL_COLABORADOR set PPC_QUANTIDADE_TOTAL_PERFIL = '+FloatToSql( Total )+' where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString);

     IndReal:=0;
     IndRealT:=0;

     with dbInicio do
     begin
          qAux.close;
          qAux.sql.Clear;
          qAux.sql.Text := 'Select ppc_registro, ppc_quantidade from PCX0000_PERFIL_COLABORADOR where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString;
          qAux.open;
          while not qAux.eof do
          begin
               if qAux.fields[1].AsInteger>0 then
               begin
                    lCod :=qAux.fields[0].asstring;
                    IndReal := Uteis.RoundTo( (qAux.fields[1].AsInteger / Total) * 100 , -4 );
                    IndRealT := IndRealT + IndReal;
                    dbInicio.ExecSql('Update PCX0000_PERFIL_COLABORADOR set PPC_INDICE_REAL = '+FloatToSql( iNDrEAL )+' where ppc_registro='+qStr(lCod) );
               end;
               qAux.next;
          end;
          if (IndRealT<100) and (Total>0)then
          begin
               IndRealT := 100 - IndRealT;
               dbInicio.ExecSql('Update PCX0000_PERFIL_COLABORADOR set PPC_INDICE_REAL = PPC_INDICE_REAL+'+FloatToSql( iNDrEAL )+' where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and ppc_registro='+qStr(lCod));
          end;
          qAux.close;
     end;
end;

procedure TfrmInsereRateioColaborador.CdsEditBeforePost(DataSet: TDataSet);
begin
     inherited;

     ClearErrors;

     if (CdsEditPcx_codigo.IsNull) or (CdsEditPcx_Codigo.asInteger=0) then
        AddErrValidation('Informe o Centro de Custo para Rateio !');
     if CdsEditppc_Quantidade.asCurrency<=0 then
        AddErrValidation('Informe o Número de Colaboradores para Rateio !');

     CheckErrors;

     if CdsEditppc_registro.isnull then
        CdsEditppc_registro.AsInteger := dbInicio.GetNextSequence('GEN_PCX0000_PERFIL_COLABORAD');
end;

procedure TfrmInsereRateioColaborador.CdsEditPCX_CODIGOChange(Sender: TField);
var id: integer;
begin
  inherited;
  if CdsEdit.State<>dsBrowse then
  begin
       id := BuscaUmDadoSqlAsInteger( 'select ppc_registro '+
                                      'from PCX0000_PERFIL_COLABORADOR '+
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

procedure TfrmInsereRateioColaborador.edCustoMenuPesquisaClick(Sender: tObject);
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

procedure TfrmInsereRateioColaborador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     inherited;
     AjustaIndicesTotais;
end;

procedure TfrmInsereRateioColaborador.FormCreate(Sender: tObject);
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


procedure TfrmInsereRateioColaborador.qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     text := edCusto.cds.fieldbyname('PCX_nivel').AsString+' - '+edCusto.cds.fieldbyname('PCX_DESCRI').AsString;
end;

end.


