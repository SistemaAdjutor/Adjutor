unit CLI0004;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ppDesignLayer,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB, BaseForm,
  Datasnap.DBClient, SimpleDS, SqlClientDataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DBXFirebird, ACBrEnterTab, ACBrBase,
  ACBrCalculadora;

type
  TFormCliAtividade = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    EdtRcl_Codigo: TEdit;
    DbeRcl_Atividade: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    Panel2: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Panel1: TPanel;
    SqlCdsRelAtividadeCliente: TSQLClientDataSet;
    DsAtividadeCliente: TDataSource;
    ppDBATIVIDADECLIENTE: TppDBPipeline;
    ppRPRelAtividadeCliente: TppReport;
    SqlCdsRelAtividadeClienteRCL_CODIGO: TStringField;
    SqlCdsRelAtividadeClienteRCL_ATIVIDADE: TStringField;
    SqlCdsRelAtividadeClienteEMP_CODIGO: TStringField;
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
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtRcl_CodigoExit(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);


  private
  public
        procedure HabilitaBotoes;
        procedure DesabilitaBotoes;
        procedure BotoesAcesso;
  end;

var
  FormCliAtividade: TFormCliAtividade;

implementation

uses Uteis, DataCad, ufrmpreviewrb, iniciodb;

{$R *.DFM}

procedure TFormCliAtividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormCliAtividade.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
    VerificaEdicao;
    DataCadastros.CdsAtividade.Close;
end;

procedure TFormCliAtividade.FormCreate(Sender: tObject);
begin
     SELF.Height:=188;
     self.Width:=427;
     INHERITED;
     DataCadastros.CdsAtividade.Close;
     DataCadastros.CdsAtividade.CommandText := 'select * from CLI_ATV1 '+ConcatSe( ' where ', dbInicio.ExclusivoSql('TABELAS') );
     DataCAdastros.CdsAtividade.Open;
     Habilitabotoes;
     if DataCadastros.CdsAtividade.IsEmpty Then
     begin
           DataCadastros.DsAtividade.AutoEdit := False;
           EdtRcl_Codigo.Enabled := False;
     end;
     EdtRcl_Codigo.Text := DataCadastros.CdsAtividadeRCL_CODIGO.Value;
end;

procedure TFormCliAtividade.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCliAtividade := Nil;
end;

procedure TFormCliAtividade.FormResize(Sender: TObject);
begin
  inherited;
  Height:=188;
  Width:=427;
  botoesAcesso;
end;

procedure TFormCliAtividade.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    EdtRcl_Codigo.Enabled       := True;
    EdtRcl_Codigo.Color         := clWindow;
    DbNavigator1.Enabled        := True;
    if Assigned(FormCliAtividade) then

    BotoesAcesso;
end;

procedure TFormCliAtividade.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    bit_Relatorio.Enabled       := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtRcl_Codigo.Enabled       := False;
    DbNavigator1.Enabled        := False;
    EdtRcl_Codigo.Color         := clSilver;

end;

procedure TFormCliAtividade.EdtRcl_CodigoExit(Sender: tObject);
begin
    EdtRcl_codigo.Text := StrZero(EdtRcl_codigo.Text, EdtRcl_codigo.MaxLength);
    if DataCadastros.CdsAtividade.State in [Dsbrowse] then
       begin
           if DataCadastros.CdsAtividade.Locate('RCL_CODIGO',EdtRcl_Codigo.Text,[]) = false then
              begin
                  uteis.aviso('Ramo de Atividade não cadastrado!');
              end;
       end;
end;

procedure TFormCliAtividade.Bit_novoClick(Sender: tObject);
begin

      DataCadastros.CdsAtividade.Insert;
      EdtRcl_codigo.Text := '000';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCliAtividade);
      DBeRcl_Atividade.Setfocus;
end;

