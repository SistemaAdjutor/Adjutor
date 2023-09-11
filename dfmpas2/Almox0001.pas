unit Almox0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB, RwFunc, ACBrBase, ACBrValidador, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient, JvExMask, JvToolEdit;

type
  TFormCadAlmox = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    EdtAmox_codigo: TEdit;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DbeAmx_Descri: TDBEdit;
    DbeAmx_Tipo: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckFisico: TDBCheckBox;
    DBCheckTerceiros: TDBCheckBox;
    DBCheckForaTerceiros: TDBCheckBox;
    DBCheckCirculante: TDBCheckBox;
    DBCheckVirtual: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBeCGC: TDBEdit;
    ACBrValidador1: TACBrValidador;
    gbInscricaoEstadual: TGroupBox;
    dsInscricaoEstadual: TDataSource;
    cdsInscricaoEstadual: TClientDataSet;
    dspInscricaoEstadual: TDataSetProvider;
    qInscricaoEstadual: TSQLQuery;
    dblcInscricaoEstadual: TDBLookupComboBox;
    dtAmxValidadeAtoDeclaratorio: TJvDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    dbAmxNumAtoDeclaratorio: TDBEdit;
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure VerificaEdicao;
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtAmox_codigoEnter(Sender: tObject);
    procedure EdtAmox_codigoExit(Sender: tObject);
    procedure EdtAmox_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BuscaAlmox;

    procedure FormDestroy(Sender: TObject);
    procedure DBeCGCExit(Sender: TObject);
    procedure dtAmxValidadeAtoDeclaratorioKeyPress(Sender: TObject; var Key: Char);
    procedure dtAmxValidadeAtoDeclaratorioButtonClick(Sender: TObject);
  private
    { Private declarations }
     CampoEdit    :TEdit;
     CampoDBEdit  :TDBEdit;
     procedure MudaCorCampos(Sender: tObject);
     procedure HabilitaBotoes;
     procedure PesquisaAlm;
  public
    { Public declarations }
    procedure DesabilitaBotoes;
    procedure BotoesAcesso;
  end;

var
  FormCadAlmox: TFormCadAlmox;

implementation

uses uteis, DataMov, DmProdu, Almox0002, Men0001, DataCad, INICIODB;

{$R *.dfm}

procedure TFormCadAlmox.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_lista.Enabled      := false;
    Bit_novo.Enabled       := False;
    Bit_Excluir.Enabled    := False;
    Bit_Gravar.Enabled     := True;
    Bit_Cancelar.Visible   := True;
    Bit_Sair.Visible       := False;
    EdtAmox_codigo.Enabled := False;
    EdtAmox_codigo.Color   := clSilver;
    DbNavigator1.Enabled   := False;

end;

procedure TFormCadAlmox.dtAmxValidadeAtoDeclaratorioButtonClick(Sender: TObject);
begin
  if DmProducao.CdsAlmox.State = dsBrowse then
    DmProducao.CdsAlmox.Edit;
end;

procedure TFormCadAlmox.dtAmxValidadeAtoDeclaratorioKeyPress(Sender: TObject; var Key: Char);
begin
  if DmProducao.CdsAlmox.State = dsBrowse then
    DmProducao.CdsAlmox.Edit;
end;

procedure TFormCadAlmox.HabilitaBotoes;
begin
    Bit_lista.Enabled      := true;
    Bit_novo.Enabled       := True;
    Bit_Excluir.Enabled    := True;
    Bit_Gravar.Enabled     := False;
    Bit_Cancelar.Visible   := False;
    Bit_Sair.Visible       := True;
    EdtAmox_codigo.Enabled := True;
    EdtAmox_codigo.Color   := clWindow;
    DbNavigator1.Enabled   := True;
    BotoesAcesso;
end;

