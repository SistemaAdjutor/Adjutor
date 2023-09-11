unit CID0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB;

type
  TFormContaCorrente = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    EdtCidade_Codigo: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DbeCid_Descri: TDBEdit;
    DbeCid_CodIBGE: TDBEdit;
    Label3: TLabel;
    DBECid_CEP_Inicial: TDBEdit;
    Label5: TLabel;
    DBECid_CEP_Final: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBECid_UF: TDBComboBox;
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtCidade_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCidade_CodigoExit(Sender: tObject);
    procedure EdtCidade_CodigoEnter(Sender: tObject);
    procedure DbeCid_CodIBGEKeyPress(Sender: tObject; var Key: Char);
    procedure DBECid_CEP_InicialKeyPress(Sender: tObject; var Key: Char);
    procedure DBECid_CEP_FinalKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    procedure MudaCorCampos(Sender: tObject);

  public
    { Public declarations }
    procedure BuscaCidade;
    procedure VerificaEdicao;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure BotoesAcesso;
  end;

var
  FormContaCorrente: TFormContaCorrente;

implementation

uses Uteis, DataCad1, CID0002, Men0001, DataCad, RWFunc, DmProdu, iniciodb;






{$R *.dfm}

procedure TFormContaCorrente.BuscaCidade;
begin
    if EdtCidade_Codigo.Text <> '' then
       begin
           if DataCadastros1.CdsCidade.Locate('CID_CODIGO',EdtCidade_Codigo.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código da cidade não cadastrado!!!');
                  EdtCidade_Codigo.Text := DataCadastros1.CdsCidadeCID_CODIGO.AsString;
              end;
       end;
end;

procedure TFormContaCorrente.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         Close;
         key := #0;
      end;
end;
procedure TFormContaCorrente.FormResize(Sender: TObject);
begin
     Width := 468;
     Height := 206;
end;

procedure TFormContaCorrente.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormCidadeGrid := TFormCidadeGrid.Create(Application);
        FormCidadeGrid.ShowModal;
      finally
        FormCidadeGrid.Destroy;
        FormCidadeGrid := nil; //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormContaCorrente.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
     Action := CaFree;
     Screen.OnActiveControlChange := NIL;
end;

procedure TFormContaCorrente.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Screen.cursor := crHourGlass;
    Try
      DataCadastros1.CdsCidade.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de CID0000 !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormContaCorrente.FormDestroy(Sender: TObject);
begin
     FormCadCidade := Nil;
end;

procedure TFormContaCorrente.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsCidade.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsCidadeCID_CODIGO.AsString := EdtCidade_Codigo.Text;
                  DataCadastros1.CdsCidade.ApplyUpdates(0);
                  DataCadastros1.CdsCidade.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsCidade.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormContaCorrente.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_lista.Enabled        := false;
    Bit_novo.Enabled         := False;
    Bit_Excluir.Enabled      := False;
    Bit_Gravar.Enabled       := True;
    Bit_Cancelar.Visible     := True;
    Bit_Sair.Visible         := False;
    EdtCidade_Codigo.Enabled := False;
    EdtCidade_Codigo.Color   := clSilver;
    DbNavigator1.Enabled     := False;

end;

procedure TFormContaCorrente.HabilitaBotoes;
begin
    Bit_lista.Enabled        := true;
    Bit_novo.Enabled         := True;
    Bit_Excluir.Enabled      := True;
    Bit_Gravar.Enabled       := False;
    Bit_Cancelar.Visible     := False;
    Bit_Sair.Visible         := True;
    EdtCidade_Codigo.Enabled := True;
    EdtCidade_Codigo.Color   := clWindow;
    DbNavigator1.Enabled     := True;
    BotoesAcesso;
end;

procedure TFormContaCorrente.MudaCorCampos(Sender: tObject);
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

procedure TFormContaCorrente.Bit_novoClick(Sender: tObject);
begin
      DataCadastros1.CdsCidade.Insert;
      EdtCidade_Codigo.TExt := '000';
      Desabilitabotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadCidade);
      DbeCid_Descri.SetFocus;
end;

procedure TFormContaCorrente.Bit_ExcluirClick(Sender: tObject);
   var
      iRegistros:Integer;
