unit PCX0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,  rxToolEdit,  rxCurrEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Grids, DBGrids, DBCtrls,
  SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, Menus,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Data.DBXFirebird, SimpleDS;

type
  TFrmProjetoObraNotaEntrada = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DbGradeNotaItem: TDBGrid;
    Label1: TLabel;
    EdQuantidade: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdPercentagem: TCurrencyEdit;
    DBGrid3: TDBGrid;
    Label4: TLabel;
    EdTotalLancado: TCurrencyEdit;
    Label5: TLabel;
    EdTotalPercentualLancado: TCurrencyEdit;
    Label6: TLabel;
    EdTotalProdutoItem: TCurrencyEdit;
    Label7: TLabel;
    Bit_Gravar: TBitBtn;
    EdProdutoItem: TEdit;
    BitPesquisar: TBitBtn;
    BitFechar: TBitBtn;
    BitReabrir: TBitBtn;
    BitSair: TBitBtn;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    SqlCdsNotaItem: TSQLClientDataSet;
    SqlCdsNotaItemENF_REGISTRO: TIntegerField;
    SqlCdsNotaItemPRD_REFER: TStringField;
    SqlCdsNotaItemPRD_DESCRI: TStringField;
    SqlCdsNotaItemENF_QTDE: TFMTBCdField;
    SqlCdsNotaItemENF_QTDE_LANCADO_PROJETO: TFMTBCdField;
    SqlCdsNotaItemENF_PRECO: TFMTBCdField;
    DsNotaItem: TDataSource;
    SqlCdsNotaFiscal: TSQLClientDataSet;
    GroupBox5: TGroupBox;
    DBGrid4: TDBGrid;
    SqlCdsNotaFiscalENF_NOTANUMBER: TStringField;
    SqlCdsNotaFiscalFOR_CODIGO: TStringField;
    SqlCdsNotaFiscalFOR_RAZAO: TStringField;
    SqlCdsNotaFiscalENF_FECHADO_PROJETO_OBRA: TStringField;
    SqlCdsNotaFiscalENF_EMISSAO: TDateField;
    SqlCdsNotaFiscalENF_ENTRADA: TDateField;
    SqlCdsNotaFiscalENF_TOT_PROD: TFMTBCdField;
    SqlCdsNotaFiscalENF_TOT_NOTA: TFMTBCdField;
    SqlCdsNotaFiscalENF_OBS_NOTA: TStringField;
    DsNotaFiscal: TDataSource;
    SqlCdsNotaItemCTotal: TFloatField;
    SqlCdsProjetoObra: TSQLClientDataSet;
    DsProjetoObra: TDataSource;
    SqlCdsNotaItemProjeto: TSQLClientDataSet;
    DsNotaItemProjeto: TDataSource;
    SqlCdsNotaItemProjetoPCX_CODIGO: TStringField;
    SqlCdsNotaItemProjetoPCX_DESCRI: TStringField;
    SqlCdsNotaItemProjetoENFPO_QTDE: TFMTBCdField;
    SqlCdsNotaItemProjetoENFPO_PERCENTUAL: TFMTBCdField;
    CbProjetoObra: TcxLookupComboBox;
    SqlCdsNotaItemProjetoENFPO_REGISTRO: TIntegerField;
    SqlCdsContasPagar: TSQLClientDataSet;
    SqlCdsContasPagarPCX_CODIGO: TStringField;
    SqlCdsContasPagarPCX_DESCRI: TStringField;
    SqlCdsContasPagarTOTAL: TFMTBCdField;
    DsContasPagar: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    SqlCdsNotaItemcFaltaLancar: TFloatField;
    LblSituacao: TLabel;
    Label18: TLabel;
    SqlCdsContasPagarPERCENTUAL: TFMTBCdField;
    SqlCdsNotaFiscalENF_REGISTRO: TIntegerField;
    PopupMenuItemProjeto: TPopupMenu;
    ExcluirItem1: TMenuItem;
    Label17: TLabel;
    CurTotalObraPercente: TCurrencyEdit;
    Label19: TLabel;
    CurTotalObraValor: TCurrencyEdit;
    procedure DsNotaFiscalDataChange(Sender: tObject; Field: TField);
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SqlCdsNotaItemCalcFields(DataSet: TDataSet);
    procedure DbGradeNotaItemDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DsNotaItemDataChange(Sender: tObject; Field: TField);
    procedure EdQuantidadeExit(Sender: tObject);
    procedure EdPercentagemExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DBGrid3KeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DsNotaItemProjetoDataChange(Sender: tObject; Field: TField);
    procedure DbGradeNotaItemDblClick(Sender: tObject);
    procedure DbGradeNotaItemKeyPress(Sender: tObject; var Key: Char);
    procedure BitFecharClick(Sender: tObject);
    procedure BitReabrirClick(Sender: tObject);
    procedure ExcluirItem1Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarNota(iRegistro:Integer);
    procedure BuscaNotaItemProjeto(iRegistro:Integer);
    procedure CalculaTotalLancadoItemNota;
    procedure CalculaTotalProjetoContasPagar;
    procedure RealizaLancamento;
    procedure AtualizaQuantidadeItemNotaFiscal(iRegistro:Integer;Incrementa:Boolean;rQuantidade:Real);
    procedure DeletarLancamento;
    procedure LimparCampos;
    procedure PreparaLancamento;
    procedure FecharAbrirNota(bFechar:Boolean);
    function LancadoTotalizade:Boolean;
    procedure RealizaRateioCentroCusto;
  public
    { Public declarations }
    iRegistroSelecionado:Integer;
  end;

