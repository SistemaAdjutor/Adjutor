{***********************************************************************
 Programa...: OCP0003  - Nome formulario = FormOcpItem
 Objetivo...: Cadastro de Item de Ordem de Compra
 Analista...: Márcio Neu Pacheco
 Programador: Márcio

 Comentários:

 Criação..........: Out/01
 Ultima Alteração.: Set/02 
 Alterado por.....: Márcio
************************************************************************}
unit Ocp0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, RwFunc, DBTables;

type
  TFormOcpItem = class(TForm)
    Panel3: TPanel;
    Bit_novo: TSpeedButton;
    Bit_Excluir: TSpeedButton;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    DbeDescricao: TDBEdit;
    DbeQtde: TDBEdit;
    DbePreco: TDBEdit;
    DbeIPI: TDBEdit;
    DbeSituacao: TDBEdit;
    EditMaterial: TEdit;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    DbeEstoque: TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure EditMaterialExit(Sender: tObject);
    procedure BuscaMaterial;
    procedure DbeQtdeEnter(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure PegaReferAlter;
  private
    { Private declarations }
           {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
  public
    { Public declarations }
     wQtdePendente : Double;
     wRef_anterior:String;
  end;

var
  FormOcpItem: TFormOcpItem;

implementation

uses database, OCP0001, Ocp0004;

{$R *.DFM}







procedure TFormOcpItem.MudaCorCampos(Sender: tObject);
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



procedure TFormOcpItem.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
 PegaReferAlter;
 //
 EditMaterial.Text:=Datamodulo.TbOrdCompItemPRD_REFER.Value;
 // localizar p/ mostrar estoque
 Datamodulo.TbProduto.Findkey([EditMaterial.Text]);
end;

procedure TFormOcpItem.HabilitaBotoes;
begin
  Bit_novo.Enabled      := True;
  Bit_Excluir.Enabled   := True;
  Bit_Sair.Enabled      := True;
  Bit_Gravar.Enabled    := False;           
  Bit_Cancelar.Enabled  := False;
  DBnavigator1.Enabled  := True;
  EditMaterial.ReadOnly := True;
end;


procedure TFormOcpItem.DesabilitaBotoes;
begin
  Bit_novo.Enabled      := False;
  Bit_Excluir.Enabled   := False;
  Bit_Sair.Enabled      := False;
  Bit_Gravar.Enabled    := True;
  Bit_Cancelar.Enabled  := True;
  DbNavigator1.Enabled  := False;
  EditMaterial.ReadOnly := False;
end;


procedure TFormOcpItem.Bit_ExcluirClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Excluir o item da ordem ?')=MrYes  then
   begin
   if Datamodulo.TbOrdCompItemOCI_SITUACAO.Value = 'R' then
     begin
     uteis.erro  ('Não é possível excluir o item. Ele está marcado como "R"ecebido');
     exit;
     end;
   // estornar a quant. do campo PRD_PENDENTE do estoque de Produto
   If Datamodulo.TbProduto.Findkey([Datamodulo.TbOrdCompItemPRD_REFER.Value]) Then
     begin
     Datamodulo.TbProduto.Edit;
     Datamodulo.TbProdutoPRD_PENDENTE.Value:=Datamodulo.TbProdutoPRD_PENDENTE.Value-Datamodulo.TbOrdCompItemOCI_QTDE.Value;
     Datamodulo.TbProduto.Post;
     Datamodulo.TbOrdCompItem.Delete;
     end;
   end;

EditMaterial.Text:=Datamodulo.TbOrdCompItemPRD_REFER.Value;
end;

procedure TFormOcpItem.Bit_novoClick(Sender: tObject);
begin
EditMaterial.Text:='';
DataModulo.TbOrdCompItem.Insert;
Desabilitabotoes;
EditMaterial.SetFocus;
end;

procedure TFormOcpItem.Bit_GravarClick(Sender: tObject);
begin


 if Datamodulo.TbOrdCompItemOCI_SITUACAO.Value = 'R' then
   begin
   uteis.erro  ('Não é possível gravar alterações neste item, que já está "R"ecebido');
   DataModulo.TbOrdCompItem.Cancel;
   DataModulo.TbOrdCompItem.Refresh;
   EditMaterial.Text:=Datamodulo.TbOrdCompItemPRD_REFER.Value;
   exit;
   end;
 Habilitabotoes;


 Screen.Cursor := crHourglass;
 //
 // ****************   GRAVAR O ITEM  *************************
 //atribui "P" como default para ocampo
 if Datamodulo.TbOrdCompItemOCI_SITUACAO.Value = '' then
     Datamodulo.TbOrdCompItemOCI_SITUACAO.Value := 'P';
 //
 // Gravar qtde pendente na tabela TbProduto
 if Datamodulo.TbProduto.Findkey([EditMaterial.Text]) Then
    begin
    if Datamodulo.DsOrdCompItem.State in [dsInsert] then
      if Datamodulo.TbOrdCompItemOCI_SITUACAO.Value = 'P' then
       begin
       Datamodulo.TbProduto.Edit;
       Datamodulo.TbProdutoPRD_PENDENTE.Value:=Datamodulo.TbProdutoPRD_PENDENTE.Value+Datamodulo.TbOrdCompItemOCI_QTDE.Value;
       Datamodulo.TbProduto.Post;
       end;
    end;
  if Datamodulo.DsOrdCompItem.State in [dsEdit] then
    begin
     // alteração pendente "pode ter mudado quantidade ou item
    if Datamodulo.TbOrdCompItemOCI_SITUACAO.Value = 'P' then
      begin
      //pode ter sido alterado o item
      if wRef_anterior<>'' then
         Datamodulo.TbProduto.Findkey([wRef_anterior]);
      //
      Datamodulo.TbProduto.Edit;
      //primeiro tira qtde pendente anterior. se foi alterado qtde
      Datamodulo.TbProdutoPRD_PENDENTE.Value:=Datamodulo.TbProdutoPRD_PENDENTE.Value-wQtdePendente;
      Datamodulo.TbProduto.Post;
      // segundo reatualiza pendente
      Datamodulo.TbProduto.Findkey([EditMaterial.Text]);
      Datamodulo.TbProduto.Edit;
      Datamodulo.TbProdutoPRD_PENDENTE.Value:=Datamodulo.TbProdutoPRD_PENDENTE.Value+Datamodulo.TbOrdCompItemOCI_QTDE.Value;
      Datamodulo.TbProduto.Post;
      end;
    end;
  wRef_anterior:='';
 //
 Datamodulo.TbOrdCompItemPRD_REFER.Value := EditMaterial.Text;
 Datamodulo.TbOrdCompItemEMP_CODIGO.Value := Datamodulo.TbOrdCompraEMP_CODIGO.Value;
 Datamodulo.TbOrdCompItem.Post;
 Datamodulo.TbOrdCompItem.FlushBuffers;
 Datamodulo.TbOrdCompItem.Refresh;
 // atualiza campo estoque
 Datamodulo.TbOrdCompItem.Last;
 //
 //*** rotina vincula produto ao fornecedor *** ///
 // checar se já existe vinculo
  if Datamodulo.TbForXProd.FindKey([Datamodulo.TbOrdCompraFor_codigo.Value,Datamodulo.TbOrdCompItemPRD_REFER.Value])=False then
     begin
     Datamodulo.TbForXProd.Insert;
     Datamodulo.TbForXProdFOR_CODIGO.Value := Datamodulo.TbOrdCompraFor_codigo.Value;
     Datamodulo.TbForXProdPRD_REFER.Value := Datamodulo.TbOrdCompItemPRD_REFER.Value;
     Datamodulo.TbForXProd.Post;
     end;

  EditMaterial.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFormOcpItem.PegaReferAlter;
begin
// em caso de alteracao de material, guardar p/ atualizar pendente
if (EditMaterial.Text<>'') then  //and(wRef_anterior='') then
  begin
  wRef_anterior:=Datamodulo.TbOrdCompItemPRD_REFER.Value;
  wQtdePendente := DataModulo.TbOrdCompItemOCI_QTDE.Value;
  end;
end;


procedure TFormOcpItem.BuscaMaterial;
begin
if (ActiveControl.name = 'Bit_Cancelar')or (ActiveControl.name = 'Bit_Sair')  then
  exit;

if Datamodulo.TbProduto.FindKey([EditMaterial.Text]) then
  begin
    if (Datamodulo.TbOrdCompItem.State in [dsInsert]) then
      begin
      Datamodulo.TbOrdCompItemOCI_PRECO.Value := Datamodulo.TbProdutoPRD_PCUSTO.Value;
      Datamodulo.TbOrdCompItemPRD_DESCRI_CC.Value := Datamodulo.TbProdutoPRD_DESCRI.value;
      end;
    if (Datamodulo.TbOrdCompItem.State in [dsEdit]) then
      Datamodulo.TbOrdCompItemPRD_DESCRI_CC.Value := Datamodulo.TbProdutoPRD_DESCRI.value;
  end
else
  begin
  //beep;
  uteis.erro  ('Material não encontrado!');
  EditMaterial.SetFocus;
  end;

end;



procedure TFormOcpItem.EditMaterialExit(Sender: tObject);
begin
  BuscaMaterial;
end;

procedure TFormOcpItem.DbeQtdeEnter(Sender: tObject);
begin
 // no caso de alteracao de qtde guardo valor p/ ajustar no estoque
 wQtdePendente := DataModulo.TbOrdCompItemOCI_QTDE.Value;
end;

procedure TFormOcpItem.Bit_CancelarClick(Sender: tObject);
begin
 DataModulo.TbOrdCompItem.Cancel;
 EditMaterial.Text:=DataModulo.TbOrdCompItemPRD_REFER.Value;
 Habilitabotoes;
 EditMaterial.SetFocus;
end;

procedure TFormOcpItem.Bit_SairClick(Sender: tObject);
begin
 close;
end;

procedure TFormOcpItem.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
 // nao deve passar se itens vazio
 if not DataModulo.TbOrdCompItem.IsEmpty then
    FormOrdCompra.CalcTotal;

Screen.OnActiveControlChange := NIL;  
end;

procedure TFormOcpItem.FormShow(Sender: tObject);
begin
 LEFT := 277;
 TOP  := 260;

{ativa o método ao evento OnActiveControlChange}
 Screen.OnActiveControlChange   := MudaCorCampos;

 EditMaterial.Text:=Datamodulo.TbOrdCompItemPRD_REFER.Value;
 Habilitabotoes;
end;

procedure TFormOcpItem.SpeedButton1Click(Sender: tObject);
begin
if Datamodulo.TbOrdCompItem.IsEmpty then
  begin
  uteis.erro  ('É necessário clicar antes no botão "Incluir Item"');
  exit;
  end;
  // pega ref. anterior no caso de alteracao
  PegaReferAlter;

  try
    try
      FormOcpProd := TFormOcpProd.Create(Application);
      FormOcpProd.ShowModal;
    finally
      FormOcpProd.Destroy;
      FormOcpProd:= nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

end.
