unit EnfIndustrializacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Inifiles, DateUtils,uProducaoDAO,
  Dialogs, StdCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, Mask,  rxToolEdit, frxClass, frxDBSet, jpeg,
  DBCtrls, Data.DBXFirebird, SimpleDS, Vcl.ExtCtrls, JvExMask, JvToolEdit, Vcl.Menus, JvExControls, JvArrowButton, Vcl.ComCtrls, Data.FMTBcd, frxExportPDF, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog;
 
type
  TFrmEnfIndustrializacao = class(TForm)
    grpNotaFiscalEntrada: TGroupBox;
    grpFiltro: TGroupBox;
    grpItens: TGroupBox;
    grpItensRetorno: TGroupBox;
    dbgrdNotaEntrada: TDBGrid;
    dbgrdRetorno: TDBGrid;
    SqlCdsEntradaNota: TSQLClientDataSet;
    SqlCdsNotaItem: TSQLClientDataSet;
    SqlCdsRetorno: TSQLClientDataSet;
    dsNotaEntrada: TDataSource;
    dsNotaItem: TDataSource;
    dsRetorno: TDataSource;
    SqlCdsEntradaNotaENF_NOTANUMBER: TStringField;
    SqlCdsEntradaNotaENF_MODELO_NF: TStringField;
    SqlCdsEntradaNotaENF_SERIE: TStringField;
    SqlCdsEntradaNotaENF_EMISSAO: TDateField;
    SqlCdsEntradaNotaFOR_CODIGO: TStringField;
    SqlCdsEntradaNotaFOR_RAZAO: TStringField;
    SqlCdsEntradaNotaOPE_NATUREZA: TStringField;
    SqlCdsEntradaNotaENF_TOT_PROD: TFMTBCdField;
    SqlCdsEntradaNotaENF_TOT_NOTA: TFMTBCdField;
    SqlCdsEntradaNotaQTDE_PRODUTOS: TFMTBCdField;
    SqlCdsEntradaNotaQTDE_PRODUTOS_RETORNO: TFMTBCdField;
    SqlCdsEntradaNotaIC_Percentual: TCurrencyField;
    SqlCdsNotaItemPRD_REFER: TStringField;
    SqlCdsNotaItemPRD_DESCRI: TStringField;
    SqlCdsNotaItemENF_QTDE: TFMTBCdField;
    SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO: TFMTBCdField;
    SqlCdsNotaItemENF_PRECO: TFMTBCdField;
    SqlCdsNotaItemAMX_CODIGO: TStringField;
    SqlCdsNotaItemAMX_DESCRI: TStringField;
    SqlCdsNotaItemENF_CFOP: TStringField;
    SqlCdsNotaItemIC_Percentual: TFloatField;
    SqlCdsRetornoPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsRetornoPED_CODIGO: TStringField;
    SqlCdsRetornoPRF_QTDE: TFMTBCdField;
    SqlCdsRetornoPRF_QTDEFAT: TFMTBCdField;
    SqlCdsRetornoNF_NOTANUMBER: TStringField;
    SqlCdsRetornoNF_EMISSAO: TDateField;
    SqlCdsRetornoNF_NUM_NFE: TIntegerField;
    SqlCdsRetornoOPE_NATUREZA: TStringField;
    SqlCdsRetornoCLI_CODIGO: TStringField;
    SqlCdsRetornoCLI_RAZAO: TStringField;
    Label1: TLabel;
    edtNotaFiscal: TEdit;
    Label2: TLabel;
    edtFornecedor: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitLocalizarNota: TBitBtn;
    frxIndustrializacao: TfrxReport;
    frxdbNotaFiscal: TfrxDBDataset;
    frxdbNotaItem: TfrxDBDataset;
    frxdbRetorno: TfrxDBDataset;
    SqlCdsNotaItemENF_REGISTRO: TIntegerField;
    SqlCdsEntradaNotaENF_DADOS_ADICIONAIS: TBlobField;
    Label5: TLabel;
    cbbSitucao: TComboBox;
    SqlCdsEntradaNotaSTATUS: TStringField;
    SqlCdsRetornoITT_DESCRICAO: TStringField;
    SqlCdsItensRelatorio: TSQLClientDataSet;
    frxRelatorio: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    SqlCdsItensRelatorioENF_NOTANUMBER: TStringField;
    SqlCdsItensRelatorioENF_ENTRADA: TDateField;
    SqlCdsItensRelatorioFOR_CODIGO: TStringField;
    SqlCdsItensRelatorioFOR_RAZAO: TStringField;
    SqlCdsItensRelatorioENF_REGISTRO: TIntegerField;
    SqlCdsItensRelatorioPRD_REFER: TStringField;
    SqlCdsItensRelatorioPRD_DESCRI: TStringField;
    SqlCdsItensRelatorioENF_QTDE: TFMTBCdField;
    SqlCdsItensRelatorioENF_QUANTIDADE_IND_RETORNO: TFMTBCdField;
    SqlCdsItensRelatorioENF_PRECO: TFMTBCdField;
    SqlCdsItensRelatorioAMX_CODIGO: TStringField;
    SqlCdsItensRelatorioAMX_DESCRI: TStringField;
    SqlCdsItensRelatorioENF_CFOP: TStringField;
    SqlCdsItensRelatorioITT_REGISTRO: TIntegerField;
    SqlCdsItensRelatorioITT_DESCRICAO: TStringField;
    SqlCdsNotaItemITT_REGISTRO: TIntegerField;
    SqlCdsNotaItemITT_DESCRICAO: TStringField;
    SqlCdsNotaItemENF_OBS_INDUSTRIALIZACAO: TBlobField;
    grpObsItem: TGroupBox;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Bit_Sair: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    DataDe: TJvDateEdit;
    DataAte: TJvDateEdit;
    SqlCdsEntradaNotaENF_DADOS_ADICIONAIS_FISCO: TBlobField;
    btnImprimir: TJvArrowButton;
    PopupMenuImpressao: TPopupMenu;
    Romaneio1: TMenuItem;
    RomaneioPlanilha1: TMenuItem;
    SqlCdsEntradaNotaENF_OBS_INDUST: TMemoField;
    SqlCdsNotaItemPESO: TFMTBCDField;
    frxRomaneioPlanilha: TfrxReport;
    SqlCdsEntradaNotaFOR_CGC: TStringField;
    SqlCdsNotaItemPESOTOTAL: TFMTBCDField;
    SqlCdsEntradaNotaENF_XML: TBlobField;
    SqlCdsNotaItemENF_UCOM: TStringField;
    SqlCdsEntradaNotaENF_ENTRADA: TDateField;
    SqlCdsNotaItemENF_PESO_ENTRADA: TFMTBCDField;
    SqlCdsNotaItemRETORNADO: TFMTBCDField;
    SqlCdsEntradaNotaCLI_CODIGO: TStringField;
    SqlCdsEntradaNotaCLI_RAZAO: TStringField;
    SqlCdsEntradaNotaCLI_CGC: TStringField;
    pcObservacoes: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    mmEnfObsIndust: TDBMemo;
    mmEnfDadosAdicionais: TDBMemo;
    mmEnfDadosAdicionaisFisco: TDBMemo;
    Splitter4: TSplitter;
    NotaFiscalPorProdutoPendent1: TMenuItem;
    qForCliProduto: TSQLQuery;
    qForCliProdutoCLI_CODIGO: TStringField;
    qForCliProdutoCLI_RAZAO: TStringField;
    qForCliProdutoFOR_RAZAO: TStringField;
    qForCliProdutoENF_NOTANUMBER: TStringField;
    qForCliProdutoENF_ENTRADA: TDateField;
    qForCliProdutoENF_EMISSAO: TDateField;
    qForCliProdutoPRD_REFER: TStringField;
    qForCliProdutoPRD_DESCRI: TStringField;
    qForCliProdutoENF_QUANTIDADE_IND_RETORNO: TFMTBCDField;
    qForCliProdutoENF_QTDE: TFMTBCDField;
    qForCliProdutoTOTAL: TFMTBCDField;
    qForCliProdutoENF_PESO_ENTRADA: TFMTBCDField;
    dsqForCliProduto: TDataSource;
    frxDBForCliProduto: TfrxDBDataset;
    frxForCliProduto: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    SqlCdsEntradaNotaENF_PESO_TOTAL: TFMTBCDField;
    SqlCdsEntradaNotaENF_ENVIADO_PCP_DEMANDA: TStringField;
    SqlCdsNotaItemBOTAO: TStringField;
    SqlCdsNotaItemENF_IT_ENVIADO_PCP_DEMANDA: TStringField;
    SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA: TFMTBCDField;
    SqlCdsEntradaNotaENF_REGISTRO: TIntegerField;
    SqlCdsNotaItemPED_CODIGO: TStringField;
    RomaneioPlanilhacomCores1: TMenuItem;
    pcIEOP: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    dbgrdItemNota: TDBGrid;
    qOP: TFDQuery;
    dsOP: TDataSource;
    dbGridOP: TDBGrid;
    qOPPRF_QTDE: TFMTBCDField;
    qOPPRD_DESCRI: TStringField;
    qOPENF_QUANTIDADE_IND_RETORNO: TFMTBCDField;
    qOPENF_CFOP: TStringField;
    qOPBOTAO: TStringField;
    qOPIC_Percentual: TFloatField;
    qOPPESO: TFMTBCDField;
    qOPPESOTOTAL: TFMTBCDField;
    qOPRETORNADO: TFMTBCDField;
    qOPPRD_REFER: TStringField;
    qOPENF_QTDE: TFMTBCDField;
    qOPENF_UCOM: TStringField;
    qOPENF_PRECO: TFMTBCDField;
    qOPENF_IT_ENVIADO_PCP_DEMANDA: TStringField;
    qOPDEP_CODIGO: TIntegerField;
    qOPDEP_SITUACAO: TStringField;
    qOPENF_REGISTRO: TIntegerField;
    qOPPED_CODIGO: TStringField;
    qOPENF_PESO_ENTRADA: TFMTBCDField;
    qOPAMX_CODIGO: TStringField;
    qOPAMX_DESCRI: TStringField;
    qOPITT_REGISTRO: TIntegerField;
    qOPENF_IT_QTD_ENV_PCP_DEMANDA: TFMTBCDField;
    qOPENF_OBS_INDUSTRIALIZACAO: TWideMemoField;
    qOPOPV_PEDIDOINTERNO: TStringField;
    NotaFiscalporProdutoRetornado1: TMenuItem;
    qEntradaNFRetorno: TSQLQuery;
    frxDBEntradaNFRetorno: TfrxDBDataset;
    frxEntradaNFRetorno: TfrxReport;
    qEntradaNFRetornoItem: TSQLQuery;
    frxDBEntradaNFRetornoItem: TfrxDBDataset;
    qEntradaNFRetornoProduto: TSQLQuery;
    frxDBEntradaNFRetornoProduto: TfrxDBDataset;
    dspEntradaNFRetornoItem: TDataSetProvider;
    cdsEntradaNFRetornoItem: TClientDataSet;
    cdsEntradaNFRetornoItemFOR_CODIGO: TStringField;
    cdsEntradaNFRetornoItemENF_NOTANUMBER: TStringField;
    cdsEntradaNFRetornoItemNF_NOTANUMBER: TStringField;
    cdsEntradaNFRetornoItemNF_EMISSAO: TDateField;
    cdsEntradaNFRetornoItemPRD_REFER: TStringField;
    cdsEntradaNFRetornoItemNF_QTDE: TFMTBCDField;
    cdsEntradaNFRetornoItemCLI_RAZAO: TStringField;
    cdsEntradaNFRetornoItemITT_DESCRICAO: TStringField;
    dspEntradaNFRetornoProduto: TDataSetProvider;
    cdsEntradaNFRetornoProduto: TClientDataSet;
    cdsEntradaNFRetornoProdutoFOR_CODIGO: TStringField;
    cdsEntradaNFRetornoProdutoENF_NOTANUMBER: TStringField;
    cdsEntradaNFRetornoProdutoPRD_REFER: TStringField;
    cdsEntradaNFRetornoProdutoPRD_DESCRI: TStringField;
    cdsEntradaNFRetornoProdutoENF_QTDE: TFMTBCDField;
    cdsEntradaNFRetornoProdutoENF_QUANTIDADE_IND_RETORNO: TFMTBCDField;
    cdsEntradaNFRetornoProdutoENF_PESO_ENTRADA: TFMTBCDField;
    cdsEntradaNFRetornoProdutoPESO_TOTAL: TFMTBCDField;
    dspEntradaNFRetorno: TDataSetProvider;
    cdsEntradaNFRetorno: TClientDataSet;
    cdsEntradaNFRetornoProdutoENF_CFOP: TStringField;
    cdsEntradaNFRetornoItemOPE_NATUREZA: TStringField;
    cdsEntradaNFRetornoItemACO_NOME: TStringField;
    pmImpressaoIndividual: TPopupMenu;
    NFPP: TMenuItem;
    NFPR: TMenuItem;
    cbEmissaoEntrada: TComboBox;
    SqlCdsEntradaNotaSelecao: TBooleanField;
    GerarEtiqueta1: TMenuItem;
    mtEtiqueta: TFDMemTable;
    mtEtiquetaCLI_RAZAO: TStringField;
    mtEtiquetaACO_NOME: TStringField;
    mtEtiquetaDTENTREGA: TDateField;
    mtEtiquetaNOTA_FISCAL: TStringField;
    mtEtiquetaPESO: TFMTBCDField;
    mtTemp: TFDMemTable;
    mtTempCLI_RAZAO: TStringField;
    mtTempACO_NOME: TStringField;
    mtTempDTENTREGA: TDateField;
    mtTempNOTA_FISCAL: TStringField;
    mtTempPESO: TFMTBCDField;
    frxEtiqueta: TfrxReport;
    frxDBEtiqueta: TfrxDBDataset;
    qAux: TFDQuery;
    procedure Bit_SairClick(Sender: tObject);
    procedure SqlCdsEntradaNotaCalcFields(DataSet: TDataSet);
    procedure SqlCdsNotaItemCalcFields(DataSet: TDataSet);
    procedure dsNotaEntradaDataChange(Sender: tObject; Field: TField);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure BitLocalizarNotaClick(Sender: tObject);
    procedure frxIndustrializacaoGetValue(const VarName: String;
      var Value: Variant);
    procedure dsNotaItemDataChange(Sender: tObject; Field: TField);
    procedure BitBtn1Click(Sender: tObject);
    procedure frxRelatorioGetValue(const VarName: String;
      var Value: Variant);
    procedure dbgrdItemNotaDblClick(Sender: tObject);
    procedure dbgrdItemNotaKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure dbgrdNotaEntradaDblClick(Sender: TObject);
    procedure SqlCdsEntradaNotaENF_OBS_INDUSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RomaneioPlanilha1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NotaFiscalPorProdutoPendent1Click(Sender: TObject);
    procedure frxForCliProdutoBeginDoc(Sender: TObject);
    procedure frxForCliProdutoGetValue(const VarName: string; var Value: Variant);
    procedure dbgrdNotaEntradaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdNotaEntradaCellClick(Column: TColumn);
    procedure dbgrdNotaEntradaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrdItemNotaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdItemNotaCellClick(Column: TColumn);
    function FormEnvioDemanda(PedidoItem: string): Boolean;
    function FormSelecionaCor(var cor: Integer): Boolean;
    procedure RomaneioPlanilhacomCores1Click(Sender: TObject);
    procedure edtNotaFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridOPCellClick(Column: TColumn);
    procedure dbGridOPDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qOPCalcFields(DataSet: TDataSet);
    procedure NotaFiscalporProdutoRetornado1Click(Sender: TObject);
    procedure frxEntradaNFRetornoBeginDoc(Sender: TObject);
    procedure frxEntradaNFRetorno0BeginDoc(Sender: TObject);
    procedure frxRomaneioPlanilhaBeginDoc(Sender: TObject);
    procedure SqlCdsEntradaNotaSelecaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure GerarEtiqueta1Click(Sender: TObject);
    procedure frxEtiquetaBeginDoc(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaConsultaNotas;
    procedure AtualizaConsultaItens;
    procedure AtualizaConsultaRetornos;
    procedure AtualizaOP;
    procedure ChamaSituacao;
    procedure Seleciona;
  public
    { Public declarations }
    procedure BotoesAcesso;
    var
      nomeArquivoIni, CodigoPedidoFRX: string;
  end;

var
  FrmEnfIndustrializacao: TFrmEnfIndustrializacao;
  tcr: tProducaoDao;

implementation

uses
  DataCad, RWFunc, Men0001, uIndustrializacao_SitObs, uteis, iniciodb, BaseForm,
  uIndustrializacaoNotaObs, uEnfIndustrializacoEnviaDemanda,uPedidoDAO,
  uEnfIndustrializacoSelecionaCor;
 
{$R *.dfm}
 
procedure TFrmEnfIndustrializacao.Bit_SairClick(Sender: tObject);
begin
  Close;
end;
 
procedure TFrmEnfIndustrializacao.BotoesAcesso;
begin
     if assigned(FrmEnfIndustrializacao) then
     begin
       BitBtn1.Enabled := Uteis.AcessoUsuario('MovimentosGerenciador de Industrialização',DBInicio.Usuario.CODIGO,FrmEnfIndustrializacao).Relatorio;
     end;
end;

procedure TFrmEnfIndustrializacao.Seleciona;
begin
   if (not SqlCdsEntradaNota.IsEmpty) then
   begin
     SqlCdsEntradaNota.Edit;
     SqlCdsEntradaNota.FieldByName('selecao').AsBoolean := not SqlCdsEntradaNota.FieldByName('selecao').AsBoolean;
     SqlCdsEntradaNota.Post;
     dbgrdNotaEntrada.SelectedIndex := 1;
   end;
end;

procedure TFrmEnfIndustrializacao.SqlCdsEntradaNotaCalcFields(DataSet: TDataSet);
begin
  if (SqlCdsEntradaNotaQTDE_PRODUTOS_RETORNO.AsFloat > 0)and(SqlCdsEntradaNotaQTDE_PRODUTOS.AsFloat > 0) then
    begin
      SqlCdsEntradaNotaIC_Percentual.AsFloat := (SqlCdsEntradaNotaQTDE_PRODUTOS_RETORNO.AsFloat * 100)/SqlCdsEntradaNotaQTDE_PRODUTOS.AsFloat;
    end
  else
    begin
      SqlCdsEntradaNotaIC_Percentual.AsFloat := 0;
    end;
  if (SqlCdsEntradaNotaIC_Percentual.AsFloat = 100) then
    SqlCdsEntradaNotaSTATUS.AsString := 'CONCLUIDO'
  else
  if (SqlCdsEntradaNotaIC_Percentual.AsFloat >= 0) then
    SqlCdsEntradaNotaSTATUS.AsString := 'PENDENTE';
  SqlCdsEntradaNotaCLI_RAZAO.AsString := DBInicio.BuscaUmDadoSqlAsString('SELECT CLI_RAZAO FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(  SqlCdsEntradaNotaCLI_CODIGO.AsString));
  SqlCdsEntradaNotaCLI_CGC.AsString := MascaraCNPJ_CPF(DBInicio.BuscaUmDadoSqlAsString('SELECT CLI_CGC FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(  SqlCdsEntradaNotaCLI_CODIGO.AsString)));

 
end;
 
procedure TFrmEnfIndustrializacao.SqlCdsEntradaNotaENF_OBS_INDUSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TFrmEnfIndustrializacao.SqlCdsEntradaNotaSelecaoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:= EmptyStr;
end;

procedure TFrmEnfIndustrializacao.SqlCdsNotaItemCalcFields(DataSet: TDataSet);
var
    peso, vProdItem, vProdTotal, pesoL, qCom, pesoLDanfe: Double;
    inicio, fim : integer;
    xml, vl : string;
begin
  if (SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO.AsFloat > 0)and(SqlCdsNotaItemENF_QTDE.AsFloat > 0) then
    begin
      SqlCdsNotaItemIC_Percentual.AsFloat := (SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO.AsFloat * 100)/SqlCdsNotaItemENF_QTDE.AsFloat;
    end
  else
    begin
      SqlCdsNotaItemIC_Percentual.AsFloat := 0;
    end;




  peso := 0;
  if SqlCdsNotaItemENF_UCOM.AsString = 'KG' then
  begin
    peso := SqlCdsNotaItemENF_QTDE.AsFloat;
  end
  else
  begin
    if SqlCdsEntradaNotaENF_PESO_TOTAL.AsFloat > 0  then
      pesoLDanfe := SqlCdsEntradaNotaENF_PESO_TOTAL.AsFloat
    else
    begin
      xml := SqlCdsEntradaNotaENF_XML.AsString;
      inicio := pos('<pesoL>', xml) + 7;
      fim    := pos('</pesoL>', xml) - 1;
      vl := StringReplace(copy(xml, inicio, fim-inicio + 1), '.', ',', []);
      if vl = '' then
        pesoLDanfe := SqlCdsNotaItemENF_QTDE.AsFloat
      else
        pesoLDanfe := StrToFloat(vl);
    end;
    vProdItem := SqlCdsNotaItemENF_QTDE.AsFloat * SqlCdsNotaItemENF_PRECO.AsFloat;
    vProdTotal := SqlCdsEntradaNotaENF_TOT_PROD.AsFloat;
    qCom := SqlCdsNotaItemENF_QTDE.AsFloat;
    peso := (vProdItem / (vProdTotal / pesoLDanfe)) / qCom;
  end;

  SqlCdsNotaItemPESO.AsFloat := peso;
  if SqlCdsNotaItemENF_UCOM.AsString = 'KG' then
    SqlCdsNotaItemPESOTOTAL.AsFloat := peso
  else
    SqlCdsNotaItemPESOTOTAL.AsFloat := peso * SqlCdsNotaItemENF_QTDE.AsFloat;

  SqlCdsNotaItemRETORNADO.AsFloat := SqlCdsNotaItemENF_QTDE.AsFloat - SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO.AsFloat;
end;
 
procedure TFrmEnfIndustrializacao.AtualizaConsultaItens;
begin
  //Fecha CdS
  SqlCdsNotaItem.Close;
  SqlCdsRetorno.Close;
  //Verifica se esta ativo
  if (not SqlCdsEntradaNota.IsEmpty) then
    begin
      //Pesquisa os Itens
      SqlCdsNotaItem.CommandText := 'SELECT '+
                               //     '    CAST(nfi.NTP_CFOP as VARCHAR(4)) as enf_cfop, ' +
                                    '    t1.enf_ucom, ' +
                                    '    t1.ENF_PESO_ENTRADA, ' +
                                    '    t1.enf_REGISTRO, t1.prd_refer, '+
                                    '    t1.prd_descri, '+
                                    '    t1.enf_qtde, '+
                                    '    COALESCE((SELECT SUM(PEDIND_QUANTIDADE) FROM PED_IT01_INDUST pii WHERE pii.ENF_REGISTRO = T1.ENF_REGISTRO), 0) AS enf_quantidade_ind_retorno, '+
                                    '    t1.enf_preco, '+
                                    '    t1.amx_codigo, '+
                                    '    t2.amx_descri, '+
                                    '    t1.enf_cfop, ' +
                                    '    t1.itt_registro, ' +
                                    '    t3.itt_descricao, ' +
                                    '    t1.ENF_IT_ENVIADO_PCP_DEMANDA, ' +
                                    '    t1.ENF_IT_QTD_ENV_PCP_DEMANDA, ' +
                                    '    t1.PED_CODIGO, ' +
                                    '    t1.enf_obs_industrializacao '+
                                    ' FROM enf_it01 T1 '+
                                    ' left join almox0000 t2 on (t2.amx_codigo = t1.amx_codigo) ' +
                                    ' left join ind_tiporetorno t3 on (t3.itt_registro = t1.itt_registro) '+
//                                    ' JOIN PED_IT01_INDUST pii ON	(pii.ENF_REGISTRO = t1.ENF_REGISTRO) ' +
//                                    ' JOIN NF_IT01 nfi ON	(nfi.PRF_REGISTRO = pii.PRF_REGISTRO) ' +
                                    ' WHERE T1.enf_it_notanumber = '+QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) +
                                    '  AND t1.for_codigo = '+QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString);
      if DBInicio.IsDesenvolvimento then
        CopyToClipboard(SqlCdsNotaItem.CommandText);
      SqlCdsNotaItem.Open;
    end;
 
end;
 
procedure TFrmEnfIndustrializacao.dsNotaEntradaDataChange(Sender: tObject; Field: TField);
begin
  btnImprimir.Enabled := not SqlCdsEntradaNota.IsEmpty;

  AtualizaConsultaItens;
end;

procedure TFrmEnfIndustrializacao.AtualizaConsultaRetornos;
begin
  //Fecha CdS
  SqlCdsRetorno.Close;
  //Verifica se esta ativo
  if (not SqlCdsNotaItem.IsEmpty) then
    begin
{
      SqlCdsRetorno.CommandText := 'SELECT DISTINCT '+
                                   '    T3.ped_dtentrada, '+
                                   '    T2.ped_codigo, '+
                                   '    T2.prf_qtde, '+
                                   '    (CASE WHEN ni.NF_IT_NOTANUMER IS NULL THEN T2.prf_qtdefat ELSE ni.NF_QTDE END ) AS prf_qtdefat, '+
                                   '    T4.nf_notanumber, '+
                                   '    T4.nf_emissao, '+
                                   '    T4.nf_num_nfe, '+
                                   '    T4.ope_natureza, '+
                                   '    T4.cli_codigo, '+
                                   '    T5.cli_razao, t6.itt_descricao '+
                                   ' FROM '+
                                   ' PED_IT01_INDUST T1 '+
                                   ' JOIN ped_it01 T2 ON (T2.prf_registro = T1.prf_registro) '+
                                   ' JOIN ped0000 T3 ON (T3.ped_codigo = T2.ped_codigo AND T3.EMP_CODIGO = T2.EMP_CODIGO) '+
                                   ' LEFT join nf0001 T4 ON (T4.ped_codigo = T2.ped_codigo AND T4.EMP_CODIGO = T3.EMP_CODIGO) '+
                                   ' LEFT join cli0000 T5 ON (T5.cli_codigo = T3.cli_codigo) left join ind_tiporetorno t6 on (t6.itt_registro = t2.itt_registro) '+
                                   ' LEFT JOIN NF_IT01 ni on (ni.NF_IT_NOTANUMER = t4.NF_NOTANUMBER) ' +
                                   ' WHERE T1.enf_registro = '+SqlCdsNotaItemENF_REGISTRO.AsString;
}

      SqlCdsRetorno.CommandText := 'SELECT DISTINCT '+
                                   '    T3.ped_dtentrada, '+
                                   '    T2.ped_codigo, '+
                                   '    T2.prf_qtde, '+
                               //    '    T2.prf_qtdefat, '+
                                   '    ni.NF_QTDE as prf_qtdefat, '+
                                   '    T4.nf_notanumber, '+
                                   '    T4.nf_emissao, '+
                                   '    T4.nf_num_nfe, '+
                                   '    T4.ope_natureza, '+
                                   '    T4.cli_codigo, '+
                                   '    T5.cli_razao, t6.itt_descricao '+
                                   ' FROM ped0000 t3 ' +
                                   '   JOIN PED_IT01 t2 ON (t2.PED_CODIGO = t3.PED_CODIGO) ' +
                                   '   JOIN PED_IT01_INDUST T1 ON t1.PRF_REGISTRO = t2.PRF_REGISTRO ' +
                                   '   LEFT JOIN nf0001 T4 ON	(T4.ped_codigo = T2.ped_codigo		AND T4.EMP_CODIGO = T3.EMP_CODIGO) ' +
                                   '   JOIN cli0000 T5 ON	(T5.cli_codigo = T3.cli_codigo) ' +
                                   '   LEFT JOIN NF_IT01 ni ON	(ni.NF_IT_NOTANUMER = t4.NF_NOTANUMBER and t2.PRF_REGISTRO = ni.PRF_REGISTRO) ' +
                                   '   LEFT JOIN ind_tiporetorno t6 ON	(t6.itt_registro = t2.itt_registro) ' +
                                   ' WHERE T1.enf_registro = ' + SqlCdsNotaItemENF_REGISTRO.AsString;



      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(SqlCdsRetorno.CommandText);

      SqlCdsRetorno.Open;
    end;

end;
 
procedure TFrmEnfIndustrializacao.AtualizaOP;
begin
  qOP.Close;
  qOP.SQL.Text := 'SELECT DISTINCT ' +
                  '  dp.DEP_CODIGO, ' +
                  '  dp.DEP_SITUACAO , ' +
                  '  pi2.ENF_REGISTRO, ' +
                  '  pi2.PED_CODIGO, ' +
                  '  pi2.PRF_QTDE , ' +
                  '  ei.enf_ucom, ' +
                  '  ei.ENF_PESO_ENTRADA, ' +
                  '  ei.PRD_REFER,  ' +
                  '  pi2.PRF_PRDDESCRI as prd_descri, ' +
                  '  pii.PEDIND_QUANTIDADE AS enf_quantidade_ind_retorno, ' +
                  '  ei.enf_qtde, ' +
                  '  ei.enf_preco, ' +
                  '  al.amx_codigo, ' +
                  '  al.amx_descri, ' +
                  '  ei.enf_cfop, ' +
                  '  ei.itt_registro, ' +
                  '  ei.ENF_IT_ENVIADO_PCP_DEMANDA, ' +
                  '  ei.ENF_IT_QTD_ENV_PCP_DEMANDA, ' +
                  '  ei.enf_obs_industrializacao, ' +
                  '  opv.OPV_PEDIDOINTERNO ' +
                  '  FROM DEMANDA_PRODUCAO dp ' +
                  '  LEFT JOIN PED_IT01 pi2 ON (pi2.PRF_REGISTRO = dp.PRF_REGISTRO) ' +
                  '  LEFT JOIN PED0000 p ON	(p.PED_CODIGO = pi2.PED_CODIGO AND p.EMP_CODIGO = pi2.EMP_CODIGO) ' +
                  '  JOIN ENF_IT01 ei ON	ei.ENF_REGISTRO = dp.ENF_REGISTRO ' +
                  '  LEFT JOIN PED_IT01_INDUST pii ON	pii.ENF_REGISTRO = ei.ENF_REGISTRO AND pii.ACO_CODIGO = pi2.ACO_CODIGO ' +
                  '  LEFT JOIN ACABAMENTO_CORES ac ON (AC.ACO_CODIGO = PI2.ACO_CODIGO ) ' +
                  '  JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = p.OPV_CODIGO AND OPV.OPV_PRODUCAO = ''S'') ' +
                  '  LEFT JOIN ind_tiporetorno tr ON	(tr.itt_registro = ei.itt_registro) ' +
                  '  LEFT JOIN almox0000 al ON	(al.amx_codigo = ei.amx_codigo) ' +
                  ' WHERE dp.enf_registro = ' + IntToStr(StrToIntDef(SqlCdsNotaItemENF_REGISTRO.AsString, 0)) ;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qOP.SQL.Text);

  qOP.Open;
end;

procedure TFrmEnfIndustrializacao.FormClose(Sender: tObject; var Action: TCloseAction);
var
  ini:TIniFile;
begin
  //Fecha os Cds
  SqlCdsRetorno.Close;
  SqlCdsNotaItem.Close;
  SqlCdsEntradaNota.Close;
  ini := TIniFile.Create(nomeArquivoIni);
  ini.WriteInteger('SPLITTER', 'grpFiltro', grpFiltro.Height);
  ini.WriteInteger('SPLITTER', 'grpNotaFiscalEntrada', grpNotaFiscalEntrada.Height);
  ini.WriteInteger('SPLITTER', 'pcObservacoes', pcObservacoes.Height);
  ini.WriteInteger('SPLITTER', 'grpItens', grpItens.Height);
  ini.WriteInteger('SPLITTER', 'grpObsItem', grpObsItem.Height);
  ini.WriteInteger('SPLITTER', 'grpItensRetorno', grpItensRetorno.Height);
  ini.Free;

  tcr.Free;
  tcr := nil;

  Action := CaFree;
end;
 
procedure TFrmEnfIndustrializacao.FormCreate(Sender: TObject);
begin
  nomeArquivoIni := dbInicio.SistemaLocal+'settings\' + self.name + DBInicio.Usuario.CODIGO + 'splitter.pos';
  pcIEOP.ActivePageIndex := 0;
  tcr := TProducaoDao.Create(self);

end;

procedure TFrmEnfIndustrializacao.FormDestroy(Sender: TObject);
begin
     FrmEnfIndustrializacao := Nil;
end;

procedure TFrmEnfIndustrializacao.AtualizaConsultaNotas;
  var
      sCondicao:string;
      reg : integer;
begin
  //Filtro
  if (Trim(edtNotaFiscal.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and T1.enf_notanumber like '+QuotedStr('%'+Trim(edtNotaFiscal.Text));
    end;
  if (Trim(edtFornecedor.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and (T2.for_razao like '+QuotedStr(Trim('%'+edtFornecedor.Text+'%'));
      sCondicao := sCondicao+ ' or cl.CLI_RAZAO like '+QuotedStr(Trim('%'+edtFornecedor.Text+'%')) + ')';
    end;
  if (DataDe.Text <> '  /  /    ') then
    begin
      if cbEmissaoEntrada.ItemIndex = 0 then
        sCondicao := sCondicao+ ' and T1.enf_emissao >= '+QuotedStr(DataAmericana(DataDe.Text))
      else
        sCondicao := sCondicao+ ' and T1.ENF_ENTRADA >= '+QuotedStr(DataAmericana(DataDe.Text));
    end;
  if (DataAte.Text <> '  /  /    ') then
    begin
      if cbEmissaoEntrada.ItemIndex = 0 then
        sCondicao := sCondicao+ ' and T1.enf_emissao <= '+QuotedStr(DataAmericana(DataAte.Text))
      else
        sCondicao := sCondicao+ ' and T1.ENF_ENTRADA <= '+QuotedStr(DataAmericana(DataAte.Text));
    end;
  if (cbbSitucao.ItemIndex <> 0) then
    begin

        sCondicao := sCondicao + ' and ';
      if (cbbSitucao.ItemIndex = 1) then
        begin
          sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo)'+
                                   ' > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) ';
        end
      else
        begin
          sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) '+
                                   ' = (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) ';
        end;

    end;
  //Fecha os CdS
  if SqlCdsEntradaNota.Active then
    reg := SqlCdsEntradaNota.RecNo
  else
    reg := -1;
  SqlCdsEntradaNota.Close;
  SqlCdsEntradaNota.CommandText := 'SELECT '+
                                   '     T1.ENF_REGISTRO, ' +
                                   '     T1.ENF_ENTRADA, ' +
                                   '     T1.ENF_ENVIADO_PCP_DEMANDA, ' +
                                   '     T1.ENF_XML, ' +
                                   '     T1.enf_obs_indust, '+
                                   '     T1.enf_notanumber, '+
                                   '     T1.enf_modelo_nf, '+
                                   '     T1.enf_serie, '+
                                   '     T1.enf_emissao, '+
                                   '     T1.for_codigo, '+
                                   '     T1.cli_codigo, '+
                                   '     T2.for_razao, '+
                                   '     T2.FOR_CGC , ' +
                                   '     T1.ope_natureza, '+
                                   '     T1.enf_tot_prod, '+
                                   '     T1.ENF_PESO_TOTAL, ' +
                                   '     T1.enf_tot_nota, t1.ENF_DADOS_ADICIONAIS,t1.ENF_DADOS_ADICIONAIS_FISCO,'+
                                   '     (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) AS QTDE_PRODUTOS, '+
                                   '     (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) AS QTDE_PRODUTOS_RETORNO '+
                                   ' FROM enf0001 T1 '+
                                   ' LEFT JOIN for0000 T2 ON (T2.for_codigo = T1.for_codigo) '+
                                   ' LEFT JOIN CLI0000 cl ON (cl.CLI_CODIGO = T1.CLI_CODIGO) '+
                                   ' WHERE T1.enf_industrializacao = ''S'' '+sCondicao+
                                   ' order by t1.enf_emissao, t1.enf_registro desc';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(SqlCdsEntradaNota.CommandText);

  SqlCdsEntradaNota.Open;
  if (reg > 0) and (SqlCdsEntradaNota.RecordCount > 0) then
    SqlCdsEntradaNota.RecNo := iif(SqlCdsEntradaNota.RecordCount < reg, SqlCdsEntradaNota.RecordCount,  reg);
end;

procedure TFrmEnfIndustrializacao.FormShow(Sender: tObject);
var
  ini:TIniFile;
begin
  AtualizaConsultaNotas;
  ini:=TiniFile.Create(nomeArquivoIni);
  grpFiltro.Height            := ini.ReadInteger('SPLITTER', 'grpFiltro', grpFiltro.Height);
  grpNotaFiscalEntrada.Height := ini.ReadInteger('SPLITTER', 'grpNotaFiscalEntrada', grpNotaFiscalEntrada.Height);
  pcObservacoes.Height        := ini.ReadInteger('SPLITTER', 'pcObservacoes', pcObservacoes.Height);
  grpItens.Height             := ini.ReadInteger('SPLITTER', 'grpItens', grpItens.Height);
  grpObsItem.Height           := ini.ReadInteger('SPLITTER', 'grpObsItem', grpObsItem.Height);
  grpItensRetorno.Height      := ini.ReadInteger('SPLITTER', 'grpItensRetorno', grpItensRetorno.Height);
  ini.Free;

  pcObservacoes.ActivePageIndex := 0;
  dbgrdNotaEntrada.SelectedIndex := 1;
  edtNotaFiscal.SetFocus;
end;
 
procedure TFrmEnfIndustrializacao.BitLocalizarNotaClick(Sender: tObject);
begin
  AtualizaConsultaNotas;
end;
 
procedure TFrmEnfIndustrializacao.frxEntradaNFRetornoBeginDoc(Sender: TObject);
begin
  TfrxPictureView(frxEntradaNFRetorno.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFrmEnfIndustrializacao.frxEtiquetaBeginDoc(Sender: TObject);
begin
  TfrxPictureView(frxEtiqueta.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFrmEnfIndustrializacao.frxEntradaNFRetorno0BeginDoc(Sender: TObject);
begin
  TfrxPictureView(frxEntradaNFRetorno.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFrmEnfIndustrializacao.frxForCliProdutoBeginDoc(Sender: TObject);
begin
  TfrxPictureView(frxForCliProduto.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TFrmEnfIndustrializacao.frxForCliProdutoGetValue(const VarName: string; var Value: Variant);
begin
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
  if (VarName  = 'DataI') then
     Value := DataDe.Text;
  if (VarName  = 'DataF') then
     Value := DataAte.Text;

end;

procedure TFrmEnfIndustrializacao.frxIndustrializacaoGetValue(
  const VarName: String; var Value: Variant);
var
  stream:TStream;
  JpedImage:TJPEGImage;
  MinhaImagem:TJPEGImage;
begin
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'FOR_CGC') then
     Value := MascaraCNPJ_CPF(SqlCdsEntradaNotaFOR_CGC.AsString)
  else
  if (VarName  = 'QUANTIDADE') then
  begin
    if frmEnfIndustrializacoSelecionaCor <> nil then
      Value := SqlCdsNotaItemENF_QTDE.AsCurrency - SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO.AsCurrency
//      Value := SqlCdsNotaItemENF_QTDE.AsCurrency
    else
    if (frmEnfIndustrializacoEnviaDemanda = NIL)  then
      Value := SqlCdsNotaItemRETORNADO.AsCurrency
    else
      Value := frmEnfIndustrializacoEnviaDemanda.edEnviar.Value;
  end
  else
  if (VarName  = 'PESO_UNITARIO') then
  begin
    if (SqlCdsNotaItemENF_UCOM.AsString = 'KG')  then
      Value := SqlCdsNotaItemRETORNADO.AsCurrency
    else
      Value := SqlCdsNotaItemPESO.AsCurrency;
  end
  else
  if (VarName  = 'PESO_TOTAL') then
  begin
    if (SqlCdsNotaItemENF_UCOM.AsString = 'KG')  then
      Value := SqlCdsNotaItemRETORNADO.AsCurrency
    else
    begin
      if frmEnfIndustrializacoSelecionaCor <> nil then
        Value := SqlCdsNotaItemPESO.AsCurrency * SqlCdsNotaItemENF_QTDE.AsCurrency
      else
      if frmEnfIndustrializacoEnviaDemanda = nil then
        Value := iif(SqlCdsNotaItemENF_UCOM.AsString ='KG', SqlCdsNotaItemRETORNADO.AsCurrency, SqlCdsNotaItemPESO.AsCurrency * SqlCdsNotaItemRETORNADO.AsCurrency)
      else
        Value := SqlCdsNotaItemPESO.AsCurrency * frmEnfIndustrializacoEnviaDemanda.edEnviar.Value;
    end;
  end
  else
  if VarName = 'PRD_DESCRI' then
  begin
      if frmEnfIndustrializacoEnviaDemanda = nil then
        Value := SqlCdsNotaItemPRD_DESCRI.AsString
      else
        Value := DBInicio.BuscaUmDadoSqlAsString(
          'SELECT PRF_PRDDESCRI ' +
          ' FROM PED_IT01 ' +
          ' WHERE ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString +
          ' AND PED_CODIGO = ' + QuotedStr(CodigoPedidoFRX)

          );
  end
  else
  if (VarName  = 'INSCR') then
     Value := dbInicio.Empresa.INSC_EST;


  Exit;

  {

  https://novidev.myjetbrains.com/youtrack/issue/ADJT-1678/Erro-ao-gerar-relatorios-de-industrializacao
  ERRO ESTRUTURAL, CADA CAMPO QUE ERA LIDO, ALOCAVA O ESPACO DO STREAM DA LOGO NA MEMÓRIA, NEM LIBERANDO O STREAM SOLUCIONOU,
  FOI MUDADO PARA O EVENTO ONBEGINDOC DO RELATÓRIO A LEITURA DA LOGO, QUE É LIDA UMA ÚNICA VEZ QUANDO DA IMPRESSÃO DO RELATÓRIO.
  FICA A DICA PARA AS PRÓXIMAS GERAÇÕES ;)


  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
           begin
              stream := TMemoryStream.Create;
              stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
              MinhaImagem := TJPEGImage.Create;
              MinhaImagem.LoadFromStream(stream);
              MinhaImagem.SaveToStream(stream);
              TfrxPictureView(frxIndustrializacao.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
              TfrxPictureView(frxRomaneioPlanilha.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
              FreeAndNil(stream)
           end;
     end;
  }
end;
 
procedure TFrmEnfIndustrializacao.dsNotaItemDataChange(Sender: tObject;
  Field: TField);
begin
   AtualizaConsultaRetornos;
   AtualizaOP;
end;

procedure TFrmEnfIndustrializacao.edtNotaFiscalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BitLocalizarNota.Click;
end;

procedure TFrmEnfIndustrializacao.BitBtn1Click(Sender: tObject);
var
      sCondicao:string;
begin
  //Filtro
  if (Trim(edtNotaFiscal.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and T0.enf_notanumber like '+QuotedStr('%'+Trim(edtNotaFiscal.Text));
    end;
  if (Trim(edtFornecedor.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and T4.for_razao like '+QuotedStr(Trim('%'+edtFornecedor.Text+'%'));
    end;
  if (DataDe.Text <> '  /  /    ') then
    begin
      sCondicao := sCondicao+ ' and T0.enf_emissao >= '+QuotedStr(DataAmericana(DataDe.Text));
    end;
  if (DataAte.Text <> '  /  /    ') then
    begin
      sCondicao := sCondicao+ ' and T0.enf_emissao <= '+QuotedStr(DataAmericana(DataAte.Text));
    end;
  if (cbbSitucao.ItemIndex <> 0) then
    begin

        sCondicao := sCondicao + ' and ';
      if (cbbSitucao.ItemIndex = 1) then
        begin
          sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codigo)'+
                                   ' > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codigo) ';
        end
      else
        begin
          sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codigo) '+
                                   ' = (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codigo) ';
        end;

    end;
  //Fecha os CdS
  //Atualiza Consulta
  SqlCdsItensRelatorio.Close;
  SqlCdsItensRelatorio.CommandText := ' SELECT '+
                                      '    t0.enf_notanumber, '+
                                      '    t0.enf_entrada, '+
                                      '    t4.for_codigo, '+
                                      '    t4.for_razao, '+
                                      '    t1.enf_registro, '+
                                      '    t1.prd_refer, '+
                                      '    t1.prd_descri, '+
                                      '    t1.enf_qtde, '+
                                      '    t1.enf_quantidade_ind_retorno, '+
                                      '    t1.enf_preco, '+
                                      '    t1.amx_codigo, '+
                                      '    t2.amx_descri, '+
                                      '    t1.enf_cfop, '+
                                      '    t3.itt_registro, '+
                                      '    t3.itt_descricao '+
                                      ' FROM '+
                                      ' enf_it01 T1 '+
                                      ' join for0000 t4 on (t4.for_codigo = t1.for_codigo) '+
                                      ' join enf0001 t0 on (t0.enf_notanumber = t1.enf_it_notanumber and t0.for_codigo = t1.for_codigo and t0.enf_industrializacao = ''S'' '+sCondicao+') '+
                                      ' left join almox0000 t2 on (t2.amx_codigo = t1.amx_codigo) '+
                                      ' left join ind_tiporetorno t3 on (t3.itt_registro = t1.itt_registro) '+

                                      ' ORDER BY t3.itt_descricao, t0.enf_entrada, t0.enf_notanumber ';
  SqlCdsItensRelatorio.Open;
  //Abre Relatporio
  frxRelatorio.ShowReport();
  
end;

procedure TFrmEnfIndustrializacao.frxRelatorioGetValue(
  const VarName: String; var Value: Variant);
var
  stream:TStream;
  JpedImage:TJPEGImage;
  MinhaImagem:TJPEGImage;
begin
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := dbInicio.Empresa.INSC_EST;
 
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
           begin
              stream := TMemoryStream.Create;
              stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
              //FrmMenu.ImglogoMenu.saPicture.sa
              MinhaImagem := TJPEGImage.Create;
              MinhaImagem.LoadFromStream(stream);
              MinhaImagem.SaveToStream(stream);
              TfrxPictureView(frxRelatorio.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
           end;
     end;

end;

procedure TFrmEnfIndustrializacao.frxRomaneioPlanilhaBeginDoc(Sender: TObject);
begin
  TfrxPictureView(frxRomaneioPlanilha.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.Logo);
end;

procedure TFrmEnfIndustrializacao.GerarEtiqueta1Click(Sender: TObject);
var
  notaAtual, corAtual, notas, forCodigo, xml, vl : string;
  soma, peso, pesoLDanfe, vProdItem, vProdTotal, qCom: double;
  inicio, fim : integer;
begin
  inherited;

  SqlCdsEntradaNota.DisableControls;
  SqlCdsEntradaNota.Filtered := False;
  SqlCdsEntradaNota.Filter := ' selecao = 1';
  SqlCdsEntradaNota.Filtered := True;
  if SqlCdsEntradaNota.RecordCount = 0 then
  begin
    uteis.Aviso('Nenhuma nota foi selecionada...');
    SqlCdsEntradaNota.Filtered := False;
    Exit;
  end;

  SqlCdsEntradaNota.First;
  notas := '';
  forCodigo := '';
  while not SqlCdsEntradaNota.Eof do
  begin
    notas := notas + QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) + ',';
    forCodigo := forCodigo + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString) + ',';
    SqlCdsEntradaNota.Next;
  end;
  notas := copy(notas, 1, notas.Length -1);
  forCodigo := copy(forCodigo, 1, forCodigo.Length -1);

  qAux.Close;
  qAux.SQL.Text := ' SELECT  ' +
                   ' cl.CLI_RAZAO, ' +
                   ' ac.ACO_NOME , ' +
                   ' CURRENT_TIMESTAMP AS DTENTREGA,' +
                   ' ei.ENF_IT_NOTANUMBER AS NOTA_FISCAL, ' +
                   ' ei.ENF_PESO_ENTRADA AS PESO, ' +
                   ' ei.ENF_UCOM, ei.ENF_QTDE, ei.ENF_PRECO, ' +
                   ' ef.ENF_PESO_TOTAL, ef.ENF_XML, ef.ENF_TOT_PROD, pit.PRF_QTDE ' +
                   ' FROM	ENF_IT01 ei ' +
                   ' JOIN ENF0001 ef ON (ef.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER) ' +
                   ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = ef.CLI_CODIGO) ' +
                   ' JOIN DEMANDA_PRODUCAO dp ON	(ei.ENF_REGISTRO=dp.ENF_REGISTRO) ' +
                   ' JOIN PED_IT01 pit ON (dp.PRF_REGISTRO=pit.PRF_REGISTRO) ' +
                   ' LEFT JOIN ACABAMENTO_CORES ac ON	(ac.ACO_CODIGO = pit.ACO_CODIGO) ' +
                   ' WHERE ei.enf_it_notanumber in (' + notas + ')' +
                   ' AND ei.for_codigo in (' + forCodigo + ')'
                   ;
  if dbInicio.IsDesenvolvimento then
    CopyToClipboard(qAux.SQL.Text);
  qAux.Open;
  mtEtiqueta.CreateDataset;
  mtEtiqueta.Open;
  mtTemp.CreateDataset;
  mtTemp.Open;
  while not qAux.Eof do
  begin



    peso := 0;
    if qAux.FieldByName('ENF_UCOM').AsString = 'KG' then
    begin
      peso := qAux.FieldByName('ENF_QTDE').AsFloat;
    end
    else
    begin
      if qAux.FieldByName('ENF_PESO_TOTAL').AsFloat > 0  then
        pesoLDanfe := qAux.FieldByName('ENF_PESO_TOTAL').AsFloat
      else
      begin
        xml := qAux.FieldByName('ENF_XML').AsString;
        inicio := pos('<pesoL>', xml) + 7;
        fim    := pos('</pesoL>', xml) - 1;
        vl := StringReplace(copy(xml, inicio, fim-inicio + 1), '.', ',', []);
        if vl = '' then
          pesoLDanfe := qAux.FieldByName('ENF_QTDE').AsFloat
        else
          pesoLDanfe := StrToFloat(vl);
      end;
      vProdItem := qAux.FieldByName('ENF_QTDE').AsFloat * qAux.FieldByName('ENF_PRECO').AsFloat;
      vProdTotal := qAux.FieldByName('ENF_TOT_PROD').AsFloat;
      qCom := qAux.FieldByName('ENF_QTDE').AsFloat;
      peso := ((vProdItem / (vProdTotal / pesoLDanfe)) / qCom) * qAux.FieldByName('PRF_QTDE').AsFloat;
    end;



    mtTemp.Insert;
    mtTempCLI_RAZAO.AsString := qAux.FieldByName('CLI_RAZAO').AsString;
    mtTempACO_NOME.AsString := qAux.FieldByName('ACO_NOME').AsString;
    mtTempDTENTREGA.AsDateTime := qAux.FieldByName('DTENTREGA').AsDateTime;
    mtTempPESO.AsFloat := peso;
    mtTempNOTA_FISCAL.AsString := qAux.FieldByName('NOTA_FISCAL').AsString;
    mtTemp.Post;
    qAux.Next;
  end;
  mtTemp.Addindex('temp', 'ACO_NOME;NOTA_FISCAL', '', []);
  mtTemp.IndexName := 'temp';
  mtTemp.First;
  while not mtTemp.Eof do
  begin
    mtEtiqueta.Insert;
    mtEtiquetaCLI_RAZAO.AsString := mtTempCLI_RAZAO.AsString;
    mtEtiquetaACO_NOME.AsString := mtTempACO_NOME.AsString;
    mtEtiquetaDTENTREGA.AsDateTime := mtTempDTENTREGA.AsDateTime;
    notas := '';
    soma := 0;
    while not mtTemp.Eof do
    begin
      corAtual := mtTempACO_NOME.AsString;
      if pos(IntToStr(mtTempNOTA_FISCAL.AsInteger), notas) = 0 then
        notas := notas + IntToStr(mtTempNOTA_FISCAL.AsInteger) + ' - ' ;
      soma := soma +  mtTempPESO.AsFloat;
      mtTemp.Next;
      if corAtual <> mtTempACO_NOME.AsString then
        Break;
    end;
    mtEtiquetaNOTA_FISCAL.AsString := notas;
    mtEtiquetaPESO.AsFloat := soma;
    mtEtiqueta.Post;
  end;

  frxEtiqueta.ShowReport;

  mtTemp.DeleteIndex('temp');
  mtEtiqueta.Close;
  mtTemp.Close;
  SqlCdsEntradaNota.Filtered := False;
  SqlCdsEntradaNota.EnableControls;
end;
procedure TFrmEnfIndustrializacao.NotaFiscalPorProdutoPendent1Click(Sender: TObject);
var
  sCondicao, devolveNF, devolveFOR: string;
begin

  devolveNF := edtNotaFiscal.Text;
  devolveFor := edtFornecedor.Text;

  if TComponent(Sender).Name = 'NFPP' then
  begin
    edtNotaFiscal.Text := SqlCdsEntradaNotaENF_NOTANUMBER.AsString;
    edtFornecedor.Text := SqlCdsEntradaNotaFOR_RAZAO.AsString;
  end;

  if (cbbSitucao.ItemIndex <> 0) then
  begin
    sCondicao := ' and ';
    if (cbbSitucao.ItemIndex = 1) then
    begin
      sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = ne.enf_notanumber AND T3.for_codigo = ne.for_codigo AND nfit.prd_refer = t3.PRD_REFER)'+
                               ' > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = ne.enf_notanumber AND T3.for_codigo = ne.for_codigo AND nfit.prd_refer = t3.PRD_REFER) ';
    end
    else
    begin
      sCondicao := sCondicao + ' (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = ne.enf_notanumber AND T3.for_codigo = ne.for_codigo AND nfit.prd_refer = t3.PRD_REFER) '+
                               ' = (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = ne.enf_notanumber AND T3.for_codigo = ne.for_codigo AND nfit.prd_refer = t3.PRD_REFER) ';
    end;
  end;



  qForCliProduto.Close;
  qForCliProduto.SQL.Clear;
  qForCliProduto.SQL.Text := ' SELECT DISTINCT' +
         '  ne.cli_codigo, c.CLI_RAZAO , fo.for_razao, ne.enf_notanumber,' + // ka.AMX_CODIGO,
         ' 	ne.enf_entrada, ne.enf_emissao, nfit.prd_refer, pr.prd_descri, ' +
         '  nfit.enf_qtde,' +

         '  nfit.ENF_QUANTIDADE_IND_RETORNO, ' +

         ' CASE ' +
         '   WHEN nfit.ENF_UCOM = ''KG'' THEN 1 ' +
         '   ELSE (nfit.ENF_PESO_ENTRADA / nfit.enf_qtde)  ' +
         ' END	AS ENF_PESO_ENTRADA, ' +

         ' CASE ' +
         '   WHEN nfit.ENF_UCOM = ''KG'' THEN (nfit.enf_qtde-nfit.ENF_QUANTIDADE_IND_RETORNO) ' +
         '   ELSE CAST(((nfit.ENF_PESO_ENTRADA / nfit.enf_qtde) *  nfit.ENF_QUANTIDADE_IND_RETORNO) AS NUMERIC(18,5))  ' +
         ' END	AS TOTAL ' +

         ' FROM enf_it01 nfit ' +
         '  INNER JOIN enf0001 ne ON nfit.enf_it_notanumber = ne.enf_notanumber ' +
         '  INNER JOIN for0000 fo ON nfit.for_codigo = fo.for_codigo ' +
         '  INNER JOIN prd0000 pr ON nfit.prd_refer = pr.prd_refer ' +
         '  LEFT  JOIN CLI0000 c ON		c.CLI_CODIGO = ne.cli_codigo ' +
         ' WHERE nfit.emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo) +
         iif(EdtNotaFiscal.Text = '' , '' , ' AND ne.enf_notanumber like ' + QuotedStr('%' + EdtNotaFiscal.Text)   ) +
         iif(EdtFornecedor.Text = '' , '' , ' AND fo.for_razao like ' + QuotedStr('%' + EdtFornecedor.Text + '%') ) +
         iif((DataDe.Date = 0) or (DataAte.Date = 0), '', '  AND ne.ENF_EMISSAO BETWEEN ' + QuotedStr(DataAmericana(DataDe.Text)) + ' AND ' + QuotedStr(DataAmericana(DataAte.Text)) ) + ' ' +
         sCondicao +
         ' ORDER BY fo.FOR_RAZAO, ne.ENF_NOTANUMBER';

  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qForCliProduto.SQL.Text);
  qForCliProduto.Open;
  if qForCliProduto.IsEmpty then
  begin
    MessageDlg('Não Existem itens pendentes para impressão.', mtInformation, [mbOK], 0);
    Exit;
  end;

{
  if radExcel.Checked then
  begin
    lista := TStringList.Create;
    lista.Clear;
    lista.add('enf_notanumber');
    lista.add('enf_emissao');
    lista.add('enf_entrada');
    lista.add('AMX_CODIGO');
    lista.add('for_razao');
    lista.add('cli_razao');
    lista.add('prd_refer');
    lista.add('prd_descri');
    lista.add('enf_qtde');
    lista.add('enf_quantidade_ind_retorno');
    lista.add('total');
    CriaCSV(dsqForCliProduto, lista);
  end
  else }

  if TComponent(Sender).Name = 'NFPP' then
  begin
    edtNotaFiscal.Text := devolveNF;
    edtFornecedor.Text := devolveFOR;
  end;
  frxForCliProduto.ShowReport;

end;


procedure TFrmEnfIndustrializacao.NotaFiscalporProdutoRetornado1Click(Sender: TObject);
var
  sCondicao, FromJoin, devolveNF, devolveFor: string;
begin

  devolveNF := edtNotaFiscal.Text;
  devolveFor := edtFornecedor.Text;
  if TComponent(Sender).Name = 'NFPR' then
  begin
    edtNotaFiscal.Text := SqlCdsEntradaNotaENF_NOTANUMBER.AsString;
    edtFornecedor.Text := SqlCdsEntradaNotaFOR_RAZAO.AsString;
  end;



  if (cbbSitucao.ItemIndex <> 0) then
  begin
    sCondicao := '';
    if (cbbSitucao.ItemIndex = 1) then
      begin
        sCondicao :=  ' AND (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = enf.enf_notanumber AND T3.for_codigo = enf.for_codigo)'+
                        ' > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = enf.enf_notanumber AND t3.for_codigo = enf.for_codigo) ';
      end
    else
      begin
        sCondicao :=  ' AND (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = enf.enf_notanumber AND T3.for_codigo = enf.for_codigo) '+
                        ' = (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = enf.enf_notanumber AND T3.for_codigo = enf.for_codigo) ';
      end;
  end;

  FromJoin :=
       ' FROM enf0001 enf ' +
       ' JOIN ENF_IT01 enfit ON	(enfit.ENF_IT_NOTANUMBER = enf.ENF_NOTANUMBER AND enfit.FOR_CODIGO = enf.FOR_CODIGO) ' +
       ' JOIN PED_IT01_INDUST pii ON	(pii.ENF_REGISTRO = enfit.ENF_REGISTRO) ' +
       ' JOIN NF_IT01 nfi ON	(nfi.PRF_REGISTRO = pii.PRF_REGISTRO) ' +
       ' JOIN NF0001 nf ON	(nf.NF_NOTANUMBER = nfi.NF_IT_NOTANUMER) ' +
       ' JOIN PED_IT01 pit ON (pit.PRF_REGISTRO = nfi.PRF_REGISTRO) ' +
       ' JOIN for0000 fo ON	(fo.for_codigo = enf.for_codigo) ' +
       ' JOIN prd0000 pr ON	(pr.prd_refer = nfi.prd_refer) ' +
       ' JOIN CLI0000 c ON	(c.CLI_CODIGO = nf.cli_codigo) ' +
       ' LEFT JOIN ACABAMENTO_CORES ac ON (ac.ACO_CODIGO = pii.ACO_CODIGO) ' +
       ' LEFT JOIN IND_TIPORETORNO it ON	(it.ITT_REGISTRO = enfit.ITT_REGISTRO) ';

  cdsEntradaNFRetorno.DisableControls;
  cdsEntradaNFRetornoProduto.DisableControls;
  cdsEntradaNFRetornoItem.DisableControls;


  qEntradaNFRetorno.Close;
  qEntradaNFRetorno.SQL.Text :=
     ' SELECT DISTINCT ' +
     '   fo.FOR_CODIGO,  ' +
     '   enf.enf_notanumber, ' +
     '   enf.enf_emissao, ' +
     '   enf.enf_entrada, ' +
     '   fo.for_razao ' +
         FromJoin +
     '   WHERE 1 = 1 ' +
     iif(edtNotaFiscal.Text = '', '',  '   AND (enf.ENF_NOTANUMBER LIKE  ' + QuotedStr('%' + edtNotaFiscal.Text)+ ')') +
     iif(edtFornecedor.Text = '', '',  '   AND (fo.FOR_RAZAO LIKE  ' + QuotedStr(edtFornecedor.Text + '%')+ ')') +
     iif((DataDe.Date = 0) OR (DataAte.Date = 0), '',  '   AND enf.ENF_EMISSAO BETWEEN ' + DateToSQL(DataDe.Date) + ' AND ' +  DateToSQL(DataAte.Date)) +
     sCondicao +
     '   ORDER BY enf.enf_notanumber  '
     ;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qEntradaNFRetorno.SQL.Text);
  cdsEntradaNFRetorno.Close;
  cdsEntradaNFRetorno.Open;

  qEntradaNFRetornoProduto.Close;
  qEntradaNFRetornoProduto.SQL.Text :=
     ' SELECT DISTINCT ' +
     '   fo.FOR_CODIGO,  ' +
     '   enf.enf_notanumber, ' +
     '   nfi.prd_refer, ' +
     '   pr.prd_descri, ' +
     '   enfit.enf_qtde, ' +
     ' CAST(enfit.ENF_CFOP  AS VARCHAR(4)) AS enf_cfop, ' +
//     '   CAST(nfi.NTP_CFOP AS VARCHAR(4)) as enf_cfop, ' +
//     '   enfit.enf_cfop, ' +
     '   enfit.ENF_QUANTIDADE_IND_RETORNO, ' +
     '   CASE ' +
     '     WHEN enfit.ENF_UCOM = ''KG'' THEN 1 ' +
     '     ELSE (enfit.ENF_PESO_ENTRADA / enfit.enf_qtde) ' +
     '   END AS ENF_PESO_ENTRADA, ' +
     '   CASE ' +
     '     WHEN enfit.ENF_UCOM = ''KG'' THEN (enfit.enf_qtde - enfit.ENF_QUANTIDADE_IND_RETORNO) ' +
     '     ELSE CAST(((enfit.ENF_PESO_ENTRADA / enfit.enf_qtde) * enfit.ENF_QUANTIDADE_IND_RETORNO) AS NUMERIC(18, ' +
     '     5)) ' +
     '   END AS PESO_TOTAL ' +
         FromJoin +
     '   WHERE 1 = 1 ' +
     iif(edtNotaFiscal.Text = '', '',  '   AND (enf.ENF_NOTANUMBER LIKE  ' + QuotedStr('%' + edtNotaFiscal.Text)+ ')') +
     iif(edtFornecedor.Text = '', '',  '   AND (fo.FOR_RAZAO LIKE  ' + QuotedStr(edtFornecedor.Text + '%')+ ')') +
     iif((DataDe.Date = 0) OR (DataAte.Date = 0), '',  '   AND enf.ENF_EMISSAO BETWEEN ' + DateToSQL(DataDe.Date) + ' AND ' +  DateToSQL(DataAte.Date)) +
     '   ORDER BY enf.enf_notanumber, nfi.prd_refer, nf.NF_NUM_NFE  '
     ;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qEntradaNFRetornoProduto.SQL.Text);
  cdsEntradaNFRetornoProduto.Close;
  cdsEntradaNFRetornoProduto.Open;




  qEntradaNFRetornoItem.Close;
  qEntradaNFRetornoItem.SQL.Text :=
     ' SELECT DISTINCT ' +
     '   ac.ACO_NOME , ' +
     '   fo.FOR_CODIGO,  ' +
     '   enf.enf_notanumber, ' +
     '   CAST(nf.NF_NUM_NFE AS VARCHAR(10)) as NF_NOTANUMBER, ' +
     '   nf.NF_EMISSAO, ' +
     '   nfi.prd_refer, ' +
     '   nfi.NF_QTDE, ' +
     '   c.CLI_RAZAO , ' +
     '   it.ITT_DESCRICAO, ' +
     '   nf.OPE_NATUREZA ' +
         FromJoin +
     '   WHERE 1 = 1 ' +
     iif(edtNotaFiscal.Text = '', '',  '   AND (enf.ENF_NOTANUMBER LIKE  ' + QuotedStr('%' + edtNotaFiscal.Text)+ ')') +
     iif(edtFornecedor.Text = '', '',  '   AND (fo.FOR_RAZAO LIKE  ' + QuotedStr(edtFornecedor.Text + '%')+ ')') +
     iif((DataDe.Date = 0) OR (DataAte.Date = 0), '',  '   AND enf.ENF_EMISSAO BETWEEN ' + DateToSQL(DataDe.Date) + ' AND ' +  DateToSQL(DataAte.Date)) +
     '   ORDER BY enf.enf_notanumber, nfi.PRD_REFER, nf.NF_NUM_NFE  '
  ;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qEntradaNFRetornoItem.SQL.Text);
  cdsEntradaNFRetornoItem.Close;
  cdsEntradaNFRetornoItem.Open;

  cdsEntradaNFRetornoProduto.Addindex('IndNome2', 'ENF_NOTANUMBER;FOR_CODIGO', []);
  cdsEntradaNFRetornoItem.Addindex('IndNome3', 'ENF_NOTANUMBER;FOR_CODIGO;PRD_REFER' ,[]);

  cdsEntradaNFRetornoProduto.IndexName := 'IndNome2';
  cdsEntradaNFRetornoItem.IndexName := 'IndNome3';

  if TComponent(Sender).Name = 'NFPR' then
  begin
    edtNotaFiscal.Text := devolveNF;
    edtFornecedor.Text := devolveFor;
  end;

  frxEntradaNFRetorno.ShowReport;

  cdsEntradaNFRetornoProduto.DeleteIndex('IndNome2');
  cdsEntradaNFRetornoItem.DeleteIndex('IndNome3');

end;

procedure TFrmEnfIndustrializacao.qOPCalcFields(DataSet: TDataSet);
var
    peso, vProdItem, vProdTotal, qCom, pesoLDanfe: Double;
    inicio, fim : integer;
    xml, vl : string;
begin
  if (qOPENF_QUANTIDADE_IND_RETORNO.AsFloat > 0)and(qOPENF_QTDE.AsFloat > 0) then
  begin
    qOPIC_Percentual.AsFloat := (qOPENF_QUANTIDADE_IND_RETORNO.AsFloat * 100) / qOPENF_QTDE.AsFloat;
  end
  else
  begin
    qOPIC_Percentual.AsFloat := 0;
  end;

  peso := 0;
  if qOPENF_UCOM.AsString = 'KG' then
  begin
    peso := qOPENF_QTDE.AsFloat;
  end
  else
  begin
    if SqlCdsEntradaNotaENF_PESO_TOTAL.AsFloat > 0  then
      pesoLDanfe := SqlCdsEntradaNotaENF_PESO_TOTAL.AsFloat
    else
    begin
      xml := SqlCdsEntradaNotaENF_XML.AsString;
      inicio := pos('<pesoL>', xml) + 7;
      fim    := pos('</pesoL>', xml) - 1;
      vl := StringReplace(copy(xml, inicio, fim-inicio + 1), '.', ',', []);
      if vl = '' then
        pesoLDanfe := qOPENF_QTDE.AsFloat
      else
        pesoLDanfe := StrToFloat(vl);
    end;
    vProdItem := qOPENF_QTDE.AsFloat * qOPENF_PRECO.AsFloat;
    vProdTotal := SqlCdsEntradaNotaENF_TOT_PROD.AsFloat;
    qCom := qOPENF_QTDE.AsFloat;
    peso := (vProdItem / (vProdTotal / pesoLDanfe)) / qCom;
  end;

  qOPPESO.AsFloat := peso;
  if qOPENF_UCOM.AsString = 'KG' then
    qOPPESOTOTAL.AsFloat := peso
  else
    qOPPESOTOTAL.AsFloat := peso * qOPENF_QTDE.AsFloat;

  qOPRETORNADO.AsFloat := qOPENF_QTDE.AsFloat - qOPENF_QUANTIDADE_IND_RETORNO.AsFloat;



end;

procedure TFrmEnfIndustrializacao.Romaneio1Click(Sender: TObject);
begin
  frxIndustrializacao.ShowReport();
end;

procedure TFrmEnfIndustrializacao.RomaneioPlanilha1Click(Sender: TObject);
begin
  SqlCdsNotaItem.Filtered := False;
//  SqlCdsNotaItem.Filter := 'ENF_QTDE - ENF_QUANTIDADE_IND_RETORNO > 0';
  SqlCdsNotaItem.Filter := 'ENF_QTDE - ENF_QUANTIDADE_IND_RETORNO > 0';
  SqlCdsNotaItem.Filtered := True;
  frxRomaneioPlanilha.ShowReport();
  SqlCdsNotaItem.Filtered := False;
end;

procedure TFrmEnfIndustrializacao.RomaneioPlanilhacomCores1Click(Sender: TObject);
var
  commandText, filtraCor : string;
  cor: integer;
begin

  if not FormSelecionaCor(cor) then
  begin
    frmEnfIndustrializacoSelecionaCor.Free;
    frmEnfIndustrializacoSelecionaCor := nil;
    exit;
  end
  else
  begin
    if frmEnfIndustrializacoSelecionaCor <> nil then
      if frmEnfIndustrializacoSelecionaCor.cbCor.idRetorno <> '' then
        filtraCor := ' AND pit.ACO_CODIGO = ' + frmEnfIndustrializacoSelecionaCor.cbCor.idRetorno
      else
        filtraCor := '';
  end;;

  commandText := SqlCdsNotaItem.CommandText;

  SqlCdsNotaItem.Close;
 // SqlCdsRetorno.Close;

  SqlCdsNotaItem.CommandText := '';

  if (not SqlCdsEntradaNota.IsEmpty) then
    begin
      SqlCdsNotaItem.CommandText :=
             ' SELECT DISTINCT ' +
             ' ei.enf_ucom, ' +
             ' pit.ACO_CODIGO , ' +
             ' ei.ENF_PESO_ENTRADA, ' +
             ' ei.enf_REGISTRO, ' +
             ' dp.PRF_REGISTRO, ' +
             ' ei.prd_refer, ' +
             ' pit.PRF_PRDDESCRI  || '' '' || COALESCE(ac.ACO_NOME, '''') as PRD_DESCRI, ' +
             ' pit.PRF_QTDE AS enf_qtde, ' +
             ' COALESCE( (SELECT sum (pii.PEDIND_QUANTIDADE) FROM PED_IT01_INDUST pii WHERE pii.ENF_REGISTRO =dp.ENF_REGISTRO AND pit.ACO_CODIGO =pii.ACO_CODIGO GROUP BY pii.ACO_CODIGO ),0) AS enf_quantidade_ind_retorno, ' +
             ' ei.enf_preco, ' +
             ' ei.amx_codigo, ' +
             ' al.amx_descri, ' +
             ' ei.enf_cfop, ' +
             ' ei.itt_registro, ' +
             ' it.itt_descricao, ' +
             ' ei.ENF_IT_ENVIADO_PCP_DEMANDA, ' +
             ' ei.ENF_IT_QTD_ENV_PCP_DEMANDA, ' +
             ' ei.PED_CODIGO, ' +
             ' ei.enf_obs_industrializacao ' +
             ' FROM	ENF_IT01 ei ' +
             ' JOIN DEMANDA_PRODUCAO dp ON	(ei.ENF_REGISTRO=dp.ENF_REGISTRO) ' +
             ' JOIN PED_IT01 pit ON (dp.PRF_REGISTRO=pit.PRF_REGISTRO) ' +
             ' LEFT JOIN ACABAMENTO_CORES ac ON	(ac.ACO_CODIGO = pit.ACO_CODIGO) ' +
             ' LEFT JOIN almox0000 al ON	(al.amx_codigo = ei.amx_codigo) ' +
             ' LEFT JOIN ind_tiporetorno it ON	(it.itt_registro = ei.itt_registro) ' +
             ' WHERE ei.enf_it_notanumber = ' + QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) +
             ' AND ei.for_codigo = ' + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString) +
               filtraCor +
             ' AND pit.PRF_QTDE -COALESCE ((SELECT sum (pii.PEDIND_QUANTIDADE) FROM PED_IT01_INDUST pii WHERE pii.ENF_REGISTRO = dp.ENF_REGISTRO AND pit.ACO_CODIGO =pii.ACO_CODIGO GROUP BY pii.ACO_CODIGO ),0) <> 0 '
             ;

      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(SqlCdsNotaItem.CommandText);

      SqlCdsNotaItem.Open;
    end;

  frxRomaneioPlanilha.ShowReport();

  frmEnfIndustrializacoSelecionaCor.Free;
  frmEnfIndustrializacoSelecionaCor := nil;

  SqlCdsNotaItem.Close;
  SqlCdsNotaItem.CommandText := commandText;
  SqlCdsNotaItem.Open;


end;

procedure TFrmEnfIndustrializacao.dbgrdItemNotaDblClick(Sender: tObject);
begin
  ChamaSituacao;
end;


procedure TFrmEnfIndustrializacao.ChamaSituacao;
begin
  if (SqlCdsNotaItem.IsEmpty) then
      uteis.aviso('Não existe item selecionado')
  else
  begin
      try
        FrmIndSitObs := TFrmIndSitObs.Create(Application);
        FrmIndSitObs.iRegistroNotaItem := SqlCdsNotaItemENF_REGISTRO.AsInteger;
        FrmIndSitObs.iRegistroSituacao := SqlCdsNotaItemITT_REGISTRO.AsInteger;
        FrmIndSitObs.sObservacao := SqlCdsNotaItemENF_OBS_INDUSTRIALIZACAO.AsString;
        FrmIndSitObs.ShowModal;
      finally
        FrmIndSitObs.Destroy;
        FrmIndSitObs := nil;
      end;
      SqlCdsNotaItem.Refresh;
  end;
end;

procedure TFrmEnfIndustrializacao.dbgrdItemNotaKeyPress(Sender: tObject;
  var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      ChamaSituacao;
    end;
end;

procedure TFrmEnfIndustrializacao.dbgrdNotaEntradaDblClick(Sender: TObject);
begin
      try
        frmIndustrializacaoNotaObs := TfrmIndustrializacaoNotaObs.Create(Application);
        frmIndustrializacaoNotaObs.mmoObservacao.Text := SqlCdsEntradaNotaENF_OBS_INDUST.AsString;
        frmIndustrializacaoNotaObs.edCodigo.Text := SqlCdsEntradaNotaCLI_CODIGO.AsString;
        frmIndustrializacaoNotaObs.edNome.idRetorno :=  SqlCdsEntradaNotaCLI_CODIGO.AsString;
        frmIndustrializacaoNotaObs.edPeso.Value := SqlCdsEntradaNotaENF_PESO_TOTAL.AsFloat;
        frmIndustrializacaoNotaObs.ShowModal;
      finally
        frmIndustrializacaoNotaObs.Destroy;
        frmIndustrializacaoNotaObs := nil;
      end;
      SqlCdsEntradaNota.ApplyUpdates(0);
      SqlCdsEntradaNota.Refresh;
end;

procedure TFrmEnfIndustrializacao.dbgrdNotaEntradaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON, Check: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if Column.FieldName = 'ENF_MODELO_NF' then
  begin
    dbgrdNotaEntrada.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminui o tamanho do Botão
    DrawFrameControl(dbgrdNotaEntrada.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := dbgrdNotaEntrada.Canvas.Brush.Color; // guarda a cor de fundo original
    dbgrdNotaEntrada.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    if SqlCdsEntradaNotaENF_ENVIADO_PCP_DEMANDA.AsString = 'S' then
      DrawText(dbgrdNotaEntrada.Canvas.Handle,'Enviada',7,R,DT_VCENTER or DT_CENTER)
    else
      DrawText(dbgrdNotaEntrada.Canvas.Handle,'Enviar',7,R,DT_VCENTER or DT_CENTER);
    dbgrdNotaEntrada.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;

  if column.FieldName = 'Selecao' then
  begin

    dbgrdNotaEntrada.Canvas.FillRect(Rect);
    Check := 0;
    if SqlCdsEntradaNotaSelecao.AsBoolean then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
    dbgrdNotaEntrada.Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
    InflateRect(R,-2,-2); {Diminui o tamanho do CheckBox}
    DrawFrameControl(dbgrdNotaEntrada.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end

end;


procedure TFrmEnfIndustrializacao.dbgrdNotaEntradaCellClick(Column: TColumn);
var
  opv, item, Quantidade, dp: integer;
  diferenca: double;
  numeropedido, prdCodigo, update: string;
begin
  if Column.FieldName = 'ENF_MODELO_NF' then
  begin

    dbgrdNotaEntrada.Perform(WM_KeyDown, VK_LEFT, 0);


    if SqlCdsEntradaNotaENF_ENVIADO_PCP_DEMANDA.AsString = 'S'then
    begin
      MessageDlg('Esta nota já foi enviada para Demanda.', mtWarning, [mbOk], 0 );
      Exit;
    end;
    if SqlCdsEntradaNotaCLI_CODIGO.AsString = '' then
    begin
      MessageDlg('Selecione um Cliente para poder enviar para a Demanda.', mtWarning, [mbOk], 0 );
      Exit;
    end;

     if not FormEnvioDemanda('Pedido') then
      exit;

    if MessageDlg('Confirma o Envio de todos os itens desta nota para a Demanda da Produção?', mtConfirmation, [mbYes, mbNo], 0 ) <> mrYes  then
      exit;


    update := 'UPDATE ENF0001 SET ENF_ENVIADO_PCP_DEMANDA = ''S'' WHERE ENF_NOTANUMBER = ' +  QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) + ' AND FOR_CODIGO = ' + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString);
    DBInicio.ExecSql(update);


    // gravar o pedido
    opv := DBInicio.BuscaUmDadoSqlAsInteger('SELECT OPV_CODIGO FROM OPV0000 WHERE OPV_PRODUCAO = ''S'' AND OPV_PEDIDOINTERNO = ''S'' ');
    numeropedido := StrZero( SequenciadorPRC (DBInicio.MainDB, DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 0, '' ) , 6 );
    GravarPedidoResumido (numeropedido,IntToStr(opv), SqlCdsEntradaNotaCLI_CODIGO.AsString, now, now);

    SqlCdsNotaItem.First;
    Quantidade := 0;
    while not SqlCdsNotaItem.eof do
    begin
      prdCodigo := DBInicio.BuscaUmDadoSqlAsString('select prd_codigo from prd0000 where prd_refer='+qStr(SqlCdsNotaItemPRD_REFER.AsString));

      // gravar a demanda
      if not Assigned(ProducaoDao) then
        ProducaoDao := TProducaoDao.Create(self);
      if not Assigned(frmBase) then
        frmBase := TfrmBase.Create(self);
      frmBase.SqlConnection := DBInicio.MainDB;
      diferenca := frmBase.BuscaUmDadoSqlAsFloat(
                      'SELECT COALESCE(SUM(ENF_IT_QTD_ENV_PCP_DEMANDA), 0)  ' +
                      ' FROM ENF_IT01 WHERE ENF_IT_NOTANUMBER = ' + QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString)  +
                      ' AND FOR_CODIGO = ' + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString)  +
                      ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Emp_Codigo) +
                      ' AND PRD_REFER = ' + QuotedStr(SqlCdsNotaItemPRD_REFER.AsString)
                      );
      item:= GravarPedidoItemResumido(numeropedido,
                                     prdCodigo,
                                     SqlCdsNotaItemPRD_REFER.AsString,
                                     SqlCdsNotaItemPRD_DESCRI.AsString,
                                     SqlCdsNotaItemENF_QTDE.AsFloat - diferenca ,
                                     SqlCdsNotaItemENF_QTDE.AsFloat - diferenca,
                                     StrToInt( DBInicio.Usuario.CODIGO)) ;
      dp := ProducaoDao.EnviarDemanda( numeropedido,
                                prdCodigo,
                                'I', //situacao
                                0,  // fti_registro (ficha tecnica)
                                item,
                                0, // iop_codigo (somente preenche quando vai a produção)
                                now,
                                0 );//estoque )

      update := 'UPDATE ENF_IT01 SET ' +
                ' ENF_IT_ENVIADO_PCP_DEMANDA = ''S'', ' +
                ' PRD_DESCRI = ' + QuotedStr(SqlCdsNotaItemPRD_DESCRI.AsString) + ',' +
                ' ENF_IT_QTD_ENV_PCP_DEMANDA = ' +  FloatToSQL(SqlCdsNotaItemENF_QTDE.AsFloat) +
                ' WHERE ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString  ;

      DBInicio.ExecSql(update);

      update :=  'UPDATE DEMANDA_PRODUCAO ' +
                ' SET ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString +
                ' WHERE DEP_CODIGO = ' + IntToStr(dp);
      DBInicio.ExecSql(update);

     update := 'UPDATE PED_IT01 SET ' +
               ' ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString + ', ' +
               ' ACO_CODIGO = ' + frmEnfIndustrializacoEnviaDemanda.cbCor.idRetorno + ', ' +
               ' PRF_PESOKG = ' + FloatToSQL(SqlCdsNotaItemPESOTOTAL.AsFloat) +
               ' WHERE PRF_REGISTRO = ' + IntToStr(item) ;

     DBInicio.ExecSql(update);



      inc(Quantidade);
      SqlCdsNotaItem.Next;
    end;
    MessageDlg(IntToStr(Quantidade) + ' Itens foram enviados a Demanda com sucesso.', mtInformation, [mbOk], 0 );
    frmEnfIndustrializacoEnviaDemanda.Free;
    frmEnfIndustrializacoEnviaDemanda := nil;
    BitLocalizarNota.Click;


  end;

	if Column.FieldName = 'Selecao' then
  begin
    if SqlCdsEntradaNotaENF_ENVIADO_PCP_DEMANDA.AsString = 'S' then
  		seleciona
    else
      uteis.Aviso('Não enviado ao PCP Demanda. Não pode gerar etiquetas');
  end;

end;

procedure TFrmEnfIndustrializacao.dbgrdNotaEntradaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  dbgrdNotaEntrada.Update;
end;

procedure TFrmEnfIndustrializacao.dbGridOPCellClick(Column: TColumn);
var
  sql, SimNaoParcial, update, mensagem: string;
  enviado, total: double;
begin
  if Column.FieldName = 'BOTAO' then
  begin

    dbgridOP.Perform(WM_KeyDown, VK_LEFT, 0);


    if (qOPENF_IT_ENVIADO_PCP_DEMANDA.AsString <> 'S') and (qOPENF_IT_ENVIADO_PCP_DEMANDA.AsString <> 'P') then
    begin
      MessageDlg('Este item não foi enviado para Demanda.', mtError, [mbOk], 0 );
      Exit;
    end;
    if MessageDlg('Confirma estorno?', mtConfirmation, [mbYes, mbNo],0 )  <> mrYes then
      exit;


      if (qOPDEP_SITUACAO.AsString = 'L')  then
      begin
        MessageDlg('Não pode ser estornado. Pedido foi cancelado', mtError, [mbOK],0 );
        Exit;
      end;
      if (qOPDEP_SITUACAO.AsString <> 'R')  then
      begin
        mensagem := 'Não pode ser estornado. ';
        if qOPDEP_SITUACAO.AsString = 'N' then
          mensagem := mensagem  + 'Não enviado';
        if qOPDEP_SITUACAO.AsString = 'E' then
          mensagem := mensagem  + 'Já enviado para produção';
        if qOPDEP_SITUACAO.AsString = 'I' then
          mensagem := mensagem  + 'Produção iniciada';
        if qOPDEP_SITUACAO.AsString = 'C' then
          mensagem := mensagem  + 'Concluída';
        if qOPDEP_SITUACAO.AsString = 'A' then
          mensagem := mensagem  + 'Atrasado / Estornado';
        MessageDlg(mensagem, mtError, [mbOK],0 );
        Exit;
      end;


      enviado := qOPPRF_QTDE.AsCurrency;
      total := DBInicio.BuscaUmDadoSqlAsFloat('SELECT ENF_IT_QTD_ENV_PCP_DEMANDA FROM ENF_IT01 WHERE ENF_REGISTRO = ' + qOPENF_REGISTRO.AsString);

      update := 'UPDATE ENF_IT01 ' +
                ' SET ENF_IT_QTD_ENV_PCP_DEMANDA =  ENF_IT_QTD_ENV_PCP_DEMANDA - ' + FloatToSql(qOPPRF_QTDE.AsCurrency) +
                ' WHERE ENF_REGISTRO = ' + qOPENF_REGISTRO.AsString;
      DBInicio.ExecSql(update);

      if total - enviado = 0 then
        SimNaoParcial := 'N'
      else if total > enviado  then
        SimNaoParcial := 'P';
      update := 'UPDATE ENF_IT01 SET ENF_IT_ENVIADO_PCP_DEMANDA = ' + QuotedStr(SimNaoParcial) + ' WHERE ENF_REGISTRO = ' + qOPENF_REGISTRO.AsString  ;
      DBInicio.ExecSql(update);


      update := 'UPDATE ENF0001 SET ENF_ENVIADO_PCP_DEMANDA = ''N'' WHERE ENF_NOTANUMBER = ' +  QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) + ' AND FOR_CODIGO = ' + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString);
      DBInicio.ExecSql(update);

      tcr.EstornoDemanda(qOPDEP_CODIGO.AsString);


      if qOPOPV_PEDIDOINTERNO.AsString = 'S' then
      begin
       sql:=  'DELETE FROM PED_IT01  ' +
              ' WHERE PED_CODIGO = '+ QuotedStr( qOPPED_CODIGO.AsString) +
              ' AND PRD_REFER = '+ QuotedStr( qOPPRD_REFER.AsString) +
              ' AND EMP_CODIGO = '+QuotedStr( DBInicio.Empresa.EMP_CODIGO);
       DBInicio.ExecSql(sql);
       if DBInicio.BuscaUmDadoSqlAsInteger('SELECT COUNT(*) FROM PED_IT01 WHERE PED_CODIGO = ' + QuotedStr(qOPPED_CODIGO.AsString) + ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 0 then
          sql:=  'DELETE FROM PED0000 WHERE PED_CODIGO = '+ QuotedStr( qOPPED_CODIGO.AsString) + ' AND EMP_CODIGO = '+QuotedStr( DBInicio.Empresa.EMP_CODIGO);
       DBInicio.ExecSql(sql);
      end;
      AtualizaOP;
      BitLocalizarNota.Click;
  end;
end;

procedure TFrmEnfIndustrializacao.dbGridOPDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if Column.FieldName = 'BOTAO' then
  begin
    dbGridOP.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminui o tamanho do Botão
    DrawFrameControl(dbGridOP.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := dbGridOP.Canvas.Brush.Color; // guarda a cor de fundo original
    dbGridOP.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    if qOPENF_IT_ENVIADO_PCP_DEMANDA.AsString = 'S' then
      DrawText(dbGridOP.Canvas.Handle,'Estornar',7,R,DT_VCENTER or DT_CENTER)
    else
    if qOPENF_IT_ENVIADO_PCP_DEMANDA.AsString = 'P' then
      DrawText(dbGridOP.Canvas.Handle,'Estornar Parcial',7,R,DT_VCENTER or DT_CENTER)
    else
      DrawText(dbGridOP.Canvas.Handle,'SEM OP',7,R,DT_VCENTER or DT_CENTER);
    dbGridOP.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;
end;

procedure TFrmEnfIndustrializacao.dbgrdItemNotaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if Column.FieldName = 'BOTAO' then
  begin
    dbgrdItemNota.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminui o tamanho do Botão
    DrawFrameControl(dbgrdItemNota.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := dbgrdItemNota.Canvas.Brush.Color; // guarda a cor de fundo original
    dbgrdItemNota.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    if SqlCdsNotaItemENF_IT_ENVIADO_PCP_DEMANDA.AsString = 'S' then
      DrawText(dbgrdItemNota.Canvas.Handle,'Enviada',7,R,DT_VCENTER or DT_CENTER)
    else
    if SqlCdsNotaItemENF_IT_ENVIADO_PCP_DEMANDA.AsString = 'P' then
      DrawText(dbgrdItemNota.Canvas.Handle,'Parcial',7,R,DT_VCENTER or DT_CENTER)
    else
      DrawText(dbgrdItemNota.Canvas.Handle,'Enviar',7,R,DT_VCENTER or DT_CENTER);
    dbgrdItemNota.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;
end;

procedure TFrmEnfIndustrializacao.dbgrdItemNotaCellClick(Column: TColumn);
var
  opv, item, dp: integer;
  numeropedido, prdCodigo, update, SimNaoParcial, enfRegistro: string;
begin
  if Column.FieldName = 'BOTAO' then
  begin

    dbgrdItemNota.Perform(WM_KeyDown, VK_LEFT, 0);


    if SqlCdsNotaItemENF_IT_ENVIADO_PCP_DEMANDA.AsString = 'S'then
    begin
      MessageDlg('Este item já foi enviada para Demanda.', mtWarning, [mbOk], 0 );
      Exit;
    end;
    if SqlCdsEntradaNotaCLI_CODIGO.AsString = '' then
    begin
      MessageDlg('Selecione um Cliente para poder enviar para a Demanda.', mtWarning, [mbOk], 0 );
      Exit;
    end;

    if not FormEnvioDemanda('Item') then
    begin
      frmEnfIndustrializacoEnviaDemanda.Free;
      frmEnfIndustrializacoEnviaDemanda := nil;
      exit;
    end;

    if SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA.AsCurrency + frmEnfIndustrializacoEnviaDemanda.edEnviar.Value = SqlCdsNotaItemENF_QTDE.AsFloat then
      SimNaoParcial := 'S'
    else
    if SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA.AsCurrency + frmEnfIndustrializacoEnviaDemanda.edEnviar.Value < SqlCdsNotaItemENF_QTDE.AsFloat then
      SimNaoParcial := 'P';


    if MessageDlg('Confirma o Envio deste item para a Demanda da Produção?', mtConfirmation, [mbYes, mbNo], 0 ) <> mrYes  then
    begin
      frmEnfIndustrializacoEnviaDemanda.Free;
      frmEnfIndustrializacoEnviaDemanda := nil;
      exit;
    end;

    // gravar o pedido
    opv := DBInicio.BuscaUmDadoSqlAsInteger('SELECT OPV_CODIGO FROM OPV0000 WHERE OPV_PRODUCAO = ''S'' AND OPV_PEDIDOINTERNO = ''S'' ');
    numeropedido := StrZero( SequenciadorPRC (DBInicio.MainDB, DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 0, '' ) , 6 );
    GravarPedidoResumido (numeropedido,IntToStr(opv), SqlCdsEntradaNotaCLI_CODIGO.AsString, now, now);

    prdCodigo := DBInicio.BuscaUmDadoSqlAsString('select prd_codigo from prd0000 where prd_refer='+qStr(SqlCdsNotaItemPRD_REFER.AsString));

    // gravar a demanda
    if not Assigned(ProducaoDao) then
      ProducaoDao := TProducaoDao.Create(self);
    item:= GravarPedidoItemResumido(numeropedido,
                                   prdCodigo,
                                   SqlCdsNotaItemPRD_REFER.AsString,
                                   SqlCdsNotaItemPRD_DESCRI.AsString + ' - ' + frmEnfIndustrializacoEnviaDemanda.cbCor.Text,
                                   frmEnfIndustrializacoEnviaDemanda.edEnviar.Value, // SqlCdsNotaItemENF_QTDE.AsFloat,
                                   frmEnfIndustrializacoEnviaDemanda.edEnviar.Value, // SqlCdsNotaItemENF_QTDE.AsFloat,
                                   StrToInt( DBInicio.Usuario.CODIGO)) ;
    dp := ProducaoDao.EnviarDemanda( numeropedido,
                              prdCodigo,
                              'I', //situacao
                              0,  // fti_registro (ficha tecnica)
                              item,
                              0, // iop_codigo (somente preenche quando vai a produção)
                              now,
                              0 );//estoque )



     update := 'UPDATE PED_IT01 SET ' +
               ' ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString + ',' +
               ' ACO_CODIGO = ' + frmEnfIndustrializacoEnviaDemanda.cbCor.idRetorno +
               ' WHERE PRF_REGISTRO = ' + IntToStr(item) ;
     DBInicio.ExecSql(update);


     update := 'UPDATE ENF_IT01 SET ' +
               ' ENF_IT_ENVIADO_PCP_DEMANDA = ' + QuotedStr(SimNaoParcial) + ' ,' + // [S]IM - [N]ÃO - [P]ARCIAL
               ' PRD_DESCRI = ' + QuotedStr(SqlCdsNotaItemPRD_DESCRI.AsString) + ',' +
               ' PED_CODIGO = ' + QuotedStr(numeroPedido) + ',' +
               ' ENF_IT_QTD_ENV_PCP_DEMANDA = COALESCE(ENF_IT_QTD_ENV_PCP_DEMANDA, 0) + ' +  FloatToSQL(frmEnfIndustrializacoEnviaDemanda.edEnviar.Value) +
               ' WHERE ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString ;
     DBInicio.ExecSql(update);


     update := 'UPDATE ENF0001 SET ENF_ENVIADO_PCP_DEMANDA = ''S'' WHERE ENF_NOTANUMBER = ' +  QuotedStr(SqlCdsEntradaNotaENF_NOTANUMBER.AsString) + ' AND FOR_CODIGO = ' + QuotedStr(SqlCdsEntradaNotaFOR_CODIGO.AsString);
     DBInicio.ExecSql(update);



     update :=  'UPDATE DEMANDA_PRODUCAO ' +
                ' SET ENF_REGISTRO = ' + SqlCdsNotaItemENF_REGISTRO.AsString +
                ' WHERE DEP_CODIGO = ' + IntToStr(dp);
     DBInicio.ExecSql(update);

     CodigoPedidoFRX := numeroPedido;

    frmEnfIndustrializacoEnviaDemanda.Free;
    frmEnfIndustrializacoEnviaDemanda := nil;
    ProducaoDao.Free;
    ProducaoDao := nil;
    BitLocalizarNota.Click;


  end;
end;

function TFrmEnfIndustrializacao.FormEnvioDemanda(PedidoItem: string): Boolean;
begin
     if frmEnfIndustrializacoEnviaDemanda = nil then
      frmEnfIndustrializacoEnviaDemanda := TfrmEnfIndustrializacoEnviaDemanda.Create(Self);
    frmEnfIndustrializacoEnviaDemanda.recebida := SqlCdsNotaItemENF_QTDE.AsCurrency;
    frmEnfIndustrializacoEnviaDemanda.enviada := SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA.AsCurrency;
    frmEnfIndustrializacoEnviaDemanda.edEnviar.Value := SqlCdsNotaItemENF_QTDE.AsCurrency - SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA.AsCurrency;
    frmEnfIndustrializacoEnviaDemanda.cbCor.idRetorno := '';
    frmEnfIndustrializacoEnviaDemanda.PedidoItem := PedidoItem;
    if PedidoItem = 'Pedido' then
    begin
    frmEnfIndustrializacoEnviaDemanda.descricao := 'Todos';
      frmEnfIndustrializacoEnviaDemanda.Caption := 'Envia Pedido para Demanda';
      frmEnfIndustrializacoEnviaDemanda.edEnviar.Text := 'Todos';
      frmEnfIndustrializacoEnviaDemanda.edEnviar.Enabled := False;
    end
    else
    begin
      frmEnfIndustrializacoEnviaDemanda.Caption := 'Envia Item para Demanda';
      frmEnfIndustrializacoEnviaDemanda.descricao := SqlCdsNotaItemPRD_DESCRI.AsString;
    end;
    frmEnfIndustrializacoEnviaDemanda.ShowModal;
    Result := frmEnfIndustrializacoEnviaDemanda.ModalResult = mrOk;

end;


function TFrmEnfIndustrializacao.FormSelecionaCor(var cor: Integer): Boolean;
begin
    if frmEnfIndustrializacoSelecionaCor = nil then
      frmEnfIndustrializacoSelecionaCor := TfrmEnfIndustrializacoSelecionaCor.Create(Self);
    frmEnfIndustrializacoSelecionaCor.ShowModal;
    cor := StrToIntDef(frmEnfIndustrializacoSelecionaCor.cbCor.idRetorno, 0);
    Result := frmEnfIndustrializacoSelecionaCor.ModalResult = mrOk;

end;

end.
