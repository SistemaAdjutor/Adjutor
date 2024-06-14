unit Mnt0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS,RWFunc, Mask,  rxToolEdit,  rxCurrEdit, Buttons, RwSQLComando,
  xmldom, XMLIntf, msxmldom, XMLDoc, SimpleDS, Data.DBXFirebird, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Samples.Gauges, SgDbSeachComboUnit, ComboBoxRW,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmManutencao = class(TFrmBaseDbEstoque)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    PrBar: TProgressBar;
    SqlCdsPesquisa: TSQLClientDataSet;
    DsPesquisa: TDataSource;
    CdsConcluir: TClientDataSet;
    CdsConcluirREFERENCIA: TStringField;
    CdsConcluirNUM_OP: TStringField;
    CdsConcluirQTDE: TStringField;
    SqlCdsNparcelas: TSQLClientDataSet;
    SqlCdsNparcelasEMP_CODIGO: TStringField;
    SqlCdsNparcelasPAG_CODIGO: TStringField;
    SqlCdsNparcelasNPARCELAS: TIntegerField;
    SQLClientDataSet1: TSQLClientDataSet;
    SqlCdsReserva: TSQLClientDataSet;
    SqlCdsReservaPRD_REFER: TStringField;
    SqlCdsReservaWQTDE: TFMTBCdField;
    SqlPedidos: TSQLClientDataSet;
    SqlPedidosPED_CODIGO: TStringField;
    SqlPedidosPED_REGISTRO: TIntegerField;
    SqlCdsOsv: TSQLClientDataSet;
    SqlCdsOsvOSV_CODIGO: TStringField;
    SqlCdsFlag: TSQLClientDataSet;
    SqlCdsFlagPRF_REGISTRO: TIntegerField;
    SqlCdsFlagPRD_REFER: TStringField;
    SqlCdsFlagOPV_ATESTOQUE: TStringField;
    SqlCdsFlagPGR_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsFlagPTI_ATUALIZAR_ESTOQUE: TStringField;
    SqlCdsFlagPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsFlagPRF_ORIGEM_ITEM: TStringField;
    SqlCdsFlagPED_FLAG_PED_DUPL: TStringField;
    SqlCdsFlagEMP_CODIGO: TStringField;
    SqlCdsFlagPED_CODIGO: TStringField;
    SqlCdsFlagPED_REGISTRO: TIntegerField;
    SqlCdsFlagNF: TSQLClientDataSet;
    SqlCdsFlagNFNF_REGISTRO: TIntegerField;
    SqlCdsFlagNFOPE_SEMVLCOM: TStringField;
    SqlCdsTabela: TSQLClientDataSet;
    SqlCdsFlagNF2: TSQLClientDataSet;
    SqlCdsFlagNF2NF_IT_NOTANUMER: TStringField;
    SqlCdsFlagNF2CLI_CODIGO: TStringField;
    SqlCdsFlagNF2AMX_CODIGO: TStringField;
    SqlCdsFlagNF2CLI_RAZAO: TStringField;
    SqlCdsFlagNF2NF_EMISSAO: TDateField;
    SqlCdsFlagNF2NF_HORASAIDA: TTimeField;
    SqlCdsFlagNF2OPE_NATUREZA: TStringField;
    SqlCdsFlagNF2OPE_DESCRI: TStringField;
    SqlCdsFlagNF2PRF_SITUACAO: TStringField;
    SqlCdsFlagNF2PRF_QTDEFAT: TFMTBCdField;
    SqlCdsFlagNF2NF_REGISTRO: TIntegerField;
    SqlCdsFlagNF2PRD_REFER: TStringField;
    SqlCdsFlagNF2PED_CODIGO: TStringField;
    SqlCdsFlagNF2NF_QTDE: TFMTBCdField;
    SqlCdsFlagNF2NF_PRECO: TFMTBCdField;
    SqlCdsFlagNF2NF_IPIALIQ: TFMTBCdField;
    SqlCdsFlagNF2IPI_CODIGO: TStringField;
    SqlCdsFlagNF2NF_VLSUBST: TFMTBCdField;
    SqlCdsFlagNF2NF_IDESCTO1: TFMTBCdField;
    SqlCdsFlagNF2NF_IDESCTO2: TFMTBCdField;
    SqlCdsFlagNF2PRD_DESCRI: TStringField;
    SqlCdsFlagNF2EMP_CODIGO: TStringField;
    SqlCdsFlagNF2NF_ICMSALIQ: TFMTBCdField;
    SqlCdsFlagNF2NF_PMATPRIMA: TFMTBCdField;
    SqlCdsFlagNF2NF_COMISSAO: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR1: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR2: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR3: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR4: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR5: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR6: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR7: TFMTBCdField;
    SqlCdsFlagNF2NF_QTDE_VAR8: TFMTBCdField;
    SqlCdsFlagNF2NF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsFlagNF2NF_PRODUTO_AGREGADO: TStringField;
    SqlCdsFlagNF2PRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlCdsFlagNF2PRF_ORIGEM_ITEM: TStringField;
    SqlCdsFlagNF2PRF_REGISTRO: TIntegerField;
    SqlCdsSaldo: TSQLClientDataSet;
    SqlCdsSaldoPRD_REFER: TStringField;
    SqlSaldoAcerto: TSQLClientDataSet;
    SqlSaldoAcertoPRD_REFER: TStringField;
    SqlSaldoAcertoPES_DATA: TSQLTimeStampField;
    SqlSaldoAcertoPES_HORA: TTimeField;
    SqlSaldoAcertoPES_FLAG_ACERTO: TStringField;
    SqlSaldoAcertoPES_FLAG_CONTA: TStringField;
    Button17: TButton;
    Button14: TButton;
    Button11: TButton;
    Button15: TButton;
    Button2: TButton;
    Button4: TButton;
    Button10: TButton;
    Button13: TButton;
    Button9: TButton;
    Button16: TButton;
    Button12: TButton;
    Button1: TButton;
    Button5: TButton;
    SqlCdsNF: TSQLClientDataSet;
    SqlCdsNFEMP_CODIGO: TStringField;
    SqlCdsNFFAT_CODIGO: TStringField;
    SqlCdsNFFPC_TIPODOC: TStringField;
    Button6: TButton;
    SqlFlag_nota: TSQLClientDataSet;
    SqlFlag_notaPTI_ATUALIZAR_ESTOQUE: TStringField;
    SqlFlag_notaPGR_ATUALIZA_ESTOQUE: TStringField;
    SqlFlag_notaOPV_ATESTOQUE: TStringField;
    SqlFlag_notaOPE_ESTOQUE: TStringField;
    SqlFlag_notaPGR_CODIGO: TStringField;
    SqlFlag_notaNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlFlag_notaNF_REGISTRO: TIntegerField;
    Button7: TButton;
    Button8: TButton;
    SqlCdsEstoque: TSQLClientDataSet;
    SqlCdsEstoquePRD_REFER: TStringField;
    SqlCdsUltCompra: TSQLClientDataSet;
    SqlCdsUltCompraENF_PRECO: TFMTBCdField;
    SqlCdsUltCompraENF_IT_NOTANUMBER: TStringField;
    SqlCdsUltCompraENF_EMISSAO: TDateField;
    SqlCdsUltCompraFOR_CODIGO: TStringField;
    SqlCdsEstoquePRD_CODIGO: TStringField;
    Button18: TButton;
    SqlAtualizaFlag: TSQLClientDataSet;
    SqlItens: TSQLClientDataSet;
    SqlAcertos: TSQLClientDataSet;
    SqlAcertosPES_DATA: TSQLTimeStampField;
    SqlAcertosPES_HORA: TTimeField;
    SqlItensPRD_REFER: TStringField;
    SqlAcertosPES_REGISTRO: TIntegerField;
    SqlAtualizaFlagPES_REGISTRO: TIntegerField;
    SqlAtualizaFlagPRD_REFER: TStringField;
    SqlAtualizaFlagPES_TIPO: TStringField;
    SqlAtualizaFlagPES_QTDE: TFMTBCdField;
    SqlAtualizaFlagPES_NUMDOC: TStringField;
    SqlAtualizaFlagPES_TIPDOC: TStringField;
    SqlAtualizaFlagPES_DATA: TSQLTimeStampField;
    SqlAtualizaFlagEMP_CODIGO: TStringField;
    SqlAtualizaFlagPES_ORIGEM: TStringField;
    SqlAtualizaFlagPES_VALOR: TFMTBCdField;
    SqlAtualizaFlagPES_VAR1: TFMTBCdField;
    SqlAtualizaFlagPES_VAR2: TFMTBCdField;
    SqlAtualizaFlagPES_VAR3: TFMTBCdField;
    SqlAtualizaFlagPES_VAR4: TFMTBCdField;
    SqlAtualizaFlagPES_VAR5: TFMTBCdField;
    SqlAtualizaFlagPES_VAR6: TFMTBCdField;
    SqlAtualizaFlagPES_VAR7: TFMTBCdField;
    SqlAtualizaFlagPES_VAR8: TFMTBCdField;
    SqlAtualizaFlagAMX_CODIGO: TStringField;
    SqlAtualizaFlagFOR_CODIGO: TStringField;
    SqlAtualizaFlagPES_IPI: TFMTBCdField;
    SqlAtualizaFlagPES_FLAG_ACERTO: TStringField;
    SqlAtualizaFlagPES_FLAG_CONTA: TStringField;
    SqlAtualizaFlagPES_HORA: TTimeField;
    SqlAtualizaFlagPES_KARDEX_TIPO: TStringField;
    SqlAtualizaFlagPES_KARDEX_OBS: TStringField;
    SqlAtualizaFlagPED_CODIGO: TStringField;
    Button19: TButton;
    CONSULTATMP: TSQLClientDataSet;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    SQLNF_PC01: TSQLClientDataSet;
    SQLNF_PC01FAT_CODIGO: TStringField;
    SQLNF_PC01FPC_NUMER: TStringField;
    SQLNF_PC01REP_CODIGO: TStringField;
    SQLNF_PC01BAN_CODIGO: TStringField;
    SQLNF_PC01CCT_CODIGO: TStringField;
    SQLNF_PC01PCX_CODIGO: TStringField;
    SQLNF_PC01FPC_DTEMIS: TSQLTimeStampField;
    SQLNF_PC01FPC_NPARCELAS: TSmallintField;
    SQLNF_PC01FPC_COBNUM: TStringField;
    SQLNF_PC01FPC_COBTIPO: TStringField;
    SQLNF_PC01FPC_TIPODOC: TStringField;
    SQLNF_PC01FPC_SITPAG: TStringField;
    SQLNF_PC01FPC_STATUS: TStringField;
    SQLNF_PC01FPC_DESCTO: TFMTBCdField;
    SQLNF_PC01FPC_DTDESC: TSQLTimeStampField;
    SQLNF_PC01FPC_VENCTO: TSQLTimeStampField;
    SQLNF_PC01FPC_PAGTO: TSQLTimeStampField;
    SQLNF_PC01FPC_VLPARC: TFMTBCdField;
    SQLNF_PC01FPC_VLPAGO: TFMTBCdField;
    SQLNF_PC01FPC_OBS: TStringField;
    SQLNF_PC01CLI_CODIGO: TStringField;
    SQLNF_PC01FPC_IMPDUP: TStringField;
    SQLNF_PC01FPC_JUROS: TFMTBCdField;
    SQLNF_PC01FPC_MULTA: TFMTBCdField;
    SQLNF_PC01FPC_VL_RET: TFMTBCdField;
    SQLNF_PC01EMP_CODIGO: TStringField;
    SQLNF_PC01CCT_NOVO: TStringField;
    SQLNF_PC01FPC_PREVISAO: TStringField;
    SQLNF_PC01FPC_STATUS_REMESSA: TStringField;
    SQLNF_PC01FPC_DATA_REMESSA: TDateField;
    SQLNF_PC01BAN_COD_APELIDO: TIntegerField;
    SQLNF_PC01FPC_STATUS_BAIXA: TStringField;
    SQLNF_PC01FPC_FORMAPAGTO: TStringField;
    SQLNF_PC01FPC_DESCONTADO: TStringField;
    SQLNF_PC01FPC_DATADESCTO: TDateField;
    SQLNF_PC01FPC_CONFIRMADESCTO: TStringField;
    SQLNF_PC01FPC_CONFIRMADEVOLUCAO: TStringField;
    SQLNF_PC01FPC_DATADEVOLUCAO: TDateField;
    SQLNF_PC01FPC_OBS_DESCTO: TStringField;
    SQLNF_PC01FPC_JUROS_DESCTO: TFMTBCdField;
    SQLNF_PC01PAG_CODIGO: TStringField;
    SQLNF_PC01FPC_BANCO_CHEQUE: TIntegerField;
    SQLNF_PC01FPC_NUM_CHEQUE: TStringField;
    SQLNF_PC01FPC_NUM_CHEQUE_DV: TStringField;
    SQLNF_PC01FPC_CHEQUE_DATA: TDateField;
    SQLNF_PC01FPC_SACADO_CHEQUE: TStringField;
    SQLNF_PC01FPC_EXCLUSAO: TStringField;
    SQLNF_PC01FPC_DATA_EXCLUSAO: TDateField;
    SQLNF_PC01FPC_HORA_EXCLUSAO: TTimeField;
    SQLNF_PC01FPC_MOTIVO_EXCLUSAO: TStringField;
    SQLNF_PC01USU_CODIGO: TIntegerField;
    SQLNF_PC01USU_LOGIN: TStringField;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button26: TButton;
    vXMLDoc: TXMLDocument;
    CdsProdutos: TClientDataSet;
    CdsProdutosReferencia: TStringField;
    CdsProdutosDescricao: TStringField;
    CdsProdutostipo: TStringField;
    CdsProdutosunidadeMedida: TStringField;
    CdsProdutosgrupo: TStringField;
    CdsProdutossubGrupo: TStringField;
    CdsProdutosestoque: TFloatField;
    CdsGrades: TClientDataSet;
    CdsGradesReferencia: TStringField;
    CdsGradesgrade: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    LblImportacaoProdutos: TLabel;
    LblImportacaoGrades: TLabel;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Label5: TLabel;
    Button31: TButton;
    cbAlmoxarifado: TComboBoxRw;
    Button32: TButton;
    Button33: TButton;
    qTabela: TFDQuery;
    pbTabela: TProgressBar;
    pbCampo: TProgressBar;
    sqlCampo: TSQLQuery;
    dspCampo: TDataSetProvider;
    qCampo: TClientDataSet;
    procedure Button3Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BtnCancelaClick(Sender: tObject);
    procedure Button2Click(Sender: tObject);
    procedure Button4Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure TabSheet3Enter(Sender: tObject);
    procedure Button6Click(Sender: tObject);
    procedure Button9Click(Sender: tObject);
    procedure Button10Click(Sender: tObject);
    procedure Button11Click(Sender: tObject);
    procedure Button12Click(Sender: tObject);
    procedure Button13Click(Sender: tObject);
    procedure Button14Click(Sender: tObject);
    procedure Button15Click(Sender: tObject);
    procedure Button16Click(Sender: tObject);
    procedure Button17Click(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure Button5Click(Sender: tObject);
    procedure Button7Click(Sender: tObject);
    procedure Button8Click(Sender: tObject);
    procedure Button18Click(Sender: tObject);
    procedure Button19Click(Sender: tObject);
    procedure Button20Click(Sender: tObject);
    procedure Button21Click(Sender: tObject);
    procedure Button22Click(Sender: tObject);
    procedure Button23Click(Sender: tObject);
    procedure Button24Click(Sender: tObject);
    procedure Button25Click(Sender: tObject);
    procedure Button26Click(Sender: tObject);
    procedure Button27Click(Sender: tObject);
    procedure Button28Click(Sender: tObject);
    procedure Button29Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
  private
    { Private declarations }
    wCancela :Boolean;
    wCopiar  :Integer;
    sCampo1,
    sCampo2,
    sCampo3,
    sCampo4 :String;

    function IncrementaRegistro(Tabela: String;Chave_Registro: String):Integer;

    Function achou_Ultimo_acerto(pRefer:String):Boolean;
    Function VerificaTraco(wRefer:String):Boolean;
    Function AchouNF(sNumEmpresa,sNumNF:String):Boolean;

    procedure Exclui_Movto_Kardex(pRefer:String);
    procedure Atualiza_Flag_Item_Pedido(sFlag,sRegistro:String);
    procedure Atualiza_Flag_Item_NotaFiscal(sFlag,sRegistro:String);
    procedure Atualiza_Flag_Pedido(sCodPedido,sEmpresa: String);
    procedure Atualiza_Flag_Nota(sEmpresa,sNumNota,sTipoDoc:String);
    procedure Busca_Ult_Compra(sProduto:String);
  public
    { Public declarations }
  end;

var
  FrmManutencao: TFrmManutencao;

implementation

uses DataCad, DmProdu, DataMov2, Men0001, iniciodb, DataMov, uteis;

{$R *.dfm}

procedure TFrmManutencao.Button30Click(Sender: TObject);
var
  rec, cont : integer;

begin
  if MessageDlg('Confirma a reordenação dos itens do Pedido?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
    exit;
  Application.ProcessMessages;
  qAux.Close;
  qAux.SQL.Text := 'SELECT PED_CODIGO, EMP_CODIGO FROM PED0000 ORDER BY PED_CODIGO';
  qAux.Open;
  PrBar.Max := qAux.RecordCount;
  cont := 0;
  while not qAux.Eof do
  begin
    Inc(cont);
    if (cont / 100) = Int(Cont / 100) then
      PrBar.Position := cont;
    qAux2.Close;
    qAux2.SQL.Text := 'SELECT PRF_REGISTRO FROM PED_IT01 WHERE PED_CODIGO = ' + QuotedStr(qAux.FieldByName('PED_CODIGO').AsString) + ' AND EMP_CODIGO = ' + QuotedStr(qAux.FieldByName('EMP_CODIGO').AsString );
    qAux2.Open;
    rec := 0;
    while not qAux2.Eof do
    begin
      Inc(rec);
      ExecSql('UPDATE PED_IT01 SET PRF_SEQUENCIA = ' + IntToStr(rec) + ' WHERE PRF_REGISTRO =  ' + qAux2.FieldByName('PRF_REGISTRO').AsString );
      qAux2.Next;
    end;
    qAux.Next;
  end;
  PrBar.Max := 0;
  PrBar.Position := 0;
  MessageDlg('Processo Concluído.', mtInformation, [mbOk], 0);
end;


procedure TFrmManutencao.Button31Click(Sender: TObject);
var
  saldoProduto: double;
  kasRegistro: integer;
begin
  inherited;
  if cbAlmoxarifado.idRetorno = '' then
  begin
    uteis.Aviso('Escolha um Almoxarifado para o saldo');
    Exit;
  end;
  qAux.Close;
  qAux.SQL.Text := 'SELECT * FROM PRD0000 WHERE PRD_GERENCIA_LOTE = ''S'' ORDER BY PRD_CODIGO';
  qAux.Open;
  while not qAux.Eof do
  begin
    saldoProduto := BuscaUmDadoSqlAsFloat('SELECT SUM(PRDL_SALDO) AS Saldo  FROM PRD_LOTE WHERE prd_codigo = ' + QuotedStr(qAux.FieldByName('PRD_CODIGO').AsString)  );
    if saldoProduto > 0  then
    begin
        ExecSql('INSERT INTO kardex (' +
                   'emp_codigo, ' +
                   'kar_tipo_registro, ' +
                   'kar_entrada_saida, ' +
                   'PRD_REFER,' +
                   'prd_codigo,  ' +
                   'kar_quantidade, ' +
                   'KAR_SALDO, ' +
                   'amx_codigo, ' +
                   'data_hora,' +
                   'usu_codigo, ' +
                   'KAR_UNIDADE_MEDIDA, ' +
                   'KAR_OBSERVACAO' +
                   ') ' +
                   ' VALUES (' +
                   QStr(dbInicio.Empresa.EMP_CODIGO) + ',' +
                   qStr('NOV') + ',' +
                   qStr('E') + ',' +
                   qStr(qAux.FieldByName('PRD_REFER').AsString) + ',' +
                   qStr(qAux.FieldByName('PRD_CODIGO').AsString) + ',' +
                   FloatToSql(0) + ',' +
                   FloatToSql(saldoProduto) + ',' +
                   qStr(cbAlmoxarifado.idRetorno) + ',' +
                   DateTimeToSql(Now) + ',' +
                   DBInicio.Usuario.CODIGO + ',' +
                   qStr(qAux.FieldByName('PRD_UND').AsString) + ',' +
                   qStr('MANUTENÇÃO TÉCNICA NOVI') +
                   ')'
              );
        kasRegistro := BuscaUmDadoSqlAsInteger('SELECT KAS_REGISTRO FROM KARDEX_ALMOX_SALDO  kas  WHERE prd_codigo = '+ qStr(qAux.FieldByName('PRD_CODIGO').AsString) + '  AND EMP_CODIGO = '+ QStr(dbInicio.Empresa.EMP_CODIGO)  + ' AND AMX_CODIGO =' + qStr(cbAlmoxarifado.idRetorno) + ' ORDER BY 1 desc' );
        if kasRegistro = 0 then
          ExecSql('INSERT INTO KARDEX_ALMOX_SALDO (' +
                   'EMP_CODIGO, ' +
                   'AMX_CODIGO, ' +
                   'PRD_CODIGO, ' +
                   'KAS_SALDO, ' +
                   'KAS_DATA_HORA' +
                   ')' +
                   'VALUES (' +
                   QStr(dbInicio.Empresa.EMP_CODIGO) + ',' +
                   qStr(cbAlmoxarifado.idRetorno) + ',' +
                   qStr(qAux.FieldByName('PRD_CODIGO').AsString) + ',' +
                   FloatToSql(saldoProduto) + ',' +
                   DateTimeToSql(Now) +
                   ')'
                 )
        else
          ExecSql('UPDATE KARDEX_ALMOX_SALDO SET ' +
                   ' KAS_SALDO =  ' + FloatToSql(saldoProduto) + ',' +
                   ' KAS_DATA_HORA = ' + DateTimeToSql(Now) +
                   ' WHERE EMP_CODIGO = ' + QStr(dbInicio.Empresa.EMP_CODIGO) +
                   ' AND AMX_CODIGO = ' + qStr(cbAlmoxarifado.idRetorno) +
                   ' AND PRD_CODIGO = ' + qStr(qAux.FieldByName('PRD_CODIGO').AsString)
                  );

    end;

    qAux.Next;

  end;
  ExecSql('DELETE FROM KARDEX_ALMOX_SALDO' +
           ' WHERE AMX_CODIGO = ' + qStr('') +
           ' OR AMX_CODIGO IS NULL' +
           ' OR EMP_CODIGO = ' + qStr('') +
           ' OR EMP_CODIGO IS NULL'
          );


  uteis.Aviso('Processo Executado com Sucesso.');
end;

procedure TFrmManutencao.Button32Click(Sender: TObject);
var
  rec, cont : integer;
begin
  if MessageDlg('Confirma a reordenação dos itens das Fichas Técnicas?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
    exit;
  Application.ProcessMessages;
  qAux.Close;
  qAux.SQL.Text := 'SELECT PRD_REFER, EMP_CODIGO FROM PRD0000 ORDER BY PRD_REFER';
  qAux.Open;
  PrBar.Max := qAux.RecordCount;
  cont := 0;
  while not qAux.Eof do
  begin
    Inc(cont);
    if (cont / 100) = Int(Cont / 100) then
      PrBar.Position := cont;
    qAux2.Close;
    qAux2.SQL.Text := 'SELECT FTI_REGISTRO FROM FTC_IT01 ' +
                      ' WHERE PRD_REFER = ' + QuotedStr(qAux.FieldByName('PRD_REFER').AsString) + ' AND EMP_CODIGO = ' + QuotedStr(qAux.FieldByName('EMP_CODIGO').AsString );
    qAux2.Open;
    rec := 0;
    while not qAux2.Eof do
    begin
      Inc(rec);
      ExecSql('UPDATE FTC_IT01 SET FTI_SEQUENCIA = ' + IntToStr(rec) + ' WHERE FTI_REGISTRO =  ' + qAux2.FieldByName('FTI_REGISTRO').AsString );
      qAux2.Next;
    end;
    qAux.Next;
  end;
  PrBar.Max := 0;
  PrBar.Position := 0;
  MessageDlg('Processo Concluído.', mtInformation, [mbOk], 0);
end;

procedure TFrmManutencao.Button33Click(Sender: TObject);
var
  tabela, campo, chavePrimaria, tipoChavePrimaria, sql: string;
  valorChavePrimaria : variant;
  j : integer;
begin
  inherited;
  qTabela.Close;
  qTabela.SQL.Text :=  'SELECT DISTINCT  TRIM(rf.RDB$RELATION_NAME) AS TABELA ' +
                       ' FROM RDB$RELATION_FIELDS rf ' +
                       ' JOIN RDB$RELATIONS r ON rf.RDB$RELATION_NAME = r.RDB$RELATION_NAME ' +
                       ' WHERE r.RDB$VIEW_BLR IS NULL ' +
                       '   AND r.RDB$SYSTEM_FLAG = 0 ';
  qTabela.Open;
  qTabela.Last;
  pbTabela.Min := 0;
  pbTabela.Max := qTabela.RecordCount;
  pbTabela.Visible := True;
  pbCampo.Visible := True;
  qTabela.First;
  while not qTabela.EOF do
  begin
    pbTabela.Position := qTabela.RecNo;
    tabela := qTabela.FieldByName('TABELA').AsString;
    qCampo.Close;
    sqlCampo.SQL.Text := 'SELECT * FROM ' + Tabela ;
    try
      qCampo.Open;
      qCampo.Last;
    except on e: Exception do
      uteis.Aviso(tabela + ' - ' + e.Message);
    end;
    chavePrimaria := dbInicio.BuscaUmDadoSqlAsString(
                       ' SELECT TRIM(s.RDB$FIELD_NAME)' +
                       ' FROM RDB$RELATION_CONSTRAINTS rc ' +
                       ' JOIN RDB$INDEX_SEGMENTS s ON rc.RDB$INDEX_NAME = s.RDB$INDEX_NAME ' +
                       ' WHERE rc.RDB$CONSTRAINT_TYPE = ''PRIMARY KEY'' ' +
                       '     AND rc.RDB$RELATION_NAME = ' + QuotedStr(tabela)
                      );
    if chavePrimaria = '' then
    begin
      qTabela.Next;
      continue;
    end;
    tipoChavePrimaria := dbInicio.BuscaUmDadoSqlAsString(
                        ' SELECT ' +
                        '    CASE f.RDB$FIELD_TYPE ' +
                        '        WHEN 7 THEN ''INTEGER'' ' +
                        '        WHEN 8 THEN ''INTEGER'' ' +
                        '        WHEN 14 THEN ''STRING'' ' +
                        '        WHEN 37 THEN ''STRING'' ' +
                        '    END ' +
                        ' FROM RDB$RELATION_CONSTRAINTS rc ' +
                        ' JOIN RDB$INDEX_SEGMENTS s ON rc.RDB$INDEX_NAME = s.RDB$INDEX_NAME ' +
                        ' JOIN RDB$RELATION_FIELDS rf ON s.RDB$FIELD_NAME = rf.RDB$FIELD_NAME AND rf.RDB$RELATION_NAME = rc.RDB$RELATION_NAME ' +
                        ' JOIN RDB$FIELDS f ON rf.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME ' +
                        ' WHERE rc.RDB$CONSTRAINT_TYPE = ''PRIMARY KEY'' ' +
                        '    AND rc.RDB$RELATION_NAME = ' + QuotedStr(tabela)
                    );
    pbCampo.Min := 0;
    pbCampo.Max := qCampo.RecordCount;
    qCampo.First;
    while not qCampo.EOF do
    begin
      pbCampo.Position := qCampo.RecNo;
      valorChavePrimaria := qCampo.FieldByName(chavePrimaria).asVariant;

      for j := 0 to qCampo.FieldCount - 1 do
      begin
        if (qCampo.Fields[j].DataType = ftString) and (qCampo.Fields[j].Size >= 25)  then
        begin
          if existeApostrofo(qCampo.Fields[j].AsString) then
          begin
            sql := 'UPDATE ' + tabela +
                   ' SET ' + qCampo.Fields[j].FieldName + ' = ' + QuotedStr(retiraApostrofo(qCampo.Fields[j].AsString)) +
                   ' WHERE ' + chavePrimaria + ' = ' +  iif(tipoChavePrimaria = 'INTEGER', IntToStr(valorChavePrimaria), QuotedStr(valorChavePrimaria) );
            dbInicio.ExecSQL(sql);
          end;

        end;

      end;
      qCampo.Next;
    end;
    qCampo.ApplyUpdates(0);
    qTabela.Next;
  end;
  qTabela.Close;
  qCampo.Close;
  pbTabela.Visible := False;
  pbCampo.Visible := False;
  uteis.Aviso('Banco de Dados Processado com Sucesso.');
end;

procedure TFrmManutencao.Button3Click(Sender: tObject);
begin
   Close;
end;

procedure TFrmManutencao.FormShow(Sender: tObject);
begin
   inherited;
   wCancela := false;
   PrBar.Visible   := True;
   top  := 0;
   Left := 0;
end;

procedure TFrmManutencao.BtnCancelaClick(Sender: tObject);
begin
   wCancela := true;
end;

procedure TFrmManutencao.Button2Click(Sender: tObject);
var
wQTDE_RESER :Integer;
WPEd :string;
begin
   sCreen.Cursor := CrHourglass;
    wQTDE_RESER := 0;

    SqlCdsPesquisa.close;
    SqlCdsPesquisa.CommandText := 'Select p1.PRD_REFER from PRD0000 p1 , PRD_TIPO T1 WHERE p1.PTI_CODIGO = t1.PTI_CODIGO and T1.PTI_SIGLA = ''PA''';
    SqlCdsPesquisa.Open;
    PrBar.Max := SqlCdsPesquisa.RecordCount;
    SqlCdsPesquisa.First;

      while not SqlCdsPesquisa.Eof do
         begin

              wQTDE_RESER := 0;
              Wsql1 := 'select P1.PRF_QTDE,P2.PED_CODIGO,P2.PED_SITUACAO,P3.OPV_ATESTOQUE from PED_IT01 P1, ped0000 p2 ,OPV0000 P3';
              Wsql2 := ' where P1.PRD_REFER = '''+SqlCdsPesquisa.FieldByName('PRD_REFER').AsString+''' and P2.PED_CODIGO = P1.PED_CODIGO and P2.PED_SITUACAO = ''F'' and P3.OPV_CODIGO = P2.OPV_CODIGO and OPV_ATESTOQUE = ''S''';


              datamovimento2.sqlaux.Close;
              datamovimento2.sqlaux.sql.text := wSQL1 +wSQL2;
              datamovimento2.sqlaux.Open;
              datamovimento2.sqlaux.first;
                while not datamovimento2.sqlaux.Eof do
                   begin
                     if DataMovimento2.sqlaux.FieldByName('OPV_ATESTOQUE').AsString = 'S' then
                        wQTDE_RESER := (wQTDE_RESER + DataMovimento2.sqlaux.FieldByName('PRF_QTDE').AsInteger);

                      DataMovimento2.sqlaux.Next;
                   end;

                        wSQL3 := 'Update PRD0000 set  PRD_RESERVA = '+IntTOStr(wQTDE_RESER)+' where PRD_REFER = '''+SqlCdsPesquisa.FieldByName('PRD_REFER').AsString+'''';
                        DataCadastros.SQLConnection1.Execute(wSQL3,nil);

              SqlCdsPesquisa.Next;
              prbar.Position := prBar.Position+1;
         end;
    sCreen.Cursor := CrDefault;
    ShowMessage('Processo concluido');
end;

procedure TFrmManutencao.Button4Click(Sender: tObject);
var
wQTDE_PRD :Integer;
WPEd :string;
begin
   sCreen.Cursor := CrHourglass;
    wQTDE_PRD :=  0;

    SqlCdsPesquisa.close;
    SqlCdsPesquisa.CommandText := 'Select p1.PRD_REFER from PRD0000 p1 , PRD_TIPO T1 WHERE p1.PTI_CODIGO = t1.PTI_CODIGO and T1.PTI_SIGLA = ''PA''';
    SqlCdsPesquisa.Open;

    PrBar.Max := SqlCdsPesquisa.RecordCount;
    PrBar.Position := 0;
    SqlCdsPesquisa.First;

      while not SqlCdsPesquisa.Eof do
         begin

              wQTDE_PRD :=  0;
              Wsql1 := 'Select V1.PED_CODIGO,V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.OSV_STATUS from OSV0001 V1 Where V1.OSV_STATUS not in(''C'',''E'') and V1.PRD_REFER = '''+SqlCdsPesquisa.FieldByName('PRD_REFER').AsString+'''';

              datamovimento2.sqlaux.Close;
              datamovimento2.sqlaux.sql.text := wSQL1;
              datamovimento2.sqlaux.Open;
              datamovimento2.sqlaux.first;
                while not datamovimento2.sqlaux.Eof do
                   begin
                        IF (datamovimento2.sqlaux.FieldByName('OSV_STATUS').AsString <> 'C') and (datamovimento2.sqlaux.FieldByName('OSV_STATUS').AsString <> 'C') then 
                           wQTDE_PRD := (wQTDE_PRD + DataMovimento2.sqlaux.FieldByName('OSV_QTDE').AsInteger);
                      DataMovimento2.sqlaux.Next;
                   end;
                        wSQL3 := 'Update PRD0000 set PRD_SALDOPRODUCAO = '+IntTOStr(wQTDE_PRD)+' where PRD_REFER = '''+SqlCdsPesquisa.FieldByName('PRD_REFER').AsString+'''';
                        DataCadastros.SQLConnection1.Execute(wSQL3,nil);

              SqlCdsPesquisa.Next;
              prbar.Position := prBar.Position+1;
         end;
    sCreen.Cursor := CrDefault;
    ShowMessage('Processo concluido');
end;

procedure TFrmManutencao.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   DataCadastros.sqlUpdate.Close;
   inherited;
   Action := CaFree;
end;

procedure TFrmManutencao.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmManutencao := Nil;
end;

procedure TFrmManutencao.TabSheet3Enter(Sender: tObject);
begin
   DsPesquisa.DataSet := CdsConcluir;
end;

procedure TFrmManutencao.Button6Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
       SqlFlag_nota.Close;
       SqlFlag_nota.Active := True;
       SqlFlag_nota.DisableControls;
       SqlFlag_nota.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlFlag_nota.RecordCount;
       while not SqlFlag_nota.Eof do
        begin
           if ((SqlFlag_notaOPV_ATESTOQUE.AsString = 'S')
           AND(SqlFlag_notaOPE_ESTOQUE.AsString = 'S')
           AND(SqlFlag_notaPTI_ATUALIZAR_ESTOQUE.AsString = 'S')) then
              begin
                 if (SqlFlag_notaPGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                    begin
                       Atualiza_Flag_Item_NotaFiscal('S',SqlFlag_notaNF_REGISTRO.AsString);
                    end
                 else
                 if (SqlFlag_notaPGR_ATUALIZA_ESTOQUE.IsNull) then
                    begin
                       Atualiza_Flag_Item_NotaFiscal('S',SqlFlag_notaNF_REGISTRO.AsString);
                    end;
              end
           else
              begin
                 Atualiza_Flag_Item_NotaFiscal('N',SqlFlag_notaNF_REGISTRO.AsString);
              end;
           SqlFlag_nota.Next;
           PrBar.Position := PrBar.Position + 1;
        end;
     finally
        uteis.aviso('Atualização efefuada com sucesso !');
        Screen.Cursor := crDefault;
        PrBar.Position := 0;
        SqlFlag_nota.Close;
     end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar o Flag do Item da Nota Fiscal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Button9Click(Sender: tObject);
var
X :integer;
WCodigoRefer :String;

begin
   try
     Screen.Cursor := crhourglass;
     try
       SqlCdspesquisa.Close;
       SqlCdsPesquisa.CommandText := 'Select PRD_REFER from PRD0000 order by PRD_REFER';
       SqlCdsPesquisa.Open;
       PrBar.Max := sqlCdspesquisa.RecordCount;
       PrBar.Position := 0;
       SqlCdsPesquisa.First;
       while not sqlCdsPEsquisa.Eof do
        begin
           if verificaTRaco(sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString) = true then
              begin
                 wCodigoRefer := Copy(sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString,1,(wCopiar-1));
                 DataCadastros.SQLConnection1.Execute('Update PRD_ENSA set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update PED_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update ALMOX_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update CdBAR001 set CB_PRD_REFER = '''+WCodigoRefer+''' where CB_PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update CEL_MOV03 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update COT_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update ENF_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 //DataCadastros.SQLConnection1.Execute('Update EPM_0000 set PRD_REFER_ITENS = '''+WCodigoRefer+''' where PRD_REFER_ITENS = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update FOR_PROD set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update FTC0000 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update FTC_IT01 set PRD_REFER_ITENS = '''+WCodigoRefer+''' where PRD_REFER_ITENS = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update NF_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update OCP_IT01 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update OSV0001 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update OSV_IT02 set PRD_REFER_ITENS = '''+WCodigoRefer+''' where PRD_REFER_ITENS = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update PED_EB02 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('Update PED_EB03 set PRD_REFER = '''+WCodigoRefer+''' where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
                 DataCadastros.SQLConnection1.Execute('delete from PRD0000 where PRD_REFER = '''+sqlCdsPEsquisa.FieldByName('PRD_REFER').AsString+'''',Nil);
              end;
           sqlCdsPEsquisa.Next;
           prBar.Position := prBar.Position +1;
           Application.ProcessMessages;
        end;
     finally
       Screen.Cursor := crDefault;
       sqlCdsPEsquisa.Close;
       prBar.Position := 0;
       uteis.aviso('Processo concluido com sucesso !');
     end;
   except
   on E:EDataBaseError do
     begin
        uteis.erro  (pchar('Erro ao abrir a Tabela !'+#13#10+
                   'Mensagem erro: '+e.message));
     end;
   end;
end;

function TFrmManutencao.VerificaTraco(wRefer: String): Boolean;
var
n:integer;
begin
  {#45}
  result := false;
  wCopiar := 0;
   for n := 1 to Length(wREfer) do
      begin
           if WRefer[N] = Chr(45) then
             begin
              Result := true;
              wCopiar := n;
             end
      end;
end;

procedure TFrmManutencao.Button10Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsPesquisa.RecordCount;
       SqlCdsPesquisa.DisableControls;
       while not SqlCdsPesquisa.Eof do
        begin
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='UpDate CEL_MOV03 set CEM_TUPUNIT = '''+SqlCdsPesquisa.FieldByName('FTC_TUP').AsString+''' WHERE CEM_REGISTRO = '''+SqlCdsPesquisa.FieldByName('CEM_REGISTRO').AsString+'''';
            DataCadastros.sqlUpdate.Execsql;
            PrBar.Position := PrBar.Position + 1;
            SqlCdsPesquisa.Next;
        end;
     finally
        Screen.Cursor := crDefault;
        uteis.aviso('Concluído com sucesso !');
        SqlCdsPesquisa.EnableControls;
        SqlCdsPesquisa.Close;
     end;
   except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao Atribuir o Tup no relatório ! '+#13#10+
                'Mensagem erro: '+e.message));
   end;
end;

procedure TFrmManutencao.Button11Click(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      try
        wSql1  := 'select EMP_CODIGO,PAG_CODIGO, cast(Count(*) as integer) AS NPARCELAS From PAG_PC01 Group by EMP_CODIGO,PAG_CODIGO ';
        wOrdem := ' order by EMP_CODIGO,PAG_CODIGO';
        SqlCdsNparcelas.Close;
        SqlCdsNparcelas.CommandText := wSql1 + wOrdem;
        SqlCdsNparcelas.Open;
        SqlCdsNparcelas.First;
        PrBar.Position := 0;
        PrBar.Max := SqlCdsNparcelas.RecordCount;
        SqlCdsNparcelas.DisableControls;
        while not SqlCdsNparcelas.Eof do
         begin
             wSql1      := 'Update PAG_PC01 set PPC_NPARCELAS = '''+SqlCdsNparcelasNPARCELAS.AsString+'''';
             wSeleciona := ' where EMP_CODIGO = '''+SqlCdsNparcelasEMP_CODIGO.AsString+''' and PAG_CODIGO = '''+SqlCdsNparcelasPAG_CODIGO.AsString+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
             DataCadastros.sqlUpdate.Execsql;
             PrBar.Position := PrBar.Position +1;
             SqlCdsNparcelas.Next;
         end;
      finally
        Screen.Cursor := crDefault;
        SqlCdsNparcelas.EnableControls;
        SqlCdsNparcelas.Close;
        uteis.aviso('Concluído com sucesso !');
        PrBar.Position := 0;
     end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Contas a pagar ! '+#13#10+
                  'Mensagem erro: '+e.message));
    end;
end;

procedure TFrmManutencao.Button12Click(Sender: tObject);
Var
  wChave : Integer;
begin
    try
      Screen.Cursor := crHourGlass;
      try
        SqlCdsOsv.Close;
        SqlCdsOsv.CommandText := 'Select OSV_CODIGO from OSV0001 ';
        SqlCdsOsv.Open;
        SqlCdsOsv.DisableControls;
        SqlCdsOsv.First;
        PrBar.Position := 0;
        PrBar.Max      := SqlCdsOsv.RecordCount;
        wChave         := 1;
        while not SqlCdsOsv.eof do
         begin
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :='Update OSV0001 SET OSV_REGISTRO = '''+IntToStr(wChave)+''' where OSV_CODIGO = '''+SqlCdsOsvOSV_CODIGO.AsString+'''';
             DataCadastros.sqlUpdate.Execsql;
             PrBar.Position := PrBar.Position +1;
             Inc(wchave);
             SqlCdsOsv.Next;
         end;
      finally
         Screen.Cursor := crDefault;
         SqlCdsOsv.EnableControls;
         SqlCdsOsv.Close;
         uteis.aviso('Chave primaria corrigido com sucesso !');
         PrBar.Position := 0;
      end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Corrigir o Chave primaria da Tabela OSV0000 ! '+#13#10+
                  'Mensagem erro: '+e.message));
    end;
end;

procedure TFrmManutencao.Button13Click(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      try
        if (not SqlCdsReserva.Active) then
           SqlCdsReserva.Active := True;
        PrBar.Position := 0;
        PrBar.Max      := SqlCdsReserva.RecordCount;
        SqlCdsReserva.DisableControls;
        SqlCdsReserva.First;
        while not SqlCdsReserva.Eof do
         begin
             wSql1      := 'Update PRD0000 SET PRD_RESERVA = (PRD_RESERVA + '+ValorAmericano(SqlCdsReservaWQTDE.AsString)+')';
             wSeleciona := 'where prd_refer = '''+SqlCdsReservaPRD_REFER.AsString+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Execsql;
             //
             SqlCdsReserva.Next;
             PrBar.Position := PrBar.Position + 1;
         end;
      finally
        Screen.Cursor := crDefault;
        SqlCdsReserva.Close;
        SqlCdsReserva.EnableControls;
        uteis.aviso('Correçao da RESERVA concluida com sucesso !');
        PrBar.Position := 0;
      end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Corrigir a Qtde Reservada da Tabela PRD0000 ! '+#13#10+
                  'Mensagem erro : '+e.message));
    end;
