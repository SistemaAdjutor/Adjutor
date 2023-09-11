{***********************************************************
| Programa...: Prd0005  - Nome formulario =  FormPrdLinha  
| Objetivo...: Cadastra linhas p/ produtos                 
| Analista...: Marcio Neu Pacheco dos Santos               
| Programador: Jackson Neu Pacheco                         
|                                                          
| Comentários:                                             
|                                                          
| Criação..........: dez/98
| Ultima Alteração.: mai/01
| Alterado por.....: Márcio
|
  Migraçao Interbase
  Migracao .......: Ago/2003
  Migrado por.....: Rodrigo Ramos

***********************************************************}
unit Prd0005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Data.DBXFirebird, ppDesignLayer,
  ppParameter, SimpleDS, Data.FMTBcd;

type
  TFormPrdLinha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBeLin_descri: TDBEdit;
    DBNavigator1: TDBNavigator;
    EdtLin_Codigo: TEdit;
    SqlCdsRelLinha: TSQLClientDataSet;
    dsRelLinha: TDataSource;
    ppDBRelLinha: TppDBPipeline;
    ppRPRelLinhaProduto01: TppReport;
    SqlCdsRelLinhaLIN_CODIGO: TStringField;
    SqlCdsRelLinhaLIN_DESCRI: TStringField;
    SqlCdsRelLinhaEMP_CODIGO: TStringField;
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
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    Panel: TPanel;
    Bit_Relatorio: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    qInsert: TSQLQuery;
    procedure MudaCorCampos(Sender: tObject);
    procedure VerificaEdicao;
    procedure BuscaRegistro;
    procedure DesabilitaBotoes;
    procedure Habilitabotoes;
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtLin_CodigoExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtLin_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtLin_CodigoEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
                 {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    inserir      : boolean;
    
  public
    { Public declarations }
    sCodigoBuscar:String;
    procedure BotoesAcesso;
  end;

var
  FormPrdLinha: TFormPrdLinha;

implementation

uses Uteis, DataCad, ufrmpreviewrb, iniciodb, Prd0001;

   {$R *.DFM}

procedure TFormPrdLinha.MudaCorCampos(Sender: tObject);
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

procedure TFormPrdLinha.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsPrdLinha.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString := EdtLin_codigo.Text;
                  EdtLin_codigo.ReadOnly := False;
                  DataCadastros.CdsPrdLinha.Post;
                  DataCadastros.CdsPrdLinha.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros.CdsPrdLinha.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormPrdLinha.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.Visible := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    EdtLin_Codigo.ReadOnly := False;
    EdtLin_Codigo.Color := clWindow;
    DbNavigator1.Enabled := True;
    BotoesAcesso;
end;

procedure TFormPrdLinha.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    EdtLin_Codigo.ReadOnly := True;
    EdtLin_Codigo.Color := clSilver;
    DbNavigator1.Enabled := False;

end;

procedure TFormPrdLinha.buscaRegistro; //Busca pelo codigo
begin
    if DataCadastros.CdsPrdLinha.Locate('LIN_CODIGO',StrZero(EdtLin_Codigo.Text,EdtLin_Codigo.MaxLength),[])= False then
       begin
           messageBeep($ffff);
           uteis.aviso('Linha de Produção não cadastrada !!!');
       end;
end;


procedure TFormPrdLinha.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      {Verifica se compartilha tabelas}
      DataCadastros.CdsPrdLinha.Close;
      DataCadastros.CdsPrdLinha.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_LINHA','','LIN_CODIGO','');
      DataCadastros.CdsPrdLinha.Open;
    except
       uteis.erro  ('Impossivel acessar tabela "Linha de Produtos" !!!');
    end;//end do try

   Habilitabotoes;
   if DataCadastros.CdsPrdLinha.IsEmpty Then  //Evita alteração antes que se
      begin                             //inclua registros na tabela.
          DataCadastros.DsPrdLinha.AutoEdit := False;
      end
   else
       begin
         DataCadastros.CdsPrdLinha.Locate('LIN_CODIGO',sCodigoBuscar,[]);
       end;
   EdtLin_Codigo.text := DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString;
   EdtLin_Codigo.SetFocus;
   Screen.Cursor := crDefault;
end;

procedure TFormPrdLinha.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsPrdLinha.Insert;
      inserir := True;
      EdtLin_codigo.Text := '000';
      DBeLin_descri.Text := '';
      screen.cursor := crdefault;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormPrdLinha);
      DBeLin_Descri.setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormPrdLinha.Bit_ExcluirClick(Sender: tObject);
