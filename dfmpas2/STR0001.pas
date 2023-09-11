unit STR0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, SgDbAutoF8Unit;

type
  TFormCadSitTributaria = class(TForm)
    Label5: TLabel;
    EdtSitTrib_Codigo: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    DbSitTrib: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    sgDBAutoF81: TsgDBAutoF8;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtSitTrib_CodigoExit(Sender: tObject);
    procedure EdtSitTrib_CodigoEnter(Sender: tObject);
    procedure EdtSitTrib_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure VerificaEdicai;
    procedure BotoesAcesso;
    { Public declarations }
  end;

var
  FormCadSitTributaria: TFormCadSitTributaria;

implementation

uses
  DataCad1, Men0001, STR0002, uteis, iniciodb;

{$R *.dfm}

procedure TFormCadSitTributaria.Bit_novoClick(Sender: tObject);
begin
    try
      DataCadastros1.CdSSitTributaria.Insert;
      Desabilitabotoes;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadSitTributaria);
      DbSitTrib.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormCadSitTributaria.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_lista.Enabled           := false;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    Bit_Sair.Visible            := False;
    EdtSitTrib_Codigo.Enabled   := False;
    EdtSitTrib_Codigo.Color     := clSilver;
    DbNavigator1.Enabled        := False;

end;

procedure TFormCadSitTributaria.HabilitaBotoes;
begin
    Bit_lista.Enabled           := true;
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    Bit_Sair.Visible            := True;
    EdtSitTrib_Codigo.Enabled   := True;
    EdtSitTrib_Codigo.Color     := clWindow;
    DbNavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TFormCadSitTributaria.Bit_ExcluirClick(Sender: tObject);
   var
      iRegistros:Integer;
begin
    if DataCadastros1.CdSSitTributaria.IsEmpty Then        //evita exclusão de registro
       Begin                                           //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe ST cadastrada !');
           exit;
       end
    else
       begin
           try
              screen.Cursor := crHourGlass;
              DataCadastros1.CdSSitTributaria.Delete;
              DataCadastros1.CdSSitTributaria.ApplyUpdates(0);
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
           end;
              Screen.Cursor := crDefault;
              DbSitTrib.SetFocus;
       end;
end;
procedure TFormCadSitTributaria.VerificaEdicai;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdSSitTributaria.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdSSitTributaria.ApplyUpdates(0);
                  DataCadastros1.CdSSitTributaria.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormCadSitTributaria.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      DataCadastros1.CdSSitTributariaEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdSSitTributaria.ApplyUpdates(0);
      DataCadastros1.CdSSitTributaria.Refresh;
      screen.cursor := crDefault;
      Habilitabotoes;
      DbSitTrib.SetFocus;
      DataCadastros1.DSSitTributaria.AutoEdit := true;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;


procedure TFormCadSitTributaria.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormCadSitTributaria.BotoesAcesso;
begin
     if assigned(FormCadSitTributaria) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadSitTributaria).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadSitTributaria).Exluir;
       DataCadastros1.DSSitTributaria.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadSitTributaria).Alterar;
     end;
end;

procedure TFormCadSitTributaria.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicai;
    Screen.cursor := crHourGlass;
    Try
      DataCadastros1.CdSSitTributaria.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de Situação Tributaria !'+e.message));
    end;
    Screen.cursor := crDefault;
end;
procedure TFormCadSitTributaria.FormDestroy(Sender: TObject);
begin
     FormCadSitTributaria := Nil;
end;

procedure TFormCadSitTributaria.FormShow(Sender: tObject);
begin
   DataCadastros1.CdSSitTributaria.Open;
   Bit_Gravar.Enabled := false;

   BotoesAcesso;
end;

procedure TFormCadSitTributaria.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   DataCadastros1.CdSSitTributaria.Close;
   Action := CaFree;
end;

procedure TFormCadSitTributaria.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormConsultaSitTrib := TFormConsultaSitTrib.Create(Application);
        FormConsultaSitTrib.ShowModal;
      finally
        FormConsultaSitTrib.Destroy;
        FormConsultaSitTrib := nil; //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormCadSitTributaria.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataCadastros1.CdSSitTributaria.Cancel;
    if DataCadastros1.CdSSitTributaria.IsEmpty Then
       begin
           DataCadastros1.DSSitTributaria.AutoEdit := False;
           EdtSitTrib_Codigo.Enabled := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
    EdtSitTrib_Codigo.Text := DataCadastros1.CdSSitTributariaSTB_CODIGO.AsString;
    EdtSitTrib_Codigo.SetFocus;
end;

procedure TFormCadSitTributaria.EdtSitTrib_CodigoExit(Sender: tObject);
begin
    if (DataCadastros1.CdSSitTributaria.State in [Dsbrowse]) and not (DataCadastros1.CdSSitTributaria.IsEmpty) then
       begin
           Screen.Cursor := crHourGlass;
          if EdtSitTrib_Codigo.Text <> '' then
             begin
                 if DataCadastros1.CdSSitTributaria.Locate('STB_CODIGO',EdtSitTrib_Codigo.Text,[])= False then
                    begin
                        Messagebeep($ffffffff);
                        uteis.aviso('ST não cadastrado!!!');
                        EdtSitTrib_Codigo.Text := DataCadastros1.CdSSitTributariaSTB_CODIGO.AsString;
                    end;
             end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormCadSitTributaria.EdtSitTrib_CodigoEnter(Sender: tObject);
begin
   EdtSitTrib_Codigo.SelectAll;
end;

procedure TFormCadSitTributaria.EdtSitTrib_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.