var
  FrmProjetoObraNotaEntrada: TFrmProjetoObraNotaEntrada;

implementation

uses DataCad, RWFunc, Nfs0003, Men0001, uFinanceiroDao, uteis, iniciodb;

{$R *.dfm}

procedure TFrmProjetoObraNotaEntrada.BuscarNota(iRegistro: Integer);
var
   wSQL:String;
begin
   SqlCdsNotaFiscal.Close;
   wSQL := 'SELECT '+
           'T1.enf_registro,'+ 
           'T1.enf_notanumber, '+
           't1.for_codigo,'+
           't2.for_razao, '+
           't1.enf_fechado_projeto_obra, '+
           't1.enf_emissao, '+
           't1.enf_entrada, '+
           't1.enf_tot_prod, '+
           't1.enf_tot_nota, '+
           't1.enf_obs_nota '+
           'FROM '+
           'enf0001 T1 '+
           'left join for0000 t2 on (t2.for_codigo = t1.for_codigo) ';

   SqlCdsNotaFiscal.CommandText := SQLDEF('PRODUTOS',wSql,'WHERE T1.ENF_REGISTRO = '+IntToStr(iRegistro),'','T1.');
   SqlCdsNotaFiscal.Open;
end;

procedure TFrmProjetoObraNotaEntrada.DsNotaFiscalDataChange(
  Sender: tObject; Field: TField);
var
   wSQL:String;
begin
   SqlCdsNotaItem.Close;
   LblSituacao.Caption := '';
   if (not SqlCdsNotaFiscal.IsEmpty) then
      begin
         if (SqlCdsNotaFiscalENF_FECHADO_PROJETO_OBRA.AsString = 'S') then
            begin
               LblSituacao.Caption := 'FECHADO';
               LblSituacao.Font.Color := clRed;
               BitFechar.Enabled := False;
               BitReabrir.Enabled := True;
            end
         else
            begin
               LblSituacao.Caption := 'ABERTO';
               LblSituacao.Font.Color := clBlue;
               BitFechar.Enabled := True;
               BitReabrir.Enabled := False;
            end;
         wSQL := 'SELECT '+
                 'T1.enf_registro,'+
                 'T1.prd_refer,'+
                 'T1.prd_descri,'+
                 'T1.enf_qtde,'+
                 'T1.enf_qtde_lancado_projeto,'+
                 'T1.enf_preco '+
                 'FROM enf_it01 T1';
         SqlCdsNotaItem.CommandText := SQLDEF('PRODUTOS',wSql,'WHERE T1.enf_it_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' AND T1.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString),'','T1.');
         SqlCdsNotaItem.Open;
      end;
   //Lista o Contas a Pagar
   CalculaTotalProjetoContasPagar;
end;

