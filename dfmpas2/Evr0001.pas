 {***********************************************************
 | Programa...: Erv0001  - Nome formulario = formEveRepres 
 | Objetivo...: Lançamento de eventos para representantes  
 | Programador: Jackson Neu Pacheco                        
 |                                                         
 | Comentários:                                            
 |                                                         
 | Criação..........:  Mai/98                              
 | Ultima Alteração.:  Mai/01                              
 | Alterado por.....:  Márcio                              
 |
 ***********************************************************}
unit EVR0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
   rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  rxCurrEdit, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit, JvDBControls;

type
  TFormEveRepres = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DbeEve_codigo: TDBEdit;
    DbeErp_valor: TDBEdit;
    DbeErp_compl: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DbRadErp_Imposto: TDBRadioGroup;
    DbRadErp_tipo: TDBRadioGroup;
    Label5: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    CdsRep: TSQLClientDataSet;
    CdsRepREP_CODIGO: TStringField;
    CdsRepREP_NOME: TStringField;
    CbRep: TComboBox;
    CbxEvento: TComboBox;
    CdsEvento: TSQLClientDataSet;
    CdsEventoEVE_CODIGO: TStringField;
    CdsEventoEVE_DESCRI: TStringField;
    CdsEventoEVE_TIPODC: TStringField;
    CdsEventoEVE_IRRF: TStringField;
    CdsEventoEVE_SITUAC: TStringField;
    CdsEventoEMP_CODIGO: TStringField;
    DbeRep_Codigo: TDBEdit;
    EdtCod_Lanc: TEdit;
    DbDtERP_DATA: TJvDBDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DbeEve_codigoExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbDtERP_DATAExit(Sender: tObject);
    procedure CbRepClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure CbRepExit(Sender: tObject);
    procedure CbxEventoClick(Sender: tObject);
    procedure DbeEve_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure DbeRep_CodigoExit(Sender: tObject);
    procedure DbeRep_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCod_LancKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCod_LancClick(Sender: tObject);
    procedure EdtCod_LancExit(Sender: tObject);
    procedure DbeRep_CodigoClick(Sender: tObject);
    procedure DbeEve_codigoClick(Sender: tObject);
    procedure DbeErp_complClick(Sender: tObject);
    procedure DbeErp_valorEnter(Sender: tObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
         {campos}
    CampoEdit     :TEdit;
    CampoDBEdit   :TDBEdit;
    CampoData     :TDBDateEdit;
    CampoCurrency :TCurrencyEdit;
    CampoCombo    :TComboBox;
    Procedure PreencheCombo;
    Procedure MostraDados;
    procedure BuscaEventos;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormEveRepres: TFormEveRepres;

implementation

{$R *.DFM}

uses Uteis, Rep0001, GImpEve, DataCad, DataCad1, Men0001, iniciodb;







procedure TformEverepres.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos}
    {CampoDbEdit : TDBEdit}
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
    {CampoEdit : TEdit}
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
    {CampoCurrency : TCurrencyEdit}
    if Assigned(Campocurrency) then
       begin
          Campocurrency.color := clWindow;
       end;
    if ActiveControl is TCurrencyEdit then
       begin
          if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TCurrencyEdit(ActiveControl).color := $0080FFFF;
          Campocurrency := TCurrencyEdit(ActiveControl);
       end
    else
       begin
          Campocurrency := nil;
       end;
    {CampoData  : TDBDateEdit}
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
    {CampoCombo : TComboBox}
    if Assigned(CampoCombo) then
       begin
          CampoCombo.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
       end
    else
       begin
          CampoCombo := nil;
       end;
end;

procedure TformEverepres.verificaEdicao;
begin
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsEveRepr.State in [dsEdit,dsInsert] then
      begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           begin
              bit_gravar.Click;
           end
        else
           begin
              DataCadastros1.CdsEveRepr.Cancel;
           end;
        end;
    screen.cursor := crDefault;
end;

procedure TformEverepres.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Relatorio.Enabled := True;
    Bit_Sair.Visible      := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    EdtCod_Lanc.Enabled   := True;
    DBnavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TformEverepres.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    EdtCod_Lanc.Enabled   := False;
    DBnavigator1.Enabled  := False;

end;

