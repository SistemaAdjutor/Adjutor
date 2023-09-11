{************************************************************************
 Programa...: Cel0002  - Nome formulario = FormComponentes
 Objetivo...: Cadastrar Componentes em suas respctivas células
 Analista...: Márcio Neu Pacheco
 Programador: Jackson Neu Pacheco

 Comentários:

 Criação..........: DEZ/2001.
 Ultima Alteração.: DEZ/2001.
 Alterado por.....: Jackson

************************************************************************}
unit CEL0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFormComponentes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    EdtCCP_CODIGO: TEdit;
    DbeCCP_NOME: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    DbeCCP_FUNCAO: TDBEdit;
    DbeCCP_TUPDIARIO: TDBEdit;
    Label14: TLabel;
    DbLkCEL_CODIGO: TDBLookupComboBox;
    SqlCdsCelulas: TSQLClientDataSet;
    Dscelulas: TDataSource;
    SqlCdsCelulasCEL_CODIGO: TStringField;
    SqlCdsCelulasCEL_NOME: TStringField;
    SqlCdsExcluirIntegrante: TSQLClientDataSet;
    SqlCdsExcluirIntegranteCCP_CODIGO: TStringField;
    SqlCdsExcluirIntegranteEMP_CODIGO: TStringField;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BuscaComp;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtCCP_CODIGOExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtCCP_CODIGOKeyPress(Sender: tObject; var Key: Char);
    procedure DbeCCP_NOMEEnter(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
     {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    procedure MudaCorCampos(Sender: tObject);
  public
    { Public declarations }
    procedure BotoesAcesso;

  end;

var
  FormComponentes: TFormComponentes;

implementation

uses Uteis, Cel0003, GImpComp, RWFunc, DataCad,  DmProdu, Men0001, Balanco, iniciodb;

{$R *.DFM}

procedure TFormComponentes.MudaCorCampos(Sender: tObject);
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
    {CampoTDBLuk  :TDBLookupComboBox}
    if Assigned(CampoTDBLuk) then
       begin
          CampoTDBLuk.color := clWindow;
       end;
    if ActiveControl is TDBLookupComboBox then
       begin
          TDBLookupComboBox(ActiveControl).color := $0080FFFF;
          CampoTDBLuk := TDBLookupComboBox(ActiveControl);
       end
    else
       begin
          CampoTDBLuk := nil;
       end;
end;

procedure TFormComponentes.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Cancelar.Visible  := False;
    Bit_Gravar.Enabled    := False;
    EdtCCP_CODIGO.color   := clWindow;
    EdtCCP_CODIGO.Enabled := True;
    DbNavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormComponentes.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Cancelar.Visible  := True;
    Bit_Gravar.Enabled    := True;
    EdtCCP_CODIGO.color   := clSilver;
    EdtCCP_CODIGO.Enabled := False;
    DbNavigator1.Enabled  := False;

end;

procedure TFormComponentes.BuscaComp;
begin
    if DmProducao.CdsComponentes.locate('CCP_CODIGO',StrZero(EdtCCP_CODIGO.Text,EdtCCP_CODIGO.MaxLength),[]) = FALSE THEN
       begin
           uteis.aviso('Integrante não encontrado!');
           EdtCCP_CODIGO.Text := DmProducao.CdsComponentesCCP_CODIGO.Value;
       end;
end;

procedure TFormComponentes.FormShow(Sender: tObject);
begin
    Left := 50;
    //
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DmProducao.CdsComponentes.Close;
      DmProducao.CdsComponentes.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT * FROM CEL_CP01','','CCP_CODIGO','');
      DmProducao.CdsComponentes.Open;

      SqlCdsCelulas.Close;
      SqlCdsCelulas.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT CEL_CODIGO,CEL_NOME FROM CEL0000','','','');
      SqlCdsCelulas.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;

    HabilitaBotoes;
    if DmProducao.CdsComponentes.IsEmpty Then          //Evita alteração antes que se
       begin                                       //inclua registros na tabela.
           DmProducao.DsComponentes.AutoEdit := False;
           EdtCCP_CODIGO.Enabled := False;
       end;
    EdtCCP_CODIGO.text := DmProducao.CdsComponentesCCP_CODIGO.Value;
    Screen.Cursor := crdefault;
end;

procedure TFormComponentes.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormComponenteGrid := TFormComponenteGrid.Create(Application);
        FormComponenteGrid.ShowModal;
      finally
        FormComponenteGrid.Destroy;
        FormComponenteGrid := nil;
        Screen.OnActiveControlChange:=MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormComponentes.Bit_novoClick(Sender: tObject);

begin
    try
      Screen.Cursor:= crHourglass;
      DmProducao.CdsComponentes.Insert;
      EdtCCP_CODIGO.Text := '000';
      Screen.Cursor:= crDefault;
      DbeCCP_NOME.SetFocus;
      DbeCCP_TUPDIARIO.Field.AsCurrency := 0;
      DesabilitaBotoes;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TFormComponentes.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsComponentes.IsEmpty Then          //evita exclussão de registro
       Begin                                         //em uma Tabela Vazia.
           uteis.aviso('Não existe integrantes cadastrados!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir este integrante?')= mrYes then
       begin
           Try
             SqlCdsExcluirIntegrante.Close;
             SqlCdsExcluirIntegrante.CommandText:=SQLDEF('ORDEMPRODUCAO','Select CCP_CODIGO,EMP_CODIGO from CEL_MTC04','Where CCP_CODIGO='''+EdtCCP_CODIGO.TEXT+'''','CCP_CODIGO','');
             SqlCdsExcluirIntegrante.Open;
             if SqlCdsExcluirIntegrante.IsEmpty then
                begin
                    Screen.Cursor := crHourglass;
                    DmProducao.CdsComponentes.Delete;
                    DmProducao.CdsComponentes.ApplyUpdates(0);
                    EdtCCP_CODIGO.text := DmProducao.CdsComponentesCCP_CODIGO.Value;
                    EdtCCP_CODIGO.SetFocus;
                    EdtCCP_CODIGO.SelectAll;
                    screen.cursor := crdefault;
                    SqlCdsExcluirIntegrante.Close;
                end
             else
                begin
                    uteis.aviso('Este Integrante não pode ser Excluído...'+Chr(13)+'Porquê possui Metas Cadastradas..');
                    EdtCCP_CODIGO.text := DmProducao.CdsComponentesCCP_CODIGO.Value;
                    EdtCCP_CODIGO.SetFocus;
                    EdtCCP_CODIGO.SelectAll;
                    screen.cursor := crdefault;
                    SqlCdsExcluirIntegrante.Close;
                end;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao abrir tabela CEL_CP01!'+e.message));
           end;
       end;
end;


procedure TFormComponentes.Bit_GravarClick(Sender: tObject);
begin
    //salva o registro
    if DmProducao.CdsComponentesCEL_CODIGO.AsString = '' then
       begin
           uteis.aviso('Defina a Célula/Facção do Integrante!');
           DbLkCEL_CODIGO.SetFocus;
           exit;
       end;
    try
      DmProducao.CdsComponentesCCP_CODIGO.AsString      := EdtCCP_CODIGO.text;
      DmProducao.CdsComponentesCCP_TUPDIARIO.AsCurrency := iif(DbeCCP_TUPDIARIO.Text='','0',DbeCCP_TUPDIARIO.Text);
      DmProducao.CdsComponentesEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
      DmProducao.CdsComponentes.ApplyUpdates(0);
      DmProducao.CdsComponentes.refresh;
      DmProducao.DsComponentes.AutoEdit := true;
      Habilitabotoes;
      EdtCCP_CODIGO.Text := DmProducao.CdsComponentesCCP_CODIGO.AsString;
      DbeCCP_NOME.Setfocus;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;


procedure TFormComponentes.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DmProducao.CdsComponentes.Cancel;
    DmProducao.CdsComponentes.Refresh;
    if DmProducao.CdsComponentes.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                            //tabela deixa autoedit=true;
           DmProducao.DsComponentes.AutoEdit := False;
           EdtCCP_CODIGO.Enabled := False;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtCCP_CODIGO.Text := DmProducao.CdsComponentesCCP_CODIGO.value;
    DbeCCP_NOME.Setfocus;
end;

procedure TFormComponentes.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormComponentes.BotoesAcesso;
begin
     if assigned(FormComponentes) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormComponentes).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormComponentes).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormComponentes).Relatorio;
       DmProducao.DsComponentes.AutoEdit := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormComponentes).Alterar;
     end;
end;


procedure TFormComponentes.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtCCP_CODIGO.text := DmProducao.CdsComponentesCCP_CODIGO.Value;
end;

procedure TFormComponentes.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
// verifica estado da tabela em edicao e inclusao
if DmProducao.CdsComponentes.State in [dsEdit,dsInsert] then
   begin
       if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
          begin
              if DmProducao.CdsComponentesCEL_CODIGO.value = '' then
                 begin
                     uteis.aviso('Defina a Célula do Integrante!');
                     DbLkCEL_CODIGO.SetFocus;
                     CanClose := False;
                 end
              else
                 begin
                     Screen.cursor := crHourGlass;
                     DmProducao.CdsComponentesCCP_CODIGO.Value := EdtCCP_CODIGO.Text;
                     DmProducao.CdsComponentes.ApplyUpdates(0);
                     DmProducao.CdsComponentes.Refresh;
                     Screen.cursor := crDefault;
                 end;
          end
       else
          DmProducao.CdsComponentes.Cancel;
   end;
end;

procedure TFormComponentes.FormDestroy(Sender: TObject);
begin
     FormComponentes := Nil;
end;

procedure TFormComponentes.EdtCCP_CODIGOExit(Sender: tObject);
begin
    EdtCCP_CODIGO.Text := StrZero(EdtCCP_CODIGO.Text,EdtCCP_CODIGO.MaxLength);
    if DmProducao.CdsComponentes.State in [Dsbrowse] then
       BuscaComp;
end;

procedure TFormComponentes.Bit_RelatorioClick(Sender: tObject);
begin
  try
    try
      FormGimpComponentes := TFormGimpComponentes.Create(Application);
      FormGimpComponentes.ShowModal;
    finally
      FormGimpComponentes.Destroy;
      FormGimpComponentes := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormComponentes.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
       DmProducao.CdsComponentes.close;
    except
       uteis.erro  ('Impossível fechar a Tabela "Integrantes".')
    end;
    try
       DmProducao.CdsComponentes.Close;
    except
       uteis.erro  ('Impossível fechar a Tabela "CÉLULAS".')
    end;
    Action := CaFree;
end;

procedure TFormComponentes.EdtCCP_CODIGOKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormComponentes.DbeCCP_NOMEEnter(Sender: tObject);
begin
    DbeCCP_NOME.Color := $0080FFFF;
end;

end.
