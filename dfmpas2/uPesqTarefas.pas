unit uPesqTarefas;

interface

uses
  RTTI, TypInfo,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, SgDbSeachComboUnit,  System.ImageList, Vcl.ImgList, JvExStdCtrls, JvEdit, JvExMask,
  JvToolEdit, System.StrUtils;
type
 TenunSituacao = (tsPendente, tsFinalizada, tsAberta, tsAtrasada, tsTodos)  ;

type
  TPesqTarefas = class(TfrmBaseDBPesquisa)
    CdsEditTRF_REGISTRO: TIntegerField;
    CdsEditREP_CODIGO: TStringField;
    CdsEditCLI_CODIGO: TStringField;
    CdsBuscoTRF_PRAZO: TSQLTimeStampField;
    CdsEditTRF_FINALIZADA: TStringField;
    CdsEditTRF_EXCLUIDO: TStringField;
    cdsBuscoTRF_EMAILCONTATO: TStringField;
    cdsBuscoTRF_CONTATOFONE: TStringField;
    cdsBuscoTRF_CONTATO: TStringField;
    cdsBuscoTRF_ACAO: TIntegerField;
    cdsBuscoTRF_ENDERECO: TStringField;
    cdsBuscoTRF_DATA_FINA: TSQLTimeStampField;
    cdsBuscoTRF_DATA_EXCL: TSQLTimeStampField;
    cdsBuscoTRF_NIVEL: TIntegerField;
    edVendedor: TSgDbSearchCombo;
    Label1: TLabel;
    qRep: TSQLQuery;
    qCli: TSQLQuery;
    PesqCliente: TSgDbSearchCombo;
    Label2: TLabel;
    cdsBuscocli_razao: TStringField;
    edVendedorCodigo: TEdit;
    edClienteCodigo: TEdit;
    GbInformePeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edAssunto: TEdit;
    Label5: TLabel;
    rgAcao: TRadioGroup;
    edOrigem: TRadioGroup;
    Label6: TLabel;
    edContato: TEdit;
    btnPendentes: TBitBtn;
    btnFinalizadas: TBitBtn;
    btnAutorizadas: TBitBtn;
    Imagens: TImageList;
    btnAtrasada: TBitBtn;
    cdsBuscoTRF_DATA_REGISTRO: TSQLTimeStampField;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edPendente: TPanel;
    edFinalizada: TPanel;
    edAtrasada: TPanel;
    cdsBuscoTRF_ORIGEM: TIntegerField;
    cdsBuscoTRF_ASSUNTO: TBlobField;
    cdsBuscoREP_NOME: TStringField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    RxDataAbertIni: TJvDateEdit;
    RxDataAbertFim: TJvDateEdit;
    chkFinalizadas: TCheckBox;
    cdsBuscoTRF_STATUS_FINAL: TStringField;
    cdsBuscoTRF_DATAABERTURA: TSQLTimeStampField;
    edPesquisaLivre: TLabeledEdit;
    Button1: TButton;
    cdsBuscoPED_CODIGO: TStringField;
    chkMultiempresa: TCheckBox;
    cdsBuscoEMP_CODIGO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoTRF_NIVELGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscoTRF_ACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure edVendedorSelect(Sender: TObject);
    procedure edVendedorCodigoExit(Sender: TObject);
    procedure edClienteCodigoExit(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edAssuntoChange(Sender: TObject);
    procedure rgAcaoClick(Sender: TObject);
    procedure CdsEditTRF_FINALIZADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnLimparClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPendentesClick(Sender: TObject);
    procedure btnFinalizadasClick(Sender: TObject);
    procedure btnAutorizadasClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAbertaClick(Sender: TObject);
    procedure btnAtrasadaClick(Sender: TObject);
    procedure cdsBuscoTRF_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBuscoTRF_ASSUNTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure chkFinalizadasClick(Sender: TObject);
    procedure cdsBuscoTRF_DATA_REGISTROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsBuscoTRF_PRAZOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscoTRF_STATUS_FINALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure cdsBuscoAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure chkMultiempresaClick(Sender: TObject);
  private
   Situacao : TenunSituacao;
   procedure Filtro;
   procedure PadraoPesquisa;
   procedure Estatistica;
   var
    arquivoIni: string;
  public
    Pesquisando : boolean;
    procedure configuraCabImpressao (Sender : Tform);
    procedure DepoisReport(sender: tform);
    var it: TBookmark;

  end;

var
  PesqTarefas: TPesqTarefas;

implementation

{$R *.dfm}
 uses ufrmTarefas, uteis, pesquisaclientesform, InicioDB, upedido;
{ TfrmBaseDBPesquisa1 }

procedure TPesqTarefas.btnAbertaClick(Sender: TObject);
begin
  inherited;
  situacao := tsAberta;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.btnAtrasadaClick(Sender: TObject);
begin
  inherited;
  Situacao := tsAtrasada;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.btnAutorizadasClick(Sender: TObject);
begin
  inherited;
  situacao := tsTodos;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.btnFecharClick(Sender: TObject);
begin
  inherited;
//  close;
end;

procedure TPesqTarefas.btnLimparClick(Sender: TObject);
begin
  inherited;
  Pesquisando:= True;
  edOrigem.ItemIndex := 7;

  rgAcao.ItemIndex := 10;
  edAssunto.Text := '';
  edContato.Text := '';
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
   edVendedor.idRetorno :=dbInicio.Empresa.fCODIGO_REPRES;
  PesqCliente.idRetorno:= '';
  PadraoPesquisa;
  Pesquisando:= False;
end;

procedure TPesqTarefas.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmTarefas;
		flg: boolean;

begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmTarefas.create( self );

	try

		 case mtag of
		 1: flg:=tcr.novo('CRM Agenda- Nova tarefa') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('TRF_REGISTRO').asString,'CRM Agenda - Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('TRF_REGISTRO').asString,'CRM Agenda- Edição de Registro');
		 4: begin
         if (MessageDlg('Deseja excluir a tarefa ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
         begin
           if cdsBusco.FieldByName('TRF_FINALIZADA').AsString = 'S' then
            raise Exception.Create('Tarefa já finalizada. Não pode ser excluida');
           flg:= tcr.ExcluiTarefa(cdsBusco.FieldByName('TRF_REGISTRO').AsInteger);
         end;
        end;
     5:
      begin
        if cdsBusco.FieldByName('TRF_FINALIZADA').AsString = 'S' then
          raise Exception.Create('Tarefa já finalizada.');
        flg:=tcr.FinalizaTarefa(cdsBusco.FieldByName('TRF_REGISTRO').AsInteger,true,true);
      end
		 end;
     btnPesquisa.Click;
		 if ( mtag <> 4) then
		 begin
					if (CdsBusco.Active) and (tcr.IDRetorno <> '') then
					BEGIN
//						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('TRF_REGISTRO').asstring) then
//						 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
           if it <> Nil then
            if cdsBusco.BookmarkValid(it) then
               cdsBusco.GotoBookmark(it);
           // cdsBusco.FreeBookmark(it);



					END;
		 end;

	finally
    Estatistica;
		tcr.close;
		freeandnil(tcr);


	end;

end;

procedure TPesqTarefas.btnPendentesClick(Sender: TObject);
begin
  inherited;
  Situacao := tsPendente;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.Button1Click(Sender: TObject);
begin
  inherited;
  if cdsBuscoPED_CODIGO.AsString <> '' then
  Begin
   if not assigned(FrmPedido) then
    begin
      FrmPedido := TFrmPedido.Create(Application);
      //FrmPedido.BotoesAcesso;
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
        FrmPedido.Top := 0;
    end;
    FrmPedido.Show;
    FrmPedido.BuscaPedido(cdsBuscoPED_CODIGO.AsString);
    close;
  End;
end;

procedure TPesqTarefas.btnFinalizadasClick(Sender: TObject);
begin
  inherited;
  situacao := tsFinalizada;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.cdsBuscoAfterPost(DataSet: TDataSet);
begin
  inherited;
  it := cdsBusco.GetBookmark;

end;

procedure TPesqTarefas.cdsBuscoTRF_ACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    text := ''
  else
 case sender.AsInteger of
  0: Text := 'Email';
  1: text:= 'Ligação';
  2: Text:= 'Visita';
  3 : Text := 'Proposta';
  4 : Text := 'Pós-Venda';
  5 : Text := 'Venda efetivada';
  6 : Text := 'Reunião';
  7:  Text := 'Manutenção';
  8:  Text := 'Orçamento';
  9 : Text := 'Cobrança';
 end;

end;

procedure TPesqTarefas.cdsBuscoTRF_ASSUNTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TPesqTarefas.cdsBuscoTRF_DATA_REGISTROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsDateTime <> 0  then
    text:= FormatDateTime('dd/mm/yyyy',Sender.AsDateTime)
  else
    text := EmptyStr;
end;

procedure TPesqTarefas.cdsBuscoTRF_NIVELGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0 : Text := 'Prospect';
    1 : Text := 'Lead';
    2 : Text := 'Cliente';
    3 : Text := 'Finalizada';
    else text := '';
  end;
end;

procedure TPesqTarefas.cdsBuscoTRF_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    text := ''
  else

  case Sender.AsInteger of
   0:  Text:= 'Cliente';
   1: Text := 'Email Mkt';
   2: Text := 'Site/Internet';
   3: Text := 'Indicação';
   4: text := 'Prospecção';
   5: text := 'Televendas';
   6: text := 'Outros';

  end;
end;

procedure TPesqTarefas.CdsBuscoTRF_PRAZOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsDateTime <> 0  then
    text:= FormatDateTime('dd/mm/yyyy hh:nn',Sender.AsDateTime)
  else
    text := EmptyStr;
end;

procedure TPesqTarefas.cdsBuscoTRF_STATUS_FINALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TPesqTarefas.CdsEditTRF_FINALIZADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
//  if Sender.Value = 'S' then
//   Text:= 'Finalidada'
//  else if Sender.Value = 'N' then
//    text := 'Pendente'
//  else
    text := EmptyStr;
end;

procedure TPesqTarefas.chkFinalizadasClick(Sender: TObject);
begin
  inherited;
  situacao := tsTodos;
  btnpesquisa.Click;
end;

procedure TPesqTarefas.chkMultiempresaClick(Sender: TObject);
begin
  inherited;
  btnpesquisa.Click;
end;

procedure TPesqTarefas.configuraCabImpressao(Sender: Tform);
var i : integer;
begin
  for I := 0 to DBGrid.Columns.Count-1 do
  begin
   if MatchStr(DBGrid.Columns[i].FieldName,['TRF_ENDERECO','TRF_FINALIZADA']) then
     DBGrid.Columns[i].Visible := False;

  end;


end;

procedure TPesqTarefas.DBGridCellClick(Column: TColumn);
begin
  inherited;
  it := cdsBusco.GetBookmark;
end;

procedure TPesqTarefas.DBGridDblClick(Sender: TObject);
var tcr: TfrmTarefas;
begin
  inherited;
//  tcr := TfrmTarefas.create( self );
	try
//    tcr.Consulta(cdsBusco.FieldByName('TRF_REGISTRO').asString,'CRM Agenda - Consulta Registro');
  finally
//    FreeAndNil(tcr);
  end;
end;

procedure TPesqTarefas.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
     if Column.Field = CdsEditTRF_FINALIZADA then
     begin
       TDBGrid(sender).Canvas.FillRect(Rect);
       if (CdsBuscoTRF_PRAZO.AsDateTime < Now) and (CdsEditTRF_FINALIZADA.AsString = 'N')  then // situacao atrasada
         Imagens.Draw(TDBGrid(sender).Canvas,Rect.Left+03,Rect.Top+1,4) ;
       if CdsEditTRF_FINALIZADA.AsString = 'S' then
         Imagens.Draw(TDBGrid(sender).Canvas,Rect.Left+20,Rect.Top+1,2)
       else
         Imagens.Draw(TDBGrid(sender).Canvas,Rect.Left+20,Rect.Top+1,1)
     end;
     if Column.Field = CdsBuscoTRF_PRAZO then
     begin
       TDBGrid(sender).Canvas.Font.Style :=  [fsbold];
        TDBGrid(sender).DefaultDrawDataCell(rect, Column.Field, State);
     end;
  end;
end;

procedure TPesqTarefas.DBGridMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  it := cdsBusco.GetBookmark;
end;

procedure TPesqTarefas.DepoisReport(sender: tform);
var i : integer;
begin
  for I := 0 to DBGrid.Columns.Count-1 do
    DBGrid.Columns[i].Visible := True;
end;

procedure TPesqTarefas.edAssuntoChange(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;

end;

procedure TPesqTarefas.edClienteCodigoExit(Sender: TObject);
begin
  inherited;
  if edClienteCodigo.Text <> '' then
    PesqCliente.idRetorno :=  strzero(edClienteCodigo.Text,5)
  else
    PesqCliente.idRetorno := ''
end;

procedure TPesqTarefas.edVendedorCodigoExit(Sender: TObject);
begin
  inherited;
  edVendedor.idRetorno := edVendedorCodigo.Text;

end;

procedure TPesqTarefas.edVendedorSelect(Sender: TObject);
begin
  inherited;
  if edVendedor.idRetorno <> '' then
   edVendedorCodigo.Text := edVendedor.idRetorno;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.Estatistica;
begin
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
   // PENDENTE
   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''N'' '+
           ' AND TRF_EXCLUIDO = ''N'' '+
           ' AND REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES));
   edPendente.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

   //FINALIZADAS
   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''S'' '+
           ' AND TRF_EXCLUIDO = ''N'' '+
           ' AND REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES));
   edFinalizada.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''N'' '+
           ' AND TRF_EXCLUIDO = ''N'' '+
           ' AND TRF_PRAZO  < CURRENT_TIMESTAMP ' +
           ' AND REP_CODIGO = '+ QuotedStr(DBInicio.Empresa.fCODIGO_REPRES));
   edAtrasada.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

  end
  else
  begin
   // PENDENTE
   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''N'' '+
           ' AND TRF_EXCLUIDO = ''N'' ');
   edPendente.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

   //FINALIZADAS
   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''S'' '+
           ' AND TRF_EXCLUIDO = ''N'' ');
   edFinalizada.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

   OpenAux('SELECT count(*) qtde FROM TAREFAS_CRM ' +
           ' WHERE TRF_FINALIZADA = ''N'' '+
           ' AND TRF_EXCLUIDO = ''N'' '+
           ' AND TRF_PRAZO  < CURRENT_TIMESTAMP ' );
   edAtrasada.Caption := IntToStr(QAUX.FieldByName('QTDE').AsInteger);

  end;
end;

procedure TPesqTarefas.Filtro;
begin
 if Pesquisando then
   exit ;
with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT TRF_DATAABERTURA, TRF_REGISTRO,TRF_DATA_REGISTRO, CR.REP_CODIGO, TRF_PRAZO,  TRF_ASSUNTO , TRF_FINALIZADA,');
    SQL.Add('TRF_DATA_FINA, TRF_EXCLUIDO, TRF_DATA_EXCL, TRF_NIVEL, CL.CLI_CODIGO, TRF_CONTATO,             ');
    SQL.Add('COALESCE(CLI_RAZAO,TRF_NOMEEMPRESA) AS CLI_RAZAO  , REP_Nome, TRF_ORIGEM,                      ');
    SQL.Add('TRF_EMAILCONTATO, TRF_CONTATOFONE, TRF_ENDERECO, TRF_ACAO,TRF_STATUS_FINAL , ped_codigo, cr.EMP_CODIGO        ');
    SQL.Add('FROM tarefas_crm CR                                       ');
    SQL.Add('JOIN REP0000 RP ON (RP.REP_CODIGO = CR.REP_CODIGO)      ' );
    SQL.Add('LEFT JOIN CLI0000 CL ON (CL.CLI_CODIGO = CR.CLI_CODIGO '+
            ConcatSe(' AND CL.', dbinicio.ExclusivoSql('CLIENTES')) + ' )'  );
//            ' AND cli_inativo = ''A'')'  );
    SqlAdd(' TRF_EXCLUIDO = '+QuotedStr('N'));
    if  not chkMultiempresa.Checked then
      SqlAdd(' CR.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

    if PesqCliente.idRetorno <> '' then
     SqlAdd(' cl.cli_codigo = '+ QuotedStr(PesqCliente.idRetorno));
    if edVendedor.idRetorno <> '' then
     SqlAdd(' CR.REP_CODIGO = '+QuotedStr(edVendedor.idRetorno));

    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
         SqlAdd (' TRF_PRAZO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
    else if  (RxDataInicial.Date > 0)  then
       SqlAdd ('  TRF_PRAZO  >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        SqlAdd (' TRF_PRAZO <= ' + DateToSQL(RxDataFinal.Date));

    if (RxDataAbertIni.Date > 0) and (RxDataAbertFim.Date > 0)  then
         SqlAdd (' CAST(TRF_DATAABERTURA AS DATE) between ' + DateToSQL(RxDataAbertIni.Date)+' and '+ DateToSQL(RxDataAbertFim.Date) )
    else if  (RxDataAbertIni.Date > 0)  then
       SqlAdd ('  CAST(TRF_DATAABERTURA AS DATE)  >= ' + DateToSQL(RxDataAbertIni.Date))
    else if RxDataAbertFim.Date > 0 then
        SqlAdd (' CAST(TRF_DATAABERTURA AS DATE) <= ' + DateToSQL(RxDataAbertFim.Date));


    if edAssunto.Text <> '' then
       SqlAdd(' TRF_ASSUNTO CONTAINING ' + QuotedStr(edAssunto.Text));
    if edContato.Text <> '' then
       SqlAdd(' TRF_CONTATO CONTAINING ' + QuotedStr(edContato.Text));
    if not ((rgAcao.ItemIndex = -1) or (rgAcao.ItemIndex = 10 )) then //nenhum selecionado todos
     SqlAdd(' TRF_ACAO = '+ IntToStr(rgAcao.ItemIndex));
    if situacao <> tsTodos then
    begin
      case situacao of
        tsPendente: sqlAdd('TRF_FINALIZADA = '+ QuotedStr('N'));
        tsFinalizada:
          begin
            SqlAdd('TRF_FINALIZADA = '+ QuotedStr('S'));
            chkFinalizadas.Checked := False;
          end;
        tsAtrasada:
        begin
          SqlAdd('TRF_FINALIZADA = '+ QuotedStr('N')) ;
          SqlAdd('TRF_PRAZO  < CURRENT_TIMESTAMP ');
        end;
      end;
    end;
    if not ((edOrigem.ItemIndex=-1) or (edOrigem.ItemIndex = 7)) then
       SqlAdd(' TRF_ORIGEM = '+IntToStr(edOrigem.ItemIndex));

    if (chkFinalizadas.Checked)  then
      SqlAdd('TRF_FINALIZADA = '+QuotedStr('N'));
    if edPesquisaLivre.Text <> '' then
      SqlAdd('( TRF_EMAILCONTATO CONTAINING '+ QuotedStr(edPesquisaLivre.Text)+
            ' OR COALESCE(CLI_RAZAO,TRF_NOMEEMPRESA)  CONTAINING '+ QuotedStr(edPesquisaLivre.Text) +')');

    SQL.Add('ORDER BY TRF_PRAZO');
	end;

end;

procedure TPesqTarefas.FormActivate(Sender: TObject);
var
  temp: string;
begin
  inherited;
  if FileExists(DBInicio.SistemaLocal + 'settings\' + arquivoIni + '.ini') then
  begin
    edVendedor.idRetorno := LeIni(arquivoIni, 'form', 'edVendedor', temp);
    edAssunto.Text := LeIni(arquivoIni, 'form', 'edAssunto', temp);
    PesqCliente.idRetorno := LeIni(arquivoIni, 'form', 'PesqCliente', temp);
    edContato.Text := LeIni(arquivoIni, 'form', 'edContato', temp);
    edPesquisaLivre.Text := LeIni(arquivoIni, 'form', 'edPesquisaLivre', temp);
    rgAcao.ItemIndex := StrToInt(LeIni(arquivoIni, 'form', 'rgAcao', temp));
    edOrigem.ItemIndex := StrToInt(LeIni(arquivoIni, 'form', 'edOrigem', temp));
    RxDataAbertIni.Date := StrToFloat(LeIni(arquivoIni, 'form', 'RxDataAbertIni', temp));
    RxDataAbertFim.Date := StrToFloat(LeIni(arquivoIni, 'form', 'RxDataAbertFim', temp));
    RxDataInicial.Date := StrToFloat(LeIni(arquivoIni, 'form', 'RxDataInicial', temp));
    RxDataFinal.Date := StrToFloat(LeIni(arquivoIni, 'form', 'RxDataFinal', temp));
    chkFinalizadas.Checked := iif(LeIni(arquivoIni, 'form', 'chkFinalizadas', temp) = 'True', True, False);
    Situacao := TenunSituacao(GetEnumValue(TypeInfo(TenunSituacao), LeIni(arquivoIni, 'form', 'Situacao', temp)));
  end; 
end;

procedure TPesqTarefas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  GravaIni(arquivoIni, 'form', 'edVendedor', edVendedor.idRetorno);
  GravaIni(arquivoIni, 'form', 'edAssunto', edAssunto.Text);
  GravaIni(arquivoIni, 'form', 'PesqCliente', PesqCliente.idRetorno);
  GravaIni(arquivoIni, 'form', 'edContato', edContato.Text);
  GravaIni(arquivoIni, 'form', 'edPesquisaLivre', edPesquisaLivre.Text);
  GravaIni(arquivoIni, 'form', 'rgAcao', IntToStr(rgAcao.ItemIndex));
  GravaIni(arquivoIni, 'form', 'edOrigem', IntToStr(edOrigem.ItemIndex));
  GravaIni(arquivoIni, 'form', 'RxDataAbertIni', FloatToStr(RxDataAbertIni.Date));
  GravaIni(arquivoIni, 'form', 'RxDataAbertFim', FloatToStr(RxDataAbertFim.Date));
  GravaIni(arquivoIni, 'form', 'RxDataInicial', FloatToStr(RxDataInicial.Date));
  GravaIni(arquivoIni, 'form', 'RxDataFinal', FloatToStr(RxDataFinal.Date));
  GravaIni(arquivoIni, 'form', 'chkFinalizadas', iif(chkFinalizadas.Checked, 'True', 'False'));
  GravaIni(arquivoIni, 'form', 'Situacao', TRttiEnumerationType.GetName(Situacao));
  
  
  Action := caFree;
end;

procedure TPesqTarefas.FormCreate(Sender: TObject);
begin
  inherited;
  arquivoIni := Self.Name + '_form_' + DBInicio.Usuario.USERNAME;
	Self.CampoID:='TRF_REGISTRO';
  Self.CampoIDRetorno :='TRF_REGISTRO';
  Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.Constraints.MaxWidth:= 0;
  Pesquisando:= False;
  Self.WindowState := wsMaximized;
  PadraoPesquisa;
  Self.ProcHeaderBeforePrintAuto:=configuraCabImpressao;
  self.ProcAfterPrintAuto := DepoisReport;
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
    edVendedor.Enabled := not DBInicio.Empresa.VisualizaPedidos_CRM;
    edVendedorCodigo.Enabled := not DBInicio.Empresa.VisualizaPedidos_CRM;
    edVendedor.idRetorno := dbInicio.Empresa.fCODIGO_REPRES;
  end;
  AcessoBotoes('ComercialCRM Agenda');
  btnPesquisa.Click;
end;

procedure TPesqTarefas.FormDestroy(Sender: TObject);
begin
  inherited;
  PesqTarefas := nil;
end;

procedure TPesqTarefas.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  //Filtro; // abre tabelas
  Estatistica;

 
end;

procedure TPesqTarefas.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnPesquisa.Click;
end;

procedure TPesqTarefas.PadraoPesquisa;
begin
  Situacao := tsTodos;
end;

procedure TPesqTarefas.PesqClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  inherited;
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           PesqCliente.idRetorno := tcr.IDRetorno;


    finally
         FreeAndNil(tcr);
    end;

end;

procedure TPesqTarefas.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.idRetorno <> '' then
    edClienteCodigo.Text := PesqCliente.idRetorno;
  btnPesquisa.Click;
end;

procedure TPesqTarefas.rgAcaoClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
