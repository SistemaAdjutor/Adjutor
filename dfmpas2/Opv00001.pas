unit Opv00001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IniFiles,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,
  Mask, Buttons, DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFrmCadastroTipoPedido = class(TForm)
    SqlTCdsipoPedido: TSQLClientDataSet;
    DsPrdTipo: TDataSource;
    SqlTCdsipoPedidoOPV_CODIGO: TIntegerField;
    SqlTCdsipoPedidoOPV_DESCRICAO: TStringField;
    SqlTCdsipoPedidoOPV_TIPO: TStringField;
    SqlTCdsipoPedidoEMP_CODIGO: TStringField;
    SqlTCdsipoPedidoOPV_ATESTOQUE: TStringField;
    SqlTCdsipoPedidoAMX_DESTINO: TStringField;
    SqlTCdsipoPedidoAMX_ORIGEM: TStringField;
    SqlTCdsipoPedidoOPV_TIPOPADRAO: TStringField;
    SqlTCdsipoPedidoOPV_SERVICO: TStringField;
    Bit_Cancelar: TBitBtn;
    GroupBox1: TGroupBox;
    DbGradeTipoPedido: TDBGrid;
    SqlTCdsipoPedidoOPV_VENDA: TStringField;
    SqlTCdsipoPedidoOPV_ORCAMENTO: TStringField;
    SqlTCdsipoPedidoOPV_PRODUCAO: TStringField;
    SqlTCdsipoPedidoOPV_CALCULA_ST: TStringField;
    SqlTCdsipoPedidoOPV_INDUSTRIALIZACAO: TStringField;
    SqlTCdsipoPedidoOPV_ATUALIZA_DATA_PEDIDO: TStringField;
    SqlTCdsipoPedidoOPV_SEMLOTE: TStringField;
    SqlTCdsipoPedidoOPV_COMISSAO_VERBA: TStringField;
    SqlTCdsipoPedidoOPV_BONIFICACAO: TStringField;
    SqlTCdsipoPedidoOPV_AGRUPADO: TStringField;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Sair: TBitBtn;
    SqlTCdsipoPedidoOPV_TRANSF_PRECOCUSTO: TStringField;
    SqlTCdsipoPedidoOPV_FATURAMENTO: TStringField;
    SqlTCdsipoPedidoOPV_ESTOQUE_REMESSAINDUS: TStringField;
    SqlTCdsipoPedidoOPV_EXPEDICAO: TStringField;
    SqlTCdsipoPedidoOPV_INATIVAR_TIPO_PEDIDO: TStringField;
    SqlTCdsipoPedidoOPV_INDUST_POR_KIT: TStringField;
    SqlTCdsipoPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT: TStringField;
    SqlTCdsipoPedidoOPV_META_VENDEDOR: TStringField;
    SqlTCdsipoPedidoOPV_COMISSAO_META_VENDEDOR: TFMTBCDField;
    SqlTCdsipoPedidoOPV_DEVOLUCAO: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    EdtPti_codigo: TEdit;
    DBePti_descri: TDBEdit;
    DbRbTipo: TDBRadioGroup;
    Panel3: TPanel;
    lbComissao: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    dbchkOPV_PRODUCAO: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    chkAgruapado: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    chkExpedicao: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCHK_OPV_INDUST_POR_KIT: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    cbMetaVendedor: TDBCheckBox;
    edComiissaoMetaVendedor: TDBEdit;
    DBCheckBox17: TDBCheckBox;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure EdtPti_codigoClick(Sender: tObject);
    procedure EdtPti_codigoExit(Sender: tObject);
    procedure DbGradeTipoPedidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SqlTCdsipoPedidoBeforeEdit(DataSet: TDataSet);
    procedure SqlTCdsipoPedidoBeforePost(DataSet: TDataSet);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure SqlTCdsipoPedidoAfterScroll(DataSet: TDataSet);
    procedure SqlTCdsipoPedidoBeforeCancel(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure verificaEdicao;
    procedure Busca;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FrmCadastroTipoPedido: TFrmCadastroTipoPedido;

implementation

uses
  DataCad, Men0001, RWFunc, uteis, iniciodb;

{$R *.dfm}

procedure TFrmCadastroTipoPedido.Bit_SairClick(Sender: tObject);
begin
   Close;
end;


procedure TFrmCadastroTipoPedido.BotoesAcesso;
begin
     if assigned(FrmCadastroTipoPedido) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroTipoPedido).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroTipoPedido).Exluir;
       DsPrdTipo.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroTipoPedido).Alterar;
     end;
