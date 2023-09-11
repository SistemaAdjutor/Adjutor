unit frmApontamentoFab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Vcl.Grids, Vcl.DBGrids, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Datasnap.DBClient, Datasnap.Provider, uteis, Vcl.Menus, Vcl.ExtCtrls, QExport4, QExport4XLS, Vcl.DBCtrls, rwfunc, Vcl.Mask, RxToolEdit;

type
  TfrmApontamento = class(TfrmBaseDB)
    qOperacoes: TSQLQuery;
    qEngenharia: TSQLQuery;
    dspEngenharia: TDataSetProvider;
    cdsEngenharia: TClientDataSet;
    dsEngenharia: TDataSource;
    cdsEngenhariaPRD_DESCRI: TStringField;
    cdsEngenhariaOSV_CODIGO: TStringField;
    cdsEngenhariaRestantes: TLargeintField;
    cdsEngenhariaFAB_PRODUZINDO: TFMTBCDField;
    cdsEngenhariaOSV_QTDE: TFMTBCDField;
    cdsEngenhariaFAB_PRODUZIDA: TFMTBCDField;
    cdsEngenhariaFAB_REFUGADA: TFMTBCDField;
    cdsEngenhariaOSV_DTENTREGA: TSQLTimeStampField;
    dsapontar: TDataSource;
    cdsApontar: TClientDataSet;
    qApontar: TSQLQuery;
    dspApontar: TDataSetProvider;
    cdsApontarCOL_NOME: TStringField;
    cdsApontarAPF_CODIGO: TIntegerField;
    cdsApontarFAB_CODIGO: TIntegerField;
    cdsApontarCOL_CODIGO: TIntegerField;
    cdsApontarAPF_DATA_INI: TSQLTimeStampField;
    cdsApontarAPF_DATA_FIM: TSQLTimeStampField;
    cdsApontarAPF_INICIADA: TFMTBCDField;
    cdsApontarAPF_CANCELADO: TStringField;
    cdsApontarAPF_MOTIVOCANCELAMENTO: TStringField;
    cdsEngenhariaFAB_CODIGO: TIntegerField;
    pmEngenharia: TPopupMenu;
    Apontar1: TMenuItem;
    Registrarocorrncia1: TMenuItem;
    pmApontamentos: TPopupMenu;
    pmOcorrencia: TPopupMenu;
    Panel1: TPanel;
    pEsquerda: TPanel;
    pbotoes: TPanel;
    pFiltro: TPanel;
    Label1: TLabel;
    EdOperacaoCodigo: TEdit;
    edOperacao: TSgDbSearchCombo;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    btnIncluirOcorrencia: TBitBtn;
    miFinalizar: TMenuItem;
    miCancelar: TMenuItem;
    dsOcorrencia: TDataSource;
    cdsOcorrencia: TClientDataSet;
    dspOcorrencia: TDataSetProvider;
    qOcorrencia: TSQLQuery;
    Incluirumaocorrncia1: TMenuItem;
    Incluirumaocorrnciaatodosprocessos1: TMenuItem;
    Marcaocorrnciaresolvida1: TMenuItem;
    cdsOcorrenciaOCE_CODIGO: TIntegerField;
    cdsOcorrenciaFAB_CODIGO: TIntegerField;
    cdsOcorrenciaOCE_ESTORNO: TIntegerField;
    qOcorrenciaOCE_CODIGO: TIntegerField;
    qOcorrenciaFAB_CODIGO: TIntegerField;
    qOcorrenciaOCE_ESTORNO: TIntegerField;
    qOcorrenciaOCE_MOTIVO: TStringField;
    qOcorrenciaOCE_DATAOCORRENCIA: TSQLTimeStampField;
    qOcorrenciaOCE_DATAPREVISAO: TSQLTimeStampField;
    qOcorrenciaOCE_DATAFIM: TSQLTimeStampField;
    cdsOcorrenciaOCE_MOTIVO: TStringField;
    cdsOcorrenciaOCE_DATAOCORRENCIA: TSQLTimeStampField;
    cdsOcorrenciaOCE_DATAPREVISAO: TSQLTimeStampField;
    cdsOcorrenciaOCE_DATAFIM: TSQLTimeStampField;
    qOcorrenciaOCO_DESCRICAO: TStringField;
    qOcorrenciaCOL_NOME: TStringField;
    cdsOcorrenciaOCO_DESCRICAO: TStringField;
    cdsOcorrenciaCOL_NOME: TStringField;
    pApontamento: TPanel;
    dbgApontamentos: TDBGrid;
    pBotaoApt: TPanel;
    btnApontarIncluir: TBitBtn;
    Splitter3: TSplitter;
    dspEngGeral: TDataSetProvider;
    dsEngeGeral: TDataSource;
    cdsEngGeral: TClientDataSet;
    qEngeGeral: TSQLQuery;
    cdsEngGeralOSV_QTDE: TFMTBCDField;
    cdsEngGeralOSV_DTENTREGA: TSQLTimeStampField;
    cdsEngGeralFAB_PRODUZINDO: TFMTBCDField;
    cdsEngGeralFAB_PRODUZIDA: TFMTBCDField;
    cdsEngGeralFAB_REFUGADA: TFMTBCDField;
    cdsEngGeralPRD_DESCRI: TStringField;
    cdsEngGeralRestantes: TLargeintField;
    cdsEngGeralFAB_CODIGO: TIntegerField;
    cdsEngGeralOPE_DESCRICAO: TStringField;
    cdsEngGeralSEQUENCIA: TIntegerField;
    miApontar: TMenuItem;
    btnFinalizarApt: TBitBtn;
    btnCancelar: TBitBtn;
    btnOcorrenciaApontamento: TBitBtn;
    cdsApontarAPF_FINALIZADAS: TFMTBCDField;
    cdsApontarAPF_REFUGADO: TFMTBCDField;
    cdsApontarEQP_CODIGO: TIntegerField;
    cdsApontarEQP_DESCRICAO: TStringField;
    QExport4XLS1: TQExport4XLS;
    cdsEngenhariaDATA_CONCLUSAO: TSQLTimeStampField;
    cdsEngenhariaDATA_INCIO: TSQLTimeStampField;
    btnAltColaborador: TBitBtn;
    qOcorrenciaoce_comentario: TStringField;
    cdsOcorrenciaOCE_COMENTARIO: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Panel2: TPanel;
    dbgEngGeral: TDBGrid;
    pocorrencias: TPanel;
    Panel3: TPanel;
    pBotaoOcorrencia: TPanel;
    btnResolver: TBitBtn;
    dbgOcorrencias: TDBGrid;
    PTarefas: TPanel;
    pocorrenciatitulo: TPanel;
    dbgEngenharia: TDBGrid;
    pcabecalhoeng: TPanel;
    Label2: TLabel;
    edOSV_CODIGO: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    cdsEngenhariaOPE_DESCRICAO: TStringField;
    cdsEngenhariaPRD_REFER: TStringField;
    DBText3: TDBText;
    Label6: TLabel;
    cdsEngGeralOPE_CODIGO: TIntegerField;
    rgFiltrarStatus: TRadioGroup;
    OP: TLabel;
    Label7: TLabel;
    edProdutoCodigo: TEdit;
    cbReferencia: TSgDbSearchCombo;
    Edt_Nome: TEdit;
    btnFiltrar: TBitBtn;
    BtnSair: TBitBtn;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    btnLimparTudo: TBitBtn;
    Gentrega: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    RxDataInicial: TDateEdit;
    RxDataFinal: TDateEdit;
    btnLimpar: TBitBtn;
    btnHoje: TBitBtn;
    cdsEngenhariaEQP_CODIGO: TIntegerField;
    procedure edOperacaoSelect(Sender: TObject);
    procedure EdOperacaoCodigoExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure cdsEngenhariaAfterScroll(DataSet: TDataSet);

    procedure Apontar1Click(Sender: TObject);
    procedure btnEngProcessoClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure miFinalizarClick(Sender: TObject);
    procedure btnIncluirOcorrenciaClick(Sender: TObject);
    procedure Incluirumaocorrncia1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure miCancelarClick(Sender: TObject);
    procedure miApontarClick(Sender: TObject);
    procedure btnFinalizarAptClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOcorrenciaApontamentoClick(Sender: TObject);
    procedure ApontarProcesso ;
    procedure FinalizarApontamento;
    procedure RegistrarOcorrencia;
    procedure CancelarApontamento;
    procedure AlterarColaborador;
    procedure ResolverOcorrencia;
    procedure RegistrarOcorrenciaApontamento;
    procedure btnResolverClick(Sender: TObject);
    procedure btnAltColaboradorClick(Sender: TObject);
    procedure EdOperacaoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsEngenhariaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure rgFiltrarStatusClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edt_NomeExit(Sender: TObject);
    procedure DisabilitaFiltros (Hab : Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnLimparTudoClick(Sender: TObject);
    procedure btnHojeClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

    procedure BuscaTarefas;
    procedure BuscaApontamentos;
    procedure BuscaOcorrencias;
    procedure BuscaProcessosEngenharia;

  end;

var
  frmApontamento: TfrmApontamento;

implementation
  uses uapontar, FrmEventoOcorrencia, prd0006, iniciodb ;
{$R *.dfm}

procedure TfrmApontamento.AlterarColaborador;
var tcr : TfrmApontarProcessos;
  curRegistro : TBookmark;
begin
 if (cdsApontarFAB_CODIGO.AsInteger = 0) then
 begin
   uteis.erro  (Pchar('Nenhum apontamento selecionado !'));
   exit;
 end;

 if not (cdsEngenharia.IsEmpty or cdsApontar.IsEmpty)  then
 begin

   try
       tcr := TfrmApontarProcessos.create( self );
       tcr.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       tcr.Status := 4;
       curRegistro := cdsEngenharia.GetBookmark;
       tcr.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger),'Alteração do Colaborador');
       Tcr.btnOk.Click;
       if tcr.ModalResult = mrok then
          BuscaTarefas;
       cdsEngenharia.GotoBookmark(curRegistro);
   finally
     tcr.close;
     FreeAndNil(tcr);
   end;
 end
 else
   uteis.erro  (Pchar('Sem OS !'));

