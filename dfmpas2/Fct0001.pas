{************************************************************
 Programa...: FCT0001  - Nome formulario = FormFichaCusto
 Objetivo...: Ficha  de Custo do Produto
 Analista...: Márcio Neu Pacheco
 Programador: Jackson Neu Pacheco

 Comentários: Ë a propra ficha técnica somente na Variação 1,
              pode ser feita antes ou depois da F.Tec.

 Criação..........: 02/00
 Ultima Alteração.: 08/00
 Alterado por.....: Márcio Pacheco

*************************************************************}
unit Fct0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFormFichaCusto = class(TForm)
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    EdtPRD_REFER: TEdit;
    Panel2: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    DbeFTP_TUP: TDBEdit;
    DbGridFichaCustoItem: TDBGrid;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    DsProdutoAux: TDataSource;
    TbProdutoAux: TTable;
    TbProduto: TTable;
    DsProduto: TDataSource;
    DsFichaCusto: TDataSource;
    TbFichaCusto: TTable;
    DsFichaCustoItem: TDataSource;
    TbFichaCustoItem: TTable;
    TbFichaCustoItemPRD_REFER: TStringField;
    TbFichaCustoItemFTI_UC: TFloatField;
    TbProdutoPRD_DESCRI: TStringField;
    TbProdutoPRD_REFER: TStringField;
    TbProdutoAuxPRD_DESCRI: TStringField;
    TbProdutoAuxPRD_REFER: TStringField;
    TbFichaCustoPRD_REFER: TStringField;
    TbFichaCustoFTC_TUP: TFloatField;
    TbFichaCustoEMP_CODIGO: TStringField;
    TbFichaCustoItemFTI_MODE1: TStringField;
    TbFichaCustoItemPRD_DESCRI_Lk: TStringField;
    TbFichaCustoItemPRD_REFER_ITENS: TStringField;
    TbFichaCustoPRD_DESCRI_Lk: TStringField;
    Edt_Descricao: TEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPRD_REFERExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure DbeFTP_TUPExit(Sender: tObject);
    procedure DbGridFichaCustoItemColEnter(Sender: tObject);
    procedure DbGridFichaCustoItemColExit(Sender: tObject);
    procedure TbFichaCustoItemBeforePost(DataSet: TDataSet);
    procedure TbFichaCustoItemBeforeScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure TbFichaCustoBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFichaCusto: TFormFichaCusto;
  wAux : String[11];
implementation

uses Database, Fct0002;



{$R *.DFM}





