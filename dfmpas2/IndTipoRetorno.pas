unit IndTipoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,
  Mask, Buttons, DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFrmCadastroTipoRetorno = class(TForm)
    SqlTCdsTipoRetorno: TSQLClientDataSet;
    DsPrdTipoRetorno: TDataSource;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    EdtPti_codigo: TEdit;
    Label2: TLabel;
    DBePti_descri: TDBEdit;
    GroupBox1: TGroupBox;
    DbGradeTipoPedido: TDBGrid;
    SqlTCdsTipoRetornoITT_REGISTRO: TIntegerField;
    SqlTCdsTipoRetornoEMP_CODIDO: TStringField;
    SqlTCdsTipoRetornoITT_DESCRICAO: TStringField;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure EdtPti_codigoClick(Sender: tObject);
    procedure EdtPti_codigoExit(Sender: tObject);
    procedure SqlTCdsTipoRetornoBeforeEdit(DataSet: TDataSet);
    procedure SqlTCdsTipoRetornoBeforePost(DataSet: TDataSet);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure SqlTCdsTipoRetornoAfterScroll(DataSet: TDataSet);
    procedure SqlTCdsTipoRetornoBeforeCancel(DataSet: TDataSet);
  private
    { Private declarations }
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure verificaEdicao;
    procedure Busca;
  public
    { Public declarations }
  end;

var
  FrmCadastroTipoRetorno: TFrmCadastroTipoRetorno;

implementation

uses
  DataCad, Men0001, RWFunc, Uteis, iniciodb;

{$R *.dfm}

procedure TFrmCadastroTipoRetorno.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmCadastroTipoRetorno.Bit_novoClick(Sender: tObject);
begin
    try

      SqlTCdsTipoRetorno.Insert;
      SqlTCdsTipoRetornoEMP_CODIDO.AsString := dbInicio.Empresa.EMP_CODIGO;
      EdtPti_codigo.Text := '000';
      Screen.Cursor := crDefault;
      DesabilitaBotoes;
      DbePTi_Descri.setfocus;

    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;


procedure TFrmCadastroTipoRetorno.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.Visible := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    EdtPTi_codigo.Color := clWindow;
    EdtPTi_codigo.Enabled := True;
    DBnavigator1.Enabled := True;
end;

procedure TFrmCadastroTipoRetorno.DesabilitaBotoes;
begin
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    EdtPTi_codigo.Color := clSilver;
    EdtPTi_codigo.Enabled := False;
    DBnavigator1.Enabled := False;
end;

procedure TFrmCadastroTipoRetorno.verificaEdicao;
begin
   // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if SqlTCdsTipoRetorno.State in [dsEdit,dsInsert] then
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

procedure TFrmCadastroTipoRetorno.Bit_GravarClick(Sender: tObject);
begin
   try
      Screen.Cursor := crHourGlass;

      SqlTCdsTipoRetornoITT_REGISTRO.AsInteger := dbInicio.GetNextSequence('gen_ind_tiporetorno_id');
      SqlTCdsTipoRetornoEMP_CODIDO.AsString := dbInicio.Empresa.EMP_CODIGO;

      SqlTCdsTipoRetorno.ApplyUpdates(0);

      DsPrdTipoRetorno.AutoEdit := true;
      SqlTCdsTipoRetorno.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtPti_codigo.Text := StrZero(SqlTCdsTipoRetornoITT_REGISTRO.AsString, EdtPti_codigo.MaxLength);
      EdtPti_codigo.SetFocus;
     except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao grava no arquivo !'+e.message));
     end;
end;

procedure TFrmCadastroTipoRetorno.Bit_ExcluirClick(Sender: tObject);
begin
   //Verifica se esta vazia
   if (SqlTCdsTipoRetorno.IsEmpty) then
      begin
         uteis.aviso('Não existe registro para ser excluído!');
      end
   else
      begin
         //Verifica se o tipo já nao foi usado
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select cast(count(*) as integer) as conta from    ped0000 T1 ','WHERE T1.ITT_REGISTRO = '+QuotedStr(SqlTCdsTipoRetornoITT_REGISTRO.AsString),'','');
         DataCadastros.sqlUpdate.Open;
         if (DataCadastros.sqlUpdate.FieldByName('conta').AsInteger = 0) then //ok pode excluir
            begin
               if (uteis.confirmacao  ( 'Confirma a exclusão do Registro ? ')=mrYes) then
                  begin
                     SqlTCdsTipoRetorno.Delete;
                     SqlTCdsTipoRetorno.ApplyUpdates(0);
                  end
            end
         else  //erro possui vinculação
            begin
               uteis.aviso('Este Item não pode ser excluído pois já foi vinculado a um pedido');
            end;
         DataCadastros.sqlUpdate.Close;
      end;
end;

procedure TFrmCadastroTipoRetorno.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlTCdsTipoRetorno.Close;
end;

procedure TFrmCadastroTipoRetorno.FormShow(Sender: tObject);
begin
   try
      {Verifica se compartilha clientes}
      SqlTCdsTipoRetorno.Close;
      //SqlTCdsTipoRetorno.CommandText := select * from IND_TIPORETORNO','','ITT_DESCRICAO','');
      SqlTCdsTipoRetorno.Open;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Impossível acessar a tabela '+e.message));
    end;
    Habilitabotoes;
    EdtPTi_codigo.text := SqlTCdsTipoRetornoITT_REGISTRO.AsString;
end;

procedure TFrmCadastroTipoRetorno.EdtPti_codigoClick(Sender: tObject);
begin
    EdtPti_codigo.SelectAll;
end;

procedure TFrmCadastroTipoRetorno.EdtPti_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair')
    and(ActiveControl.Name <> 'Bit_novo') then
       begin
          if (Trim(EdtPti_codigo.Text) <> '') then
             begin
                 if (SqlTCdsTipoRetorno.State in [Dsbrowse]) and not (SqlTCdsTipoRetorno.IsEmpty) then
                    Busca;
             end
          else
             begin
                 uteis.aviso('Informe o código do tipo do industrialização !');
                 EdtPti_Codigo.SetFocus;
                 EdtPti_Codigo.SelectAll;
             end;
       end;
end;

procedure TFrmCadastroTipoRetorno.Busca;
begin
   if SqlTCdsTipoRetorno.Locate('ITT_REGISTRO',EdtPTi_codigo.Text,[]) = false then
      begin
         messagebeep($ffff);
         uteis.aviso('Codigo do Tipo não cadastrado');
         EdtPTi_codigo.Text := SqlTCdsTipoRetornoITT_REGISTRO.AsString;
         EdtPti_codigo.SetFocus;
       end;
end;

procedure TFrmCadastroTipoRetorno.SqlTCdsTipoRetornoBeforeEdit(
  DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

procedure TFrmCadastroTipoRetorno.SqlTCdsTipoRetornoBeforePost(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

procedure TFrmCadastroTipoRetorno.Bit_CancelarClick(Sender: tObject);
begin
   SqlTCdsTipoRetorno.Cancel;
   
end;

procedure TFrmCadastroTipoRetorno.SqlTCdsTipoRetornoAfterScroll(
  DataSet: TDataSet);
begin
   EdtPti_codigo.Clear;
   if (not SqlTCdsTipoRetorno.IsEmpty) then
      EdtPti_codigo.Text := SqlTCdsTipoRetornoITT_REGISTRO.AsString;
end;

procedure TFrmCadastroTipoRetorno.SqlTCdsTipoRetornoBeforeCancel(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

end.