end;

procedure TfrmApontamento.Apontar1Click(Sender: TObject);
begin
  inherited;
  ApontarProcesso;
end;

procedure TfrmApontamento.ApontarProcesso;
var tcr : TfrmApontarProcessos;
  curRegistro : TBookmark;
begin

 if not cdsEngenharia.IsEmpty then
 begin
  if not cdsEngenhariaDATA_CONCLUSAO.IsNull then
    GeraException ('Operação já finalizado');
    tcr := TfrmApontarProcessos.create( self );
   try
     // não permitir que faça mais de uma peça ou produto
     if not  DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP and (cdsEngenhariaOSV_QTDE.AsFloat < (cdsEngenhariaFAB_PRODUZINDO.AsFloat + cdsEngenhariaFAB_PRODUZIDA.AsFloat + cdsEngenhariaFAB_REFUGADA.AsFloat)) then
        GeraException ('A soma da quantidade produzida, refugada e em produção não pode ser maior que a solicitada na OP');
     tcr.FAB_Codigo := cdsEngenhariaFAB_CODIGO.AsInteger;
     tcr.EQP_Codigo := cdsEngenhariaEQP_CODIGO.AsInteger;
     tcr.ValorInicial := (cdsEngenhariaOSV_QTDE.AsFloat - cdsEngenhariaFAB_PRODUZIDA.AsFloat - cdsEngGeralFAB_PRODUZINDO.AsFloat);
     tcr.Status := 0;
     curRegistro := cdsEngenharia.GetBookmark;
     tcr.Novo('Novo apontamento');

     if tcr.ModalResult = mrok then
        BuscaTarefas;
     try
      cdsEngenharia.GotoBookmark(curRegistro);
     except
       // não econtrou o registro, porque ele foi para conclusão
     end;

   finally
     tcr.close;
     FreeAndNil(tcr);
   end;
 end
 else
   uteis.erro  (Pchar('Sem OS !'));
