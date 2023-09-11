{************************************************************
 Programa...: COT0001  - Nome formulario = FormCotacao      
 Objetivo...: Cotação de preços p/ compra                   
 Analista...: Márcio Neu Pacheco                            
 Programador: Jackson e Márcio

 Comentários:                                                                                                                        /
 Criação..........: mar/99
 Ultima Alteração.: mai/01
 Alterado por.....: Márcio

*************************************************************}
unit Cot0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids, Buttons, Db, RWFunc,
  DBTables,  rxToolEdit, RXDBCtrl ;

type
  TFormCotacao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    EdtCOT_CODIGO: TEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DblkCbFOR_CODIGO: TDBLookupComboBox;
    DbeFOR_CONTATO: TDBEdit;
    DbeFOR_FONCONT: TDBEdit;
    DbeFOR_FAXCONT: TDBEdit;
    DbeCot_Icms: TDBEdit;
    DbeCot_Prazopagto: TDBEdit;
    DbeCot_Entrega: TDBEdit;
    DbeCot_Descto: TDBEdit;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DbGridCotacao: TDBGrid;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    DBCombCot_Frete: TDBComboBox;
    DbeFor_Codigo: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    TotGeral: TEdit;
    Label9: TLabel;
    VL_IPI: TEdit;
    Label12: TLabel;
    Total: TEdit;
    Panel3: TPanel;
    Bit_GeraOC: TBitBtn;
    Label17: TLabel;
    Label15: TLabel;
    RdGCOT_STATUS: TDBRadioGroup;
    Panel4: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    SpdFornec: TSpeedButton;
    TbCotItemAux: TTable;
    TbCotItemAuxCOT_CODIGO: TStringField;
    DbeCot_Data: TDBDateEdit;
    FiltroProd: TSpeedButton;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure CalcTotal;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaCodigo;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtCot_codigoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbGridCotacaoColEnter(Sender: tObject);
    procedure DbeFor_CodigoExit(Sender: tObject);
    procedure DbGridCotacaoColExit(Sender: tObject);
    procedure DbGridCotacaoExit(Sender: tObject);
    procedure Bit_GeraOCClick(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure DblkCbFOR_CODIGOClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DbGridCotacaoEnter(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FiltroProdClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCotacao: TFormCotacao;
implementation

{$R *.DFM}

uses OCP0001, COT0002, Prd0007, QRCotaca, QRBanc01, ADJ0001;








procedure TFormCotacao.verificaEdicao;
begin
// verifica estado da tabela em edicao e inclusao - grava ou cancela
screen.cursor :=crHourglass;
  if Datamodulo.TbCotacao.State in [dsEdit,dsInsert] then
    begin
      if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
         begin
         Bit_Gravar.Click;
         end
      else
         begin
         Bit_Cancelar.Click;
         end;
      end;
screen.cursor := crDefault;
close;
end;


procedure TFormCotacao.HabilitaBotoes;
begin{abilita pa exclusão e inclusão}
  Bit_novo.Enabled := True;
  Bit_Excluir.Enabled := True;
  Bit_Sair.Visible := True;
  Bit_Relatorio.Enabled := true;
  Bit_Lista.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Visible := False;
  EdtCOT_CODIGO.Color := clWindow;
  EdtCOT_CODIGO.Enabled := True;
  DBnavigator1.Enabled := True;
  FiltroProd.Enabled := True;
end;


procedure TFormCotacao.DesabilitaBotoes;
begin {Habilita p/ gravar ou cancelas - é chamada pelo BeforeEdit da tabela}
  Bit_novo.Enabled := False;
  Bit_Excluir.Enabled := False;
  Bit_Sair.Visible := False;
  Bit_Relatorio.Enabled := False;
  Bit_Lista.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Visible := True;
  EdtCOT_CODIGO.Color := clSilver;
  EdtCOT_CODIGO.Enabled := False;
  DBnavigator1.Enabled := False;
  FiltroProd.Enabled := False;
end;


procedure TFormCotacao.BuscaCodigo;
begin     //busca cotação pelo codigo
  Datamodulo.TbCotacao.IndexName := 'XCOT_CODI';
  Datamodulo.TbCotacao.FindKey([EdtCOT_CODIGO.text]);
  if Datamodulo.TbCotacao.findKey([EdtCOT_CODIGO.Text]) = false then
     begin
       messagebeep($ffff);
       uteis.aviso('Cotação não encontrada.');
       EdtCOT_CODIGO.Text := Datamodulo.TbCotacaoCOT_CODIGO.Value;
     end;
end;


procedure TFormCotacao.FormShow(Sender: tObject);
begin
 Left := 1;
 Top := 68;
  Screen.Cursor := crHourglass;
  {uso p/ find quando na grade }
  TbCotItemAux.DatabaseName := Preopen('cotacoes');
  TbCotItemAux.Open;
  try
    Datamodulo.TbCotacao.DatabaseName := Preopen('cotacoes');
    Datamodulo.TbCotacao.IndexName := 'XCOT_CODI';
    Datamodulo.TbCotacao.open;
  except
    uteis.erro  ('Impossível acessar a tabela de "TbCotação"! ');
  end;
  Datamodulo.TbCotacao.Last;
  //
  try
    Datamodulo.TbOrdCompra.DatabaseName := Preopen('ordenscompra');
    Datamodulo.TbOrdCompra.Open;
  except
    uteis.erro  ('Não posso abrir Tabela de "Ordem de Compra"');
  end;
  //
  try
    Datamodulo.TbOrdCompItem.DatabaseName := Preopen('ordenscompra');
    Datamodulo.TbOrdCompItem.IndexName := 'XOCP_CODREF2';
    Datamodulo.TbOrdCompItem.Open;
  except
    uteis.erro  ('Não posso abrir Tabela de "Itens da Ordem de Compra"');
  end;
   //
  try
    Datamodulo.TbProduto.DatabaseName := Preopen('produtos');
    Datamodulo.TbProduto.Open;
    Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
  except
    uteis.erro  ('Não posso abrir a tabela de "Produto"!');
  end;
  //
  try
    Datamodulo.TbCotaItem.DatabaseName := Preopen('cotacoes');
    Datamodulo.TbCotaItem.IndexName := 'XCOT_CODREF2';
    Datamodulo.TbCotaItem.Open;
  except
    uteis.erro  ('Não posso abrir Tabela de "Itens da Cotação".');
  end;
   try
     Datamodulo.TbFornec.DatabaseName := Preopen('fornecedores');
     Datamodulo.TbFornec.open;
     Datamodulo.TbFornec.IndexName := 'XFOR_CODI';
   except
     uteis.erro  ('Impossivel abrir a tabela de "Fornecedores"');
   end;
   //
  {link pelo código da cotação, entre itens e cotações}
  Datamodulo.TbCotaItem.MasterSource := Datamodulo.DsCotacao;
  Datamodulo.TbCotaItem.MasterFields := 'COT_CODIGO';
  //
  Habilitabotoes;
  if Datamodulo.TbCotacao.IsEmpty Then  //Evita alteração antes que se
     begin                                     //inclua registros na tabela.
       Datamodulo.DsCotacao.AutoEdit := False;
       EdtCOT_CODIGO.Enabled := False;
     end;
  EdtCOT_CODIGO.text := Datamodulo.TbCotacaoCOT_CODIGO.Value;
  Calctotal;
  Screen.Cursor := crdefault;
end;


procedure TFormCotacao.Bit_novoClick(Sender: tObject);
var
codigo:integer;
begin
Screen.Cursor := crHourglass;
{limpa dados da tela}
DbeFOR_CONTATO.DataField := '';
DbeFOR_FONCONT.DataField := '';
DbeFOR_FAXCONT.DataField := '';
Total.Text := '';
VL_IPI.Text := '';
TotGeral.Text := '';
//indexa por codigo e vai p/ o ultimo registro
Datamodulo.TbCotacao.IndexName := 'XCOT_CODI';
Datamodulo.TbCotacao.Last;
Datamodulo.DsCotacao.AutoEdit := True;
if Datamodulo.TbCotacaoCOT_CODIGO.IsNull = true Then
   Begin
   Datamodulo.TbCotacao.Insert;
   EdtCOT_CODIGO.text := '1';
   End
else
   Begin  //incrementa codigo
   codigo := StrToInt(Datamodulo.TbCotacaoCOT_CODIGO.Value) + 1;
   //inclui um registro
   Datamodulo.TbCotacao.Insert;
   EdtCOT_CODIGO.text := IntToStr(codigo);
   end;

EdtCOT_CODIGO.Text := StrZero(EdtCOT_CODIGO.Text, EdtCOT_CODIGO.MaxLength);
DesabilitaBotoes; //função local
Datamodulo.TbCotacaoEMP_CODIGO.Value := FormAdjutor.wEmp_codigo;
Datamodulo.TbCotacaoCOT_CODIGO.Value := EdtCOT_CODIGO.Text;
Datamodulo.TbCotacaoCOT_STATUS.Value := 'N';
{libera entrada do fornecedor}
DbeFOR_CODIGO.Color := clWindow;
DbeFOR_CODIGO.Font.Color := clBlack;
DbeFOR_CODIGO.ReadOnly := False;
DblkCbFOR_CODIGO.Color := clWindow;
DblkCbFOR_CODIGO.Font.Color := clBlack;
DblkCbFOR_CODIGO.ReadOnly := False;
RdGCOT_STATUS.Value := 'N';
//
DblkCbFOR_CODIGO.setfocus;
screen.cursor := crdefault;
end;


procedure TFormCotacao.Bit_ExcluirClick(Sender: tObject);
begin
if Datamodulo.TbCotacao.IsEmpty Then   //evita exclussão de registro
     Begin                                      // em uma Tabela Vazia.
       messagebeep($ffff);
       uteis.aviso('Não existe cotação a ser excluida!');
       exit;
     end;
if uteis.confirmacao ( 'Deseja excluir esta cotação?')= Mryes then
   begin
   Screen.cursor :=crHourglass;
   {deleta itens relacionados}
   while Datamodulo.TbCotaItemCOT_CODIGO.Value = Datamodulo.TbCotacaoCOT_CODIGO.Value do
     begin
     Datamodulo.TbCotaItem.Delete;
     Datamodulo.TbCotaItem.Refresh;
     end;

   Datamodulo.TbCotacao.Delete;
   Datamodulo.TbCotacao.Refresh;
   screen.cursor := crDefault;
   end;
   EdtCOT_CODIGO.text := Datamodulo.TbCotacaoCOT_CODIGO.Value;
   CalcTotal;
end;


procedure TFormCotacao.Bit_GravarClick(Sender: tObject);
begin
  if Datamodulo.TbFornec.FindKey([DbeFor_Codigo.Text])= False then
     begin //esse if não deixa gravar fornecedor inexistente;
     //beep;
     uteis.aviso('Fornecedor não cadastrado!');
     DblkCbFOR_CODIGO.DropDown;
     exit;
     end;
   if Datamodulo.TbCotacaoCOT_DATA.Isnull = True then
      begin
      uteis.aviso('Digite a data da cotação');
      DbeCot_Data.SetFocus;
      exit
      end;

//salva o registro
Datamodulo.TbCotacaoCOT_CODIGO.Value := EdtCOT_CODIGO.text;
//
Datamodulo.TbCotacao.post;
Datamodulo.TbCotacao.refresh;
{Desabilita alterações do fornecedor}
DbeFOR_CODIGO.Color := clSilver;
DbeFOR_CODIGO.Font.Color := clNavy;
DbeFOR_CODIGO.ReadOnly := True;
DblkCbFOR_CODIGO.Color := clSilver;
DblkCbFOR_CODIGO.Font.Color := clNavy;
DblkCbFOR_CODIGO.ReadOnly := True;
//
Habilitabotoes;
end;


procedure TFormCotacao.Bit_CancelarClick(Sender: tObject);
begin
//deleta itens relacionados já gravados antes de gravar a cotação
if Datamodulo.DsCotacao.State in [dsInsert] then
   while Datamodulo.TbCotaItemCOT_CODIGO.Value = Datamodulo.TbCotacaoCOT_CODIGO.Value do
     begin
     Datamodulo.TbCotaItem.Delete;
     Datamodulo.TbCotaItem.Refresh;
     end;

Datamodulo.TbCotacao.Cancel;
Datamodulo.TbCotacao.Refresh;
if Datamodulo.TbCotacao.IsEmpty Then   //Ao cancelar ultimo record da
     BEGIN                                      //tabela deixa autoedit=true;
       Datamodulo.DsCotacao.AutoEdit := False;
       EdtCOT_CODIGO.Enabled := False;
     end;
{Desabilita alterações do fornecedor}
DbeFOR_CODIGO.Color := clSilver;
DbeFOR_CODIGO.Font.Color := clNavy;
DbeFOR_CODIGO.ReadOnly := True;
DblkCbFOR_CODIGO.Color := clSilver;
DblkCbFOR_CODIGO.Font.Color := clNavy;
DblkCbFOR_CODIGO.ReadOnly := True;

{refazendo link desfeito pelo bit_novo}
DbeFOR_CONTATO.DataField := 'FOR_CONTATO';
DbeFOR_FONCONT.DataField := 'FOR_FONCONT';
DbeFOR_FAXCONT.DataField := 'FOR_FAXCONT';
//
HabilitaBotoes;
EdtCOT_CODIGO.Text := Datamodulo.TbCotacaoCOT_CODIGO.value;
Calctotal;
end;


procedure TFormCotacao.Bit_SairClick(Sender: tObject);
begin
   close;
end;


procedure TFormCotacao.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin   {Atualiza EdtCOT_CODIGO ao mudar de registro}
  EdtCOT_CODIGO.Text := Datamodulo.TbCotacaoCOT_CODIGO.Value;
  Calctotal;
end;


procedure TFormCotacao.EdtCOT_CODIGOExit(Sender: tObject);
begin
EdtCOT_CODIGO.Text := StrZero(EdtCOT_CODIGO.Text, EdtCOT_CODIGO.MaxLength);
if Datamodulo.TbCotacao.State in [Dsbrowse] then
   begin
   BuscaCodigo;//procedure local - faz busca da cotação
   end
else
   Datamodulo.TbCotacaoCOT_CODIGO.Value := EdtCOT_CODIGO.text;
CalcTotal;
end;


procedure TFormCotacao.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  Verificaedicao; //procedure local - grava ou cancela registro em aberto
  TbCotItemAux.Close;
  try
    Datamodulo.TbCotacao.Close;
  except
    uteis.erro  ('Não posso fechar Tabela "Cotação"');
  end;
  //
  try
    Datamodulo.TbProduto.close;
  except
    uteis.erro  ('Não posso fechar a tabela "Produto"!');
  end;
  //
  try
    Datamodulo.TbOrdCompra.Close;
  except
    uteis.erro  ('Não posso fechar Tabela "Ordem de Compra"');
  end;
  //
  try
    Datamodulo.TbOrdCompItem.Close;
  except
    uteis.erro  ('Não posso fechar Tabela "Itens da Ordem de Compra"');
  end;
  //
  try
    Datamodulo.TbFornec.Close;
  except
    uteis.erro  ('Não posso fechar Tabela de "Fornecedor"');
  end;
  //
  try
    Datamodulo.TbCotaItem.Close;
  except
    uteis.erro  ('Não posso fechar Tabela "Itens da Cotação".');
  end;
  //
  {desfaz relacionamento de tabelas}
  Datamodulo.TbCotaItem.MasterFields := '';
  Datamodulo.TbCotaItem.MasterSource := nil;
  {desfaz filtro do produto}
  Datamodulo.TbProduto.Filtered := False;
end;


procedure TFormCotacao.DbGridCotacaoColEnter(Sender: tObject);
begin
  if Datamodulo.TbCotaItem.State in [dsBrowse]then
     begin
     {foi preciso usar tabela auxiliar p/ grade não mostrar ultimo item da cotação
     anterior ao entrar na grade(fata de controle do objeto Dbgrid). Verifico se já
     exioste item p/ relacionamento, se não existe vou p/ ultimo registro
     que é limpo. Obs: Não posso dar findkey na tabela ligada a grade porque ela
     perde o controle de estado e fica dsBrowse}
     TbCotItemAux.Refresh; //- Atualizo antes da procura
     If TbCotItemAux.FindKey([EdtCOT_CODIGO.Text])=False then
        Datamodulo.TbCotaItem.Last;
     end;
//  Datamodulo.TbCotaItemCOT_CODIGO.Value := Datamodulo.TbCotacaoCOT_CODIGO.Value;
end;


procedure TFormCotacao.CalcTotal;
Var
 Bookmark : Tbookmark;
 WTotal_1, WVLIPI : Double; // [total], [IPI]
begin
  {Faz calculo dos totais }
   Bookmark := DataModulo.TbCotaItem.GetBookmark; // armazena posicao atual no marcador
   DataModulo.TbCotaItem.DisableControls;
   WTotal_1:= 0; WVLIPI:= 0;   //inicializando variaveis
   Try
     DataModulo.TbCotaItem.First;
     While not DataModulo.TbCotaItem.EOF do
       Begin {pega soma do valor de todos os itens e todo IPI}
         WTotal_1 := WTotal_1 + DataModulo.TbCotaItemCIT_TOTAL_CC.Value;
         WVLIPI := WVLIPI + ((Datamodulo.TbCotaItemCIT_TOTAL_CC.Value * Datamodulo.TbCotaItemCIT_IPI.Value)/100);;
         DataModulo.TbCotaItem.Next;
       end;
   Finally
     // destroe marcador
     DataModulo.TbCotaItem.GotoBookmark(Bookmark);
     DataModulo.TbCotaItem.FreeBookmark(Bookmark);
     DataModulo.TbCotaItem.EnableControls;
     if Datamodulo.TbCotacaoCOT_TOTAL.VAlue <> WTotal_1 then
        begin
        if not (Datamodulo.TbCotacao.State in [dsEdit,dsInsert])then
           begin {Atualiza o campo COT_TOTAL}
           Datamodulo.TbCotacao.Edit;
           Datamodulo.TbCotacaoCOT_TOTAL.VAlue := WTotal_1;
           Datamodulo.TbCotacao.Post;
           HabilitaBotoes;
           end;
        end;
       {formata as variáveis e joga para os edits}
     TotGeral.Text := Format('%n',[WTotal_1 + WVLIPI]);
     Total.Text    := Format('%n',[WTotal_1]);
     VL_IPI.Text   := Format('%n',[WVLIPI]);
   end;

end;


procedure TFormCotacao.DbeFor_CodigoExit(Sender: tObject);
begin
  if Datamodulo.DsCotacao.State in [dsEdit,dsInsert] then
     begin
     if not(DbeFor_Codigo.Text='')then
        Datamodulo.TbCotacaoFOR_CODIGO.Value := StrZero(DbeFor_Codigo.Text, DbeFor_Codigo.MaxLength);
     if Datamodulo.TbFornec.FindKey([DbeFor_Codigo.Text])= false then
        begin
        //beep;
        uteis.aviso('Fornecedor não cadastrado!');
        DblkCbFOR_CODIGO.DropDown;
        end
     else
        begin  //{religa dbeEdts com seus campos se fornecedos encontrado
        DbeFOR_CONTATO.DataField := 'FOR_CONTATO';
        DbeFOR_FONCONT.DataField := 'FOR_FONCONT';
        DbeFOR_FAXCONT.DataField := 'FOR_FAXCONT';
        end;
     end;
end;


procedure TFormCotacao.DbGridCotacaoColExit(Sender: tObject);
begin
  // verifica se a referencia do produto existe
  if DbGridCotacao.SelectedIndex = 0 then
     Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
     if not (Datamodulo.TbCotaItemPRD_REFER.Value = '')then
     if Datamodulo.TbProduto.FindKey([DataModulo.TbCotaItemPRD_REFER.Value])= False then
        begin
        //beep;
        uteis.erro  ('Produto não encontrado!');
        end;
     end;
  // calcular valores totais
  if (DbGridCotacao.SelectedIndex = 2)or(DbGridCotacao.SelectedIndex = 3)or(DbGridCotacao.SelectedIndex = 5)  then // if dbgrid.ultimacoluna then
     CalcTotal;    //procedure local
end;


procedure TFormCotacao.DbGridCotacaoExit(Sender: tObject);
begin
  CalcTotal; //procedure local
end;


procedure TFormCotacao.Bit_GeraOCClick(Sender: tObject);
var
WCodigo : Integer;
begin
  if DbeFor_Codigo.Text = ''then
     begin
     uteis.aviso('Escolha um Fornecedor!');
     DblkCbFOR_CODIGO.SetFocus;
     DblkCbFOR_CODIGO.DropDown;
     exit
     end;
  if DBCombCot_Frete.Text = ''then
     begin
     uteis.aviso('Selecione o Tipo de Frete!');
     DBCombCot_Frete.SetFocus;
     exit
     end;
  // avisar que a cotaçao já nao foi aprovada. Pode até já ter sido criado O.C.
  if Datamodulo.TbCotacaoCOT_STATUS.Value = 'S' then
     uteis.aviso('Cuidado! Cotação já foi aprovada, pode já ter sido feita a O.C.');

  if uteis.confirmacao ( 'Deseja abrir uma Ordem de Compra através desta Cotação?')= idYes then
     begin
     Datamodulo.TbOrdCompra.IndexName := 'XCOT_CODI_OCP';
     if Datamodulo.TbOrdCompra.FindKey([EdtCOT_CODIGO.Text])= True then
        begin
        //beep;
        uteis.aviso('Ordem de Compra já foi gerada!');
        Datamodulo.TbOrdCompra.IndexName := 'XOCP_CODI';
        exit; //abandona a procedure
        end;
     Screen.Cursor := crHourglass;
     Datamodulo.TbOrdCompra.IndexName := 'XOCP_CODI';
     Datamodulo.TbOrdCompra.Last;
     //*** GRAVAR Ordem de Compra  c/ dados da cotação
     if Datamodulo.TbOrdCompraOCP_CODIGO.IsNull = true Then  //tabela vazia
        Begin
        Datamodulo.TbOrdCompra.Insert;
        Datamodulo.TbOrdCompraOCP_CODIGO.Value := StrZero('1',5); //StrZero incrementa zeros
        End
     else
        Begin
        WCodigo := (StrToInt(Datamodulo.TbOrdCompraOCP_CODIGO.Value)) + 1;
        Datamodulo.TbOrdCompra.Insert;
        Datamodulo.TbOrdCompraOCP_CODIGO.Value := StrZero(IntToStr(WCodigo),5);
        end;
     With Datamodulo do
       begin
        TbOrdCompraCOT_CODIGO.Value    := TbCotacaoCOT_CODIGO.Value;
        TbOrdCompraFOR_CODIGO.Value    := TbCotacaoFOR_CODIGO.Value;
        TbOrdCompraOCP_DTEMIS.Value    := Date;
        TbOrdCompraOCP_DTMINIMA.Value  := TbCotacaoCOT_ENTREGA.Value;
        TbOrdCompraOCP_DTMAXIMA.Value  := TbCotacaoCOT_ENTREGA.Value;
        TbOrdCompraOCP_ICMS.Value      := TbCotacaoCOT_ICMS.Value;
        TbOrdCompraOCP_FRETE.Value     := TbCotacaoCOT_FRETE.Value;
        TbOrdCompraOCP_PRAZOPGTO.Value := TbCotacaoCOT_PRAZOPGTO.Value;
        TbOrdCompraOCP_DESCTO.Value    := TbCotacaoCOT_DESCTO.Value;
        TbOrdCompraOCP_TOTAL.VAlue     := TbCotacaoCOT_TOTAL.VAlue
       end;
     With Datamodulo do
       begin
       TbCotaItem.FindKey([TbCotacaoCOT_CODIGO.Value]);
       while (TbCotaItemCOT_CODIGO.Value = TbCotacaoCOT_CODIGO.Value)and not
       (TbCotaItem.EOF)and not(TbCotaItemPRD_REFER.isNull) do
         begin
         //*** GRAVAR itens da Ordem c/  dados dos itens da cotação
         TbOrdCompItem.Insert;
         TbOrdCompItemOCP_CODIGO.Value  := TbOrdCompraOCP_CODIGO.Value;
         TbOrdCompItemPRD_REFER.Value   := TbCotaItemPRD_REFER.Value;
         TbOrdCompItemOCI_QTDE.Value    := TbCotaItemCIT_QTDE.Value;
         TbOrdCompItemOCI_PRECO.Value   := TbCotaItemCIT_PRECO.Value;
         TbOrdCompItemOCI_IPI.Value     := TbCotaItemCIT_IPI.Value;
         TbOrdCompItemOCI_SITUACAO.Value:=  'P';
         TbOrdCompItemEMP_CODIGO.Value  := Datamodulo.TbCotacaoEMP_CODIGO.Value;
         TbOrdCompItem.Post;
         TbCotaItem.Next;
         end;
       TbOrdCompItem.Refresh;
       end;
     Datamodulo.TbOrdCompraEMP_CODIGO.Value := Datamodulo.TbCotacaoEMP_CODIGO.Value;
     Datamodulo.TbOrdCompra.Post;
     Datamodulo.TbOrdCompra.Refresh;
     //
     //Marca cotação como aprovada
     Datamodulo.TbCotacao.Edit;
     Datamodulo.TbCotacaoCOT_Status.value := 'S';
     Bit_Gravar.Click;
     //
     screen.cursor := crdefault;
     uteis.aviso('Ordem de compra gerada com sucesso!');
     FormOrdCompra.ShowModal;
     end;
end;


procedure TFormCotacao.Bit_ListaClick(Sender: tObject);
begin {cria formulario de Bronse}
  try
    try
      FormCotacaoGrid := TFormCotacaoGrid.Create(Application);
      FormCotacaoGrid.ShowModal;
    finally
      FormCotacaoGrid.Release;
      FormCotacaoGrid := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;


procedure TFormCotacao.DblkCbFOR_CODIGOClick(Sender: tObject);
begin
  {refazendo link desfeito pelo bit_novo}
  DbeFOR_CONTATO.DataField := 'FOR_CONTATO';
  DbeFOR_FONCONT.DataField := 'FOR_FONCONT';
  DbeFOR_FAXCONT.DataField := 'FOR_FAXCONT';
end;


procedure TFormCotacao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  //obriga a seleção de um fornecedor
  if Datamodulo.DsCotacao.State in [dsEdit,dsInsert] then
     if Datamodulo.TbFornec.FindKey([DbeFor_Codigo.Text])= false then
        begin
        //beep;
        uteis.aviso('Selecione um fornecedor!');
        DblkCbFOR_CODIGO.DropDown;
        CanClose := False;
        end
     else
        CanClose := True
  else
     CanClose := True;
end;

procedure TFormCotacao.DbGridCotacaoEnter(Sender: tObject);
begin
  DbGridCotacao.SelectedIndex := 0;
end;


procedure TFormCotacao.Bit_RelatorioClick(Sender: tObject);
begin
  Try
    Try
     RelCotacao01 := TRelCotacao01.Create (Application);
     RelCotacao01.Preview;
    finally
      RelCotacao01.Destroy;
      RelCotacao01:= nil;
    end;
  except
     //beep;
     uteis.erro  ('Ocorreu um erro na criação do Relatório!');
  end;
end;

procedure TFormCotacao.FiltroProdClick(Sender: tObject);
begin
 try
    try
      FormPrdFiltro := TFormPrdFiltro.Create(Application);
      FormPrdFiltro.Top := 0;
      FormPrdFiltro.Left:= 33;
      FormPrdFiltro.ShowModal;
    finally
      FormPrdFiltro.Destroy;
      FormPrdFiltro := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

end.

