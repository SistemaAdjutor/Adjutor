unit ISS0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, RwFunc, DB;

type
  TFormCadIssMuni = class(TForm)
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Label1: TLabel;
    EdtIss_codigo: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBISS_MUNICIPIO: TDBEdit;
    DBISS_UF: TDBEdit;
    DBISS_PGRC_ISS: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBISS_PERC_RET: TDBEdit;
    procedure Bit_SairClick(Sender: tObject);
    procedure EdtIss_codigoExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure verificaEdicao;
    procedure PesquisaIss;
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure DBISS_MUNICIPIOEnter(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBISS_PERC_RETExit(Sender: tObject);
    procedure EdtIss_codigoEnter(Sender: tObject);
    procedure EdtIss_codigoClick(Sender: tObject);
    procedure DBISS_MUNICIPIOClick(Sender: tObject);
    procedure DBISS_PGRC_ISSEnter(Sender: tObject);
    procedure DBISS_PGRC_ISSClick(Sender: tObject);
    procedure DBISS_UFClick(Sender: tObject);
    procedure DBISS_UFEnter(Sender: tObject);
    procedure DBISS_PERC_RETEnter(Sender: tObject);
    procedure DBISS_PERC_RETClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
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
  FormCadIssMuni: TFormCadIssMuni;

implementation

uses Uteis, DataCad1, DataCad, Men0001, iniciodb;

{$R *.dfm}





procedure TFormCadIssMuni.MudaCorCampos(Sender: tObject);
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

procedure TFormCadIssMuni.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCadIssMuni.BotoesAcesso;
begin
     if assigned(FormCadIssMuni) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadIssMuni).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadIssMuni).Exluir;
       DataCadastros1.DsIss.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadIssMuni).Alterar;
     end;
end;

procedure TFormCadIssMuni.EdtIss_codigoExit(Sender: tObject);
begin
    EdtIss_CODIGO.Text := StrZero(EdtIss_CODIGO.Text,EdtIss_CODIGO.MaxLength);
    if DataCadastros1.CdsIss.State in [Dsbrowse] then
       PesquisaIss;
end;

procedure TFormCadIssMuni.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtIss_Codigo.Text := DataCadastros1.CdsIssISS_CODIGO.AsString;
end;

procedure TFormCadIssMuni.FormShow(Sender: tObject);
begin
    Left := 107;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DataCadastros1.CdsIss.Close;
      DataCadastros1.CdsIss.CommandText := SQLDEF('TABELAS','SELECT * FROM ISS0000','','ISS_CODIGO','');
      DataCadastros1.CdsIss.Open;
      Habilitabotoes;
      if DataCadastros1.CdsIss.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             if DataCadastros1.DsIss.AutoEdit = true then
             DataCadastros1.DsIss.AutoEdit:=False;
             EdtIss_Codigo.Enabled := False;
         end;
      EdtIss_Codigo.text := DataCadastros1.CdsIssISS_CODIGO.AsString;
      Screen.Cursor := crDefault;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela ISS0000!'+e.message));
        end;
    end;
end;

procedure TFormCadIssMuni.DesabilitaBotoes;
begin
    //Bit_lista.Enabled     :=false;
    //Bit_Relatorio.Enabled := False;
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    Bit_Sair.Visible      := False;
    EdtIss_Codigo.Enabled := False;
    EdtIss_Codigo.Color   := clSilver;
    DbNavigator1.Enabled  := False;

end;

procedure TFormCadIssMuni.HabilitaBotoes;
begin
    //Bit_lista.Enabled     :=true;
    //Bit_Relatorio.Enabled := True;
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    Bit_Sair.Visible      := True;
    if DataCadastros1.CdsIss.IsEmpty = true then
       EdtIss_Codigo.Enabled := False
    else
       EdtIss_Codigo.Enabled := True;
    EdtIss_Codigo.Color   := clWindow;
    DbNavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormCadIssMuni.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsIss.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin

                  DataCadastros1.CdsIssISS_CODIGO.AsString := StrZero(EdtIss_Codigo.Text,EdtIss_Codigo.MaxLength);
                  DataCadastros1.CdsIss.ApplyUpdates(0);
                  DataCadastros1.CdsIss.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsIss.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormCadIssMuni.PesquisaIss;
begin
    if DataCadastros1.CdsIss.Locate('ISS_CODIGO',StrZero(EdtISS_CODIGO.Text,EdtISS_CODIGO.MaxLength),[]) = FALSE THEN
       Begin
           uteis.aviso('Código do Iss não encontrado!');
           EdtISS_CODIGO.Text := DataCadastros1.CdsIssISS_CODIGO.AsString;
           EdtIss_Codigo.SetFocus;
       end;
