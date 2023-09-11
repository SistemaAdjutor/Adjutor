unit Prd0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ComObj, System.Variants,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, Data.DBXFirebird,
  ppDesignLayer, ppParameter, SimpleDS, Vcl.Samples.Gauges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPrd_IPI = class(TForm)
    Label1: TLabel;
    DBeIPI_aliq: TDBEdit;
    DBNavigator1: TDBNavigator;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Bit_Relatorio: TBitBtn;
    Label2: TLabel;
    DbeIpi_Apelido: TDBEdit;
    EdtIPI_codigo: TDBEdit;
    SqlCdsRelClassIPI: TSQLClientDataSet;
    DsRelClassIPI: TDataSource;
    ppDBRelClassIPI: TppDBPipeline;
    ppRPRelClassificIPI01: TppReport;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel4: TppLabel;
    SqlCdsRelClassIPIIPI_CODIGO: TStringField;
    SqlCdsRelClassIPIIPI_ALIQ: TFMTBCdField;
    SqlCdsRelClassIPIEMP_CODIGO: TStringField;
    SqlCdsRelClassIPIIPI_APELIDO: TStringField;
    DbckCredito: TDBCheckBox;
    SqlCdsRelClassIPINCM_TEMCREDITO: TStringField;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    Label3: TLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    EdGenero: TMemo;
    Panel3: TPanel;
    grpAliquotaEstado: TGroupBox;
    dbgrdICMS: TDBGrid;
    DBNavigator2: TDBNavigator;
    dbcbbIPII_ESTADO: TDBComboBox;
    dbedtIPII_ALIQUOTA: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbedtIPI_VALOR_POR_ITEM: TDBEdit;
    edIpiEx: TDBEdit;
    lbl1: TLabel;
    DBCheckBox1: TDBCheckBox;
    SqlCdsRelClassIPIIPI_REDVLLIQ: TStringField;
    btnImportar: TBitBtn;
    OpenDialog1: TOpenDialog;
    pnProgresso: TPanel;
    progresso: TGauge;
    dbmNCM_DESC_FAMILIA: TDBMemo;
    qNCM: TFDQuery;
    qExecSQL: TFDQuery;
    lbProgresso: TLabel;
    SqlCdsRelClassIPINCM_DESC_FAMILIA: TMemoField;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaCodigo;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure TbPrdClassIPIBeforeEdit(DataSet: TDataSet);
    procedure EdtIPI_codigoExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtIPI_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtIPI_codigoEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure EdtIPI_codigoChange(Sender: tObject);
    procedure edIpiExKeyPress(Sender: tObject; var Key: Char);
    procedure edIpiExExit(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);

  private
    { Private declarations }
                {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    function ImportaXLS(xFileXLS: string): Boolean;

  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormPrd_IPI: TFormPrd_IPI;

implementation

uses DataCad, uteis, ufrmpreviewrb, iniciodb;

{$R *.DFM}

procedure TFormPrd_IPI.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TDBEdit}
    if Assigned(CampoDbEdit) then
       begin
          CampoDbEdit.color := clWindow;
       end;
    if ActiveControl is TDBEdit then
       begin
          if TDBEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TDBEdit(ActiveControl).color := $0080FFFF;
          CampoDbEdit := TDBEdit(ActiveControl);
       end
    else
       begin
          CampoDbEdit := nil;
       end;
    {CampoEdit :TEdit}
    if Assigned(CampoEdit) then
       begin
          CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
          if TEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TEdit(ActiveControl).color := $0080FFFF;
          CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
          CampoEdit := nil;
       end;
end;

procedure TFormPrd_IPI.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsPrdClassIPI.State in [dsEdit,dsInsert] then
       begin
         if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
            begin
                Bit_Gravar.Click;  // chama o evento onclick do botão gravar
            end
         else
            begin
                Bit_Cancelar.Click;   // chama o evento onclick do botão cancelar
            end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormPrd_IPI.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    if DataCadastros.CdsPrdClassIPI.IsEmpty then
       EdtIPI_codigo.Enabled := false
    else
       EdtIPI_codigo.Enabled := True;
    EdtIPI_codigo.Color         := clSilver;
    DBnavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TFormPrd_IPI.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    DBnavigator1.Enabled        := False;