procedure TFormCadAlmox.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 237;
    Top  := 191;
    try
      DmProducao.CdsAlmox.close;
      DmProducao.CdsAlmox.CommandText := SQLDEF('TABELAS','SELECT * FROM ALMOX0000','','AMX_CODIGO','');
      DmProducao.CdsAlmox.Open;
      if DmProducao.CdsAlmox.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             DmProducao.DsAlmox.AutoEdit:=False;
             EdtAmox_codigo.Enabled := False;
         end
      else
         begin
             DmProducao.DsAlmox.AutoEdit := true;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela ALMOX0000!'+e.message));
    end;
    EdtAmox_codigo.text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
    dtAmxValidadeAtoDeclaratorio.Date := DmProducao.CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO.AsDateTime;
    Habilitabotoes;


    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
    begin
      qInscricaoEstadual.Close;
      cdsInscricaoEstadual.Close;
      qInscricaoEstadual.SQL.Clear;
      qInscricaoEstadual.SQL.Text := 'SELECT EMI_CODIGO, EMI_IE || CAST('' - '' AS VARCHAR(3)) || EMI_DESCRICAO AS EMI_DESCRICAO FROM EMP_MULTIPLAS_IE;';
      qInscricaoEstadual.Open;
      cdsInscricaoEstadual.Open;
    end
    else
    begin
        gbInscricaoEstadual.Visible := False;
    end;




    Screen.Cursor := crDefault;
end;

procedure TFormCadAlmox.MudaCorCampos(Sender: tObject);
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

procedure TFormCadAlmox.Bit_novoClick(Sender: tObject);
begin
    try
      screen.Cursor:= crHourglass;
      DmProducao.CdsAlmox.Insert;
      edtAmox_codigo.TExt := '0000';
      // DEFAULT

      DmProducao.CdsAlmoxAMX_ATIVO.AsString        := 'S';
      DmProducao.CdsAlmoxAMX_FISICO.AsString        := 'S';
      DmProducao.CdsAlmoxAMX_TERCEIROS.AsString     := 'N';
      DmProducao.CdsAlmoxAMX_FORATERCEIROS.AsString := 'N';
      DmProducao.CdsAlmoxAMX_CIRCULANTE.AsString    := 'N';
      DmProducao.CdsAlmoxAMX_VIRTUAL.AsString       := 'N';
      Screen.Cursor := crDefault;
      Desabilitabotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadAlmox);
      DbeAmx_Descri.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormCadAlmox.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsAlmox.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Almoxarifado cadastrado !');
           exit;
       end;
    screen.Cursor := crHourGlass;
    try
       IF DbInicio.BUSCAUMDADOSQLASFLOAT( 'Select SUM(KAS_SALDO) from kardex_almox_saldo where AMX_CODIGO = '+qStr(EdtAmox_codigo.Text)+cONCATsE(' AND ',dbInicio.ExclusivoSql('ESTOQUES')) )<>0 then
          GeraException('Almoxarifado Possui Saldo, Não é Possível Excluir!')
       Else
       if uteis.confirmacao ( 'Deseja excluir Almoxarifado ?') = Mryes then
       begin
                    Screen.Cursor := crHourGlass;
                    DmProducao.CdsAlmox.Delete;
                    DmProducao.CdsAlmox.ApplyUpdates(0);
                    Screen.Cursor := crDefault;
       end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    EdtAmox_codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
    EdtAmox_codigo.SetFocus;
end;

procedure TFormCadAlmox.Bit_GravarClick(Sender: tObject);
begin
  if DBCheckForaTerceiros.Checked or DBCheckTerceiros.Checked then
  begin
    ACBrValidador1.Documento := DBeCGC.Text;
    if not ACBrValidador1.Validar then
      raise Exception.Create('CNPJ incorreto');
  end;

  try
    screen.cursor := crHourglass;
    DmProducao.CdsAlmoxAMX_CODIGO.AsString := StrZero(EdtAmox_codigo.Text,4);
    DmProducao.CdsAlmoxEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
    DmProducao.CdsAlmoxEMI_CODIGO.AsString := iif(dblcInscricaoEstadual.KeyValue = null, 0,  dblcInscricaoEstadual.KeyValue);
    DmProducao.CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO.AsDateTime := dtAmxValidadeAtoDeclaratorio.Date;
    DmProducao.CdsAlmox.ApplyUpdates(0);
    DmProducao.CdsAlmox.Refresh;
    screen.cursor := crDefault;
    Habilitabotoes;
    EdtAmox_codigo.Text := StrZero(DmProducao.CdsAlmoxAMX_CODIGO.AsString,EdtAmox_codigo.MaxLength);
    DbeAmx_Descri.SetFocus;
    DmProducao.DsAlmox.AutoEdit := true;
    screen.cursor := crDefault;
  except on E:EdatabaseError do
  begin
    screen.cursor := crDefault;
    uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
  end;
  end;
