unit uCadastroFormaPagamento;

{$WARNINGS OFF}
{$HINTS OFF}
{$D-}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr, Provider, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,
  Mask, Buttons, DB, DBClient, DBLocal, DBLocalS, ComboBoxRw, FMTBCd,
  SgDbSeachComboUnit;

type
  TFrmCadastroFormaPagamento = class(TForm)
    DsFormaPagamento: TDataSource;
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
    DBCheckBox2: TDBCheckBox;
    GroupBox1: TGroupBox;
    DbGradeTipoPedido: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    grpContaFinanceira: TGroupBox;
    EdtOpe_Codigo: TEdit;
    CbxCtaAnalise: TComboBoxRw;
    SqlPagamento: TSQLDataSet;
    DspPagamento: TDataSetProvider;
    CdsFormaPagamento: TClientDataSet;
    SqlPagamentoFPG_REGISTRO: TIntegerField;
    SqlPagamentoEMP_CODIGO: TStringField;
    SqlPagamentoFPG_DESCRICAO: TStringField;
    SqlPagamentoFPG_LANCA_CONTA: TStringField;
    SqlPagamentoFPG_FLUXO_CAIXA: TStringField;
    SqlPagamentoCCT_CODIGO: TStringField;
    SqlPagamentoCCT_DESCRI: TStringField;
    CdsFormaPagamentoFPG_REGISTRO: TIntegerField;
    CdsFormaPagamentoEMP_CODIGO: TStringField;
    CdsFormaPagamentoFPG_DESCRICAO: TStringField;
    CdsFormaPagamentoFPG_LANCA_CONTA: TStringField;
    CdsFormaPagamentoFPG_FLUXO_CAIXA: TStringField;
    CdsFormaPagamentoCCT_CODIGO: TStringField;
    CdsFormaPagamentoCCT_DESCRI: TStringField;
    CdsFormaPagamentoFPG_BAIXARECEBER: TStringField;
    SqlPagamentoFPG_BAIXARECEBER: TStringField;
    DBCheckBox3: TDBCheckBox;
    SqlPagamentoFPG_BOLETO: TStringField;
    CdsFormaPagamentoFPG_BOLETO: TStringField;
    DBCheckBox4: TDBCheckBox;
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
    procedure CdsFormaPagamento2BeforeEdit(DataSet: TDataSet);
    procedure CdsFormaPagamento2BeforePost(DataSet: TDataSet);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure CdsFormaPagamento2AfterScroll(DataSet: TDataSet);
    procedure CdsFormaPagamento2BeforeCancel(DataSet: TDataSet);
    procedure CbxCtaAnaliseChange(Sender: tObject);
    procedure CdsFormaPagamentoBeforeEdit(DataSet: TDataSet);
    procedure CdsFormaPagamentoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CdsFormaPagamentoNewRecord(DataSet: TDataSet);
    procedure CbxCtaAnaliseSelect(Sender: TObject);
    procedure CdsFormaPagamentoAfterScroll(DataSet: TDataSet);
    procedure EdtOpe_CodigoChange(Sender: TObject);

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
  FrmCadastroFormaPagamento: TFrmCadastroFormaPagamento;

implementation

uses
  DataCad, Men0001, RWFunc, Math, uteis, iniciodb;

{$R *.dfm}

procedure TFrmCadastroFormaPagamento.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmCadastroFormaPagamento.BotoesAcesso;
begin
     if assigned(FrmCadastroFormaPagamento) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroFormaPagamento).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroFormaPagamento).Exluir;
       DsFormaPagamento.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroFormaPagamento).Alterar;
     end;
end;

procedure TFrmCadastroFormaPagamento.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      CdsFormaPagamento.Insert;
      CdsFormaPagamentoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      CdsFormaPagamentoFPG_LANCA_CONTA.AsString := 'S';
      CdsFormaPagamentoFPG_FLUXO_CAIXA.AsString := 'S';
      EdtPti_codigo.Text := '0';
      Screen.Cursor := crDefault;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroFormaPagamento);
      DbePTi_Descri.setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;


procedure TFrmCadastroFormaPagamento.HabilitaBotoes;
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

procedure TFrmCadastroFormaPagamento.DesabilitaBotoes;
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

procedure TFrmCadastroFormaPagamento.verificaEdicao;
begin
   // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if CdsFormaPagamento.State in [dsEdit,dsInsert] then
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