end;

procedure TFrmManutencao.Button14Click(Sender: tObject);
begin
   if (dbInicio.Empresa.wMultiAlmox = 'S') then
      begin
         try
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='Update ENF_IT01 SET AMX_CODIGO = ''002'' WHERE AMX_CODIGO IS NULL''';
           DataCadastros.sqlUpdate.Execsql;
         except
           on E:EDataBaseError do
             begin
                uteis.erro  (pchar('Erro ao atribuir o Flag na Notas fiscais de Entrada !'+#13#10+
                           'Mensagem erro: '+e.Message));
             end;
         end;
         //
         try
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='Update ENF0001 SET AMX_CODIGO = ''002'' WHERE AMX_CODIGO IS NULL''';
           DataCadastros.sqlUpdate.Execsql;
         except
           on E:EDataBaseError do
             begin
                uteis.erro  (pchar('Erro ao atribuir o Flag na Notas fiscais de Entrada !'+#13#10+
                           'Mensagem erro: '+e.Message));
             end;
         end;
      end;
   //
   try
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='Update ENF0001 SET ENF_TIPO_NF_ENTRADA = ''N'' WHERE ENF_TIPO_NF_ENTRADA IS NULL''';
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atribuir o Flag na Notas fiscais de Entrada !'+#13#10+
                     'Mensagem erro: '+e.Message));
       end;
   end;
   try
     Screen.Cursor := crHourGlass;
     try
       SqlCdsFlag.Close;
       SqlCdsFlag.Active := True;
       SqlCdsFlag.DisableControls;
       SqlCdsFlag.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsFlag.RecordCount;
       while not SqlCdsFlag.Eof do
        begin
           if ((SqlCdsFlagOPV_ATESTOQUE.AsString = 'S')
           AND(SqlCdsFlagPTI_ATUALIZAR_ESTOQUE.AsString = 'S')) then
              begin
                 if (SqlCdsFlagPGR_ATUALIZA_ESTOQUE.AsString = 'S') then
                    begin
                       Atualiza_Flag_Item_Pedido('S',SqlCdsFlagPRF_REGISTRO.AsString);
                       Atualiza_Flag_Pedido(SqlCdsFlagPED_REGISTRO.AsString,
                                            SqlCdsFlagEMP_CODIGO.AsString);
                    end
                 else
                 if (SqlCdsFlagPGR_ATUALIZA_ESTOQUE.IsNull) then
                    begin
                       Atualiza_Flag_Item_Pedido('S',SqlCdsFlagPRF_REGISTRO.AsString);
                       Atualiza_Flag_Pedido(SqlCdsFlagPED_REGISTRO.AsString,
                                            SqlCdsFlagEMP_CODIGO.AsString);
                    end;
              end
           else
              begin
                 Atualiza_Flag_Item_Pedido('N',SqlCdsFlagPRF_REGISTRO.AsString);
                 Atualiza_Flag_Pedido(SqlCdsFlagPED_REGISTRO.AsString,
                                      SqlCdsFlagEMP_CODIGO.AsString);
              end;
           SqlCdsFlag.Next;
           PrBar.Position := PrBar.Position + 1;
        end;
     finally
        uteis.aviso('Atualização efefuada com sucesso !');
        Screen.Cursor := crDefault;
        PrBar.Position := 0;
        SqlCdsFlag.Close;
     end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar o Flag do Item do Pedido !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Atualiza_Flag_Item_Pedido(sFlag,sRegistro: String);
