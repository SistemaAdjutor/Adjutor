{**************************************************************
*  Programa...: REG0001  - Nome formulario = FormRegiao       *
*  Objetivo...: Cadastrar Regiões                             *
*  Analista...: Márcio Neu Pacheco                            *
*  Programador: Jackson Neu Pacheco                           *
*                                                             *
*  Comentários:                                               *
*                                                             *
*  Criação..........: Out/1998                                *
*  Ultima Alteração.: Jan/1999                                *
*  Feito por........:

   Migração ............Agosto/2003
   Feito por ...........Rodrigo Ramos                         *
*                                                             *
**************************************************************}
unit Reg0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  DBClient, DBLocal, DBLocalS, Data.DBXFirebird, ppDesignLayer, ppParameter,
  SimpleDS;

type
  TFormRegiao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBeReg_Descri: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdtReg_codigo: TEdit;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    SqlCdsRelRegiao: TSQLClientDataSet;
    DsRelRegiao: TDataSource;
    ppDBRelRegiao: TppDBPipeline;
    ppRPRelRegiao: TppReport;
    SqlCdsRelRegiaoREG_CODIGO: TStringField;
    SqlCdsRelRegiaoREG_DESCRI: TStringField;
    SqlCdsRelRegiaoEMP_CODIGO: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    procedure MudaCorCampos(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure Habilitabotoes;
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtReg_codigoExit(Sender: tObject);
    procedure TbRegiaoBeforeEdit(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure EdtReg_codigoKeyPress(Sender: tObject; var Key: Char);
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
  FormRegiao: TFormRegiao;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}






procedure TFormRegiao.MudaCorCampos(Sender: tObject);
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

procedure TFormRegiao.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsRegiao.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsRegiao.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros.CdsRegiao.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormRegiao.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    EdtReg_Codigo.Enabled := True;
    EdtREG_Codigo.Color   := clWindow;
    DbNavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormRegiao.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    EdtReg_Codigo.Enabled := False;
    DbNavigator1.Enabled  := False;
    EdtReg_Codigo.Color   := clSilver;

end;

procedure TFormRegiao.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      DataCadastros.CdsRegiao.Close;
      DataCadastros.CdsRegiao.CommandText := SQLDEF('TABELAS','SELECT * FROM REG0000','','REG_CODIGO','');
      DataCadastros.CdsRegiao.Open;
      if DataCadastros.CdsRegiao.IsEmpty Then  //Evita alteração antes que se
         begin                                     //inclua registros na tabela.
             DataCadastros.DsRegiao.AutoEdit := False;
             EdtReg_codigo.Enabled := False;
         end;
    except on E:EdatabaseError do
       uteis.erro  ('Impossivel acessar tabela de REGIÕES !!!');
    end;
    Habilitabotoes;
    EdtReg_Codigo.text := DataCadastros.CdsRegiaoREG_CODIGO.Value;
    Screen.Cursor := crdefault;
end;

procedure TFormRegiao.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCAdastros.CdsRegiao.Insert;
      EdtReg_codigo.Text := '000';
      EdtReg_Codigo.Enabled := false;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormRegiao);
      DBeReg_Descri.setfocus;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormRegiao.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsRegiao.isEmpty Then   //evita exclussão de registro
         Begin                                      // em uma Tabela Vazia.
             messagebeep($ffff);
             if DataCadastros.DsRegiao.AutoEdit = true then
                DataCadastros.DsRegiao.AutoEdit := false;
             uteis.erro  ('Região não está cadastrada !');
             exit;
         end;
    if uteis.confirmacao ( 'Deseja Excluir esta Região ?')= Mryes then
       begin
           Screen.Cursor := crHourGlass;
           DataCadastros.CdsRegiao.Delete;
           DataCadastros.CdsRegiao.ApplyUpdates(0);
           if DataCadastros.CdsRegiao.isEmpty Then   //evita exclussão de registro
             if DataCadastros.DsRegiao.AutoEdit = true then
                DataCadastros.DsRegiao.AutoEdit := false;
           Screen.Cursor := crDefault;
       end;
    EdtReg_codigo.text := DataCadastros.CdsRegiaoREG_CODIGO.Value;
    EdtReg_codigo.SetFocus;
