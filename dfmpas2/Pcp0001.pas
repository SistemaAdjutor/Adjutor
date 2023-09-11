{***********************************************************
| Programa...: PCP0001 - Nome formulario =  FormPCPCadastro
| Objetivo...: Cadastrar Seção de PCP
| Analista...: Marcio Neu Pacheco
| Programador: Jackson e Márcio
|
| Comentários:
|
| Criação..........: Set/99
| Ultima Alteração.: Mai/01
| Alterado por.....: Márcio
|
|**********************************************************}
unit Pcp0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, RwFunc, DBTables;

type
  TFormPCPCadastro = class(TForm)
    Label1: TLabel;
    EdtSEC_CODIGO: TEdit;
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
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DbeSEC_DESCRI: TDBEdit;
    DBESEC_QTDE: TDBEdit;
    DBESEC_CUSTO_UNIT: TDBEdit;
    DBESEC_TMP_CUSTO: TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtSec_CodigoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure EdtSEC_CODIGOKeyPress(Sender: tObject; var Key: Char);
    procedure EdtSEC_CODIGOEnter(Sender: tObject);
    procedure EdtSEC_CODIGOClick(Sender: tObject);
    procedure Busca;
    procedure FormDestroy(Sender: TObject);
  private
  { Private declarations }
  {campos}
   CampoEdit    :TEdit;
   CampoDBEdit  :TDBEdit;
  public
  { Public declarations }
  procedure BotoesAcesso;
  end;

var
  FormPCPCadastro: TFormPCPCadastro;

implementation

uses Pcp0002, DmProdu, Men0001, uteis, iniciodb;

{$R *.DFM}






procedure TFormPCPCadastro.MudaCorCampos(Sender: tObject);
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

procedure TFormPCPCadastro.HabilitaBotoes;
begin
    Bit_novo.Enabled              := True;
    Bit_Excluir.Enabled           := True;
    Bit_Sair.Visible              := True;
    Bit_Lista.Enabled             := True;
    Bit_Relatorio.Enabled         := True;
    Bit_Gravar.Enabled            := False;
    Bit_Cancelar.Visible          := False;
    if DmProducao.CdsPcp.IsEmpty then
       EdtSec_Codigo.Enabled      := False
    else
       EdtSec_Codigo.Enabled      := True;
    EdtSec_Codigo.Color           := clWindow;
    DbNavigator1.Enabled          := True;
    BotoesAcesso;
end;

procedure TFormPCPCadastro.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Lista.Enabled           := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtSec_Codigo.Enabled       := False;
    EdtSec_Codigo.Color         := clSilver;
    DbNavigator1.Enabled        := False;

end;

