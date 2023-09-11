{***********************************************************
| Programa...: Prd0008  - Nome formulario = FormPrdManut   
| Objetivo...: Manut. e historico de movimento do estoque  
| Analista...: Marcio Neu Pacheco                          
| Programador:  Márcio
|                                                          
| Comentários: no caso de prod.acabados até 6 variacoes de estoque
|              do mesmo item
|
| Criação..........: Abr/99

|
| Migração ............ Julho/2003
| Feito por ........... Rodrigo Ramos
|
| Conversão p/Interbase. Janeiro/2004
| Feito por............. JEFFERSON

  Ultima Alteração.: Fev/2010
| Alterado por.....: Márcio
***********************************************************}
{ Informações :
Tabela de movimento :
-----------|------------------|--------------
ORIGEM     |       TIPO       |   QUEM Fez
-----------|------------------|---------------
FAT.VENDA  |  SAIDA           |  NF/FATURA
FAT.COMPRA |         ENTRADA  |  COMPRA
MANUAL     |  SAIDA  ENTRADA  |  MANUAL
PRODUÇÃO   |         ENTRADA  |  PRODUÇÃO
O.S.       |  SAIDA           |  O.S.
---------------------------------------------}
unit Prd0008;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS;

type
  TFormPrdManut = class(TForm)
    Panel2: TPanel;
    Bit_Sair: TBitBtn;
    Panel5: TPanel;
    Bit_Estorno: TBitBtn;
    Bit_Saida: TBitBtn;
    Bit_Entrada: TBitBtn;
    GrpPosicaoEstoque: TGroupBox;
    Panel6: TPanel;
    Bit_Relatorio: TBitBtn;
    SqlCdsProduto: TSQLClientDataSet;
    DsProduto: TDataSource;
    SqlCdsParametros: TSQLClientDataSet;
    SqlCdsParametrosEMP_CODIGO: TStringField;
    SqlCdsParametrosPMT_VARIACOES: TStringField;
    SqlCdsProdutoPRD_FISICO_CC: TCurrencyField;
    SqlCdsProdutoPRD_ANTECIPADO_CC: TCurrencyField;
    SqlCdsPrdManut: TSQLClientDataSet;
    DsPrdManut: TDataSource;
    SqlCdsPrdManutPRD_REFER: TStringField;
    SqlCdsPrdManutPES_TIPO: TStringField;
    SqlCdsPrdManutPES_QTDE: TFMTBCdField;
    SqlCdsPrdManutPES_NUMDOC: TStringField;
    SqlCdsPrdManutPES_TIPDOC: TStringField;
    SqlCdsPrdManutPES_DATA: TSQLTimeStampField;
    SqlCdsPrdManutEMP_CODIGO: TStringField;
    SqlCdsPrdManutPES_ORIGEM: TStringField;
    SqlCdsPrdManutPES_VALOR: TFMTBCdField;
    SqlCdsPrdManutPES_VAR1: TFMTBCdField;
    SqlCdsPrdManutPES_VAR2: TFMTBCdField;
    SqlCdsPrdManutPES_VAR3: TFMTBCdField;
    SqlCdsPrdManutPES_VAR4: TFMTBCdField;
    SqlCdsPrdManutPES_VAR5: TFMTBCdField;
    SqlCdsPrdManutPES_VAR6: TFMTBCdField;
    SqlCdsPrdManutPES_VAR7: TFMTBCdField;
    SqlCdsPrdManutPES_VAR8: TFMTBCdField;
    SqlCdsPrdManutPES_REGISTRO: TIntegerField;
    SqlCdsProdutoPTI_CODIGO: TStringField;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_ESTOQUE: TFMTBCdField;
    SqlCdsProdutoPRD_PCUSTO: TFMTBCdField;
    SqlCdsProdutoPRD_ENTRADA: TFMTBCdField;
    SqlCdsProdutoPRD_SAIDA: TFMTBCdField;
    SqlCdsProdutoPRD_PENDENTE: TFMTBCdField;
    SqlCdsProdutoPRD_DCVAR1: TStringField;
    SqlCdsProdutoPRD_DCVAR2: TStringField;
    SqlCdsProdutoPRD_DCVAR3: TStringField;
    SqlCdsProdutoPRD_DCVAR4: TStringField;
    SqlCdsProdutoPRD_DCVAR5: TStringField;
    SqlCdsProdutoPRD_DCVAR6: TStringField;
    SqlCdsProdutoPRD_DCVAR7: TStringField;
    SqlCdsProdutoPRD_DCVAR8: TStringField;
    SqlCdsProdutoPRD_VAR1: TFMTBCdField;
    SqlCdsProdutoPRD_VAR2: TFMTBCdField;
    SqlCdsProdutoPRD_VAR3: TFMTBCdField;
    SqlCdsProdutoPRD_VAR4: TFMTBCdField;
    SqlCdsProdutoPRD_VAR5: TFMTBCdField;
    SqlCdsProdutoPRD_VAR6: TFMTBCdField;
    SqlCdsProdutoPRD_VAR7: TFMTBCdField;
    SqlCdsProdutoPRD_VAR8: TFMTBCdField;
    SqlCdsProdutoEMP_CODIGO: TStringField;
    SqlCdsTipos: TSQLClientDataSet;
    SqlCdsTiposPTI_CODIGO: TStringField;
    SqlCdsTiposPTI_DESCRI: TStringField;
    SqlCdsTiposEMP_CODIGO: TStringField;
    SqlCdsPrdManutAMX_CODIGO: TStringField;
    SqlCdsPrdManutFOR_CODIGO: TStringField;
    SqlCdsPrdManutAMX_DESCRI: TStringField;
    SqlCdsPrdManutPES_IPI: TFMTBCdField;
    SqlCdsPrdManutPES_TIPO_CA: TStringField;
    SqlCdsPrdManutPES_IPI_CC: TCurrencyField;
    SqlCdsProdutoPRD_UND: TStringField;
    GrpProduto: TGroupBox;
    DBGridProduto: TDBGrid;
    GrpKardex: TGroupBox;
    DbGrdManut: TDBGrid;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Cbx_Tipo: TComboBox;
    Pan_Variacao: TPanel;
    DBEdit2: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    Pan_Saldo: TPanel;
    Lbl_Refer: TLabel;
    Grp_Filtra: TGroupBox;
    Edt_Refer: TEdit;
    GroupBox2: TGroupBox;
    Rad_Refer: TRadioButton;
    Rad_Descricao: TRadioButton;
    SqlCdsProdutoPRD_RESERVA: TFMTBCdField;
    SqlCdsProdutoPRD_EMPENHO: TFMTBCdField;
    SqlCdsProdutoPRD_SAIDA_CC: TCurrencyField;
    SqlCdsPrdManutPES_FLAG_ACERTO: TStringField;
    SqlCdsPrdManutPES_FLAG_CONTA: TStringField;
    SqlCdsPrdManutPES_HORA: TTimeField;
    SqlCdsPrdManutCONTA_CC: TStringField;
    SqlCdsPrdManutPES_KARDEX_TIPO: TStringField;
    SqlCdsPrdManutKARDEX_TIPO: TStringField;
    LBL_DESCRI: TLabel;
    SqlCdsPrdManutPED_CODIGO: TStringField;
    PanObs: TPanel;
    GroupBox1: TGroupBox;
    DBEdit9x: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel3: TPanel;
    Label5: TLabel;
    DBEdit56: TDBEdit;
    Panel4: TPanel;
    Label7: TLabel;
    DBEdit14: TDBEdit;
    Panel9: TPanel;
    Label8: TLabel;
    DBEdit18: TDBEdit;
    Panel11: TPanel;
    Label9: TLabel;
    DBEdit19: TDBEdit;
    Panel12: TPanel;
    Panel10: TPanel;
    DBEdit17: TDBEdit;
    Label6: TLabel;
    SqlCdsPrdManutPRD_FISICO_CC: TBCdField;
    SqlCdsPrdManutPES_CUSTO_AGREGADO: TFMTBCdField;
    SqlCdsPrdManutPES_COMCREDITO: TFMTBCdField;
    SqlCdsPrdManutPES_KARDEX_OBS: TStringField;
    SqlCdsPrdManutUSU_CODIGO: TIntegerField;
    SqlCdsPrdManutUSU_LOGIN: TStringField;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label2: TLabel;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_PMEDIO: TFMTBCdField;
    procedure Bit_EntradaClick(Sender: tObject);
    procedure Bit_SaidaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_EstornoClick(Sender: tObject);
    procedure SqlCdsProdutoCalcFields(DataSet: TDataSet);
    procedure DbGrdManutCellClick(Column: TColumn);
    procedure Cbx_TipoClick(Sender: tObject);
    procedure SqlCdsTiposAfterScroll(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure SqlCdsPrdManutCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure MudaCorCampos(Sender: tObject);
    procedure DbGrdManutTitleClick(Column: TColumn);
    procedure SqlCdsProdutoAfterScroll(DataSet: TDataSet);
    procedure Edt_ReferExit(Sender: tObject);
    procedure Rad_ReferClick(Sender: tObject);
    procedure Edt_ReferEnter(Sender: tObject);
    procedure DbGrdManutDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: tObject);

    {procedure HabilitaBotoes;
    procedure verificaEdicao;}
  private
         wVariacoes :boolean;
    {campos}
    CampoEdit    :TEdit;
    CampoCombo   :TComboBox;
    CampoDBEdit  :TDBEdit;
    wCodReferencia : String;
    procedure LayOutPesquisa;
  public
    { Public declarations }
    wVariacao : String[1];
    procedure BuscaTipo;
  end;

