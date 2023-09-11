unit uFrmTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.StrUtils,  system.TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uniMultiItem, uniComboBox, uniDBComboBox, uniCheckBox, uniDBCheckBox, uniGUIBaseClasses, uniGUIClasses, uniDateTimePicker, uniDBDateTimePicker,
  SgDbSeachComboUnit, Vcl.Mask, Vcl.DBCtrls, ACBrValidador, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, ClipBrd, Vcl.DBCGrids;

type
  TfrmTarefas = class(TfrmBaseDBEdit)
    CdsEditREP_CODIGO: TStringField;
    CdsEditCLI_CODIGO: TStringField;
    CdsEditTRF_PRAZO: TSQLTimeStampField;
    CdsEditTRF_ASSUNTO: TMemoField;
    CdsEditTRF_FINALIZADA: TStringField;
    CdsEditTRF_EXCLUIDO: TStringField;
    CdsEditTRF_NIVEL: TIntegerField;
    CdsEditTRF_EMAILCONTATO: TStringField;
    CdsEditTRF_CONTATOFONE: TStringField;
    CdsEditTRF_CONTATO: TStringField;
    CdsEditTRF_ACAO: TIntegerField;
    CdsEditTRF_REGISTRO: TIntegerField;
    btnFinalizar: TSpeedButton;
    btnExcluir: TSpeedButton;
    CdsEditTRF_ENDERECO: TStringField;
    CdsEditTRF_DATA_FINA: TSQLTimeStampField;
    CdsEditTRF_DATA_EXCL: TSQLTimeStampField;
    ACBrValidador1: TACBrValidador;
    qRep: TSQLQuery;
    qCli: TSQLQuery;
    qEditTRF_REGISTRO: TIntegerField;
    qEditREP_CODIGO: TStringField;
    qEditTRF_PRAZO: TSQLTimeStampField;
    qEditTRF_ASSUNTO: TBlobField;
    qEditTRF_FINALIZADA: TStringField;
    qEditTRF_DATA_FINA: TSQLTimeStampField;
    qEditTRF_EXCLUIDO: TStringField;
    qEditTRF_DATA_EXCL: TSQLTimeStampField;
    qEditTRF_NIVEL: TIntegerField;
    qEditCLI_CODIGO: TStringField;
    qEditTRF_CONTATO: TStringField;
    qEditTRF_EMAILCONTATO: TStringField;
    qEditTRF_CONTATOFONE: TStringField;
    qEditTRF_ENDERECO: TStringField;
    qEditTRF_ACAO: TIntegerField;
    qEditTRF_ORIGEM: TIntegerField;
    qEditemp_codigo: TStringField;
    CdsEditTRF_ORIGEM: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    pedit: TPanel;
    DBEREP_CODIGO: TDBEdit;
    edVendedor: TSgDbSearchCombo;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    rgAcao: TDBRadioGroup;
    dtPrazo: TJvDateTimePicker;
    timePrazo: TJvDateTimePicker;
    cbNivel: TDBComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    CdsEditTRF_DATA_REGISTRO: TSQLTimeStampField;
    qEditTRF_DATA_REGISTRO: TSQLTimeStampField;
    CdsEditTRF_NOMEEMPRESA: TStringField;
    CdsEditTRF_CONTATOFONE2: TStringField;
    qEditTRF_NOMEEMPRESA: TStringField;
    qEditTRF_CONTATOFONE2: TStringField;
    cdsHistorico: TClientDataSet;
    dspHistorico: TDataSetProvider;
    dsHistorico: TDataSource;
    qHistorico: TSQLQuery;
    cdsHistoricoTAH_REGISTRO: TIntegerField;
    cdsHistoricoTAH_DATA_REGISTRO: TSQLTimeStampField;
    cdsHistoricoTRF_REGISTRO: TIntegerField;
    cdsHistoricoTAH_ASSUNTO: TBlobField;
    pgprincipal: TPageControl;
    tsprincipal: TTabSheet;
    tabHistorico: TTabSheet;
    pUltimoAssunto: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    meUltimoAssunto: TDBMemo;
    Label7: TLabel;
    meAssunto: TDBMemo;
    rgOrigem: TDBRadioGroup;
    Contato: TGroupBox;
    lcliente: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    edCodigoCliente: TDBEdit;
    PesqCliente: TSgDbSearchCombo;
    edemail: TDBEdit;
    edFone: TDBEdit;
    edEndereco: TDBEdit;
    DBEdit2: TDBEdit;
    edNomeEmpresa: TDBEdit;
    chkFinalizada: TDBCheckBox;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText2: TDBText;
    dbultimo: TDBMemo;
    cbStatusFinalizacao: TDBComboBox;
    Label11: TLabel;
    CdsEditTRF_STATUS_FINAL: TStringField;
    qEditTRF_STATUS_FINAL: TStringField;
    CdsEditTRF_DATAABERTURA: TSQLTimeStampField;
    qEditTRF_DATAABERTURA: TSQLTimeStampField;
    btCliente: TButton;
    procedure CdsEditTRF_NIVELGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsEditTRF_NIVELSetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dtPrazoChange(Sender: TObject);
    procedure timePrazoChange(Sender: TObject);
    procedure meAssuntoEnter(Sender: TObject);
    procedure meAssuntoExit(Sender: TObject);
    procedure edemailEnter(Sender: TObject);
    procedure edemailExit(Sender: TObject);
    procedure rgAcaoChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbNivelChange(Sender: TObject);
    procedure rgOrigemChange(Sender: TObject);
    procedure chkFinalizadaClick(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure edCodigoClienteExit(Sender: TObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure CdsEditTRF_STATUS_FINALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsEditTRF_STATUS_FINALSetText(Sender: TField; const Text: string);
    procedure CdsEditTRF_FINALIZADAChange(Sender: TField);
    procedure btClienteClick(Sender: TObject);
    procedure meAssuntoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function FinalizaTarefa (const trf_registro : integer; const Finalizar, comitar : boolean ) : boolean;
    function ExcluiTarefa (const trf_registro : integer): boolean;
    var UltimoAssunto: string;

  end;

var
  frmTarefas: TfrmTarefas;

implementation

{$R *.dfm}
uses upesqTarefas, uteis, iniciodb, pesquisaclientesform, uCadastroFrases, Cli0001;

procedure TfrmTarefas.btClienteClick(Sender: TObject);
begin
  inherited;
  if CdsEditTRF_ASSUNTO.AsString = '' then
    if MessageDlg('Deseja Gravar o Registro ' + rgAcao.Items[rgAcao.ItemIndex] + ' sem Novo Assunto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qHistorico.Params[0].Value := CdsEditTRF_REGISTRO.AsInteger;
      cdsHistorico.Open;
      cdsHistorico.Insert;
      cdsHistoricoTAH_ASSUNTO.AsAnsiString := CdsEditTRF_ASSUNTO.AsAnsiString ;
      cdsHistoricoTAH_REGISTRO.AsInteger := GetNextSequence('GEN_TAH_HISTORICO');
      cdsHistoricoTAH_DATA_REGISTRO.AsDateTime := CdsEditTRF_DATA_REGISTRO.AsDateTime;
      cdsHistoricoTRF_REGISTRO.AsInteger  :=  CdsEditTRF_REGISTRO.AsInteger;
      cdsHistorico.Post;
      cdsHistorico.ApplyUpdates(0);
      ExecSql('UPDATE CLI0000 SET CLI_HISTORICO = CLI_HISTORICO || ' +
        QuotedStr(#13 + #10 +
          CdsEditTRF_DATA_REGISTRO.AsString + ' - ' +
          edVendedor.Text + ' - ' +
          rgAcao.Items[rgAcao.ItemIndex] + ' - ' +
          CdsEditTRF_ASSUNTO.AsString
        ) + ' WHERE CLI_CODIGO = ' + QuotedStr(edCodigoCliente.Text)
      );
    end;
  Close;
  if FormCliente = nil then
    FormCliente := TFormCliente.Create(Application);
  FormCliente.EdtCli_codigo.Text := edCodigoCliente.Text;
  FormCliente.EdtCli_codigoExit(Sender);
  FormCliente.Show;


end;

procedure TfrmTarefas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if EstadoTela = teEdicao then
    cdsHistorico.CancelUpdates;

  close;

end;

procedure TfrmTarefas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not CdsEdit.IsEmpty then
  begin
   btnOk.Tag := 3;
   CdsEdit.Edit;
   CdsEditTRF_EXCLUIDO.AsString := 'S';
   CdsEditTRF_DATA_EXCL.AsDateTime := Now;
   CdsEdit.Post;

  end;
end;

procedure TfrmTarefas.btnOKClick(Sender: TObject);
begin
  inherited;
    qHistorico.Params[0].Value := CdsEditTRF_REGISTRO.AsInteger;
    UltimoAssunto := cdsHistoricoTAH_ASSUNTO.AsAnsiString;
    cdsHistorico.Open;
    cdsHistorico.Insert;
    cdsHistoricoTAH_ASSUNTO.AsAnsiString := UltimoAssunto + ' - ' +  CdsEditTRF_ASSUNTO.AsAnsiString ;
    cdsHistoricoTAH_REGISTRO.AsInteger := GetNextSequence('GEN_TAH_HISTORICO');
    cdsHistoricoTAH_DATA_REGISTRO.AsDateTime := CdsEditTRF_DATA_REGISTRO.AsDateTime;
    cdsHistoricoTRF_REGISTRO.AsInteger  :=  CdsEditTRF_REGISTRO.AsInteger;
    cdsHistorico.Post;
  cdsHistorico.ApplyUpdates(0);
  ExecSql('UPDATE CLI0000 SET CLI_HISTORICO = CLI_HISTORICO || ' +
    QuotedStr(#13 + #10 +
      CdsEditTRF_DATA_REGISTRO.AsString + ' - ' +
      edVendedor.Text + ' - ' +
      CdsEditTRF_ASSUNTO.AsString
    ) + ' WHERE CLI_CODIGO = ' + QuotedStr(edCodigoCliente.Text)
  );
end;

procedure TfrmTarefas.cbNivelChange(Sender: TObject);
begin
  exit;
  inherited;
  if cbNivel.ItemIndex = 2 then
     rgOrigem.ItemIndex := 1;
end;

procedure TfrmTarefas.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cbNivel.ItemIndex := 2 ; //CLIENTE
  dtPrazo.Date := date;
  timePrazo.Time := NOW;
  CdsEditTRF_DATAABERTURA.AsDateTime := now;
  CdsEditTRF_FINALIZADA.AsString := 'N';
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
    edVendedor.idRetorno := dbInicio.Empresa.fCODIGO_REPRES;
    edVendedor.Enabled :=  not DBInicio.Empresa.VisualizaPedios_P;
    DBEREP_CODIGO.Enabled :=  not DBInicio.Empresa.VisualizaPedios_P;

  end;

end;

procedure TfrmTarefas.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dtPrazo.Date :=  CdsEditTRF_PRAZO.AsDateTime;
  timePrazo.Time :=     CdsEditTRF_PRAZO.AsDateTime;
end;

procedure TfrmTarefas.CdsEditBeforePost(DataSet: TDataSet);
var dataPrazo : TDate;
begin
  inherited;
  ClearErrors;
  if CdsEditTRF_ASSUNTO.AsString = '' then
    GeraException('Novo Assunto está em branco');
  if (CdsEditTRF_NOMEEMPRESA.AsString = '' ) and (PesqCliente.idRetorno = '')  then
   GeraException('Cliente/nome empresa deve estar preenchido');
  if (CdsEditTRF_ACAO.IsNull) or (rgAcao.ItemIndex = -1) then
   GeraException('Uma ação deve ser selecionada');
  if CdsEditREP_CODIGO.AsString = '' then
    GeraException('Preencha o vendendor');
  if rgOrigem.ItemIndex = -1 then
   GeraException('Preencha a origem');

  if (CdsEditEMP_CODIGO.AsString = '') then
     CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
	if CdsEditTRF_REGISTRO.IsNull then
		 CdsEditTRF_REGISTRO.asInteger := GetNextSequence('GEN_TAREFAS');

  if (CdsEditTRF_DATA_REGISTRO.IsNull) OR (CdsEditTRF_DATA_REGISTRO.AsDateTime = 0 )  then
   CdsEditTRF_DATA_REGISTRO.AsDateTime := now;
  if (dtPrazo.Date>0) and (timePrazo.Time > 0) then
   CdsEditTRF_PRAZO.AsDateTime := StrToDateTime(DateToStr(dtPrazo.Date)+ TimeToStr(timePrazo.Time))
  else  if (dtPrazo.Date>0) then
   CdsEditTRF_PRAZO.AsDateTime := StrToDateTime(DateToStr(dtPrazo.Date))
  else
    GeraException('Preencha um prazo.');

  if CdsEditTRF_FINALIZADA.AsString = '' then
    CdsEditTRF_FINALIZADA.AsString := 'N';

  if CdsEditTRF_EXCLUIDO.AsString = '' then
    CdsEditTRF_EXCLUIDO.AsString := 'N';
  if (CdsEditTRF_FINALIZADA.AsString = 'S') and (CdsEditTRF_DATA_FINA.AsDateTime = 0) then
    CdsEditTRF_DATA_FINA.AsDateTime := Now
  else
      CdsEditTRF_DATA_FINA.Clear;

end;

procedure TfrmTarefas.CdsEditTRF_FINALIZADAChange(Sender: TField);
begin
  inherited;
  if (CdsEditTRF_FINALIZADA.AsString = 'S') AND ( cbStatusFinalizacao.ItemIndex = -1) then
  begin
    CdsEditTRF_FINALIZADA.AsString := 'N';
    raise Exception.Create('Preencher o status');
  end;
end;

procedure TfrmTarefas.CdsEditTRF_NIVELGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0 : Text := 'Prospect';
    1 : Text := 'Lead';
    2 : Text := 'Cliente';
    3 : Text := 'Fornecedor';
    4 : Text := 'Outros';

  end;

end;

procedure TfrmTarefas.CdsEditTRF_NIVELSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Prospect' then
    Sender.Value := 0
  else if text = 'Lead' then
    sender.Value := 1
  else if text = 'Cliente' then
    sender.Value:= 2
  else if text = 'Fornecedor' then
    sender.Value := 3
  else if Text = 'Outros' then
    Sender.Value := 4;

end;

procedure TfrmTarefas.CdsEditTRF_STATUS_FINALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    text := 'Sucesso Efetivo'
  else if Sender.AsString = 'B' then
    text := 'Fora de Budget'
  else if Sender.AsString = 'C' then
    TEXT:= 'Concorrente Ganhou'
  else if Sender.AsString = 'P' then
    text :=  'Preço Incompátivel'
  else if Sender.AsString = 'S' then
    Text := 'Sem Fit (solução)';
end;

procedure TfrmTarefas.CdsEditTRF_STATUS_FINALSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Sucesso Efetivo' then
   Sender.AsString := 'S'
  else if text = 'Fora de Budget' then
    Sender.AsString := 'B'
  else if TEXT = 'Concorrente Ganhou' then
    Sender.AsString := 'C'
  else if text =  'Preço Incompátivel' then
   Sender.AsString := 'P'
  else if Text = 'Sem Fit (solução)' then
   Sender.AsString := 'S';
end;

procedure TfrmTarefas.chkFinalizadaClick(Sender: TObject);
begin
  inherited;

  FinalizaTarefa(CdsEditTRF_REGISTRO.AsInteger,chkFinalizada.Checked,false);

end;

procedure TfrmTarefas.edCodigoClienteExit(Sender: TObject);
begin
  inherited;
 if edCodigoCliente.Text <> '' then
    PesqCliente.idRetorno :=  strzero(edCodigoCliente.Text,5)
  else
    PesqCliente.idRetorno := ''
end;

procedure TfrmTarefas.edemailEnter(Sender: TObject);
begin
  inherited;
//  TDBEdit(sender).CharCase := ecLowerCase;
end;

procedure TfrmTarefas.edemailExit(Sender: TObject);
begin
  inherited;
  if edemail.Text <> '' then
  begin
    ACBrValidador1.TipoDocto :=  docEmail;
    ACBrValidador1.Documento := edemail.Text;
    if not ACBrValidador1.Validar then
      GeraException('Email inválido');
  end;
end;

procedure TfrmTarefas.meAssuntoEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TfrmTarefas.meAssuntoExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TfrmTarefas.meAssuntoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  btCliente.Enabled := True;
end;

procedure TfrmTarefas.dtPrazoChange(Sender: TObject);
begin
  inherited;
 if not (dtPrazo.DroppedDown) then
   	keybd_event(39,0,0,0);
  if CdsEdit.State = dsBrowse then
    CdsEdit.Edit;
end;

function TfrmTarefas.ExcluiTarefa(const trf_registro: integer): boolean;
begin
  try
    if not CdsEdit.Active then
     OpenEditID(trf_registro);

    if not CdsEdit.IsEmpty then
    begin

     CdsEdit.Edit;
     CdsEditTRF_EXCLUIDO.AsString := 'S';
     CdsEditTRF_DATA_EXCL.AsDateTime := Now;
     CdsEdit.Post;
     CdsEdit.ApplyUpdates(0);

    end;
    result := true;
  except
   result:=False;
   raise;
  end;

end;

function TfrmTarefas.FinalizaTarefa(const trf_registro: integer; const Finalizar, comitar : boolean): boolean;
begin
  try

    if not CdsEdit.Active then
    begin
     OpenEditID(trf_registro);
     CdsEdit.Edit;
    end;
    if cdsEdit.state = dsBrowse then
      exit;

    if finalizar then
    begin
      CdsEditTRF_FINALIZADA.AsString := 'S';
      CdsEditTRF_DATA_FINA.AsDateTime := now;

    end
    else
    begin
      CdsEditTRF_DATA_FINA.Clear;
      CdsEditTRF_FINALIZADA.AsString := 'N';
      cbStatusFinalizacao.ItemIndex := -1;
    end;

    if comitar then
    begin
      CdsEdit.Post;
      CdsEdit.ApplyUpdates(0);
      self.ModalResult := mrOk;
    end;
    result := true;
  except
   result := False;
   raise;
  end;

end;

procedure TfrmTarefas.FormCreate(Sender: TObject);
begin
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
    edVendedor.Enabled :=  not DBInicio.Empresa.VisualizaPedios_P;;
    DBEREP_CODIGO.Enabled :=  not DBInicio.Empresa.VisualizaPedios_P;;
  end;
//  qEdit.SQL.Clear;
//  qEdit.SQL.Add('SELECT * FROM tarefas_crm WHERE TRF_REGISTRO=:ID') ;
	CampoID:='TRF_REGISTRO';
  Tabela:='TAREFAS_CRM';
  DspEdit.UpdateMode := upWhereKeyOnly;
	SetTamanhoMinimo(608,1024);
  inherited;
end;

procedure TfrmTarefas.FormShow(Sender: TObject);
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;

  if FormCliente <> nil then
  begin
    edVendedor.idRetorno := FormCliente.edVendedor.idRetorno;
    PesqCliente.idRetorno := FormCliente.EdtCli_codigo.Text;
    rgOrigem.ItemIndex := 0;
  end;

  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);
  VisibleAndEnabl(cbPersistente, false, false);
  pUltimoAssunto.Visible := EstadoTela in [teEdicao,teConsulta];
  if EstadoTela = teEdicao then
  begin
    qHistorico.Params[0].Value := CdsEditTRF_REGISTRO.AsInteger;
    cdsHistorico.Open;
//    cdsHistorico.Insert;
    meAssunto.SelectAll;
//    meAssunto.CopyToClipboard;
//    cdsHistoricoTAH_ASSUNTO.AsAnsiString := CdsEditTRF_ASSUNTO.AsAnsiString ;
  //  meUltimoAssunto.
//    Clipboard.Clear ;

//    cdsHistoricoTAH_REGISTRO.AsInteger := GetNextSequence('GEN_TAH_HISTORICO');
//    cdsHistoricoTAH_DATA_REGISTRO.AsDateTime := CdsEditTRF_DATA_REGISTRO.AsDateTime;
//    cdsHistoricoTRF_REGISTRO.AsInteger  :=  CdsEditTRF_REGISTRO.AsInteger;
////    cdsHistoricoTAH_ASSUNTO.AsWideString :=  CdsEditTRF_ASSUNTO.AsWideString;
//    cdsHistorico.Post;

    if CdsEdit.State = dsEdit then
    begin
      CdsEditTRF_ASSUNTO.Clear;
      CdsEditTRF_DATA_REGISTRO.AsDateTime := now;
    end;

  end
  else if EstadoTela = teConsulta then
  begin
    qHistorico.Params[0].Value := CdsEditTRF_REGISTRO.AsInteger;
    cdsHistorico.Open;
    dtPrazo.Enabled := False;
    timePrazo.Enabled := False;
    cbnivel.Enabled := False;
    meAssunto.DataField := '';
  end;
  pgprincipal.ActivePageIndex := 0 ;
  btCliente.Visible := EstadoTela = teEdicao;
end;

procedure TfrmTarefas.PesqClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           PesqCliente.idRetorno := tcr.IDRetorno;


    finally
         FreeAndNil(tcr);
    end;

end;

procedure TfrmTarefas.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if (PesqCliente.idRetorno <> '') and (CdsEdit.State  in dsEditModes) then
  begin
    OpenAux('select CLI_EMAIL, CLI_FONE, CLI_ENDERE, CLI_CIDADE, CLI_UF, CLI_CONTATO from cli0000 where cli_codigo  = ' + QuotedStr( PesqCliente.idRetorno)+
      ConcatSe(' and ' , DBInicio.ExclusivoSql('CLIENTES')));
    CdsEditTRF_CONTATO.AsString := qaux.FieldByName('cli_contato').AsString;
    CdsEditTRF_EMAILCONTATO.AsString := qaux.FieldByName('cli_email').AsString;
    CdsEditTRF_CONTATOFONE.AsString := qaux.FieldByName('CLI_FONE').AsString;
    CdsEditTRF_ENDERECO.AsString := qAux.FieldByName('CLI_ENDERE').AsString  + ','+  qAux.FieldByName('CLI_CIDADE').AsString  +'-' + qAux.FieldByName('CLI_UF').AsString

  end;
end;

procedure TfrmTarefas.rgAcaoChange(Sender: TObject);
begin
  inherited;
  if (meAssunto.Text = '')
     OR (MatchStr(meAssunto.Text,['EMAIL','LIGAÇÃO','VISITA','PROPOSTA','RENOVAÇÃO'] ))  then
    if rgAcao.ItemIndex <> -1 then
      meAssunto.Text := rgAcao.Items[rgAcao.ItemIndex];
end;

procedure TfrmTarefas.rgOrigemChange(Sender: TObject);
begin
  inherited;
  edNomeEmpresa.Visible := rgOrigem.ItemIndex <> 0 ;
  edCodigoCliente.Visible := rgOrigem.ItemIndex  = 0 ;
  PesqCliente.Visible := rgOrigem.ItemIndex = 0 ;
  edNomeEmpresa.Enabled := rgOrigem.ItemIndex <> 0 ;
  edCodigoCliente.Enabled := rgOrigem.ItemIndex  = 0 ;
  PesqCliente.Enabled := rgOrigem.ItemIndex = 0 ;
  if rgOrigem.ItemIndex = 0  then
   lcliente.Caption := 'Cliente:'
  else
   lcliente.Caption := 'Empresa:';

end;

procedure TfrmTarefas.SpeedButton1Click(Sender: TObject);
begin
  inherited;
     FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := meAssunto;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
end;

procedure TfrmTarefas.timePrazoChange(Sender: TObject);
begin
  inherited;
 if not (timePrazo.DroppedDown) then
   	keybd_event(39,0,0,0);
  if CdsEdit.State = dsBrowse then
    CdsEdit.Edit;
end;

end.