procedure TformEverepres.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    PreencheCombo;
    try
      DataCadastros1.CdsEveRepr.Close; //:= Preopen('representantes');
      DataCadastros1.CdsEveRepr.CommandText := SQLDEF('REPRESENTANTES','select E1.* from EVE_RP01 E1','','E1.ERP_CODIGO','E1.');
      DataCadastros1.CdsEveRepr.open;
      if DataCadastros1.CdsEveRepr.IsEmpty Then  //Evita alteração antes que se
         begin                                     //inclua registros na tabela.
             DataCadastros1.DsEveRepr.AutoEdit := False;
             EdtCod_Lanc.SetFocus;
         end
      else
         begin
             DataCadastros1.DsEveRepr.AutoEdit := True;
             Habilitabotoes;
             MostraDados;
             EdtCod_Lanc.SetFocus;
         end;
    except  on e:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Abrir a tabela de EVE_RP01 ! '+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TformEverepres.Bit_novoClick(Sender: tObject);
begin
    Screen.Cursor := crHourglass;
    try
      DataCadastros1.DsEveRepr.AutoEdit := True;
      DataCAdastros1.CdsEveRepr.Insert;
      EdtCod_Lanc.Text := '00000';
      DesabilitaBotoes;
      DbeRep_Codigo.Field.Text := '';
      DbDtERP_DATA.Date        := now;
      CbRep.Text               := '';
      CbxEvento.Text           := '';
      uteis.HabilitaIncluir('ComercialLançto de Eventos/Representantes',DBInicio.Usuario.CODIGO,formEverepres);
      DbeRep_Codigo.SetFocus;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao Inserir Registro !'+E.MESSAGE));
   end;
   screen.cursor := crdefault;
end;

procedure TformEverepres.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsEveRepr.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Lançamento Cadastrado !!!');
           EdtCod_Lanc.Enabled := False;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Lançamento?')= Mryes then
       begin
           Screen.cursor := crHourglass;
           DataCadastros1.CdsEveRepr.Delete;
           DataCadastros1.CdsEveRepr.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
    EdtCod_Lanc.text := DataCadastros1.CdsEveReprErp_codigo.AsString;
end;

procedure TformEverepres.Bit_GravarClick(Sender: tObject);
begin
    try
      DataCadastros1.CdsEveReprERP_CODIGO.AsString := StrZero(EdtCod_Lanc.Text,EdtCod_Lanc.MaxLength);
      DataCadastros1.CdsEveReprEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsEveRepr.ApplyUpdates(0);
      DbRadErp_tipo.ReadOnly    := True;
      DbRadErp_Imposto.ReadOnly := True;
      Habilitabotoes;
      MostraDados;
      EdtCod_Lanc.Text := StrZero(DataCadastros1.CdsEveReprERP_CODIGO.AsString,EdtCod_Lanc.MaxLength);
      EdtCod_Lanc.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar o registro !'+e.message));
    end;
end;

procedure TformEverepres.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros1.CdsEveRepr.Cancel;
    Screen.Cursor := crDefault;
    if DataCadastros1.CdsEveRepr.IsEmpty then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataCadastros1.DsEveRepr.AutoEdit := False;
           EdtCod_Lanc.Enabled := False;
       end;
    DbRadErp_tipo.ReadOnly    := True;
    DbRadErp_Imposto.ReadOnly := True;
    MostraDados;
    HabilitaBotoes;
    DbeRep_Codigo.SetFocus;
end;

procedure TformEverepres.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
end;

procedure TformEverepres.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros1.CdsEveRepr.close;
      CdsEvento.close;
      CdsRep.Close;
    except
      uteis.erro  ('Impossivel acessar a tabela de representantes !!! ');
    end;
end;

procedure TFormEveRepres.FormDestroy(Sender: TObject);
begin
     FormEveRepres := Nil;
end;

procedure TFormEveRepres.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormEveRepres.BotoesAcesso;
begin
     if assigned(FormEveRepres) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ComercialLançto de Eventos/Representantes',DBInicio.Usuario.CODIGO,FormEveRepres).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ComercialLançto de Eventos/Representantes',DBInicio.Usuario.CODIGO,FormEveRepres).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ComercialLançto de Eventos/Representantes',DBInicio.Usuario.CODIGO,FormEveRepres).Relatorio;
       DataCadastros1.DsEveRepr.AutoEdit := Uteis.AcessoUsuario('ComercialLançto de Eventos/Representantes',DBInicio.Usuario.CODIGO,FormEveRepres).Alterar;
     end;
