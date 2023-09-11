unit fat0007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal,
  DBLocalS, StdCtrls, Buttons, Mask, DBCtrls, RwFunc, ExtCtrls,
  Data.DBXFirebird, SimpleDS;

type
  TFormComplementarNFe = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    BitConfirma: TBitBtn;
    BitCancelar: TBitBtn;
    BitSair: TBitBtn;
    SqlCdsNotaComplementar: TSQLClientDataSet;
    DsNotaComplementar: TDataSource;
    CdsItemComplementar: TSQLClientDataSet;
    DsItemComplementar: TDataSource;
    SqlCdsNotaComplementarNF_REGISTRO: TIntegerField;
    SqlCdsNotaComplementarNF_NOTANUMBER: TStringField;
    SqlCdsNotaComplementarNF_EMISSAO: TDateField;
    SqlCdsNotaComplementarNF_SAIDA: TDateField;
    SqlCdsNotaComplementarNF_VLFRETE: TFMTBCdField;
    SqlCdsNotaComplementarNF_VLSEGURO: TFMTBCdField;
    SqlCdsNotaComplementarNF_DESP_ACES: TFMTBCdField;
    SqlCdsNotaComplementarNF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsNotaComplementarNF_BASEICMS: TFMTBCdField;
    SqlCdsNotaComplementarNF_VL_ICMS: TFMTBCdField;
    SqlCdsNotaComplementarNF_VLBASESUBTRIB: TFMTBCdField;
    SqlCdsNotaComplementarNF_VL_SUBTRIB: TFMTBCdField;
    SqlCdsNotaComplementarNF_TOT_CSUB: TFMTBCdField;
    SqlCdsNotaComplementarNF_TOT_PROD: TFMTBCdField;
    SqlCdsNotaComplementarNF_TOT_NOTA: TFMTBCdField;
    SqlCdsNotaComplementarNF_VL_IPI: TFMTBCdField;
    SqlCdsNotaComplementarNF_BASE_IPI: TFMTBCdField;
    SqlCdsNotaComplementarNF_VL_DESCTO: TFMTBCdField;
    SqlCdsNotaComplementarNF_PESOBRU: TFMTBCdField;
    SqlCdsNotaComplementarNF_PESOLIQ: TFMTBCdField;
    SqlCdsNotaComplementarNF_ESPECIE: TStringField;
    SqlCdsNotaComplementarNF_TP_DESCTO: TStringField;
    SqlCdsNotaComplementarNF_BASE_ISS: TFMTBCdField;
    SqlCdsNotaComplementarNF_VALOR_ISS: TFMTBCdField;
    SqlCdsNotaComplementarNF_ALIQPIS: TFMTBCdField;
    CdsItemComplementarNF_REGISTRO: TIntegerField;
    CdsItemComplementarNF_IT_NOTANUMER: TStringField;
    CdsItemComplementarPRD_REFER: TStringField;
    CdsItemComplementarPED_CODIGO: TStringField;
    CdsItemComplementarNF_QTDE: TFMTBCdField;
    CdsItemComplementarNF_PRECO: TFMTBCdField;
    CdsItemComplementarNF_IPIALIQ: TFMTBCdField;
    CdsItemComplementarNF_IPIVALOR: TFMTBCdField;
    CdsItemComplementarIPI_CODIGO: TStringField;
    CdsItemComplementarNF_VLSUBST: TFMTBCdField;
    CdsItemComplementarNF_IDESCTO1: TFMTBCdField;
    CdsItemComplementarNF_IDESCTO2: TFMTBCdField;
    CdsItemComplementarPRD_DESCRI: TStringField;
    CdsItemComplementarEMP_CODIGO: TStringField;
    CdsItemComplementarNF_ICMSALIQ: TFMTBCdField;
    CdsItemComplementarNF_ICMSVALOR: TFMTBCdField;
    CdsItemComplementarNF_PMATPRIMA: TFMTBCdField;
    CdsItemComplementarNF_COMISSAO: TFMTBCdField;
    CdsItemComplementarNF_HORA: TTimeField;
    CdsItemComplementarNTP_CFOP: TIntegerField;
    CdsItemComplementarNF_IPIBASE: TFMTBCdField;
    CdsItemComplementarNF_ICMSBASE: TFMTBCdField;
    CdsItemComplementarNF_SUBTRIBASE: TFMTBCdField;
    CdsItemComplementarNF_ALIQSUBTRIB: TFMTBCdField;
    CdsItemComplementarNF_MVAPERC: TFMTBCdField;
    CdsItemComplementarNF_ICMSREDUCAOPERC: TFMTBCdField;
    CdsItemComplementarNF_ALIQDOSIMPLES: TFMTBCdField;
    CdsItemComplementarNF_CREDICMSDOSIMPLES: TFMTBCdField;
    CdsItemComplementarNF_IFRETE: TFMTBCdField;
    CdsItemComplementarNF_ISEGURO: TFMTBCdField;
    CdsItemComplementarNF_IDESP_ACES: TFMTBCdField;
    CdsItemComplementarNF_IBASEISSQN: TFMTBCdField;
    CdsItemComplementarNF_IALIQISSQN: TFMTBCdField;
    CdsItemComplementarNF_IVLISSQN: TFMTBCdField;
    CdsItemComplementarNF_CST_PIS: TFMTBCdField;
    CdsItemComplementarNF_BASE_PIS: TFMTBCdField;
    CdsItemComplementarNF_ALIQPIS: TFMTBCdField;
    CdsItemComplementarNF_VLPIS: TFMTBCdField;
    CdsItemComplementarNF_CST_COFINS: TFMTBCdField;
    CdsItemComplementarNF_BASE_COFINS: TFMTBCdField;
    CdsItemComplementarNF_ALIQCOFINS: TFMTBCdField;
    CdsItemComplementarNF_VLCOFINS: TFMTBCdField;
    CdsItemComplementarOPE_CODIGO: TStringField;
    CdsItemComplementarAMX_CODIGO_DESTINO: TStringField;
    CdsItemComplementarAMX_CODIGO_ORIGEM: TStringField;
    CdsItemComplementarUSU_CODIGO: TIntegerField;
    CdsItemComplementarPRD_CODIGO: TStringField;
    CdsItemComplementarPRF_REGISTRO: TIntegerField;
    CdsItemComplementarPRD_COMPL_DESCRI: TStringField;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    SqlCdsNotaComplementarNF_COMPLEMENTAR: TStringField;
    Panel1: TPanel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    SqlCdsNotaComplementarNF_ALIQCOFINS: TFMTBCdField;
    SqlCdsNotaComplementarNF_VALORTOT_PIS: TFMTBCdField;
    SqlCdsNotaComplementarNF_VALORTOT_COFINS: TFMTBCdField;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    mmo1: TMemo;
    Label17: TLabel;
    CdsItemComplementarSTB_TRIBUTACAO: TStringField;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    SqlCdsNotaComplementarNF_OBSERVACAO: TBlobField;
    CdsItemComplementarNF_CSOSN: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    SqlCdsNotaComplementarnf_finalidade: TIntegerField;
    SqlCdsNotaComplementarNF_CHAVE_NFE_REFERENCIADA: TStringField;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    CdsItemComplementarnf_totalitem: TFMTBCDField;
    SqlCdsNotaComplementarOPE_NATUREZA: TStringField;
    SqlCdsNotaComplementarOPE_CODIGO: TStringField;
    SqlCdsNotaComplementarcfop: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label19: TLabel;
    SqlCdsNotaComplementarCLI_RAZAO: TStringField;
    SqlCdsNotaComplementarCLI_CODIGO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitSairClick(Sender: tObject);
    procedure BitConfirmaClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure CdsItemComplementarAfterEdit(DataSet: TDataSet);
    procedure SqlCdsNotaComplementarAfterEdit(DataSet: TDataSet);
    procedure SqlCdsNotaComplementarCalcFields(DataSet: TDataSet);
  private
         lwFatcomplementar: string;
  public
        Property wFatcomplementar:string read lwFatcomplementar write lwFatcomplementar;
  end;