procedure TFrmProjetoObraNotaEntrada.FormShow(Sender: tObject);
begin
   BuscarNota(-1);
   SqlCdsProjetoObra.Open;
end;

procedure TFrmProjetoObraNotaEntrada.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmProjetoObraNotaEntrada.BitPesquisarClick(Sender: tObject);
begin
   FormConsNFGrid := TFormConsNFGrid.Create(Application);
   FormConsNFGrid.BotoesAcesso;
   try
     FormConsNFGrid.FormStyle := fsNormal;
     FormConsNFGrid.Visible := false;
     FormConsNFGrid.FormStyle := fsNormal;
     FormConsNFGrid.Visible := false;
     FormConsNFGrid.ShowModal;
   finally
     FreeAndNil(FormConsNFGrid);
   end;
   BuscarNota(FrmMenu.iRegistroSelecionado);
end;

procedure TFrmProjetoObraNotaEntrada.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsNotaFiscal.Close;
   SqlCdsNotaItem.Close;
   SqlCdsProjetoObra.Close;
   SqlCdsNotaItemProjeto.Close;
   SqlCdsContasPagar.Close;
   Action := CaFree;
end;

procedure TFrmProjetoObraNotaEntrada.FormDestroy(Sender: TObject);
begin
     FrmProjetoObraNotaEntrada := Nil;
end;

procedure TFrmProjetoObraNotaEntrada.FormResize(Sender: TObject);
begin
     Height := 607;
     Width := 971;
end;

procedure TFrmProjetoObraNotaEntrada.SqlCdsNotaItemCalcFields(
  DataSet: TDataSet);
begin
   SqlCdsNotaItemCTotal.AsFloat := SqlCdsNotaItemENF_QTDE.AsFloat * SqlCdsNotaItemENF_PRECO.AsFloat;
   SqlCdsNotaItemcFaltaLancar.AsFloat := SqlCdsNotaItemENF_QTDE.AsFloat - SqlCdsNotaItemENF_QTDE_LANCADO_PROJETO.AsFloat;
end;

procedure TFrmProjetoObraNotaEntrada.DbGradeNotaItemDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsNotaItem.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeNotaItem.Canvas.Brush.Color := $00FFEFDF;
              DbGradeNotaItem.Canvas.FillRect(rect);
              DbGradeNotaItem.DefaultDrawDataCell(Rect,column.Field,state);
          end;
    if (not SqlCdsNotaItem.IsEmpty) then
      begin
         if (Column.Field.FieldName = 'cFaltaLancar') then
            begin
               if (SqlCdsNotaItemcFaltaLancar.AsFloat > 0)  then
                  begin
                     DbGradeNotaItem.Canvas.Font.Color:= clRed;
                     DbGradeNotaItem.Canvas.FillRect(Rect);
                     DbGradeNotaItem.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                  end
               else
                   begin
                     DbGradeNotaItem.Canvas.Font.Color:= clBlack;
                     DbGradeNotaItem.Canvas.FillRect(Rect);
                     DbGradeNotaItem.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                   end;
            end;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.DsNotaItemDataChange(Sender: tObject;
  Field: TField);
begin
   if (not SqlCdsNotaItem.IsEmpty) then
      begin
         EdProdutoItem.Text := SqlCdsNotaItemPRD_REFER.AsString + ' - ' + SqlCdsNotaItemPRD_DESCRI.AsString;
         EdTotalProdutoItem.Value := SqlCdsNotaItemENF_QTDE.AsFloat;
         BuscaNotaItemProjeto(SqlCdsNotaItemENF_REGISTRO.AsInteger);
      end
   else
      begin
         EdProdutoItem.Text := '';
         EdTotalProdutoItem.Value := 0;
         BuscaNotaItemProjeto(0);
      end;
   CalculaTotalLancadoItemNota
end;

procedure TFrmProjetoObraNotaEntrada.CalculaTotalLancadoItemNota;
begin
   EdTotalPercentualLancado.Value := 0;
   EdTotalLancado.Value := 0;
   if (not SqlCdsNotaItemProjeto.IsEmpty) then
      begin
         while (not SqlCdsNotaItemProjeto.Eof) do
            begin
               EdTotalLancado.Value := EdTotalLancado.Value + SqlCdsNotaItemProjetoENFPO_QTDE.AsFloat;
               EdTotalPercentualLancado.Value := EdTotalPercentualLancado.Value + SqlCdsNotaItemProjetoENFPO_PERCENTUAL.AsFloat;
               SqlCdsNotaItemProjeto.Next;
            end;
         SqlCdsNotaItemProjeto.First;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.EdQuantidadeExit(Sender: tObject);