end;

procedure TFormEveRepres.DbeEve_codigoExit(Sender: tObject);
begin
    if DbeEve_Codigo.Text <> '' then
       begin
           if CdsEvento.Locate('EVE_CODIGO',StrZero(DbeEve_Codigo.text,DbeEve_Codigo.MaxLength),[])= true then
              begin
                  CbxEvento.Text     := CdsEventoEVE_DESCRI.AsString;
                  DBeEve_Codigo.Text := StrZero(DbeEve_Codigo.text,DbeEve_Codigo.MaxLength);
                  DbeEve_codigo.Text         := CdsEventoEVE_CODIGO.AsString;
                  DbRadErp_tipo.ReadOnly     := False;
                  DbRadErp_tipo.ItemIndex    := IIF(CdsEventoEVE_TIPODC.AsString = 'D',0,1);
                  DbRadErp_Imposto.ReadOnly  := False;
                  DbRadErp_Imposto.ItemIndex := IIF(CdsEventoEVE_IRRF.AsString = 'S',0,1);
              end
           else
              begin
                  uteis.aviso('Evento não econtrado !');
                  CbxEvento.Text := '';
                  CbxEvento.ItemIndex := 0;
                  DBeEve_codigo.Field.Text := '';
                  DBeEve_codigo.SetFocus;
                  DBeEve_codigo.SelectAll;
              end;
        end;
end;

procedure TFormEveRepres.Bit_RelatorioClick(Sender: tObject);
begin
    Try
      Try
       FormGimpEveRep := TFormGimpEveRep.Create (Application);
       FormGimpEveRep.ShowModal;
      finally
       FormGimpEveRep.Destroy;
       FormGimpEveRep:= nil;
      end;
    except
       //beep;
       uteis.erro  ('Ocorreu um erro na criação do Relatório!');
    end;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormEveRepres.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormEveRepres.DbDtERP_DATAExit(Sender: tObject);
begin
    if DbDtERP_DATA.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DbDtERP_DATA.Text) then
              DbDtERP_DATA.setfocus;
       end;
end;