end;

procedure TfrmApontamento.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  cdsEngenharia.Filtered := False;
  cdsEngenharia.Filtered := True;
end;

procedure TfrmApontamento.BitBtn2Click(Sender: TObject);
begin
  inherited;
  CancelarApontamento;
end;

procedure TfrmApontamento.btnOcorrenciaApontamentoClick(Sender: TObject);
begin
  inherited;
  RegistrarOcorrenciaApontamento
end;

procedure TfrmApontamento.btnResolverClick(Sender: TObject);
begin
  inherited;
  ResolverOcorrencia;
  BuscaOcorrencias;
end;

procedure TfrmApontamento.btnAltColaboradorClick(Sender: TObject);
begin
  inherited;
  AlterarColaborador;
end;

procedure TfrmApontamento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  CancelarApontamento;
end;

procedure TfrmApontamento.btnFinalizarAptClick(Sender: TObject);
begin
  inherited;
  FinalizarApontamento;
end;

procedure TfrmApontamento.btnFinalizarClick(Sender: TObject);
begin
  inherited;
  FinalizarApontamento;
end;

procedure TfrmApontamento.btnHojeClick(Sender: TObject);
begin
  inherited;
  RxDataInicial.Date := Date;
  RxDataFinal.Date := Date;
  BuscaTarefas;
