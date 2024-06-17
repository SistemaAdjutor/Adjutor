unit UPedidoDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Datasnap.Provider, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, system.DateUtils, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,  uteis, JvExMask, JvToolEdit,
  JvDBControls, ComboBoxRW, iniciodb, rwfunc, JvExStdCtrls, JvCombobox, JvDBCombobox , uPedidoPesqDoacao, pesquisaclientesform, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, System.StrUtils, JvEdit, JvValidateEdit ;

type
  TTipoParcela = (tpMensal, tpBimestral, tpTrimestral, tpSemestral,tpAnual,tpUnica);
  TOperacao = (topNovo, topEditar, topMostrar, topNulo);

type
  TfrmPedidoDoacao = class(TfrmBaseDbEstoque)
    pacoes: TPanel;
    qCli: TSQLQuery;
    qRep: TSQLQuery;
    qFPagto: TSQLQuery;
    BtnConsultar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnGravar: TBitBtn;
    Bit_Sair: TBitBtn;
    qPedido: TSQLQuery;
    cdsPedido: TClientDataSet;
    dspPedido: TDataSetProvider;
    dsPedido: TDataSource;
    cdsParcelas: TClientDataSet;
    dsParcelas: TDataSource;
    cdsParcelasDataParcela: TDateField;
    cdsParcelasValorParcela: TFMTBCDField;
    cdsPedidoPED_REGISTRO: TIntegerField;
    cdsPedidoPED_CODIGO: TStringField;
    cdsPedidoOPV_CODIGO: TIntegerField;
    cdsPedidoPED_DTENTRADA: TSQLTimeStampField;
    cdsPedidoREP_CODIGO: TStringField;
    cdsPedidoPED_COMIS1: TFMTBCDField;
    cdsPedidoPED_NUMERO_PED_CLIENTE: TStringField;
    cdsPedidoPED_CONTATO_CLIENTE: TStringField;
    cdsPedidoPED_SITUACAO: TStringField;
    cdsPedidoPED_OBSERVACAO: TBlobField;
    cdsPedidoCLI_CODIGO: TStringField;
    cdsPedidoBAN_CODIGO: TStringField;
    cdsPedidoPED_PARCELA: TIntegerField;
    cdsPedidoPED_INICIOPAG: TDateField;
    cdsPedidoPED_TIPOPARCELA: TStringField;
    BtnCancelar: TBitBtn;
    cdsPedidoPED_VLTOTAL_BRUTO: TFMTBCDField;
    cdsPedidoFPG_REGISTRO: TIntegerField;
    qOpv: TSQLQuery;
    cdsPedidoEMP_CODIGO: TStringField;
    cdsPedidoPED_VLTOTAL_LIQ: TFMTBCDField;
    cdsParcelasnparcela: TIntegerField;
    cdsPedidoPED_VLPARCELA: TFMTBCDField;
    cdsParcelasPED_VLTOTAL: TAggregateField;
    qCCusto: TSQLQuery;
    cdsPedidoPCX_CODIGO: TStringField;
    qPedidoPED_REGISTRO: TIntegerField;
    qPedidoPED_CODIGO: TStringField;
    qPedidoOPV_CODIGO: TIntegerField;
    qPedidoPED_DTENTRADA: TSQLTimeStampField;
    qPedidoREP_CODIGO: TStringField;
    qPedidoPED_COMIS1: TFMTBCDField;
    qPedidoPED_NUMERO_PED_CLIENTE: TStringField;
    qPedidoPED_CONTATO_CLIENTE: TStringField;
    qPedidoPED_SITUACAO: TStringField;
    qPedidoPED_OBSERVACAO: TBlobField;
    qPedidoCLI_CODIGO: TStringField;
    qPedidoBAN_CODIGO: TStringField;
    qPedidoPED_PARCELA: TIntegerField;
    qPedidoPED_INICIOPAG: TDateField;
    qPedidoPED_TIPOPARCELA: TStringField;
    qPedidoPED_VLTOTAL_BRUTO: TFMTBCDField;
    qPedidoFPG_REGISTRO: TIntegerField;
    qPedidoEMP_CODIGO: TStringField;
    qPedidoPED_VLTOTAL_LIQ: TFMTBCDField;
    qPedidoPED_VLPARCELA: TFMTBCDField;
    qPedidoPCX_CODIGO: TStringField;
    pParcelas: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    pinforPrincipais: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edSituacao: TDBText;
    edVendedor: TSgDbSearchCombo;
    edFPagto: TSgDbSearchCombo;
    EdPedidoNumero: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    edCodigoCliente: TDBEdit;
    SgDbSearchCombo1: TSgDbSearchCombo;
    CbBancos: TComboBoxRw;
    JvDBDateEdit1: TJvDBDateEdit;
    PesqCliente: TSgDbSearchCombo;
    edValorParcela: TDBEdit;
    DBEdit1: TDBEdit;
    edCCusto: TSgDbSearchCombo;
    rtipo: TJvDBComboBox;
    presultado: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edQtdeHoje: TEdit;
    edQtdeMes: TEdit;
    edQtdeMesAnt: TEdit;
    edPercAtingido: TMaskEdit;
    btPesqClinte: TBitBtn;
    ClienteF4: TSgDbSearchCombo;
    qPedidoPED_UND_CONSUMIDORA: TIntegerField;
    cdsPedidoPED_UND_CONSUMIDORA: TIntegerField;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    btnAgenda: TBitBtn;
    BitBtn1: TBitBtn;
    edVlrMesAnt: TJvValidateEdit;
    edMetaMes: TJvValidateEdit;
    edVlrHoje: TJvValidateEdit;
    edVlrMes: TJvValidateEdit;
    qPedidoPED_VLFATURADO: TFMTBCDField;
    cdsPedidoPED_VLFATURADO: TFMTBCDField;
    qPedidoCCT_CODIGO: TStringField;
    cdsPedidoCCT_CODIGO: TStringField;
    qContafinanceira: TSQLQuery;
    cbContaFinanceira: TSgDbSearchCombo;
    Label18: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure CalculoParcelasExit(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure cdsPedidoPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure btPesqClinteClick(Sender: TObject);
    procedure ClienteF4ButtonClick(Sender: TObject);
    procedure btnAgendaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure edVendedorSelect(Sender: TObject);
    procedure CbBancosSelect(Sender: TObject);

  private
   procedure buscaPedido ( const ped_codigo : string);
   procedure HabilitaCampos( hab : boolean; operacao:TOperacao );
   procedure GerarParcelas (const Parcela : integer ; const Tipo : TTipoParcela;const  InicioParcela : TDate;const Valor: Currency);
   procedure ValidarPedido;
   procedure BuscaPadraoCliente(cli_codigo :string);
   procedure GravaPadraoCliente(cli_codigo: string);
   procedure NumeroPedido;
   procedure GravarFatura;
   procedure EstornaFatura;
   procedure ExcluiFaturas;
   procedure Estatistica;
   procedure Comissao;
   procedure AtualizaContaFinanceira;
  public
    { Public declarations }
  end;

var
  frmPedidoDoacao: TfrmPedidoDoacao;

implementation

{$R *.dfm}
 uses uPesqtarefas, uPesqRenovacao, uClienteDao;
{ TfrmPedidoDoacao }

procedure TfrmPedidoDoacao.btPesqClinteClick(Sender: TObject);
begin
  inherited;
  ClienteF4.Button.Click;

end;

procedure TfrmPedidoDoacao.AtualizaContaFinanceira;
var
  CFCodigo : String;
begin
  CFCodigo := dbInicio.BuscaUmDadoSqlAsString('SELECT CCT_CODIGO FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(PesqCliente.IdRetorno) );
  if (CFCodigo = '') or (CFCodigo <> cbContaFinanceira.idRetorno )then
  begin
    if uteis.Confirmacao('Conta Financeira Atual Diverge da Cadastrada no Cliente. ' + #13 + #13 + 'Atualiza a Conta Financeira do Cliente?') <> mrYes then
      Exit;
    ExecSQL('UPDATE CLI0000 SET CCT_CODIGO = ' + QuotedStr(cbContaFinanceira.idRetorno) + ' WHERE CLI_CODIGO = ' + QuotedStr(PesqCliente.IdRetorno) );
  end;

end;

procedure TfrmPedidoDoacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if not assigned(FrmPesqRenovacao) then
   FrmPesqRenovacao := TFrmPesqRenovacao.Create(Application);
 FrmPesqRenovacao.Show;
end;

procedure TfrmPedidoDoacao.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPedidoDoacao.btnAgendaClick(Sender: TObject);
begin
  inherited;
 if not assigned(PesqTarefas) then
   PesqTarefas := tPesqTarefas.Create(application);
 PesqTarefas.Show;
 end;

procedure TfrmPedidoDoacao.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsPedidoPED_SITUACAO.AsString = 'T' then
    GeraException('Pedido já faturado' );
  cdsPedido.Edit;
  HabilitaCampos(True, topEditar);
end;

procedure TfrmPedidoDoacao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  cdsPedido.CancelUpdates;
  HabilitaCampos(false, topMostrar);
end;

procedure TfrmPedidoDoacao.BtnConsultarClick(Sender: TObject);
var sPedidoBusca : string;
 tp: TTipoParcela;
begin
  inherited;
  frmPesqDoacao := TfrmPesqDoacao.Create(Application);
  try
     frmPesqDoacao.ShowModal;
     if frmPesqDoacao.modalresult=mrOk then
     begin
         sPedidoBusca:=frmPesqDoacao.idRetorno;
          BuscaPedido(sPedidoBusca);

        case rTipo.ItemIndex of
          0 : tp:= tpMensal;
          1 : tp:= tpBimestral;
          2 : tp:= tpTrimestral;
          3 : tp:= tpSemestral;
          4 : tp:= tpAnual;
          5 : tp:= tpUnica;

        end;

        GerarParcelas(cdsPedidoPED_PARCELA.AsInteger,tp,cdsPedidoPED_INICIOPAG.AsDateTime, cdsPedidoPED_VLPARCELA.AsFloat);

     end;
     HabilitaCampos(true, topMostrar);
  finally
     FreeAndNil(frmPesqDoacao);
  end;
end;

procedure TfrmPedidoDoacao.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  //tem fatura liquidada
  if BuscaUmDadoSqlAsInteger('SELECT * FROM FAT_PC01 pc WHERE '+
                             ' ( FPC_STATUS = ''Liquidada'' or FPC_STATUS_REMESSA = ''S''  )'+
                              ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) +
                             ' and EXISTS '+
                             ' (SELECT 1 FROM FAT0000 fat WHERE fat.FAT_CODIGO = pc.FAT_CODIGO '+
                             '   AND PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString)+
                                ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) +   ')' ) > 0 then
  begin
     if (MessageDlg('A doação será cancelada, e somente as faturas não liquidadas e sem remessas serão excluidas. Tem certeza disso ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
       try
        BeginTransaction;
        cdsPedido.Edit;
        cdsPedidoPED_SITUACAO.AsString := 'C';
        cdsPedido.Post;
        cdsPedido.ApplyUpdates(0);
        ExcluiFaturas;
        HabilitaCampos(true, topMostrar);
        Estatistica;
        CommitTransaction;
       except
       on E: Exception do
         begin
           RollBackTransaction;
           raise Exception.Create(e.Message);
         end;
       end;
     end;
  end
  else
  if (MessageDlg('A doação será cancelada e retirada do faturamento. Tem certeza disso ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    try
      BeginTransaction;
      cdsPedido.Edit;
      cdsPedidoPED_SITUACAO.AsString := 'C';
      cdsPedido.Post;
      cdsPedido.ApplyUpdates(0);
      EstornaFatura;
      Aviso('Estorno da faturas realizadas com sucesso.');
      HabilitaCampos(true, topMostrar);
      Estatistica;
      CommitTransaction;
    except
     on E: Exception do
     begin
       RollBackTransaction;
       raise Exception.Create(e.Message);
     end;
    end;
  end;
end;

procedure TfrmPedidoDoacao.BtnGravarClick(Sender: TObject);
begin
  inherited;
  ValidarPedido;
  BeginTransaction;
  try
    AtualizaContaFinanceira;
    if not VarIsNull(cdsParcelasped_VLTOTAL.value) then
    begin
       cdsPedidoPED_VLTOTAL_LIQ.AsBCD := VarToBcd(cdsParcelasped_VLTOTAL.Value);
       cdsPedidoPED_VLTOTAL_BRUTO.AsBCD:= VarToBcd(cdsParcelasped_VLTOTAL.Value);
    end;
    if cdsPedidoPED_REGISTRO.IsNull then
      cdsPedidoPED_REGISTRO.AsInteger := GetNextSequence('GEN_PEDIDO');
    if cdsPedidoPED_DTENTRADA.IsNull then
      cdsPedidoPED_DTENTRADA.AsDateTime := now;
    cdsPedidoPED_VLTOTAL_LIQ.AsBCD := cdsPedidoPED_VLTOTAL_BRUTO.AsBCD;
    cdsPedidoPED_VLFATURADO.AsBCD  := cdsPedidoPED_VLTOTAL_BRUTO.AsBCD;
    cdsPedidoEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
    cdsPedidoPED_SITUACAO.AsString :=  'F';
    cdsPedido.Post;
    cdsPedido.ApplyUpdates(0);
    GravaPadraoCliente(cdsPedidoCLI_CODIGO.AsString);
    GravarFatura;
    CommitTransaction;
    Estatistica;
  except
   on E: Exception do
   begin
     RollBackTransaction;
     raise Exception.Create(e.Message);
   end;
  end;
  HabilitaCampos(False, topMostrar);
end;

procedure TfrmPedidoDoacao.BtnNovoClick(Sender: TObject);
begin
  inherited;
  HabilitaCampos(True,topNovo);
  buscaPedido('0');

  cdsPedido.Insert;
  NumeroPedido;
  OpenAux('SELECT OPV_CODIGO, OPV_DESCRICAO   FROM OPV0000 WHERE OPV_TIPOPADRAO = ''S'' ');
  if not qAux.IsEmpty then
    cdsPedidoOPV_CODIGO.AsString := qAux.FieldByName('OPV_CODIGO').AsString;
  rTipo.ItemIndex := 0;
  cdsPedidoPED_TIPOPARCELA.AsString := 'Mensal';
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
   cdsPedidoREP_CODIGO.AsString :=dbInicio.Empresa.fCODIGO_REPRES;
  end;
  Comissao;
  if edCodigoCliente.CanFocus then
    edCodigoCliente.SetFocus;
  //PesqCliente.Button.Click;   NAO MAIS
  if PesqCliente.idretorno <> '' then
     edValorParcela.SetFocus;

end;
// padrões dos clientes
procedure TfrmPedidoDoacao.BuscaPadraoCliente(cli_codigo: string);
begin
  if cli_codigo <> '' then
  begin
    OpenAux2('SELECT FPG_REGISTRO, BAN_CODIGO, PCX_CODIGO, CCT_CODIGO, REP_CODIGO, CLI_UND_CONSUMIDORA FROM CLI0000 where cli_codigo = '+ QuotedStr(cli_codigo));
    if not qAux2.IsEmpty then
    begin
      if (not qAux2.FieldByName('ban_codigo').IsNull) or (qAux2.FieldByName('ban_codigo').AsString <> '') then
        cdsPedidoBAN_CODIGO.AsString := qAux2.FieldByName('ban_codigo').AsString;
      if (not qAux2.FieldByName('FPG_REGISTRO').IsNull) or (qAux2.FieldByName('FPG_REGISTRO').AsInteger <> 0 )  then
        cdsPedidoFPG_REGISTRO.AsInteger := qAux2.FieldByName('FPG_REGISTRO').AsInteger;
      if qaux2.FieldByName('PCX_CODIGO').AsString <> '' then
      begin
        cdsPedidoPCX_CODIGO.AsString := qaux2.FieldByName('PCX_CODIGO').AsString;
        if BuscaUmDadoSqlAsString('SELECT PCX_TERMINADO from PCX0000 T1 WHERE PCX_CODIGO = ' + QuotedStr(qaux2.FieldByName('PCX_CODIGO').AsString) ) <> 'N' then
        begin
          MessageDlg('O Centro de Custo deste Cliente encontra-se Encerrado. Escolha outro, por favor', mtWarning, [mbOk], 0);
          cdsPedidoPCX_CODIGO.AsString := '';
        end;


      end;
      if qaux2.FieldByName('CLI_UND_CONSUMIDORA').AsInteger <> 0  then
        cdsPedidoPED_UND_CONSUMIDORA.AsInteger := qaux2.FieldByName('CLI_UND_CONSUMIDORA').AsInteger;

      cbContaFinanceira.idRetorno := qAux2.FieldByName('CCT_CODIGO').AsString;
      edVendedor.idRetorno := qAux2.FieldByName('REP_CODIGO').AsString;
    end;

  end;

end;

procedure TfrmPedidoDoacao.buscaPedido  ( const ped_codigo : string);
var sql: string;
begin
 cdsPedido.Close;
 sql := 'SELECT PE.PED_REGISTRO, PE.PED_CODIGO, PE.OPV_CODIGO, PE.CLI_CODIGO,  '+
        'PE.PED_DTENTRADA, PE.REP_CODIGO,  PE.PED_COMIS1, PE.PED_NUMERO_PED_CLIENTE, '+
        'PE.PED_CONTATO_CLIENTE, PED_SITUACAO, PE.PED_OBSERVACAO, PE.BAN_CODIGO, PE.PED_PARCELA, '+
        'PE.PED_INICIOPAG, PE.PED_TIPOPARCELA, PED_VLTOTAL_BRUTO,pe.FPG_REGISTRO,                 '+
        'pe.emp_codigo, pe.PED_VLTOTAL_LIQ, PED_VLPARCELA, pe.PCX_CODIGO, pe.CCT_CODIGO, PED_UND_CONSUMIDORA, '+
        ' PED_VLFATURADO '+
        'FROM PED0000 PE                                                                         '+
        ' where ped_codigo =  '+ QuotedStr(ped_codigo)  ;
 qPedido.CommandText := SQL;

 cdsPedido.Open;


end;

procedure TfrmPedidoDoacao.CalculoParcelasExit(Sender: TObject);
var tp: TTipoParcela;
begin
  inherited;
  if (cdsPedidoPED_PARCELA.AsInteger = 0) or (cdsPedidoPED_PARCELA.IsNull) then
     exit;
  if (cdsPedidoPED_INICIOPAG.AsDateTime = 0) or (cdsPedidoPED_INICIOPAG.IsNull)  then
     exit;
  if cdsPedidoPED_TIPOPARCELA.AsString = '' then
     exit;
  if cdsPedidoPED_VLPARCELA.AsFloat<= 0 then
     exit;
  case rTipo.ItemIndex of
    0 : tp:= tpMensal;
    1 : tp:= tpBimestral;
    2 : tp:= tpTrimestral;
    3 : tp:= tpSemestral;
    4 : tp:= tpAnual;
    5 : tp:= tpUnica;

  end;

  GerarParcelas(cdsPedidoPED_PARCELA.AsInteger,tp,cdsPedidoPED_INICIOPAG.AsDateTime, cdsPedidoPED_VLPARCELA.AsFloat);
end;

procedure TfrmPedidoDoacao.CbBancosSelect(Sender: TObject);
begin
  inherited;
  if CbBancos.CDS.active then
    edFPagto.idRetorno := CbBancos.CDS.FieldByName('FPG_REGISTRO').AsString
  else
    edFPagto.idRetorno := '';
end;

procedure TfrmPedidoDoacao.cdsPedidoPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
     if Sender.AsString = 'C' then
     begin
          Text := 'CANCELADO'
     end
     else
     if sender.AsString = 'P' then
     begin
          Text := 'FATURADO';
     end
     else
     if sender.AsString = 'F' then
     begin
          Text := 'À FATURAR';
     end
     else
     if sender.AsString = 'T' then
     begin
          Text := 'FATURADO';
     end
     else

end;

procedure TfrmPedidoDoacao.ClienteF4ButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TfrmPedidoDoacao.Comissao;
begin
//  if (cdsPedidoPED_CODIGO.AsString <> '') and (cdsPedidoREP_CODIGO.AsString <> '') then
 if (cdsPedidoPED_CODIGO.AsString <> '') and (edVendedor.idRetorno <> '') then
 begin
//  OpenAux('select REP_COMISSAO from REP0000 where rep_codigo = '+ QuotedStr(cdsPedidoREP_CODIGO.AsString) );
  if cdsPedido.State = dsBrowse then
    cdsPedido.Edit;
  OpenAux('select REP_COMISSAO from REP0000 where rep_codigo = '+ QuotedStr(edVendedor.idRetorno) );
  cdsPedidoPED_COMIS1.AsFloat := qAux.FieldByName('REP_COMISSAO').AsFloat;
 end;

end;

procedure TfrmPedidoDoacao.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  Comissao;
end;

procedure TfrmPedidoDoacao.edVendedorSelect(Sender: TObject);
begin
  inherited;
  Comissao;
end;

procedure TfrmPedidoDoacao.Estatistica;
var perc : double;
begin
  if NOT MatchStr(dbInicio.Empresa.fCODIGO_REPRES,['000','']) then
  begin
    //hoje
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor  ' +
            ' FROM PED0000 p '+
            '  JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            '  WHERE REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES) +
            ConcatSe(' AND p.', dbinicio.ExclusivoSql('PEDIDOS')) +
            ' AND PED_SITUACAO <> ''C'' '+
            '  AND CAST(PED_DTENTRADA AS DATE)   = ' + DateToSQL(DATE));

    edQtdeHoje.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrHoje.Value := qAux.FieldByName('valor').AsFloat;

    //mes
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor  ' +
            ' FROM PED0000 p '+
            ' JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            ' WHERE REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES) +
            ' AND PED_SITUACAO <> ''C'' '+
              ConcatSe(' AND p.',  dbinicio.ExclusivoSql('PEDIDOS')) +
            ' AND EXTRACT (month FROM PED_DTENTRADA ) = ' + IntToStr(MonthOfTheYear(date)) +
            ' AND EXTRACT (YEAR FROM PED_DTENTRADA ) =  '+ IntToStr(YearOf(date))        );
    edQtdeMes.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrMes.Value := qAux.FieldByName('valor').AsFloat;

    //mes PASSADO
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor  ' +
            ' FROM PED0000 p '+
            ' JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            ' WHERE REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES) +
              ConcatSe(' AND p.',  dbinicio.ExclusivoSql('PEDIDOS')) +
            ' AND PED_SITUACAO <> ''C'' '+
            ' AND EXTRACT (month FROM PED_DTENTRADA ) = ' + IntToStr(MonthOf(IncMonth(date,-1))) +
            ' AND EXTRACT (YEAR FROM PED_DTENTRADA ) =  '+ IntToStr(YearOf(IncMonth(date,-1))) );
    edQtdeMesAnt.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrMesAnt.Value := qAux.FieldByName('valor').AsFloat;

    OpenAux('select REP_QUOTA from REP0000 where rep_codigo = '+ QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)+
    ConcatSe(' and ',DBInicio.ExclusivoSql('REPRESENTANTES'))    );
    if qAux.FieldByName('REP_QUOTA').AsFloat > 0 then
    begin
      edMetaMes.Value := qAux.FieldByName('REP_QUOTA').AsFloat;
      if edVlrMes.Value > 0  then
        perc  := (edVlrMes.Value*100 / edMetaMes.Value )
      else
        perc := 0 ;
      perc := RoundTo(perc,-2);
      edPercAtingido.Text := FloatToStr(perc) + ' %';

      if perc < 30 then
        edPercAtingido.Font.Color := clRed
      else if (perc > 30) and (perc < 60) then
        edPercAtingido.Font.Color := clBlack
      else if (perc > 60) and (perc < 100) then
        edPercAtingido.Font.Color := clGreen
      else if perc >= 100 then
      begin
        edPercAtingido.Color:= clHotLight;
        edPercAtingido.Font.Color := clWhite
      end;
    end;
  end
  else
  begin  /// sem representante
    //hoje
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor ' +
            '  FROM PED0000 p'+
            '  JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            '  WHERE  PED_SITUACAO <> ''C'' '+
            ConcatSe(' AND p.', dbinicio.ExclusivoSql('PEDIDOS')) +
            '  AND CAST(PED_DTENTRADA AS DATE)   = ' + DateToSQL(DATE));

    edQtdeHoje.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrHoje.Value := qAux.FieldByName('valor').AsFloat;

    //mes
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor  ' +
            ' FROM PED0000 p'+
            ' JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            ' WHERE PED_SITUACAO <> ''C'' '+
               ConcatSe(' AND p.', dbinicio.ExclusivoSql('PEDIDOS')) +
            ' AND EXTRACT (month FROM PED_DTENTRADA ) = ' + IntToStr(MonthOfTheYear(date)) +
            ' AND EXTRACT (YEAR FROM PED_DTENTRADA ) =  '+ IntToStr(YearOf(date))        );
    edQtdeMes.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrMes.Value := qAux.FieldByName('valor').AsFloat;

    //mes PASSADO
    OpenAux(' SELECT cast(COUNT (*) as integer) quantde, sum(PED_VLTOTAL_BRUTO) valor  FROM PED0000 p '+
            ' JOIN OPV0000 o ON (o.OPV_CODIGO = p.OPV_CODIGO AND o.OPV_META_VENDEDOR = ''S'') ' +
            ' WHERE  PED_SITUACAO <> ''C'' '+
            ConcatSe(' AND p.', dbinicio.ExclusivoSql('PEDIDOS')) +
            ' AND EXTRACT (month FROM PED_DTENTRADA ) = ' + IntToStr(MonthOf(IncMonth(date,-1))) +
            ' AND EXTRACT (YEAR FROM PED_DTENTRADA ) =  '+ IntToStr(YearOf(IncMonth(date,-1))) );
    edQtdeMesAnt.Text := IntToStr(qAux.FieldByName('quantde').AsInteger);
    edVlrMesAnt.Value := qAux.FieldByName('valor').AsFloat;
    OpenAux('select SUM(COALESCE(REP_QUOTA,0)) AS REP_QUOTA from REP0000 WHERE REP_SITUACAO =''A'''  +
    ConcatSe(' and ',DBInicio.ExclusivoSql('REPRESENTANTES'))
    );
    if qAux.FieldByName('REP_QUOTA').AsFloat > 0 then
    begin
      edMetaMes.Value := qAux.FieldByName('REP_QUOTA').AsFloat;
      if edVlrMes.Value > 0  then
        perc  := (edVlrMes.Value*100 / edMetaMes.Value )
      else
        perc := 0 ;
      perc := RoundTo(perc,-2);
      edPercAtingido.Text := FloatToStr(perc) + ' %';

      if perc < 30 then
        edPercAtingido.Font.Color := clRed
      else if (perc > 30) and (perc < 60) then
        edPercAtingido.Font.Color := clBlack
      else if (perc > 60) and (perc < 100) then
        edPercAtingido.Font.Color := clGreen
      else if perc >= 100 then
      begin
        edPercAtingido.Color:= clHotLight;
        edPercAtingido.Font.Color := clWhite
      end;
    end;

  end;