end;

procedure TFormCadAlmox.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCadAlmox.BotoesAcesso;
begin
     if assigned(FormCadAlmox) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadAlmox).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadAlmox).Exluir;
       DmProducao.DsAlmox.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadAlmox).Alterar;
     end;
end;

procedure TFormCadAlmox.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := caFree;
end;

procedure TFormCadAlmox.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Screen.cursor := crHourGlass;
    Try
      DmProducao.CdsAlmox.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de ALMOX0000 !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormCadAlmox.FormDestroy(Sender: TObject);
begin
  FormCadAlmox := nil;
end;

procedure TFormCadAlmox.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DmProducao.CdsAlmox.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin

                  DmProducao.CdsAlmoxAMX_CODIGO.AsString := StrZero(EdtAmox_codigo.Text,EdtAmox_codigo.MaxLength);
                  DmProducao.CdsAlmoxEMI_CODIGO.AsString := dblcInscricaoEstadual.KeyValue;
                  DmProducao.CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO.AsDateTime := dtAmxValidadeAtoDeclaratorio.Date;

                  DmProducao.CdsAlmox.ApplyUpdates(0);
                  DmProducao.CdsAlmox.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DmProducao.CdsAlmox.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFormCadAlmox.DBeCGCExit(Sender: TObject);
begin
  if DBeCGC.Text <> '' then
  begin
    ACBrValidador1.Documento := DBeCGC.Text;
    if not ACBrValidador1.Validar then
      raise Exception.Create('CNPJ incorreto');

  end;

end;

procedure TFormCadAlmox.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtAmox_codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
    dtAmxValidadeAtoDeclaratorio.Date := DmProducao.CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO.AsDateTime;
end;

procedure TFormCadAlmox.Bit_ListaClick(Sender: tObject);
begin
    try
      FormAlmoxGrid := TFormAlmoxGrid.Create(Application);
      try
        FormAlmoxGrid.ShowModal;
      finally
        FormAlmoxGrid.Destroy;
        FormAlmoxGrid := nil; //  nil é - From Assigned = False
        DbeAmx_Descri.SetFocus;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormCadAlmox.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DmProducao.CdsAlmox.Cancel;
    if DmProducao.CdsAlmox.IsEmpty Then
       begin
           DmProducao.DsAlmox.AutoEdit := False;
           EdtAmox_codigo.Enabled := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
    EdtAmox_codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
    EdtAmox_codigo.SetFocus;
end;

procedure TFormCadAlmox.EdtAmox_codigoEnter(Sender: tObject);
begin
    EdtAmox_codigo.SelectAll;
end;

procedure TFormCadAlmox.EdtAmox_codigoExit(Sender: tObject);
begin
    if (DmProducao.CdsAlmox.State in [Dsbrowse]) and not (DmProducao.CdsAlmox.IsEmpty) then
       begin
           EdtAmox_codigo.Text := StrZero(EdtAmox_codigo.Text,EdtAmox_codigo.MaxLength);
           Screen.Cursor := crHourGlass;
           PesquisaAlm;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormCadAlmox.PesquisaAlm;
begin
    if DmProducao.CdsAlmox.Locate('AMX_CODIGO',StrZero(EdtAmox_codigo.Text,EdtAmox_codigo.MaxLength),[]) = FALSE THEN
       Begin
           uteis.aviso('Código do almoxarifado não encontrado!');
           EdtAmox_codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
           EdtAmox_codigo.SetFocus;
       end;
end;

procedure TFormCadAlmox.EdtAmox_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormCadAlmox.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormCadAlmox.BuscaAlmox;
begin
    if EdtAmox_codigo.Text <> '' then
       begin
           if DmProducao.CdsAlmox.Locate('AMX_CODIGO',EdtAmox_codigo.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código do almoxarifado não cadastrado!!!');
                  EdtAmox_codigo.Text := DmProducao.CdsAlmoxAMX_CODIGO.AsString;
              end;
       end;
end;

end.