end;

procedure TfrmApontamento.btnIncluirOcorrenciaClick(Sender: TObject);
begin
  inherited;
  RegistrarOcorrencia;
end;

procedure TfrmApontamento.btnLimparClick(Sender: TObject);
begin
  inherited;
  BuscaTarefas;
end;

procedure TfrmApontamento.btnLimparTudoClick(Sender: TObject);
begin
  inherited;
  Edt_Nome.Clear;
  cbReferencia.idRetorno := '';
  edProdutoCodigo.Clear;
  rgFiltrarStatus.ItemIndex := 2; // pedente;
  RxDataInicial.Date := 0;
  RxDataFinal.Date := 0 ;
  cdsEngenharia.Filtered := False;
  edOperacao.idRetorno := '';
  cdsEngenharia.Close;
  cdsApontar.Close;
  cdsOcorrencia.Close;
  cdsEngGeral.Close;
//  BuscaTarefas;
end;

procedure TfrmApontamento.btnEngProcessoClick(Sender: TObject);
begin
  inherited;
  ApontarProcesso;
end;

procedure TfrmApontamento.BtnSairClick(Sender: TObject);
begin
  inherited;
 close;
end;

procedure TfrmApontamento.BuscaApontamentos;
begin
 if not (edOperacao.idRetorno = '') and not (cdsEngenharia.IsEmpty) then
 begin
   cdsApontar.Close;
   qApontar.SQL.Clear;
   qApontar.SQL.Text := ' SELECT  APF_CODIGO, FAB_CODIGO, COL.COL_NOME, APF.COL_CODIGO, COL_NOME,  APF_DATA_INI,  '+
                        '  APF_DATA_FIM,  CASE WHEN APF_DATA_FIM IS NULL THEN APF_INICIADA ELSE 0 end AS APF_INICIADA, APF_REFUGADO, APF_FINALIZADAS ,  case when APF_CANCELADO= ''S'' then ''SIM'' else ''NÃO'' end as APF_CANCELADO '+
                        ' , APF_MOTIVOCANCELAMENTO, EQP_DESCRICAO, EQ.EQP_CODIGO  ' +
                        ' FROM APONTAMENTO_FAB APF LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = APF.COL_CODIGO) '+
                        ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO) '+
                        ' WHERE FAB_CODIGO = ' + IntToStr(cdsEngenharia.FieldByName('FAB_CODIGO').AsInteger);



   cdsApontar.Open;
 end;
end;

procedure TfrmApontamento.BuscaOcorrencias;
begin
  cdsOcorrencia.Close;
  qOcorrencia.SQL.Clear;
  qOcorrencia.SQL.Text := ' SELECT OE.OCE_CODIGO, OE.OCO_CODIGO, OE.FAB_CODIGO, OE.COL_CODIGO, OCE_ESTORNO, OCE_MOTIVO, OCE_DATAOCORRENCIA, '+
                         ' OCE_DATAPREVISAO, OCE_DATAFIM, OCO_DESCRICAO, COL_NOME, APF_CODIGO, OCE_COMENTARIO                             ' +
                         ' FROM OCORRENCIA_EVENTO OE                                                                                       ' +
                         ' INNER JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)                                                     ' +
                         ' LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = OE.COL_CODIGO)                                                   ' +
                         ' WHERE OE.FAB_CODIGO = ' + IntToStr(cdsEngenharia.FieldByName('FAB_CODIGO').AsInteger);
  cdsOcorrencia.Open