var
  FormComplementarNFe: TFormComplementarNFe;

implementation

uses Uteis,InicioDB, Fat0000,Men0001,DmSysCfg, RwSQLComando,DateUtils{, uProcedimentos};


{$R *.dfm}

procedure TFormComplementarNFe.FormShow(Sender: tObject);
var
wSql1,wSeleciona, wOrdem : string;
begin
    try
      wSql1      := 'SELECT T1.* FROM NF0001 T1 ';
      wSeleciona := ' WHERE T1.NF_NOTANUMBER = ' + QuotedStr(wFatcomplementar) + ' AND T1.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo);
      wOrdem     := ' T1.NF_NOTANUMBER';
      SqlCdsNotaComplementar.Close;
//      SqlCdsNotaComplementar.CommandText := SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'T1.');
      SqlCdsNotaComplementar.CommandText := wSql1 + wSeleciona + ' ORDER BY ' + wOrdem;
      SqlCdsNotaComplementar.Open;
      //
      wSql1      := 'SELECT T1.* FROM NF_IT01 T1 ';
      // wSeleciona := 'WHERE T1.NF_IT_NOTANUMER = '''+wFatcomplementar+'''';
      wSeleciona := ' WHERE T1.NF_IT_NOTANUMER = ' + QuotedStr(wFatcomplementar) + ' AND T1.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo);
      wOrdem     := '';
      CdsItemComplementar.Close;
      // CdsItemComplementar.CommandText := SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'T1.');
      CdsItemComplementar.CommandText := wSql1 + wSeleciona ;
      CdsItemComplementar.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao localizar a nota fiscal !'+e.message));
    end;