procedure TFormEveRepres.PreencheCombo;
begin
    Screen.Cursor := crHourGlass;
    try
      CdsEvento.Close;
      CdsEvento.CommandText := SQLDEF('TABELAS','select V1.* from EVE0000 V1','','V1.EVE_DESCRI','V1.');
      CdsEvento.open;
      CbxEvento.Items.Clear;
      CbxEvento.Items.Add('');
      CdsEvento.First;
      while not CdsEvento.Eof do
        begin
            CbxEvento.Items.Add(CdsEventoEVE_DESCRI.AsString);
            CdsEvento.Next;
        end;
      CbxEvento.ItemIndex := 0;
      //
      CdsRep.Close;
      CdsRep.CommandText := SqlDef('REPRESENTANTES','SELECT R1.REP_CODIGO,R1.REP_NOME,R1.EMP_CODIGO FROM REP0000 R1','where R1.REP_SITUACAO= ''A''','R1.REP_NOME','R1.');
      CdsRep.Open;
      CbRep.Items.Clear;
      CbRep.Items.Add('');
      CdsRep.First;
      while not CdsRep.Eof do
        begin
            cbRep.Items.Add(CdsRepREP_NOME.AsString);
            CdsRep.Next;
        end;
      CbRep.ItemIndex := 0;
    except on E:EdatabaseError do
          uteis.erro  (pchar('Erro ao abrir as Tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormEveRepres.CbRepClick(Sender: tObject);
begin
    if DataCadastros1.CdsEveRepr.State = DsBrowse then
       DataCadastros1.CdsEveRepr.Edit;
    if CdsRep.Locate('REP_NOME',CbRep.Text,[])= true then
       DbeRep_Codigo.Text := CdsRepREP_CODIGO.AsString;
end;

procedure TFormEveRepres.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         if DataCadastros1.CdsEveRepr.State <> dsBrowse then
            begin
               Bit_cancelar.Click;
            end
           else
             begin
               Close;
             end;
          Key := #0;
      end;
end;

procedure TFormEveRepres.CbRepExit(Sender: tObject);
begin
  if CbRep.Text <> '' then
     begin
       if CdsRep.Locate('REP_NOME',CbRep.Text,[])= true then
           begin
               DbeRep_Codigo.Text := CdsRepREP_CODIGO.AsString;
           end
        else
           begin
               uteis.aviso('Representante não cadastrado 1');
               DbeRep_Codigo.Text := '';
               CbRep.SetFocus;
           end;
     end;
end;

procedure TFormEveRepres.CbxEventoClick(Sender: tObject);
begin
    if DataCadastros1.CdsEveRepr.State = DsBrowse then
       dataCadastros1.CdsEveRepr.Edit;
    if CdsEvento.Locate('EVE_DESCRI',CbxEvento.Text,[])= true then
       begin
           DbeEve_codigo.Text         := CdsEventoEVE_CODIGO.AsString;
           DbRadErp_tipo.ReadOnly     := False;
           DbRadErp_tipo.ItemIndex    := IIF(CdsEventoEVE_TIPODC.AsString = 'D',0,1);
           DbRadErp_Imposto.ReadOnly  := False;
           DbRadErp_Imposto.ItemIndex := IIF(CdsEventoEVE_IRRF.AsString = 'S',0,1);
       end;
end;

procedure TFormEveRepres.DbeEve_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormEveRepres.MostraDados;
begin
    Screen.Cursor := crHourGlass;
    EdtCod_Lanc.Text := DataCadastros1.CdsEveReprERP_CODIGO.AsString;

    if CdsRep.Locate('REP_CODIGO',DataCadastros1.CdsEveReprREP_CODIGO.AsString,[]) = true then
       begin
           CbRep.Text := CdsRepREP_NOME.AsString;
       end
    else
       begin
           CbRep.Text := '';
       end;

    if CdsEvento.Locate('EVE_CODIGO',DataCadastros1.CdsEveReprEVE_CODIGO.AsString,[]) = true then
       begin
           CbxEvento.Text := CdsEventoEVE_DESCRI.AsString;
       end
    else
       begin
           CbxEvento.Text := '';
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormEveRepres.DbeRep_CodigoExit(Sender: tObject);
begin
    if DbeRep_Codigo.Text <> '' then
       begin
           if CdsRep.Locate('REP_CODIGO',StrZero(DbeRep_codigo.text,DbeRep_codigo.MaxLength),[])= true then
              begin
                  CbRep.Text         := CdsRepREP_NOME.AsString;
                  DBeRep_codigo.Text := StrZero(DbeRep_codigo.text,DbeRep_codigo.MaxLength);
              end
           else
              begin
                  uteis.aviso('Representantes não econtrado !');
                  CbRep.Text := '';
                  CbRep.ItemIndex := 0;
                  DBeRep_codigo.Field.Text := '';
                  DBeRep_codigo.SetFocus;
                  DBeRep_codigo.SelectAll;
              end;
        end;
end;

procedure TFormEveRepres.DbeRep_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormEveRepres.EdtCod_LancKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormEveRepres.EdtCod_LancClick(Sender: tObject);
begin
    EdtCod_Lanc.SelectAll;
end;

procedure TFormEveRepres.EdtCod_LancExit(Sender: tObject);
begin
    if (DataCadastros1.CdsEveRepr.State in [DsBrowse]) and not (DataCadastros1.CdsEveRepr.IsEmpty) then
       begin
           EdtCod_Lanc.Text := StrZero(EdtCod_Lanc.Text,EdtCod_lanc.MaxLength);
           Screen.Cursor := crHourGlass;
           BuscaEventos;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormEveRepres.BuscaEventos;
begin
    if EdtCod_Lanc.Text <> '' then
       begin
           if DataCadastros1.CdsEveRepr.Locate('ERP_CODIGO',EdtCod_Lanc.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código do evento não cadastrado!!!');
                  EdtCod_lanc.Text := StrZero(DataCadastros1.CdsEveReprERP_CODIGO.AsString,EdtCod_Lanc.MaxLength);
              end
           else
              begin
                  MostraDados;
              end;
       end;
end;

procedure TFormEveRepres.DbeRep_CodigoClick(Sender: tObject);
begin
    DbeRep_Codigo.SelectAll;
end;

procedure TFormEveRepres.DbeEve_codigoClick(Sender: tObject);
begin
    DbeEve_codigo.SelectAll;
end;

procedure TFormEveRepres.DbeErp_complClick(Sender: tObject);
begin
    DbeErp_compl.SelectAll;
end;

procedure TFormEveRepres.DbeErp_valorEnter(Sender: tObject);
begin
    DbeErp_valor.SelectAll;
end;

end.