end;

procedure TfrmApontamento.BuscaProcessosEngenharia;
begin
   cdsEngGeral.Close;
   qEngeGeral.SQL.Clear;

   qEngeGeral.sql.text  := ' SELECT FAB_CODIGO, OP.Ope_Codigo, OP.OPE_DESCRICAO, FB.SEQUENCIA, P1.PRD_DESCRI, OS.OSV_DTENTREGA, '+
                          ' DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES, OS.OSV_QTDE, '+
                           ' FB.FAB_PRODUZIDA, FB.FAB_PRODUZINDO,FB.FAB_REFUGADA '+
                           ' FROM FABRICACAO FB                                        '+
                           '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '+
                           '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO  AND P1.PRD_REFER = os.PRD_REFER) '+
                           '   INNER JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
                           '  WHERE FB.OSV_CODIGO =  '+ QuotedStr(cdsEngenhariaOSV_CODIGO.AsString) +
                           '  ORDER BY SEQUENCIA ';
   cdsEngGeral.Open;
end;

procedure TfrmApontamento.BuscaTarefas;
var sql :string;
begin
 if not (edOperacao.idRetorno = '') then
 begin
   cdsEngenharia.Close;
   cdsEngenharia.Filtered:= False;
   qEngenharia.SQL.Clear;
   sql := 'SELECT FAB_CODIGO, FB.OSV_CODIGO,P1.PRD_DESCRI, OS.OSV_DTENTREGA, DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES, OS.OSV_QTDE, '+
                           ' FB.FAB_PRODUZIDA, FB.FAB_PRODUZINDO,FB.FAB_REFUGADA, DATA_INCIO, DATA_CONCLUSAO, OP.OPE_DESCRICAO, P1.PRD_REFER, FB.EQP_CODIGO '+
                           ' FROM FABRICACAO fb                                        '+
                           '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '+
                           '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO) '+
                           '  INNER JOIN OPERACOES OP ON (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
                           ' WHERE FB.OPE_CODIGO = '+ edOperacao.idRetorno +
                           ' and OS.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);



    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       sql:= sql  + ' and OS.OSV_DTENTREGA  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date)
    else if  (RxDataInicial.Date > 0)  then
       sql := sql + ' and OS.OSV_DTENTREGA  >= ' + DateToSQL(RxDataInicial.Date)
    else if RxDataFinal.Date > 0 then
       sql:= sql + ' and OS.OSV_DTENTREGA <= ' + DateToSQL(RxDataFinal.Date);
   qengenharia.sql.text:=  sql ;
   cdsEngenharia.Open;

  cdsEngenharia.Filtered:= True;
 end;


end;

procedure TfrmApontamento.CancelarApontamento;
var tcr : TfrmApontarProcessos;
  curRegistro : TBookmark;
begin
 if (cdsApontarFAB_CODIGO.AsInteger = 0) then
 begin
   uteis.erro  (Pchar('Nenhum apontamento selecionado !'));
   exit;
 end;

 if not (cdsEngenharia.IsEmpty or cdsApontar.IsEmpty)  then
 begin
   if not cdsApontarAPF_DATA_FIM.IsNull then
   begin
    uteis.erro ('Apontamento já finalizado');
    exit;
   end;

   try
       tcr := TfrmApontarProcessos.create( self );
       tcr.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       tcr.Status := 2; // cancelamento
       curRegistro := cdsEngenharia.GetBookmark;
       tcr.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger), 'Cancelamento ');
       Tcr.btnOk.Click;
       if tcr.ModalResult = mrok then
          BuscaTarefas;
       try
        cdsEngenharia.GotoBookmark(curRegistro);
       except
        // não econtrou
       end;

   finally
     tcr.close;
     FreeAndNil(tcr);
   end;
 end
 else
   uteis.erro  (Pchar('Sem OS !'));
end;

