{**********************************************************
| Programa...: EVE0001  - Nome formulario = FormEvento     
| Objetivo...: Cadastrar Eventos                           
| Programador: Jackson Neu Pacheco                         
|                                                          
| Comentários:                                             
| Criação..........: 11/98                                 
| Ultima Alteração.: 10/99                                 
| Feito por........: Everson

  Migração ............Agosto/2003
  Feito por ...........Rodrigo Ramos
|
|                                                          
***********************************************************}
unit uCadastroDiretiva;


{$WARNINGS OFF}
{$HINTS OFF}
{$D-}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppParameter, Grids, DBGrids,
  Data.DBXFirebird, SimpleDS;


type
  TFormDiretiva = class(TForm)
    Label1: TLabel;
    EdtEve_codigo: TEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DbeEve_descri: TDBEdit;
    SQLCdSRELEVENTO: TSQLClientDataSet;
    SQLCdSRELEVENTOPRDD_REGISTRO: TIntegerField;
    SQLCdSRELEVENTOEMP_CODIGO: TStringField;
    SQLCdSRELEVENTOPRDD_DESCRICAO: TStringField;
    SQLCdSRELEVENTOPRDD_ATIVO: TStringField;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    dbgrdDiretivas: TDBGrid;
    SQLCdSRELEVENTOPRDD_SIGLA: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaEvento;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure EdtEve_codigoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure EdtEve_codigoClick(Sender: tObject);
    procedure EdtEve_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure dbgrdDiretivasDblClick(Sender: tObject);
    procedure FormDestroy(Sender: TObject);

  private
    fDiretiva:Integer;
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;

  public
        property diretiva:integer read fDiretiva write fdiretiva;
        procedure BotoesAcesso;

  end;

var
  FormDiretiva: TFormDiretiva;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}


procedure TFormDiretiva.MudaCorCampos(Sender: tObject);
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

procedure TFormDiretiva.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsDiretiva.State in [dsEdit,dsInsert] then
      begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           begin
               DataCadastros.CdsDiretiva.ApplyUpdates(0);
               Habilitabotoes;
           end
        else
           begin
               DataCadastros.CdsDiretiva.Cancel;
               Habilitabotoes;
           end;
        end;
    screen.cursor := crDefault;
end;

procedure TFormDiretiva.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    EdtEve_codigo.Color         := clWindow;
    EdtEve_codigo.Enabled       := True;
    DBnavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TFormDiretiva.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtEve_codigo.Color         := clSilver;
    EdtEve_codigo.Enabled       := False;
    DBnavigator1.Enabled        := False;

end;

procedure TFormDiretiva.BuscaEvento;// busca por codigo
begin
    if DataCadastros.CdsDiretiva.Locate('PRDD_REGISTRO',EdtEve_codigo.text,[]) = false then
        begin
            messagebeep($ffff);
            uteis.aviso('Codigo da Diretiva não cadastrado');
            EdtEve_codigo.Text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
        end;
end;

procedure TFormDiretiva.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    Screen.Cursor := crHourglass;
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      DataCadastros.CdsDiretiva.Close;
      DataCadastros.CdsDiretiva.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_DIRETIVA','','PRDD_DESCRICAO','');
      DataCadastros.CdsDiretiva.open;
    except on E:EdatabaseError do
       uteis.erro  ('Impossivel acessar a tabela de diretivas !!! ');
    end;
    Habilitabotoes;
    if DataCadastros.CdsDiretiva.IsEmpty Then  //Evita alteração antes que se
       begin                                //inclua registros na tabela.
           DataCadastros.dsDiretiva.AutoEdit := False;
       end;
    EdtEve_codigo.text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
    EdtEve_Codigo.SetFocus;
    Screen.Cursor := crdefault;
end;

procedure TFormDiretiva.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsDiretiva.Insert;
      Edteve_codigo.Text := '00';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormDiretiva);
      DbeEve_descri.setfocus;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TFormDiretiva.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsDiretiva.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe diretiva Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir esta diretiva?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsDiretiva.Delete;
           dataCAdastros.CdsDiretiva.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
       EdtEve_codigo.text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
       EdtEve_codigo.SetFocus;
end;

procedure TFormDiretiva.Bit_GravarClick(Sender: tObject);
begin
    if DbeEve_descri.Text = '' then
      begin
          //beep;
          uteis.aviso('Digite a Descrição!');
          screen.cursor := crDefault;
          exit;
      end;
    try
      Screen.Cursor := crHourGlass;
      DataCAdastros.CdsDiretivaEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsDiretiva.ApplyUpdates(0);
      DataCadastros.CdsDiretiva.refresh;
      DataCadastros.dsDiretiva.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtEve_codigo.Text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
      DbeEve_descri.Setfocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormDiretiva.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsDiretiva.Cancel;
    if DataCadastros.CdsDiretiva.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                          //tabela deixa autoedit=true;
         DataCadastros.dsDiretiva.AutoEdit := False;
         EdtEve_codigo.Enabled := False;
       end;
    HabilitaBotoes;
    EdtEve_codigo.Text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
    DbeEve_descri.Setfocus;
    Screen.Cursor := crDefault;
end;

procedure TFormDiretiva.Bit_SairClick(Sender: tObject);
begin
   modalresult:=mrCancel;
   close;
end;

procedure TFormDiretiva.BotoesAcesso;
begin
     if assigned(FormDiretiva) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormDiretiva).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormDiretiva).Exluir;
       DataCadastros.dsDiretiva.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormDiretiva).Alterar;
     end;
end;

procedure TFormDiretiva.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtEve_codigo.Text := DataCadastros.CdsDiretivaPRDD_REGISTRO.AsString;
end;

procedure TFormDiretiva.EdtEve_codigoExit(Sender: tObject);
begin
    if ActiveControl <> nil then
    begin
      if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_novo') then
         exit;
      if EdtEve_codigo.Text <> '' then
         begin
             if DataCadastros.CdsDiretiva.State in [Dsbrowse] then
                BuscaEvento;
         end
      else
         begin
             uteis.aviso('Informe o Código da Diretiva !');
             EdtEve_codigo.SetFocus;
             EdtEve_Codigo.SelectAll;
         end;
    end;
end;

procedure TFormDiretiva.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros.CdsDiretiva.Close;
    except
      uteis.erro  ('Não posso fechar Tabela de diretiva');
    end;
end;
procedure TFormDiretiva.FormDestroy(Sender: TObject);
begin
     FormDiretiva := Nil;
end;

procedure TFormDiretiva.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormDiretiva.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormDiretiva.EdtEve_codigoClick(Sender: tObject);
begin
    EdtEve_Codigo.SelectAll;
end;

procedure TFormDiretiva.EdtEve_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormDiretiva.dbgrdDiretivasDblClick(Sender: tObject);
begin
     diretiva :=   DataCadastros.dsDiretiva.dataset.fieldbyname('prdd_registro').asinteger;
end;

end.