procedure TFormCliAtividade.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsAtividade.IsEmpty Then   //evita exclusão de registro
       begin
           if DataCadastros.DsAtividade.AutoEdit = true then
              DataCadastros.DsAtividade.AutoEdit := false;                                         //em uma Tabela Vazia.
           uteis.aviso('Não existe atividade cadastrada!');
           exit;
       end;
    try
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :='Select CLI_ATIVIDADE from CLI0000 where CLI_ATIVIDADE = '+qStr(EdtRcl_Codigo.Text)+ ConcatSe( ' and ',dbInicio.ExclusivoSql('tabelas'))+' order by AMX_CODIGO' ;
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
            if uteis.confirmacao ( 'Deseja excluir Atividade ?')= Mryes then
              begin
                Screen.Cursor := crHourGlass;
                DataCadastros.CdsAtividade.Delete;
                DataCadastros.CdsAtividade.ApplyUpdates(0);
                if DataCadastros.CdsAtividade.IsEmpty Then        //evita digitacao na tabela vazia
                   if DataCadastros.DsAtividade.AutoEdit = true then
                      DataCadastros.DsAtividade.AutoEdit := false;
                Screen.Cursor := crDefault;
              end;
         end
      else
         begin
             uteis.aviso('Atividade não pode ser excluído, existe movimento !');
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;

    EdtRcl_codigo.text := DataCadastros.CdsAtividadeRCL_CODIGO.AsString;
    DbeRcl_Atividade.SetFocus;
end;

procedure TFormCliAtividade.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      EdtRcl_Codigo.Text := StrZero(EdtRcl_Codigo.Text,EdtRcl_Codigo.MaxLength);
      DataCadastros.CdsAtividadeEMP_CODIGO.AsString := dbInicio.EMPRESA.EMP_CODIGO;
      DataCadastros.CdsAtividade.ApplyUpdates(0);
      DataCadastros.CdsAtividade.Close;
      DataCadastros.CdsAtividade.Open;
      // DataCadastros.CdsAtividade.Refresh; não tá funcionando
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtRcl_Codigo.Text    := StrZero(DataCadastros.CdsAtividadeRCL_CODIGO.AsString,EdtRcl_Codigo.MaxLength);
      DbeRcl_Atividade.Setfocus;
      DataCadastros.DsAtividade.AutoEdit := true;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormCliAtividade.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsAtividade.Cancel;
    DataCadastros.CdsAtividade.Refresh;
    if DataCadastros.CdsAtividade.IsEmpty then
       begin
           DataCadastros.DsAtividade.AutoEdit := false;
           EdtRcl_Codigo.Enabled := false;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    EdtRcl_Codigo.Text := DataCadastros.CdsAtividadeRCL_CODIGO.AsString;
    DbeRcl_Atividade.Setfocus;
end;

procedure TFormCliAtividade.Bit_SairClick(Sender: tObject);
begin
    CLOSE;
end;

procedure TFormCliAtividade.BotoesAcesso;
begin
     if assigned(FormCliAtividade) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCliAtividade).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCliAtividade).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCliAtividade).Relatorio;
       DataCadastros.DsAtividade.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCliAtividade).Alterar;
     end;
end;

procedure TFormCliAtividade.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtRcl_Codigo.Text := StrZero(DataCadastros.CdsAtividadeRCL_CODIGO.AsString,EdtRcl_Codigo.MaxLength);
end;

procedure TFormCliAtividade.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Try
      SqlCdsRelAtividadeCliente.Close;
      SqlCdsRelAtividadeCliente.CommandText:='SELECT * FROM CLI_ATV1 '+concatse(' where ', dbInicio.ExclusivoSql('tabelas'))+' order by RCL_ATIVIDADE' ;
      SqlCdsRelAtividadeCliente.Open;
      LBL_00_EMPRESA.Caption := dbInicio.EMPRESA.RAZAO;
      LBL_00_LTITULO1.Caption:= 'RELATÓRIO DE ATIVIDADE DO CLIENTE';
      LBL_00_LTITULO2.Caption:= 'ORDEM POR ATIVIDADE';
      ppRPRelAtividadeCliente.DeviceType:='Screen';
      RBuilderPreview(ppRPRelAtividadeCliente);
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormCliAtividade.VerificaEdicao;
begin
    screen.cursor :=crHourglass;
    if DataCadastros.CdsPrdTipo.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  Bit_Gravar.Click;  // chana o evento onclick do botão gravar
              end
           else
              begin
                  Bit_Cancelar.Click;   // chana o evento onclick do botão cancelar
              end;
       end;
    screen.cursor := crDefault;
end;

end.