procedure TFrmCadastroFormaPagamento.Bit_GravarClick(Sender: tObject);
begin
   try
      Screen.Cursor := crHourGlass;
      if (CdsFormaPagamentoFPG_REGISTRO.AsString = '') then
      begin
        DataCadastros.sqlUpdate.Close;
        DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT MAX(T1.FPG_REGISTRO) FROM FORMA_PAGAMENTO T1','','','');
        DataCadastros.sqlUpdate.Open;
        CdsFormaPagamentoFPG_REGISTRO.AsInteger := DataCadastros.sqlUpdate.FieldByName('MAX').AsInteger + 1;
        DataCadastros.sqlUpdate.Close;
      end;
     if not (CdsFormaPagamento.State in dsEditModes) then
       CdsFormaPagamento.Edit;
      CdsFormaPagamentoCCT_CODIGO.AsString := EdtOpe_Codigo.Text;
     if (CdsFormaPagamento.State in dsEditModes) then
       CdsFormaPagamento.Post;

      CdsFormaPagamento.ApplyUpdates(0);
      DsFormaPagamento.AutoEdit := true;
      CdsFormaPagamento.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtPti_codigo.Text := CdsFormaPagamentoFPG_REGISTRO.AsString;
      EdtPti_codigo.SetFocus;
     except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao grava no arquivo !'+e.message));
     end;
end;

procedure TFrmCadastroFormaPagamento.Bit_ExcluirClick(Sender: tObject);
var
   iQuantidade:Integer;
begin
   //Verifica se esta vazia
   if (CdsFormaPagamento.IsEmpty) then
         uteis.aviso('Não existe registro para ser excluído!')
   else
   begin
         //Verifica se o tipo já nao foi usado
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select cast(count(*) as integer) as conta from    FAT_RECEBIMENTO T1 ','WHERE T1.FPG_REGISTRO = '+QuotedStr(CdsFormaPagamentoFPG_REGISTRO.AsString),'','');
         DataCadastros.sqlUpdate.Open;
         iQuantidade := DataCadastros.sqlUpdate.FieldByName('conta').AsInteger;

         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select cast(count(*) as integer) as conta from    PAG_PAGAMENTO T1 ','WHERE T1.FPG_REGISTRO = '+QuotedStr(CdsFormaPagamentoFPG_REGISTRO.AsString),'','');
         DataCadastros.sqlUpdate.Open;
         iQuantidade := iQuantidade + DataCadastros.sqlUpdate.FieldByName('conta').AsInteger;
         if (iQuantidade = 0) then //ok pode excluir
         begin
               if (uteis.confirmacao  ( 'Confirma a exclusão do Registro ? ')=mrYes) then
               begin
                     CdsFormaPagamento.Delete;
                     CdsFormaPagamento.ApplyUpdates(0);
               end
         end
         else  //erro possui vinculação
            uteis.aviso('Este Item não pode ser excluído pois já foi vinculado a um recebimento');
         DataCadastros.sqlUpdate.Close;
   end;
end;

procedure TFrmCadastroFormaPagamento.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CbxCtaAnalise.CarregarCombo := False;
   CdsFormaPagamento.Close;
   Action := CaFree;
end;

procedure TFrmCadastroFormaPagamento.FormShow(Sender: tObject);
begin
   try
      {Verifica se compartilha clientes}
      CdsFormaPagamento.Close;
      CdsFormaPagamento.CommandText := SQLDEF('TABELAS','select T1.*, T2.CCT_DESCRI from FORMA_PAGAMENTO T1 LEFT JOIN CCT_0000 T2 ON (T2.CCT_CODIGO = T1.CCT_CODIGO)','','FPG_DESCRICAO','t1.');
      CdsFormaPagamento.Open;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Impossível acessar a tabela '+e.message));
    end;
    Habilitabotoes;
    EdtPTi_codigo.text := CdsFormaPagamentoFPG_REGISTRO.AsString;
end;

procedure TFrmCadastroFormaPagamento.EdtPti_codigoClick(Sender: tObject);
begin
    EdtPti_codigo.SelectAll;
end;

procedure TFrmCadastroFormaPagamento.EdtPti_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair')
    and(ActiveControl.Name <> 'Bit_novo') then
       begin
          if (Trim(EdtPti_codigo.Text) <> '') then
             begin
                 if (CdsFormaPagamento.State in [Dsbrowse]) and not (CdsFormaPagamento.IsEmpty) then
                    Busca;
             end
          else
             begin
                 uteis.aviso('Informe o código da Forma de Pagamento !');
                 EdtPti_Codigo.SetFocus;
                 EdtPti_Codigo.SelectAll;
             end;
       end;
end;