begin
    if DataCadastros1.CdsCidade.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Cidade cadastrada !');
           exit;
       end;
    screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','select count(cli_codigo) from CLI0000 ','where cid_codigo = '''+EdtCidade_Codigo.Text+'''','','');
      DataCadastros.sqlUpdate.Open;

      iRegistros := DataCadastros.sqlUpdate.FieldByName('COUNT').asinteger;

      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','select count(for_codigo) from FOR0000 ','where cid_codigo = '''+EdtCidade_Codigo.Text+'''','','');
      DataCadastros.sqlUpdate.Open;

      iRegistros := iRegistros+ DataCadastros.sqlUpdate.FieldByName('COUNT').asinteger;

      if (iRegistros = 0) then
         begin
             if uteis.confirmacao ( 'Deseja excluir Cidade ?') = Mryes then
                begin
                    Screen.Cursor := crHourGlass;
                    DataCadastros1.CdsCidade.Delete;
                    DataCadastros1.CdsCidade.ApplyUpdates(0);
                    Screen.Cursor := crDefault;
                end;
         end
      else
         begin
             uteis.aviso('Cidade não pode ser excluído, existe movimento !');
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    EdtCidade_Codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
    EdtCidade_Codigo.SetFocus;
end;

procedure TFormContaCorrente.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DataCadastros1.CdsCidade.close;
      DataCadastros1.CdsCidade.CommandText := SQLDEF('TABELAS','SELECT * FROM CID0000','','CID_CIDADE,CID_ESTADO','');
      DataCadastros1.CdsCidade.Open;
      if DataCadastros1.CdsCidade.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             DataCadastros1.DsCidade.AutoEdit:=False;
             EdtCidade_Codigo.Enabled := False;
         end
      else
         begin
             DataCadastros1.DsCidade.AutoEdit := true;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela CID0000!'+e.message));
    end;
    EdtCidade_Codigo.text :=  DataCadastros1.CdsCidadeCID_CODIGO.AsString;
    Habilitabotoes;
    Screen.Cursor := crDefault;
end;
procedure TFormContaCorrente.Bit_GravarClick(Sender: tObject);
begin
      IF StrToIntDef( EdtCidade_Codigo.Text, 0 )= 0 then
         EdtCidade_Codigo.Text:=StrZero( dbInicio.BuscaUmDadoSqlAsInteger('Select Max(CID_CODIGO) From Cid0000')+1,3 ) ;

      DataCadastros1.CdsCidadeCID_CODIGO.AsString:=StrZero( EdtCidade_Codigo.Text,3 );
      DataCadastros1.CdsCidadeEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsCidade.pOST;
      DataCadastros1.CdsCidade.ApplyUpdates(0);

      screen.cursor := crDefault;
      Habilitabotoes;
      EdtCidade_Codigo.Text := DataCadastros1.CdsCidadeCID_CODIGO.AsString;
      DbeCid_Descri.SetFocus;
      DataCadastros1.DsCidade.AutoEdit := true;
end;


procedure TFormContaCorrente.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContaCorrente.BotoesAcesso;
begin
     if assigned(FormCadCidade) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadCidade).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadCidade).Exluir;
       DataCadastros1.DsCidade.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadCidade).Alterar;
     end;
end;

procedure TFormContaCorrente.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataCadastros1.CdsCidade.Cancel;
    if DataCadastros1.CdsCidade.IsEmpty Then
       begin
           DataCadastros1.DsCidade.AutoEdit := False;
           EdtCidade_Codigo.Enabled := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
    EdtCidade_Codigo.Text := DataCadastros1.CdsCidadeCID_CODIGO.AsString;
    EdtCidade_Codigo.SetFocus;
end;

procedure TFormContaCorrente.EdtCidade_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormContaCorrente.EdtCidade_CodigoExit(Sender: tObject);
begin
    if (DataCadastros1.CdsCidade.State in [Dsbrowse]) and not (DataCadastros1.CdsCidade.IsEmpty) then
       begin
           Screen.Cursor := crHourGlass;
           BuscaCidade;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormContaCorrente.EdtCidade_CodigoEnter(Sender: tObject);
begin
    EdtCidade_Codigo.SelectAll;
end;

procedure TFormContaCorrente.DbeCid_CodIBGEKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormContaCorrente.DBECid_CEP_InicialKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormContaCorrente.DBECid_CEP_FinalKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.