begin
   try
     if (sFlag = 'S') then
        wSQL1   := 'Update PED_IT01 SET PRF_FLAG_ATUALIZA_ESTOQUE = ''S'',PRF_ORIGEM_ITEM = ''O'''
     else
        wSQL1   := 'Update PED_IT01 SET PRF_FLAG_ATUALIZA_ESTOQUE = ''N'',PRF_ORIGEM_ITEM = ''O''';
     wSeleciona := ' where PRF_REGISTRO = '''+sRegistro+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSQL1+wSeleciona;
     DataCadastros.sqlUpdate.Execsql;
     //
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar o Flag do item do Pedido !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Atualiza_Flag_Pedido(sCodPedido,sEmpresa: String);
Var
  wDupl :String[1];
begin
   try
     wDupl := '';
     if (ExtrairLetra(Trim(SqlPedidosPED_CODIGO.AsString))<>'') then
        wDupl := 'S'
     else
        wDupl := 'N';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='Update PED0000 SET PED_FLAG_PED_DUPL = '''+wDupl+''' where PED_REGISTRO = '''+sCodPedido+''' AND EMP_CODIGO = '''+sEmpresa+'''';
     DataCadastros.sqlUpdate.Execsql;
     //
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar o Flag do Pedido !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Button15Click(Sender: tObject);
Var
  sLetra : String;
begin
   try
     Screen.Cursor := crHourGlass;
     try
       SqlCdsFlagNF.Close;
       SqlCdsFlagNF.Active := True;
       SqlCdsFlagNF.DisableControls;
       SqlCdsFlagNF.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsFlagNF.RecordCount;
       while not SqlCdsFlagNF.Eof do
        begin
           wSql1      := 'Update NF0001 SET OPE_SEMVLCOM = '''+SqlCdsFlagNFOPE_SEMVLCOM.AsString+'''';
           wSeleciona := ' where NF_REGISTRO = '''+SqlCdsFlagNFNF_REGISTRO.AsString+'''';
           //
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
           DataCadastros.sqlUpdate.Execsql;
           SqlCdsFlagNF.Next;
           PrBar.Position := PrBar.Position + 1;
        end;
{******************************}
       SqlCdsFlagNF2.Close;
       SqlCdsFlagNF2.Active := True;
       SqlCdsFlagNF2.DisableControls;
       SqlCdsFlagNF2.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsFlagNF2.RecordCount;
       while not SqlCdsFlagNF2.Eof do
        begin
           sLetra := '';
           if (SqlCdsFlagNF2PRF_ORIGEM_ITEM.AsString = 'D')
           and(SqlCdsFlagNF2PRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S') then
              begin
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_FLAG_ATUALIZA_ESTOQUE = ''N'' WHERE PRF_REGISTRO = '''+SqlCdsFlagNF2PRF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
                 //
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''N'' WHERE NF_REGISTRO = '''+SqlCdsFlagNF2NF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
              end;
           if (SqlCdsFlagNF2PRF_ORIGEM_ITEM.AsString = 'O')
           and(SqlCdsFlagNF2PRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S')
           and(SqlCdsFlagNF2NF_FLAG_ATUALIZA_ESTOQUE.IsNull) then
              begin
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''S'' WHERE NF_REGISTRO = '''+SqlCdsFlagNF2NF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
              end;
           if (SqlCdsFlagNF2PRF_ORIGEM_ITEM.AsString = 'O')
           and(SqlCdsFlagNF2PRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'N')
           and(SqlCdsFlagNF2NF_FLAG_ATUALIZA_ESTOQUE.IsNull) then
              begin
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''N'' WHERE NF_REGISTRO = '''+SqlCdsFlagNF2NF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
              end;
           if (SqlCdsFlagNF2PRF_ORIGEM_ITEM.IsNull) then
              begin
                 sLetra := ExtrairLetra(SqlCdsFlagNF2PED_CODIGO.AsString);
                 if (sLetra = '') then
                    begin
                       DataCadastros.sqlUpdate.Close;
                       DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_ORIGEM_ITEM = ''O'' WHERE PRF_REGISTRO = '''+SqlCdsFlagNF2PRF_REGISTRO.AsString+'''';
                       DataCadastros.sqlUpdate.Execsql;
                    end;
              end;

           sLetra := ExtrairLetra(SqlCdsFlagNF2PED_CODIGO.AsString);
           if (sLetra <> '') then
              begin
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_ORIGEM_ITEM = ''D'' WHERE PRF_REGISTRO = '''+SqlCdsFlagNF2PRF_REGISTRO.AsString+'''';
                  DataCadastros.sqlUpdate.Execsql;
                  //
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''N'' WHERE NF_REGISTRO = '''+SqlCdsFlagNF2NF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
                 //
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_FLAG_ATUALIZA_ESTOQUE = ''N'' WHERE PRF_REGISTRO = '''+SqlCdsFlagNF2PRF_REGISTRO.AsString+'''';
                 DataCadastros.sqlUpdate.Execsql;
              end;
           SqlCdsFlagNF2.Next;
           PrBar.Position := PrBar.Position + 1;
        end;
     finally
        Screen.Cursor := crDefault;
        uteis.aviso('Atualização efefuada com sucesso !');
        PrBar.Position := 0;
        SqlCdsFlagNF.Close;
        SqlCdsFlagNF2.Close;
     end;
   except
     on E:EDataBaseError do
       begin
          Screen.Cursor := crDefault;
          uteis.erro  (pchar('Erro ao atualizar o Flag da Nota Fiscal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Button16Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
       SqlCdsTabela.Close;
       SqlCdsTabela.CommandText := 'SELECT T1.* FROM CLI0000 T1';
       SqlCdsTabela.Open;
       SqlCdsTabela.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsTabela.RecordCount;
       while not SqlCdsTabela.Eof do
        begin
           wSql1 := 'Update CLI0000 T1 SET '+
                    'CLI_RAZAO = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_RAZAO').Asstring)+''','+
                    'CLI_FANTASIA = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_FANTASIA').Asstring)+''','+
                    'CLI_ENDERE = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_ENDERE').Asstring)+''','+
                    'CLI_BAIRRO = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_BAIRRO').Asstring)+''','+
                    'CLI_CIDADE = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_CIDADE').Asstring)+''','+
                    'CLI_CONTATO = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_CONTATO').Asstring)+''','+
                    'CLI_ENDENTR = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_ENDENTR').Asstring)+''','+
                    'CLI_CIDENTR = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_CIDENTR').Asstring)+''','+
                    'CLI_ENDFAT = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_ENDFAT').Asstring)+''','+
                    'CLI_CIDFAT = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_CIDFAT').Asstring)+''','+
                    'CLI_MOTIVO = '''+Substitui_Apostrofo(SqlCdsTabela.FieldByName('CLI_MOTIVO').Asstring)+'''';
           wSeleciona := ' where T1.CLI_CODIGO = '''+SqlCdsTabela.FieldByName('CLI_CODIGO').Asstring+'''';
           //
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
           DataCadastros.sqlUpdate.Execsql;
           //
           PrBar.Position := PrBar.Position + 1;
           SqlCdsTabela.Next;
        end;
     finally
        Screen.Cursor := crDefault;
        uteis.aviso('Atualização efetuada com sucesso !');
        PrBar.Position := 0;
        SqlCdsTabela.Close;
     end;
   except
      on E:EDataBaseError do
         begin
            uteis.erro  (pchar('Erro ao substituir o apostrofo !'+#13#10+
                       'Mensagem erro: '+e.message));
         end;
   end;
end;

procedure TFrmManutencao.Button17Click(Sender: tObject);
Var
  wDupl : String[1];
begin
   try
     Screen.Cursor := crHourGlass;
     try
       if (not SqlCdsReserva.Active) then
          SqlCdsReserva.Active := True;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsReserva.RecordCount;
       SqlCdsReserva.DisableControls;
       SqlCdsReserva.First;
       while not SqlCdsReserva.Eof do
        begin
            wSql1      := 'Update PRD0000 SET PRD_RESERVA = (PRD_RESERVA + '+ValorAmericano(SqlCdsReservaWQTDE.AsString)+')';
            wSeleciona := 'where prd_refer = '''+SqlCdsReservaPRD_REFER.AsString+'''';
            //
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSeleciona,'','');
            DataCadastros.sqlUpdate.Execsql;
            //
            SqlCdsReserva.Next;
            PrBar.Position := PrBar.Position + 1;
        end;
     finally
       Screen.Cursor := crDefault;
       SqlCdsReserva.EnableControls;
       SqlCdsReserva.Close;
       uteis.aviso('Concluida com sucesso !');
       PrBar.Position := 0;
     end;
   except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao Corrigir o Flag do Pedido Duplicado ! '+#13#10+
                 'Mensagem erro: '+e.message));
   end;
end;

procedure TFrmManutencao.Button1Click(Sender: tObject);
begin
   try
     screen.Cursor := crHourGlass;
     try
       if (SqlCdsSaldo.Active = False) then
          SqlCdsSaldo.Active := True;
       SqlCdsSaldo.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsSaldo.RecordCount;
       while not (SqlCdsSaldo.Eof) do
        begin
           if (achou_Ultimo_acerto(SqlCdsSaldoPRD_REFER.AsString) = True) then
              Exclui_Movto_Kardex(SqlCdsSaldoPRD_REFER.AsString);
           PrBar.Position := PrBar.Position + 1;  
           SqlCdsSaldo.Next;
        end;
     finally
        Screen.Cursor  := crDefault;
        PrBar.Position := 0;
        SqlCdsSaldo.Close;
        uteis.aviso('Concluído com sucesso !');
     end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao excluir movimento no Kardex !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;




function TFrmManutencao.achou_Ultimo_acerto(pRefer: String): Boolean;
Var
  sAno : String;
begin
    try
      wSQL1      := 'SELECT E1.PRD_REFER,E1.PES_DATA,E1.PES_HORA,E1.PES_FLAG_ACERTO,E1.PES_FLAG_CONTA FROM PRD_ENSA E1 ';
      wSeleciona := 'WHERE E1.PES_TIPDOC = ''AC'' AND E1.PRD_REFER = '''+pRefer+'''';
      wOrdem     := 'E1.PES_DATA DESC ';
      //
      SqlSaldoAcerto.Close;
      SqlSaldoAcerto.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'E1.');
      SqlSaldoAcerto.Open;
      //
      if (not SqlSaldoAcerto.IsEmpty) then
         begin
            sAno := copy(SqlSaldoAcertoPES_DATA.AsString,7,4);
            if (sAno = '2006') then
               Result := True
            else
               Result := False;
         end
      else
         begin
            {Nao achou nada referente ao ultimo acerto.
             Entao vamos pegar pelo primeiro lançamento de entrada}
            wSQL1      := 'SELECT E1.PRD_REFER,E1.PES_DATA,E1.PES_HORA,E1.PES_FLAG_ACERTO,E1.PES_FLAG_CONTA FROM PRD_ENSA E1 ';
            wSeleciona := 'WHERE E1.PRD_REFER = '''+pRefer+''' AND E1.PES_TIPO = ''E''';
            wOrdem     := 'E1.PES_DATA';
            //
            SqlSaldoAcerto.Close;
            SqlSaldoAcerto.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'E1.');
            SqlSaldoAcerto.Open;
            if (not SqlSaldoAcerto.IsEmpty) then
               begin
                  Result := False;
               end;
         end;
    except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao localizar o último acerto !'+#13#10+
                      'Mensagem erro : '+e.message));
        end;
    end;