end;

procedure TFormCadIssMuni.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
	Action := CaFree;
end;

procedure TFormCadIssMuni.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Try
      DataCadastros1.CdsIss.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de ISS0000 !'+e.message));
    end;
end;

procedure TFormCadIssMuni.FormDestroy(Sender: TObject);
begin
     FormCadIssMuni := Nil;
end;

procedure TFormCadIssMuni.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsIss.IsEmpty Then        //evita exclusão de registro
       Begin
           if DataCadastros1.DsIss.AutoEdit = true then
              DataCadastros1.DsIss.AutoEdit := false;                                         //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe ISS cadastrada!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir ISS ?')= Mryes then
       begin
           Screen.Cursor := crHourGlass;
           DataCadastros1.CdsIss.Delete;
           DataCadastros1.CdsIss.ApplyUpdates(0);
           if DataCadastros1.CdsIss.IsEmpty Then        //evita digitacao na tabela vazia
              if DataCadastros1.DsIss.AutoEdit = true then
                 DataCadastros1.DsIss.AutoEdit := false;
           Screen.Cursor := crDefault;
       end;
    EdtIss_Codigo.Text := DataCadastros1.CdsIssISS_CODIGO.AsString;
    DBISS_MUNICIPIO.SetFocus;
end;

procedure TFormCadIssMuni.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      DataCadastros1.CdsIssISS_CODIGO.AsString := StrZero(EdtIss_Codigo.Text,EdtIss_Codigo.MaxLength);
      DataCadastros1.CdsIssEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsIss.ApplyUpdates(0);
      DataCadastros1.CdsIss.Refresh;
      DataCadastros1.DsIss.AutoEdit := true;
      screen.cursor := crDefault;
      Habilitabotoes;
      EdtIss_Codigo.Text := StrZero(DataCadastros1.CdsIssISS_CODIGO.AsString,EdtIss_codigo.MaxLength);
      EdtIss_Codigo.SetFocus;
      except on E:EdatabaseError do
         uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
      end;
end;

procedure TFormCadIssMuni.Bit_novoClick(Sender: tObject);
begin
    try
      if DataCadastros1.DsIss.AutoEdit = false then
         DataCadastros1.DsIss.AutoEdit := true;
      screen.Cursor:= crHourglass;
      DataCadastros1.CdsIss.Insert;
      screen.cursor := crdefault;
      EdtIss_Codigo.TExt := '0000';
      Desabilitabotoes;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadIssMuni);
      DBISS_MUNICIPIO.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormCadIssMuni.DBISS_MUNICIPIOEnter(Sender: tObject);
begin
    DBISS_MUNICIPIO.SelectAll;
end;

procedure TFormCadIssMuni.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataCadastros1.CdsISS.Cancel;
    DataCadastros1.CdsIss.CancelUpdates;
    if DataCadastros1.CdsISS.IsEmpty Then
       begin
           DataCadastros1.DsISS.AutoEdit := False;
           EdtIss_Codigo.Enabled := False;
       end;
    Habilitabotoes;
    DBISS_MUNICIPIO.SetFocus;
    screen.Cursor :=crDefault;
end;

procedure TFormCadIssMuni.DBISS_PERC_RETExit(Sender: tObject);
begin
    if DBISS_PERC_RET.Text > DBISS_PGRC_ISS.Text then
       begin
           uteis.aviso('O valor da Retenção não pode ser Maior que o Valor ISS !');
           DBISS_PERC_RET.Text := '';
           DBISS_PERC_RET.SetFocus;
       end;
end;

procedure TFormCadIssMuni.EdtIss_codigoEnter(Sender: tObject);
begin
    EdtIss_Codigo.SelectAll;
end;

procedure TFormCadIssMuni.EdtIss_codigoClick(Sender: tObject);
begin
    EdtIss_Codigo.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_MUNICIPIOClick(Sender: tObject);
begin
    DBISS_MUNICIPIO.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_PGRC_ISSEnter(Sender: tObject);
begin
    DBISS_PGRC_ISS.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_PGRC_ISSClick(Sender: tObject);
begin
    DBISS_PGRC_ISS.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_UFClick(Sender: tObject);
begin
    DBISS_UF.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_UFEnter(Sender: tObject);
begin
    DBISS_UF.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_PERC_RETEnter(Sender: tObject);
begin
    DBISS_PERC_RET.SelectAll;
end;

procedure TFormCadIssMuni.DBISS_PERC_RETClick(Sender: tObject);
begin
    DBISS_PERC_RET.SelectAll;
end;

procedure TFormCadIssMuni.FormKeyPress(Sender: tObject; var Key: Char);
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

end.
