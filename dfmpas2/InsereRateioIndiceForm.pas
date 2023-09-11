unit InsereRateioIndiceForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXInterBase,
  Data.FMTBCd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DBXFirebird, SgDbSeachComboUnit, SgDbLookupComboUnit, Vcl.Mask,
  RxToolEdit, RxCurrEdit, Math, Vcl.DBCtrls, ACBrEnterTab;

type
  TfrmInsereRateioIndice = class(TfrmBaseDBEdit)
    qPerfil: TSQLQuery;
    qConta: TSQLQuery;
    edConta: TsgDBSearchCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCusto: TsgDBLookupCombo;
    lbQtd: TLabel;
    DBEdit1: TDBEdit;
    edPerfil: TSgDbSearchCombo;
    qCusto: TSQLQuery;
    qCustoPCX_CODIGO: TStringField;
    qCustoPCX_NIVEL: TStringField;
    qCustoPCX_DESCRI: TStringField;
    qEditPCXP_REGISTRO: TIntegerField;
    qEditEMP_CODIGO: TStringField;
    qEditCCT_0000: TStringField;
    qEditPCX_CODIGO: TStringField;
    qEditPCXP_INDICE: TFMTBCDField;
    qEditPCXP_INDICE_REAL: TFMTBCDField;
    qEditPCXP_TIPO: TStringField;
    qEditPCXPF_REGISTRO: TIntegerField;
    CdsEditPCXP_REGISTRO: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditCCT_0000: TStringField;
    CdsEditPCX_CODIGO: TStringField;
    CdsEditPCXP_INDICE: TFMTBCDField;
    CdsEditPCXP_INDICE_REAL: TFMTBCDField;
    CdsEditPCXP_TIPO: TStringField;
    CdsEditPCXPF_REGISTRO: TIntegerField;
    procedure FormCreate(Sender: tObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure edCustoMenuPesquisaClick(Sender: tObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure edCustoMenuNovoClick(Sender: TObject);
    procedure edCustoMenuEditaClick(Sender: TObject);
    procedure edCustoSelect(Sender: TObject);
    procedure CdsEditAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    fperfil: integer;
    fconta: string;

  public
    property conta:string read fconta write fconta;
    property perfil:integer read fperfil write fperfil;

  end;

var
  frmInsereRateioIndice: TfrmInsereRateioIndice;

implementation

uses uteis, iniciodb, PCX0000;

{$R *.dfm}

procedure TfrmInsereRateioIndice.btnOKClick(Sender: TObject);
begin
     inherited;
     edCusto.SetFocus;
End;

procedure TfrmInsereRateioIndice.CdsEditAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
var
  y : integer;
  NivCusto, lNivel, CodCusto : String;

begin
     inherited;
     // inserir contas totaliz
     NivCusto := edCusto.CDS.FieldByName('PCX_NIVEL').AsString;
    // t := NivCusto.length ; //'001.01.005' = 10 - 1 = 9
     for y := 1 to NivCusto.length do
     begin
       if NivCusto[y] <> '.' then // conta de totalização
          Continue;
       lNivel := Copy( NivCusto, 1, y-1 );
       CodCusto := BuscaUmDadoSqlAsString( 'select pcx_codigo from pcx0000 where pcx_nivel = '+qStr(lNivel)+' and pcx_tipo='+qStr('T')+' and emp_codigo='+qStr(dbInicio.Empresa.Emp_codigo) );
       if CodCusto = '' then
          Continue;
       OpenAux2('SELECT  SUM(PL.PCXP_INDICE) PCXP_INDICE , SUM(PCXP_INDICE_REAL)  PCXP_INDICE_REAL '+
                '  FROM PCX0000 cc JOIN pcx0000_plano pl ON ( pl.PCX_CODIGO = cc.PCX_CODIGO)       '+
                '  WHERE CCT_0000 = '+qStr(edConta.IDRetorno)+
                '  AND PCX_NIVEL LIKE '+qStr(lNivel+'%')+
                '  AND pcxpf_registro = '+qStr(edPERFIL.idRetorno)+
                '  AND pcx_tipo = ''L'' ');

        if BuscaUmDadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from pcx0000_plano '+
                                    ' where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+
                                    ' and pcxpf_registro='+qStr(edPERFIL.idRetorno)+
                                     ' and cct_0000='+qStr(edConta.IDRetorno)+' and pcx_codigo='+qStr(CodCusto) )=0 then
           ExecSql( 'insert into pcx0000_plano (EMP_CODIGO, CCT_0000, PCX_CODIGO, PCXP_TIPO, PCXPF_REGISTRO, PCXP_INDICE, PCXP_INDICE_REAL) '+
                    'values ( '+qStr(dbinicio.Empresa.EMP_CODIGO)+', '+ // emp_codigo
                    '         '+qStr(edConta.idRetorno)+', '+
                    '         '+qStr(CodCusto)+', '+
                    '         '+qStr('T')+', '+
                    '         '+qStr(edPERFIL.idRetorno)+','+
                    FloatToSQL( qAux2.FieldByName('PCXP_INDICE') .AsFloat)+','+
                     FloatToSQL( qAux2.FieldByName('PCXP_INDICE_REAL') .AsFloat)+
                    ' )' )
       else
          ExecSql(' update pcx0000_plano '+
                  ' set  PCXP_INDICE =  '  +  FloatToSQL( qAux2.FieldByName('PCXP_INDICE') .AsFloat)  +
                  ' , PCXP_INDICE_REAL  = ' + FloatToSQL( qAux2.FieldByName('PCXP_INDICE_REAL') .AsFloat)+
                  ' where  EMP_CODIGO = '+ qStr(dbinicio.Empresa.EMP_CODIGO)+
                  ' and CCT_0000 =' +qStr(edConta.idRetorno)+
                  ' and PCX_CODIGO = '+qStr(CodCusto)+
                  ' and PCXP_TIPO = '+qStr('T')+
                  ' and PCXPF_REGISTRO = ' +qStr(edPERFIL.idRetorno));


     end;

end;

procedure TfrmInsereRateioIndice.CdsEditAfterInsert(DataSet: TDataSet);
begin
    inherited;
    CdsEditcct_0000.AsString := conta;
    CdsEditpcxpf_registro.AsInteger := Perfil;
    CdsEditEmp_Codigo.asString := dbInicio.Empresa.EMP_CODIGO;
    CdsEditPCXP_TIPO.asstring := 'L' ;
end;



procedure TfrmInsereRateioIndice.CdsEditBeforePost(DataSet: TDataSet);
begin
     inherited;

     ClearErrors;

     if (CdsEditPcx_codigo.IsNull) or (CdsEditPcx_Codigo.asInteger=0) then
        AddErrValidation('Informe o Centro de Custo para Rateio !');
     if CdsEditPCXP_INDICE.asCurrency<=0 then
        AddErrValidation('Informe o Indice para Rateio !');

     CheckErrors;

     if CdsEditpcxp_registro.isnull then
        CdsEditpcxp_registro.AsInteger := dbInicio.GetNextSequence('gen_pcx0000_plano_id');
end;

procedure TfrmInsereRateioIndice.edCustoMenuEditaClick(Sender: TObject);
begin
     inherited;
     if edCusto.idRetorno<>'' then
     begin
        FormProjCaixa := TFormProjCaixa.Create(Application);
        try
           FormProjCaixa.Retorno:=edCusto.idRetorno;
           //FormProjCaixa.Edita ;
           FormProjCaixa.ShowModal;
           if FormProjCaixa.modalresult<>mrOk then
              edCusto.idRetorno:=FormProjCaixa.Retorno;
        finally
           freeandnil(FormProjCaixa);
        end;
     end;
end;

procedure TfrmInsereRateioIndice.edCustoMenuNovoClick(Sender: TObject);
begin
     inherited;
     FormProjCaixa := TFormProjCaixa.Create(Application);
     try
        //FormProjCaixa.Novo;
        FormProjCaixa.ShowModal;
        if FormProjCaixa.modalresult<>mrOk then
           edCusto.idRetorno:=FormProjCaixa.Retorno;
     finally
        freeandnil(FormProjCaixa);
     end;
end;

procedure TfrmInsereRateioIndice.edCustoMenuPesquisaClick(Sender: tObject);
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

procedure TfrmInsereRateioIndice.edCustoSelect(Sender: TObject);
var id: integer;
begin
     inherited;
     if (CdsEdit.State<>dsBrowse) and ( edCusto.idRetorno<>'') then
     begin
          id := BuscaUmDadoSqlAsInteger( 'select PCXP_REGISTRO '+
                                         'from PCX0000_PLANO '+
                                         'where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+
                                         '      and cct_0000='+qStr(conta)+
                                         '      and pcxpf_registro='+Perfil.ToString+
                                         '      and pcx_codigo='+qStr(edCusto.idRetorno) );


          if id <> 0 then
          begin
               CdsEdit.Cancel;
               OpenEditID(id);
               CdsEdit.Edit;
          end;
     end;
end;

procedure TfrmInsereRateioIndice.FormCreate(Sender: tObject);
begin
  inherited;
  conta := '';
  perfil := 0;
  CampoID:='PCXP_REGISTRO';
  CampoIdRetorno:='PCXP_REGISTRO';
  Tabela:='PCX0000_PLANO';
  edConta.FiltroTabela:='cct_tipo='+qStr('CV')+' and emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO);
  edPerfil.FiltroTabela:='emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO);
  edCusto.FiltroTabela:='PCX_TIPO = '+qStr('L');
  SetTamanhoMinimo(230,660);
  //cbPersistente.Checked:=TRUE;
end;

procedure TfrmInsereRateioIndice.qCustoPCX_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     inherited;
     text := edCusto.cds.fieldbyname('PCX_nivel').AsString+' - '+edCusto.cds.fieldbyname('PCX_DESCRI').AsString;
end;

end.