end;

procedure TFrmCadastroTipoPedido.Bit_novoClick(Sender: tObject);
begin
  try
      Screen.Cursor := crHourglass;
      SqlTCdsipoPedido.Insert;
      SqlTCdsipoPedidoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      SqlTCdsipoPedidoOPV_ATESTOQUE.AsString := 'N';
      SqlTCdsipoPedidoOPV_SERVICO.AsString := 'N';
      SqlTCdsipoPedidoOPV_TIPOPADRAO.AsString := 'N';
      SqlTCdsipoPedidoOPV_VENDA.AsString := 'N';
      SqlTCdsipoPedidoOPV_ORCAMENTO.AsString := 'N';
      SqlTCdsipoPedidoOPV_TRANSF_PRECOCUSTO.AsString := 'N';
      SqlTCdsipoPedidoOPV_AGRUPADO.AsString  := 'N';
      SqlTCdsipoPedidoOPV_SERVICO.AsString := 'N';
      SqlTCdsipoPedidoOPV_BONIFICACAO.AsString := 'N';
      SqlTCdsipoPedidoOPV_FATURAMENTO.AsString := 'N';
      SqlTCdsipoPedidoOPV_PRODUCAO.AsString := 'N';
      SqlTCdsipoPedidoOPV_INDUSTRIALIZACAO.AsString := 'N';
      SqlTCdsipoPedidoOPV_ATUALIZA_DATA_PEDIDO.AsString := 'N';
      SqlTCdsipoPedidoOPV_SEMLOTE.AsString := 'N';
      SqlTCdsipoPedidoOPV_COMISSAO_VERBA.AsString := 'N';
      SqlTCdsipoPedidoOPV_CALCULA_ST.AsString := 'N';
      SqlTCdsipoPedidoOPV_ESTOQUE_REMESSAINDUS.AsString := 'N';
      SqlTCdsipoPedidoOPV_EXPEDICAO.AsString := 'N';
      SqlTCdsipoPedidoOPV_DEVOLUCAO.AsString := 'N';
      EdtPti_codigo.Text := '000';
      Screen.Cursor := crDefault;
      DesabilitaBotoes;
      DbRbTipo.ItemIndex            := 0;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroTipoPedido);
      DbePTi_Descri.setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
  end;
end;


procedure TFrmCadastroTipoPedido.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.Visible := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    EdtPTi_codigo.Color := clWindow;
    EdtPTi_codigo.Enabled := True;
    DBnavigator1.Enabled := True;
    BotoesAcesso;
end;

procedure TFrmCadastroTipoPedido.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    EdtPTi_codigo.Color := clSilver;
    EdtPTi_codigo.Enabled := False;
    DBnavigator1.Enabled := False;

end;

procedure TFrmCadastroTipoPedido.verificaEdicao;
begin
   // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if SqlTCdsipoPedido.State in [dsEdit,dsInsert] then
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