end;


procedure TFormComplementarNFe.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
 try
      SqlCdsNotaComplementar.Close;
      CdsItemComplementar.Close;

    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao fechar tabelas da nota fiscal !'+e.message));
    end;
end;

procedure TFormComplementarNFe.BitSairClick(Sender: tObject);
begin
  close;
end;

procedure TFormComplementarNFe.BitConfirmaClick(Sender: tObject);
begin
   Try
      if (uteis.confirmacao ( ('Foi Conferido todos os valores e totais dos itens ?'))=mrYes) then
      begin
      
      //gravar alteraçoes
      SqlCdsNotaComplementar.ApplyUpdates(0);
      SqlCdsNotaComplementar.refresh;
      //
      CdsItemComplementar.ApplyUpdates(0);
      CdsItemComplementar.refresh;
      // atualiza tela anterior
      FormFaturamento.CdsNotas.ApplyUpdates(0);
      FormFaturamento.CdsNotas.Refresh;

      uteis.aviso('Alterações gravadas. Próximo passo gerar DANFE');
     end;
   except on e:EdatabaseError do
     uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
  end;

end;

procedure TFormComplementarNFe.BitCancelarClick(Sender: tObject);
begin
   if (uteis.confirmacao ( ('Cancelar as alterações ?'))=mrYes) then
      begin
         SqlCdsNotaComplementar.Cancel;
         CdsItemComplementar.Cancel;
      end;

end;

procedure TFormComplementarNFe.CdsItemComplementarAfterEdit(
  DataSet: TDataSet);
begin
  // zerar pis e cofins
      CdsItemComplementarNF_BASE_PIS.AsCurrency    := 0;
      CdsItemComplementarNF_ALIQPIS.AsCurrency     := 0;
      CdsItemComplementarNF_VLPIS.AsCurrency       := 0;
      CdsItemComplementarNF_BASE_COFINS.AsCurrency := 0;
      CdsItemComplementarNF_ALIQCOFINS.AsCurrency  := 0;
      CdsItemComplementarNF_VLCOFINS.AsCurrency    := 0;
end;

procedure TFormComplementarNFe.SqlCdsNotaComplementarAfterEdit(
  DataSet: TDataSet);
begin
    // zerar totais que nao usam na complementar
    SqlCdsNotaComplementarNF_BASE_IPI.AsCurrency        := 0;
    SqlCdsNotaComplementarNF_ALIQPIS.AsCurrency         := 0;
    SqlCdsNotaComplementarNF_ALIQCOFINS.AsCurrency      := 0;
    SqlCdsNotaComplementarNF_VALORTOT_PIS.AsCurrency    := 0;
    SqlCdsNotaComplementarNF_VALORTOT_COFINS.AsCurrency := 0;

end;

procedure TFormComplementarNFe.SqlCdsNotaComplementarCalcFields(DataSet: TDataSet);
begin
  SqlCdsNotaComplementarcfop.AsString :=
  DBInicio.BuscaUmDadoSqlAsString('SELECT ope_descri FROM OPE0000 '+
                                 ' WHERE OPE_CODIGO = '+QuotedStr( SqlCdsNotaComplementarOPE_CODIGO.AsString) +
                                 ConcatSe(' and ', DBInicio.ExclusivoSql('OPERACAOFISCAL')));

  SqlCdsNotaComplementarCLI_RAZAO.AsString :=
    DBInicio.BuscaUmDadoSqlAsString('SELECT CLI_RAZAO FROM CLI0000 WHERE CLI_CODIGO = '
                                       +QuotedStr(SqlCdsNotaComplementarCLI_CODIGO.AsString)   )
end;

end.