begin
   if (EdQuantidade.Value > (EdTotalProdutoItem.Value - EdTotalLancado.Value)) then
      begin
         uteis.aviso('A Quantidade informada é superior a disponível para lançamento');
         EdQuantidade.Value := EdTotalProdutoItem.Value - EdTotalLancado.Value;
         EdPercentagemExit(Sender)
      end
   else
      begin
         EdPercentagem.Value := (EdQuantidade.Value * 100)/EdTotalProdutoItem.Value;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.EdPercentagemExit(Sender: tObject);
begin
   if (EdPercentagem.Value > (100 - EdTotalPercentualLancado.Value)) then
      begin
         uteis.aviso('O Percentual informada é superior a 100%');
         EdPercentagem.Value := 100 - EdTotalPercentualLancado.Value;
         EdQuantidadeExit(Sender);
      end
   else
      begin
         EdQuantidade.Value := EdTotalProdutoItem.Value * (EdPercentagem.Value/100);
      end;
end;

procedure TFrmProjetoObraNotaEntrada.BuscaNotaItemProjeto(
  iRegistro: Integer);
var
   wSQL: String;
begin
   wSQL := 'select '+
           't1.ENFPO_REGISTRO, '+
           't1.pcx_codigo, '+
           't2.pcx_descri, '+
           't1.enfpo_qtde, '+
           't1.enfpo_percentual '+
           'from '+
           'enf_it01_projeto_obra t1 '+
           'join pcx0000 t2 on (t2.pcx_codigo = t1.pcx_codigo)';
   SqlCdsNotaItemProjeto.Close;
   SqlCdsNotaItemProjeto.CommandText := SQLDEF('PRODUTOS',wSql,'WHERE t1.enf_registro = '+IntToStr(iRegistro),'','T1.');
   SqlCdsNotaItemProjeto.Open;
   CalculaTotalLancadoItemNota;
end;

procedure TFrmProjetoObraNotaEntrada.Bit_GravarClick(Sender: tObject);
begin
   RealizaLancamento;
end;

procedure TFrmProjetoObraNotaEntrada.RealizaLancamento;
begin
   if (SqlCdsNotaFiscal.IsEmpty) then
      begin
         uteis.aviso('Nenhuma Nota Fiscal Selecionada');
      end
   else
   if (CbProjetoObra.EditValue = Null) then
      begin
         uteis.aviso('Informe o Centro de Custo');
         CbProjetoObra.SetFocus;
      end
   else
   if (EdQuantidade.Value  <= 0) then
      begin
         uteis.aviso('Informe a Quantidade');
      end
   else
   if (RoundTo(EdQuantidade.Value, -2) > RoundTo((EdTotalProdutoItem.Value - EdTotalLancado.Value),-2)) then
      begin
         uteis.aviso('A Quantidade informada é superior a disponível para lançamento');
         EdQuantidade.Value := EdTotalProdutoItem.Value - EdTotalLancado.Value;
      end
   else
   if (SqlCdsNotaItemProjeto.Locate('PCX_CODIGO',CbProjetoObra.EditValue,[])) then
      begin
         uteis.aviso('Centro de Custo já informado para este item');
      end
   else
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='INSERT INTO ENF_IT01_PROJETO_OBRA (EMP_CODIGO,ENF_REGISTRO,PCX_CODIGO,ENFPO_QTDE,ENFPO_PERCENTUAL) VALUES ('+QuotedStr(PreenchezeroEsquerda(dbInicio.Empresa.EMP_CODIGO,3))+','+SqlCdsNotaItemENF_REGISTRO.AsString+','+QuotedStr(PreenchezeroEsquerda(CbProjetoObra.EditValue,3))+','+ValorAmericano(EdQuantidade.Text)+','+ValorAmericano(EdPercentagem.Text)+') ';
         DataCadastros.sqlUpdate.Execsql;

         AtualizaQuantidadeItemNotaFiscal(SqlCdsNotaItemENF_REGISTRO.AsInteger,TRUE,EdQuantidade.Value);

         LimparCampos;

         BuscaNotaItemProjeto(SqlCdsNotaItemENF_REGISTRO.AsInteger);

         SqlCdsNotaItem.Refresh;

         PreparaLancamento;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.AtualizaQuantidadeItemNotaFiscal(
  iRegistro: Integer; Incrementa: Boolean; rQuantidade: Real);
