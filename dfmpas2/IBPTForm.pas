unit IBPTForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, ACBrSocket,
  ACBrIBPTax, DBLocal,  Mask,  rxToolEdit, RXCurrEdit, Data.DBXInterBase,
  Data.DBXFirebird, ACBrEnterTab, SgDbSeachComboUnit, System.Win.ComObj, JvCsvData;

type
  TfrmIbpt = class(TfrmBaseDBPesquisa)
    lbledt1: TLabeledEdit;
    ACBrIBPTax1: TACBrIBPTax;
    dlgOpen1: TOpenDialog;
    CdsBuscoIBPT_ID: TIntegerField;
    CdsBuscoIBPT_NCM: TStringField;
    CdsBuscoIBPT_EX: TStringField;
    CdsBuscoIBPT_TABELA: TIntegerField;
    CdsBuscoIBPT_DESCRICAO: TStringField;
    CdsBuscoIBPT_ALIQFEDNACIONAL: TFMTBCdField;
    CdsBuscoIBPT_ALIQFEDIMPORTADO: TFMTBCdField;
    CdsBuscoIBPT_ALIQESTADUAL: TFMTBCdField;
    CdsBuscoIBPT_ALIQMUNICIPAL: TFMTBCdField;
    qBuscoIBPT_ID: TIntegerField;
    qBuscoIBPT_NCM: TStringField;
    qBuscoIBPT_EX: TStringField;
    qBuscoIBPT_TABELA: TIntegerField;
    qBuscoIBPT_DESCRICAO: TStringField;
    qBuscoIBPT_ALIQFEDNACIONAL: TFMTBCdField;
    qBuscoIBPT_ALIQFEDIMPORTADO: TFMTBCdField;
    qBuscoIBPT_ALIQESTADUAL: TFMTBCdField;
    qBuscoIBPT_ALIQMUNICIPAL: TFMTBCdField;
    cbb1: TComboBox;
    lbl1: TLabel;
    pnBot: TPanel;
    lblVersao: TLabel;
    lblVigencia: TLabel;
    lblChave: TLabel;
    lblFonte: TLabel;
    OpenDialog1: TOpenDialog;
    JvCsvDataSet1: TJvCsvDataSet;
    procedure FormCreate(Sender: tObject);
    procedure btnNovoClick(Sender: tObject);
    procedure btnExtraClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CdsBuscoIBPT_TABELAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
	procedure Button1Click(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);

  private
    procedure FiltraIBPT;
    procedure LerDadosVersao;
  public
    procedure BotoesAcesso;
  end;

var
  frmIbpt: TfrmIbpt;

implementation

uses Uteis, InicioDB, EditIBPTForm;

{$R *.dfm}

procedure TfrmIbpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfrmIbpt.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,900);
  Self.CampoID:='IBPT_ID';
  Self.ProcedureFiltro:=FiltraIBPT;
  aCaption:='Tabela BPT';
  LerDadosVersao;
end;

procedure TfrmIbpt.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmIBPT := Nil;
end;

procedure TfrmIbpt.FormResize(Sender: TObject);
begin
  inherited;
  Width := 846;
  Height := 436;
end;

procedure TfrmIbpt.FiltraIBPT;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('Select * from ibpt0000');
          if StrToIntDef(lbledt1.Text,-1)=-1 then
             SqlAdd( CampoSql( 'IBPT_DESCRICAO',lbledt1.Text) )
          else
             SqlAdd( CampoSql( 'IBPT_NCM',lbledt1.Text) );
          SqlAdd( 'IBPT_TABELA='+inttostr(cbb1.itemindex) ); // tipo tabela
          sql.Add('Order By IBPT_NCM');
     end;
end;


procedure TfrmIbpt.BotoesAcesso;
begin
     if assigned(frmIbpt) then
     begin
       btnNovo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmIbpt).Incluir;
       btnExclui.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmIbpt).Exluir;
       btnImprime.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmIbpt).Relatorio;
       btnEdita.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmIbpt).Alterar;
       dsBusca.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmIbpt).Alterar;
     end;