end;

procedure TFrmManutencao.Exclui_Movto_Kardex(pRefer: String);
begin
   try
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='DELETE FROM PRD_ENSA WHERE PRD_REFER = '''+pRefer+''' AND PES_DATA <= ''12/31/2005''';
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao excluir o Movimento do Kardex !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFrmManutencao.Button5Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
       SqlCdsNF.Active := True;
       SqlCdsNF.First;
       PrBar.Position := 0;
       PrBar.Max      := SqlCdsNF.RecordCount;
       while not SqlCdsNF.Eof do
        begin
           if (AchouNF(SqlCdsNFEMP_CODIGO.AsString,SqlCdsNFFAT_CODIGO.AsString)) then
              begin
                 Atualiza_Flag_Nota(SqlCdsNFEMP_CODIGO.AsString,
                                    SqlCdsNFFAT_CODIGO.AsString,
                                    SqlCdsNFFPC_TIPODOC.AsString);
              end;
           SqlCdsNF.Next;
           PrBar.Position := PrBar.Position +1;
        end;
       SqlCdsNF.Close;
     except
       on E:EDataBaseError do
          begin
             uteis.erro  (pchar('Erro ao atualizar os dados da nota fiscal !'+#13#10+
                        'Mensagem erro: '+e.message));
          end;
     end;
   finally
      screen.Cursor := crDefault;
      uteis.aviso('Concluído com sucesso !');
      PrBar.Position := 0;
   end;