procedure TFrmCadastroFormaPagamento.Busca;
begin
   if CdsFormaPagamento.Locate('FPG_REGISTRO',EdtPTi_codigo.Text,[]) = false then
      begin
         messagebeep($ffff);
         uteis.aviso('Codigo da Forma de Pagamento não cadastrada');
         EdtPTi_codigo.Text := CdsFormaPagamentoFPG_REGISTRO.AsString;
         EdtPti_codigo.SetFocus;
       end;
end;

procedure TFrmCadastroFormaPagamento.DbGradeTipoPedidoDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not odd(CdsFormaPagamento.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeTipoPedido.Canvas.Brush.Color := $00FFEFDF;
              DbGradeTipoPedido.Canvas.FillRect(rect);
              DbGradeTipoPedido.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'FPG_FLUXO_CAIXA' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if CdsFormaPagamentoFPG_FLUXO_CAIXA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'FPG_LANCA_CONTA' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if CdsFormaPagamentoFPG_LANCA_CONTA.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'FPG_BOLETO' then
      begin
         DbGradeTipoPedido.Canvas.FillRect(Rect);
         Check := 0;
         if CdsFormaPagamentoFPG_BOLETO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
         InflateRect(R,-2,-2); {Diminui o tamanho do CheckBox}
         DrawFrameControl(DbGradeTipoPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;

end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamento2BeforeEdit(
  DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamento2BeforePost(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamentoAfterScroll(DataSet: TDataSet);
begin
  if CdsFormaPagamentoCCT_CODIGO.Text = '' then
  begin
    CbxCtaAnalise.Clear;
    EdtOpe_Codigo.Clear;
  end
  else
   CbxCtaAnalise.CodigoLista := CdsFormaPagamentoCCT_CODIGO.Text;
end;

procedure TFrmCadastroFormaPagamento.Bit_CancelarClick(Sender: tObject);
begin
   CdsFormaPagamento.Cancel;
   
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamento2AfterScroll(
  DataSet: TDataSet);
begin
   EdtPti_codigo.Clear;
   if (not CdsFormaPagamento.IsEmpty) then
      EdtPti_codigo.Text := CdsFormaPagamentoFPG_REGISTRO.AsString;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamento2BeforeCancel(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.EdtOpe_CodigoChange(Sender: TObject);
begin
if   Length(EdtOpe_Codigo.Text) < 3 then
  exit;

 EdtOpe_Codigo.Text := PreenchezeroEsquerda(EdtOpe_Codigo.Text,3);
// CdsFormaPagamentoCCT_CODIGO.AsString := EdtOpe_Codigo.Text;
 if (EdtOpe_Codigo.Text = '000') then
    begin
       EdtOpe_Codigo.Clear;
       CbxCtaAnalise.Text := '';
    end
 else
    begin
       CbxCtaAnalise.TextoLocalizar := EdtOpe_Codigo.Text;
       CbxCtaAnalise.Localizar := True;
       if (CbxCtaAnalise.Localizado) then
          begin
          end
       else
          begin
             uteis.aviso('Conta Financeira não localizada com o código informado');
             CbxCtaAnalise.Text := '';
             EdtOpe_Codigo.SetFocus;
             EdtOpe_Codigo.SelectAll;
          end;
    end;
end;

procedure TFrmCadastroFormaPagamento.CbxCtaAnaliseChange(Sender: tObject);
begin
 //  EdtOpe_Codigo.Text := PreenchezeroEsquerda(EdtOpe_Codigo.Text,3);

end;

procedure TFrmCadastroFormaPagamento.CbxCtaAnaliseSelect(Sender: TObject);
begin
 if CbxCtaAnalise.CodigoLista = '' then
 begin
   EdtOpe_Codigo.Clear;
   CbxCtaAnalise.Clear;

 end
 else
   EdtOpe_Codigo.Text := CbxCtaAnalise.CodigoLista;
  if not (CdsFormaPagamento.State in dsEditModes) then
    CdsFormaPagamento.Edit;
  DesabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.FormDestroy(Sender: TObject);
begin
     FrmCadastroFormaPagamento := Nil;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamentoBeforeEdit(
  DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamentoBeforePost(
  DataSet: TDataSet);
begin
   HabilitaBotoes;
end;

procedure TFrmCadastroFormaPagamento.CdsFormaPagamentoNewRecord(DataSet: TDataSet);
begin
  CdsFormaPagamentoFPG_BAIXARECEBER.AsString := 'N';
  CdsFormaPagamentoFPG_LANCA_CONTA.AsString := 'N';
  CdsFormaPagamentoFPG_FLUXO_CAIXA.AsString := 'N';
end;

end.
