unit PesquisaTabelasForm;

{/**********************************************************
* 1 - Tabela Principal ( id / descricao )
* 2 - Tabela Promoções ( id / descricao )
* 3 - Tabela Especial ( id / cod_cliente / desc_cliente ) ;
***********************************************************/}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Mask, rxToolEdit,
  Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab, JvExMask, JvToolEdit;

type
  TfrmPesquisaTabelas = class(TfrmBaseDBPesquisa)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CdsBuscoPRE_ID: TIntegerField;
    CdsBuscoPRE_DESCRICAO: TStringField;
    CdsBuscoPRE_VIGENCIA1: TDateField;
    CdsBuscoPRE_VIGENCIA2: TDateField;
    CdsBuscoPRE_TIPO_TABELA: TIntegerField;
    CdsBuscoCLI_RAZAO: TStringField;
    CdsBuscoPRE_CODIGO: TIntegerField;
    CdsBuscoPRE_DTCADASTRO: TDateField;
    CdsBuscoEMP_CODIGO: TStringField;
    CdsBuscoCLI_CODIGO: TStringField;
    DateEdit1: TJvDateEdit;
    procedure FormCreate(Sender: tObject);
    procedure btnNovoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CdsBuscoPRE_TIPO_TABELAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CdsBuscoPRE_DESCRICAOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CdsBuscoPRE_VIGENCIA1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnExtraClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
         vgSoPrinc : Boolean;
         vgCanClose: Boolean;
         procedure FiltraTabPrecos;
         procedure SetSoPPrinc(const Value: Boolean);
  public
        procedure MigrarTabelas( Sender: tObject ) ;
        Property SoPrinc: Boolean Read vgSoPrinc write SetSoPPrinc;
        procedure BotoesAcesso;
  end;

var
  frmPesquisaTabelas: TfrmPesquisaTabelas;

implementation

uses Uteis, InicioDB, EditTabelasForm;

{$R *.dfm}