end;

function TFrmManutencao.AchouNF(sNumEmpresa, sNumNF: String): Boolean;
begin
   try
     wSql1      := 'SELECT T1.NF_NOTANUMBER FROM NF0001 T1 ';
     wSeleciona := 'WHERE T1.NF_NOTANUMBER = '''+sNumNF+''' AND T1.EMP_CODIGO = '''+sNumEmpresa+'''';
     //
     DataCadastros.sqlUpdate.close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
     DataCadastros.sqlUpdate.Open;
     if (DataCadastros.sqlUpdate.IsEmpty) then
        Result := False
     else
        Result := True;
     //
     DataCadastros.sqlUpdate.close;
   except
     on E:EDatabaseError do
       begin
          uteis.erro  (pchar('Erro ao localizar a Nota Fiscal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Atualiza_Flag_Nota(sEmpresa, sNumNota,
  sTipoDoc: String);
begin
   try
     wSql1      := 'Update NF0001 SET NF_TIPODOC = '''+sTipoDoc+'''';
     wSeleciona := ' WHERE EMP_CODIGO = '''+sEmpresa+''' AND NF_NOTANUMBER = '''+sNumNota+'''';
     //
     DataCadastros.sqlUpdate.close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
     DataCadastros.sqlUpdate.Execsql;
   except
     on e:EdataBaseerror do
       begin
          uteis.erro  (pchar('Erro ao atualizar a nota Fiscal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Atualiza_Flag_Item_NotaFiscal(sFlag,
  sRegistro: String);
begin
   try
     if (sFlag = 'S') then
        wSQL1   := 'Update NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''S'''
     else
        wSQL1   := 'Update NF_IT01 SET NF_FLAG_ATUALIZA_ESTOQUE = ''N''';
     wSeleciona := ' where NF_REGISTRO = '''+sRegistro+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSQL1+wSeleciona;
     DataCadastros.sqlUpdate.Execsql;
     //
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar o Flag do item da Nota Fiscal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmManutencao.Button7Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
       {Empenho Negativo}
       wSql1 := 'Update PRD0000 T1 SET PRD_EMPENHO = 0';// WHERE T1.PRD_EMPENHO <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA = 0';// WHERE T1.PRD_RESERVA <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var1 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR1 = 0';// WHERE T1.PRD_RESERVA_VAR1 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var2 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR2 = 0';// WHERE T1.PRD_RESERVA_VAR2 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var3 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR3 = 0';// WHERE T1.PRD_RESERVA_VAR3 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var4 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR4 = 0';// WHERE T1.PRD_RESERVA_VAR4 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var5 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR5 = 0';// WHERE T1.PRD_RESERVA_VAR5 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var6 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR6 = 0';// WHERE T1.PRD_RESERVA_VAR6 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var7 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR7 = 0';// WHERE T1.PRD_RESERVA_VAR7 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       {Reserva_Var8 Negativa}
       wSql1 := 'Update PRD0000 T1 SET PRD_RESERVA_VAR8 = 0';// WHERE T1.PRD_RESERVA_VAR8 <0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;
       Screen.Cursor := crDefault;
     except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao atualizar os dados !'+#13#10+
                      'Mensagem erro: '+e.Message));
        end;
     end;
   finally
      screen.Cursor := crDefault;
      uteis.aviso('Concluído com sucesso !');
   end;
end;