procedure TFormFichaCusto.FormShow(Sender: tObject);
begin
  Left := 2;
  Top := 3;
  Screen.Cursor := crHourGlass;
  try
    TbFichaCusto.IndexName := 'XPRD_REFER_FTC';
    TbFichaCusto.open;
  except
    uteis.erro  ('Ocorreu um erro na abertura da tabela "FTC0000"!');
  end;
  try
    {ordem da Combo}
    TbProduto.IndexName := 'XPRD_REFE';
    TbProduto.Open;
  except
    uteis.erro  ('Ocorreu um erro na abertura da tabela "PRD0000"!');
  end;
  try
    {ordem da Combo}
    TbProdutoAux.IndexName := 'XPRD_REFE';
    TbProdutoAux.Open;
  except
    uteis.erro  ('Ocorreu um erro na abertura da tabela "TbProdutoAux!');
  end;
  try
    TbFichaCustoItem.IndexName := 'XPRD_REFE_FTI';
    TbFichaCustoItem.Open;
  except
    uteis.erro  ('Ocorreu um erro na abertura da tabela "TbFichaCusto"!');
  end;
  {não insere item sem ficha de custo }
  if TbFichaCusto.IsEmpty then
     DbGridFichaCustoItem.Enabled := False;
  {Atualiza visual}
  EdtPRD_REFER.Text := TbFichaCustoPRD_REFER.Value;
  Edt_Descricao.Text := TbProdutoPRD_DESCRI.Value;
  // Atualizar FILTRO Itens
  With TbFichaCustoItem do
    begin
    Filtered := False;
    Filter := 'PRD_REFER = '''+EdtPRD_REFER.Text+'''';
    Filtered := True;
    end;

  Screen.Cursor := crDefault;
end;


procedure TFormFichaCusto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  try
    TbFichaCusto.Close;
  except
    uteis.erro  ('Ocorreu um erro ao fechar a tabela "FTC0000".');
  end;
  try
    TbProduto.Close;
  except
    uteis.erro  ('Ocorreu um erro ao fechar a tabela "PRD0000".');
  end;
  try
    TbProdutoAux.Close;
  except
    uteis.erro  ('Ocorreu um erro ao fechar a tabela "TbProdutoAux".');
  end;
  try
    TbFichaCustoItem.close;
  except
    uteis.erro  ('Ocorreu um erro ao fechar a tabela "TbFichaCusto"!');
  end;
end;


procedure TFormFichaCusto.EdtPRD_REFERExit(Sender: tObject);
begin
  //verifica se ficha já existe TbFichaTecnica
  if TbFichaCusto.FindKey([EdtPRD_REFER.text]) then
     begin
     Edt_Descricao.Text := TbProdutoPRD_DESCRI.Value;
     end
  else
     begin  //se não exite busca na TbProduto
     if TbProduto.FindKey([EdtPRD_REFER.text])then
        Begin
        Edt_Descricao.Text := TbProdutoPRD_DESCRI.Value;
        TbFichaCusto.Insert;
        TbFichaCustoPRD_REFER.Value := EdtPRD_REFER.text;
        if uteis.confirmacao ( 'Ficha de Custo não existe.'+#13+'Deseja cria-la?')=mrYes then
           begin
           DbGridFichaCustoItem.Enabled := True;
           DbeFTP_TUP.SetFocus;
            // Atualizar FILTRO Itens
           With TbFichaCustoItem do
            begin
            Filtered := False;
            Filter := 'PRD_REFER = '''+EdtPRD_REFER.Text+'''';
            Filtered := True;
            end;
           end
        else
           Bit_Cancelar.Click;
        end
     else
        begin
        uteis.aviso('Referência não existe.');
        end;
     end;
end;


procedure TFormFichaCusto.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
 screen.Cursor := CrHourglass;
//Atualiza visual
  EdtPRD_REFER.Text := TbFichaCustoPRD_REFER.Value;
  TbProduto.FindKey([EdtPRD_REFER.text]);
  Edt_Descricao.Text := TbProdutoPRD_DESCRI.Value;
   // Atualizar FILTRO Itens
  With TbFichaCustoItem do
    begin
    Filtered := False;
    Filter := 'PRD_REFER = '''+EdtPRD_REFER.Text+'''';
    Filtered := True;
    end;
 screen.Cursor := CrDefault;
end;

procedure TFormFichaCusto.HabilitaBotoes;
begin
  Bit_Excluir.Enabled := True;
  Bit_Sair.Visible := True;
  Bit_Lista.Enabled := True;
  Bit_Relatorio.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Visible := False;
  EdtPRD_REFER.Enabled := True;
  EdtPRD_REFER.Color := clWindow;
  DbNavigator1.Enabled := True;
end;


procedure TFormFichaCusto.DesabilitaBotoes;
begin
  Bit_Excluir.Enabled := False;
  Bit_Sair.Visible := False;
  Bit_Lista.Enabled := False;
  Bit_Relatorio.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Visible := True;
  EdtPRD_REFER.Enabled := False;
  EdtPRD_REFER.Color := clSilver;
  DbNavigator1.Enabled := False;
end;
procedure TFormFichaCusto.Bit_GravarClick(Sender: tObject);
begin
  {Se em edição já está gravado}
  if TbFichaCusto.State in [dsInsert] then
     begin
     HabilitaBotoes;
     TbFichaCusto.Post;
     end;
end;


procedure TFormFichaCusto.Bit_CancelarClick(Sender: tObject);
begin
  HabilitaBotoes;        {Obs: Bit_cacelar so está ativo p/ insersão}
  //Deleta Itens
  if not TbFichaCustoItem.IsEmpty then
     begin
     TbFichaCustoItem.First;
     while (TbFichaCustoItemPRD_REFER.Value = TbFichaCustoPRD_REFER.Value) do
       TbFichaCustoItem.Delete;
     end;
  TbFichaCusto.Cancel;
  TbFichaCusto.Refresh;
  {não insire item sem ficha de custo }
  if TbFichaCusto.IsEmpty then
     DbGridFichaCustoItem.Enabled := False;
  //Atualiza visual
  EdtPRD_REFER.Text := TbFichaCustoPRD_REFER.Value;
end;

procedure TFormFichaCusto.Bit_ExcluirClick(Sender: tObject);
begin
  if not TbFichaCusto.isEmpty then
     if uteis.confirmacao ( 'Deseja excluir essa Ficha de Custo?')=MrYes  then
        if uteis.confirmacao ( 'A ficha "técnica" do produto também será excluida. Confirma a exclusão?')=MrYes  then
           begin
           //deleta itens
           if not TbFichaCustoItem.IsEmpty then
              begin
              TbFichaCustoItem.First;
              while (TbFichaCustoItemPRD_REFER.Value = TbFichaCustoPRD_REFER.Value)and not(TbFichaCustoItem.Eof) do
                TbFichaCustoItem.Delete;
              end;
           TbFichaCusto.Delete;
           {não insire item sem ficha de custo }
           if TbFichaCusto.IsEmpty then
              DbGridFichaCustoItem.Enabled := False;
           //Atualiza visual
           EdtPRD_REFER.Text := TbFichaCustoPRD_REFER.Value;
           end;
end;

procedure TFormFichaCusto.DbeFTP_TUPExit(Sender: tObject);
begin                       //Obs: Como bit_cancel so aparece p/ insersão
  if TbFichaCusto.State in [dsEdit] then //a TbFicha Custo é gravada sempre
    TbFichaCusto.Post;                   //que o Campo FTP_TUP é mudado
end;

procedure TFormFichaCusto.DbGridFichaCustoItemColExit(Sender: tObject);
begin
  {busca da referência dos itens}
  If (DbGridFichaCustoItem.SelectedIndex = 0)Then
     begin
     TbProduto.IndexName := 'XPRD_REFE';
     if TbFichaCustoItemPRD_REFER_ITENS.Value <> ''then
        if TbProduto.FindKey([TbFichaCustoItemPRD_REFER_ITENS.Value])=false then
           begin
           DbGridFichaCustoItem.SelectedIndex := 0;
           uteis.aviso('Produto não encontrado!');
           end;
     end;
end;

procedure TFormFichaCusto.TbFichaCustoItemBeforePost(DataSet: TDataSet);
begin
  TbFichaCustoItemFTI_MODE1.Value := 'X';
end;


procedure TFormFichaCusto.DbGridFichaCustoItemColEnter(Sender: tObject);
begin
  {impedir entrar com unidade de consumo antes do produto, esta rotina evita
  erros: "at beginning of table" e "at end of table"}
  If (DbGridFichaCustoItem.SelectedIndex = 2)and((TbFichaCustoItemPRD_REFER_ITENS.IsNull)or(TbFichaCustoItemPRD_REFER_ITENS.Value = ''))then
     begin
     uteis.aviso('Entre com o produto!');
     { deleta já que não tem produto}
     wAux := 'JA DELETADO';
     if TbFichaCustoItem.State in [dsEdit] then
        TbFichaCustoItem.Delete
     else
        TbFichaCustoItem.Cancel;
     wAux := '';
     DbGridFichaCustoItem.SelectedIndex := 0;
     end;
end;

procedure TFormFichaCusto.TbFichaCustoItemBeforeScroll(DataSet: TDataSet);
begin
  {impedir entrar com unidade de consumo antes do produto, esta rotina evita
  erros: "at beginning of table" e "at end of table"}
  if FormFichaCusto.ActiveControl = DbGridFichaCustoItem then
     Begin
     if (wAux = 'JA DELETADO')or((TbFichaCustoItem.State in [dsBrowse])and(TbFichaCustoItem.isEmpty)) then
        begin
        DbGridFichaCustoItem.SelectedIndex := 0;
        if TbFichaCustoItem.RecordCount = 0 then
           wAux := '';
        exit;
        end;
     If (TbFichaCustoItemPRD_REFER_ITENS.IsNull)or(TbFichaCustoItemPRD_REFER_ITENS.Value = '')then
        if not (TbFichaCustoItem.isEmpty)or((TbFichaCustoItem.State in [dsEdit])and(TbFichaCustoItem.RecordCount = 1))  then
           begin
           {Deleta ja que não tem produto}
           wAux := 'JA DELETADO';
           if not TbFichaCustoItem.IsEmpty then
              TbFichaCustoItem.Delete;
           end;
     end;
  wAux := '';
end;


procedure TFormFichaCusto.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  if TbFichaCusto.State in[dsInsert] then
     begin
     if uteis.confirmacao ( 'Deseja salvar a ficha de custo')=mrYes then
        begin
        HabilitaBotoes;
        TbFichaCusto.Post;
        end
     else
        begin
        bit_cancelar.Click;   //Obs: Como bit_cancel so aparece p/ insersão
        end;                  //a TbFicha Custo é gravada sempre que
     CanClose := False;       //o Campo FTP_TUP é mudado
     end
   else if TbFichaCusto.State in[dsEdit] then
     TbFichaCusto.Post;
end;

procedure TFormFichaCusto.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormFichaCusto.Bit_ListaClick(Sender: tObject);
begin
  try
    try
      FormFCustoGrid := TFormFCustoGrid.Create(Application);
      FormFCustoGrid.ShowModal;
    finally
      FormFCustoGrid.Destroy;
      FormFCustoGrid := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormFichaCusto.TbFichaCustoBeforeEdit(DataSet: TDataSet);
begin
 DesabilitaBotoes;
end;

end.
