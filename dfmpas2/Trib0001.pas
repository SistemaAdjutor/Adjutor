unit Trib0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, RwFunc,DB;

type
  TFormCadTributos = class(TForm)
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Label1: TLabel;
    EdtTrib_Codigo: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBETRB_SIMP_FED: TDBEdit;
    DBETRB_SIMP_EST: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBTRB_SIMP_FED_DE: TDBEdit;
    DBETRB_SIMP_EST_DE: TDBEdit;
    DBETRB_SIMP_FED_ATE: TDBEdit;
    DBETRB_SIMP_EST_ATE: TDBEdit;
    DBTRB_IRPJ: TDBEdit;
    DBTRB_IRPJ_RET: TDBEdit;
    Label10: TLabel;
    DBTRB_CONTSOCIAL: TDBEdit;
    DBTRB_CONTSOCIAL_RET: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBTRB_PIS: TDBEdit;
    Label13: TLabel;
    DBTRB_PIS_RET: TDBEdit;
    Label14: TLabel;
    DBTRB_COFINS: TDBEdit;
    Label15: TLabel;
    DBTRB_COFINS_RET: TDBEdit;
    Label16: TLabel;
    DBTRB_INSS: TDBEdit;
    Label17: TLabel;
    DBTRB_INSS_RET: TDBEdit;
    DBTRB_IRPF: TDBEdit;
    Label18: TLabel;
    ChTrb_Ativo: TCheckBox;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Habilitabotoes;
    procedure Desabilitabotoes;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure EdtTrib_CodigoExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtTrib_CodigoEnter(Sender: tObject);
    procedure ChTrb_AtivoExit(Sender: tObject);
    procedure ChTrb_AtivoEnter(Sender: tObject);
    procedure EdtTrib_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure verificaEdicao;
    procedure PesquisaTrib;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
FormCadTributos: TFormCadTributos;

implementation

uses DataCad, DataCad1, Men0001, uteis, iniciodb;

{$R *.dfm}






procedure TFormCadTributos.MudaCorCampos(Sender: tObject);
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

procedure TFormCadTributos.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCadTributos.BotoesAcesso;
begin
     if assigned(FormCadTributos) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadTributos).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadTributos).Exluir;
       DataCadastros1.DsTrib.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadTributos).Alterar;
     end;
end;

procedure TFormCadTributos.Bit_novoClick(Sender: tObject);
begin
    screen.Cursor:= crHourglass;
    DbNavigator1.Enabled := False;
    try
      DataCadastros1.CdsTrib.Last;
      DataCadastros1.CdsTrib.Insert;
//      EdtTrib_Codigo.Text := StrZero(DataCadastros1.CdsTribTRB_CODIGO.AsString,EdtTrib_Codigo.Maxlength);
      EdtTrib_Codigo.Text := '00';
      DataCadastros1.CdsTribTRB_ATIVO.AsString := 'N';
      ChTrb_Ativo.Checked := False;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormCadTributos);
      ChTrb_Ativo.SetFocus;
      Desabilitabotoes;
    Except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
    screen.cursor := crdefault;
end;

procedure TFormCadTributos.Desabilitabotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    Bit_Sair.Visible      := False;
    EdtTrib_Codigo.Enabled:= False;
    EdtTrib_Codigo.Color  := clSilver;
    DbNavigator1.Enabled  := False;

end;

procedure TFormCadTributos.Habilitabotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    Bit_Sair.Visible      := True;
    EdtTrib_Codigo.Enabled:= True;
    EdtTrib_Codigo.Color  := clWindow;
    DbNavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormCadTributos.FormShow(Sender: tObject);
begin
    Left := 107;
    Top  := 171;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DataCadastros1.CdsTrib.Close;
      DataCadastros1.CdsTrib.CommandText := SQLDEF('TABELAS','SELECT * FROM TRIB0000','','TRB_CODIGO','');
      DataCadastros1.CdsTrib.Open;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela TRIB0000!'+e.message));
        end;
    end;
    Screen.Cursor := crDefault;
    Habilitabotoes;
    if DataCadastros1.CdsTrib.IsEmpty Then       //Evita alteração antes que se
       begin                                    //inclua registros na tabela.
           DataCadastros1.DsTrib.AutoEdit:=False;
           EdtTrib_Codigo.Enabled := False;
       end;
    EdtTrib_Codigo.text := DataCadastros1.CdsTribTRB_CODIGO.AsString;
    ChTrb_Ativo.Checked := IIF(DataCadastros1.CdsTribTRB_ATIVO.AsString = 'S','TRUE','FALSE');
    Screen.Cursor       := crDefault;
end;

procedure TFormCadTributos.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormCadTributos.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Try
      DataCadastros1.CdsTrib.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de TRIB0000 !'+e.message));
    end;
end;

procedure TFormCadTributos.FormDestroy(Sender: TObject);
begin
     FormCadTributos := Nil;
end;

