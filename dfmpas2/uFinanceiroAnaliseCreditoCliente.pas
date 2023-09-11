unit uFinanceiroAnaliseCreditoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, Buttons, Grids,
  DBGrids, SqlExpr,SqlClientDataSet, Provider, DB, DBCtrls, DBClient, DBLocal, DBLocalS,
  ComboBoxRw, Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit;

type
  TFrmFinanceiroAnaliseCreditoCliente = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    GroupBox6: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
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
    grpEmpresa: TGroupBox;
    chkMultiEmpresa: TCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    grpCliente: TGroupBox;
    btnCliente: TSpeedButton;
    CbCliente: TComboBoxRw;
    EdClienteCodigo: TEdit;
    procedure CdsPedidoAnaliseCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
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
    procedure btnClienteClick(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure CbClienteExit(Sender: tObject);
    procedure CbClienteChange(Sender: tObject);
  private

    procedure AtualizaPedidos;
    procedure ChamaAcao(sAcao:String);
  public
    { Public declarations }
    sCliente:String;
  end;

var
  FrmFinanceiroAnaliseCreditoCliente: TFrmFinanceiroAnaliseCreditoCliente;

implementation

uses
  DataCad, RWFunc, uFinanceiroAnaliseCreditoConfirma, Men0001, PesquisaClientesForm,  uteis, iniciodb;

{$R *.dfm}

procedure TFrmFinanceiroAnaliseCreditoCliente.AtualizaPedidos;
var
   sQuery:AnsiString;
   sWhere:String;
begin
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
             'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo '+iif(chkMultiEmpresa.Checked,'',' and t9.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO))+' AND T9.ped_situacao = ''F'' '+
             'AND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10.OPV_ORCAMENTO = ''S'')),0) AS PEDIDOS_ORCAMENTOS, '+
             'coalesce((SELECT MAX(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo '+iif(chkMultiEmpresa.Checked,'',' and t9.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO))+' AND T9.opv_codigo IN (SELECT '+
             'T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_venda = ''S'')),0) AS MAIOR_COMPRA '+
             'FROM  '+
             'ped0000 T1  '+
             'LEFT JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo) '+
             'JOIN opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo and opv_venda = ''S'')  '+
             'LEFT JOIN rep0000 T4 ON (T4.rep_codigo = T2.rep_codigo) '+
             'LEFT JOIN pcl0000 T5 ON (T5.pcl_codigo = T2.pcl_codigo) '+
             'LEFT JOIN pcl0000 T7 ON (T7.pcl_codigo = T1.pcl_codigo) '+
             'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codigo = T2.CLI_ATIVIDADE)';


   sWhere := 'WHERE T1.cli_codigo = '+QuotedStr(EdClienteCodigo.Text);
   CdsPedidoAnalise.Close;
   if (chkMultiEmpresa.Checked) then
      CdsPedidoAnalise.CommandText :=  sQuery + ' '+ sWhere+' order by PED_CODIGO DESC'
   else
      CdsPedidoAnalise.CommandText := SQLDEF('PEDIDOS',sQuery,sWhere,'PED_CODIGO DESC','t1.');
   CdsPedidoAnalise.Open;

end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CdsPedidoAnaliseCalcFields(
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

procedure TFrmFinanceiroAnaliseCreditoCliente.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsPedidoAnalise.Close;
   CdsParcelasGrid.Close;
   CbCliente.CarregarCombo := False;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CbPendenteClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CbLiberadoClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CbBloqueadoClick(Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.FormShow(Sender: tObject);
var
   sCondicao : String;
begin                
   sCondicao := '';

   if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
       sCondicao := ' WHERE REP_CODIGO ='+ QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)+
                    ' or VEND_INTERNO_CODIGO = '+ QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)          ;
   //Combo
   CbCliente.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbCliente.Compartilhar := 'CLIENTES';
   if (sCondicao <> '') then
      CbCliente.Condicao :=  'REP_CODIGO ='+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES);
   CbCliente.CarregarCombo := True;

   if (sCliente <> '') then
      begin
         EdClienteCodigo.Text := sCliente;
         CbCliente.TextoLocalizar := EdClienteCodigo.Text;
         CbCliente.Localizar := True;
      end;

   AtualizaPedidos;


end;

procedure TFrmFinanceiroAnaliseCreditoCliente.SqlCdsItensCalcFields(
  DataSet: TDataSet);
begin
   //preço total do item
    SqlCdsItensCC_TOTAL.AsFloat := SqlCdsItensPRF_QTDE.AsFloat*SqlCdsItensPRF_PRECO.AsFloat;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.DsPedidoAnaliseDataChange(
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

end;

procedure TFrmFinanceiroAnaliseCreditoCliente.ChamaAcao(sAcao: String);
begin

end;

procedure TFrmFinanceiroAnaliseCreditoCliente.Bit_GravarClick(Sender: tObject);
begin
   ChamaAcao('L');
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.Bit_CancelarClick(Sender: tObject);
begin
   ChamaAcao('B');
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.btnEstornarClick(Sender: tObject);
begin
   ChamaAcao('P');
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.chkMultiEmpresaClick(
  Sender: tObject);
begin
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.btnClienteClick( Sender: tObject);
var tcr: tFrmPesquisaClientes;
begin
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
        begin
             EdClienteCodigo.Text := tcr.IDRetorno;
             CbCliente.idRetorno := tcr.IDRetorno;
        end;
    finally
         FreeAndNil(tcr);
    end;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.EdClienteCodigoExit(
  Sender: tObject);
begin
   EdClienteCodigo.Text := PreenchezeroEsquerda(EdClienteCodigo.Text,5);

   if (EdClienteCodigo.Text = '00000') then
      begin
         EdClienteCodigo.Clear;
         CbCliente.Text := '';
      end
   else
      begin
         CbCliente.TextoLocalizar := EdClienteCodigo.Text;
         CbCliente.Localizar := True;
         if (CbCliente.Localizado) then
            begin
               AtualizaPedidos;
            end
         else
            begin
               uteis.aviso('Cliente não localizado com o código informado');
               CbCliente.Text := '';
               EdClienteCodigo.SetFocus;
               EdClienteCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CbClienteExit(
  Sender: tObject);
begin
   if (CbCliente.CodigoLista = '') or (CbCliente.Text = '') then
      begin
         CbCliente.Text := '';
         EdClienteCodigo.Text := '';
      end
   else
      begin
         EdClienteCodigo.Text := CbCliente.CodigoLista;
      end;
   AtualizaPedidos;
end;

procedure TFrmFinanceiroAnaliseCreditoCliente.CbClienteChange(
  Sender: tObject);
begin
   EdClienteCodigo.Text := CbCliente.CodigoLista;
   AtualizaPedidos;
end;

end.
