unit Rep0001;

interface

uses System.Classes, Data.DBXFirebird, Data.DB, Datasnap.DBClient, SimpleDS,
  SqlClientDataSet, Vcl.Controls, Vcl.StdCtrls, Vcl.DBCtrls, RxToolEdit,
  RxDBCtrl, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.Forms, Vcl.Graphics,Winapi.Windows, System.SysUtils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxCheckBox, cxDBEdit, JvExMask, JvToolEdit, JvDBControls;


type
  TFormRepres = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    DbeRep_grupo: TDBEdit;
    Label1: TLabel;
    EdtRep_codigo: TEdit;
    Label13: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Label17: TLabel;
    Label5: TLabel;
    DbeRep_nome: TDBEdit;
    Label6: TLabel;
    DbeRep_razao: TDBEdit;
    Label7: TLabel;
    DbeRep_email: TDBEdit;
    Label3: TLabel;
    DbeRep_Cidade: TDBEdit;
    Label8: TLabel;
    DbeRep_uf: TDBEdit;
    Label9: TLabel;
    DbeRep_cep: TDBEdit;
    Label10: TLabel;
    DbeRep_fone: TDBEdit;
    Label11: TLabel;
    DbeRep_fax: TDBEdit;
    Label12: TLabel;
    DbeRep_endere: TDBEdit;
    Label14: TLabel;
    DBeRep_NDepend: TDBEdit;
    Label15: TLabel;
    DbrFuncao: TDBRadioGroup;
    DbrTipo: TDBRadioGroup;
    DbrSituacao: TDBRadioGroup;
    Label16: TLabel;
    DbeRep_CGC: TDBEdit;
    DbeRep_INSC: TDBEdit;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    bit_Relatorio: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CbxRegiao: TComboBox;
    SqlCdsRegiao: TSQLClientDataSet;
    SqlCdsRegiaoREG_CODIGO: TStringField;
    SqlCdsRegiaoREG_DESCRI: TStringField;
    CbSuper: TComboBox;
    CbGerente: TComboBox;
    DbeRep_Sup: TDBEdit;
    DbeRep_Ger: TDBEdit;
    SqlCdsSup: TSQLClientDataSet;
    SqlCdsGer: TSQLClientDataSet;
    SqlCdsSupREP_CODIGO: TStringField;
    SqlCdsSupREP_NOME: TStringField;
    SqlCdsSupREP_SITUACAO: TStringField;
    SqlCdsGerREP_CODIGO: TStringField;
    SqlCdsGerREP_NOME: TStringField;
    SqlCdsGerREP_SITUACAO: TStringField;
    SqlCdsSupREP_FUNCAO: TStringField;
    SqlCdsGerREP_FUNCAO: TStringField;
    DBEREG_CODIGO: TDBEdit;
    Label27: TLabel;
    DBEdit6: TDBEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    DbDtREP_DTNASC: TJvDBDateEdit;
    DBEdit7: TDBEdit;
    Label28: TLabel;

    procedure EdtRep_codigoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure DbeRep_CGCEnter(Sender: tObject);
    procedure DbeRep_CGCExit(Sender: tObject);
    procedure bit_RelatorioClick(Sender: tObject);
    procedure DbDtREP_DTNASCExit(Sender: tObject);
    procedure CbxRegiaoClick(Sender: tObject);
    procedure DbeRep_SupExit(Sender: tObject);
    procedure DbeRep_GerExit(Sender: tObject);
    procedure DbeRep_SupKeyPress(Sender: tObject; var Key: Char);
    procedure CbSuperClick(Sender: tObject);
    procedure MostraDados;
    procedure EdtRep_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtRep_codigoEnter(Sender: tObject);
    procedure DbeRep_SupEnter(Sender: tObject);
    procedure DbeRep_GerEnter(Sender: tObject);
    procedure DBEREG_CODIGOExit(Sender: tObject);
    procedure DBEREG_CODIGOEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DbrSituacaoClick(Sender: tObject);
    procedure CbGerenteClick(Sender: tObject);
    procedure DbeRep_SupClick(Sender: tObject);
    procedure DbeRep_GerClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoDBEdit  :TDBEdit;
    CampoDbMemo  :TDBMemo;
    CampoData    :TDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    vgNomeVendedor: string;
    procedure MudaCorCampos(Sender: tObject);
    procedure PreencheCombo;
  public
    { Public declarations }
    procedure buscaRepres;
    procedure BotoesAcesso;
  end;