end;

procedure TFormRegiao.Bit_GravarClick(Sender: tObject);
begin
    try
      //salva o registro
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsRegiaoREG_CODIGO.AsString := StrZero(DataCadastros.CdsRegiaoREG_CODIGO.AsString,EdtReg_codigo.MaxLength);
      DataCadastros.CdsRegiaoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsRegiao.ApplyUpdates(0);
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtReg_codigo.Enabled := true;
      EdtReg_codigo.Text    := StrZero(DataCadastros.CdsRegiaoREG_CODIGO.AsString,EdtReg_codigo.MaxLength);
      DbeReg_descri.Setfocus;
      DataCadastros.DsRegiao.AutoEdit := true;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.Message));
    end;
end;

procedure TFormRegiao.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsRegiao.Cancel;
    if DataCadastros.CdsRegiao.IsEmpty then
       begin
           DataCadastros.DsRegiao.AutoEdit := false;
           EdtReg_codigo.Enabled := false;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtReg_codigo.Enabled := true;
    EdtReg_Codigo.Text    := DataCadastros.CdsRegiaoREG_CODIGO.AsString;
    DbeREG_Descri.Setfocus;
end;

procedure TFormRegiao.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormRegiao.BotoesAcesso;
begin
     if assigned(FormRegiao) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormRegiao).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormRegiao).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormRegiao).Relatorio;
       DataCadastros.DsRegiao.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormRegiao).Alterar;
     end;
end;

procedure TFormRegiao.EdtReg_codigoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_novo') then
       exit;
    EdtReg_codigo.Text := StrZero(edtReg_codigo.Text, EdtReg_codigo.MaxLength);
    if EdtReg_Codigo.text <> '' then
       begin
           if (DataCadastros.CdsRegiao.State in [Dsbrowse]) and not (DataCadastros.CdsRegiao.IsEmpty) then
              begin
                  if DataCadastros.CdsRegiao.Locate('REG_CODIGO',EdtReg_Codigo.Text,[]) = false then
                    begin
                        messageBeep($ffff);
                        uteis.aviso('Região não cadastrada !!!');
                    end;
              end;
       end
    else
       begin
           uteis.aviso('Informe um código da Região !');
           EdtReg_Codigo.Text := '';
           EdtReg_Codigo.SelectAll;
           EdtReg_Codigo.SetFocus;
       end;
end;

procedure TFormRegiao.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtReg_codigo.Text := StrZero(DataCadastros.CdsRegiaoREG_CODIGO.AsString,EdtReg_codigo.MaxLength);
end;

procedure TFormRegiao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    Try
      DataCadastros.CdsRegiao.Close;
      SqlCdsRelRegiao.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
end;
procedure TFormRegiao.FormDestroy(Sender: TObject);
begin
     FormRegiao := Nil;
end;

procedure TFormRegiao.TbRegiaoBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormRegiao.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.cursor := crHourGlass;
    Try
      SqlCdsRelRegiao.Close;
      SqlCdsRelRegiao.CommandText := SQLDEF('TABELAS','SELECT * FROM REG0000','','REG_CODIGO','');
      SqlCdsRelRegiao.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DE REGIÃO';
      LBL_00_LTITULO2.Caption := 'ORDEM POR REGIÃO';
      ppRPRelRegiao.DeviceType:= 'Screen';
      RBuilderPreview(ppRPRelRegiao);
      EdtReg_codigo.SetFocus;
      EdtReg_Codigo.SelectAll;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormRegiao.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Action := CaFree;
    Screen.OnActiveControlChange := NIL;
    //CLOSE;
end;

procedure TFormRegiao.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormRegiao.EdtReg_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.