procedure TFrmCadastroTipoPedido.Bit_GravarClick(Sender: tObject);
begin
   try
      // --- teste de commit
      Screen.Cursor := crHourGlass;
      if (SqlTCdsipoPedidoOPV_CODIGO.AsString = '') then
         begin
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT MAX(T1.opv_codigo) FROM opv0000 T1','','','');
            DataCadastros.sqlUpdate.Open;
            SqlTCdsipoPedidoOPV_CODIGO.AsInteger := DataCadastros.sqlUpdate.FieldByName('MAX').AsInteger + 1;
            DataCadastros.sqlUpdate.Close;
         end;
      SqlTCdsipoPedido.ApplyUpdates(0);
      if (SqlTCdsipoPedidoOPV_TIPOPADRAO.AsString = 'S') then
         begin
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='UPDATE opv0000 SET OPV_TIPOPADRAO = ''N'' WHERE OPV_CODIGO <> '+SqlTCdsipoPedidoOPV_CODIGO.AsString;
            DataCadastros.sqlUpdate.Execsql;
         end;


      DsPrdTipo.AutoEdit := true;
      SqlTCdsipoPedido.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtPti_codigo.Text := StrZero(SqlTCdsipoPedidoOPV_CODIGO.AsString, EdtPti_codigo.MaxLength);
      EdtPti_codigo.SetFocus;
     except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao gravar no arquivo !'+e.message));
     end;
end;

procedure TFrmCadastroTipoPedido.Bit_ExcluirClick(Sender: tObject);
begin
   //Verifica se esta vazia
   if (SqlTCdsipoPedido.IsEmpty) then
      uteis.aviso('Não existe registro para ser excluído!')
   else
   begin
         //Verifica se o tipo já nao foi usado
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select cast(count(*) as integer) as conta from    ped0000 T1 ','WHERE T1.opv_codigo = '+QuotedStr(SqlTCdsipoPedidoOPV_CODIGO.AsString),'','');
         DataCadastros.sqlUpdate.Open;
         if (DataCadastros.sqlUpdate.FieldByName('conta').AsInteger = 0) then //ok pode excluir
         begin
               if (uteis.confirmacao  ( 'Confirma a exclusão do Registro ? ')=mrYes) then
               begin
                     SqlTCdsipoPedido.Delete;
                     SqlTCdsipoPedido.ApplyUpdates(0);
               end
         end
         else  //erro possui vinculação
            uteis.aviso('Este Item não pode ser excluído pois já foi vinculado a um pedido');
         DataCadastros.sqlUpdate.Close;
   end;
end;

procedure TFrmCadastroTipoPedido.FormClose(Sender: tObject;
  var Action: TCloseAction);
var
  ini:TIniFile;
  nome: string;
begin
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + 'form.pos';
  ini:=TIniFile.Create(nome);
  ini.WriteInteger('FORM', 'Top', Self.Top);
  ini.WriteInteger('FORM', 'Left', Self.Left);
  ini.WriteInteger('FORM', 'Width', Self.Width);
  ini.WriteInteger('FORM', 'Height', Self.Height);
  ini.Free;
  Action := CaFree;
end;

procedure TFrmCadastroTipoPedido.FormCreate(Sender: TObject);
begin
//  SELF.Height :=620;
end;

procedure TFrmCadastroTipoPedido.FormDestroy(Sender: TObject);
begin
     FrmCadastroTipoPedido := Nil;
end;

procedure TFrmCadastroTipoPedido.FormResize(Sender: TObject);
begin
//     Width := 661;
//     Height := 620;
end;

procedure TFrmCadastroTipoPedido.FormShow(Sender: tObject);
var
 ini:TIniFile;
 nome: string;
begin
   try
      {Verifica se compartilha clientes}
      SqlTCdsipoPedido.Close;
      SqlTCdsipoPedido.CommandText := SQLDEF('TABELAS','select * from OPV0000','','OPV_DESCRICAO','');
      SqlTCdsipoPedido.Open;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Impossível acessar a tabela '+e.message));
    end;
    Habilitabotoes;
    EdtPTi_codigo.text := SqlTCdsipoPedidoOPV_CODIGO.AsString;
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + 'form.pos';
  ini:=TiniFile.Create(nome);
  Self.Top:=ini.ReadInteger('FORM', 'Top', 0);
  Self.Left:=ini.ReadInteger('FORM', 'Left', 0);
  Self.Width:=ini.ReadInteger('FORM', 'Width', Self.Width);
  Self.Height:=ini.ReadInteger('FORM', 'Height', Self.Height);
  ini.Free;