begin
  if DBInicio.BuscaUmDadoSqlAsInteger(' SELECT count(*) FROM PRD0000 WHERE LIN_CODIGO = '+QuotedStr(EdtLin_codigo.Text)) > 0 then
    GeraException('Não pode excluir uma LINHA que já foi cadastrado em um produto');

    if DataCadastros.CdsPrdLinha.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           DataCadastros.DsPrdLinha.AutoEdit := False;
           messagebeep($ffff);
           uteis.aviso('Não existe Linha de Produto Cadastrada !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Registro ?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsPrdLinha.Delete;
           dataCadastros.CdsPrdLinha.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
    EdtLin_codigo.text := DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString;
    EdtLin_Codigo.SetFocus;
end;


procedure TFormPrdLinha.Bit_GravarClick(Sender: tObject);
var
  sql : string;
  reg: integer;
begin
    try
      Screen.Cursor := crHourGlass;

      if inserir then
      begin
        inserir := false;
        reg := DBInicio.BuscaUmDadoSqlAsInteger('SELECT MAX(LIN_CODIGO) FROM PRD_LINHA WHERE LIN_CODIGO <> ' + QuotedStr('999'));
        reg := reg + 1;
        sql := 'INSERT INTO PRD_LINHA VALUES(' +
          QuotedStr(StrZero(reg,EdtLin_Codigo.MaxLength)) + ',' +
          QuotedStr(DBeLin_descri.Text)  + ',' +
          QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
        ')';
        qInsert.Close;
        qInsert.sql.Text := sql;
        qInsert.ExecSQL;
        DataCadastros.CdsPrdLinha.CancelUpdates;
        DataCadastros.CdsPrdLinha.Close;
        DataCadastros.CdsPrdLinha.Open;
        DataCadastros.CdsPrdLinha.Locate('LIN_CODIGO', StrZero(reg,EdtLin_Codigo.MaxLength), []);
        if FormProduto <> nil then
        begin
          FormProduto.DBEPRD_SEGMENTO.Text := StrZero(reg,EdtLin_Codigo.MaxLength);
          FormProduto.DBEPRD_SEGMENTOExit(Sender);
        end;

      end
      else
      begin
        DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString := StrZero(EdtLin_Codigo.Text,EdtLin_Codigo.MaxLength);
        DataCadastros.CdsPrdLinhaEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
        DataCadastros.CdsPrdLinha.ApplyUpdates(0);
        DataCadastros.CdsPrdLinha.Refresh;
        if FormProduto <> nil then
        begin
          FormProduto.DBEPRD_SEGMENTO.Text := DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString;
          FormProduto.DBEPRD_SEGMENTOExit(Sender);
        end;

      end;

      DataCadastros.DsPrdLinha.AutoEdit := true;
      Screen.Cursor := crDefault;
      EdtLin_Codigo.Text := DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString;
      Habilitabotoes;
      EdtLin_codigo.SetFocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;


procedure TFormPrdLinha.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    DataCadastros.CdsPrdLinha.Cancel;
    if DataCadastros.CdsPrdLinha.RecordCount = 0 Then   //Ao cancelar ultimo record da
         BEGIN                                      //tabela deixa autoedit=true;
           DataCadastros.DsPrdLinha.AutoEdit := False;
           EdtLin_codigo.ReadOnly := True;
         end;
    screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtLin_codigo.Text := DataCadastros.CdsPrdLinhaLin_CODIGO.AsString;
    EdtLin_codigo.SetFocus;
end;


procedure TFormPrdLinha.Bit_SairClick(Sender: tObject);
begin
close;
end;


procedure TFormPrdLinha.BotoesAcesso;
begin
     if assigned(FormPrdLinha) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormPrdLinha).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormPrdLinha).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormPrdLinha).Relatorio;
       DataCadastros.DsPrdLinha.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormPrdLinha).Alterar;
     end;
end;

procedure TFormPrdLinha.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
  EdtLin_codigo.Text := DataCadastros.CdsPrdLinhaLIN_CODIGO.AsString;
end;


procedure TFormPrdLinha.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
 VerificaEdicao;
  Try
     DataCadastros.CdsPrdLinha.Close;
  except
     messagebeep(20);
     uteis.erro  ('Impossível Fechar a tabela "LINHA DE PRODUTO".');
  end;
  try
    SqlCdsRelLinha.Close;
  except on E:EdatabaseError do
      begin
          uteis.erro  (Pchar('Impossível fechar tabela "LINHA DE PRODUTOS" !'+e.Message));
      end;
  end;
end;


procedure TFormPrdLinha.FormCreate(Sender: tObject);
begin
     self.width:= 455;
     self.height:= 150;
end;
procedure TFormPrdLinha.FormDestroy(Sender: TObject);
begin
     FormPrdLinha := Nil;
end;

procedure TFormPrdLinha.EdtLin_CodigoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_novo')or(ActiveControl.Name = 'Bit_Cancelar')or(ActiveControl.Name = 'Bit_Sair') then
       exit;
    if EdtLin_codigo.Text <> '' then
       begin
           EdtLin_codigo.Text := StrZero(EdtLin_codigo.Text, EdtLin_codigo.MaxLength);
           if (DataCadastros.CdsPrdLinha.State in [Dsbrowse]) and not (DataCadastros.CdsPrdLinha.IsEmpty) then
              BuscaRegistro;
       end
    else
       begin
           uteis.aviso('Informe o código do segmento !');
           EdtLin_Codigo.SetFocus;
           EdtLin_Codigo.SelectAll;
       end;
end;

procedure TFormPrdLinha.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRelLinha.Close;
      SqlCdsRelLinha.CommandText:=SQLDEF('TABELAS','SELECT X1.* FROM PRD_LINHA X1','','LIN_DESCRI','X1.');
      SqlCdsRelLinha.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DE SEGMENTOS/ LINHA DE PRODUTO';
      LBL_00_LTITULO2.Caption := 'ORDEM POR DESCRIÇÃO';
      ppRPRelLinhaProduto01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelLinhaProduto01);
      EdtLin_Codigo.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormPrdLinha.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormPrdLinha.EdtLin_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormPrdLinha.EdtLin_CodigoEnter(Sender: tObject);
begin
    EdtLin_codigo.SelectAll;
end;

procedure TFormPrdLinha.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

end.