end;

procedure TfrmIbpt.btnExtraClick(Sender: tObject);
var I,H: Integer;
begin
  if dlgOpen1.Execute then

     if MessageDlg('Todos os registros da tabela IBPT atual serão excluídos'+#13+'Continua?',mtConfirmation,[mbYes,mbNo],0)=mrYes then

     try
     Try
        screen.cursor:=crSqlWait;
        application.processmessages;
        CdsBusco.DisableControls;
        //DBInicio.SqlMonitor.Active:=False;
        if ACBrIBPTax1.AbrirTabela(dlgOpen1.FileName) then
        begin
          CdsBusco.Close;
          ExecSql('Delete From IBPT0000');
          qBusco.SQL.text:='Select * from IBPT0000';
          CdsBusco.Open;
          BeginTransaction;
          H:=0;
          for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
          begin
               if Length(ACBrIBPTax1.Itens[I].NCM) <= 10 then
               begin
                 CdsBusco.append;
                 //CdsBuscoIBPT_ID.asInteger:=GetNextSequence('GEN_IBPT_ID');
                 CdsBuscoIBPT_NCM.asString:=ACBrIBPTax1.Itens[I].NCM;
                 CdsBuscoIBPT_EX.asString:=ACBrIBPTax1.Itens[I].Excecao;
                 CdsBuscoIBPT_TABELA.asInteger:=Integer(ACBrIBPTax1.Itens[I].Tabela);
                 CdsBuscoIBPT_DESCRICAO.asString:=trim(Copy(ACBrIBPTax1.Itens[I].Descricao,0,250));
                 CdsBuscoIBPT_ALIQFEDNACIONAL.asFloat:=ACBrIBPTax1.Itens[I].FederalNacional;
                 CdsBuscoIBPT_ALIQFEDIMPORTADO.asFloat:=ACBrIBPTax1.Itens[I].FederalImportado;
                 CdsBuscoIBPT_ALIQESTADUAL.asFloat:=ACBrIBPTax1.Itens[I].Estadual;
                 CdsBuscoIBPT_ALIQMUNICIPAL.asFloat:=ACBrIBPTax1.Itens[I].Municipal;
                 CdsBusco.post;
                 CdsBusco.ApplyUpdates(0);
                 Inc(H);

                 if H=200 then
                 begin
                    CommitRetainTransaction;
                    H:=0;
                 end;
               end;
                 btnExtra.Caption:='Lidos: '+inttostr(I);
                 application.ProcessMessages;
          end;
          CommitTransaction;
          With ACBrIBPTax1 do
          begin
               ExecSql('Delete From IBPT0001');
               {IBPT_VERSAO VARCHAR(10),
                IBPT_VIGENCIA_INI DATE,
                IBPT_VIGENCIA_FIM DATE,
                IBPT_CHAVE VARCHAR(8),
                IBPT_FONTE VARCHAR(8)}
               ExecSql( 'Insert Into IBPT0001 (IBPT_VERSAO, IBPT_VIGENCIA_INI, IBPT_VIGENCIA_FIM, IBPT_CHAVE, IBPT_FONTE) '+
                         'Values ('+QuotedStr(copy(VersaoArquivo,1,8))+','+
                         DateToSql(VigenciaInicio)+','+DateToSql(VigenciaFim)+','+
                         QuotedStr(copy(ChaveArquivo,1,8))+','+
                         QuotedStr(copy(Fonte,1,8))+')' )
          end;
          LerDadosVersao;
        end;
     finally
            Filtro;
            screen.cursor:=crDefault;
            btnExtra.Caption:='&Importar Tabela';
            CdsBusco.EnableControls;
     end;
     except
     on E:exception do

          Aviso(e.message);

     end;
end;

procedure TfrmIbpt.LerDadosVersao;
begin
     with DBInicio.qAux do
     Try
        sql.Text:='Select IBPT_VERSAO, IBPT_VIGENCIA_INI, IBPT_VIGENCIA_FIM, IBPT_CHAVE, IBPT_FONTE from ibpt0001';
        Open;
        lblVersao.Caption := 'Versão: ' + fields[0].asstring;
        lblVigencia.Caption := 'Vigência: ' + Format('%s a %s', [fields[1].asstring, fields[2].asstring]);
        lblChave.Caption := 'Chave: ' + fields[3].asstring;
        lblFonte.Caption := 'Fonte: ' + fields[4].asstring;
     finally
            close;
     end;
end;




procedure TfrmIbpt.btnImportaClick(Sender: TObject);
const xlCellTypeLastCell = $0000000B;
var XLSAplicacao, AbaXLS: OLEVariant;
    //RangeMatrix: Variant;
    x, k, lColTit, n: Integer;
    lRefer, lCod, lCodProCli, lDesProCli, lMsg:string;
    lStartImp, lTemErros:Boolean;
    lCusto: Currency ;
begin

     if OpenDialog1.Execute then
     try
        if CdsBusco.State<>dsBrowse then
           //CdsBuscoPost;
        CdsBusco.insert;

        XLSAplicacao := CreateoleObject('Excel.Application');
        try
          XLSAplicacao.Workbooks.Open(OpenDialog1.FileName);
          AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(OpenDialog1.FileName)].WorkSheets[1];
          AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
          x := XLSAplicacao.ActiveCell.Row;
          n := 1;
          try

             lStartImp:=False;
             for k := 1 to x do // linhas
             begin