var
   sSql:String;
begin
   sSql := 'UPDATE enf_it01 SET enf_qtde_lancado_projeto = enf_qtde_lancado_projeto ';
   if (Incrementa) then
      begin
         sSql := sSql+ ' + ';
      end
   else
      begin
         sSql := sSql+ ' - ';
      end;
   sSql := sSql+ ValorAmericano(FloatToStr(rQuantidade))+ ' WHERE enf_registro = '+IntToStr(iRegistro) ;
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sSql;
   DataCadastros.sqlUpdate.Execsql;

   CalculaTotalProjetoContasPagar;
end;

procedure TFrmProjetoObraNotaEntrada.DBGrid3KeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_Delete) then
      begin
         DeletarLancamento;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.DeletarLancamento;
begin
   if (SqlCdsNotaItemProjeto.IsEmpty) then
      begin
         uteis.aviso('Não existe itens a serem excluídos');
      end
   else
   if (SqlCdsNotaFiscalENF_FECHADO_PROJETO_OBRA.AsString = 'S') then
      begin
         uteis.aviso('Nota Fiscal já fechada caso necessite realizar modificações reabra a nota fiscal.');
      end
   else
      begin
         if (uteis.confirmacao  ( 'Confirma a exclusão do Lançamento?')=mrYes) then
            begin

               AtualizaQuantidadeItemNotaFiscal(SqlCdsNotaItemENF_REGISTRO.AsInteger,False,SqlCdsNotaItemProjetoENFPO_QTDE.AsFloat);

               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='DELETE FROM ENF_IT01_PROJETO_OBRA WHERE ENFPO_REGISTRO = '+SqlCdsNotaItemProjetoENFPO_REGISTRO.AsString;
               DataCadastros.sqlUpdate.Execsql;


               SqlCdsNotaItem.Refresh;


            end;
      end;

end;

procedure TFrmProjetoObraNotaEntrada.LimparCampos;
begin
   CbProjetoObra.EditValue := Null;
   EdQuantidade.Value := 0;
   EdPercentagem.Value := 0;
end;

procedure TFrmProjetoObraNotaEntrada.CalculaTotalProjetoContasPagar;
var
   wSQL: String;
begin
   //Zera valores
   CurTotalObraPercente.Clear;
   CurTotalObraValor.Clear;

   SqlCdsContasPagar.Close;
   if (not SqlCdsNotaFiscal.IsEmpty) then
      begin
         wSQL := 'select '+
                 'T2.pcx_codigo, '+
                 'T3.pcx_descri, '+
                 'cast(((SUM(T2.enfpo_qtde) * 100)) / (SELECT SUM(T5.enf_qtde) FROM enf_it01 T5 WHERE T5.enf_it_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' AND T5.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString)+') as numeric(15,4)) as percentual, '+
                 'cast(((SELECT SUM(T6.enf_tot_nota) FROM enf0001 T6 where T6.enf_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' AND T6.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString)+') * (((SUM(   CAST(T2.enfpo_qtde AS NUMERIC(15,4))     )) / (SELECT SUM(T5.enf_qtde) FROM enf_it01 T5 WHERE T5.enf_it_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' AND T5.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString)+'))      )) as numeric(15,4)) AS TOTAL '+
                 'FROM ENF_IT01_PROJETO_OBRA T2 '+
                 'join enf_it01 t5 on (t5.enf_registro = t2.enf_registro) '+
                 'JOIN pcx0000 T3 ON (T3.pcx_codigo = T2.pcx_codigo)';
         SqlCdsContasPagar.Close;
         SqlCdsContasPagar.CommandText := SQLDEF('PRODUTOS',wSql,'WHERE T2.enf_registro in  (select t4.enf_registro from enf_it01 t4 where t4.enf_it_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' and t4.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString)+')','','T2.')+' group BY T2.pcx_codigo,T3.pcx_descri';
         SqlCdsContasPagar.Open;

         SqlCdsContasPagar.First;
         while (not SqlCdsContasPagar.Eof) do
            begin
               CurTotalObraPercente.Value := CurTotalObraPercente.Value + SqlCdsContasPagarPERCENTUAL.AsFloat;
               CurTotalObraValor.Value := (CurTotalObraValor.Value + SqlCdsContasPagarTOTAL.AsFloat) * 100;
               SqlCdsContasPagar.Next;
            end;
         SqlCdsContasPagar.First;
      end;