end;

procedure TFrmCadastroTipoPedido.EdtPti_codigoClick(Sender: tObject);
begin
    EdtPti_codigo.SelectAll;
end;

procedure TFrmCadastroTipoPedido.EdtPti_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair')
    and(ActiveControl.Name <> 'Bit_novo') then
       begin
          if (Trim(EdtPti_codigo.Text) <> '') then
             begin
                 if (SqlTCdsipoPedido.State in [Dsbrowse]) and not (SqlTCdsipoPedido.IsEmpty) then
                    Busca;
             end
          else
             begin
                 uteis.aviso('Informe o código do tipo do pedido !');
                 EdtPti_Codigo.SetFocus;
                 EdtPti_Codigo.SelectAll;
             end;
       end;
end;

procedure TFrmCadastroTipoPedido.Busca;
begin
   if SqlTCdsipoPedido.Locate('OPV_CODIGO',EdtPTi_codigo.Text,[]) = false then
      begin
         messagebeep($ffff);
         uteis.aviso('Codigo do Tipo não cadastrado');
         EdtPTi_codigo.Text := SqlTCdsipoPedidoOPV_CODIGO.AsString;
         EdtPti_codigo.SetFocus;
       end;
end;

procedure TFrmCadastroTipoPedido.DbGradeTipoPedidoDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not odd(SqlTCdsipoPedido.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeTipoPedido.Canvas.Brush.Color := $00FFEFDF;
              DbGradeTipoPedido.Canvas.FillRect(rect);
              DbGradeTipoPedido.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'OPV_ATESTOQUE' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_ATESTOQUE.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'OPV_TIPOPADRAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_TIPOPADRAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPV_ORCAMENTO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_ORCAMENTO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPV_VENDA' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_VENDA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPV_PRODUCAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_PRODUCAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   if Column.FieldName = 'OPV_INDUSTRIALIZACAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_INDUSTRIALIZACAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_CALCULA_ST' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_CALCULA_ST.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
    if Column.FieldName = 'OPV_ATUALIZA_DATA_PEDIDO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_ATUALIZA_DATA_PEDIDO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

      if Column.FieldName = 'OPV_SEMLOTE' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_SEMLOTE.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

     if Column.FieldName = 'OPV_COMISSAO_VERBA' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_COMISSAO_VERBA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

     if Column.FieldName = 'OPV_BONIFICACAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_BONIFICACAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

     //Desenha um checkbox no dbgrid
   if Column.FieldName = 'OPV_SERVICO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_SERVICO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_INDUST_POR_KIT' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_INDUST_POR_KIT.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_BAIXAR_ESTOQUE_PELO_FAT' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_EXPEDICAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_EXPEDICAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_INATIVAR_TIPO_PEDIDO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_INATIVAR_TIPO_PEDIDO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

   if Column.FieldName = 'OPV_AGRUPADO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_AGRUPADO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

    if Column.FieldName = 'OPV_META_VENDEDOR' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_META_VENDEDOR.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

    if Column.FieldName = 'OPV_DEVOLUCAO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if SqlTCdsipoPedidoOPV_DEVOLUCAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;


end;

procedure TFrmCadastroTipoPedido.SqlTCdsipoPedidoBeforeEdit(
  DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

procedure TFrmCadastroTipoPedido.SqlTCdsipoPedidoBeforePost(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

procedure TFrmCadastroTipoPedido.Bit_CancelarClick(Sender: tObject);
begin
   SqlTCdsipoPedido.Cancel;
   
end;

procedure TFrmCadastroTipoPedido.SqlTCdsipoPedidoAfterScroll(
  DataSet: TDataSet);
begin
   EdtPti_codigo.Clear;
   if (not SqlTCdsipoPedido.IsEmpty) then
      EdtPti_codigo.Text := SqlTCdsipoPedidoOPV_CODIGO.AsString;
end;

procedure TFrmCadastroTipoPedido.SqlTCdsipoPedidoBeforeCancel(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

end.
