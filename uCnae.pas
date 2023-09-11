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
unit uCnae;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppParameter, Grids, DBGrids;


type
  TFormCnae = class(TForm)
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
    GroupBox1: TGroupBox;
    dbgrdDiretivas: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure MudaCorCampos(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure Bit_novoClick(Sender: TObject);
    procedure Bit_ExcluirClick(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure DesabilitaBotoes;
    procedure BuscaEvento;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure EdtEve_codigoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtEve_codigoClick(Sender: TObject);
    procedure EdtEve_codigoKeyPress(Sender: TObject; var Key: Char);
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
  FormCnae: TFormCnae;

implementation

uses DataCad, Men0001, uteis, InicioDB;

{$R *.DFM}


function TestaCGC (CampoCGC :TmaskEdit; CGC:String):boolean; far; external 'mensagen.dll';



procedure TFormCnae.MudaCorCampos(Sender: TObject);
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

procedure TFormCnae.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsCnae.State in [dsEdit,dsInsert] then
      begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           begin
               DataCadastros.CdsCnae.ApplyUpdates(0);
               Habilitabotoes;
           end
        else
           begin
               DataCadastros.CdsCnae.Cancel;
               Habilitabotoes;
           end;
        end;
    screen.cursor := crDefault;
end;

procedure TFormCnae.HabilitaBotoes;
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

procedure TFormCnae.DesabilitaBotoes;
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

procedure TFormCnae.BuscaEvento;// busca por codigo
begin
    if DataCadastros.CdsCnae.Locate('CNAE_REGISTRO',EdtEve_codigo.text,[]) = false then
        begin
            messagebeep($ffff);
            uteis.aviso('Registro do CNAE não cadastrado');
            EdtEve_codigo.Text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
        end;
end;

procedure TFormCnae.FormShow(Sender: TObject);
begin
    Left := 237;
    Top  := 191;
    Screen.Cursor := crHourglass;
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      DataCadastros.CdsCnae.Close;
      DataCadastros.CdsCnae.CommandText := 'SELECT * FROM CNAE order by CNAE_CODIGO';
      DataCadastros.CdsCnae.open;
    except on E:EdatabaseError do
       uteis.erro  ('Impossivel acessar a tabela de CNAE !!! ');
    end;
    Habilitabotoes;
    if DataCadastros.CdsCnae.IsEmpty Then  //Evita alteração antes que se
       begin                                //inclua registros na tabela.
           DataCadastros.dsCnae.AutoEdit := False;
       end;
    EdtEve_codigo.text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
    EdtEve_Codigo.SetFocus;
    Screen.Cursor := crdefault;
end;

procedure TFormCnae.Bit_novoClick(Sender: TObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsCnae.Insert;
      Edteve_codigo.Text := '00';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCnae);
      DBEdit1.setfocus;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TFormCnae.Bit_ExcluirClick(Sender: TObject);
begin
    if DataCadastros.CdsCnae.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe CNAE Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este CNAE?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsCnae.Delete;
           dataCAdastros.CdsCnae.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
       EdtEve_codigo.text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
       EdtEve_codigo.SetFocus;
end;

procedure TFormCnae.Bit_GravarClick(Sender: TObject);
begin
    if DBEdit1.Text = '' then
      begin
          //beep;
          uteis.aviso('Digite o Código!');
          screen.cursor := crDefault;
          exit;
      end;
    if DbeEve_descri.Text = '' then
      begin
          //beep;
          uteis.aviso('Digite a Descrição!');
          screen.cursor := crDefault;
          exit;
      end;
    try
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsCnae.ApplyUpdates(0);
      DataCadastros.CdsCnae.refresh;
      DataCadastros.dsCnae.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtEve_codigo.Text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
      DbeEve_descri.Setfocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormCnae.Bit_CancelarClick(Sender: TObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsCnae.Cancel;
    if DataCadastros.CdsCnae.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                          //tabela deixa autoedit=true;
         DataCadastros.dsCnae.AutoEdit := False;
         EdtEve_codigo.Enabled := False;
       end;
    HabilitaBotoes;
    EdtEve_codigo.Text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
    DbeEve_descri.Setfocus;
    Screen.Cursor := crDefault;
end;

procedure TFormCnae.Bit_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFormCnae.BotoesAcesso;
begin
     if assigned(FormCnae) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCnae).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCnae).Exluir;
       DataCadastros.dsCnae.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCnae).Alterar;
     end;
end;

procedure TFormCnae.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    EdtEve_codigo.Text := DataCadastros.CdsCnaeCNAE_REGISTRO.AsString;
end;

procedure TFormCnae.EdtEve_codigoExit(Sender: TObject);
begin
    if ActiveControl <> nil then
    begin
      if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_novo') then
         exit;
    if EdtEve_codigo.Text <> '' then
       begin
           if DataCadastros.CdsCnae.State in [Dsbrowse] then
              BuscaEvento;
       end
    else
       begin
           uteis.aviso('Informe o Código do CNAE !');
           EdtEve_codigo.SetFocus;
           EdtEve_Codigo.SelectAll;
       end;
    end;
end;

procedure TFormCnae.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros.CdsCnae.Close;
    except
      uteis.erro  ('Não posso fechar Tabela do CNAE');
    end;
end;

procedure TFormCnae.FormDestroy(Sender: TObject);
begin
     FormCnae := Nil;
end;

procedure TFormCnae.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormCnae.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormCnae.EdtEve_codigoClick(Sender: TObject);
begin
    EdtEve_Codigo.SelectAll;
end;

procedure TFormCnae.EdtEve_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.
