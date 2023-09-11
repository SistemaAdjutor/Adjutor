  unit uEditOrcamentoPRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.DBCtrls, JvExComCtrls, JvDateTimePicker, Vcl.Mask, Data.FMTBcd, Data.SqlExpr, SgDbSeachComboUnit, ACBrSocket, ACBrCEP, JvDBDateTimePicker,
  BaseDBEditDetailFDAC, JvValidators, JvErrorIndicator, JvComponentBase, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.FBDef, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvDBControls, ACBrValidador;


type
  TFrmEditOrcamentoPRO = class(TfrmBaseDBEditFDAC)
    porcamento: TPanel;
    Splitter1: TSplitter;
    pitens: TPanel;
    pgitens: TPageControl;
    tsclientes: TTabSheet;
    obsPedidos: TTabSheet;
    TabSheet3: TTabSheet;
    gdItens: TDBGrid;
    cdsEditORC_CODIGO: TIntegerField;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditORC_DESCRICAO: TStringField;
    cdsEditORC_DATAAQUISICAO: TSQLTimeStampField;
    cdsEditCLI_CODIGO: TStringField;
    cdsEditORC_CLIENTE: TStringField;
    cdsEditORC_EMAIL: TStringField;
    cdsEditORC_FONE: TStringField;
    cdsEditORC_FAX: TStringField;
    cdsEditORC_DIAS_ENTREGA: TIntegerField;
    cdsEditORC_DIAS_VALIDADE: TIntegerField;
    cdsEditORC_ENDERECO: TStringField;
    cdsEditFPG_REGISTRO: TIntegerField;
    cdsEditORC_SITUACAO: TStringField;
    cdsEditORC_VLR_TOTAL: TBCDField;
    cdsEditORC_OBSERVACAO: TBlobField;
    cdsEditORC_OBS_TRANSP: TBlobField;
    DBText1: TDBText;
    Orçamento: TLabel;
    edDescricao: TDBEdit;
    Label1: TLabel;
    PesqCliente: TSgDbSearchCombo;
    Label2: TLabel;
    qCli: TSQLQuery;
    ACBrCEP1: TACBrCEP;
    DbeCliCep: TDBEdit;
    Label3: TLabel;
    DbeCli_endere: TDBEdit;
    Label4: TLabel;
    DbeCLI_BAIRRO: TDBEdit;
    Label5: TLabel;
    DbeCli_cidade: TDBEdit;
    Label6: TLabel;
    DBECLIUF: TDBEdit;
    SpeedButton1: TSpeedButton;
    cdsEditORC_CEP: TStringField;
    cdsEditORC_BAIRRO: TStringField;
    cdsEditORC_CIDADE: TStringField;
    cdsEditCID_CODIGO: TIntegerField;
    cdsEditORC_UF: TStringField;
    Label8: TLabel;
    edFoneCliente: TDBEdit;
    cdsEditORC_CONTATO: TStringField;
    edContato: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    EdClienteCodigo: TDBEdit;
    edemail: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    cdsEditORC_DATA_PROX_CONCAT: TDateField;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    qFPagto: TSQLQuery;
    edFPagto: TSgDbSearchCombo;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnCRMAgenda: TButton;
    mObsTransp: TDBMemo;
    mObs: TDBMemo;
    btnAddItem: TSpeedButton;
    btnExclItem: TSpeedButton;
    btnAltItem: TSpeedButton;
    cdsEditDetailOIP_CODIGO: TIntegerField;
    cdsEditDetailORC_CODIGO: TIntegerField;
    cdsEditDetailPRO_CODIGO: TIntegerField;
    cdsEditDetailPRD_REFER: TStringField;
    cdsEditDetailPRD_CODIGO: TStringField;
    cdsEditDetailOIP_UND: TStringField;
    cdsEditDetailOIP_SEQ: TIntegerField;
    cdsEditDetailOIP_DESCRICAO: TStringField;
    cdsEditDetailOIP_TIPOPECA_TERM: TStringField;
    cdsEditDetailOIP_MATERIAL_TERM: TStringField;
    cdsEditDetailOIP_PESO: TFMTBCDField;
    cdsEditDetailOIP_PROFUNDIDADE_TERM: TStringField;
    cdsEditDetailOIP_DUREZASUPERFICIAL_TERM: TStringField;
    cdsEditDetailOIP_DUREZANUCLEO_TERM: TStringField;
    cdsEditDetailPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsEditDetailOIP_TAMANHOGRAO_TERM: TStringField;
    cdsEditDetailOIP_EHT_TERM: TStringField;
    cdsEditDetailOIP_DESENHO_TERM: TStringField;
    cdsEditDetailOIP_QDE: TFMTBCDField;
    cdsEditDetailOIP_PRECO: TFMTBCDField;
    cdsEditDetailOIP_TOTAL: TFMTBCDField;
    cdsEditDetailOIP_PRAZOENTREGA: TIntegerField;
    cdsEditDetailOIP_IMAGEM: TBlobField;
    chkAgenda: TCheckBox;
    cdsEditTRF_REGISTRO: TIntegerField;
    cdsEditDetailOIP_PESOTOTAL: TFMTBCDField;
    lCliente: TLabel;
    ValidarCliente: TJvCustomValidator;
    ValidarItens: TJvCustomValidator;
    litens: TLabel;
    ValidarDescricaoOrc: TJvCustomValidator;
    cdsEditDetailTOTALORC: TAggregateField;
    DBEdit1: TDBEdit;
    Label18: TLabel;
    rgSituacao: TDBRadioGroup;
    JvDBDateEdit1: TJvDBDateEdit;
    dtInclusao: TJvDBDateEdit;
    cdsEditORC_CGCCPF: TStringField;
    edVendedor: TSgDbSearchCombo;
    Label19: TLabel;
    qRep: TSQLQuery;
    EdVendedorCodigo: TDBEdit;
    cdsEditREP_CODIGO: TStringField;
    ValidarVendedor: TJvCustomValidator;
    cdsEditDetailSRV_CODIGO: TIntegerField;
    cdsEditDetailPRD_DESCRI: TStringField;
    cdsEditDetailPRO_DESCRICAO: TStringField;
    cdsEditDetailSRV_NOME: TStringField;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    lErroVendedor: TLabel;
    gbCliente: TGroupBox;
    cliente_nome: TDBEdit;
    edCNPJ: TDBEdit;
    ACBrValidador1: TACBrValidador;
    ValidarCNPJ: TJvCustomValidator;
    cdsEditORC_REVISAO: TIntegerField;
    ValidarItensProduto: TJvCustomValidator;
    qPrazo: TSQLQuery;
    Label20: TLabel;
    edPrazo: TSgDbSearchCombo;
    DBEdit2: TDBEdit;
    cdsEditPCL_CODIGO: TStringField;
    ValidarIdCliente: TJvCustomValidator;
    lclienteaviso: TLabel;
    qsimulado: TFDQuery;
    qsimuladoSPR_CODIGO: TIntegerField;
    qsimuladoOIP_CODIGO: TIntegerField;
    qsimuladoSET_CODIGO: TIntegerField;
    qsimuladoSPR_HORASTRAB: TBCDField;
    qsimuladoSPR_PESO: TBCDField;
    qsimuladoSPR_VALORTOTAL: TIntegerField;
    qsimuladoSPR_DATASIMULACAO: TSQLTimeStampField;
    sbcontatos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DbeCliCepExit(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure edFoneClienteExit(Sender: TObject);
    procedure cdsEditORC_FONESetText(Sender: TField; const Text: string);
    procedure cdsEditORC_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure PesqClienteExit(Sender: TObject);
    procedure mObsTranspEnter(Sender: TObject);
    procedure mObsTranspExit(Sender: TObject);
    procedure btnItem(Sender: TObject);
    procedure btnCRMAgendaClick(Sender: TObject);
    procedure cdsEditAfterOpen(DataSet: TDataSet);
    procedure cdsEditDetailAfterScroll(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure ValidarClienteValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarItensValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarDescricaoOrcValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edVendedorSelect(Sender: TObject);
    procedure ValidarVendedorValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsEditORC_CGCCPFSetText(Sender: TField; const Text: string);
    procedure cdsEditORC_CEPSetText(Sender: TField; const Text: string);
    procedure cdsEditORC_CEPValidate(Sender: TField);
    procedure edCNPJExit(Sender: TObject);
    procedure ValidarCNPJValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure cdsEditORC_CONTATOSetText(Sender: TField; const Text: string);
    procedure edemailExit(Sender: TObject);
    procedure ValidarItensProdutoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarIdClienteValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure sbcontatosClick(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
  private
    fAberturaAprovado : boolean ; // abertura de orçamento já aprovado
  public

    procedure SelecionarCliente;
    function EditaDetalheItem (const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC ): Boolean; OVERRIDE;
    function NovoDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC ): Boolean; OVERRIDE;
    function ExcluiDetalheItem: Boolean; override;
    procedure defaultInclusao; override;
    procedure totalizador;
    procedure aprovarOrcamento;
    function GravarClientes: integer;
    function GravaListaPrecos (const cli:string) :  integer;
    function gravarPedidos (const cli:string): string;
    procedure gravarItensPedidos (const ped_id: string);
    function GravarFollowup : integer ;// retorno trf_registro
    procedure AtualizaFollowup;
    function BotaoAprovar(const pID: string; const Capt: tCaption): Boolean;
    property AberturaAprovado : boolean read fAberturaAprovado write faberturaAprovado;
  end;

var
  FrmEditOrcamentoPRO: TFrmEditOrcamentoPRO;

implementation

USES UTEIS,  AcbrUtil, PesquisaClientesForm, InicioDB, uOrcamentoItemPro , uFrmTarefas,
DataMov, cid0002, uCadastroFrases, ContatoCliente;

{$R *.dfm}

procedure TFrmEditOrcamentoPRO.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  i: Integer;
begin
  i := 0;

  OpenAux(
    'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
    + QuotedStr(UpperCase(ACBrCEP1.Enderecos[i].Municipio)) +
    ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEP1.Enderecos[i].UF)) ;

  if (qAux.IsEmpty) then
  begin

    OpenAux(
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID0000 where CID_CIDADE = '
      + QuotedStr(UpperCase(TiraAcentos(ACBrCEP1.Enderecos[i].Municipio))
      ) + ' AND  CID_ESTADO = ' + QuotedStr(ACBrCEP1.Enderecos[i].UF));

    if (not qAux.IsEmpty) then
    begin
      cdsEditORC_CIDADE.AsString :=  qAux.FieldByName('CID_CIDADE').AsString;
      cdsEditORC_UF.AsString := qAux.FieldByName('CID_ESTADO').AsString;
      cdsEditCID_CODIGO.AsInteger :=  qAux.FieldByName('CID_CODIGO').AsInteger;
    end;
  end
  else
  begin

    cdsEditORC_CIDADE.AsString := qAux.FieldByName('CID_CIDADE').AsString;
    cdsEditORC_UF.AsString:= qAux.FieldByName('CID_ESTADO').AsString;
    cdsEditCID_CODIGO.AsInteger := qAux.FieldByName('CID_CODIGO').AsInteger;
  end;
  cdsEditORC_BAIRRO.Text :=     UpperCase(ACBrCEP1.Enderecos[i].Bairro);
  cdsEditORC_ENDERECO.AsString := iif(ACBrCEP1.Enderecos[i].Tipo_Logradouro<> '',ACBrCEP1.Enderecos[i].Tipo_Logradouro+ ' ','')+
  ACBrCEP1.Enderecos[i].Logradouro + ',';



end;

procedure TFrmEditOrcamentoPRO.aprovarOrcamento;
var cli, ped_id : string;
  pre_id : integer;
begin
 // verificar se todos os itens tem produtos não preenchido


 FDTransac.Connection := dbConn;
  FDTransac.StartTransaction;
  try
    // cadastrar cliente
    if PesqCliente.idRetorno = '' then
     cli:= inttostr( GravarClientes)
    else
     cli :=  PesqCliente.idRetorno;
     if dbinicio.Empresa.wPMT_ORC_GERAACORDO then
     begin
       //gerar lista de preços, se não tem nenhum vigente do cliente
       OpenAux('SELECT * FROM  precos0000  '+
                ' WHERE EMP_CODIGO = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO)+
                ' AND CLI_CODIGO = '+QuotedStr(cli)+
                ' AND PRE_TIPO_TABELA = 3 '+
                ' AND PRE_VIGENCIA1 <= CURRENT_DATE AND  (PRE_VIGENCIA2 >= CURRENT_DATE OR PRE_VIGENCIA2 IS NULL) ');
        if not qAux.IsEmpty then
        begin
          pre_id := qAux.FieldByName('pre_id').AsInteger;
          ExecSql('update precos0000 set PRE_ACORDOCOM = '+IntToStr(cdsEditORC_CODIGO.AsInteger) +
                  ' where pre_id = '+IntToStr(pre_id) +
                  ' and PRE_ACORDOCOM  is null ') ;

          ExecSql('update precos0000 '+
                  ' set PRE_REVISAO = coalesce(PRE_REVISAO,0) + 1 ' +
                  '     , PRE_DATAREVISAO = CURRENT_DATE '+
                  ' where pre_id = '+IntToStr(pre_id) ) ;
        end
        else
          pre_id := GravaListaPrecos(cli);
        // ITEM DA LISTA DE PRECOS EXCLUSIVAS
       if not cdsEditDetail.IsEmpty then
       begin
          cdsEditDetail.Filtered:= False;
          cdsEditDetail.First;
          while not cdsEditDetail.Eof do
          begin
            if cdsEditDetailprd_codigo.asstring <> '' then
            begin
              OpenAux(' select * from PRECOS0001 '+
                      ' WHERE PRE_ID = '+  IntToStr(pre_id) +
                      ' AND PRD_CODIGO = '+QuotedStr(cdsEditDetailPRD_CODIGO.AsString )
                      );
              if not qAux.IsEmpty then // atualizar preço
                ExecSql(' update PRECOS0001 set pre_preco = ' +FloatToSQL(cdsEditDetailOIP_PRECO.AsFloat ) +
                        ' WHERE PRE_ID = '+  IntToStr(pre_id) +
                        ' AND PRD_CODIGO = '+QuotedStr(cdsEditDetailPRD_CODIGO.AsString )  )
              else
                ExecSql('insert into PRECOS0001 ( ID, PRE_ID, PRD_CODIGO, PRE_PRECO, CODIGO_PRODUTO_CLIENTE,DESCRICAO_PRODUTO_CLIENTE ) '+
                        ' VALUES (' +IntToStr(DBInicio.GetNextSequence('GEN_PRE_ID_DET'))+', '+IntToStr( pre_id)+', ' +QuotedStr(cdsEditDetailPRD_CODIGO.AsString) +','+
                        FloatToSQL(cdsEditDetailOIP_PRECO.AsFloat ) + ',' + QuotedStr(cdsEditDetailPRDCO_CODIGO_ORIGINAL.AsString)+','   +
                        QuotedStr(cdsEditDetailOIP_DESCRICAO.AsString)+ ')');

              if (cdsEditDetailPRO_CODIGO.AsString <> '') and (not cdsEditDetailPRO_CODIGO.IsNull) and  (cdsEditDetailPRO_CODIGO.AsInteger >0)  then
              begin
                ExecSql(' update PRD0000 set PRO_CODIGO = '+cdsEditDetailPRO_CODIGO.AsString +
                        '  ,PRD_TIPOPECA_TERM = '+ QuotedStr(cdsEditDetailOIP_TIPOPECA_TERM.AsString) +
                        '  ,PRD_MATERIAL_TERM = '+   QuotedStr(cdsEditDetailOIP_MATERIAL_TERM.AsString)+
                        '  , PRD_DUREZASUPERFICIAL_TERM  ='+ QuotedStr(cdsEditDetailOIP_DUREZASUPERFICIAL_TERM.AsString) +
                        '  ,PRD_DUREZANUCLEO_TERM = '+ QuotedStr(cdsEditDetailOIP_DUREZANUCLEO_TERM.AsString)+
                        '  ,PRD_PROFUNDIDADE_TERM = '+QuotedStr(cdsEditDetailOIP_PROFUNDIDADE_TERM.AsString)+
                        '  ,PRD_TAMANHOGRAO_TERM = '+ QuotedStr(cdsEditDetailOIP_TAMANHOGRAO_TERM.AsString)+
                        '  , PRD_EHT_TERM = ' +      QuotedStr(cdsEditDetailOIP_EHT_TERM.AsString)+
                        '  ,PRD_DESENHO_TERM = '+  QuotedStr(cdsEditDetailOIP_DESENHO_TERM.AsString)+
                        ' where prd_codigo = '+QuotedStr(cdsEditDetailprd_codigo.AsString));
              end
              else
              begin
                ExecSql(' update PRD0000 '+
                '  SET PRD_TIPOPECA_TERM = '+ QuotedStr(cdsEditDetailOIP_TIPOPECA_TERM.AsString) +
                '  ,PRD_MATERIAL_TERM = '+   QuotedStr(cdsEditDetailOIP_MATERIAL_TERM.AsString)+
                '  , PRD_DUREZASUPERFICIAL_TERM  ='+ QuotedStr(cdsEditDetailOIP_DUREZASUPERFICIAL_TERM.AsString) +
                '  ,PRD_DUREZANUCLEO_TERM = '+ QuotedStr(cdsEditDetailOIP_DUREZANUCLEO_TERM.AsString)+
                '  ,PRD_PROFUNDIDADE_TERM = '+QuotedStr(cdsEditDetailOIP_PROFUNDIDADE_TERM.AsString)+
                '  ,PRD_TAMANHOGRAO_TERM = '+ QuotedStr(cdsEditDetailOIP_TAMANHOGRAO_TERM.AsString)+
                '  , PRD_EHT_TERM = ' +      QuotedStr(cdsEditDetailOIP_EHT_TERM.AsString)+
                '  ,PRD_DESENHO_TERM = '+  QuotedStr(cdsEditDetailOIP_DESENHO_TERM.AsString)+
                ' where prd_codigo = '+QuotedStr(cdsEditDetailprd_codigo.AsString));
              end;


            end;
            cdsEditDetail.Next;
          end;
       end;
     end;
    //gerar pedidos com os produtos cadastro
     if dbinicio.Empresa.wPMT_ORC_GERAPEDIDO then// parametro gera pedido
     begin
       ped_id:= gravarPedidos(cli);
       gravarItensPedidos(ped_id);
       MessageDlg('Criado o pedido nº '+ ped_id + ' com sucesso', mtInformation, [mbOK], 0);
     end
     else
       MessageDlg('Aprovado orçamento nº '+ IntToStr(cdsEditORC_CODIGO.AsInteger) + ' do cliente ' + PesqCliente.CDS.FieldByName('CLI_RAZAO').AsString , mtInformation, [mbOK], 0);
     ExecSql(' UPDATE ORCAMENTO_PROD SET ORC_SITUACAO = ''A''  WHERE ORC_CODIGO = '+IntToStr(cdsEditORC_CODIGO.AsInteger));
     FDTransac.Commit;
    //messagem de sucesso

  except
    on e:exception do
    begin
      FDTransac.Rollback;
      if ped_id <> '' then
        SequenciadorPRC(DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 1,ped_id)  ;
      raise Exception.Create(e.Message);

    end;
  end;
end;

procedure TFrmEditOrcamentoPRO.AtualizaFollowup;
var SQL :STRING;
  assunto, assuntoold : string;

begin
 // assuntoold := BuscaUmDadoSqlAsString( ' select TRF_ASSUNTO from TAREFAS_CRM WHERE TRF_REGISTRO = '+ IntToStr(cdsEditTRF_REGISTRO.AsInteger)) ;
  if (cdsEditORC_SITUACAO.OldValue <> cdsEditORC_SITUACAO.asstring)  then
  begin
    if cdsEditORC_SITUACAO.AsString = 'P' then
      assunto := 'Orçamento pendente'
    else
    if cdsEditORC_SITUACAO.AsString = 'E' then
      assunto := 'Orçamento em andamento'
    else
    if  cdsEditORC_SITUACAO.AsString = 'A' then    //FINALIZAR O FOLLOW UP /TAREFAS
      assunto := 'Orçamento aprovado em '+DateTimeToStr(now)
    else
    if  cdsEditORC_SITUACAO.AsString = 'R' then
     assunto := 'Orçamento recusado '
    else
    if  cdsEditORC_SITUACAO.AsString = 'C' then
     assunto := 'Orçamento cancelado ';

  end;
  SQL:= ' update TAREFAS_CRM '+
     ' SET REP_CODIGO = '+QuotedStr(edVendedor.idRetorno) +
     ' , TRF_ASSUNTO = ''' +(( assunto))   +''''+
     iif( cdsEditORC_SITUACAO.AsString = 'A' ,', TRF_FINALIZADA = ''S'' ',''  )  +
     iif( cdsEditORC_SITUACAO.AsString = 'A' ,', TRF_DATA_FINA = ' + DateTimeToSQL(NOW) ,''  )  +
     iif(MatchText(cdsEditORC_SITUACAO.AsString,['C','R']) ,', TRF_EXCLUIDO = ''S'' ',''  )  +
     iif(MatchText(cdsEditORC_SITUACAO.AsString,['C','R']) ,', TRF_DATA_EXCL = ' + DateTimeToSQL(NOW) ,''  )  +
     ', CLI_CODIGO = '+QuotedStr(PesqCliente.idRetorno) +
     ',TRF_CONTATO =  '+   QuotedStr(copy(cdsEditORC_CLIENTE.AsString,1,60)) +
     ', TRF_EMAILCONTATO = '+ QuotedStr(copy(cdsEditORC_EMAIL.AsString,1,60)) +
     ', TRF_CONTATOFONE  = '+ QuotedStr(cdsEditORC_FONE.AsString) +
     ', TRF_CONTATOFONE2 = TRF_CONTATOFONE '+
     ', TRF_ENDERECO = '+ QuotedStr(cdsEditORC_ENDERECO.AsString) +
     '  WHERE TRF_REGISTRO = '+ IntToStr(cdsEditTRF_REGISTRO.AsInteger);
  ExecSql(SQL);

  SQL:=  'INSERT INTO TAREFAS_HISTORICO      '+
         ' (TAH_REGISTRO, TRF_REGISTRO, TAH_DATA_REGISTRO, TAH_ASSUNTO) '+
         ' VALUES('+IntToStr(GetNextSequence('GEN_TAH_HISTORICO')) +','+
          IntToStr(cdsEditTRF_REGISTRO.AsInteger)+ ','+
          DateTimeToSQL(now)  +','+
          ''''+(assunto) + ''''+ ')';

  ExecSql(SQL);


end;

function TFrmEditOrcamentoPRO.BotaoAprovar(const pID: string; const Capt: tCaption): Boolean;
begin
 if Trim(pID) <> '' then
  begin
    ConfigBotoes(3);
    EstadoTela := teAprovacao;
    aCaption := Capt;
    ReadOnly := false;
    OpenEditID(pID);
    if (cdsEditORC_SITUACAO.AsString = 'A') and not AberturaAprovado then
      raise Exception.Create('Orçamento já aprovado ');
    cdsEdit.Edit;
    cdsEditORC_SITUACAO.AsString := 'A';
    cdsEditDetail.Close;
    cdsEditDetail.Params[0].Value := cdsEdit.Params[0].Value  ;
    cdsEditDetail.Open;

   // btnOk.Click;
    Result := (self.ModalResult = mrOk);
    if NOT RESULT then
       self.ShowModal;
  end;
end;

procedure TFrmEditOrcamentoPRO.btnCRMAgendaClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmTarefas) then
   frmTarefas := tfrmTarefas.Create(application);
  try
    if cdsEditTRF_REGISTRO.AsInteger > 0  then
      frmTarefas.Edita(IntToStr(cdsEditTRF_REGISTRO.AsInteger),'CRM Agenda- Edição de Registro')
    else
    begin
      frmTarefas.novo('CRM Agenda- Nova tarefa');
      cdsEditTRF_REGISTRO.AsInteger := StrToInt(frmTarefas.IDRetorno);
    end;

	finally
		frmTarefas.close;
		freeandnil(frmTarefas);
	end;
end;

procedure TFrmEditOrcamentoPRO.btnItem(Sender: TObject);
var tcr : tfrmitemOrcamento;
    i: integer;

begin
  inherited;
  i:= TSpeedButton(sender).Tag;
  tcr := TfrmitemOrcamento.Create(Application);
  try
    case i of
      1: NovoDetalheItem('Novo item',tcr);
      2: EditaDetalheItem('Manutenção do item ',tcr);
      3: ExcluiDetalheItem;
    end;
  finally
    totalizador;
  	tcr.close;
    FreeAndNil(tcr);
  end;

end;

procedure TFrmEditOrcamentoPRO.btnOkClick(Sender: TObject);
var trf_reg: integer;
begin
  if not (cdsEdit.State in dsEditModes ) then
    cdsEdit.Edit;
  if  EstadoTela = teExclusao then
  begin
    cdsEditORC_SITUACAO.AsString := 'C';
    TemDetalhe := False;
    btnOk.Tag := 3
  end;

  if cdsEditORC_CODIGO.IsNull then
    cdsEditORC_CODIGO.AsInteger := GetNextSequence('GEN_ORCAMENTO_PROD') ;
  if cdsEditEMP_CODIGO.AsString  = '' then
    cdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
  if cdsEditORC_SITUACAO.AsString = '' then
     cdsEditORC_SITUACAO.AsString := 'E';
  if AberturaAprovado then
     cdsEditORC_REVISAO.AsInteger:=  cdsEditORC_REVISAO.AsInteger + 1;

  if cdsEdit.State in dsEditModes  then
    cdsEdit.Post;
  if AberturaAprovado then // excluir pedidos
  begin
    ExecSql('UPDATE PED0000               '    +
            ' SET PED_SITUACAO = ''C''    '+
            '  WHERE ORC_CODIGO ='+IntToStr(cdsEditORC_CODIGO.AsInteger ));

  end;

  if  EstadoTela <> teExclusao then
  begin
    cdsEditDetail.DisableControls;
    if cdsEditDetail.Active and not cdsEditDetail.IsEmpty then
    begin
      cdsEditDetail.First;
      try
        while not cdsEditDetail.Eof do
        begin
          if (cdsEditDetailORC_CODIGO.IsNull) or (cdsEditDetailORC_CODIGO.AsInteger = 0) then
          begin
            if not (cdsEditDetail.State in dsEditModes) then
              cdsEditDetail.Edit;
            cdsEditDetailORC_CODIGO.AsInteger :=  cdsEditORC_CODIGO.AsInteger;
            cdsEditDetail.Post;
          end;

          cdsEditDetail.Next;
        end;
      finally
        cdsEditDetail.EnableControls;
      end;
    end;
  end;

  //qsimulado.ApplyUpdates(-1);
  inherited;

  dbConn.StartTransaction;
  try

    if  (ModalResult = mrok)  then
    begin
      if chkAgenda.Checked and (cdsEditTRF_REGISTRO.IsNull or (cdsEditTRF_REGISTRO.AsInteger = 0) ) then
        GravarFollowup
      else if chkAgenda.Checked AND (cdsEditTRF_REGISTRO.AsInteger > 0 )  then
        AtualizaFollowup;
    end;

    if (ModalResult = mrok) and (rgSituacao.ItemIndex = 2) then
      aprovarOrcamento;
    dbConn.Commit;
  except on E: Exception do
    begin
      dbConn.Rollback;
      raise Exception.Create(e.Message);
    end;
  end;


  if (ModalResult = mrok)  and (EstadoTela = teAprovacao) then
  begin
    close;

  end;


end;

procedure TFrmEditOrcamentoPRO.cdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnAltItem.Enabled := pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;
  btnExclItem.Enabled := pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;

end;

procedure TFrmEditOrcamentoPRO.cdsEditDetailAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnAltItem.Enabled := pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;
  btnExclItem.Enabled := pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;

end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_CEPSetText(Sender: TField; const Text: string);
begin
  inherited;
   Sender.asString:= RetirarMascaraCNPJ_INSC(Text);
end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_CEPValidate(Sender: TField);
begin
  inherited;
  IF (RetirarMascaraCNPJ_INSC(Sender.AsString)<>'') and (Length(RetirarMascaraCNPJ_INSC(Sender.AsString)) > 8) THEN
   GeraException('CEP inválido ');
end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_CGCCPFSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.asString:= RetirarMascaraCNPJ_INSC(Text);
end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_CONTATOSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := copy(Text,1,100);
end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    text := MascaraFone(OnlyNumber( Sender.AsString))
  else
    text := '';
end;

procedure TFrmEditOrcamentoPRO.cdsEditORC_FONESetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text <> '' then
    Sender.AsString :=  OnlyNumber(Text)
  else
    Sender.AsString :=  '';
end;

procedure TFrmEditOrcamentoPRO.DbeCliCepExit(Sender: TObject);
begin
  inherited;
  if ( TDBEdit(Sender).Text <> '') and (DbeCli_endere.Text = '') then
  try
    ACBrCEP1.BuscarPorCEP(ExtrairNumeros(DbeCliCep.Text));
  except
  on e:EACBrHTTPError do
    raise Exception.Create('Sem conexão com a internet');
  end;
end;

procedure TFrmEditOrcamentoPRO.edCNPJExit(Sender: TObject);
begin
  inherited;
  if edCNPJ.Text <> '' then
  begin
    if Length(edCNPJ.Text)=11 then
      ACBrValidador1.TipoDocto :=  docCPF
    else
    ACBrValidador1.TipoDocto :=  docCNPJ;
    ACBrValidador1.Documento := RetirarMascaraCNPJ_INSC(edCNPJ.Text);
    if not ACBrValidador1.Validar then
      GeraException('CNPJ/CPF inválido');
  end;
end;

procedure TFrmEditOrcamentoPRO.edemailExit(Sender: TObject);
begin
  inherited;
  edemail.Text := trim(copy( edemail.Text,100));
end;

procedure TFrmEditOrcamentoPRO.defaultInclusao;
begin
  inherited;
  cdsEditORC_DATAAQUISICAO.AsDateTime := Date;
  chkAgenda.Checked := True;
  if (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
    edVendedor.idRetorno := dbInicio.Empresa.fCODIGO_REPRES;
end;

procedure TFrmEditOrcamentoPRO.edFoneClienteExit(Sender: TObject);
begin
  inherited;
  edFoneCliente.Text :=  MascaraFone(OnlyNumber(edFoneCliente.Text));
end;

function TFrmEditOrcamentoPRO.EditaDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC): Boolean;
begin
  inherited;

end;

procedure TFrmEditOrcamentoPRO.edVendedorSelect(Sender: TObject);
begin
  inherited;
  if edVendedor.idRetorno<>'' then
  begin
      edVendedorCodigo.Text:=edVendedor.idRetorno;
  end
  Else
       edVendedorCodigo.clear;
end;

function TFrmEditOrcamentoPRO.ExcluiDetalheItem: Boolean;
var i : integer;
begin
  inherited;
  //ordernar as sequencias
  cdsEditDetail.DisableControls;
  try
    cdsEditDetail.First;
    for I := 1 to cdsEditDetail.RecordCount do
    begin
      if cdsEditDetail.State = dsBrowse then
        cdsEditDetail.Edit;
      cdsEditDetailOIP_SEQ.AsInteger := i;
      cdsEditDetail.Post;
      cdsEditDetail.Next;
    end;
    result := true;
  finally
    cdsEditDetail.EnableControls;
  end;
end;

procedure TFrmEditOrcamentoPRO.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='ORC_CODIGO';
	Tabela:='ORCAMENTO_PROD';
  self.Constraints.MinHeight:= 555;
  self.Constraints.MinWidth:=1139;
  self.Constraints.MaxHeight:= 0;
  TemDetalhe := true;
  AberturaAprovado := False;
  sbcontatos.Enabled := EdClienteCodigo.Text <> '';
end;

procedure TFrmEditOrcamentoPRO.FormShow(Sender: TObject);
begin
  inherited;
  if not cdsEditDetail.IsEmpty then
  begin
    qsimulado.Close;
    qsimulado.Params[0].Value := cdsEditDetailOIP_CODIGO.AsInteger ;
    qsimulado.Open;
  end;
  edDescricao.MaxLength := 250;
  EdClienteCodigo.MaxLength := 5;
  EdVendedorCodigo.MaxLength := 3;
  edCNPJ.MaxLength := 18;
  cliente_nome.MaxLength := 100;
  edContato.MaxLength := 100;
  edemail.MaxLength := 100;
  DbeCLI_BAIRRO.MaxLength := 60;
  DbeCliCep.MaxLength := 8 ;
  DbeCli_endere.MaxLength := 100;

  rgSituacao.Enabled :=  NOT AberturaAprovado;
  pnUtil.Enabled := NOT MatchText(cdsEditORC_SITUACAO.AsString,['A','C','R']) or (EstadoTela = teAprovacao) or AberturaAprovado;
  btnAddItem.Enabled := pnUtil.Enabled ;
  btnAltItem.Enabled :=  pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;
  btnExclItem.Enabled :=  pnUtil.Enabled and cdsEditDetail.Active and not cdsEditDetail.IsEmpty;
  btnOk.Enabled := pnUtil.Enabled ;
  if EstadoTela <> teNovo then
  begin
    chkAgenda.Checked := not cdsEditTRF_REGISTRO.IsNull or (cdsEditTRF_REGISTRO.AsInteger > 0) ;

  end
  else
  begin
    cdsEditORC_SITUACAO.AsString := 'E';
  end;
  if AberturaAprovado then
  begin
     cdsEditORC_SITUACAO.AsString := 'V';
  end;

  porcamento.Enabled:= pnUtil.Enabled ;
  if cdsEditORC_SITUACAO.AsString = 'A' then
    self.Caption  := self.Caption +'( Aprovado )'
  else
  if cdsEditORC_SITUACAO.AsString = 'C' then
    self.Caption  := self.Caption +'( Cancelado )'
  else
  if cdsEditORC_SITUACAO.AsString = 'R' then
    self.Caption  := self.Caption +'( Recusado )'
  else
  if cdsEditORC_SITUACAO.AsString = 'V' then
    self.Caption  := self.Caption +'( Revisão )';



end;

function TFrmEditOrcamentoPRO.GravaListaPrecos(const cli:string ): integer;
var sql,id_tab,cod_tab, nome:  string;
begin
  id_tab := IntToStr(DBInicio.GetNextSequence('GEN_PRE_ID'));
  cod_tab := IntToStr(DBInicio.GetNextSequence('GEN_PRE_CODIGO'));
  nome := BuscaUmDadoSqlAsString('SELECT CLI_RAZAO FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(cli));
  sql:=
  'insert into precos0000 ( PRE_ID, pre_dtcadastro, PRE_CODIGO, EMP_CODIGO,cli_codigo, pre_vigencia1, PRE_TIPO_TABELA, PRE_DATAELABORACAO, PRE_DESCRICAO,PRE_ACORDOCOM ) values ( '+
  id_tab+', '+DateToSql(date)+', '+cod_tab+', '+QuotedStr(DBINICIO.Empresa.EMP_CODIGO)+', '+QuotedStr(cli) + ','+ DateToSql(date)+ ','+ '3'+','+   DateToSql(date)+ ','+
  QuotedStr(copy(nome,1,40)) +','+ IntToStr(cdsEditORC_CODIGO.AsInteger) + ' )';
  try
     ExecSql(sql);
     result := StrToInt(id_tab);
  except
    raise Exception.Create('Erro Lista de preços');
  end;
end;

function TFrmEditOrcamentoPRO.GravarClientes: integer;
var sql, vtipo, vcgc:  string;
begin
  try
    vcgc := cdsEdit.FieldByName('ORC_CGCCPF').AsString;
    if length(vcgc) = 11 then
      vtipo := 'F'
    else if length(vcgc) = 14 then
       vtipo := 'J';

     sql:= ' insert into cli0000 (CLI_CODIGO, EMP_CODIGO, CLI_RAZAO, CLI_FANTASIA,CLI_ENDERE, CLI_BAIRRO, CLI_CIDADE, CID_CODIGO ,CLI_CEP ,CLI_EMAIL,CLI_EMAIL_ALTERNATIVO, '+
     ' CLI_FONE , CLI_PESSOA,CLI_CLASSE_CLI_FOR, CLI_CGC,CLI_INSC, CLI_CONTATO ,CLI_UF, CLI_DTINICIO, CLI_INATIVO,CLI_CONSFINAL,CLI_PAIS,CLI_CONSU_PROPRIO, PAI_CODIGO ,CLI_PORTE ) VALUES ( '+
     QuotedStr(strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 ) )+','+
     QuotedStr(DBInicio.Empresa.EMP_CODIGO)+','+
     QuotedStr(copy(cdsEdit.FieldByName('ORC_CLIENTE').AsString,1,55))+','+
     QuotedStr(copy(cdsEdit.FieldByName('ORC_CLIENTE').AsString,1,55))+','+
     QuotedStr(copy(cdsEdit.FieldByName('ORC_ENDERECO').AsString,1,50))+','+
     QuotedStr(cdsEdit.FieldByName('ORC_BAIRRO').AsString)+','+
     QuotedStr(iif(cdsEdit.FieldByName('cid_codigo').AsInteger>0,cdsEdit.FieldByName('orc_cidade').AsString,''))+','+
     IntToStr(cdsEdit.FieldByName('cid_codigo').AsInteger) +','+
     QuotedStr(cdsEdit.FieldByName('ORC_CEP').AsString)+','+
     QuotedStr(cdsEdit.FieldByName('ORC_EMAIL').AsString)+','+
     QuotedStr(cdsEdit.FieldByName('ORC_EMAIL').AsString)+','+
     QuotedStr(cdsEdit.FieldByName('ORC_FONE').AsString  )+','+
     QuotedStr(vtipo )+','+
     QuotedStr('C')+','+
     QuotedStr(cdsEdit.FieldByName('ORC_CGCCPF').AsString  )+','+
     'null'+','+
     QuotedStr(cdsEdit.FieldByName('ORC_CONTATO').AsString)+','+
     QuotedStr(cdsEdit.FieldByName('ORC_UF').AsString)+','+
     DateToSQL(now)+','+
     QuotedStr('A')+','+
     QuotedStr('N')+','+
     QuotedStr('N')+','+
     QuotedStr('N')+','+
     '1058'+','  +
     QuotedStr('M')+  ')' ;

     ExecSql(sql);

  except

   raise Exception.Create('Erro na gravação do cliente ' );

  end;
end;

function TFrmEditOrcamentoPRO.GravarFollowup: integer;
VAR SQL,assunto : string;
  prazo : TDateTime;
  trf_reg  : integer;
begin
  try
    result := 0 ;
    trf_reg :=  GetNextSequence('GEN_TAREFAS') ;
    if (cdsEditORC_DATAAQUISICAO.AsDateTime >0 )  and  (not cdsEditORC_DIAS_VALIDADE.IsNull) and  (cdsEditORC_DIAS_VALIDADE.AsInteger >0 ) then
      prazo :=  cdsEditORC_DATAAQUISICAO.AsDateTime +  cdsEditORC_DIAS_VALIDADE.AsInteger
    else
      prazo := 0 ;
    assunto := cdsEditORC_DESCRICAO.AsString + ', orçamento n '+ IntToStr(cdsEditORC_CODIGO.AsInteger) ;
    SQL := 'INSERT INTO TAREFAS_CRM (TRF_REGISTRO, EMP_CODIGO, REP_CODIGO, TRF_PRAZO, TRF_ASSUNTO, TRF_FINALIZADA, TRF_EXCLUIDO, TRF_NIVEL, CLI_CODIGO, '+
    ' TRF_CONTATO, TRF_EMAILCONTATO, TRF_CONTATOFONE, TRF_ENDERECO, TRF_ORIGEM, TRF_DATA_REGISTRO,  TRF_DATAABERTURA)   '+
    ' VALUES(' +  IntToStr(trf_reg)  +','+
      QuotedStr(DBINICIO.Empresa.EMP_CODIGO) + ',' +
      QuotedStr(edVendedor.idRetorno) + ','+
      DateToSQL(prazo) + ',' +
      QuotedStr(assunto ) + ','+
      QuotedStr('N') + ',' +
      QuotedStr('N') + ',' +
      IntToStr(2) +','+
      QuotedStr(PesqCliente.idRetorno) +','+
      QuotedStr(cdsEditORC_CLIENTE.AsString) + ','+
      QuotedStr(cdsEditORC_EMAIL.AsString) + ','+
      QuotedStr(cdsEditORC_FONE.AsString) + ',' +
      QuotedStr(cdsEditORC_ENDERECO.AsString) + ',' +
      //TRF_ACAO
      IntToStr(5) +','+
      DateTimeToSQL(now) +','+
      DateTimeToSQL(now) + ')';

    ExecSql(SQL);
    result := trf_reg;
    SQL:=  'INSERT INTO TAREFAS_HISTORICO      '+
           ' (TAH_REGISTRO, TRF_REGISTRO, TAH_DATA_REGISTRO, TAH_ASSUNTO) '+
           ' VALUES('+IntToStr(GetNextSequence('GEN_TAH_HISTORICO')) +','+
            IntToStr(trf_reg)+ ','+
            DateTimeToSQL(now)  +','+
            QuotedStr(assunto) +  ')';

     ExecSql(SQL);
     //ATUALIZA O ORCAMENTO
     SQL := 'UPDATE ORCAMENTO_PROD '   +
            ' SET TRF_REGISTRO =  '+IntToStr(trf_reg)+
            ' WHERE ORC_CODIGO = '+IntToStr(cdsEditORC_CODIGO.AsInteger);
     ExecSql(SQL) ;
  except
    on e: exception do
    begin
      result := 0;
      raise Exception.Create(e.message);
    end;
  end;

end;

procedure TFrmEditOrcamentoPRO.gravarItensPedidos(const ped_id: string);
var sql :string;
begin
  try
   cdsEditDetail.DisableControls;
   cdsEditDetail.First;
   while not cdsEditDetail.Eof do
   begin
     if cdsEditDetailprd_codigo.asstring <> '' then
     begin
      sql:= 'insert into PED_IT01 ('+
               'PRF_REGISTRO,'+
               'PRF_OP,'+
               'PRF_PRODUTO_AGREGADO,'+
               'PRF_FLAG_ATUALIZA_ESTOQUE,'+
               'PED_CODIGO,'+
               'PRD_REFER,'+
               'PRD_CODIGO,'+
               'PRF_QTDE,'+
               'PRF_PRECO,'+
               'PRF_SITUACAO,'+
               'PRF_PRDDESCRI,'+
               'EMP_CODIGO,'+
               'PRF_PRECO_BRUTO,'+
               'prdco_codigo_original ,'+
               'PRF_PESOKG )            '+
               ' Values ('+
               IntToStr( GetNextSequence('GEN_ITEM_PEDIDO')) +','+
               QuotedStr('N') +','+
               QuotedStr('N') +','+
               QuotedStr('N') +','+
               QuotedStr(ped_id) + ','+
               QuotedStr(cdsEditDetailPRD_REFER.AsString) + ','+
               QuotedStr(cdsEditDetailPRD_CODIGO.AsString) + ','+
               FloatToSQL(cdsEditDetailOIP_QDE.AsFloat) + ','+
               FloatToSQL(cdsEditDetailOIP_PRECO.AsFloat) + ','+
               QuotedStr('F') +','+
               QuotedStr(cdsEditDetailOIP_DESCRICAO.AsString)+','+
               QuotedStr(DBInicio.Empresa.EMP_CODIGO) +','+
               FloatToSQL(cdsEditDetailOIP_PRECO.AsFloat) + ','+
               QuotedStr(cdsEditDetailPRDCO_CODIGO_ORIGINAL.AsString) + ','+
               FloatToSQL(cdsEditDetailOIP_PESO.AsFloat)+')';

       ExecSql(SQL);
     end;
     cdsEditDetail.Next;
   end;
    cdsEditDetail.EnableControls;
  except
    on e: exception do
    begin
      cdsEditDetail.Filtered := False;
      cdsEditDetail.EnableControls;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TFrmEditOrcamentoPRO.gravarPedidos(const cli: string): string;
var sql , ped_id :string;
opv_id : integer;
begin
  try
   // ESTAVA OPV_INDUSTRIALIZACAO GERA ORDEM DE PRODUÇÃO
   // PORÉM O ORÇAMENTO INDUSTRIAL TEM QUE GERAR ORÇAMENTO PRIMEIRO PORQUE TEM QUE SAI DE ESTOQUE CASO PRECISE DEPOIS GERAR OPV_INDUSTRIALIZAÇÃO
    opv_id := BuscaUmDadoSqlAsInteger(' SELECT FIRST 1 OPV_CODIGO FROM OPV0000 WHERE OPV_ORCAMENTO = ''S'' AND OPV_ATESTOQUE = '+ QuotedStr('N'));
    ped_id :=  StrZero(SequenciadorPRC(DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 0,'0'),6);

    sql :=
      ' Insert into PED0000 (PED_REGISTRO,PED_CODIGO,CLI_CODIGO,REP_CODIGO, PED_DTENTRADA, ' +
                       ' PED_VLTOTAL_LIQ, PED_OBSERVACAO,EMP_CODIGO,OPV_CODIGO,  '+
                       ' PED_SITUACAO,PED_VLTOTAL_BRUTO, PED_OBSNOTA, ORC_CODIGO )'+

      ' values ('+  IntToStr(GetNextSequence('GEN_PEDIDO')  )+',' +  //PED_REGISTRO
                 QuotedStr(ped_id) + ','+                           //PED_CODIGO
                 QuotedStr(cli)+',' +                               //CLI_CODIGO
                 QuotedStr(cdsEditREP_CODIGO.AsString) + ',' +       //rep_codigo
                 DateToSQL(Now)+','+                                // PED_DTENTRADA
                 FloatToSQL(cdsEditORC_VLR_TOTAL.AsFloat) +','+     // PED_VLTOTAL_LIQ
                 QuotedStr(cdsEditORC_OBSERVACAO.AsString) +','+    //PED_OBSGERAL
                 QuotedStr(dbinicio.Empresa.EMP_CODIGO) +','+       //EMP_CODIGO
                 inttostr(opv_id) + ',' +                           //OPV_CODIGO
                 QuotedStr('F') + ','+                              //PED_SITUACAO
                 FloatToSQL(cdsEditORC_VLR_TOTAL.AsFloat) +','+    //PED_VLTOTAL_BRUTO
                 QuotedStr(cdsEditORC_OBS_TRANSP.AsString) +','+    //PED_OBSNOTA
                 IntToStr(cdsEditORC_CODIGO.AsInteger)  +')' ;       //ORC_CODIGO


    ExecSql(SQL);
    result := ped_id;

  except
    on e: exception do
    begin
      SequenciadorPRC(DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 1,ped_id)  ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TFrmEditOrcamentoPRO.ValidarIdClienteValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid:= True;
  if cdsEditORC_SITUACAO.AsString = 'A' then
    valid := (PesqCliente.idRetorno <> '' );

end;

procedure TFrmEditOrcamentoPRO.ValidarItensProdutoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid:= True;
  if cdsEditORC_SITUACAO.AsString = 'A' then
  begin
    cdsEditDetail.DisableControls;
    try
      cdsEditDetail.First;
      while not cdsEditDetail.Eof do
      begin
        if (cdsEditDetailPRD_CODIGO.IsNull) or (cdsEditDetailPRD_CODIGO.AsString = '') then
        begin
          valid := False;
          break;
        end;
        cdsEditDetail.Next;
      end;
    finally
      cdseditdetail.EnableControls;
    end;
  end;

end;

procedure TFrmEditOrcamentoPRO.ValidarCNPJValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  if edCNPJ.Text <> '' then
  begin
    if Length(edCNPJ.Text) = 11 then
      ACBrValidador1.TipoDocto :=  docCPF
    else
      ACBrValidador1.TipoDocto :=  docCNPJ;
    ACBrValidador1.Documento := RetirarMascaraCNPJ_INSC(edCNPJ.Text);
    valid:=  ACBrValidador1.Validar ;

  end;
end;

procedure TFrmEditOrcamentoPRO.ValidarClienteValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid := (PesqCliente.idRetorno <> '') or (cdsEditORC_CLIENTE.AsString <> '');
end;

procedure TFrmEditOrcamentoPRO.ValidarDescricaoOrcValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid := cdsEdit.Active and  (edDescricao.Text <> '');
end;

procedure TFrmEditOrcamentoPRO.ValidarItensValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid := cdsEditDetail.Active and not cdsEditDetail.IsEmpty ;
end;

procedure TFrmEditOrcamentoPRO.ValidarVendedorValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid := edVendedor.idRetorno <> '';
end;

procedure TFrmEditOrcamentoPRO.mObsTranspEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmEditOrcamentoPRO.mObsTranspExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

function TFrmEditOrcamentoPRO.NovoDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC): Boolean;
begin
  inherited;

end;

procedure TFrmEditOrcamentoPRO.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
    begin
      PesqCliente.idRetorno := tcr.IDRetorno;
      SelecionarCliente;
    end;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TFrmEditOrcamentoPRO.PesqClienteExit(Sender: TObject);
begin
  inherited;
  SelecionarCliente;
end;

procedure TFrmEditOrcamentoPRO.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  sbcontatos.Enabled := PesqCliente.idRetorno <> '';

end;

procedure TFrmEditOrcamentoPRO.SelecionarCliente;
begin
if (PesqCliente.IdRetorno <> '')  then
  begin
    EdClienteCodigo.Text := PesqCliente.IdRetorno;
    OpenAux('SELECT CLI_RAZAO,CLI_ENDERE, CLI_CEP, CLI_BAIRRO, CLI_CIDADE, CID_CODIGO, CLI_CONTATO, CLI_EMAIL_ALTERNATIVO, CLI_FONE,CLI_UF, rep_codigo, CLI_CGC, CLI_FONE,  '+
            ' FPG_REGISTRO, PCL_CODIGO '+
            ' FROM CLI0000 '+
            ' WHERE CLI_CODIGO = '+QuotedStr( PesqCliente.IdRetorno) +
            ConcatSe( ' and ',DBInicio.ExclusivoSql('CLIENTES'))

            );
    if not qaux.IsEmpty then
    begin
      if cdsEditORC_ENDERECO.AsString = '' then
      begin
        cdsEditORC_ENDERECO.AsString := QAux.FieldByName('CLI_ENDERE').AsString;
      end;
      cdsEditORC_CLIENTE.AsString := qaux.FieldByName('CLI_RAZAO').AsString;
      cdsEditREP_CODIGO.AsString := qaux.FieldByName('REP_CODIGO').AsString;
      // foi retirado 110411 a pedido de lucas
//      cdsEditORC_EMAIL.AsString := QAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
      cdsEditORC_CIDADE.AsString := QAux.FieldByName('CLI_CIDADE').AsString;
      cdsEditCID_CODIGO.AsString := QAux.FieldByName('CID_CODIGO').AsString;
      cdsEditORC_BAIRRO.AsString := QAux.FieldByName('CLI_BAIRRO').AsString;
      cdsEditORC_UF.AsString := QAux.FieldByName('CLI_UF').AsString;
//      cdsEditORC_CONTATO.AsString := QAux.FieldByName('CLI_CONTATO').AsString;
      cdsEditORC_CEP.AsString := qAux.FieldByName('CLI_CEP').AsString;
      cdsEditORC_CGCCPF.AsString := qAux.FieldByName('CLI_CGC').AsString;
//      cdsEditORC_FONE.AsString :=  qAux.FieldByName('CLI_FONE').AsString;
      if (qAux.FieldByName('FPG_REGISTRO').AsInteger > 0) and ( not qAux.FieldByName('FPG_REGISTRO').IsNull)  then
        cdsEditFPG_REGISTRO.AsInteger := qAux.FieldByName('FPG_REGISTRO').AsInteger
      else
        cdsEditFPG_REGISTRO.Clear;
      cdsEditPCL_CODIGO.AsString := qAux.FieldByName('PCL_CODIGO').AsString;

    end;
  end
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;

end;

procedure TFrmEditOrcamentoPRO.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormCidadeGrid := TFormCidadeGrid.Create(Application);
  try
    FormCidadeGrid.ShowModal;
    if (not cdsEdit.IsEmpty) then
    begin
     if (cdsEdit.State in [dsBrowse])then
        cdsEdit.Edit;
     if (cdsEdit.State in dsEditModes) then
     begin
       cdsEditORC_CIDADE.AsString  := FormCidadeGrid.Cidade;
       cdsEditORC_UF.AsString      := FormCidadeGrid.Estado;
       cdsEditCID_CODIGO.AsInteger := FormCidadeGrid.Cod_Cidade;

     end;
    end;




  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;
end;

procedure TFrmEditOrcamentoPRO.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
  try
     FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := mobs;
      FrmCadastroObservacao.ShowModal;
  finally
    FrmCadastroObservacao.Destroy;
    FrmCadastroObservacao :=Nil;
  end;
end;

procedure TFrmEditOrcamentoPRO.sbcontatosClick(Sender: TObject);
begin
  FrmContatoCliente := TFrmContatoCliente.Create(Application);
  try
    FrmContatoCliente.sClienteCodigo := EdClienteCodigo.Text;
    FrmContatoCliente.ShowModal;
    edemail.Text := FrmContatoCliente.TextoRetorno;
    edContato.Text := FrmContatoCliente.Nome;
    edFoneCliente.Text := FrmContatoCliente.Telefone;
  finally
   FreeAndNil( FrmContatoCliente );
  end;
end;

procedure TFrmEditOrcamentoPRO.totalizador;
var total : Currency;
begin
  //ordernar as sequencias
  if cdsEditDetail.Active and not cdsEditDetail.IsEmpty then
  begin
    cdsEditDetail.Filtered:= False;
 //   try
//      cdsEditDetail.First;
//      total :=0;
//      while not cdsEditDetail.Eof do
//      begin
//        if  (cdsEditDetailTOTALORC.Value >0 ) then
//          total:= total + cdsEditDetailTOTALORC.Value;
//
//        cdsEditDetail.Next;
//      end;
//    finally

//    end;
    if  (cdsEditDetailTOTALORC.Value >0 ) then
    begin
    if  not (cdsEdit.State in dsEditModes ) then
      cdsEdit.Edit;
      cdsEditORC_VLR_TOTAL.AsCurrency := cdsEditDetailTOTALORC.Value;

    end;
  end;

end;

end.