procedure TFormPCPCadastro.Busca;//Busca o Banco pelo codigo
begin
    if EdtSEC_CODIGO.Text <> '' then
       begin
           if DmProducao.CdsPcp.Locate('SEC_CODIGO',EdtSEC_CODIGO.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código do processos da produção não cadastrado!!!');
                  EdtSEC_CODIGO.Text := DmProducao.CdsPcpSEC_CODIGO.AsString;
              end;
       end;
end;

procedure TFormPCPCadastro.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    Try
      DmProducao.CdsPcp.Close;
      DmProducao.CdsPcp.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT * FROM PCP_SECAO','','SEC_CODIGO','');
      DmProducao.CdsPcp.Open;
      if DmProducao.CdsPcp.IsEmpty Then  //Evita alteração antes que se
         begin                            //inclua registros na tabela.
             DmProducao.DsPcp.AutoEdit := False;
             EdtSEC_CODIGO.Enabled := False;
         end
      else
         begin
             Habilitabotoes;
             EdtSEC_CODIGO.text := DmProducao.CdsPcpSEC_CODIGO.AsString;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossivel acessar tabela de PCP_SECAO '+e.Message));
    end;
    screen.Cursor := crDefault;
    BotoesAcesso;
end;

procedure TFormPCPCadastro.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor:= crHourglass;
      DmProducao.CdsPcp.Insert;
      EdtSEC_CODIGO.Text := '00';
      Screen.Cursor:= crDefault;
      uteis.HabilitaIncluir('ProduçãoProcessos de Produção',DBInicio.Usuario.CODIGO,FormPCPCadastro);
      DbeSEC_DESCRI.SetFocus;
      DesabilitaBotoes;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormPCPCadastro.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsPcp.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe processos da produção cadastrado !!!');
           DbeSEC_DESCRI.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este processo da produção ?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DmProducao.CdsPcp.Delete;
           DmProducao.CdsPcp.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
       EdtSEC_CODIGO.text := DmProducao.CdsPcpSEC_CODIGO.AsString;
       EdtSEC_CODIGO.SetFocus;
end;

procedure TFormPCPCadastro.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      DmProducao.CdsPcpSEC_CODIGO.AsString := StrZero(EdtSEC_CODIGO.Text,EdtSEC_CODIGO.MaxLength);
      DmProducao.CdsPcpEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DmProducao.CdsPcp.ApplyUpdates(0);
      DmProducao.CdsPcp.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtSEC_CODIGO.Text := DmProducao.CdsPcpSEC_CODIGO.AsString;
      DbeSEC_DESCRI.Setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;

procedure TFormPCPCadastro.EdtSec_CodigoExit(Sender: tObject);
begin
    if (DmProducao.CdsPcp.State in [dsBrowse]) and not (DmProducao.CdsPcp.IsEmpty) then
        begin
            EdtSEC_CODIGO.Text := StrZero(EdtSEC_CODIGO.Text, EdtSEC_CODIGO.Maxlength);
            Screen.Cursor := crHourGlass;
            Busca;
            Screen.Cursor := crDefault;
        end;
end;

procedure TFormPCPCadastro.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormPCPGrid := TFormPCPGrid.Create(Application);
        FormPCPGrid.ShowModal;
      finally
        FormPCPGrid.Destroy;
        FormPCPGrid := nil; //  nil é - From Assigned = False
        Screen.OnActiveControlChange   := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPCPCadastro.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    Verificaedicao;
    Screen.Cursor := crDefault;
    Try
      DmProducao.CdsPcp.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela PCP_SECAO !'+e.message));
    end;
end;

procedure TFormPCPCadastro.FormDestroy(Sender: TObject);
begin
     FormPCPCadastro := Nil;
end;

procedure TFormPCPCadastro.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtSec_Codigo.text:= DmProducao.CdsPcpSEC_CODIGO.AsString;
end;

procedure TFormPCPCadastro.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    //CLOSE;
    Action := CaFree;
end;

procedure TFormPCPCadastro.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormPCPCadastro.BotoesAcesso;
begin
     if assigned(FormPCPCadastro) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ProduçãoProcessos de Produção',DBInicio.Usuario.CODIGO,FormPCPCadastro).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ProduçãoProcessos de Produção',DBInicio.Usuario.CODIGO,FormPCPCadastro).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ProduçãoProcessos de Produção',DBInicio.Usuario.CODIGO,FormPCPCadastro).Relatorio;
       DmProducao.DsPcp.AutoEdit := Uteis.AcessoUsuario('ProduçãoProcessos de Produção',DBInicio.Usuario.CODIGO,FormPCPCadastro).Alterar;
     end;
end;

procedure TFormPCPCadastro.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DmProducao.CdsPcp.Cancel;
    if DmProducao.CdsPcp.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DmProducao.DsPcp.AutoEdit := False;
           EdtSEC_CODIGO.Enabled := False;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtSEC_CODIGO.Text := DmProducao.CdsPcpSEC_CODIGO.AsString;
    DbeSEC_DESCRI.Setfocus;
end;

procedure TFormPCPCadastro.VerificaEdicao;
begin
    screen.cursor :=crHourglass;
    if DmProducao.CdsPcp.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DmProducao.CdsPcpSEC_CODIGO.AsString := EdtSEC_CODIGO.text;
                  DmProducao.CdsPcp.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DmProducao.CdsPcp.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormPCPCadastro.EdtSEC_CODIGOKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormPCPCadastro.EdtSEC_CODIGOEnter(Sender: tObject);
begin
    EdtSEC_CODIGO.SelectAll;
end;

procedure TFormPCPCadastro.EdtSEC_CODIGOClick(Sender: tObject);
begin
    EdtSEC_CODIGO.SelectAll;
end;

end.