end;

procedure TfrmPedidoDoacao.EstornaFatura;
begin
 //NÃO ESTORNA AS FATURAS JÁ ENVIADAS AO BANCO
  OpenAux('SELECT FAT_CODIGO FROM FAT0000 WHERE PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString) +
   ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) );
  if NOT qAux.IsEmpty then
  begin
      ExecSql('DELETE FROM FAT_PC01 WHERE FAT_CODIGO = '+QuotedStr(qAux.FieldByName('FAT_CODIGO').AsString) +
              '  AND FPC_STATUS_REMESSA = ''N''  ' +
               ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) );

  end;
  OpenAux2('SELECT FAT_CODIGO FROM FAT_PC01 WHERE FAT_CODIGO = '+QuotedStr(qAux.FieldByName('FAT_CODIGO').AsString) +
          '  AND FPC_STATUS_REMESSA = ''S''  ' +
           ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) );
  if qAux2.IsEmpty then
  begin
    ExecSql('DELETE FROM FAT0000 WHERE PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString) +
           ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) );
    ExecSql('DELETE FROM NF0001 WHERE PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString)+
   ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER')) );
  end;




end;

procedure TfrmPedidoDoacao.ExcluiFaturas;
begin
  OpenAux('SELECT FAT_CODIGO FROM FAT0000 WHERE PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString) +
     ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') ));
  if NOT qAux.IsEmpty then
  begin
    ExecSql(' UPDATE FAT_PC01 '+
            ' SET FPC_SITPAG = ''X'', '+
            '    FPC_STATUS = ''Excluída'', '+
            '    FPC_DATA_EXCLUSAO = CURRENT_DATE, '+
            '    FPC_HORA_EXCLUSAO = CURRENT_TIME, '+
            '    FPC_MOTIVO_EXCLUSAO = ''DOACAO CANCELADA'', '+
            '    FPC_EXCLUSAO = ''S'' '+
            ' WHERE FPC_STATUS = ''Pendente'' '+
            '  AND FPC_STATUS_REMESSA = ''N''  ' +
            '  AND FAT_CODIGO =  '+QuotedStr(qAux.FieldByName('FAT_CODIGO').AsString) +
            ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') )  );

  end;
//  ExecSql('  UPDATE FAT0000 '+
//          ' SET FAT_EXCLUSAO = ''S'', '+
//          '     FAT_DATA_EXCLUSAO = CURRENT_DATE, '+
//          '     FAT_HORA_EXCLUSAO = CURRENT_TIME, '+
//          '     FAT_MOTIVO_EXCLUSAO =  ''DOACAO CANCELADA'' '+
//          ' WHERE PED_CODIGO = '+QuotedStr(cdsPedidoPED_CODIGO.AsString)+
//           ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') )  );



end;

procedure TfrmPedidoDoacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cdsPedido.State in dsEditModes) and (cdsPedidoPED_SITUACAO.AsString <> 'T') then
    GeraException('Salve antes de fechar');
  Action := CaFree;
end;

procedure TfrmPedidoDoacao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := True;
end;

procedure TfrmPedidoDoacao.FormCreate(Sender: TObject);
begin
  inherited;
  if (dbInicio.Empresa.fCODIGO_REPRES <> '000') and (dbInicio.Empresa.fCODIGO_REPRES <> EmptyStr) then
     PesqCliente.LookupWhere := 'REP_CODIGO = '+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES);
  HabilitaCampos(False, topNulo);
  {
  edQtdeMes.Visible := BuscaUmDadoSqlAsString('SELECT USU_TIPO_USUARIO FROM USUARIO WHERE usu_codigo = ' + DBInicio.Usuario.CODIGO) = 'A';
  edQtdeHoje.Visible := edQtdeMes.Visible;
  edVlrMes.Visible := edQtdeMes.Visible;
  edVlrHoje.Visible := edQtdeMes.Visible;
  label13.Visible := edQtdeMes.Visible;
  label14.Visible := edQtdeMes.Visible;
  }
  Estatistica;
end;

procedure TfrmPedidoDoacao.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPedidoDoacao := nil;
end;

procedure TfrmPedidoDoacao.FormResize(Sender: TObject);
begin
  inherited;
 Self.Height := 550;
 SELF.Width := 1018;
end;

procedure TfrmPedidoDoacao.FormShow(Sender: TObject);
begin
  // inherited;
  cbContaFinanceira.WherePersonalizado := ' WHERE CCT_CONTA = ''E'' AND CCT_STATUS = ''L''  ';
end;

procedure TfrmPedidoDoacao.GerarParcelas(const Parcela: integer; const Tipo: TTipoParcela; const InicioParcela: TDate; const Valor: Currency);
var i : integer;
   DataParcela : TDate;
begin
 if not cdsparcelas.Active then
   cdsParcelas.CreateDataSet;
 cdsParcelas.EmptyDataSet;
 DataParcela := InicioParcela;
 for I := 1 to parcela do
 begin
   cdsParcelas.Insert;

   cdsParcelasDataParcela.AsDateTime := DataParcela;
   cdsParcelasValorParcela.AsFloat := Valor;
   cdsParcelasnparcela.AsInteger := i;
   cdsParcelas.Post;

   case tipo of

     tpMensal:  DataParcela:=  IncMonth(DataParcela);
     tpBimestral: DataParcela := IncMonth(DataParcela,2);
     tpTrimestral: DataParcela := IncMonth(DataParcela,3);
     tpSemestral: DataParcela := IncMonth(DataParcela,6);
     tpAnual: DataParcela := IncMonth(DataParcela,12);
   end;

 end;
end;

procedure TfrmPedidoDoacao.GravaPadraoCliente(cli_codigo: string);
var sql :string;
begin
    sql := 'UPDATE CLI0000 SET '+
          ' FPG_REGISTRO =  ' + IntToStr(cdsPedidoFPG_REGISTRO.AsInteger) +  ',' +
          ' BAN_CODIGO = '+QuotedStr(cdsPedidoBAN_CODIGO.AsString)+ ' ,'+
          ' PCX_CODIGO = '+QuotedStr(cdsPedidoPCX_CODIGO.AsString ) +' , ' +
          ' CLI_UND_CONSUMIDORA = '+ IntToStr(cdsPedidoPED_UND_CONSUMIDORA.AsInteger)+ ', ' +
          ' CLI_DTULTCOM = ' + DateToSQL(now) + ', ' +
          ' CLI_VL_ULTCOMP = ' + FloatToSQL(cdsPedidoPED_VLTOTAL_BRUTO.AsFloat) +
          ' where cli_codigo = '+ QuotedStr(cli_codigo);

  ExecSql(SQL);
end;

procedure TfrmPedidoDoacao.GravarFatura;
var sql : string;
  numero_fat, numero_pc : string;
  clone : TClientDataSet;
  Banco_id, nf_reg : Integer;
  comissaoVendedor: double;
begin
  try
    //GRAVAR FATURA
  //  BeginTransaction;
    numero_fat := strzero(SequenciadorPRC( dbConn, dbInicio.EMPRESA.EMP_CODIGO, 'NF0001', 'NF_NOTANUMBER_S', 0),6);
    if BuscaUmDadoSqlAsFloat('SELECT OPV_COMISSAO_META_VENDEDOR FROM OPV0000 WHERE OPV_CODIGO = ' + cdsPedidoOPV_CODIGO.AsString) > 0 then
      comissaoVendedor := BuscaUmDadoSqlAsFloat('SELECT OPV_COMISSAO_META_VENDEDOR FROM OPV0000 WHERE OPV_CODIGO = ' + cdsPedidoOPV_CODIGO.AsString)
    else
    begin
      Comissao; // atualiza a comissão por via das dúvidas...
      comissaoVendedor := cdsPedidoPED_COMIS1.AsFloat;
    end;
    sql:= 'insert into FAT0000 (fat_codigo, CLI_CODIGO, OPV_CODIGO, REP_CODIGO, PED_CODIGO, PCX_CODIGO, CCT_CODIGO, '+
          '  FAT_PREVISAO, FAT_VL_LIQ, FAT_VLFAT, FAT_COMIS1,  FAT_DTEMIS,  EMP_CODIGO, FAT_EXCLUSAO ) ' +
          ' Values ( '+
           QuotedStr(numero_fat)+ ','+
           QuotedStr(cdsPedidoCLI_CODIGO.AsString)+ ','+
           IntToStr(cdsPedidoOPV_CODIGO.AsInteger) + ','+
           QuotedStr(cdsPedidoREP_CODIGO.AsString) + ','+
           QuotedStr(cdsPedidoPED_CODIGO.AsString) +','+
           QuotedStr(cdsPedidoPCX_CODIGO.AsString) + ','+
           QuotedStr(cdsPedidoCCT_CODIGO.AsString) + ','+
           QuotedStr('N') + ','+
           FloatToSQL(cdsPedidoPED_VLTOTAL_BRUTO.AsFloat) +','+
           FloatToSQL(cdsPedidoPED_VLTOTAL_BRUTO.AsFloat) +','+
           FloatToSQL(comissaoVendedor) +',' +
           DateToSQL( now)+ ','+
           QuotedStr(dbinicio.Empresa.EMP_CODIGO) + ','+
           QuotedStr('N')+')';
    ExecSql(sql);
    //parcelas
    clone := TClientDataSet.Create(Self);
    banco_id:= BuscaUmDadoSqlAsInteger( 'select BAN_COD_APELIDO from ban0000 where ban_codigo = '+
                     QuotedStr(cdsPedidoBAN_CODIGO.AsString)+ConcatSe(' and ', dbinicio.ExclusivoSql('BANCOS')));
    try
     clone.CloneCursor(cdsParcelas,true);
     clone.First;
     while not clone.Eof do
     begin

       numero_pc:= IntToStr(GetNextSequence( 'GEN_FAT_PC01_REGISTRO'));
       sql:= ' INSERT INTO FAT_PC01 (FAT_REGISTRO, FAT_CODIGO,FPC_NUMER, REP_CODIGO, BAN_CODIGO, PCX_CODIGO, CCT_CODIGO, FPC_DTEMIS, FPC_NPARCELAS, '+
              ' FPC_COBTIPO, FPC_TIPODOC, FPC_SITPAG, FPC_STATUS, FPC_VENCTO, FPC_VLPARC, CLI_CODIGO, FPC_IMPDUP, EMP_CODIGO, FPC_PREVISAO, '+
              ' BAN_COD_APELIDO, FPC_STATUS_REMESSA, FPC_DESCONTADO, FPC_EXCLUSAO, FPC_CONFIRMADEVOLUCAO, PED_UND_CONSUMIDORA ) '+
              ' VALUES ('+
                 numero_pc + ','+
                 QuotedStr(numero_fat)+ ','+
                 QuotedStr(strzero(IntToStr(clone.FieldByName('nparcela').AsInteger),2))  +','+
                 QuotedStr(cdsPedidoREP_CODIGO.AsString) + ','+
                 QuotedStr(cdsPedidoBAN_CODIGO.AsString) + ','+
                 QuotedStr(cdsPedidoPCX_CODIGO.AsString) + ','+
                 QuotedStr(cdsPedidoCCT_CODIGO.AsString) + ','+
                 DateToSQL( now)+ ','+
                 IntToStr(cdsPedidoPED_PARCELA.AsInteger)+ ','+
                 QuotedStr('CR') + ',' +
                 QuotedStr('BL') + ','+
                 QuotedStr('P')+ ',' +
                 QuotedStr('Pendente') + ','    +
                 DateToSQL(clone.FieldByName('DataParcela').AsDateTime) + ','+
                 FloatToSQL(clone.FieldByName('ValorParcela').AsFloat) + ','+
                 QuotedStr(cdsPedidoCLI_CODIGO.AsString)+ ','+
                 QuotedStr('N') + ','+
                 QuotedStr(DBInicio.Empresa.EMP_CODIGO)  + ',' +
                 QuotedStr('N') + ','+
                 IntToStr(Banco_id) + ',' +
                 QuotedStr('N') +','+ QuotedStr('N') +','+ QuotedStr('N') +',' + QuotedStr('N') +   ','+
                 IntToStr(cdsPedidoPED_UND_CONSUMIDORA.AsInteger) + ')';


       ExecSql(sql);
       clone.Next;
     end;


    finally
      clone.Free;
    end;
    if not (cdsPedido.State in dsEditModes) then
        cdsPedido.Edit;
    cdsPedidoPED_SITUACAO.AsString :=  'T';
    cdsPedido.Post;
    cdsPedido.ApplyUpdates(0);
    //nota fiscal

    nf_reg :=  GetNextSequence('GEN_NF_REGISTRO');
    sql := 'INSERT INTO NF0001 (nf_registro, NF_NOTANUMBER, NF_EMISSAO, NF_SAIDA, PED_CODIGO, CLI_CODIGO, NF_TOT_NOTA, NF_TOT_PROD, '+
           ' NF_CANCELADA, EMP_CODIGO, OPV_CODIGO, NF_TIPODOC, NF_VENDA_FATURADA) '+
           ' VALUES ('+
            IntToStr(nf_reg) + ','+
            QuotedStr(numero_fat)+ ','+
            DateToSQL(NOW) + ',' +
            DateToSQL(NOW) + ',' +
            QuotedStr(cdsPedidoPED_CODIGO.AsString) +','+
            QuotedStr(cdsPedidoCLI_CODIGO.AsString)+ ','+
            FloatToSQL(cdsPedidoPED_VLTOTAL_BRUTO.AsFloat) +','+
            FloatToSQL(cdsPedidoPED_VLTOTAL_BRUTO.AsFloat) +','+
            QuotedStr('N') +','+
            QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ','+
            IntToStr(cdsPedidoOPV_CODIGO.AsInteger ) + ','+
            QuotedStr('BL') + ','+
            QuotedStr('S') +' )';

    ExecSql(SQL);
    Aviso('FATURADO - Parcelas gravadas com sucesso.');
    HabilitaCampos(false, topMostrar);
//    CommitTransaction;
  except
   on e: exception do
   begin
  //   RollBackTransaction;
     raise Exception.Create(e.Message);
   end;

  end;
end;

procedure TfrmPedidoDoacao.HabilitaCampos(hab: boolean; operacao:TOperacao);
begin
  pinforPrincipais.Enabled:= hab;
  pParcelas.Enabled := hab;
  case operacao of
    topNovo:
      begin
        BtnNovo.Enabled := False;
        BtnAlterar.Enabled := False;
        BtnExcluir.Enabled := False;
        BtnGravar.Enabled := True;
        BtnCancelar.Enabled := true;
        Bit_Sair.Enabled := False;
        BtnConsultar.Enabled := False;
        if  cdsParcelas.Active  then
             cdsParcelas.EmptyDataSet;
        DBEdit1.Clear;
      end;
    topEditar:
     begin
        BtnNovo.Enabled := False;
        BtnAlterar.Enabled := False;
        BtnExcluir.Enabled := False;
        BtnGravar.Enabled := True;
        BtnCancelar.Enabled := true;
        Bit_Sair.Enabled := False;
        BtnConsultar.Enabled := False;

     end;
    topMostrar:
     begin
        BtnNovo.Enabled := True;
        BtnAlterar.Enabled := cdsPedidoPED_REGISTRO.AsString <> '';
        BtnExcluir.Enabled := (cdsPedidoPED_REGISTRO.AsString <> '') and (cdsPedidoPED_SITUACAO.AsString <> 'C') ;
        BtnGravar.Enabled := False;
        BtnCancelar.Enabled := False;
        Bit_Sair.Enabled := True;
        BtnConsultar.Enabled := True;
        if (cdsPedidoPED_REGISTRO.AsString = '') and  cdsParcelas.Active  then
             cdsParcelas.EmptyDataSet;

    end;
    topNulo:
     begin
        BtnNovo.Enabled := True;
        BtnAlterar.Enabled := False;
        BtnExcluir.Enabled := False;
        BtnGravar.Enabled := False;
        BtnCancelar.Enabled := false;
        Bit_Sair.Enabled := true;
        BtnConsultar.Enabled := True;

     end;
  end;
end;

procedure TfrmPedidoDoacao.NumeroPedido;
var fCodEmSeqUnica :string;
begin
  if dbInicio.empresa.fSeqUnicaPed then
     fCodEmSeqUnica:='001'
  Else
     fCodEmSeqUnica:=dbInicio.Empresa.EMP_CODIGO;
  if (dbInicio.Empresa.fPedNumeracaoAutomatica) then //Automatico
  begin
    cdsPedidoPED_CODIGO.ReadOnly := False;
    EdPedidoNumero.TabStop := False;
    cdsPedidoPED_CODIGO.AsString := StrZero( SequenciadorPRC ( dbInicio.MainDB, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0 ) , 6 );

  end;

end;

procedure TfrmPedidoDoacao.PesqClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  inherited;
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           pesqCliente.idRetorno := tcr.IDRetorno;
    finally
         FreeAndNil(tcr);
    end;
end;

procedure TfrmPedidoDoacao.PesqClienteSelect(Sender: TObject);
var
  sMsg : string;
begin
  inherited;
  if (PesqCliente.idRetorno <> '') and (cdsPedido.state = dsInsert ) then
    BuscaPadraoCliente(PesqCliente.idRetorno);

  if (PesqCliente.idRetorno <> '') and (not ClienteAtivo(PesqCliente.idRetorno,sMsg)) then
  begin
    uteis.aviso (Pchar(sMsg));
    PesqCliente.idRetorno := '';
    PesqCliente.SetFocus;
  end;

end;

procedure TfrmPedidoDoacao.rgTipoChange(Sender: TObject);
begin
  inherited;
  if rTipo.ItemIndex =  5 then
    cdsPedidoPED_PARCELA.AsInteger := 1;

end;

procedure TfrmPedidoDoacao.ValidarPedido;
begin
  if cdsPedidoPED_PARCELA.AsInteger > 99 then
     GeraException('Número máximo de parcelas é 99');

  if cdsPedidoCLI_CODIGO.AsString = '' then
     GeraException('Informe Cliente');
  if cdsPedidoREP_CODIGO.AsString = '' then
     GeraException('Informe o vendedor ');
  if (cdsPedidoPED_PARCELA.AsInteger = 0) or (cdsPedidoPED_PARCELA.IsNull) then
    GeraException('Informe a quantidade de parcelas' );
  if (cdsPedidoPED_INICIOPAG.AsDateTime = 0) or (cdsPedidoPED_INICIOPAG.IsNull)  then
    GeraException('Informe o início do(s) pagamento(s)');
  if cdsPedidoPED_TIPOPARCELA.AsString = '' then
   GeraException('Informe o tipo de parcelas');
//  if cdsPedidoPED_VLTOTAL_BRUTO.AsFloat <=0  then
//   GeraException('Informe um valor maior que zero');
  if cdsPedidoPED_VLPARCELA.AsFloat <=0 then
    GeraException('Informe o valor da parcela');
  if cdsPedidoBAN_CODIGO.AsString = '' then
    GeraException('Informe o Banco');
  if (cdsPedidoPED_UND_CONSUMIDORA.AsInteger = 0)  or (cdsPedidoPED_UND_CONSUMIDORA.IsNull) then
  begin
    OpenAux('select * from bancos where bco_codigo = '+IntToStr( CbBancos.CDS.FieldByName('BAN_COD_APELIDO').AsInteger));

    if qAux.FieldByName('BCO_UNIDADE_CONSUMIDORA').AsString = 'S' then
       GeraException('Informe a unidade consumidora');
  end;
  if cdsPedidoPED_INICIOPAG.AsDateTime< Date then
  Begin
    GeraException('Início da 1ª parcela não pode ser retroativa');

  End;

end;

end.