//                  btnImporta.Caption:='Lendo: '+inttostr(k);
                  application.ProcessMessages;
                  lRefer:=Trim(XLSAplicacao.cells[k,1]);
             end;

             XLSAplicacao.Cells[1,1].Select;

          finally
                 CdsBusco.Post;
                  //btnImporta.Caption:='&Importar';
                  application.ProcessMessages;

          end;
        finally
               if lTemErros then
               begin
                    XLSAplicacao.cells[lColTit,8]:='*** ERROS ***';
                    ShowMessage('Existem erros na importação da planilha, por favor verifique a coluna *** ERROS *** na planilha');
               end
               Else
                   //XLSAplicacao.cells[lColTit,8]:='';

                 XLSAplicacao.columns.Autofit;
                 XLSAplicacao.visible := True;
        end;
     finally
            CdsBusco.ApplyUpdates(0);
            CdsBusco.Close;
           // CdsBusco.BeforePost:=CdsBuscoBeforePost;
            CdsBusco.Open;
            CdsBusco.EnableControls;
     end;
end;

procedure TfrmIbpt.btnNovoClick(Sender: tObject);
var mtag: integer;
    tcr: TfrmEditIBPT;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmEditIBPT.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo NCM Tabela IBPT') ;
     2: tcr.Consulta(CdsBuscoIBPT_ID.asString,'Consulta NCM Tabela IBPT');
     3: flg:=tcr.edita(CdsBuscoIBPT_ID.asString,'Edição de NCM Tabela IBPT');
     4: flg:=tcr.exclui(CdsBuscoIBPT_ID.asString,'Exclusão de NCM Tabela IBPT');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(CdsBuscoIBPT_ID.asstring) then
            begin
                 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
            end;
          END;
     end;
  finally
    tcr.close;
    freeandnil(tcr);
  end;
end;

procedure TfrmIbpt.Button1Click(Sender: TObject);
begin
  inherited;
  TrimAppMemorySize;
     if OpenDialog1.Execute then
     try

     finally

     end;
end;

procedure TfrmIbpt.FormShow(Sender: tObject);
begin
  inherited;
  //Self.Caption:='Pesquisa Tabela IBPT'; <<- Def auto em aCaption
  //Self.TituloRelAuto:='Listagem da Tabela IBPT'; <<- Def auto em aCaption
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

procedure TfrmIbpt.CdsBuscoIBPT_TABELAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
  0: text := 'NCM';
  1: text := 'NBS';
  2: text := 'LST';
  end;
end;

end.





