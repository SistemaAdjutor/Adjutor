{***********************************************************************
| Programa.....: PedItem- Nome formulario = FormPedItens
| Objetivo.....: Lançamento dos itens do Pedido
| Analista.....: Márcio Neu Pacheco
| Programador..: Márcio
|
| Comentários:
|
| Criação...........: Ago/01
| Ultima Alteração..: Nov/02
| Alterado por......: Márcio

Migração Interbase
   Migração ;........:Set/2003
   Migrado por ......:Rodrigo Ramos
*************************************************************************}
unit PedItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, Db, DBTables,RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS;

type
  TFormPedItens = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DbeDescricao: TDBEdit;
    DbeQtde: TDBEdit;
    DbePreco: TDBEdit;
    Panel3: TPanel;
    Bit_novo: TSpeedButton;
    Bit_Excluir: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    DbeIPI: TDBEdit;
    SpeedButton1: TSpeedButton;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    BitItensAssoc: TBitBtn;
    LabComis: TLabel;
    DbeComis: TDBEdit;
    LabDescto1: TLabel;
    LabDescto2: TLabel;
    DbeDescto1: TDBEdit;
    DbeDescto2: TDBEdit;
    LabMais: TLabel;
    DbeEstoque: TDBEdit;
    Label7: TLabel;
    PanDetalhar: TPanel;
    DbeVar1: TDBEdit;
    DbeVar2: TDBEdit;
    DbeVar3: TDBEdit;
    DbeVar4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DbeVar5: TDBEdit;
    DBEdit7: TDBEdit;
    DbeVar6: TDBEdit;
    DBEdit8: TDBEdit;
    DbeVar7: TDBEdit;
    DBEdit9: TDBEdit;
    DbeVar8: TDBEdit;
    Label8: TLabel;
    CbRef: TComboBox;
    EditRef: TEdit;
    CdsEstoque: TSQLClientDataSet;
    EdSaldoEstoque: TEdit;
    CbSituacao: TComboBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);

    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitItensAssocClick(Sender: tObject);
    procedure DbeQtdeExit(Sender: tObject);
    procedure CbRefExit(Sender: tObject);
    procedure DbeIPIKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
            {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
   procedure PreencheCombo;
  public
   procedure BuscaProduto;  
    { Public declarations }
  end;

var
  FormPedItens: TFormPedItens;

implementation

uses Uteis, Ped0003, DataMov, DataCad, DataCad1,
  Men0001;
{$R *.DFM}







procedure TFormPedItens.MudaCorCampos(Sender: tObject);
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


procedure TFormPedItens.HabilitaBotoes;
begin
  Bit_novo.Enabled      := True;
  Bit_Excluir.Enabled   := True;
  Bit_Sair.Enabled      := True;
  Bit_Gravar.Enabled    := False;
  Bit_Cancelar.Enabled  := False;
  DBnavigator1.Enabled  := True;
end;


procedure TFormPedItens.DesabilitaBotoes;
begin
  Bit_novo.Enabled      := False;
  Bit_Excluir.Enabled   := False;
  Bit_Sair.Enabled      := False;
  Bit_Gravar.Enabled    := True;
  Bit_Cancelar.Enabled  := True;
  DbNavigator1.Enabled  := False;
end;

procedure TFormPedItens.BuscaProduto;
var
wPosicao:Integer;
begin
if(ActiveControl.name = 'Bit_Cancelar')or(ActiveControl.name = 'Bit_Sair') then
  exit;
 try
 //checar se é produto c/ final [9999]
 wPosicao := Length(Trim(CbRef.Text))-3;
 if (Copy(CbRef.Text,wPosicao,4) = '9999')OR(DataCadastros1.CdsParametrosPMT_PEDITEMDESC.Value= 'S') then
    // liberar digitação da descricao
    DbeDescricao.ReadOnly := False
 else
    DbeDescricao.ReadOnly := True;
 //

 CdsEstoque.Close;
 CdsEstoque.CommandText := 'Select PRD_REFER,PRD_CODIGO,PRD_DESCRI,PRD_PVENDA,PGR_CODIGO,IPI_CODIGO,Sum((PRD_ESTOQUE + PRD_ENTRADA) - PRD_SAIDA) as PRD_QDTE from PRD0000 where PRD_REFER = '''+Cbref.Text+''' group by PRD_CODIGO,PRD_DESCRI,PRD_PVENDA,PGR_CODIGO,IPI_CODIGO';
 CdsEstoque.Open;
    if CdsEstoque.IsEmpty = false then
       begin
       if (DataMovimento.CdsPedItem.State in [dsInsert,dsEdit]) then
         begin
         //Default da inserção
         DataMovimento.CdsPedItemEMP_CODIGO.Value       := dbInicio.Empresa.EMP_CODIGO;
         DataMovimento.CdsPedItemPRF_SITUACAO.Value     := 'N';
         //traz da tabela de produto a descricao,codigo e preco
         DataMovimento.CdsPedItemPRF_PRDDESCRI.Value    := CdsEstoque.FieldByName('PRD_DESCRI').AsString;
   //      DataMovimento.CdsPedItemPRD_CODIGO.Value        := CdsEstoque.FieldByName('PRD_CODIGO').AsString;
         DataMovimento.CdsPedItemPRD_REFER.Value        := CdsEstoque.FieldByName('PRD_REFER').AsString;
         DataMovimento.CdsPedItemPRF_PRECO.AsCurrency   := CdsEstoque.FieldByName('PRD_PVENDA').AsCurrency;
         DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency := 0;

         EdSaldoEstoque.Text :=CdsEstoque.FieldByName('PRD_QDTE').AsString;

         // verifica se tem IPI
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='Select IPI_ALIQ FROM IPI0000 where IPI_CODIGO = '''+CdsEstoque.FieldByName('IPI_CODIGO').AsString+'''';
         DataCadastros.sqlUpdate.Open;
         If DataCadastros.sqlUpdate.IsEmpty = false then
            begin
               DataMovimento.CdsPedItemPRF_IPIALIQ.AsCurrency := DataCadastros.sqlUpdate.FieldByName('IPI_ALIQ').aSCURRENCY;
               DataCadastros.sqlUpdate.Close;
            End;

         // se parametros = sistema de comisao por prod. trazer percentual
           {  if DataCadastros1.CdsParametrosPMT_COMIS_PROD.Asstring = 'S' then
               Begin
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='Select PGR_COM_PERC FROM PRD_GRUPO where PGR_CODIGO = '''+CdsEstoque.FieldByName('PGR_CODIGO').AsString+'''';
                 DataCadastros.sqlUpdate.Open;
                    if DataCadastros.sqlUpdate.IsEmpty = false then
                        DataMovimento.CdsPedItemPRF_COMIS.AsCurrency := DataCadastros.sqlUpdate.FieldByName('PGR_COM_PERC').AScurrency;
               end;}
               
         end;
       end
 else
    begin
      uteis.erro  ('Referência não encontrada!');
      CbRef.SetFocus;
    end;
      DataCadastros.sqlUpdate.Close;
  except on E:EdatabaseError do
     uteis.erro  (Pchar('Erro ao localizar item !'+e.Message));
  end;
end;


procedure TFormPedItens.Bit_novoClick(Sender: tObject);
begin
// verificar No. de itens max. aceitos
if DataMovimento.CdsPedItem.RecordCount < DataCadastros1.CdsParametrosPMT_ITENS_PEDIDO.Value then
  begin
  CbRef.Text  := '';
  DataMovimento.CdsPedItem.Insert;
  DataMovimento.CdsPedItem.DisableControls;
  Desabilitabotoes;
  CbRef.SetFocus;
  end
else
  begin
  uteis.aviso(Pchar('Foi atingido o limite de itens permitido : '+IntToStr(DataCadastros1.CdsParametrosPMT_ITENS_PEDIDO.Value)));
  Habilitabotoes;
  end;
end;

procedure TFormPedItens.Bit_GravarClick(Sender: tObject);
var
wTot_qtde:Currency;
begin
 // validar discriminação das quantidades, se tem variacao
try
 if DataCadastros1.CdsParametrosPMT_VARIACOES.AsString = 'S' then
   begin
   with DataMovimento do
    wTot_Qtde:= CdsPedItemPRF_VAR1.AsCurrency + CdsPedItemPRF_VAR2.AsCurrency + CdsPedItemPRF_VAR3.AsCurrency + CdsPedItemPRF_VAR4.AsCurrency + CdsPedItemPRF_VAR5.AsCurrency + CdsPedItemPRF_VAR6.AsCurrency + CdsPedItemPRF_VAR7.AsCurrency + CdsPedItemPRF_VAR8.AsCurrency;
   //
   if DataMovimento.CdsPedItemPRF_QTDE.AsCurrency <> wTot_Qtde then
     begin
       uteis.erro  ('A quantidade nas variações não bate c/ quantidade total.');
       DbeVar1.SetFocus;
       exit;
     end;
   end;
 if CbSituacao.ItemIndex = 0 then
      DataMovimento.CdsPedItemPRF_SITUACAO.AsString := 'F'
  else
     DataMovimento.CdsPedItemPRF_SITUACAO.AsString := 'N';
 DataMovimento.CdsPedItemPRD_REFER.Value := CbRef.Text;
 DataMovimento.CdsPedItemPED_CODIGO.AsString := DataMovimento.CdsPedidosPED_CODIGO.AsString;
 DataMovimento.CdsPedItem.ApplyUpdates(0);
 DataMovimento.CdsPedItem.Refresh;
 DataMovimento.CdsPedItem.EnableControls;
 //FormPedidos.CalculaPed;
except on E:EdatabaseError do
    uteis.erro  (pchar('Impossível gravar registro !'+e.Message));
end;
 Habilitabotoes;
 CbRef.SetFocus;
end;

procedure TFormPedItens.Bit_CancelarClick(Sender: tObject);
begin
 DataMovimento.CdsPedItem.Cancel;
 CbRef.Text:=DataMovimento.CdsPedItemPRD_REFER.Value;
 DataMovimento.CdsPedItem.EnableControls;
 Habilitabotoes;
 CbRef.SetFocus;
end;

procedure TFormPedItens.Bit_SairClick(Sender: tObject);
begin
close;
end;

procedure TFormPedItens.Bit_ExcluirClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Deseja excluir o item do Pedido?')= Mryes then
   begin
   DataMovimento.CdsPedItem.Delete;
   end;
CbRef.Text:= DataMovimento.CdsPedItemPRD_REFER.Value;
end;

procedure TFormPedItens.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
var
wPosicao:Integer;
begin
 CbRef.Text:=DataMovimento.CdsPedItemPRD_REFER.Value;
 // localizar p/ mostrar estoque
 CdsEstoque.Close;
 CdsEstoque.CommandText := 'Select PRD_REFER,Sum((PRD_ESTOQUE + PRD_ENTRADA) - PRD_SAIDA) as PRD_QDTE from PRD0000 WHERE PRD_REFER = '''+CbRef.Text+''' group by PRD_REFER';
 CdsEstoque.Open;
 EdSaldoEstoque.Text := CdsEstoque.FieldByName('PRD_QDTE').AsString;
 //checar se é produto c/ final [9999]
 wPosicao := Length(Trim(CbRef.Text))-3;
 IF DataMovimento.CdsPedItemPRF_SITUACAO.AsString = 'F' then
    CbSituacao.ItemIndex := 0
  else
     CbSituacao.ItemIndex := 1;

 if (Copy(CbRef.Text,wPosicao,4) = '9999')OR(DataCadastros1.CdsParametrosPMT_PEDITEMDESC.Value='S') then
    // liberar alteracao da descricao
    DbeDescricao.ReadOnly := False
 else
    DbeDescricao.ReadOnly := True;
end;

procedure TFormPedItens.FormShow(Sender: tObject);
begin
 LEFT := 277;
 TOP  := 230;
 {ativa o método ao evento OnActiveControlChange}
Screen.OnActiveControlChange   := MudaCorCampos;
 PreencheCombo;

(* try
   DataMovimento.TbPrdGrupo.DatabaseName    := Preopen('Tabelas');
   DataMovimento.TbPrdGrupo.IndexFieldNames := 'PGR_CODIGO';
   DataMovimento.TbPrdGrupo.Open;
 except
   uteis.erro  ('Impossível acessar a tabela "TbPrdGrupo"');
 end;*)
 // localizar p/ mostrar estoque
 //
// ***  PARAMETROS GLOBAIS *** //
// Disponibilizar comissoes por prod. se for o caso
if DataCadastros1.CdsParametrosPMT_COMIS_PROD.AsString = 'S' then
  Begin
  LabComis.Visible := True;
  DbeComis.Visible := True;
  end;
// Disponibilizar detalhes de variacoes de quantidades
if DataCadastros1.CdsParametrosPMT_VARIACOES.Value = 'S' then
   PanDetalhar.Visible := True
else
   PanDetalhar.Visible := False;


// Disponibilizar descto de itens individuais se for o caso
if DataCadastros1.CdsParametrosPMT_DESCTO_ITEM.AsString = 'S' then
  Begin
  LabDescto1.Visible := True;
  LabDescto2.Visible := True;
  LabMais.Visible := True;
  DbeDescto1.Visible := True;
  DbeDescto2.Visible := True;
  end;
// Habilitabotoes;

   If DataMovimento.CdsPedItem.Active = false then
     DataMovimento.CdsPedItem.Open;

  if DataMovimento.CdsPedItem.IsEmpty then
   begin
     Bit_Novo.Click;
   end
 else
   begin
     IF DataMovimento.CdsPedItemPRF_SITUACAO.AsString = 'F' then
    CbSituacao.ItemIndex := 0
     else
     CbSituacao.ItemIndex := 1;
    end;
end;

procedure TFormPedItens.SpeedButton1Click(Sender: tObject);
begin
    if DataMovimento.CdsPedItem.IsEmpty then
        begin
            uteis.erro  ('É necessário clicar antes no botão "Incluir Item"');
            exit;
        end;

end;

procedure TFormPedItens.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  Screen.OnActiveControlChange := NIL;
  DataMovimento.CdsPedItem.EnableControls;
 //Não deve passar pela rotina se pedido sem itens 
 if not DataMovimento.CdsPedItem.IsEmpty then
    FormPedidos.CalculaPed;

end;

procedure TFormPedItens.BitItensAssocClick(Sender: tObject);
begin
  try
    try
     FormPedItensAss := TFormPedItensAss.Create(Application);
     FormPedItensAss.ShowModal;
    finally
     FormPedItensAss.Destroy;
     FormPedItensAss := nil; // nil é - not assigned(Form)
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormPedItens.DbeQtdeExit(Sender: tObject);
begin
 // atribuiçao default na primeira variacao
 if DataMovimento.CdsPedItem.State in [dsInsert] then
    DataMovimento.CdsPedItemPRF_VAR1.Value := DataMovimento.CdsPedItemPRF_QTDE.Value;
    if DataMovimento.CdsPedItemPRF_QTDE.IsNull then
        begin
            uteis.aviso('Informe a quantidade do item para o pedido !');
            DbeQtde.SetFocus;
        end;
end;

procedure TFormPedItens.PreencheCombo;
begin
  try
{Preencehe a combo box com todas as refencias do estoque facilianto dgtcao.}
    CdsEstoque.Close;
    CdsEstoque.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD_REFER','','PRD0000','');
    CdsEstoque.Open;
    CdsEstoque.First;
    while not CdsEstoque.Eof do
       begin
           cbRef.Items.Add(CdsEstoque.FieldByName('PRD_REFER').AsString);
           CdsEstoque.Next;
       end;
  except on E:EdatabaseError do
     uteis.erro  (Pchar('Erro ao listar referências !'+e.Message));
  end;
  CdsEstoque.Close;
end;

procedure TFormPedItens.CbRefExit(Sender: tObject);
begin
    if CbRef.Text <> '' then
        BuscaProduto;
end;

procedure TFormPedItens.DbeIPIKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #13 then
{se for = a enter então grava não coloqeui no on exit pois o usuario pode voltar para corrigfri outro campo com o mouse}
      begin
         if DbeComis.Visible = false then
            begin
                Bit_gravar.Click;
            end;
        Key := #0;
      end;      
end;

end.