procedure TFrmManutencao.Button8Click(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      try
        if (not SqlCdsEstoque.Active) then
           SqlCdsEstoque.Active := True;
        PrBar.Position := 0;
        PrBar.Max      := SqlCdsEstoque.RecordCount;
        SqlCdsEstoque.DisableControls;
        SqlCdsEstoque.First;
        while not SqlCdsEstoque.Eof do
         begin
            if (Trim(SqlCdsEstoquePRD_REFER.AsString)<>'') then
               begin
                  {Busca a ultima Compra}
                  Busca_Ult_Compra(SqlCdsEstoquePRD_REFER.AsString);
                  //
                  FrmMenu.RwSqlGeralCmd.MontarSql      := False;
                  FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
                  FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
                  FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
                  FrmMenu.RwSqlGeralCmd.TipoSql        := Atualizar;
                  FrmMenu.RwSqlGeralCmd.Apelido        := '';
                  FrmMenu.RwSqlGeralCmd.Campos         := 'FOR_CODIGO = '+sCampo1+','+
                                                          'PRD_DT_ULT_COMPRA = '+sCampo3+','+
                                                          'PRD_VL_ULT_COMPRA = '+sCampo4+','+
                                                          'PRD_NF_ULT_COMPRA = '+sCampo2+'';
                  //
                  FrmMenu.RwSqlGeralCmd.Tabela         := 'PRD0000';
                  FrmMenu.RwSqlGeralCmd.Compartilhar   := 'PRODUTOS';
                  FrmMenu.RwSqlGeralCmd.Condicao       := 'PRD_CODIGO = '''+SqlCdsEstoquePRD_CODIGO.AsString+'''';
                  FrmMenu.RwSqlGeralCmd.MontarSql      := True;
                  //
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=FrmMenu.RwSqlGeralCmd.ComandoSql;
                  DataCadastros.sqlUpdate.Execsql;
                  //
               end;
            SqlCdsEstoque.Next;
            PrBar.Position := PrBar.Position + 1;
         end;
        //
      finally
        Screen.Cursor := crDefault;
        SqlCdsEstoque.Close;
        SqlCdsEstoque.EnableControls;
        uteis.aviso('Correçao da ultima compra concluida com sucesso !');
        PrBar.Position := 0;
      end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Atualizar a ultima compra na Tabela PRD0000 ! '+#13#10+
                  'Mensagem erro : '+e.message));
    end;
end;

procedure TFrmManutencao.Busca_Ult_Compra(sProduto: String);
begin
   sCampo1 := '';
   sCampo2 := '';
   sCampo3 := '';
   sCampo4 := '';
   //
   {Monta Sql}
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T1.ENF_PRECO,'+
                                           'T1.ENF_IT_NOTANUMBER,'+
                                           'T2.ENF_EMISSAO,'+
                                           'T1.FOR_CODIGO';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'PARAMETROS';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'ENF_IT01';
   FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN ENF0001 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) AND (T1.ENF_IT_NOTANUMBER = T2.ENF_NOTANUMBER) AND (T1.EMP_CODIGO = T2.EMP_CODIGO) '+
                                           'LEFT JOIN FOR0000 T3 ON (T3.FOR_CODIGO = T1.FOR_CODIGO) AND (T1.EMP_CODIGO = T3.EMP_CODIGO) ';
   FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.PRD_REFER = '''+sProduto+'''';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T2.ENF_EMISSAO DESC,'+
                                           'T1.ENF_PRECO,'+
                                           'T1.ENF_IT_NOTANUMBER desc ';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   SqlCdsUltCompra.Close;
   SqlCdsUltCompra.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
   SqlCdsUltCompra.Open;
   SqlCdsUltCompra.First;
   if (SqlCdsUltCompra.IsEmpty) then
      begin
         sCampo1 := 'null';
         sCampo2 := 'null';
         sCampo3 := 'null';
         sCampo4 := 'null';
      end
   else
      begin
         sCampo1 := chr(39)+SqlCdsUltCompraFOR_CODIGO.AsString+chr(39);
         sCampo2 := chr(39)+SqlCdsUltCompraENF_IT_NOTANUMBER.AsString+chr(39);
         sCampo3 := chr(39)+DataAmericana(SqlCdsUltCompraENF_EMISSAO.AsString)+chr(39);
         sCampo4 := ValorAmericano(SqlCdsUltCompraENF_PRECO.AsString);
      end;
   SqlCdsUltCompra.Close;
end;

procedure TFrmManutencao.Button18Click(Sender: tObject);
   var
      wData:TDateTime;
      wTime:TTime;
      iNumeroReg, iCodAcerto:Integer;
      sRefencia, pData, pHora:String;
begin

   try
      SqlItens.Close;
      SqlItens.CommandText := '   SELECT DISTINCT(X1.PRD_REFER) FROM PRD_ENSA X1';
      SqlItens.Open;
      SqlItens.First;
      PrBar.Position := 0;
      PrBar.Max      := SqlItens.RecordCount;
      while (not SqlItens.Eof) do
         begin
            sRefencia := SqlItensPRD_REFER.AsString;
            SqlAcertos.Close;
            SqlAcertos.CommandText := 'SELECT E1.PES_REGISTRO,E1.PES_DATA, E1.PES_HORA from PRD_ENSA E1  LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) WHERE E1.PES_TIPDOC = ''AC'' AND E1.PES_TIPO = ''E'' AND E1.PRD_REFER = '''+sRefencia+''' order by  e1.PES_REGISTRO desc';
            SqlAcertos.Open;
            if (not SqlAcertos.IsEmpty) then
               begin
                  SqlAcertos.First;
                  iCodAcerto :=  SqlAcertosPES_REGISTRO.AsInteger;
                  pData :=  SqlAcertosPES_DATA.AsString;
                  pHora :=  SqlAcertosPES_HORA.AsString;
               end
            else
               begin
                  iCodAcerto := 0;
                  pData := '';
                  pHora := '';
               end;
            if (pData <> '') then
               begin
                  try
                     SqlAtualizaFlag.Close;
                     SqlAtualizaFlag.CommandText := 'SELECT * FROM PRD_ENSA WHERE PES_TIPDOC = ''AC'' AND PRD_REFER = '''+sRefencia+''' ORDER BY PES_REGISTRO DESC';
                     SqlAtualizaFlag.Open;
                     SqlAtualizaFlag.First;
                     while (not SqlAtualizaFlag.Eof) do
                        begin
                           iNumeroReg := 0;
                           wData      := StrToDate(pData);
                           wTime      := StrToTime(pHora);
                           iNumeroReg := SqlAtualizaFlagPES_REGISTRO.AsInteger;
                           wSql1      := 'Update PRD_ENSA set PES_FLAG_CONTA = ''N''';
                           wSeleciona := 'where PRD_REFER = '''+sRefencia+''' AND PES_REGISTRO < '+IntToStr(iCodAcerto)+'';
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
                           DataCadastros.sqlUpdate.Execsql;
                           SqlAtualizaFlag.Next;
                        end;
                     SqlAtualizaFlag.Close;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao atualizar flag de acerto ! '+e.message))
                   end;
               end;
            PrBar.Position := PrBar.Position + 1;
            SqlItens.Next;
         end;
   finally
      uteis.aviso('Atualização efefuada com sucesso !');
      Screen.Cursor := crDefault;
      PrBar.Position := 0;
      SqlItens.Close;
   end;
end;

procedure TFrmManutencao.Button19Click(Sender: tObject);
   var
      iCodCidade:Integer;
begin
   try
     {atualiza correlativos }
      PrBar.Max := 0;
      PrBar.Position := 0;
      CONSULTATMP.Close;
      CONSULTATMP.CommandText := 'SELECT T3.CID_CODIGO,T3.CID_CIDADE,T3.CID_ESTADO FROM CID0000 T3';
      CONSULTATMP.Open;
      PrBar.Max := CONSULTATMP.RecordCount;
      CONSULTATMP.First;
      while (not CONSULTATMP.Eof) do
         begin
            Application.ProcessMessages;
            //
            //COM ACENTO
            if (not CONSULTATMP.FieldByName('CID_CODIGO').IsNull)and
               (not CONSULTATMP.FieldByName('CID_CIDADE').IsNull)and
               (not CONSULTATMP.FieldByName('CID_ESTADO').IsNull) then
               begin
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE CLI0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.CLI_CIDADE = '+RetornaNull(CONSULTATMP.FieldByName('CID_CIDADE').AsString)+' AND T1.CLI_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
                  //SEM ACENTO
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE CLI0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.CLI_CIDADE = '+RetornaNull(TiraAcento(CONSULTATMP.FieldByName('CID_CIDADE').AsString,true))+' AND T1.CLI_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE FOR0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.FOR_CIDADE = '+RetornaNull(CONSULTATMP.FieldByName('CID_CIDADE').AsString)+' AND T1.FOR_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
                  //SEM ACENTO
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE FOR0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.FOR_CIDADE = '+RetornaNull(TiraAcento(CONSULTATMP.FieldByName('CID_CIDADE').AsString,true))+' AND T1.FOR_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
               end;
           {proximo}
            CONSULTATMP.Next;
            PrBar.Position := (PrBar.Position  + 1);
         end;
      CONSULTATMP.Close;
      DataCadastros.sqlUpdate.Close;
      uteis.aviso('Processo Concluido....');
      Screen.Cursor := CrDefault;
   except
      on E:EdatabaseError do
         begin
            Screen.Cursor := CrDefault;
            uteis.erro  (pchar('Erro ao gravar arquivo !'+e.message));
         end;
   end;

end;

procedure TFrmManutencao.Button20Click(Sender: tObject);
begin
   try
     Screen.Cursor := crHourGlass;
     try
        if (uteis.confirmacao  ( 'CUIDADO!!!!!!!!!!!'+#13#10+
                                'Confirmar a exclusão de TODOS os XMLs e o zeramento do  generator da NFE?????????' )=mrYes) then
          begin
          {zeras os XML}
          wSql1 := 'delete from NF0001_XML';
          //
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=wSQL1;
          DataCadastros.sqlUpdate.Execsql;

          Screen.Cursor := crDefault;    ;
          {Zera Generator}
          wSql1 := 'SET GENERATOR GEN_LOTE TO 0';
          //
          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=wSQL1;
          DataCadastros.sqlUpdate.Execsql;
          uteis.aviso('Concluído com sucesso !');
          end;
        Screen.Cursor := crDefault;
     except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao atualizar os dados !'+#13#10+
                      'Mensagem erro: '+e.Message));
        end;
     end;
   finally
      screen.Cursor := crDefault;
   end;
end;

procedure TFrmManutencao.Button21Click(Sender: tObject);
var nota : string;
begin
    nota := EmptyStr;
  PrBar.Max      := 0;
  PrBar.Position := 0;
  DataMovimento.CdsNotaFiscal.Close;
  DataMovimento.CdsNotaFiscal.CommandText := 'SELECT * FROM NF0001 ORDER BY NF_NOTANUMBER';
  DataMovimento.CdsNotaFiscal.Open;
  DataMovimento.CdsReceber.Open;
  DataMovimento.CdsNotaFiscal.First;
  PrBar.Max := DataMovimento.CdsNotaFiscal.RecordCount;
  while not DataMovimento.CdsNotaFiscal.Eof do
  begin
    nota := DataMovimento.CdsNotaFiscalNF_NOTANUMBER.Value;
    if DataMovimento.CdsReceber.Locate('FAT_CODIGO', nota, []) then
    begin

      // VALORES FISCAIS
      DataMovimento.CdsReceber.Edit;
      DataMovimento.CdsReceberFAT_VL_IPI.AsString     := DataMovimento.CdsNotaFiscalNF_VL_IPI.AsString;
      DataMovimento.CdsReceberFAT_ALIQUOTA.AsString   := DataMovimento.CdsNotaFiscalNF_ALIQ_ICMS.AsString;
      DataMovimento.CdsReceberFAT_BASEICMS.AsString   := DataMovimento.CdsNotaFiscalNF_BASEICMS.AsString;
      DataMovimento.CdsReceberFAT_BASESUB.AsString    := DataMovimento.CdsNotaFiscalNF_VLBASESUBTRIB.AsString;
      DataMovimento.CdsReceberFAT_ICMSRET.AsString    := DataMovimento.CdsNotaFiscalNF_VL_SUBTRIB.AsString;
      DataMovimento.CdsReceber.Post;
      DataMovimento.CdsReceber.ApplyUpdates(0);
    end;
  DataMovimento.CdsNotaFiscal.Next;
  PrBar.Position := (PrBar.Position + 1);
  end;
  uteis.aviso('Valores fiscais ajustados com sucesso!');
  PrBar.Position := 0;
  DataMovimento.CdsNotaFiscal.Close;
  DataMovimento.CdsReceber.Close;
end;

procedure TFrmManutencao.Button22Click(Sender: tObject);
begin
  PrBar.Max      := 0;
  PrBar.Position := 0;
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='delete from NF_PC01' ;
  DataCadastros.sqlUpdate.Execsql;

  SQLNF_PC01.Open;
  if SQLNF_PC01.RecordCount <= 0 then
  begin
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='select * from FAT_PC01' ;
    DataCadastros.sqlUpdate.Open;
    DataCadastros.sqlUpdate.First;
    PrBar.Max := dbInicio.BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    FAT_PC01') ;
    while not DataCadastros.sqlUpdate.Eof do
    begin
      SQLNF_PC01.Insert;
//      if not DataCadastros.sqlUpdate.fieldbyname('FAT_REGISTRO').IsNull then
//       SQLNF_PC01FAT_REGISTRO.Value            := DataCadastros.sqlUpdate.fieldbyname('FAT_REGISTRO').Value;

      if not DataCadastros.sqlUpdate.fieldbyname('FAT_CODIGO').IsNull then
       SQLNF_PC01FAT_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('FAT_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_NUMER').IsNULL then
       SQLNF_PC01FPC_NUMER.Value             := DataCadastros.sqlUpdate.fieldbyname('FPC_NUMER').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('REP_CODIGO').IsNULL then
       SQLNF_PC01REP_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('REP_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('BAN_CODIGO').IsNULL then
       SQLNF_PC01BAN_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('BAN_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('CCT_CODIGO').IsNULL then
       SQLNF_PC01CCT_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('CCT_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('PCX_CODIGO').IsNULL then
       SQLNF_PC01PCX_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('PCX_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DTEMIS').IsNULL then
       SQLNF_PC01FPC_DTEMIS.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_DTEMIS').AsSQLTimeStamp;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_NPARCELAS').IsNULL then
       SQLNF_PC01FPC_NPARCELAS.Value         := DataCadastros.sqlUpdate.fieldbyname('FPC_NPARCELAS').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_COBNUM').IsNULL then
       SQLNF_PC01FPC_COBNUM.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_COBNUM').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_COBTIPO').IsNULL then
       SQLNF_PC01FPC_COBTIPO.Value           := DataCadastros.sqlUpdate.fieldbyname('FPC_COBTIPO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_TIPODOC').IsNULL then
       SQLNF_PC01FPC_TIPODOC.Value           := DataCadastros.sqlUpdate.fieldbyname('FPC_TIPODOC').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_SITPAG').IsNULL then
       SQLNF_PC01FPC_SITPAG.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_SITPAG').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS').IsNULL then
       SQLNF_PC01FPC_STATUS.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DESCTO').IsNULL then
       SQLNF_PC01FPC_DESCTO.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_DESCTO').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DTDESC').IsNULL then
       SQLNF_PC01FPC_DTDESC.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_DTDESC').AsSQLTimeStamp;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_VENCTO').IsNULL then
       SQLNF_PC01FPC_VENCTO.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_VENCTO').AsSQLTimeStamp;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_PAGTO').IsNULL then
       SQLNF_PC01FPC_PAGTO.Value             := DataCadastros.sqlUpdate.fieldbyname('FPC_PAGTO').AsSQLTimeStamp;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_VLPARC').IsNULL then
       SQLNF_PC01FPC_VLPARC.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_VLPARC').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_VLPAGO').IsNULL then
       SQLNF_PC01FPC_VLPAGO.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_VLPAGO').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_OBS').IsNULL then
       SQLNF_PC01FPC_OBS.Value               := DataCadastros.sqlUpdate.fieldbyname('FPC_OBS').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('CLI_CODIGO').IsNULL then
       SQLNF_PC01CLI_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('CLI_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_IMPDUP').IsNULL then
       SQLNF_PC01FPC_IMPDUP.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_IMPDUP').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_JUROS').IsNULL then
       SQLNF_PC01FPC_JUROS.Value             := DataCadastros.sqlUpdate.fieldbyname('FPC_JUROS').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_MULTA').IsNULL then
       SQLNF_PC01FPC_MULTA.Value             := DataCadastros.sqlUpdate.fieldbyname('FPC_MULTA').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_VL_RET').IsNULL then
       SQLNF_PC01FPC_VL_RET.Value            := DataCadastros.sqlUpdate.fieldbyname('FPC_VL_RET').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('EMP_CODIGO').IsNULL then
       SQLNF_PC01EMP_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('EMP_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('CCT_NOVO').IsNULL then
       SQLNF_PC01CCT_NOVO.Value              := DataCadastros.sqlUpdate.fieldbyname('CCT_NOVO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_PREVISAO').IsNULL then
       SQLNF_PC01FPC_PREVISAO.Value          := DataCadastros.sqlUpdate.fieldbyname('FPC_PREVISAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS_REMESSA').IsNULL then
       SQLNF_PC01FPC_STATUS_REMESSA.Value    := DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS_REMESSA').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DATA_REMESSA').IsNULL then
       SQLNF_PC01FPC_DATA_REMESSA.Value      := DataCadastros.sqlUpdate.fieldbyname('FPC_DATA_REMESSA').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('BAN_COD_APELIDO').IsNULL then
       SQLNF_PC01BAN_COD_APELIDO.Value       := DataCadastros.sqlUpdate.fieldbyname('BAN_COD_APELIDO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS_BAIXA').IsNULL then
       SQLNF_PC01FPC_STATUS_BAIXA.Value      := DataCadastros.sqlUpdate.fieldbyname('FPC_STATUS_BAIXA').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_FORMAPAGTO').IsNULL then
       SQLNF_PC01FPC_FORMAPAGTO.Value        := DataCadastros.sqlUpdate.fieldbyname('FPC_FORMAPAGTO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DESCONTADO').IsNULL then
       SQLNF_PC01FPC_DESCONTADO.Value        := DataCadastros.sqlUpdate.fieldbyname('FPC_DESCONTADO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DATADESCTO').IsNULL then
       SQLNF_PC01FPC_DATADESCTO.Value        := DataCadastros.sqlUpdate.fieldbyname('FPC_DATADESCTO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_CONFIRMADESCTO').IsNULL then
       SQLNF_PC01FPC_CONFIRMADESCTO.Value    := DataCadastros.sqlUpdate.fieldbyname('FPC_CONFIRMADESCTO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_CONFIRMADEVOLUCAO').IsNULL then
       SQLNF_PC01FPC_CONFIRMADEVOLUCAO.Value := DataCadastros.sqlUpdate.fieldbyname('FPC_CONFIRMADEVOLUCAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DATADEVOLUCAO').IsNULL then
       SQLNF_PC01FPC_DATADEVOLUCAO.Value     := DataCadastros.sqlUpdate.fieldbyname('FPC_DATADEVOLUCAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_OBS_DESCTO').IsNULL then
       SQLNF_PC01FPC_OBS_DESCTO.Value        := DataCadastros.sqlUpdate.fieldbyname('FPC_OBS_DESCTO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_JUROS_DESCTO').IsNULL then
       SQLNF_PC01FPC_JUROS_DESCTO.Value      := DataCadastros.sqlUpdate.fieldbyname('FPC_JUROS_DESCTO').AsBCd;
      if not DataCadastros.sqlUpdate.fieldbyname('PAG_CODIGO').IsNULL then
       SQLNF_PC01PAG_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('PAG_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_BANCO_CHEQUE').IsNULL then
       SQLNF_PC01FPC_BANCO_CHEQUE.Value      := DataCadastros.sqlUpdate.fieldbyname('FPC_BANCO_CHEQUE').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_NUM_CHEQUE').IsNULL then
       SQLNF_PC01FPC_NUM_CHEQUE.Value        := DataCadastros.sqlUpdate.fieldbyname('FPC_NUM_CHEQUE').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_NUM_CHEQUE_DV').IsNULL then
       SQLNF_PC01FPC_NUM_CHEQUE_DV.Value     := DataCadastros.sqlUpdate.fieldbyname('FPC_NUM_CHEQUE_DV').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_CHEQUE_DATA').IsNULL then
       SQLNF_PC01FPC_CHEQUE_DATA.Value       := DataCadastros.sqlUpdate.fieldbyname('FPC_CHEQUE_DATA').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_SACADO_CHEQUE').IsNULL then
       SQLNF_PC01FPC_SACADO_CHEQUE.Value     := DataCadastros.sqlUpdate.fieldbyname('FPC_SACADO_CHEQUE').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_EXCLUSAO').IsNULL then
       SQLNF_PC01FPC_EXCLUSAO.Value          := DataCadastros.sqlUpdate.fieldbyname('FPC_EXCLUSAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_DATA_EXCLUSAO').IsNULL then
       SQLNF_PC01FPC_DATA_EXCLUSAO.Value     := DataCadastros.sqlUpdate.fieldbyname('FPC_DATA_EXCLUSAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_HORA_EXCLUSAO').IsNULL then
       SQLNF_PC01FPC_HORA_EXCLUSAO.Value     := DataCadastros.sqlUpdate.fieldbyname('FPC_HORA_EXCLUSAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('FPC_MOTIVO_EXCLUSAO').IsNULL then
       SQLNF_PC01FPC_MOTIVO_EXCLUSAO.Value   := DataCadastros.sqlUpdate.fieldbyname('FPC_MOTIVO_EXCLUSAO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('USU_CODIGO').IsNULL then
       SQLNF_PC01USU_CODIGO.Value            := DataCadastros.sqlUpdate.fieldbyname('USU_CODIGO').Value;
      if not DataCadastros.sqlUpdate.fieldbyname('USU_LOGIN').IsNULL then
       SQLNF_PC01USU_LOGIN.Value             := DataCadastros.sqlUpdate.fieldbyname('USU_LOGIN').Value;

      SQLNF_PC01.Post;
      SQLNF_PC01.ApplyUpdates(0);
      DataCadastros.sqlUpdate.Next;
      PrBar.Position := (PrBar.Position + 1);
    end;
    uteis.aviso('Transferência efetuada com sucesso!');
    PrBar.Position := 0;
    DataCadastros.sqlUpdate.Close;
    SQLNF_PC01.Close;
  end;
end;

procedure TFrmManutencao.Button23Click(Sender: tObject);
begin
try
     Screen.Cursor := crHourGlass;
     try
       {Empenho Negativo}
       wSql1 := 'Update PRD0000 T1 SET PRD_ESTOQUE = 0';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :=wSQL1;
       DataCadastros.sqlUpdate.Execsql;

       Screen.Cursor := crDefault;
     except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao atualizar os dados !'+#13#10+
                      'Mensagem erro: '+e.Message));
        end;
     end;
   finally
      screen.Cursor := crDefault;
      uteis.aviso('Concluído com sucesso !');
   end;
end;

procedure TFrmManutencao.Button24Click(Sender: tObject);
var
      iCodCidade:Integer;
begin
try
     {atualiza correlativos }
      PrBar.Max := 0;
      PrBar.Position := 0;
      CONSULTATMP.Close;
      CONSULTATMP.CommandText := 'SELECT T3.CID_CODIGO,T3.CID_CIDADE,T3.CID_ESTADO FROM CID0000 T3';
      CONSULTATMP.Open;
      PrBar.Max := CONSULTATMP.RecordCount;
      CONSULTATMP.First;
      while (not CONSULTATMP.Eof) do
         begin
            Application.ProcessMessages;
            //
            //COM ACENTO
            if (not CONSULTATMP.FieldByName('CID_CODIGO').IsNull)and
               (not CONSULTATMP.FieldByName('CID_CIDADE').IsNull)and
               (not CONSULTATMP.FieldByName('CID_ESTADO').IsNull) then
               begin
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE TRP0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.TRP_CIDADE = '+RetornaNull(CONSULTATMP.FieldByName('CID_CIDADE').AsString)+' AND T1.TRP_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
                  //SEM ACENTO
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='UPDATE TRP0000 T1 SET T1.CID_CODIGO = '+RetornaNull(CONSULTATMP.FieldByName('CID_CODIGO').AsString)+' WHERE  T1.TRP_CIDADE = '+RetornaNull(TiraAcento(CONSULTATMP.FieldByName('CID_CIDADE').AsString,true))+' AND T1.TRP_UF = '+RetornaNull(CONSULTATMP.FieldByName('CID_ESTADO').AsString)+'';
                  DataCadastros.sqlUpdate.Execsql;
                  //
               end;
           {proximo}
            CONSULTATMP.Next;
            PrBar.Position := (PrBar.Position  + 1);
         end;
      CONSULTATMP.Close;
      DataCadastros.sqlUpdate.Close;
      uteis.aviso('Processo Concluido....');
      Screen.Cursor := CrDefault;
   except
      on E:EdatabaseError do
         begin
            Screen.Cursor := CrDefault;
            uteis.erro  (pchar('Erro ao gravar arquivo !'+e.message));
         end;
   end;

end;

procedure TFrmManutencao.Button25Click(Sender: tObject);
var
   sTipo, sAlmox, sTipoES:String;
begin
   if (uteis.confirmacao  ( 'Confirma a importação do Kardex antigo para o novo,'+#13#10+
                           'Lembrando que o mesmo excluirá todos os lançamentos e saldos lançados no novo kardex.')=mrYes) then
      begin
         try
            //Limpar a tabela de Saldos por almoxarifado
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='DELETE FROM KARDEX_ALMOX_SALDO';
            DataCadastros.sqlUpdate.Execsql;
            //Limpar a tabela de kardex
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='DELETE FROM KARDEX';
            DataCadastros.sqlUpdate.Execsql;



           {atualiza os lançamento do kardex }
            PrBar.Max := 0;
            PrBar.Position := 0;
            CONSULTATMP.Close;
            CONSULTATMP.CommandText := 'select T1.*, P1.prd_codigo, P1.prd_und from prd_ensa T1 join prd0000 P1 on (P1.prd_refer = T1.prd_refer) WHERE T1.pes_flag_conta = ''S'' ORDER BY T1.pes_data, T1.pes_registro';
            CONSULTATMP.Open;
            PrBar.Max := CONSULTATMP.RecordCount;
            CONSULTATMP.First;
            while (not CONSULTATMP.Eof) do
               begin
                  Application.ProcessMessages;
                  //Almoxarifado
                  if (CONSULTATMP.FieldByName('AMX_CODIGO').AsString <> '') then
                     sAlmox := CONSULTATMP.FieldByName('AMX_CODIGO').AsString
                  else
                     sAlmox := '0001';
                  //Tipo
                  if (CONSULTATMP.FieldByName('PES_TIPDOC').AsString = 'AC') then
                     sTipo := 'BAL'
                  else
                  if ((CONSULTATMP.FieldByName('PES_TIPDOC').AsString = 'NF') and (CONSULTATMP.FieldByName('PES_TIPO').AsString = 'S')) then
                     sTipo := 'NF'
                  else
                  if ((CONSULTATMP.FieldByName('PES_TIPDOC').AsString = 'NF') and (CONSULTATMP.FieldByName('PES_TIPO').AsString = 'E')) then
                     sTipo := 'ENF'
                  else
                  if (CONSULTATMP.FieldByName('PES_TIPDOC').AsString = 'OP') then
                     sTipo := 'PRO'
                  else
                  if (CONSULTATMP.FieldByName('PES_TIPDOC').AsString = 'PE') then
                     sTipo := 'PED'
                  else
                     sTipo := 'MAN';
                  //Tipo entrada e saida
                  if ((CONSULTATMP.FieldByName('PES_TIPO').AsString <> 'S') and (CONSULTATMP.FieldByName('PES_TIPO').AsString <> 'E')) then
                     sTipoES := 'E'
                  else
                     sTipoES := CONSULTATMP.FieldByName('PES_TIPO').AsString;


                  KardexLancamento('0',
                                   sTipo,
                                   sAlmox,
                                   '',
                                   CONSULTATMP.FieldByName('prd_codigo').AsString,
                                   '',//grade
                                   CONSULTATMP.FieldByName('prd_und').AsString,
                                   sTipoES,
                                   '',
                                   '',//Novo esquema de lote
                                   CONSULTATMP.FieldByName('PES_KARDEX_OBS').AsString,     
                                   CONSULTATMP.FieldByName('PES_DATA').AsDateTime,
                                   CONSULTATMP.FieldByName('PES_QTDE').AsFloat,
                                   CONSULTATMP.FieldByName('PES_NUMDOC').AsString,
                                   CONSULTATMP.FieldByName('PES_NUMDOC').AsString,
                                   CONSULTATMP.FieldByName('PES_VALOR').AsFloat);
                 {proximo}
                  CONSULTATMP.Next;
                  PrBar.Position := (PrBar.Position  + 1);
               end;
            CONSULTATMP.Close;
            DataCadastros.sqlUpdate.Close;
            uteis.aviso('Processo Concluido....');
            Screen.Cursor := CrDefault;
         except
            on E:EdatabaseError do
               begin
                  Screen.Cursor := CrDefault;
                  uteis.erro  (pchar('Erro na importação !'+e.message));
               end;
         end;
      end;
end;

procedure TFrmManutencao.Button26Click(Sender: tObject);
var
    NodePai,NodeSec,NodeTmp: IXMLNode;
    sProdutoAtual:String;
begin

  // Le conteúdo do arquivo XML informado
  vXMLDoc.LoadFromFile(Edit1.Text);
  NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
  CdsProdutos.EmptyDataSet;
  CdsGrades.EmptyDataSet;
  repeat
  NodePai.ChildNodes.First;
  NodeSec := NodePai.ChildNodes.First;

  CdsProdutos.Append;
  repeat
      if (NodeSec.NodeName = 'referencia') then
         begin
            CdsProdutosReferencia.AsString := NodeSec.Text;
            sProdutoAtual := NodeSec.Text;
         end
      else
      if (NodeSec.NodeName = 'descricao') then
         CdsProdutosDescricao.AsString := NodeSec.Text
      else
      if (NodeSec.NodeName = 'tipo') then
         CdsProdutostipo.AsString := NodeSec.Text
      else
      if (NodeSec.NodeName = 'unidadeMedida') then
         CdsProdutosunidadeMedida.AsString := NodeSec.Text
      else
      if (NodeSec.NodeName = 'grupo') then
         CdsProdutosgrupo.AsString := NodeSec.Text
      else
      if (NodeSec.NodeName = 'subGrupo') then
         CdsProdutossubGrupo.AsString := NodeSec.Text
      else
      if (NodeSec.NodeName = 'estoqueMinimo') then
         CdsProdutosestoque.AsString := StringReplace(NodeSec.Text, '.', ',', [rfReplaceAll, rfIgnoreCase])
      else
      //Grades
      if (NodeSec.NodeName = 'grades') then
         begin
            NodeTmp := NodeSec.ChildNodes.First;
            if (NodeTmp <> nil) then
               begin
                  repeat
                     CdsGrades.Append;
                     CdsGradesReferencia.AsString := sProdutoAtual;
                     CdsGradesgrade.AsString := NodeTmp.Text;
                     CdsGrades.Post;
                     NodeTmp := NodeTmp.NextSibling;

                  until NodeTmp = nil;
               end;
         end;
      NodeSec := NodeSec.NextSibling;
  until NodeSec = nil;
  CdsProdutos.Post;
   NodePai := NodePai.NextSibling;
  until NodePai = nil;
   //totais
   LblImportacaoProdutos.Caption := IntToStr(CdsProdutos.RecordCount);
   LblImportacaoGrades.Caption := IntToStr(CdsGrades.RecordCount);
end;

procedure TFrmManutencao.Button27Click(Sender: tObject);
var
   sProdutoCodigo, sProdutoReferencia, sGrupoCodigo, sSubGrupoCodigo, sTipoCodigo:String;
   sQuery:WideString;
begin
   if (CdsProdutos.RecordCount = 0) and (CdsGrades.RecordCount = 0) then
      begin
         uteis.aviso('Não existe produtos e grades a serem gravados, realize a importação novamente');
      end
   else
      begin
         CdsProdutos.First;
         while (not CdsProdutos.Eof) do
            begin
               //Inicia Variaveis
               sProdutoCodigo := '';
               sProdutoReferencia := '';
               sGrupoCodigo := '';
               sSubGrupoCodigo := '';

               //Verifica se o produto já esta cadastrado
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='SELECT PRD_CODIGO, PRD_REFER FROM PRD0000 WHERE PRD_REFER =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutosReferencia.AsString,1,11))));
               DataCadastros.sqlUpdate.Open;
               if (DataCadastros.sqlUpdate.IsEmpty) then
                  begin
                     //Tenta ver se localiza o Grupo
                     if (Trim(copy(CdsProdutosgrupo.AsString,1,25)) <> 'null')and(Trim(copy(CdsProdutosgrupo.AsString,1,25)) <> '') then
                        begin
                           //Tenta ver se localiza o grupo
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='SELECT PGR_CODIGO FROM PRD_GRUPO WHERE PGR_DESCRI =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutosgrupo.AsString,1,25))));
                           DataCadastros.sqlUpdate.Open;
                           //Caso nao localize insere
                           if (DataCadastros.sqlUpdate.IsEmpty) then
                              begin
                                 //insert tabela grupo
                                 sQuery := 'INSERT INTO PRD_GRUPO (PGR_CODIGO,EMP_CODIGO, PGR_DESCRI) VALUES ('+QuotedStr(PreenchezeroEsquerda(IntToStr(IncrementaRegistro('PRD_GRUPO','PGR_CODIGO')),3))+','+QuotedStr('001')+','+QuotedStr(UpperCase(Trim(copy(CdsProdutosReferencia.AsString,1,15))))+')';

                                 DataCadastros.sqlUpdate.Close;
                                 DataCadastros.SqlUpdate.sql.text :=sQuery;
                                 DataCadastros.sqlUpdate.Execsql;
                              end;
                           //Tenta ver se localiza o grupo
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='SELECT PGR_CODIGO FROM PRD_GRUPO WHERE PGR_DESCRI =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutosReferencia.AsString,1,11))));
                           DataCadastros.sqlUpdate.Open;
                           if (not DataCadastros.sqlUpdate.IsEmpty) then
                              begin
                                 sGrupoCodigo := DataCadastros.sqlUpdate.FieldByName('PGR_CODIGO').AsString;
                              end;
                        end;
                     //Tenta ver se localiza o SubGrupo
                     if (Trim(copy(CdsProdutossubGrupo.AsString,1,25)) <> 'null')and(Trim(copy(CdsProdutossubGrupo.AsString,1,25)) <> '') then
                        begin
                           //Tenta ver se localiza o SubGrupo
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='SELECT LIN_CODIGO FROM PRD_LINHA WHERE LIN_DESCRI =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutossubGrupo.AsString,1,30))));
                           DataCadastros.sqlUpdate.Open;
                           //Caso nao localize insere
                           if (DataCadastros.sqlUpdate.IsEmpty) then
                              begin
                                 //insert tabela grupo
                                 sQuery := 'INSERT INTO PRD_LINHA (LIN_CODIGO,EMP_CODIGO, LIN_DESCRI) VALUES ('+QuotedStr(PreenchezeroEsquerda(IntToStr(IncrementaRegistro('PRD_LINHA','LIN_CODIGO')),3))+','+QuotedStr('001')+','+QuotedStr(UpperCase(Trim(copy(CdsProdutossubGrupo.AsString,1,30))))+')';

                                 DataCadastros.sqlUpdate.Close;
                                 DataCadastros.SqlUpdate.sql.text :=sQuery;
                                 DataCadastros.sqlUpdate.Execsql;
                              end;
                           //Tenta ver se localiza o grupo
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='SELECT LIN_CODIGO FROM PRD_LINHA WHERE LIN_DESCRI =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutossubGrupo.AsString,1,30))));
                           DataCadastros.sqlUpdate.Open;
                           if (not DataCadastros.sqlUpdate.IsEmpty) then
                              begin
                                 sSubGrupoCodigo := DataCadastros.sqlUpdate.FieldByName('LIN_CODIGO').AsString;
                              end;
                        end;
                     //Inserto Produto

                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='SELECT PTI_CODIGO FROM PRD_TIPO WHERE PTI_SIGLA =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutostipo.AsString,1,2))));
                     DataCadastros.sqlUpdate.Open;
                     if (not DataCadastros.sqlUpdate.IsEmpty) then
                        begin
                           sTipoCodigo := DataCadastros.sqlUpdate.FieldByName('PTI_CODIGO').AsString;
                        end;

                     sQuery := 'INSERT INTO PRD0000 (PRD_ORIGEM, STB_TRIBUTACAO, PTI_CODIGO, PRD_CODIGO,EMP_CODIGO,PRD_REFER, PRD_DTCADASTRO, PRD_DESCRI, PRD_UND, PGR_CODIGO, LIN_CODIGO, PRD_MINIMO, PRD_PRODSERV) VALUES ('+QuotedStr('0')+','+QuotedStr('00')+','+QuotedStr(sTipoCodigo)+','+QuotedStr(PreenchezeroEsquerda(IntToStr(IncrementaRegistro('PRD0000','PRD_CODIGO')),4))+','+QuotedStr('001')+','+QuotedStr(UpperCase(Trim(copy(CdsProdutosReferencia.AsString,1,11))))+','+QuotedStr(DataAmericana(DateToStr(Now)))+','+QuotedStr(UpperCase(Trim(copy(CdsProdutosDescricao.AsString,1,100))))+','+QuotedStr(UpperCase(Trim(copy(CdsProdutosunidadeMedida.AsString,1,3))))+','+QuotedStr(sGrupoCodigo)+','+QuotedStr(sSubGrupoCodigo)+','+QuotedStr(ValorAmericano(CdsProdutosestoque.AsString))+',''P'')';

                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=sQuery;
                     DataCadastros.sqlUpdate.Execsql;


                  end;
               //consulta codigo do produto
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='SELECT PRD_CODIGO, PRD_REFER FROM PRD0000 WHERE PRD_REFER =  '+QuotedStr(UpperCase(Trim(copy(CdsProdutosReferencia.AsString,1,11))));
               DataCadastros.sqlUpdate.Open;
               if (not DataCadastros.sqlUpdate.IsEmpty) then
                  begin
                     sProdutoCodigo := DataCadastros.sqlUpdate.FieldByName('PRD_CODIGO').AsString;
                     sProdutoReferencia := DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString
                  end;       
               //Filtra as grades do produto
               CdsGrades.Filtered := False;
               CdsGrades.Filter := 'Referencia = '+QuotedStr(CdsProdutosReferencia.AsString);
               CdsGrades.Filtered := True;

               CdsGrades.First;
               while (not CdsGrades.Eof) do
                  begin
                     //Verifica se a grade ja esta cadastrada
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='SELECT * FROM PRD_GRADE WHERE PRD_CODIGO =  '+QuotedStr(sProdutoCodigo)+ ' and PRG_DESCRICAO = '+QuotedStr(CdsGradesgrade.AsString);
                     DataCadastros.sqlUpdate.Open;
                     if (DataCadastros.sqlUpdate.IsEmpty) then
                        begin
                           //Insert na grade

                           sQuery := 'INSERT INTO PRD_GRADE (EMP_CODIGO, PRD_CODIGO,PRG_DESCRICAO) VALUES ('+QuotedStr('001')+','+QuotedStr(sProdutoCodigo)+','+QuotedStr(CdsGradesgrade.AsString)+')';

                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=sQuery;
                           DataCadastros.sqlUpdate.Execsql;

                        end;
                     CdsGrades.Next;
                  end;
               //Produtos
               CdsProdutos.Next;
            end;
            uteis.aviso('Importação Realizada');
      end;
end;


function TFrmManutencao.IncrementaRegistro(Tabela,
  Chave_Registro: String): Integer;
Var
QryReg:TSQLQuery;
begin
   try
      QryReg := TSQLQuery.Create(Nil);
      QryReg.SQLConnection := DataCadastros.SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('Select max('+Chave_Registro+')'+' from '+Tabela);
      QryReg.Open;
      if QryReg.Fields[0].IsNull then
         begin
            Result := 1;
         end
      else
         begin
             Result:= (QryReg.Fields[0].AsInteger +1);
         end;
   finally
      FreeAndNil(QryReg);
   end;

end;

procedure TFrmManutencao.Button28Click(Sender: tObject);
var
   sEmpr:string;
begin
   sEmpr := dbInicio.Empresa.EMP_CODIGO;
   //Verifica se o produto já esta cadastrado
   DataCadastros.sqlUpdate1.Close;
   DataCadastros.sqlUpdate1.sql.text:= 'select '+
                                          '     t1.amx_codigo_destino, '+
                                          '     t4.prd_codigo, '+
                                          '     t2.nf_emissao, '+
                                          '     t1.nf_qtde, '+
                                          '     t1.emp_codigo, '+
                                          '     t1.ped_codigo, '+
                                          '     t2.cli_codigo, '+
                                          '     t5.cli_razao, '+
                                          '     t1.nf_preco, '+
                                          '     (SELECT FIRST 1 T4.prf_registro FROM ped_it01 T4 WHERE T4.prd_refer = T1.prd_refer AND T1.ped_codigo = T1.ped_codigo AND T1.emp_codigo = T1.emp_codigo ) AS PRF_REGISTRO '+
                                          ' from '+
                                          ' nf_it01 t1 '+
                                          ' join nf0001 t2 on (t2.emp_codigo = t1.emp_codigo and t2.nf_notanumber = t1.nf_it_notanumer and t2.nf_emissao >= ''13.04.2013'' and t2.nf_cancelada <> ''S'' '+
                                          ' and t2.nf_registro not in (SELECT t11.kar_registro_interno from kardex T11 WHERE T11.kar_tipo_registro = ''NF'') '+
                                          ' ) '+
                                          ' left join prd0000 t4 on (t4.prd_refer = t1.prd_refer) '+
                                          ' left join cli0000 t5 on (t5.cli_codigo = t2.cli_codigo) ORDER BY t2.nf_registro, t1.nf_registro';
   DataCadastros.sqlUpdate1.Open;
   while (not DataCadastros.sqlUpdate1.Eof) do
      begin
         dbInicio.EMP_CODIGO := DataCadastros.sqlUpdate1.FieldByName('emp_codigo').AsString ;
         KardexLancamento(DataCadastros.sqlUpdate1.FieldByName('PRF_REGISTRO').AsString,
                          'NF',
                          DataCadastros.sqlUpdate1.FieldByName('AMX_CODIGO_DESTINO').AsString,
                          '',
                          DataCadastros.sqlUpdate1.FieldByName('prd_codigo').AsString,
                          '',
                          '',
                          'S',//iif(CdsItemPedidoPRF_QTDE_FATURAR_CC.AsFloat < 0,'E','S'),
                          '',
                          '',//Novo esquema de lote
                          'SAIDA PELO FATURAMENTO',
                          DataCadastros.sqlUpdate1.FieldByName('nf_emissao').AsDateTime,
                          DataCadastros.sqlUpdate1.FieldByName('nf_qtde').AsFloat,
                          DataCadastros.sqlUpdate1.FieldByName('ped_codigo').AsString,
                          DataCadastros.sqlUpdate1.FieldByName('cli_codigo').AsString+'-'+DataCadastros.sqlUpdate1.FieldByName('cli_razao').AsString,
                          DataCadastros.sqlUpdate1.FieldByName('nf_preco').AsFloat);
         DataCadastros.sqlUpdate1.Next;
      end;
   dbInicio.EMP_CODIGO := sEmpr;
end;

procedure TFrmManutencao.Button29Click(Sender: tObject);
var
  Lista:TStringList;
  sSql:String;
  iContador:Integer;
begin
   DataCadastros.sqlUpdate1.Close;
   DataCadastros.sqlUpdate1.sql.text:= 'SELECT * FROM prd_grade';
   DataCadastros.sqlUpdate1.Open;
   while (not DataCadastros.sqlUpdate1.Eof) do
      begin
         Lista := TStringList.Create;
         try
            sSql := 'UPDATE PRD_GRADE SET ';


            Lista.Delimiter := 'X';
            Lista.DelimitedText := DataCadastros.sqlUpdate1.FieldByName('PRG_DESCRICAO').AsString;

            for iContador := 0 to Lista.Count-1 do
              begin
                if (iContador = 0) then
                  sSql := sSql + ' PRG_MEDIDA_1 = '+Lista[iContador]
                else
                if (iContador = 1) then
                  sSql := sSql + ' ,PRG_MEDIDA_2 = '+Lista[iContador]
                else
                if (iContador = 2) then
                  sSql := sSql + ' ,PRG_MEDIDA_3 = '+Lista[iContador];
              end;
            sSql := sSql + ' WHERE PRG_REGISTRO = '+DataCadastros.sqlUpdate1.FieldByName('PRG_REGISTRO').AsString;
            try
              DataCadastros.sqlUpdate.Close;
              DataCadastros.SqlUpdate.sql.text :=sSql;
              DataCadastros.sqlUpdate.Execsql;
            except

            end;
         finally
           FreeAndNil(Lista);
         end;
         DataCadastros.sqlUpdate1.Next;
      end;
   uteis.aviso('Procedimento finalizado');
end;

end.