procedure TFormCadTributos.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsTrib.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsTribTRB_CODIGO.AsString := StrZero(EdtTrib_Codigo.Text,EdtTrib_Codigo.MaxLength);
                  DataCadastros1.CdsTrib.ApplyUpdates(0);
                  DataCadastros1.CdsTrib.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsTrib.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormCadTributos.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsTrib.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Atributo cadastrado !');
           exit;
       end;
    if DataCadastros1.CdsTribTRB_ATIVO.AsString = 'S' then
       begin
           uteis.aviso('Este atributo não pode ser excluído !');
           EdtTrib_Codigo.SetFocus;
           exit;
       end;    
    if uteis.confirmacao ( 'Deseja excluir o Atributo ?')= Mryes then
       begin
           Screen.Cursor := crHourGlass;
           DataCadastros1.CdsTrib.Delete;
           DataCadastros1.CdsTrib.ApplyUpdates(0);
           Screen.Cursor       := crDefault;
       end;
    ChTrb_Ativo.Checked := IIF(DataCadastros1.CdsTribTRB_ATIVO.AsString = 'S','TRUE','FALSE');
    EdtTrib_Codigo.Text := DataCadastros1.CdsTribTRB_CODIGO.AsString;
end;

procedure TFormCadTributos.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataCadastros1.CdsTrib.Cancel;
    if DataCadastros1.CdsTrib.IsEmpty Then
       begin
           DataCadastros1.DsTrib.AutoEdit := False;
           EdtTrib_Codigo.Enabled := False;
       end;
    Habilitabotoes;
    EdtTrib_Codigo.Text := DataCadastros1.CdsTribTRB_CODIGO.AsString;
    EdtTrib_Codigo.SetFocus;
    ChTrb_Ativo.Checked := IIF(DataCadastros1.CdsTribTRB_ATIVO.AsString = 'S','TRUE','FALSE');
    screen.Cursor :=crDefault;
    DBNavigator1.Enabled := true;
end;

procedure TFormCadTributos.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      DataCadastros1.CdsTribTRB_ATIVO.AsString  := iif(ChTrb_Ativo.checked ,'S','N');
      DataCadastros1.CdsTribTRB_CODIGO.AsString := StrZero(EdtTrib_Codigo.Text,EdtTrib_Codigo.MaxLength);
      DataCadastros1.CdsTribEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsTrib.ApplyUpdates(0);
      DataCadastros1.CdsTrib.Refresh;
      DataCadastros1.DsTrib.AutoEdit :=True;
      Habilitabotoes;
      EdtTrib_Codigo.Text := StrZero(DataCadastros1.CdsTribTRB_CODIGO.AsString,EdtTrib_Codigo.MaxLength);
      EdtTrib_Codigo.SetFocus;
      screen.cursor := crDefault;
      except on E:EdatabaseError do
         uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
      end;
end;

procedure TFormCadTributos.EdtTrib_CodigoExit(Sender: tObject);
begin
    EdtTrib_Codigo.Text := StrZero(EdtTrib_Codigo.Text,EdtTrib_Codigo.MaxLength);
    if (DataCadastros1.CdsTrib.State in [Dsbrowse]) and not (DataCadastros1.CdsTrib.IsEmpty) then
       PesquisaTrib;
end;

procedure TFormCadTributos.PesquisaTrib;
begin
    if DataCadastros1.CdsTrib.Locate('TRB_CODIGO',StrZero(EdtTrib_Codigo.Text,EdtTrib_Codigo.MaxLength),[]) = FALSE THEN
       Begin
           uteis.aviso('Código do tributo não encontrado!');
           EdtTrib_Codigo.Text := DataCadastros1.CdsTribTRB_CODIGO.AsString;
           EdtTrib_Codigo.SetFocus;
       end;
end;

procedure TFormCadTributos.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtTrib_Codigo.Text := DataCadastros1.CdsTribTRB_CODIGO.AsString;
    ChTrb_Ativo.Checked := IIF(DataCadastros1.CdsTribTRB_ATIVO.AsString = 'S','TRUE','FALSE');
end;

procedure TFormCadTributos.EdtTrib_CodigoEnter(Sender: tObject);
begin
    EdtTrib_Codigo.SelectAll;
end;

procedure TFormCadTributos.ChTrb_AtivoExit(Sender: tObject);
begin
    if ChTrb_Ativo.checked  then
       begin
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT TRB_CODIGO,TRB_ATIVO FROM TRIB0000','where TRB_ATIVO = ''S''','TRB_ATIVO','');
             DataCadastros.sqlUpdate.Open;
             if not DataCadastros.sqlUpdate.IsEmpty then
                begin
                    if uteis.confirmacao ( ('Tributo '+DataCadastros.sqlUpdate.fieldbyName('TRB_CODIGO').ASSTRING+' esta definido como Padrão.'+#13+#10+'Deseja tornar o Tributo atual como Padrão ')) = mrYes then
                       begin
                           try
                             DataCadastros.sqlUpdate.Close;
                             DataCadastros.SqlUpdate.sql.text :='Update TRIB0000 set TRB_ATIVO=''N'' where TRB_ATIVO = ''S''';
                             DataCadastros.sqlUpdate.Execsql;
                             Desabilitabotoes;
                           except on E:EdataBaseError do
                               uteis.erro  (pchar('Erro ao atualizar a Tabela TRIB0000 !'+E.MESSAGE));
                           end;
                       end
                    else
                       begin
                           ChTrb_Ativo.Checked := False;
                           DBETRB_SIMP_FED.SetFocus;
                       end;
                end;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao abrir a Tabela TRIB0000 !'+E.MESSAGE));
           end;
       end;
end;

procedure TFormCadTributos.ChTrb_AtivoEnter(Sender: tObject);
begin
    if DataCadastros1.CdsTrib.State in [dsBrowse] then
       DataCadastros1.CdsTrib.Edit;
end;

procedure TFormCadTributos.EdtTrib_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormCadTributos.FormKeyPress(Sender: tObject; var Key: Char);
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