procedure TfrmPesquisaTabelas.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,1115);
  Self.CampoID:='PRE_ID';
  Self.CampoIDRetorno:='PRE_ID';
  Self.ProcedureFiltro:=FiltraTabPrecos;
  aCaption:='Tabelas de Preços';
  vgCanClose:=True;
  btnExtra.Visible:=(BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    PRMT0001 where PMT_MULTTAB_SCRIPT<>'+qStr('S'))>0);

end;
procedure TfrmPesquisaTabelas.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPesquisaTabelas := Nil;
end;

procedure TfrmPesquisaTabelas.FiltraTabPrecos;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('select a.pre_id,');
          SQL.Add('       a.emp_codigo,');
          SQL.Add('       a.pre_codigo,');
          SQL.Add('       a.pre_dtcadastro,');
          SQL.Add('       a.cli_codigo,');
          SQL.Add('       a.pre_descricao,');
          SQL.Add('       a.pre_vigencia1,');
          SQL.Add('       a.pre_vigencia2,');
          SQL.Add('       a.pre_tipo_tabela,');
          SQL.Add('       b.cli_razao');
          SQL.Add('From precos0000 a');
          SQL.Add('    left join cli0000 b on b.cli_codigo=a.cli_codigo');
          if dbInicio.Exclusivo('CLIENTES') then
             SQLAdd( 'A.EMP_CODIGO='+dbInicio.Empresa.EMP_CODIGO);
          if edit1.Text<>'' then
          begin
               if StrToIntDef(edit1.Text,-1)=-1 then
                  SqlAdd( CampoSqlOr( ['a.pre_DESCRICAO','b.cli_razao'],edit1.Text ) )
               else
                  SqlAdd( CampoSqlOr( ['a.pre_codigo','a.cli_codigo'], edit1.Text) );
          end;

          if vgSoPrinc then
             SqlAdd( 'a.pre_tipo_tabela<2') // principal ou Alternativa
          Else
          CASE ComboBox1.ItemIndex of
          1: SqlAdd( 'a.pre_tipo_tabela=0'); // padrão - principal
          2: SqlAdd( 'a.pre_tipo_tabela=1'); // Alternativa
          3: SqlAdd( 'a.pre_tipo_tabela=2'); // promo
          4: SqlAdd( 'a.pre_tipo_tabela=3'); // exclusiva clientes
          end;
          if not EmptyDate( DateEdit1.Date ) then
             SqlAdd( '( a.pre_vigencia1<='+DateToSql(DateEdit1.Date)+' and a.pre_vigencia2>='+DateToSql(DateEdit1.Date)+')' );
          sql.Add('Order By Coalesce( a.pre_descricao, b.cli_razao)' );
     end;
end;

procedure TfrmPesquisaTabelas.btnNovoClick(Sender: tObject);
var mtag: integer;
    tcr: TfrmEditTabelas;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmEditTabelas.create( self );
     case mtag of
     1: flg:=tcr.novo('Nova Tabela de Preços') ;
     2: tcr.Consulta(CdsBuscoPRE_ID.asString,'Consulta Tabela de Preços');
     3: flg:=tcr.edita(CdsBuscoPRE_ID.asString,'Edição de Tabela de Preços');
     4: begin
             if CdsBuscoPRE_TIPO_TABELA.AsInteger=0 then
                GeraException('Tabela PADRÃO não pode ser excluida!');
             flg:=tcr.exclui(CdsBuscoPRE_ID.asString,'Exclusão de Tabela de Preços');

        end;
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(CdsBuscoPRE_ID.asstring) then
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

procedure TfrmPesquisaTabelas.FormShow(Sender: tObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
  BotoesAcesso;
end;

procedure TfrmPesquisaTabelas.CdsBuscoPRE_TIPO_TABELAGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     inherited;
     case Sender.AsInteger of
     0: text := 'Padrão';
     1: text := 'Alternativa';
     2: text := 'Promocional';
     3: text := 'Exclusiva';
     end;  
end;

procedure TfrmPesquisaTabelas.CdsBuscoPRE_DESCRICAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if CdsBuscoPRE_DESCRICAO.IsNull then
     text := CdsBuscoCli_Codigo.asstring+' - '+CdsBuscoCli_razao.AsString
  Else
     text := CdsBuscoPRE_DESCRICAO.AsString;
end;

procedure TfrmPesquisaTabelas.CdsBuscoPRE_VIGENCIA1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := '';
  if not CdsBuscopre_Vigencia1.isnull then
     Text := CdsBuscopre_Vigencia1.asstring;
  if not CdsBuscopre_Vigencia2.isnull then
     Text := Text + ' até ' + CdsBuscopre_Vigencia2.asstring;
end;

procedure TfrmPesquisaTabelas.BotoesAcesso;
begin
     if assigned(frmPesquisaTabelas) then
     begin
       btnNovo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,frmPesquisaTabelas).Incluir;
       btnExclui.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,frmPesquisaTabelas).Exluir;
       btnEdita.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,frmPesquisaTabelas).Alterar;
       dsBusca.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,frmPesquisaTabelas).Alterar;
     end;
end;

procedure TfrmPesquisaTabelas.btnExtraClick(Sender: tObject);
begin
     // Foi Para tela de Parâmetros
end;



procedure TfrmPesquisaTabelas.MigrarTabelas( Sender: tObject ) ;
var qry: TSQLQuery;
    x, cnt2: integer ;
    id_tab,cod_tab, sTipo : string;
    Margem: Currency ;
    Memo: TMemo;

const campos: array [1..6] of string =  ('PRD_PVENDA', 'PRD_PVENDA2', 'PRD_PVENDA3', 'PRD_PVENDA4', 'PRD_PVENDA5', 'PRD_PVENDA6' ) ;
      titulos: array [1..6] of string = ('TABELA PADRÃO(VENDA)', 'TABELA 2', 'TABELA 3', 'TABELA 4', 'TABELA 5', 'TABELA 6' ) ;