procedure TfrmApontamento.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.TAG := 4;
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.idRetorno := FormProdutoGrid.ReferRetorno;
    cdsEngenharia.Filtered:=False;
    cdsOcorrencia.Filtered := False;
    cdsEngenharia.Filtered := True;
    cdsOcorrencia.Filtered := True;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmApontamento.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.IdRetorno <> ''  then
  begin
    edProdutoCodigo.Text := cbReferencia.IdRetorno;
    cdsEngenharia.Filtered:=False;
    cdsEngenharia.Filtered := True;
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;

end;

procedure TfrmApontamento.cdsEngenhariaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not cdsEngenharia.IsEmpty then
  begin
   BuscaApontamentos;
   BuscaOcorrencias;
   BuscaProcessosEngenharia;
  end
  else
  begin
   cdsApontar.Close;
   cdsOcorrencia.Close;
   cdsEngGeral.Close;

  end;
end;

procedure TfrmApontamento.cdsEngenhariaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var filtrar : boolean;
begin
  inherited;
  filtrar := False;
  case rgFiltrarStatus.ItemIndex of
   0 : filtrar := True;

   1 : //concluidas
       filtrar:= (cdsEngenhariaOSV_QTDE.AsFloat <= (cdsEngenhariaFAB_PRODUZIDA.AsFloat + cdsEngenhariaFAB_REFUGADA.AsFloat)) and (cdsEngenhariaFAB_PRODUZINDO.AsFloat = 0);
   2 : //pendentes
      filtrar := (cdsEngenhariaOSV_QTDE.AsFloat > (cdsEngenhariaFAB_PRODUZIDA.AsFloat + cdsEngenhariaFAB_REFUGADA.AsFloat)) ;
  end;
  if (cbReferencia.idRetorno <> '') and filtrar then
    filtrar :=  (DataSet.FieldByName('PRD_REFER').AsString = cbReferencia.idRetorno) and filtrar ;
  if (Edt_Nome.Text <> '') and (Edt_Nome.Text <> '000000') and filtrar then
    filtrar :=  (DataSet.FieldByName('OSV_CODIGO').AsString = Edt_Nome.Text) and filtrar;

  Accept := Filtrar;
end;

procedure TfrmApontamento.DisabilitaFiltros(Hab: Boolean);
begin
 edProdutoCodigo.Enabled := Hab;
 cbReferencia.Enabled := hab;
 Edt_Nome.Enabled := hab;
 btnFiltrar.Enabled := Hab;
 rgFiltrarStatus.Enabled := hab;
end;

procedure TfrmApontamento.EdOperacaoCodigoExit(Sender: TObject);
begin
  inherited;
  if EdOperacaoCodigo.Text<>'' then
  begin
      edOperacao.idRetorno:=EdOperacaoCodigo.Text;
      if edOperacao.idRetorno='' then
         GeraException('Operação não existente');
  end
  Else
  begin
      EdOperacaoCodigo.clear;
      edOperacao.Clear;
  end;
end;

procedure TfrmApontamento.EdOperacaoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    edOperacao.Button.Click;
end;

procedure TfrmApontamento.edOperacaoSelect(Sender: TObject);
begin
  inherited;
  if edOperacao.idRetorno <> '' then
     begin
       EdOperacaoCodigo.Text :=  edOperacao.idRetorno  ;
       DisabilitaFiltros(True);
       BuscaTarefas;
     end

  else
  begin
     EdOperacaoCodigo.Clear;
     DisabilitaFiltros(False);
  end;
end;

procedure TfrmApontamento.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')  ;

  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TfrmApontamento.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

procedure TfrmApontamento.Edt_NomeExit(Sender: TObject);
Var
  pLetra : String[1];
begin
  pLetra := ExtrairLetra(Edt_Nome.Text);
  if (pLetra = '') then
      Edt_Nome.Text := StrZero(Edt_Nome.Text,6)
  else
      Edt_Nome.Text := StrZero(Edt_Nome.Text,7);
end;

procedure TfrmApontamento.FinalizarApontamento;
var tcr : TfrmApontarProcessos;
  curRegistro : TBookmark;