var
  FormRepres: TFormRepres;

implementation

{$R *.DFM}

uses Uteis, Rep0002, GImpRepr, DataCad, Men0001, RWFunc, iniciodb, UPesqContaCorrenteCredito;


procedure TformRepres.MudaCorCampos(Sender: tObject);
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
   {CampoDbMemo:TDBMemo}
   if Assigned(CampoDbMemo) then
      begin
         CampoDbMemo.color := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
         TDBMemo(ActiveControl).color := $0080FFFF;
         CampoDbMemo := TDBMemo(ActiveControl);
      end
   else
      begin
         CampoDbMemo := nil;
      end;
   {CampoData  :TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
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
   {CampoBox  :TComboBox}
   if Assigned(CampoBox) then
      begin
         CampoBox.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoBox := TComboBox(ActiveControl);
      end
   else
      begin
         CampoBox := nil;
      end;
end;

procedure TformRepres.VerificaEdicao;
begin
    screen.cursor := crHourglass;
    if DataCadastros.CdsRepresentante.State in [dsEdit,dsInsert] then
       begin
         if uteis.confirmacao ( 'Deseja Salvar o Registro atual ?') = idYes then
            begin
                DataCadastros.CdsRepresentanteREP_CODIGO.AsString:= EdtRep_Codigo.Text;
                DataCadastros.CdsRepresentante.ApplyUpdates(0);
                DataCadastros.CdsRepresentante.Refresh;
                DataCadastros.DsRepresentante.AutoEdit := true;
            end
         else
            begin
                DataCadastros.CdsRepresentanteREP_CODIGO.AsString:= EdtRep_Codigo.Text;
                DataCadastros.CdsRepresentante.Cancel;
                DataCadastros.CdsRepresentante.Refresh;
            end;
       end;
     screen.cursor := crDefault;
end;

procedure TFormRepres.HabilitaBotoes;
begin
    Bit_novo.Enabled        := True;
    Bit_Excluir.Enabled     := True;
    Bit_Sair.Visible        := True;
    Bit_Relatorio.Enabled   := True;
    Bit_Lista.Enabled       := True;
    Bit_Gravar.Enabled      := False;
    Bit_Cancelar.Visible    := False;
    if DataCadastros.CdsRepresentante.IsEmpty then
       begin
           EdtRep_Codigo.Enabled := False;
       end
    else
       begin
           EdtRep_Codigo.Enabled := True;
       end;
    EdtRep_Codigo.Color  := clWindow;
    DbNavigator1.Enabled := True;

    BotoesAcesso;
end;

procedure TFormRepres.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    EdtRep_Codigo.Enabled := False;
    EdtRep_Codigo.Color   := clSilver;
    DbNavigator1.Enabled  := False;
end;

procedure TformRepres.BuscaRepres;
begin
    if not DataCadastros.CdsRepresentante.Locate('REP_CODIGO',edtRep_Codigo.Text,[]) then
       begin
           Messagebeep($ffff);
           uteis.aviso('Representante não Cadastrado !!!');
           EdtRep_Codigo.Text := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
       end
    else
       begin
           MostraDados;
       end;
end;

procedure TFormRepres.FormShow(Sender: tObject);
begin
    Left := 40;
    Top := 25;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      {conecta com o bando de dados}
      DataCadastros.CdsRepresentante.Close;
      DataCadastros.CdsRepresentante.CommandText := SQLDEF('REPRESENTANTES','SELECT * FROM REP0000','','REP_CODIGO','');
      DataCadastros.CdsRepresentante.Open;
      if DataCadastros.CdsRepresentante.IsEmpty Then
         begin
             DataCadastros.DsRepresentante.AutoEdit := False;
             EdtRep_codigo.Enabled := False;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar Tabela "REPRESENTANTES"'+e.Message));
    end;
    habilitaBotoes;
    EdtRep_codigo.Text := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
    PreencheCombo;
    MostraDados;
    Screen.Cursor := crDefault;
end;

procedure TFormRepres.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor:= crHourglass;
      DataCadastros.CdsRepresentante.Insert;
      Edtrep_codigo.Text := '000';
      Screen.Cursor:= crDefault;
      CbxRegiao.Text := '';
      CbSuper.Text   := '';
      CbGerente.Text := '';
      DesabilitaBotoes;
      DbrFuncao.ItemIndex   := 0 ;     //fixa função c/ representante
      DbrFuncao.SetFocus;
      DbrTipo.ItemIndex     := 0 ;     //fixa pessoa c/ juridica
      uteis.HabilitaIncluir('CadastrosVendedores',DBInicio.Usuario.CODIGO,FormRepres);
      DbrTipo.SetFocus;
      DbrSituacao.ItemIndex := 0 ;     //fixa situação c/ ativo
      DbrSituacao.SetFocus;
      DbeRep_grupo.SetFocus;
      DataCadastros.CdsRepresentanteREP_CGC.EditMask := '99.999.999/9999-99;0;_';
      DataCadastros.CdsRepresentanteREP_NOME.asString := vgNomeVendedor;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormRepres.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsRepresentante.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe vendedor cadastrado !!!');
           DbeRep_nome.SetFocus;
           exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=Sqldef('RECEBER','Select REP_CODIGO from FAT0000','where REP_CODIGO = '''+EdtRep_codigo.Text+'''','REP_CODIGO','');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
             if uteis.confirmacao ( 'Deseja excluir este Vendedor')= MrYes then
                Begin
                    Screen.Cursor := crHourglass;
                    DataCadastros.CdsRepresentante.Delete;
                    DataCadastros.CdsRepresentante.ApplyUpdates(0);
                    Screen.Cursor := crDefault;
                  end;
         end
      else
         begin
             uteis.aviso('Vendedor não pode ser excluído, existe movimento !');
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    MostraDados;
    EdtRep_Codigo.Text := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
    EdtRep_Codigo.SetFocus;
end;


procedure TFormRepres.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      try
         {GRava codigo da empresa}
         DataCadastros.CdsRepresentanteEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO; //dbInicio.Empresa.EMP_CODIGO;
         DataCadastros.CdsRepresentanteREP_CODIGO.AsString := StrZero(EdtRep_codigo.Text,EdtRep_codigo.MaxLength);
         DataCadastros.CdsRepresentante.ApplyUpdates(0);
         DataCadastros.CdsRepresentante.Refresh;
         DataCadastros.DsRepresentante.AutoEdit := true;
         Screen.Cursor := crDefault;
         HabilitaBotoes;
         EdtRep_codigo.Enabled := true;
         EdtRep_codigo.Text    := StrZero(DataCadastros.CdsRepresentanteREP_CODIGO.AsString,EdtRep_codigo.MaxLength);
         DbeRep_Nome.SetFocus;
         DataCadastros.DsRepresentante.AutoEdit := true;
         vgNomeVendedor := DataCadastros.CdsRepresentanteREP_NOME.asString;
      Finally
         Screen.Cursor := crDefault;
      end;
    except on E:EDatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.message));
    end;
end;

procedure TFormRepres.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsRepresentante.Cancel;
    if DataCadastros.CdsRepresentante.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataCadastros.DsRepresentante.AutoEdit := False;
           EdtRep_codigo.Enabled := False;
       end;
    Screen.Cursor := crDefault;   
    HabilitaBotoes;
    EdtRep_codigo.Enabled := true;
    EdtRep_Codigo.Text    := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
    MostraDados;
    DbeRep_Nome.SetFocus;
end;


procedure TFormRepres.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormRepres.BotoesAcesso;
begin
if Assigned(FormRepres) then
  begin
    Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosVendedores',DBInicio.Usuario.CODIGO,FormRepres).Incluir;
    Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosVendedores',DBInicio.Usuario.CODIGO,FormRepres).Exluir;
    Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosVendedores',DBInicio.Usuario.CODIGO,FormRepres).Relatorio;
    DataCadastros.DsRepresentante.AutoEdit := Uteis.AcessoUsuario('CadastrosVendedores',DBInicio.Usuario.CODIGO,FormRepres).Alterar;

  end;
end;

procedure TFormRepres.EdtRep_codigoExit(Sender: tObject);
begin
    if (DataCadastros.CdsRepresentante.State in [Dsbrowse]) and not (DataCadastros.CdsRepresentante.IsEmpty) then
       begin
           Screen.Cursor := crHourGlass;
           EdtRep_codigo.Text := StrZero(EdtRep_codigo.Text,EdtRep_codigo.MaxLength);
           BuscaRepres;
           Screen.Cursor := crDefault;
       end;        
end;

procedure TFormRepres.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
end;

procedure TFormRepres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.OnActiveControlChange := NIL;
  if not Assigned(fmPesqContaCorrenteCredito) then
   Action := CaFree;
end;

procedure TFormRepres.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros.CdsRepresentante.Close;
      SqlCdsRegiao.close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Impossivel Fechar as Tabelas !'+e.message));
    end;
end;

procedure TFormRepres.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormRepresGrid := TFormRepresGrid.Create(Application);
        FormRepresGrid.ShowModal;
      finally
        FormRepresGrid.Destroy;
        FormRepresGrid := nil; //  nil é - From Assigned = False
        Screen.OnActiveControlChange := MudaCorCampos;
        EdtRep_codigo.SetFocus;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormRepres.DbeRep_CGCEnter(Sender: tObject);
begin
    if DataCadastros.CdsRepresentanteREP_TIPO.AsString = 'J'then
       DataCadastros.CdsRepresentanteREP_CGC.EditMask := '99.999.999/9999-99;0;_'
    else
       DataCadastros.CdsRepresentanteREP_CGC.EditMask := '999.999.999-99;0;_';
end;

procedure TFormRepres.DbeRep_CGCExit(Sender: tObject);
Var
  wcgc : String;
begin
    if DataCadastros.CdsRepresentante.State in [dsInsert,dsEdit] then
       begin
           if (activeControl.Name='Bit_Sair') or
              (activeControl.Name='Bit_Cancelar') and (Bit_Cancelar.Visible=true) then
              exit;
           wcgc := Trim(DbeRep_CGC.text);
           if wcgc = '' then
              exit;
           if RWFunc.TestaCgcCpf(DbeRep_CGC.Field.AsString,DbrTipo.Value)= False then
              begin
                  DbeRep_CGC.SetFocus;
                  DbeRep_CGC.SelectAll;
              end;
       end;
//           DbeRep_INSC.SetFocus;
end;

procedure TFormRepres.bit_RelatorioClick(Sender: tObject);
begin
      FormGimpRepr :=TFormGimpRepr.Create(Application);
      try
        FormGimpRepr.ShowModal;
      finally
        FreeAndNil(FormGimpRepr);
      end;
    {ativa o método ao evento OnActiveControlChange}
   Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormRepres.DbDtREP_DTNASCExit(Sender: tObject);
begin
    if CbxRegiao.text <> '' then
       begin
           if not TestaDataStr(DbDtREP_DTNASC.Text) then
               DbDtREP_DTNASC.setfocus;
       end;
end;

procedure TFormRepres.CbxRegiaoClick(Sender: tObject);
begin
    if (DataCadastros.CdsRepresentante.State in [dsBrowse]) and not (DataCadastros.CdsRepresentante.IsEmpty) then
       DataCadastros.CdsRepresentante.Edit;
    if SqlCdsRegiao.Locate('REG_DESCRI',CbxRegiao.Text,[]) = true then
       DBEREG_CODIGO.Field.Text := SqlCdsRegiaoREG_CODIGO.AsString
    else
       DBEREG_CODIGO.Text := '';
end;

procedure TFormRepres.MostraDados;
begin
    EdtRep_Codigo.Text := StrZero(DataCadastros.CdsRepresentanteREP_CODIGO.AsString,EdtRep_codigo.MaxLength);
    if DataCadastros.CdsRepresentanteREP_TIPO.Value = 'J'then
       DataCadastros.CdsRepresentanteREP_CGC.EditMask := '99.999.999/9999-99;0;_'
    else
       DataCadastros.CdsRepresentanteREP_CGC.EditMask := '999.999.999-99;0;_';
       //Mostrar dados do Supervisor
    if SqlCdsSup.Locate('REP_CODIGO',DataCadastros.CdsRepresentanteREP_SUPERVISAO.AsString,[])= True then
       begin
           CbSuper.Text := SqlCdsSupREP_NOME.AsString;
       end
    else
       begin
           CbSuper.Text    := '';
           DbeRep_Sup.Text := '';
       end;
       //Mostrar dados do Gerente
    if SqlCdsGer.Locate('REP_CODIGO',DataCadastros.CdsRepresentanteREP_GERENTE.AsString,[])= True then
       begin
           CbGerente.Text := SqlCdsGerREP_NOME.AsString;
       end
    else
       begin
           CbGerente.Text  := '';
           DbeRep_Ger.Text := '';
       end;
    if SqlCdsRegiao.Locate('REG_CODIGO',DataCadastros.CdsRepresentanteREG_CODIGO.AsString,[])= true then
       begin
           CbxRegiao.Text := SqlCdsRegiaoREG_DESCRI.AsString;
       end
    else
       begin
           CbxRegiao.Text := '';
       end;
end;

procedure TFormRepres.PreencheCombo;
begin
    Screen.cursor := crHourGlass;
    try
      SqlCdsRegiao.CLose;
      SqlCdsRegiao.CommandText := SQLDEF('TABELAS','SELECT REG_CODIGO,REG_DESCRI FROM REG0000','','REG_DESCRI','');
      SqlCdsRegiao.Open;
      while not SqlCdsRegiao.Eof do
        begin
            CbxRegiao.Items.Add(SqlCdsRegiaoREG_DESCRI.AsString);
            SqlCdsRegiao.Next
        end;
      CbxRegiao.ItemIndex := 0;
      //
      SqlCdsSup.Close;
      SqlCdsSup.CommandText := SQLDEF('REPRESENTANTES','select REP_CODIGO, REP_NOME,REP_FUNCAO, REP_SITUACAO from REP0000','where REP_SITUACAO = ''A'' and REP_FUNCAO=''S''','REP_NOME','');
      SqlCdsSup.Open;
      SqlCdsSup.First;
      CbSuper.Items.Clear;
      CbSuper.Items.Add('');
      while not SqlCdsSup.Eof do
       begin
           CbSuper.Items.Add(SqlCdsSupREP_NOME.AsString);
           SqlCdsSup.Next;
       end;
      CbSuper.ItemIndex := 0;
      //
      SqlCdsGer.Close;
      SqlCdsGer.CommandText := SQLDEF('REPRESENTANTES','select REP_CODIGO, REP_NOME,REP_FUNCAO, REP_SITUACAO from REP0000','where REP_SITUACAO = ''A'' and REP_FUNCAO=''G''','REP_NOME','');
      SqlCdsGer.Open;
      SqlCdsGer.First;
      CbGerente.Items.Clear;
      CbGerente.Items.Add('');
      while not SqlCdsGer.Eof do
       begin
           CbGerente.Items.Add(SqlCdsGerREP_NOME.AsString);
           SqlCdsGer.Next;
       end;
      CbGerente.ItemIndex := 0;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao carregar as combos !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormRepres.DbeRep_SupExit(Sender: tObject);
begin
    if DataCadastros.CdsRepresentante.State in [dsEdit,dsInsert] then
       begin
           screen.Cursor := crHourGlass;
           if (DbeRep_Sup.Text <> '') then
              begin
                  DbeRep_Sup.Text := StrZero(DbeRep_Sup.Text,DbeRep_Sup.MaxLength);
                  if SqlCdsSup.Locate('REP_CODIGO',StrZero(DbeRep_Sup.Text,DbeRep_Sup.MaxLength),[])= true then
                     begin
                         CbSuper.Text := SqlCdsSupREP_NOME.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Supervisor não encontrado !');
                         CbSuper.Text    := '';
                         DbeRep_Sup.Field.Text := '';
                         DbeRep_Sup.SetFocus;
                         DbeRep_Sup.SelectAll;
                     end;
              end
           else
              begin
                  CbSuper.Text    := '';
              end;
           screen.cursor:=crDefault;
       end;
end;

procedure TFormRepres.DbeRep_GerExit(Sender: tObject);
begin
    if DataCadastros.CdsRepresentante.State in [dsEdit,dsInsert] then
       begin
           screen.Cursor := crHourGlass;
           if (DbeRep_Ger.Text <> '') then
              begin
                  DbeRep_Ger.Text := StrZero(DbeRep_Ger.Text,DbeRep_Ger.MaxLength);
                  if SqlCdsGer.Locate('REP_CODIGO',StrZero(DbeRep_Ger.Text,DbeRep_Ger.MaxLength),[])= true then
                     begin
                         CbGerente.Text  := SqlCdsGerREP_NOME.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Gerente não encontrado !');
                         CbGerente.Text  := '';
                         DbeRep_Ger.Field.Text := '';
                         DbeRep_Ger.SetFocus;
                         DbeRep_Ger.SelectAll;
                     end;
              end
           else
              begin
                  CbGerente.Text := '';
              end;
           screen.cursor:=crDefault;
       end;
end;

procedure TFormRepres.DbeRep_SupKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormRepres.EdtRep_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormRepres.EdtRep_codigoEnter(Sender: tObject);
begin
    EdtRep_Codigo.SelectAll;
end;

procedure TFormRepres.DbeRep_SupEnter(Sender: tObject);
begin
    DBERep_sup.SelectAll;
end;

procedure TFormRepres.DbeRep_GerEnter(Sender: tObject);
begin
    DbeRep_Ger.SelectAll;
end;

procedure TFormRepres.DBEREG_CODIGOExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if (DBEREG_CODIGO.Text <> '') then
       begin
           DBEREG_CODIGO.Text := StrZero(DBEREG_CODIGO.Text,DBEREG_CODIGO.MaxLength);
           if SqlCdsRegiao.Locate('REG_CODIGO',DBEREG_CODIGO.Text,[])= true then
              begin
                  CbxRegiao.Text := SqlCdsRegiaoREG_DESCRI.AsString;
              end
           else
              begin
                  uteis.aviso('Região não encontrada !');
                  DBEREG_CODIGO.Text := '';
                  CbxRegiao.Text := '';
                  DBEREG_CODIGO.SetFocus;
                  DBEREG_CODIGO.SelectAll;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormRepres.DBEREG_CODIGOEnter(Sender: tObject);
begin
    DBEREG_Codigo.SelectAll;
end;

procedure TFormRepres.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       close;
end;

procedure TFormRepres.DbrSituacaoClick(Sender: tObject);
begin
    if DataCadastros.CdsRepresentante.State in [dsbrowse] then
       begin
           if DBRSituacao.ItemIndex = 0 then
              begin
                  if uteis.confirmacao ( ('Deseja reativar esse vendedor ? '))=mrYes then
                     begin
                         DataCadastros.CdsRepresentanteREP_SITUACAO.AsString := 'A';
                     end
                  else
                     begin
                         DataCadastros.CdsRepresentanteREP_SITUACAO.AsString := 'I';
                     end;
              end
           else
              begin
                  if uteis.confirmacao ( ('Deseja desativar esse vendedor ? '))=mrYes then
                     begin
                         DataCadastros.CdsRepresentanteREP_SITUACAO.AsString := 'I';
                     end
                  else
                     begin
                         DataCadastros.CdsRepresentanteREP_SITUACAO.AsString := 'A';
                     end;
              end;
       end;
end;

procedure TFormRepres.CbGerenteClick(Sender: tObject);
begin
    CbGerente.SelectAll;
    if (DataCadastros.CdsRepresentante.State in [DsBrowse]) and not (DataCadastros.CdsRepresentante.IsEmpty) then
       DataCadastros.CdsRepresentante.Edit;
    if SqlCdsGer.Locate('REP_NOME',CbGerente.Text,[]) = true then
       DbeRep_Ger.Text := SqlCdsGerREP_CODIGO.AsString
    else
       DbeRep_Ger.Text := '';
end;

procedure TFormRepres.CbSuperClick(Sender: tObject);
begin
    CbSuper.SelectAll;
    if (DataCadastros.CdsRepresentante.State in [DsBrowse]) and not (DataCadastros.CdsRepresentante.IsEmpty) then
       DataCadastros.CdsRepresentante.Edit;
    if SqlCdsSup.Locate('REP_NOME',CbSuper.Text,[]) = true then
       DbeRep_Sup.Text := SqlCdsSupREP_CODIGO.AsString
    else
       DbeRep_Sup.Text := '';
end;


procedure TFormRepres.DbeRep_SupClick(Sender: tObject);
begin
    DbeRep_Sup.SelectAll;
end;

procedure TFormRepres.DbeRep_GerClick(Sender: tObject);
begin
    DbeRep_Ger.SelectAll;
end;

procedure TFormRepres.FormCreate(Sender: tObject);
begin
     vgNomeVendedor:='';
end;

procedure TFormRepres.FormDestroy(Sender: TObject);
begin
  if not Assigned(fmPesqContaCorrenteCredito) then
     FormRepres := Nil;
end;

end.