begin
    inherited;


    qry := TSQLQuery.Create(self);
    qry.SQLConnection := DBInicio.MainDB;
    screen.cursor := crSqlWait;

    btnExtra.Caption := 'Aguarde...';
    application.processmessages;
    btnNovo.Visible := False;
    btnEdita.Visible := False;
    btnConsulta.Visible := False;
    btnImprime.Visible := False;
    btnExcel.Visible := False;
    btnExclui.visible := False;
    Panel2.Visible := False;

    memo := tMemo.Create(Self);
    Memo.visible := False;
    Memo.Parent := Self;
    memo.Lines.Add('SET TERM ^;');
    memo.Lines.Add('');
    Memo.Align := alClient;
    Memo.visible:=True;


    Self.aCaption := 'Geração de script Sql - Importar Preços da Versão Anterior do Sistema - A G U A R D E';
    Self.FormStyle := fsStayOnTop;
    Self.Show;
    Self.Caption := aCaption ; 
    //Self.All
    Self.vgCanClose:=False;
    Application.ProcessMessages;


    try
       for x := 1 to 6 do
       begin
            if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PRD0000 WHERE coalesce('+campos[x]+',0)<>0 AND EMP_CODIGO='+DBINICIO.Empresa.EMP_CODIGO)>0 then
            begin
                 id_tab := IntToStr(DBInicio.GetNextSequence('GEN_PRE_ID'));
                 cod_tab := IntToStr(DBInicio.GetNextSequence('GEN_PRE_CODIGO'));
                 if x = 1 then
                    sTipo:='0'  // principal
                 else
                    sTipo:='1'; // Alternativa
                 Memo.lines.Add('insert into precos0000 ( PRE_ID, pre_dtcadastro, PRE_CODIGO, EMP_CODIGO, PRE_DESCRICAO, PRE_TIPO_TABELA ) values ( '+id_tab+', '+DateToSql(date)+', '+cod_tab+', '+qStr(StrZero(DBINICIO.Empresa.EMP_CODIGO,3))+', '+qStr(titulos[x])+', '+sTipo+' )^');
                 Memo.lines.Add('');
                 Memo.lines.Add('COMMIT WORK^');
                 Memo.lines.Add('');
                 qry.Close;
                 qry.SQL.Text := 'SELECT PRD_CODIGO, PRD_PCUSTO, '+campos[x]+' FROM PRD0000 WHERE coalesce('+campos[x]+',0)<>0';
                 qry.Open;

                 cnt2 := 0;
                 try
                    while not qry.Eof do
                    begin
                         if cnt2=100 then
                         begin
                             Memo.lines.Add('');
                             Memo.lines.Add('COMMIT WORK^');
                             Memo.lines.Add('');
                             cnt2:=0;
                             Application.ProcessMessages;
                         end;
                         inc(cnt2);

                         Margem := 0;
                         if qry.fields[1].AsCurrency<>0 then
                            Margem := (qry.Fields[2].AsCurrency / qry.Fields[1].AsCurrency);
                         Memo.Lines.Add('insert into PRECOS0001 ( ID, PRE_ID, PRD_CODIGO, PRE_MARGEM, PRE_PRECO ) '+
                                        'values ( '+IntToStr(DBInicio.GetNextSequence('GEN_PRE_ID_DET'))+', '+id_tab+', '+qStr(qry.fields[0].asstring)+', '+floattosql(Margem)+', '+FloatToSql(qry.Fields[2].AsCurrency)+')^');
                         qry.Next ;
                    end;

                 finally
                        Memo.lines.Add('');
                        Memo.lines.Add('COMMIT WORK^');
                        Memo.lines.Add('');
                        Memo.lines.Add('UPDATE PRMT0001 set PMT_MULTTAB_SCRIPT='+qStr('S')+'^' );
                        Memo.lines.Add('COMMIT WORK^');
                        Memo.lines.Add('');

                 end;
            end;
       end;

    finally

         qry.close;
         FreeAndNil(qry);
         screen.cursor := crDefault;

         Memo.Align := alClient;
         Memo.visible:=True;
         Self.Hide;
         Self.vgCanClose:=True;
         aCaption := 'Preços - Copie e execute o script a seguir.'; 
         Self.ShowModal;

    end;
end;

procedure TfrmPesquisaTabelas.SetSoPPrinc(const Value: Boolean);
begin
     ComboBox1.Items.Clear;
     ComboBox1.Items.Add('Todas');
     ComboBox1.Items.Add('Tabela Padrão');    //principal
     ComboBox1.Items.Add('Tabelas Alternativas');
     if not Value Then
     begin
          ComboBox1.Items.Add('Promoções');
          ComboBox1.Items.Add('Tabelas Exclusivas');
          aCaption := 'Tabela Padrão/Alternativa(s)';
     end;
     vgSoPrinc := Value ; 
end;

procedure TfrmPesquisaTabelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfrmPesquisaTabelas.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose:=vgCanClose;
end;

end.