var
  FormPrdManut: TFormPrdManut;
  QuantE, QuantS : Currency;
  ProdutoAtual, ProximoProduto : String;  

implementation

{$R *.DFM}


uses Uteis, Prd0009, DataCad, DataCad1, GimpManutMov, Men0001, iniciodb;





procedure TFormPrdManut.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TComboBox}
   if Assigned(CampoCombo) then
      begin
         CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         if TComboBox(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo := nil;
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
  {CampoDBEdit :TDBEdit}
   if Assigned(CampoDBEdit) then
      begin
         CampoDBEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDBEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDBEdit := nil;
      end;
end;

procedure TFormPrdManut.Bit_EntradaClick(Sender: tObject);
begin
    try
      try
        FormEntraSai := TFormEntraSai.Create(Application);
        FormEntraSai.Caption := 'Estoque - [Entrada]';
        FormEntraSai.Grp_Movimento.Caption := 'Referência : '+SqlCdsProdutoPRD_REFER.AsString+' - '+SqlCdsProdutoPRD_DESCRI.AsString;
        FormEntraSai.DbePES_VALOR.Color    := clWindow;
        FormEntraSai.DbePES_VALOR.ReadOnly := false;
        FormEntraSai.DbePES_VALOR.TabStop  := True;
        FormEntraSai.ShowModal;
      finally
        FormEntraSai.Destroy;
        FormEntraSai := nil;
        SqlCdsPrdManut.Refresh;
        SqlCdsProduto.Refresh;
        Screen.OnActiveControlChange   := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPrdManut.Bit_SaidaClick(Sender: tObject);
begin
    try
      try
        FormEntraSai := TFormEntraSai.Create(Application);
        FormEntraSai.Caption := 'Estoque - [Saída]';
        FormEntraSai.Grp_Movimento.Caption := 'Referência : '+SqlCdsProdutoPRD_REFER.AsString+' - '+SqlCdsProdutoPRD_DESCRI.AsString;
        FormEntraSai.ShowModal;
      finally
        FormEntraSai.Destroy;
        FormEntraSai := nil;
        SqlCdsPrdManut.Refresh;
        SqlCdsProduto.Refresh;
        Screen.OnActiveControlChange   := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPrdManut.FormShow(Sender: tObject);
begin
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor:=CrHourglass;
    if wVariacoes then //Com Variacao
       begin
           Pan_Variacao.Visible := true;
           Pan_saldo.top := 15;
       end
    else
       begin
         Pan_Variacao.Visible := false;
           Pan_saldo.top := 30;
    end;

    try
      SqlCdsTipos.Close;
      SqlCdsTipos.CommandText := SQLDEF('TABELAS','SELECT T1.* FROM PRD_TIPO T1','','T1.PTI_CODIGO','T1.');
      SqlCdsTipos.Open;
      SqlCdsTipos.First;
      while not SqlCdsTipos.Eof do
        begin
            Cbx_tipo.Items.Add(SqlCdsTiposPTI_DESCRI.AsString);
            SqlCdsTipos.Next;
        end;
      Cbx_tipo.ItemIndex := 0;
      BuscaTipo;
      Cbx_Tipo.SetFocus;
      LayOutPesquisa;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD_TIPO !'+E.Message));
    end;
    screen.cursor:=CrDefault;
end;

procedure TFormPrdManut.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormPrdManut.Bit_EstornoClick(Sender: tObject);
var
  WVLEstorno,wQtde1,wQtde2,wQtde3,wQtde4,wQtde5,wQtde6,wQtde7,wQtde8:Double;
  WFleg : integer;
begin
    if (not SqlCdsPrdManut.IsEmpty) then
      If uteis.confirmacao ( 'Este movimento será estornado do Estoque. Confirma?')= idYes then
         Begin
             // estornar somente falg estoque = sim e lançamentos Manuais do tipo E ou tipo S
             if (SqlCdsPrdManutPES_FLAG_CONTA.AsString = 'S') and (SqlCdsPrdManutPES_TIPDOC.AsString <> 'AC') and (SqlCdsPrdManutPES_ORIGEM.AsString = 'Manual')  then
                begin
                   if SqlCdsPrdManutPES_TIPO.AsString = 'E' then
                      WFleg := 1    {entrada}
                   else
                      WFleg := 0;   {saída}
                   // pega valor do lançamento
                   WVLEstorno:= SqlCdsPrdManutPES_QTDE.AsCurrency;
                   wQtde1    := SqlCdsPrdManutPES_VAR1.AsCurrency;
                   wQtde2    := SqlCdsPrdManutPES_VAR2.AsCurrency;
                   wQtde3    := SqlCdsPrdManutPES_VAR3.AsCurrency;
                   wQtde4    := SqlCdsPrdManutPES_VAR4.AsCurrency;
                   wQtde5    := SqlCdsPrdManutPES_VAR5.AsCurrency;
                   wQtde6    := SqlCdsPrdManutPES_VAR6.AsCurrency;
                   wQtde7    := SqlCdsPrdManutPES_VAR7.AsCurrency;
                   wQtde8    := SqlCdsPrdManutPES_VAR8.AsCurrency;
                   {atualiza tbProduto}
                   DataCadastros.CdsProdutos.Close;
                   DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','SELECT P1.* FROM PRD0000 P1','WHERE P1.PRD_REFER='''+SqlCdsProdutoPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
                   DataCadastros.CdsProdutos.Open;
                   DataCadastros.CdsProdutos.Edit;
                   {Fleg - tira da entrada ou da saída}
                   if WFleg = 1 then
                      begin
                          // estorno da entrada
                          DataCadastros.CdsProdutosPRD_ENTRADA.AsCurrency := DataCadastros.CdsProdutosPRD_ENTRADA.AsCurrency - WVLEstorno;
                          DataCadastros.CdsProdutosPRD_VAR1   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR1   .AsCurrency - wQtde1;
                          DataCadastros.CdsProdutosPRD_VAR2   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR2   .AsCurrency - wQtde2;
                          DataCadastros.CdsProdutosPRD_VAR3   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR3   .AsCurrency - wQtde3;
                          DataCadastros.CdsProdutosPRD_VAR4   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR4   .AsCurrency - wQtde4;
                          DataCadastros.CdsProdutosPRD_VAR5   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR5   .AsCurrency - wQtde5;
                          DataCadastros.CdsProdutosPRD_VAR6   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR6   .AsCurrency - wQtde6;
                          DataCadastros.CdsProdutosPRD_VAR7   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR7   .AsCurrency - wQtde7;
                          DataCadastros.CdsProdutosPRD_VAR8   .AsCurrency := DataCadastros.CdsProdutosPRD_VAR8   .AsCurrency - wQtde8;
                      end
                   else
                      begin
                          // estorno da saida
                          DataCadastros.CdsProdutosPRD_SAIDA.AsCurrency := DataCadastros.CdsProdutosPRD_SAIDA.AsCurrency - WVLEstorno;
                          DataCadastros.CdsProdutosPRD_VAR1 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR1 .AsCurrency + wQtde1;
                          DataCadastros.CdsProdutosPRD_VAR2 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR2 .AsCurrency + wQtde2;
                          DataCadastros.CdsProdutosPRD_VAR3 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR3 .AsCurrency + wQtde3;
                          DataCadastros.CdsProdutosPRD_VAR4 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR4 .AsCurrency + wQtde4;
                          DataCadastros.CdsProdutosPRD_VAR5 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR5 .AsCurrency + wQtde5;
                          DataCadastros.CdsProdutosPRD_VAR6 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR6 .AsCurrency + wQtde6;
                          DataCadastros.CdsProdutosPRD_VAR7 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR7 .AsCurrency + wQtde7;
                          DataCadastros.CdsProdutosPRD_VAR8 .AsCurrency := DataCadastros.CdsProdutosPRD_VAR8 .AsCurrency + wQtde8;
                      end;
                   //
                   DataCadastros.CdsProdutos.ApplyUpdates(0);

                  {exclui lanc}
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','DELETE FROM PRD_ENSA ','WHERE PES_REGISTRO = '''+SqlCdsPrdManutPES_REGISTRO.AsString+'''','','');
                  DataCadastros.sqlUpdate.Execsql;

                end
               else
                  uteis.aviso('Não é permitido fazer o estorno deste tipo de lançamento');

         end;
      SqlCdsPrdManut.Refresh;
      SqlCdsProduto.Refresh;
      Bit_Estorno.Enabled := False;
      DbGrdManut.SetFocus;
end;

procedure TFormPrdManut.SqlCdsProdutoCalcFields(DataSet: TDataSet);
begin
    SqlCdsProdutoPRD_FISICO_CC.AsCurrency     := ((SqlCdsProdutoPRD_ESTOQUE.AsCurrency + SqlCdsProdutoPRD_ENTRADA.AsCurrency)-(SqlCdsProdutoPRD_SAIDA.AsCurrency+SqlCdsProdutoPRD_RESERVA.AsCurrency+SqlCdsProdutoPRD_EMPENHO.AsCurrency));
    SqlCdsProdutoPRD_ANTECIPADO_CC.AsCurrency := (SqlCdsProdutoPRD_FISICO_CC.AsCurrency + SqlCdsProdutoPRD_PENDENTE.AsCurrency);
    SqlCdsProdutoPRD_SAIDA_CC.AsCurrency      := (SqlCdsProdutoPRD_SAIDA.AsCurrency + SqlCdsProdutoPRD_RESERVA.AsCurrency+SqlCdsProdutoPRD_EMPENHO.AsCurrency);
end;

procedure TFormPrdManut.DbGrdManutCellClick(Column: TColumn);
begin
    if (SqlCdsPrdManut.IsEmpty = false) then
       begin
           if (SqlCdsPrdManutPES_FLAG_ACERTO.AsString = 'S') then
              Bit_Estorno.Enabled := False
           else
              Bit_Estorno.Enabled := True;
       end
    else
       Bit_Estorno.Enabled := False;
end;

procedure TFormPrdManut.Cbx_TipoClick(Sender: tObject);
begin
    BuscaTipo;
end;

procedure TFormPrdManut.BuscaTipo;
Var
  wSql1,wSql2,wRefer : String;
begin
    screen.cursor:=CrHourglass;
    try
      if Cbx_Tipo.ItemIndex <> 0 then
         begin
             SqlCdsTipos.Locate('PTI_DESCRI',Cbx_Tipo.Text,[]);
             wSeleciona := 'WHERE P1.PTI_CODIGO = '''+SqlCdsTiposPTI_CODIGO.AsString+'''';
         end
      else
         begin
             wSeleciona:='';
         end;
      {Abrir os produtos}
      wSql1 := 'SELECT P1.PTI_CODIGO,P1.PRD_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_ESTOQUE,P1.PRD_PCUSTO,P1.PRD_PMEDIO,P1.PRD_ENTRADA,P1.PRD_PENDENTE,P1.PRD_SAIDA,P1.PRD_RESERVA,P1.PRD_EMPENHO,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,';
      wSql2 := 'P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,P1.PRD_VAR1,P1.PRD_VAR2,P1.PRD_VAR3,P1.PRD_VAR4,P1.PRD_VAR5,P1.PRD_VAR6,P1.PRD_VAR7,P1.PRD_VAR8,P1.EMP_CODIGO FROM PRD0000 P1 ';
      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,'P1.PRD_DESCRI','P1.');
      SqlCdsProduto.Open;
      if SqlCdsProduto.IsEmpty then
         begin
             {O tipo Selecionado nao Tem Referencia, entao fecho o Grid}
             SqlCdsPrdManut.Close;
         end;
      Edt_Refer.SetFocus;
      Edt_Refer.SelectAll;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD0000 '+E.MESSAGE));
    end;
    screen.cursor:=CrDefault;
end;

procedure TFormPrdManut.SqlCdsTiposAfterScroll(DataSet: TDataSet);
begin
    BuscaTipo;
end;

procedure TFormPrdManut.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        FormGimpManutMov:= TFormGimpManutMov.Create(Application);
        FormGimpManutMov.ShowModal;
      finally
        FormGimpManutMov.Destroy;
        FormGimpManutMov             := nil;
        Screen.OnActiveControlChange := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPrdManut.SqlCdsPrdManutCalcFields(DataSet: TDataSet);
begin
    if (SqlCdsPrdManutPES_IPI.AsCurrency>0) Then
       SqlCdsPrdManutPES_IPI_CC.AsCurrency := SqlCdsPrdManutPES_VALOR.AsCurrency+(SqlCdsPrdManutPES_VALOR.AsCurrency * SqlCdsPrdManutPES_IPI.AsCurrency)/100
    else
       // a partir de out 2010 o sistema tem valor agregado = PES_VALOR + IPI + frete + despesas
       if SqlCdsPrdManutPES_CUSTO_AGREGADO.AsCurrency > 0 then
          SqlCdsPrdManutPES_IPI_CC.AsCurrency := SqlCdsPrdManutPES_CUSTO_AGREGADO.AsCurrency
       else
          SqlCdsPrdManutPES_IPI_CC.AsCurrency := SqlCdsPrdManutPES_VALOR.AsCurrency;
    //
    if (SqlCdsPrdManutPES_FLAG_CONTA.AsString = 'S') Then
       SqlCdsPrdManutCONTA_CC.AsString := 'Sim'
    else
       SqlCdsPrdManutCONTA_CC.AsString := 'Não';


    //
    SqlCdsPrdManutKARDEX_TIPO.AsString := IIF(SqlCdsPrdManutPES_KARDEX_TIPO.IsNull,'',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'I','BALANÇO I',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'D','Devolução',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'T','Troca',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'C','Conserto',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'O','Outros',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'F','Faturado',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'E','E.NF',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'Z','ZERADO',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'B','BALANÇO',
                                          IIF(SqlCdsPrdManutPES_KARDEX_TIPO.AsString = 'S','S.Manual','E.Manual')))))))))));
end;

procedure TFormPrdManut.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      SqlCdsPrdManut.Close;
      SqlCdsProduto.Close;
      SqlCdsParametros.Close;
      SqlCdsTipos.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Impossível Fechar as Tabelas !'+e.message));
    end;

end;

procedure TFormPrdManut.FormCreate(Sender: tObject);
begin
     wVariacoes := (DBiNICIO.GetParametroSistema('PMT_VARIACOES')='S');
end;

procedure TFormPrdManut.DbGrdManutTitleClick(Column: TColumn);
begin
    screen.Cursor := crHourglass;
    if not (Column.Field.FieldKind = fkCalculated) then
       begin
           if not (Column.Field.DataType in [ftBlob,ftMemo]) then
              begin
                  SqlCdsPrdManut.IndexFieldNames := Column.FieldName
              end;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormPrdManut.SqlCdsProdutoAfterScroll(DataSet: TDataSet);
begin
    try
      wSql1 := 'select E1.*,A1.AMX_DESCRI,case E1.PES_TIPO when ''E'' then ''Entrada'' when ''S'' then ''Saída'' end as PES_TIPO_CA ';
      wSql2 := 'from PRD_ENSA E1 left join ALMOX0000 A1 on (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
      SqlCdsPrdManut.Close;
      SqlCdsPrdManut.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,'WHERE E1.PRD_REFER='''+SqlCdsProdutoPRD_REFER.AsString+'''','E1.PES_DATA,E1.PES_REGISTRO','E1.');
      SqlCdsPrdManut.Open;
      SqlCdsPrdManut.Last;
      if (Rad_Refer.checked ) then
         begin
             Lbl_Refer.Caption := '[ '+SqlCdsProdutoPRD_REFER.AsString+' - '+SqlCdsProdutoPRD_DESCRI.AsString+' ]';
         end
      else
         begin
             Lbl_Refer.Caption := '[ '+SqlCdsProdutoPRD_REFER.AsString+' - '+SqlCdsProdutoPRD_DESCRI.AsString+' ]';
         end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao localizar o Movimento da Referência ! '+e.message));
    end;
end;

procedure TFormPrdManut.Edt_ReferExit(Sender: tObject);
begin
    if (Edt_Refer.Text <> '') then
       begin
           if (Rad_Refer.checked ) then
              begin
                  if (SqlCdsProduto.Locate('PRD_REFER',Edt_Refer.Text,[])=True) then
                     begin
                         DBGridProduto.SetFocus;
                     end
                  else
                     begin
                         uteis.aviso('Produto não encontrado com a referência informada !');
                         Edt_Refer.Text := '';
                         Edt_Refer.SetFocus;
                         Edt_Refer.SelectAll;
                     end;
              end
           else
              begin
                  if (SqlCdsProduto.Locate('PRD_DESCRI',Edt_Refer.Text,[loPartialKey])=True) then
                     begin
                         DBGridProduto.SetFocus;
                     end
                  else
                     begin
                         uteis.aviso('Produto não encontrado com a descrição informada !');
                         Edt_Refer.Text := '';
                         Edt_Refer.SetFocus;
                         Edt_Refer.SelectAll;
                     end;
              end;
           Edt_Refer.Clear;   
       end;
end;

procedure TFormPrdManut.Rad_ReferClick(Sender: tObject);
begin
    LayOutPesquisa;
end;

procedure TFormPrdManut.LayOutPesquisa;
begin
    if (Rad_Refer.checked ) then
       begin
           Edt_Refer.MaxLength := 11;
           Edt_Refer.Width     := 150;
           LBL_DESCRI.Caption  := 'Referência:';
       end
    else
       begin
           Edt_Refer.MaxLength := 30;
           Edt_Refer.Width     := 305;
           LBL_DESCRI.Caption  := 'Descrição:';
       end;
    Edt_Refer.SetFocus;
    Edt_Refer.SelectAll;
end;

procedure TFormPrdManut.Edt_ReferEnter(Sender: tObject);
begin
    Edt_Refer.SelectAll;
end;

procedure TFormPrdManut.DbGrdManutDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsPrdManut.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGrdManut.Canvas.Brush.Color := $00FFEFDF;
              DbGrdManut.Canvas.FillRect(rect);
              DbGrdManut.DefaultDrawDataCell(Rect,column.Field,state);
          end;
    if (DbGrdManut.Focused) then
       begin
          if (SqlCdsPrdManutPES_FLAG_ACERTO.AsString = 'S') then
             DbGrdManut.Canvas.Font.Color :=  clBlue;
          if (gdSelected in State) then
             DbGrdManut.Canvas.Font.Color:= clWindow;
          DbGrdManut.DefaultDrawDataCell(Rect, DbGrdManut.Columns[datacol].field, State);
       end
    else
       begin
          if (SqlCdsPrdManutPES_FLAG_ACERTO.AsString = 'S') then
             DbGrdManut.Canvas.Font.Color :=  clBlue;
          DbGrdManut.DefaultDrawDataCell(Rect, DbGrdManut.Columns[datacol].field, State);
       end;
end;

end.