end;

procedure TFrmProjetoObraNotaEntrada.DsNotaItemProjetoDataChange(
  Sender: tObject; Field: TField);
begin
   CalculaTotalProjetoContasPagar;
end;

procedure TFrmProjetoObraNotaEntrada.PreparaLancamento;
begin
   if (not SqlCdsNotaItem.IsEmpty) then
      begin
         EdQuantidade.Value := SqlCdsNotaItemcFaltaLancar.AsFloat;
         EdPercentagem.Value := 100 - EdTotalPercentualLancado.Value;
         CbProjetoObra.SetFocus;
         CbProjetoObra.SelectAll;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.DbGradeNotaItemDblClick(
  Sender: tObject);
begin
   PreparaLancamento;
end;

procedure TFrmProjetoObraNotaEntrada.DbGradeNotaItemKeyPress(
  Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         PreparaLancamento;
      end;
end;

procedure TFrmProjetoObraNotaEntrada.FecharAbrirNota(bFechar: Boolean);
begin
   if (SqlCdsNotaFiscal.IsEmpty) then
      begin
         uteis.aviso('Nenhuma Nota Fiscal Selecionada');
      end
   else
   //Verifica se foi lançada na totalizade
   if (not LancadoTotalizade) then
      begin
         uteis.erro  ('Nota Fiscal não lançado totalmente e não pode ser fechado!');
      end
   else
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='update enf0001 t1 set t1.enf_fechado_projeto_obra = '+QuotedStr(iif(bFechar,'S','N'))+' where t1.Enf_registro = '+SqlCdsNotaFiscalENF_REGISTRO.AsString;
         DataCadastros.sqlUpdate.Execsql;
         //Lanca Rateio
         RealizaRateioCentroCusto;

         //Busca Nota Novamente 
         BuscarNota(FrmMenu.iRegistroSelecionado);
      end;
end;

procedure TFrmProjetoObraNotaEntrada.BitFecharClick(Sender: tObject);
begin
   FecharAbrirNota(True);
end;

procedure TFrmProjetoObraNotaEntrada.BitReabrirClick(Sender: tObject);
begin
   FecharAbrirNota(False);
end;

function TFrmProjetoObraNotaEntrada.LancadoTotalizade: Boolean;
begin
   if (SqlCdsNotaFiscal.IsEmpty) then
      begin
         uteis.aviso('Nenhuma nota fiscal selecionada');
         Result := False;
      end
   else
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT ROUND(SUM(T1.enf_qtde - T1.enf_qtde_lancado_projeto), 2) as total FROM enf_it01 T1  WHERE T1.enf_it_notanumber = '+QuotedStr(SqlCdsNotaFiscalENF_NOTANUMBER.AsString)+' AND T1.for_codigo = '+QuotedStr(SqlCdsNotaFiscalFOR_CODIGO.AsString)+'';
         DataCadastros.sqlUpdate.Open;
         if (DataCadastros.sqlUpdate.IsEmpty) then
            begin
               Result := False;
            end
         else
            begin
               if (DataCadastros.sqlUpdate.FieldByName('total').AsFloat <> 0) then
                  Result := False
               else
                  Result := True;
            end;
         DataCadastros.sqlUpdate.Close;
      end;

end;

procedure TFrmProjetoObraNotaEntrada.ExcluirItem1Click(Sender: tObject);
begin
   DeletarLancamento;
end;

procedure TFrmProjetoObraNotaEntrada.RealizaRateioCentroCusto;
var
   sNivel,sReferencia,sTipoLancamento,sPcx_codigo:String;
   qtdeNivel,posicaoUltimoPonto,I:Integer;
   sQuery:WideString;

begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','SELECT * FROM PAG_PC01 T1 ','where t1.PAG_NUMDOC = '''+SqlCdsNotaFiscalENF_NOTANUMBER.AsString+''' and t1.FOR_CODIGO = '''+SqlCdsNotaFiscalFOR_CODIGO.AsString+'''','','');
   DataCadastros.sqlUpdate.Open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         if (LblSituacao.Caption = 'ABERTO') then
            begin

               DataCadastros.sqlUpdate.First;
               while (not DataCadastros.sqlUpdate.Eof) do
                  begin
                     //
                     LimpaRateioCentroCusto(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString,'P');
                     if (not SqlCdsContasPagar.IsEmpty) then
                        begin
                           SqlCdsContasPagar.First;
                           while (not SqlCdsContasPagar.Eof) do
                              begin
                                 if (SqlCdsContasPagarPCX_CODIGO.AsString <> '') then
                                    begin
                                       //fernando implementar 061294



                                       dataCadastros.sqlUpdate2.Close;
                                       dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_CODIGO = '+QuotedStr(SqlCdsContasPagarPCX_CODIGO.AsString);
                                       dataCadastros.sqlUpdate2.Open;
                                       sNivel := dataCadastros.sqlUpdate2.FieldByName('PCX_NIVEL').AsString;
                                       sReferencia := '';
                                       qtdeNivel := 1;
                                       posicaoUltimoPonto := 0;
                                       for I := 1 to Length(sNivel) do
                                          begin
                                             if (sNivel[I] = '.') then
                                                begin
                                                   Inc(qtdeNivel);
                                                   posicaoUltimoPonto := I;
                                                end;
                                          end;

                                       for I := 1 to qtdeNivel do
                                          begin
                                                dataCadastros.sqlUpdate2.Close;
                                                if (I < 4) then
                                                   dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)))
                                                else
                                                   dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)+1));
                                                dataCadastros.sqlUpdate2.Open;

                                                sPcx_codigo := dataCadastros.sqlUpdate2.FieldByName('PCX_CODIGO').AsString;


                                                sTipoLancamento := 'L';
                                                if (I <> qtdeNivel) then
                                                   begin
                                                      sTipoLancamento := 'T';
                                                   end;

                                                sQuery := 'INSERT INTO FIN_RATEIO '+
                                                       '('+
                                                       'EMP_CODIGO,'+//
                                                       'FIR_REGISTRO_CP_CR,'+
                                                       'FIR_REGISTRO_TIPO,'+//
                                                       'FIR_INDICE,'+//
                                                       'FIR_INDICE_REAL,'+//
                                                       'FIR_TIPO,'+//
                                                       'PCX_CODIGO'+//
                                                       ')'+
                                                       'VALUES'+
                                                       '('+
                                                       QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                                       QuotedStr(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString)+','+
                                                       QuotedStr('P')+','+
                                                       QuotedStr(ValorAmericano(FloatToStr(SqlCdsContasPagarPERCENTUAL.AsFloat)))+','+
                                                       QuotedStr(ValorAmericano(FloatToStr(SqlCdsContasPagarPERCENTUAL.AsFloat/100)))+','+
                                                       QuotedStr(sTipoLancamento)+','+
                                                       QuotedStr(PreenchezeroEsquerda(sPcx_codigo,3) )+
                                                       ')';

                                                dataCadastros.sqlUpdate2.Close;
                                                dataCadastros.sqlUpdate2.sql.text := sQuery;
                                                dataCadastros.sqlUpdate2.ExecSql;
                                                dataCadastros.sqlUpdate2.Close;
                                                //Atualiza Perfil Rateio
                                                dataCadastros.sqlUpdate2.Close;
                                                dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PAG_REGISTRO = '+QuotedStr(DataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString);
                                                dataCadastros.sqlUpdate2.ExecSql;
                                          end;
                                    end;
                                 SqlCdsContasPagar.Next;
                              end;

                        end;
                     DataCadastros.sqlUpdate.Next;
                  end;
            end;
      end;
end;

end.
