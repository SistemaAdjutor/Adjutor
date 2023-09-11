{***********************************************************
| Programa...: CEL0001 - Nome formulario = FormCelula
| Objetivo...: Cadastro das Celulas de Produção
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Pacheco
|
| Comentários:
|
| Criação..........: DEZ/2002
| Ultima Alteração.: MAR/2002
| Alterado por.....:
|
***********************************************************}

unit CEL0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Buttons, Mask, Db, DBTables, Grids, DBGrids,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, ppModule, raCodMod, ppStrtch, ppSubRpt, Data.DBXFirebird,
  ppParameter, ppDesignLayer, SimpleDS;

type
  TFormCelula = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    EdtCel_codigo: TEdit;
    Panel2: TPanel;
    DbeCEL_NOME: TDBEdit;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Bit_Lista: TBitBtn;
    SqlCdsExcluirCelula: TSQLClientDataSet;
    SqlCdsExcluirCelulaCEL_CODIGO: TStringField;
    SqlCdsExcluirCelulaEMP_CODIGO: TStringField;
    SqlCdsRelCelula: TSQLClientDataSet;
    DsRelCelula: TDataSource;
    ppRepCelula: TppReport;
    SqlCdsRelCelulaCEL_CODIGO: TStringField;
    SqlCdsRelCelulaCEL_NOME: TStringField;
    SqlCdsRelCelulaCEL_RAZAO: TStringField;
    SqlCdsRelCelulaCEL_CIDADE: TStringField;
    SqlCdsRelCelulaCEL_FONE1: TStringField;
    SqlCdsRelCelulaCEL_ENDE: TStringField;
    SqlCdsRelCelulaCEL_OBS: TStringField;
    ppDBPRelCelula: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    raCodeModule1: TraCodeModule;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    raCodeModule2: TraCodeModule;
    panel3: TPanel;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_ListaClick(Sender: tObject);
    procedure PesquisaCelula;
    procedure EdtCel_codigoExit(Sender: tObject);
    procedure EdtCel_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure DbeCEL_NOMEEnter(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
   {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
  public
    { Public declarations }
    procedure BotoesAcesso;

  end;

var
  FormCelula: TFormCelula;

implementation

uses Uteis, RWFunc, DmProdu, CEL0010, Men0001,
  DataCad, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFormCelula.MudaCorCampos(Sender: tObject);
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

procedure TFormCelula.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 50;
    try
      DmProducao.CdsCelula.Close;
      DmProducao.CdsCelula.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT * FROM CEL0000','','CEL_CODIGO','');
      DmProducao.CdsCelula.Open;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela CEL0000!'+e.message));
        end;
    end;
    Screen.Cursor := crDefault;
    Habilitabotoes;

    if DmProducao.CdsCelula.IsEmpty Then    //Evita alteração antes que se
       begin                                    //inclua registros na tabela.
           DmProducao.DsCelula.AutoEdit:=False;
           EdtCEL_codigo.Enabled := False;
       end;
    EdtCEL_Codigo.text := DmProducao.CdsCelulaCEL_CODIGO.Value;
    Screen.Cursor := crDefault;
end;

procedure TFormCelula.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Try
      DmProducao.CdsCelula.Close;
    except
      uteis.erro  ('Impossível fechar a tabela de Células!');
    end;
    Action := CaFree;
end;

procedure TFormCelula.HabilitaBotoes;
begin
    Bit_lista.Enabled:=true;
    Bit_Relatorio.Enabled := True;
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    Bit_Sair.Visible := True;
    EdtCEL_Codigo.Enabled := True;
    EdtCEL_Codigo.Color := clWindow;
    DbNavigator1.Enabled := True;
    BotoesAcesso;
end;

procedure TFormCelula.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_lista.Enabled:=false;
    Bit_Relatorio.Enabled := False;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    Bit_Sair.Visible := False;
    EdtCEL_Codigo.Enabled := False;
    EdtCEL_Codigo.Color := clSilver;
    DbNavigator1.Enabled := False;

end;

procedure TFormCelula.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor:= crHourglass;
      DmProducao.CdsCelula.Insert;
      EdtCel_Codigo.Text := '000';
      Screen.Cursor:= crDefault;
      DBecel_Nome.SetFocus;
      DesabilitaBotoes;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TFormCelula.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsCelula.IsEmpty Then        //evita exclusão de registro
       Begin                                    //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe celula cadastrada!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir Célula?')= Mryes then
       begin
           Try
             SqlCdsExcluirCelula.Close;
             SqlCdsExcluirCelula.CommandText:=SQLDEF('ORDEMPRODUCAO','Select CEL_CODIGO,EMP_CODIGO from CEL_CP01','Where CEL_CODIGO='''+EdtCel_codigo.TEXT+'''','CEL_CODIGO','');
             SqlCdsExcluirCelula.Open;
             if SqlCdsExcluirCelula.IsEmpty then
                begin
                    Screen.cursor := crHourglass;
                    DmProducao.CdsCelula.Delete;
                    DmProducao.CdsCelula.ApplyUpdates(0);
                    EdtCel_codigo.text := DmProducao.CdsCelulaCEL_CODIGO.AsString;
                    EdtCel_codigo.SetFocus;
                    EdtCel_codigo.SelectAll;
                    screen.cursor := crDefault;
                    SqlCdsExcluirCelula.Close;
                end
             else
                begin
                    uteis.aviso('Esta Célula não pode ser Excluído...'+Chr(13)+'Porquê possui Integrantes Cadastrados..');
                    EdtCel_codigo.text := DmProducao.CdsCelulaCEL_CODIGO.AsString;
                    EdtCel_codigo.SetFocus;
                    EdtCel_codigo.SelectAll;
                    screen.cursor := crdefault;
                    SqlCdsExcluirCelula.Close;
                end;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao abrir tabela CELULA!'+e.message));
           end;
       end;
end;

procedure TFormCelula.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      DmProducao.CdsCelulaCEL_CODIGO.Value := EdtCEl_Codigo.text;
      DmProducao.CdsCelulaEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DmProducao.CdsCelula.ApplyUpdates(0);
      DmProducao.CdsCelula.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtCel_codigo.Text := DmProducao.CdsCelulaCEL_CODIGO.AsString;
      DbeCEl_nome.Setfocus;
      DmProducao.DsCelula.AutoEdit := true;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro !'+e.Message));
    end;
end;

procedure TFormCelula.Bit_CancelarClick(Sender: tObject);
begin
    DmProducao.CdsCelula.Cancel;
    DmProducao.CdsCelula.Refresh;
    HabilitaBotoes;
    DbeCEl_nome.Setfocus;
    EdtCEl_Codigo.Text := DmProducao.CdsCelulaCEL_CODIGO.value;
end;

procedure TFormCelula.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmProducao.CdsCelula.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DmProducao.CdsCelulaCEL_CODIGO.Value := EdtCel_codigo.Text;
                  DmProducao.CdsCelula.Post;
                  DmProducao.CdsCelula.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DmProducao.CdsCelula.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormCelula.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
end;

procedure TFormCelula.FormDestroy(Sender: TObject);
begin
     FormCelula := Nil;
end;

procedure TFormCelula.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtCel_codigo.Text:=DmProducao.CdsCelulaCEL_CODIGO.value;
end;

procedure TFormCelula.Bit_RelatorioClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      SqlCdsRelCelula.Close;
      SqlCdsRelCelula.CommandText := SQLDEF('ORDEMPRODUCAO','Select C1.CEL_CODIGO,C1.CEL_NOME,C1.CEL_RAZAO,C1.CEL_ENDE,C1.CEL_CIDADE,C1.CEL_FONE1,C1.CEL_OBS from cel0000 C1 ','','C1.CEL_NOME','C1.');
      SqlCdsRelCelula.Open;
      Screen.Cursor := crDefault;
      LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:= 'LISTAGEM DAS CÉLULAS DE PRODUÇÃO';
      LBL_00_LTITULO2.Caption:= 'ORDEM POR NOME';
      ppRepCelula.DeviceType := 'Screen';
      RBuilderPreview(ppRepCelula);
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatório !'+e.Message));
    end;
end;

procedure TFormCelula.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCelula.BotoesAcesso;
begin
     if assigned(FormCelula) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormCelula).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormCelula).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormCelula).Relatorio;
       DmProducao.DsCelula.AutoEdit := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormCelula).Alterar;
     end;
end;

procedure TFormCelula.Bit_ListaClick(Sender: tObject);
begin
    Try
      Try
        FormCelPesquisa:=TFormCelPesquisa.Create(Application);
        FormCelPesquisa.Showmodal;
      Finally
        FormCelPesquisa.Destroy;
        FormCelPesquisa:=nil;
        Screen.OnActiveControlChange:=MudaCorCampos;
      End;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    End;

end;

procedure TFormCelula.PesquisaCelula;
begin
   IF DmProducao.Cdscelula.Locate('CEL_CODIGO',StrZero(EdtCEL_CODIGO.Text,EdtCEL_CODIGO.MaxLength),[]) = FALSE THEN
      Begin
           uteis.aviso('Célula não encontrado!');
           EdtCEL_CODIGO.Text := DmProducao.CdsCelulaCEL_CODIGO.Value;
      end;
end;

procedure TFormCelula.EdtCel_codigoExit(Sender: tObject);
begin
    EdtCEL_CODIGO.Text := StrZero(EdtCEL_CODIGO.Text,EdtCEL_CODIGO.MaxLength);
    if DmProducao.CdsCelula.State in [Dsbrowse] then
       PesquisaCelula;
end;

procedure TFormCelula.EdtCel_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
   If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormCelula.DbeCEL_NOMEEnter(Sender: tObject);
begin
    DbeCel_Nome.Color := $0080FFFF;
end;

end.

