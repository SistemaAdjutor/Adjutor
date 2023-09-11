unit uFinanceiroAnaliseCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, Buttons, Grids,
  DBGrids, SqlExpr,SqlClientDataSet, Provider, DB, DBCtrls, DBClient, DBLocal, DBLocalS,
  JvExControls, JvAnimatedImage, JvGIFCtrl, ExtCtrls, pngextra,
  Data.DBXFirebird, SimpleDS;

type
  TFrmFinanceiroAnaliseCredito = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    DbGrPedido: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DbGridRecParc: TDBGrid;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DBMemo1: TDBMemo;
    CdsPedidoAnalise: TSQLClientDataSet;
    CdsPedidoAnalisePED_REGISTRO: TIntegerField;
    CdsPedidoAnalisePED_CODIGO: TStringField;
    CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO: TStringField;
    CdsPedidoAnalisePED_DTENTRADA: TSQLTimeStampField;
    CdsPedidoAnaliseCLI_RAZAO: TStringField;
    CdsPedidoAnaliseOPV_DESCRICAO: TStringField;
    CdsPedidoAnalisePED_VLTOTAL_LIQ: TFMTBCdField;
    CdsPedidoAnalisePRAZO_PEDIDO: TStringField;
    CdsPedidoAnaliseCLI_FONE: TStringField;
    CdsPedidoAnalisePED_DTSAIDA: TSQLTimeStampField;
    CdsPedidoAnaliseCLI_CGC: TStringField;
    CdsPedidoAnalisePED_OBS_ANALISE_CREDITO: TBlobField;
    CdsPedidoAnaliseCLIENTE_ATIVO: TStringField;
    CdsPedidoAnaliseFATURAS_VENCIDAS: TFMTBCdField;
    CdsPedidoAnaliseFATURAS_PENDENTES: TFMTBCdField;
    CdsPedidoAnaliseMEDIA_ATRASO: TIntegerField;
    CdsPedidoAnaliseCLIENTE_DESDE: TSQLTimeStampField;
    CdsPedidoAnaliseCLIENTE_LIMITE_CREDITO: TFMTBCdField;
    CdsPedidoAnaliseCLIENTE_VENDEDOR: TStringField;
    CdsPedidoAnaliseCLIENTE_PRAZO: TStringField;
    CdsPedidoAnaliseCLIENTE_PORTE: TStringField;
    CdsPedidoAnaliseCLIENTE_NAC_INTER: TStringField;
    CdsPedidoAnaliseCLIENTE_PESSOA: TStringField;
    CdsPedidoAnaliseCLIENTE_ATIVIDADE: TStringField;
    CdsPedidoAnaliseCLIENTE_ULTIMA_COMPRA: TFMTBCdField;
    CdsPedidoAnaliseCLIENTE_DATA_ULTIMA_COMPRA: TSQLTimeStampField;
    CdsPedidoAnaliseCLIENTE_DESCONTO: TFMTBCdField;
    CdsPedidoAnalisePEDIDOS_ABERTOS: TFMTBCdField;
    CdsPedidoAnalisePEDIDOS_ORCAMENTOS: TFMTBCdField;
    DsPedidoAnalise: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    CdsPedidoAnaliseccSituacao: TStringField;
    CdsPedidoAnaliseTotalAberto: TFloatField;
    CdsPedidoAnaliseSaldoCredito: TFloatField;
    CdsPedidoAnaliseMAIOR_COMPRA: TFMTBCdField;
    SqlCdsItens: TSQLClientDataSet;
    SqlCdsItensPED_CODIGO: TStringField;
    SqlCdsItensPRD_REFER: TStringField;
    SqlCdsItensPRF_PRDDESCRI: TStringField;
    SqlCdsItensPRF_QTDE: TFMTBCdField;
    SqlCdsItensPRF_PRECO: TFMTBCdField;
    SqlCdsItensPRF_SITUACAO: TStringField;
    SqlCdsItensCC_SITUACAO: TStringField;
    SqlCdsItensPRF_QTDEFAT: TFMTBCdField;
    SqlCdsItensCC_TOTAL: TFloatField;
    DsPedItens: TDataSource;
    CdsPedidoAnaliseLimiteUtilizado: TFloatField;
    CdsParcelasGrid: TSQLClientDataSet;
    CdsParcelasGridFAT_REGISTRO: TIntegerField;
    CdsParcelasGridFAT_CODIGO: TStringField;
    CdsParcelasGridFPC_NUMER: TStringField;
    CdsParcelasGridFPC_VLPARC: TFMTBCdField;
    CdsParcelasGridFPC_VENCTO: TSQLTimeStampField;
    CdsParcelasGridFPC_VLPAGO: TFMTBCdField;
    CdsParcelasGridFPC_PAGTO: TSQLTimeStampField;
    CdsParcelasGridFPC_STATUS: TStringField;
    CdsParcelasGridBAN_APELIDO: TStringField;
    CdsParcelasGridFPC_PREVISAO: TStringField;
    CdsParcelasGridFPC_SITPAG: TStringField;
    CdsParcelasGridFPC_EXCLUSAO: TStringField;
    DsParcelasGrid: TDataSource;
    CdsPedidoAnaliseCLI_CODIGO: TStringField;
    Label20: TLabel;
    CurTotalQuantidade: TCurrencyEdit;
    CurTotalPedido: TCurrencyEdit;
    Label23: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CbPendente: TCheckBox;
    CbLiberado: TCheckBox;
    CbBloqueado: TCheckBox;
    grpEmpresa: TGroupBox;
    chkMultiEmpresa: TCheckBox;
    GroupBox8: TGroupBox;
    cbOrdenacao: TComboBox;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    btnEstornar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    edtLimiteDisponivel: TCurrencyEdit;
    Label11: TLabel;
    edtLimiteUtilizado: TCurrencyEdit;
    Label5: TLabel;
    Label17: TLabel;
    procedure CdsPedidoAnaliseCalcFields(DataSet: TDataSet);
    procedure CbPendenteClick(Sender: tObject);
    procedure CbLiberadoClick(Sender: tObject);
    procedure CbBloqueadoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SqlCdsItensCalcFields(DataSet: TDataSet);
    procedure DsPedidoAnaliseDataChange(Sender: tObject; Field: TField);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure btnEstornarClick(Sender: tObject);
    procedure chkMultiEmpresaClick(Sender: tObject);
    procedure cbOrdenacaoChange(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaPedidos;
    procedure ChamaAcao(sAcao:String);
    procedure AtualizaLimite;
  public
    { Public declarations }
  end;

var
  FrmFinanceiroAnaliseCredito: TFrmFinanceiroAnaliseCredito;

implementation

uses
  DataCad, RWFunc, uFinanceiroAnaliseCreditoConfirma, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmFinanceiroAnaliseCredito.AtualizaPedidos;
var
   sQuery:AnsiString;
   sWhere, sOrdenar:String;
begin

   screen.Cursor:=crSqlWait;
   try
       case cbOrdenacao.ItemIndex of
          0: sOrdenar := ' T1.ped_codigo DESC ';
          1: sOrdenar := ' T1.ped_dtentrada DESC ';
          2: sOrdenar := ' T2.cli_razao ';
          3: sOrdenar := ' T1.ped_vltotal_liq ';
       end;

       sQuery := 'SELECT '+
                 'T1.ped_registro, '+
                 'T1.ped_codigo, '+
                 'T1.ped_status_analise_credito, '+
                 'T1.ped_dtentrada, '+
                 'T2.cli_codigo, '+
                 'T2.cli_razao, '+
                 'T3.opv_descricao, '+
                 'T1.ped_vltotal_liq, '+
                 'T7.pcl_nome AS PRAZO_PEDIDO, '+
                 'T2.cli_fone, '+
                 'T1.ped_dtsaida, '+
                 'T2.cli_cgc, '+
                 'T1.ped_obs_analise_credito, '+
                 'CASE  '+
                 '    WHEN (T2.cli_inativo = ''A'') THEN  '+
                 '        ''ATIVO'' '+
                 '    WHEN (T2.cli_inativo = ''R'') THEN   ''RECUPERAÇÃO'' '+
                 '    ELSE  '+
                 '        ''INATIVO'' '+
                 'END AS CLIENTE_ATIVO, '+
                 '(SELECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_vencto < current_date AND T6.fpc_sitpag = ''P'') AS FATURAS_VENCIDAS,  '+
                 '(SELECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_vencto >= current_date AND T6.fpc_sitpag = ''P'') AS FATURAS_PENDENTES,  '+
                 'coalesce(CAST((SELECT SUM(T6.fpc_vencto - T6.fpc_pagto) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sitpag = ''L'') '+
                 ' / (SELECT COUNT(T6.fat_registro) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sitpag = ''L'') AS INTEGER),0)  AS MEDIA_ATRASO, '+
                 'T2.CLI_DTINICIO AS CLIENTE_DESDE, '+
                 'T2.cli_limitecred AS CLIENTE_LIMITE_CREDITO, '+
                 'T4.rep_nome AS CLIENTE_VENDEDOR,  '+
                 'T5.pcl_nome AS CLIENTE_PRAZO,  '+
                 'CASE  '+
                 '    when (t2.cli_porte = ''P'') THEN  '+
                 '        ''PEQUENO''  '+
                 '    when (t2.cli_porte = ''M'') THEN  '+
                 '        ''MEDIO''   '+
                 '    ELSE    '+
                 '        ''GRANDE''    '+
                 'END as CLIENTE_PORTE, '+
                 'CASE    '+
                 '    WHEN (T2.cli_pais = ''N'') THEN   '+
                 '        ''NACIONAL'' '+
                 '    ELSE   '+
                 '        ''INTERNACIONAL''   '+
                 'END AS CLIENTE_NAC_INTER, '+
                 'CASE  '+
                 '    WHEN (T2.cli_pessoa = ''J'') THEN  '+
                 '        ''JURÍDICA''  '+
                 '    ELSE  '+
                 '        ''FÍSICA''  '+
                 'END AS CLIENTE_PESSOA,  '+
                 'T8.rcl_atividade AS CLIENTE_ATIVIDADE,  '+
                 'T2.CLI_VL_ULTCOMP AS CLIENTE_ULTIMA_COMPRA, '+
                 'T2.CLI_DTULTCOM AS CLIENTE_DATA_ULTIMA_COMPRA, '+
                 'coalesce(T2.CLI_DESC2,0) AS CLIENTE_DESCONTO, '+
                 'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo '+iif(chkMultiEmpresa.Checked,'',' and t9.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO))+' AND '+
                 'T9.ped_situacao = ''F'' AND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_venda = ''S'')),0) AS PEDIDOS_ABERTOS, '+
                 'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo '+iif(chkMultiEmpresa.Checked,'',' and t9.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO))+' and T9.ped_situacao = ''F'' '+
                 'AND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10.OPV_ORCAMENTO = ''S'')),0) AS PEDIDOS_ORCAMENTOS, '+
                 'coalesce((SELECT MAX(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo '+iif(chkMultiEmpresa.Checked,'',' and t9.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO))+' and T9.opv_codigo IN (SELECT '+
                 'T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_venda = ''S'')),0) AS MAIOR_COMPRA '+
                 'FROM  '+
                 'ped0000 T1  '+
                 'LEFT JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo) '+
                 'JOIN opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo and opv_venda = ''S'')  '+
                 'LEFT JOIN rep0000 T4 ON (T4.rep_codigo = T2.rep_codigo) '+
                 'LEFT JOIN pcl0000 T5 ON (T5.pcl_codigo = T2.pcl_codigo) '+
                 'LEFT JOIN pcl0000 T7 ON (T7.pcl_codigo = T1.pcl_codigo) '+
                 'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codigo = T2.CLI_ATIVIDADE)';


       if (sWhere <> '') and (CbPendente.Checked) then
          sWhere := sWhere + ' OR ';
       if (CbPendente.Checked) then
          sWhere := sWhere + ' ped_status_analise_credito = '+QuotedStr('P');
       if (sWhere <> '') and (CbLiberado.Checked) then
          sWhere := sWhere + ' OR ';
       if (CbLiberado.Checked) then
          sWhere := sWhere + ' ped_status_analise_credito = '+QuotedStr('L');
       if (sWhere <> '') and (CbBloqueado.Checked) then
          sWhere := sWhere + ' OR ';
       if (CbBloqueado.Checked) then
          sWhere := sWhere + ' ped_status_analise_credito = '+QuotedStr('B');
       if (sWhere <> '') then
        sWhere := sWhere + ' and ';
       sWhere := sWhere + ' PED_SITUACAO <> '+QuotedStr('T');
   
       if (sWhere <> '') then
          sWhere := 'where '+sWhere;
       CdsPedidoAnalise.Close;
       if (chkMultiEmpresa.Checked) then
          CdsPedidoAnalise.CommandText :=  sQuery + ' '+ sWhere+' order by '+sOrdenar
       else
          CdsPedidoAnalise.CommandText := SQLDEF('PEDIDOS',sQuery,sWhere,sOrdenar,'t1.');
       CdsPedidoAnalise.Open;
       CurTotalQuantidade.Clear;
       CurTotalPedido.Clear;
       if (not CdsPedidoAnalise.IsEmpty) then
          begin
             CurTotalQuantidade.Value := CdsPedidoAnalise.RecordCount;
             sQuery := 'SELECT '+
                       'SUM (T1.ped_vltotal_liq) as ped_vltotal_liq '+
                       'FROM  '+
                       'ped0000 T1  '+
                       'LEFT JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo) '+
                       'JOIN opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo and opv_venda = ''S'')  '+
                       'LEFT JOIN rep0000 T4 ON (T4.rep_codigo = T2.rep_codigo) '+
                       'LEFT JOIN pcl0000 T5 ON (T5.pcl_codigo = T2.pcl_codigo) '+
                       'LEFT JOIN pcl0000 T7 ON (T7.pcl_codigo = T1.pcl_codigo) '+
                       'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codigo = T2.CLI_ATIVIDADE)';
             DataCadastros.sqlUpdate.Close;

             if (chkMultiEmpresa.Checked) then
                DataCadastros.SqlUpdate.sql.text := sQuery + ' '+ sWhere+''
              else
                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS',sQuery,sWhere,'','t1.');

             DataCadastros.sqlUpdate.open;
             if (not DataCadastros.sqlUpdate.IsEmpty) then
                CurTotalPedido.Value := DataCadastros.sqlUpdate.FieldByName('ped_vltotal_liq').AsFloat;
             DataCadastros.sqlUpdate.Close;

          end;
   finally
        screen.Cursor:=crDefault;
   end;
end;

procedure TFrmFinanceiroAnaliseCredito.CdsPedidoAnaliseCalcFields(
  DataSet: TDataSet);
begin
   //Situação
   if (CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO.AsString = 'P') then
      CdsPedidoAnaliseccSituacao.AsString := 'PENDENTE'
   else
   if (CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO.AsString = 'L') then
      CdsPedidoAnaliseccSituacao.AsString := 'LIBERADO'
   else
   if (CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO.AsString = 'B') then
      CdsPedidoAnaliseccSituacao.AsString := 'BLOQUEADO'
   else
      CdsPedidoAnaliseccSituacao.AsString := '';
   //Total em aberto
   CdsPedidoAnaliseTotalAberto.AsFloat := CdsPedidoAnaliseFATURAS_VENCIDAS.AsFloat + CdsPedidoAnaliseFATURAS_PENDENTES.AsFloat;
   //Utilizado
   CdsPedidoAnaliseLimiteUtilizado.AsFloat := CdsPedidoAnaliseTotalAberto.AsFloat + CdsPedidoAnalisePEDIDOS_ABERTOS.AsFloat;
   //Saldo
   CdsPedidoAnaliseSaldoCredito.AsFloat := CdsPedidoAnaliseCLIENTE_LIMITE_CREDITO.AsFloat - (CdsPedidoAnaliseTotalAberto.AsFloat + CdsPedidoAnalisePEDIDOS_ABERTOS.AsFloat);

end;

procedure TFrmFinanceiroAnaliseCredito.CbPendenteClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.CbLiberadoClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.CbBloqueadoClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmFinanceiroAnaliseCredito.FormCreate(Sender: tObject);
begin
     self.DoubleBuffered:=true;
     self.width:=999;
     self.Height:=600;
end;

procedure TFrmFinanceiroAnaliseCredito.FormDestroy(Sender: TObject);
begin
     FrmFinanceiroAnaliseCredito := Nil;
end;

procedure TFrmFinanceiroAnaliseCredito.FormResize(Sender: TObject);
begin
     width:=999;
     Height:=600;
end;

procedure TFrmFinanceiroAnaliseCredito.FormShow(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.SqlCdsItensCalcFields(
  DataSet: TDataSet);
begin
   //preço total do item
    SqlCdsItensCC_TOTAL.AsFloat := SqlCdsItensPRF_QTDE.AsFloat*SqlCdsItensPRF_PRECO.AsFloat;
end;

procedure TFrmFinanceiroAnaliseCredito.DsPedidoAnaliseDataChange(
  Sender: tObject; Field: TField);
begin
   sqlCdsItens.Close;
   CdsParcelasGrid.Close;
   if not CdsPedidoAnalise.IsEmpty then
      begin
        try
          sqlCdsItens.Close;

          if (chkMultiEmpresa.Checked) then
            SqlCdsItens.CommandText := 'select PED_CODIGO,PRD_REFER, PRF_PRDDESCRI, PRF_QTDE, PRF_PRECO, PRF_SITUACAO,PRF_QTDEFAT from PED_IT01 where PED_CODIGO = '''+CdsPedidoAnalisePED_CODIGO.AsString+''' order by PED_CODIGO'
          else
            SqlCdsItens.CommandText := SQLDEF('PEDIDOS','select PED_CODIGO,PRD_REFER, PRF_PRDDESCRI, PRF_QTDE, PRF_PRECO, PRF_SITUACAO,PRF_QTDEFAT from PED_IT01','where PED_CODIGO = '''+CdsPedidoAnalisePED_CODIGO.AsString+'''','PED_CODIGO','');

          SqlCdsItens.Open;
          //Faturas
          wSql1 := 'Select P1.FAT_REGISTRO,P1.FAT_CODIGO,P1.FPC_NUMER,P1.FPC_VLPARC,P1.FPC_VENCTO,P1.FPC_VLPAGO,P1.FPC_PAGTO,P1.FPC_STATUS,P1.FPC_PREVISAO,P1.FPC_SITPAG,P1.FPC_EXCLUSAO,P2.BAN_APELIDO From FAT_PC01 P1 ';
          wSql2 := 'Left Join BAN0000 P2 ON (P2.BAN_CODIGO = P1.BAN_CODIGO)';



          if (chkMultiEmpresa.Checked) then
            CdsParcelasGrid.CommandText := wSql1 + wSql2 + ' Where P1.cli_codigo = '''+CdsPedidoAnaliseCLI_CODIGO.AsString+''' and P1.fpc_sitpag = ''P'' order by P1.fpc_vencto'
          else
            CdsParcelasGrid.CommandText := SQLDEF('RECEBER',wSql1 + wSql2,'Where P1.cli_codigo = '''+CdsPedidoAnaliseCLI_CODIGO.AsString+''' and P1.fpc_sitpag = ''P''','P1.fpc_vencto','P1.');
                                                                                                          
          CdsParcelasGrid.Open;
        except on E:EdatabaseError do
           uteis.erro  (pchar('Erro ao localizar itens do pedido !'+e.message));
        end;
      end;
   AtualizaLimite;
end;

procedure TFrmFinanceiroAnaliseCredito.ChamaAcao(sAcao: String);
begin
   //Verica se existe item
   if (CdsPedidoAnalise.IsEmpty) then
      begin
         uteis.aviso('Não existe pedido selecionado para realizar a operação');
         PageControl1.ActivePageIndex := 0;
         DbGrPedido.SetFocus;
      end
   else  
      begin
         try
            FrmFinanceiroAnaliseCreditoConfirma := TFrmFinanceiroAnaliseCreditoConfirma.Create(Application);
            FrmFinanceiroAnaliseCreditoConfirma.sAcao := sAcao;
            FrmFinanceiroAnaliseCreditoConfirma.ShowModal;
         finally
            FrmFinanceiroAnaliseCreditoConfirma.Destroy;
            FrmFinanceiroAnaliseCreditoConfirma := nil;
         end;
         AtualizaPedidos;
      end;
end;

procedure TFrmFinanceiroAnaliseCredito.Bit_GravarClick(Sender: tObject);
begin
   ChamaAcao('L');
end;

procedure TFrmFinanceiroAnaliseCredito.Bit_CancelarClick(Sender: tObject);
begin
   ChamaAcao('B');
end;

procedure TFrmFinanceiroAnaliseCredito.btnEstornarClick(Sender: tObject);
begin
   ChamaAcao('P');
end;

procedure TFrmFinanceiroAnaliseCredito.chkMultiEmpresaClick(
  Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.cbOrdenacaoChange(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCredito.AtualizaLimite;
begin
  edtLimiteUtilizado.Clear;
  edtLimiteDisponivel.Clear;
  if (CdsPedidoAnaliseCLI_CODIGO.AsString <> '')and(CdsPedidoAnaliseCLIENTE_LIMITE_CREDITO.AsFloat > 0) then
    begin
      DataCadastros.sqlUpdate2.Close;
      DataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCd_LIMITE_CLIENTE('+QuotedStr(CdsPedidoAnaliseCLI_CODIGO.AsString)+', '+ iif (  Share('CLIENTES')  = 'C', QuotedStr('999'), QuotedStr(dbInicio.empresa.EMP_CODIGO) )  +')';
      DataCadastros.sqlUpdate2.Open;

      if (not DataCadastros.sqlUpdate2.IsEmpty) then
        begin
          edtLimiteUtilizado.Value :=  DataCadastros.sqlUpdate2.FieldByName('UTILIZADO').AsFloat;
          edtLimiteDisponivel.Value := DataCadastros.sqlUpdate2.FieldByName('LIMITE').AsFloat - DataCadastros.sqlUpdate2.FieldByName('UTILIZADO').AsFloat;
        end;

      DataCadastros.sqlUpdate2.Close;
    end;
end;

end.