begin
 if (cdsApontarFAB_CODIGO.AsInteger = 0) then
 begin
   uteis.erro  (Pchar('Nenhum apontamento selecionado !'));
   exit;
 end;

 if not (cdsEngenharia.IsEmpty or cdsApontar.IsEmpty)  then
 begin
    if not cdsApontarAPF_DATA_FIM.IsNull then
   begin
      uteis.erro ('Apontamento já finalizado');
      exit;
   end;
   try
       tcr := TfrmApontarProcessos.create( self );
       tcr.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       tcr.Status := 1;
       curRegistro := cdsEngenharia.GetBookmark;

       tcr.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger),'Finalizar');
       Tcr.btnOk.Click;
       if tcr.ModalResult = mrok then
          BuscaTarefas;
       try
        cdsEngenharia.GotoBookmark(curRegistro);
       except
         // a operação já conclui todos os apontamentos
       end;

   finally
     tcr.close;
     FreeAndNil(tcr);
   end;
 end
 else
   uteis.erro  (Pchar('Sem OS !'));

end;

procedure TfrmApontamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  btnLimparTudo.Click;
end;

procedure TfrmApontamento.FormCreate(Sender: TObject);
begin
  inherited;
  DisabilitaFiltros(false);
  rgFiltrarStatus.ItemIndex := 2; // pedente;
  self.WindowState := wsMaximized;
end;

procedure TfrmApontamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If key = VK_F2 then
    ApontarProcesso;
  if key = VK_F3 then
   RegistrarOcorrencia;
end;

procedure TfrmApontamento.Incluirumaocorrncia1Click(Sender: TObject);
begin
  inherited;
  RegistrarOcorrencia;
end;

procedure TfrmApontamento.miApontarClick(Sender: TObject);
begin
  inherited;
  ApontarProcesso;
end;

procedure TfrmApontamento.miCancelarClick(Sender: TObject);
begin
  inherited;
  CancelarApontamento;
end;

procedure TfrmApontamento.miFinalizarClick(Sender: TObject);
begin
  inherited;
  FinalizarApontamento;
end;

procedure TfrmApontamento.RegistrarOcorrencia;
var oco : TFrmEventoOcorrencias;
curRegistro : TBookmark;
begin
 if not cdsEngenharia.IsEmpty then
 begin
   try
       oco := TFrmEventoOcorrencias.create( self );
       oco.FAB_Codigo := cdsEngenhariaFAB_CODIGO.AsInteger;
       oco.Status:= 0;
       curRegistro := cdsEngenharia.GetBookmark;
       oco.Novo('Nova ocorrência');
       if oco.ModalResult = mrok then
          BuscaTarefas;
       cdsEngenharia.GotoBookmark(curRegistro);
   finally
     FreeAndNil(oco);
   end;
 end
 else
   uteis.erro  (Pchar('Sem OS selecionada !'));

end;

procedure TfrmApontamento.RegistrarOcorrenciaApontamento;
var oco : TFrmEventoOcorrencias;
  curRegistro : TBookmark;
begin
 if not cdsApontar.IsEmpty then
 begin
   try
       oco := TFrmEventoOcorrencias.create( self );
       oco.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       oco.APF_Codigo := cdsApontarAPF_CODIGO.AsInteger;
       oco.Status := 0 ;
       curRegistro := cdsEngenharia.GetBookmark;

       oco.Novo('Nova ocorrência para o apontamento');
       if oco.ModalResult = mrok then
          BuscaTarefas;
       cdsEngenharia.GotoBookmark(curRegistro);

   finally
     FreeAndNil(oco);
   end;
 end
 else
   uteis.erro  (Pchar('Sem apontamento selecionado !'));

end;

procedure TfrmApontamento.ResolverOcorrencia;
var oco : TFrmEventoOcorrencias;
begin
 if not cdsOcorrencia.IsEmpty then
 begin
   try
       oco := TFrmEventoOcorrencias.create( self );
       oco.Status := 1;
       oco.Edita(IntToStr(cdsOcorrenciaOCE_CODIGO.AsInteger), 'Resolver/Fechar ocorrência');
       if oco.ModalResult = mrok then
          BuscaTarefas;
   finally
     FreeAndNil(oco);
   end;
 end
 else
   uteis.erro  (Pchar('Sem ocorrência !'));

end;

procedure TfrmApontamento.rgFiltrarStatusClick(Sender: TObject);
begin
  inherited;
  cdsEngenharia.Filtered:= False;
  cdsEngenharia.Filtered:= True;
end;

end.