end;

procedure TFormPrd_IPI.BuscaCodigo;// busca por codigo
begin
    if DataCadastros.CdsPrdClassIPI.State in [dsInsert,dsEdit] then
       begin
           Screen.Cursor := crHourGlass;
           DataCadastros.sqlUpdate1.Close;
           DataCadastros.sqlUpdate1.sql.text:= SqlDef('TABELAS','Select IPI_CODIGO from IPI0000','where IPI_CODIGO = '''+EdtIPI_codigo.Text+'''','IPI_CODIGO','');
           DataCadastros.sqlUpdate1.Open;
           Screen.Cursor := crDefault;
           if DataCadastros.sqlUpdate1.IsEmpty = false then
              begin
                  uteis.aviso('Código da NCM já cadasrado !');
                  DataCadastros.CdsPrdClassIPI.CancelUpdates;
                  if DataCadastros.CdsPrdClassIPI.State in [dsBrowse] then
                     begin
                         if DataCadastros.CdsPrdClassIPI.Locate('IPI_CODIGO',DataCadastros.sqlUpdate1.FieldByName('IPI_CODIGO').ASstring,[]) =  true then
                            begin
                                DataCadastros.sqlUpdate1.Close;
                                EdtIPI_codigo.Text := DataCadastros.CdsPrdClassIPIIPI_CODIGO.AsString;
                                HabilitaBotoes;
                                DBeIPI_aliq.SetFocus;
                            end;
                     end;
              end
           else
              begin
                  DBeIPI_aliq.SetFocus;
              end;
           DataCadastros.sqlUpdate1.Close;
       end;
end;

procedure TFormPrd_IPI.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DataCadastros.CdsPrdGrupo.Close;
      DataCadastros.CdsPrdClassIPI.CommandText := SQLDEF('TABELAS','SELECT * FROM IPI0000','','IPI_CODIGO','');
      DataCadastros.CdsPrdClassIPI.Open;
    except
      on e:exception do
        uteis.erro  ('Impossível acessar a tabela de NCM. ' + e.Message);
    end;
    Habilitabotoes;
    if DataCadastros.CdsPrdClassIPI.IsEmpty Then  //Evita alteração antes que se
       begin                                  //inclua registros na tabela.
           DataCadastros.DsPrdClassIPI.AutoEdit := False;
           EdtIPI_codigo.Color := clSilver;
           EdtIPI_codigo.ReadOnly := True;
       end;
    EdtIPI_codigo.text := DataCadastros.CdsPrdClassIPIIPI_codigo.Value;
    Screen.Cursor := crDefault;
end;

procedure TFormPrd_IPI.Bit_novoClick(Sender: tObject);
{var
codigo:integer;}
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.DsPrdClassIPI.AutoEdit := true;
      DataCadastros.CdsPrdClassIPI.Insert;
      // desabilita rascunho do checkbox
      DataCadastros.CdsPrdClassIPINCM_TEMCREDITO.AsString := 'N';
      EdtIPI_codigo.Text := '';
      screen.cursor := crdefault;
      EdtIpI_codigo.Enabled  := True;
      EdtIpI_codigo.ReadOnly := False;
      EdtIpI_codigo.Color    := clWindow;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormPrd_IPI);
      EdtIPI_codigo.SetFocus;
      DesabilitaBotoes;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormPrd_IPI.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsPrdClassIPI.RecordCount = 0 Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não Existe Registro Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Registro?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsPrdClassIPI.Delete;
           DataCadastros.CdsPrdClassIPI.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
    EdtIPI_codigo.text := DataCadastros.CdsPrdClassIPIIPI_codigo.Value;
end;

procedure TFormPrd_IPI.Bit_GravarClick(Sender: tObject);
begin
    //salva o registro
    IF EdtIPI_codigo.Field.IsNull then
       begin
           uteis.aviso('Informe o código da NCM !');
           EdtIPI_codigo.SetFocus;
           Exit;
       end;
    try
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsPrdClassIPIIPI_CODIGO.AsString := EdtIPI_codigo.Text;
      DataCadastros.CdsPrdClassIPIEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsPrdClassIPI.ApplyUpdates(0);
      DataCadastros.DsPrdClassIpi.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      DbeIPI_Aliq.Setfocus;
    except on e:eDatabaseError do
       uteis.erro  (pchar('Erro ao gravar o registro !'+e.Message));
    end;
end;

procedure TFormPrd_IPI.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsPrdClassIPI.Cancel;
    if DataCadastros.CdsPrdClassIPI.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                       //tabela deixa autoedit=true;
           DataCadastros.DsPrdClassIPI.AutoEdit := False;
           EdtIPI_codigo.ReadOnly := True;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtIPI_codigo.Text := DataCadastros.CdsPrdClassIPIIPI_codigo.AsString;
    DbeIPI_Aliq.Setfocus;
end;

procedure TFormPrd_IPI.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormPrd_IPI.BotoesAcesso;
begin
     if assigned(FormPrd_IPI) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormPrd_IPI).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormPrd_IPI).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormPrd_IPI).Relatorio;
       DataCadastros.DsPrdClassIPI.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormPrd_IPI).Alterar;
     end;
end;

procedure TFormPrd_IPI.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros.CdsPrdClassIPI.Close;
      DataCadastros.CdsPrdClassIPIICMS.Close;
      SqlCdsRelClassIPI.Close;
    except on E:EdataBaseError do
       uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
end;
procedure TFormPrd_IPI.FormDestroy(Sender: TObject);
begin
     FormPrd_Ipi := Nil;
end;

procedure TFormPrd_IPI.TbPrdClassIPIBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormPrd_IPI.EdtIPI_codigoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') then
       exit;
    if not DataCadastros.CdsPrdClassIPI.IsEmpty then
       BuscaCodigo;
end;

procedure TFormPrd_IPI.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourglass;
    try
      SqlCdsRelClassIPI.Close;
      SqlCdsRelClassIPI.CommandText:=SQLDEF('TABELAS','SELECT * FROM IPI0000','','IPI_CODIGO','');
      SqlCdsRelClassIPI.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DA CLASSIFICAÇÃO FISCAL DOS PRODUTOS - NCM';
      LBL_00_LTITULO2.Caption := '';
      ppRPRelClassificIPI01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelClassificIPI01);
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormPrd_IPI.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormPrd_IPI.EdtIPI_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormPrd_IPI.EdtIPI_codigoEnter(Sender: tObject);
begin
    EdtIpi_codigo.SelectAll;
end;

procedure TFormPrd_IPI.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
//          if Bit_Cancelar.Visible then
//             Bit_Cancelar.Click
//          else
//          if Bit_Sair.Visible then
//             Bit_Sair.Click;
          close;
          key := #0;
       end;
end;

procedure TFormPrd_IPI.EdtIPI_codigoChange(Sender: tObject);
begin
   EdGenero.Text := '';
   if (Length(EdtIPI_codigo.Text) >= 2) then
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='select SPED_GENDESCRI from SPED_GENERO where SPED_GENCODIGO = '''+copy(EdtIPI_codigo.Text,1,2)+'''';;
         DataCadastros.sqlUpdate.open;
         if (not DataCadastros.sqlUpdate.IsEmpty) then
            EdGenero.Text := copy(EdtIPI_codigo.Text,1,2)+ ' - ' +DataCadastros.sqlUpdate.FieldByName('SPED_GENDESCRI').AsString;
      end;
end;

procedure TFormPrd_IPI.edIpiExKeyPress(Sender: tObject;
  var Key: Char);
begin
     AcceptNumberOnly( key );
end;

procedure TFormPrd_IPI.edIpiExExit(Sender: tObject);
begin
     with TDBEdit(sender) do
     begin
          if Trim(text)<>'' then
             text := strzero( StrToIntDef( Text,0 ), 2);
     end;
end;

procedure TFormPrd_IPI.btnImportarClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ImportaXLS(OpenDialog1.FileName);
end;

function TFormPrd_IPI.ImportaXLS(xFileXLS: string): Boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS: OLEVariant;
   RangeMatrix: Variant;
   x, y, k: Integer;
   ncm, ex, descricao, aliquota, sql: string;
begin
  lbProgresso.Caption := 'Abrindo Planilha...';
  Application.ProcessMessages;
  pnProgresso.Visible := True;
  progresso.Progress := 0;
  Result := False;
  // Cria Excel- OLE Object
  XLSAplicacao := CreateOleObject('Excel.Application');
  try
    // Esconde Excel
    XLSAplicacao.Visible := False;
    // Abre o Workbook
    XLSAplicacao.Workbooks.Open(xFileXLS);

    {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
    XLSAplicacao.WorkSheets[1].Activate;
    {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
    AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];

    AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Pegar o número da última linha
    x := XLSAplicacao.ActiveCell.Row;
    // Pegar o número da última coluna
    y := XLSAplicacao.ActiveCell.Column;
    // Seta xStringGrid linha e coluna
    progresso.MaxValue := x;

    // Associaca a variant WorkSheet com a variant do Delphi
    RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;
    k := 1;

    lbProgresso.Caption := 'Abrindo Arquivo de NCM';
    Application.ProcessMessages;

    qNCM.Close;
    qNCM.SQL.Text := 'SELECT IPI_CODIGO, EMP_CODIGO FROM IPI0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) + ' ORDER BY IPI_CODIGO';
    qNCM.Open();

    lbProgresso.Caption := 'Processando arquivo';
    Application.ProcessMessages;

    repeat
      progresso.Progress := k;
      ncm := RetiraTodaMascara(RangeMatrix[k, 1]);
      ex := RangeMatrix[k, 2];
      descricao := RangeMatrix[k, 3];
      aliquota := RangeMatrix[k, 4];
      try
        if aliquota = '' then
          aliquota := 'NULL'
        else if aliquota = 'NT' then
          aliquota := 'NULL'
        else if StrToFloat(aliquota) >= 0 then
          aliquota := FloatToSQL(StrToFloat(aliquota));
      except
        Inc(k, 1);
        continue
      end;
      if (ncm.Length <> 8) or (ex <> '') or (StrToIntDef(ncm, 0 ) = 0) then
      begin
        Inc(k, 1);
        continue
      end;
//      if DBInicio.BuscaUmDadoSqlAsInteger('SELECT IPI_CODIGO FROM IPI0000 WHERE IPI_CODIGO = ' + QuotedStr(ncm) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)   ) > 0 then
      if qNCM.Locate('IPI_CODIGO;EMP_CODIGO', VarArrayOf([ncm, DBInicio.Emp_Codigo]), []) then
        sql := 'UPDATE IPI0000 SET IPI_ALIQ = ' + aliquota + ', NCM_DESC_FAMILIA = ' + QuotedStr(TiraCaracteresEspeciais(descricao)) + ' WHERE IPI_CODIGO = ' + QuotedStr(ncm) + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
      else
        sql := 'INSERT INTO IPI0000 (IPI_CODIGO, IPI_ALIQ, NCM_DESC_FAMILIA, EMP_CODIGO) VALUES (' + QuotedStr(ncm) + ' ,' + aliquota + ', ' + QuotedStr(TiraCaracteresEspeciais(descricao)) + ', ' + QuotedStr(DBInicio.Emp_Codigo) + ')';

      try
        // DBInicio.ExecSql( sql);
        qExecSQL.SQL.Text := sql;
        qExecSQL.ExecSQL;
      except
        on e:Exception do
          showmessage(e.message);

      end;
      Inc(k, 1);
    until k > x;
    RangeMatrix := Unassigned;
  finally
    pnProgresso.Visible := False;
    MessageDlg('Arquivo Importado com Sucesso', mtInformation, [mbOk], 0);
    if not VarIsEmpty(XLSAplicacao) then
    begin
      // Fecha o Microsoft Excel
      XLSAplicacao.WorkBooks.Close;
      XLSAplicacao.Quit;
      AbaXLS := Unassigned;
      XLSAplicacao := Unassigned;
      Result := True;
    end;
  end;
end;


end.


