{************************************************************************
 Programa...: cnab002  - Nome formulario = FrmRetorno
 Analista...: Marcio Pacheco
 Programador:
 Criação....: 01/11/2004
 Título.....: Retorno Arquivo CNAB

 Comentários:
 -Importação dos arquivo CNAB 400 para atualização de remessa.
 -Consulta os retornos e gera baixa dos titulos automáticos no
  contas a receber.

 **Alterações**

 Data.......: 06/04/2011
 Responsável: Marcio
************************************************************************}

unit cnab0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges,  rxToolEdit, ExtCtrls, DBCtrls, Grids, Clipbrd,
  DBGrids, Mask,  rxCurrEdit, RXCtrls, FMTBCd, DB, DBClient, Provider, SqlExpr,SqlClientDataSet,
  DBLocal, DBLocalS, Menus, ComCtrls, RxRichEd, RDprint, RWFunc, ComboBoxRw,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, ACBrBase, ACBrBoleto, system.StrUtils, JvExMask, JvToolEdit;

type
  TFrmRetornoCNAB = class(TForm)
    NbookPages: TNotebook;
    GbConsulta: TGroupBox;
    CbBancos: TComboBox;
    CCodigoBco: TCurrencyEdit;
    GbRetorno: TGroupBox;
    Label18: TLabel;
    LblSataus: TLabel;
    FileArqImportar: TFilenameEdit;
    GroupBox9: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    PDisplayDup: TPanel;
    PDisplayEmiss: TPanel;
    PDisplayVenc: TPanel;
    PDisplayBanco: TPanel;
    CRegistro: TCurrencyEdit;
    CValorTotal: TCurrencyEdit;
    Panel10: TPanel;
    Gauge: TGauge;
    BitProcessar: TBitBtn;
    BitCancelarPro: TBitBtn;
    RadCNAB400: TRadioButton;
    RadCNAB240: TRadioButton;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    GroupBox1: TGroupBox;
    DBGridRetorno: TDBGrid;
    RadCNAB400p: TRadioButton;
    RadCNAB240p: TRadioButton;
    GroupBox4: TGroupBox;
    DBGridTitulos: TDBGrid;
    SQLDupliCNAB: TSQLClientDataSet;
    DSDupliCNAB: TDataSource;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    CTotalTitulos: TCurrencyEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    CCodigoBco1: TCurrencyEdit;
    CbBancos1: TComboBox;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CdigitoC: TCurrencyEdit;
    CdigitoAge: TCurrencyEdit;
    Label5: TLabel;
    PanAgencia: TPanel;
    PanContaCorr: TPanel;
    ChkBaixaTitulos: TCheckBox;
    Label6: TLabel;
    CdisplayValor: TCurrencyEdit;
    PopMenu: TPopupMenu;
    BaixaTitulosrefretorno1: TMenuItem;
    BitBaixaTitulos: TBitBtn;
    BitImprimir1: TBitBtn;
    Label16: TLabel;
    PanCodEmpresa: TPanel;
    Label11: TLabel;
    PanNossoNumero: TPanel;
    SQLConsultaArquivo: TSQLClientDataSet;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CEntradas: TCurrencyEdit;
    CLiquidacoes: TCurrencyEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CCartorio: TCurrencyEdit;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    CRejeicao: TCurrencyEdit;
    CBaixas: TCurrencyEdit;
    CProtesto: TCurrencyEdit;
    Label22: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    CTarifas: TCurrencyEdit;
    CJuros: TCurrencyEdit;
    COutros: TCurrencyEdit;
    CSubTotal: TCurrencyEdit;
    Label31: TLabel;
    Label32: TLabel;
    Cdesconto: TCurrencyEdit;
    SQLContaBanco: TSQLClientDataSet;
    BitEstornoRemessa: TBitBtn;
    PanProcessando: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    ProgressBar: TProgressBar;
    LblProcesso: TLabel;
    PanVisualizar: TPanel;
    Bevel4: TBevel;
    PanCaptionV: TPanel;
    ButFecha: TButton;
    BitFechaVisual: TBitBtn;
    Status: TStatusBar;
    TVisualizar: TRxRichEdit;
    SQLConsultaCRC: TSQLClientDataSet;
    CCodCarteira: TEdit;
    BitCancelarB: TBitBtn;
    LblMensagem1: TLabel;
    LblMensagem2: TLabel;
    GroupBox2: TGroupBox;
    CbFiltro: TComboBox;
    BitTipoImpressao: TBitBtn;
    PanTipo: TPanel;
    GroupBox3: TGroupBox;
    RadNumFatura: TRadioButton;
    RadCodCliente: TRadioButton;
    GroupBox6: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    Panel2: TPanel;
    BitTipoImpressao1: TBitBtn;
    RadRazao: TRadioButton;
    SQLConsulta: TSQLClientDataSet;
    SQLDupliCNABDCN_REGISTRO: TIntegerField;
    SQLDupliCNABDCN_COD_REMESSA: TIntegerField;
    SQLDupliCNABDCN_DUPLICATA: TStringField;
    SQLDupliCNABDCN_DUP_PARCELA: TStringField;
    SQLDupliCNABDCN_COD_OCORRENCIA: TStringField;
    SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField;
    SQLDupliCNABDCN_INSTRUCAO1: TStringField;
    SQLDupliCNABDCN_INSTRUCAO2: TStringField;
    SQLDupliCNABDCN_COD_REJEICAO: TStringField;
    SQLDupliCNABDCN_INDIC_CREDITO: TStringField;
    SQLDupliCNABDCN_NOSSO_NUMERO: TStringField;
    SQLDupliCNABDCN_TARIFA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_PAGO: TFMTBCdField;
    SQLDupliCNABDCN_JUROS_MORA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_MULTA: TFMTBCdField;
    SQLDupliCNABDCN_STATUS_BAIXA: TStringField;
    SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField;
    SQLDupliCNABDCN_PROTESTAR: TStringField;
    SQLDupliCNABDCN_DIAS_PROT: TIntegerField;
    SQLDupliCNABFAT_CODIGO: TStringField;
    SQLDupliCNABFPC_NUMER: TStringField;
    SQLDupliCNABFPC_COBNUM: TStringField;
    SQLDupliCNABFPC_VENCTO: TSQLTimeStampField;
    SQLDupliCNABFPC_VLPARC: TFMTBCdField;
    SQLDupliCNABFPC_VLPAGO: TFMTBCdField;
    SQLDupliCNABCLI_CODIGO: TStringField;
    SQLDupliCNABCLI_RAZAO: TStringField;
    SQLDupliCNABOCR_DESCRICAO: TStringField;
    SQLDupliCNABREJ_DESCRICAO: TStringField;
    SQLRelatorio: TSQLClientDataSet;
    SQLDetalhe: TSQLClientDataSet;
    RDProtRetornoCNAB: TRDprint;
    SQLDupliCNABEMP_CODIGO: TStringField;
    SQLDupliCNABFPC_PAGTO: TSQLTimeStampField;
    SQLDupliCNABFPC_JUROS: TFMTBCdField;
    SQLDupliCNABFAT_REGISTRO: TIntegerField;
    CdSRecebimentos: TSQLClientDataSet;
    CdSRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    CdSRecebimentosFRE_VALOR: TFMTBCdField;
    CdSRecebimentosFRE_DESCONTO: TFMTBCdField;
    CdSRecebimentosFRE_JUROS: TFMTBCdField;
    CdSRecebimentosFRE_MULTA: TFMTBCdField;
    CdSRecebimentosFRE_RECEBIDO: TFMTBCdField;
    CdSRecebimentosBAN_CODIGO: TStringField;
    CdSRecebimentosBAN_RAZAO: TStringField;
    CdSRecebimentosFPG_REGISTRO: TIntegerField;
    CdSRecebimentosFPG_DESCRICAO: TStringField;
    CdSRecebimentosUSU_CODIGO: TIntegerField;
    CdSRecebimentosUSU_NOME: TStringField;
    CdSRecebimentosFRE_REGISTRO: TIntegerField;
    Label1: TLabel;
    EdFormaPagamento: TEdit;
    CBFormaPagamento: TComboBoxRw;
    Sb_FormaPagamento: TSpeedButton;
    Button2: TButton;
    RDProtCNAB: TRDprint;
    bl1: TACBrBoleto;
    BitPesquisar: TBitBtn;
    RADdatavencimento: TRadioButton;
    ldataInicial: TLabel;
    DataInicial: TJvDateEdit;
    lDataFinal: TLabel;
    DataFinal: TJvDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CCodigoBcoKeyPress(Sender: TObject; var Key: Char);
    procedure CbBancosClick(Sender: TObject);
    procedure BitPesquisarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CCodigoBco1KeyPress(Sender: TObject; var Key: Char);
    procedure CbBancos1Click(Sender: TObject);
    procedure BitProcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitImprimir1Click(Sender: TObject);
    procedure DBGridRetornoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridRetornoDblClick(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
    procedure BitVisualizarClick(Sender: TObject);
    procedure ButFechaClick(Sender: TObject);
    procedure BitFechaVisualClick(Sender: TObject);
    procedure FileArqImportarAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure BitEstornoRetoroClick(Sender: TObject);
    procedure BitCancelarBClick(Sender: TObject);
    procedure BitBaixaTitulosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbFiltroClick(Sender: TObject);
    procedure BitTipoImpressaoClick(Sender: TObject);
    procedure BitTipoImpressao1Click(Sender: TObject);
    procedure RDProtCNABNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtCNABBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtRetornoCNABNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtRetornoCNABBeforeNewPage(Sender: TObject;
      Pagina: Integer);
    procedure CCodigoBco1Click(Sender: TObject);
    procedure CCodigoBcoClick(Sender: TObject);
    procedure EdFormaPagamentoExit(Sender: TObject);
    procedure CBFormaPagamentoExit(Sender: TObject);
    procedure CBFormaPagamentoChange(Sender: TObject);
    procedure Sb_FormaPagamentoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridRetornoCellClick(Column: TColumn);
    procedure BitEstornoRemessaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SQLDupliCNABBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    {variaveis}
     QryConsulta:TSQLQuery;
     cTOTAL_JUROS,
     cTOTAL_DESCONTOS,
     cTOTAL_TARIFAS,
     cTOTAL_GERAL :Currency;
//     cTOTAL_PAGO,
//     cTOTAL_ENTRADAS,
//     cQTDE_ENTRADAS,
//     cTOTAL_LIQUIDADAS,
//     cQTDE_LIQ,
//     cTOTAL_CARTORIO,
//     cQTDE_CARTORIO,
//     cTOTAL_REJEICAO,
//     cQTDE_REJEICAO,
//     cTOTAL_BAIXA,
//     cQTDE_BAIXA,
//     cTOTAL_PROTESTO,
//     cQTDE_PROT,
//     cTOTAL_OUTROS,
//     cQTDE_OUTROS,
//     cTOTAL_GERAL :Currency;

     wDIR,
     wEmpresa,
     wCodigoEmpresa : String;
     wLogError:Boolean;
     sCodigoCnab,
     wSQL1,
     wSQL2,
     wSQL3,
     wSQL4,
     wSeleciona,
     wOrdem,
     wARQUIVO,
     sCaminhoRemessa,
     wPESQUISA_TITULO  :String;
     iLINHA,
     iQtdeRegistro,
     wQTD_DUPLICATA,wPos    :Integer;
     wDUPLICATA,
     wNParcela         :String;
     wIDENTIFICA_TITULO:String[20];
     wOCORRENCIA       :String[02];
     wDATA_OCORRENCIA  :String[10];
     wNOSSO_NUMERRO    :String[17];
     wCOD_REJEICAO     :String[10];
     wCOD_INDICACAO    :String[02];
     wVALOR_DESCONTO,
     wVALOR_ABATIMENTO,
     wVALOR_TARIFA,
     wVALOR_JUROS_MORA,
     wVALOR_MULTA,
     wVALOR_PAGO    :String[15];
     wSTATUS_BAIXA  :String[1];
     wRejeicao      :String;
     wTOTAL_ENTRADAS,
     wTOTAL_LIQUIDADAS,
     wTOTAL_CARTORIO,
     wTOTAL_REJEICAO,
     wTOTAL_BAIXA,
     wTOTAL_OUTROS,
     wTOTAL_PROTESTO:Currency;
     //
     iQTDE_ENTRADAS,
     iQTDE_LIQ,
     iQTDE_CARTORIO,
     iQTDE_REJEICAO,
     iQTDE_BAIXA,
     iQTDE_PROT,
     iQTDE_OUTROS:Integer;

     dDataRecebimento:TDate;


     {campos}
     CampoEdit    :TEdit;
     CampoMaskEdit:TMaskEdit;
     CampoBox     :TComboBox;
     CampoCurrency:TCurrencyEdit;
     CampoFileEdit:TFileNameEdit;
    {procedimentos}
     procedure SelecionaRetornoBanco(wCOD_BANCO:String);
     procedure preencheBancos;
     procedure AtribuiCaminhoRefBanco;
     procedure AtualizaArquivoCNABRemessa(wCOD_ARQUIVO,wLITERAL_ARQUIVO,wCOD_SERVICO,wLITERAL_SERVICO,wDATA_ARQ:String);
     procedure AtualizaArquivoCNABRemessaDuplicata;
     procedure AtualizaArquivoCNABRemessaDuplicataSTATUS_BAIXA(wDUPLICATA:String);
     procedure AtualizaNossoNumeroBancoDuplicata;
     procedure AtualizaContaReceberAutomatico;
     procedure EstornoTitulos (const tipo :string);
     procedure EstornoTitulosRetornoCopel;
     procedure EstornoRetornoTitulos;
     procedure TrataArquivoTextoEstorno (const tipo : string);
     procedure AtualizaArquivoRetorno;
     procedure AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
     procedure AtualizaLimiteCliente(wDUPLICATA:String);
    {procedimento importacao}
     procedure ImportarCNAB_HSBC;
     procedure ImportarCNAB_CEF;
     procedure ImportarCNAB_SANTADER;
     procedure ImportarCNAB_ITAU;
     procedure ImportarBRADESCO;
     procedure ImportarBRASIL;
     procedure ImportarSicredi;
     procedure IniciarVar;
     procedure ImprimirProtocoloRetornoCNAB400(wSAIDA:String;wCOD_RETORNO,wCOD_BANCO:String);
     procedure MudaCorCampos(Sender: TObject);
     procedure BuscaRecebimentos;
  public
    { Public declarations }
     procedure CalculaTotalDuplicatas(wCOD_REMESSA:String);
     procedure ImprimirProtocoloRemessaCNAB400(wSAIDA:String;wCOD_REMESSA:String);
     procedure BotoesAcesso;
  end;

var
  FrmRetornoCNAB: TFrmRetornoCNAB;

implementation

uses Uteis, Men0001, DataCad1, DataCad, UFuncoes, cnab0001, uFinanceiroDao,
  uCadastroFormaPagamento, iniciodb;


{$R *.dfm}

procedure TFrmRetornoCNAB.FormShow(Sender: TObject);
begin
  Screen.OnActiveControlChange   := MudaCorCampos;
  preencheBancos;
  CBFormaPagamento.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
  CBFormaPagamento.Compartilhar := 'TABELAS';
  CBFormaPagamento.CarregarCombo := True;
  DataInicial.Date := Date-15;
  DataFinal.Date := Date;
end;

procedure TFrmRetornoCNAB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmRetornoCNAB.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if PanProcessando.Visible then
      begin
         //beep;
         uteis.aviso('Processo atual não foi concluido ! aguarde a finalização do processo...');
         CanClose := False;
      end
   else
      begin
         try
            Screen.Cursor    := CrHourglass;
            Screen.OnActiveControlChange   := nil;


            CBFormaPagamento.CarregarCombo := False;


            SQLDupliCNAB.Close;
            SQLDupliCNAB.PacketRecords := -1;
            DataCadastros1.CdSArquivoCNAB.Close;
            DataCadastros1.CdSDupliCNAB.Close;
            SQLContaBanco.Close;
            Screen.Cursor    := CrDefault;
         except on E:Exception do
           begin
              //beep;
              Screen.Cursor    := CrDefault;
              uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
           end;
         end;
      end;
end;

procedure TFrmRetornoCNAB.SelecionaRetornoBanco(wCOD_BANCO: String);
var layout : string;
begin
  try
    Screen.Cursor    := CrHourglass;
    if  StrToIntDef(wCOD_BANCO,0)>= 900  then
      layout := 'WHERE '
    else
    if RadCNAB400p.Checked then
      layout := 'WHERE A1.CNAB_CODIGO = '+QuotedStr('400') + ' AND  '
    else
      layout := 'WHERE A1.CNAB_CODIGO = '+QuotedStr('240')+ ' AND  ' ;
    case  CbFiltro.ItemIndex of
        0 : //todos
           wSeleciona := ' WHERE A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+'''';
        1 : // remessa
          wSeleciona := layout+' A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '''+'REMESSA'+'''';
        2: //retorno
           wSeleciona := layout +'A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '''+'RETORNO'+'''';
        3: //estorno remessa
          wSeleciona := layout+' A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '+QuotedStr('ESTORNO REMESSA');
        4: //estorno retorno
          wSeleciona := layout +' A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '+QuotedStr('ESTORNO RETORNO');
        5: //estorno
          wSeleciona :=layout +' A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO like '+QuotedStr('ESTORNO%');
    end;
      //
    if (DataInicial.Date > 0) and (DataFinal.Date > 0)  then
       wSeleciona := wSeleciona + ' AND CNAB_DATA  between ' + DateToSQL(DataInicial.Date)+' and '+ DateToSQL(DataFinal.Date)
    else if  (DataInicial.Date > 0)  then
       wSeleciona := wSeleciona + ' AND CNAB_DATA  >= ' + DateToSQL(DataInicial.Date)
    else if DataFinal.Date > 0 then
         wSeleciona := wSeleciona + ' and CNAB_DATA <= ' + DateToSQL(DataFinal.Date);


      wOrdem := 'A1.CNAB_REGISTRO DESC,A1.CNAB_DATA';
      wseleciona := wseleciona+ ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO);

      DataCadastros1.CdSArquivoCNAB.Close;
      DataCadastros1.CdSArquivoCNAB.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1 ',wSeleciona,wOrdem,'A1.');
      DataCadastros1.CdSArquivoCNAB.Open;
      if DataCadastros1.CdSArquivoCNAB.IsEmpty then
         begin
            //beep;
            uteis.aviso('Não Foram Encotrados Arquivo(s) de Retorno ref. o Banco Informado !');
            CCodigoBco.Enabled   := True;
            CbBancos.Enabled     := True;
            CbFiltro.ItemIndex   := 0;
            CCodigoBco.SelectAll;
            if CCodigoBco.CanFocus then
            CCodigoBco.SetFocus;
         end
      else
         begin
            CCodigoBco.Enabled   := False;
            CbBancos.Enabled     := False;
            BitCancelarB.Visible := True;
            BitPesquisar.Visible := False;
            //
            if DBGridRetorno.CanFocus then
              DBGridRetorno.SetFocus;
         end;
      Screen.Cursor    := CrDefault;
    except on E:Exception do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
       end;
    end;
end;

procedure TFrmRetornoCNAB.SQLDupliCNABBeforeOpen(DataSet: TDataSet);
begin
  if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'REMESSA' then
    BitEstornoRemessa.Caption := '&Estorno Remessa'
  Else if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO' then
    BitEstornoRemessa.Caption := '&Estorno Retorno' ;
  BitEstornoRemessa.Enabled := MatchStr(DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString,['REMESSA','RETORNO' ]);
end;

procedure TFrmRetornoCNAB.CCodigoBcoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         if SQLContaBanco.Locate('BAN_COD_APELIDO',CCodigoBco.AsInteger,[]) then
            begin
               CbBancos.Text    := SQLContaBanco.FieldByname('BAN_APELIDO').AsString;
               sCaminhoRemessa  := SQLContaBanco.FieldByname('BAN_CAMINHO_REMESSA').AsString;
            end
         else
            begin
               uteis.aviso('Banco não encontrado com o código informado ...');
               CbBancos.Text        := '';
               sCaminhoRemessa      := '';
               CCodigoBco.SetFocus;
               CCodigoBco.SelectAll;
            end;
         key := #0;
      end;
end;

procedure TFrmRetornoCNAB.CbBancosClick(Sender: TObject);
begin
   if SQLContaBanco.Locate('BAN_APELIDO',CbBancos.Text,[]) then
      begin
         CCodigoBco.AsInteger := SQLContaBanco.FieldByname('BAN_COD_APELIDO').AsInteger;
         sCaminhoRemessa      := SQLContaBanco.FieldByname('BAN_CAMINHO_REMESSA').AsString;
      end
   else
      begin
         CCodigoBco.AsInteger := 0;
         CbBancos.Text        := '';
         sCaminhoRemessa      := '';
      end;
end;

procedure TFrmRetornoCNAB.preencheBancos;
begin
   try
     SQLContaBanco.Close;
     SQLContaBanco.CommandText := SQLDEF('BANCOS','SELECT B1.BAN_CODIGO,B1.BAN_COD_APELIDO,B1.BAN_APELIDO,B1.BAN_CAMINHO_REMESSA,B1.BAN_CAMINHO_RETORNO FROM BAN0000 B1 ','','B1.BAN_APELIDO','B1.');
     SQLContaBanco.Open;
     SQLContaBanco.First;
     CbBancos.Clear;
     CbBancos1.Clear;
     while not SQLContaBanco.Eof do
       begin
          CbBancos.Items.Add (SQLContaBanco.FieldByname('BAN_APELIDO').AsString);
          CbBancos1.Items.Add(SQLContaBanco.FieldByname('BAN_APELIDO').AsString);
          SQLContaBanco.Next;
       end;
      SQLContaBanco.First;
    except on E:Exception do
       begin
          uteis.erro  (Pchar('Impossível acessar arquivo : '+ #13 + E.message));
       end;
    end;
end;

procedure TFrmRetornoCNAB.BitPesquisarClick(Sender: TObject);
begin
   if CCodigoBco.AsInteger <> 0 then
      begin
         SelecionaRetornoBanco(CCodigoBco.Text);
      end
   else
      begin
         //beep;
         uteis.aviso('Informe o banco para pesquisa do arquivo de retorno !');
         CCodigoBco.SetFocus;
         CCodigoBco.SelectAll;
      end;

end;

procedure TFrmRetornoCNAB.CalculaTotalDuplicatas(wCOD_REMESSA:String);
Var
 SQLTotal:TSQLQuery;
begin
   try
     try
       SQLTotal := TSQLQuery.Create(Nil);
       SQLTotal.SQLConnection := DataCadastros.SQLConnection1;
       SQLTotal.SQL.Clear;
      {limpa}
       CEntradas.Clear;
       CLiquidacoes.Clear;
       CCartorio.Clear;
       CRejeicao.Clear;
       CBaixas.Clear;
       CProtesto.Clear;
       COutros.Clear;
       CJuros.Clear;
       CTarifas.Clear;
       CSubTotal.Clear;
       Cdesconto.Clear;
       CTotalTitulos.Clear;
      {R = REMESSA / T= RETORNO}
       wSql1 := 'SELECT A1.CNAB_CODIGO_BANCO,D1.DCN_COD_OCORRENCIA,D1.DCN_COD_REJEICAO,SUM(F2.FPC_VLPARC) as wTOTAL_DUPLICATAS,SUM(F2.FPC_JUROS) as wTOTAL_JUROS,SUM(D1.DCN_VALOR_DESCONTO) as wTOTAL_DESC,SUM(D1.DCN_TARIFA) as wTOTAL_TARIFA ';
       wSql2 := 'FROM ARQUIVO_CNAB A1 LEFT JOIN DUPLICAT_CNAB D1 ON (A1.CNAB_REGISTRO = D1.DCN_COD_REMESSA) LEFT JOIN FAT_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO AND D1.DCN_DUP_PARCELA = F2.FPC_NUMER) ';
       wSql3 := ' GROUP BY CNAB_CODIGO_BANCO,DCN_COD_OCORRENCIA,DCN_COD_REJEICAO ';
       wSeleciona := ' WHERE A1.CNAB_REGISTRO = '''+wCOD_REMESSA+'''';
       wOrdem := ' ORDER BY A1.CNAB_CODIGO_BANCO,D1.DCN_COD_OCORRENCIA ';
       SQLTotal.SQL.Add(wSQL1+wSQL2+wSeleciona+wSql3+wOrdem);
       SQLTotal.Open;
       SQLTotal.EnableControls;
       if not SQLTotal.IsEmpty then
          begin
             SQLTotal.First;
             while not SQLTotal.Eof do
                   begin
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 001 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [05,06,07,08] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15])  then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19]) then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [02,03,05,06,07,08,09,10,15,19]) then {outros}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end
                      else
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 399 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,07,15,31,32,33,38,39] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15,32] then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,16] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [37] then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [02,03,06,07,09,10,15,16,31,32,33,37,38,39]) then {protestados}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end
                      else
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 104 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 01 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [21] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [22] then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [99] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [23,24] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [25] then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [01,21,22,99,23,24,25]) then {protestados}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end
                      else
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 8 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [02,06,16,15,03,09,10,32]) then {outros}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end
                      else
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 341 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [08] then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,15] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [02,03,06,08,09,10,15,32]) then {outros}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end
                      else
                      if SQLTotal.FieldByname('CNAB_CODIGO_BANCO').AsInteger = 237 then
                         begin
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                               CEntradas.Value      := (CEntradas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidacoes}
                               CLiquidacoes.Value   := (CLiquidacoes.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                               CCartorio.Value      := (CCartorio.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                               CRejeicao.Value      := (CRejeicao.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                               CBaixas.Value        := (CBaixas.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19] then {protestados}
                               CProtesto.Value      := (CProtesto.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency)
                            else
                            if not (SQLTotal.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [02,03,06,09,10,15,19]) then {outros}
                               COutros.Value        := (COutros.Value + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency);
                            //
                            CJuros.Value            := (CJuros.Value         + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency);
                            CTarifas.Value          := (CTarifas.Value       + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            CSubTotal.Value         := (CSubTotal.Value      + SQLTotal.FieldByname('wTOTAL_DUPLICATAS').AsCurrency + SQLTotal.FieldByname('wTOTAL_JUROS').AsCurrency + SQLTotal.FieldByname('wTOTAL_TARIFA').AsCurrency);
                            Cdesconto.Value         := (Cdesconto.Value      + SQLTotal.FieldByname('wTOTAL_DESC').AsCurrency);
                         end;
                      //
                      SQLTotal.Next;
                   end;
           {total final}
            CTotalTitulos.Value     := (CSubTotal.Value - Cdesconto.Value);
          end;
     finally
       FreeAndNil(SQLTotal);
     end;
    except on E:Exception do
       begin
          uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
       end;
    end;
end;

procedure TFrmRetornoCNAB.BitBtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRetornoCNAB.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
          if NbookPages.PageIndex = 1 then
          begin
               if BitBtnSair.Enabled then
                  BitBtnSair.Click;
          end
         else
         if NbookPages.PageIndex = 0 then
         begin
               if BitCancelarB.Visible then
                  BitCancelarB.Click
               else
                  BitBtnSair.Click;
         end;
         key := #0;
     end;
end;

procedure TFrmRetornoCNAB.CCodigoBco1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         if SQLContaBanco.Locate('BAN_COD_APELIDO',CCodigoBco1.AsInteger,[]) then
            begin
               CbBancos1.Text           := SQLContaBanco.FieldByname('BAN_APELIDO').AsString;
               FileArqImportar.Enabled  := True;
               BitProcessar.Enabled     := True;
               AtribuiCaminhoRefBanco;
            end
         else
            begin
               uteis.aviso('Banco não encontrado com o código informado ...');
               CbBancos1.Text           := '';
               FileArqImportar.Enabled  := False;
               BitProcessar.Enabled     := False;
               CCodigoBco1.SetFocus;
               CCodigoBco1.SelectAll;
            end;
         key := #0;
      end;
end;

procedure TFrmRetornoCNAB.CbBancos1Click(Sender: TObject);
begin
    if SQLContaBanco.Locate('BAN_APELIDO',CbBancos1.Text,[]) then
       begin
          CCodigoBco1.AsInteger    := SQLContaBanco.FieldByname('BAN_COD_APELIDO').AsInteger;
          FileArqImportar.Enabled  := True;
          BitProcessar.Enabled     := True;
          AtribuiCaminhoRefBanco;
       end
    else
       begin
          BitProcessar.Enabled     := False;
          FileArqImportar.Enabled  := False;
       end;
end;

procedure TFrmRetornoCNAB.ImportarCNAB_HSBC;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
      PanAgencia.Caption    := '';
      CdigitoAge.Clear;
      PanContaCorr.Caption;
      CdigitoC.Clear;
      CCodCarteira.Clear;
      PanCodEmpresa.Caption := '';
      PDisplayDup.Caption   := '';
      PDisplayEmiss.Caption := '  /  /    ';
      PDisplayVenc.Caption  := '  /  /    ';
      CdisplayValor.Clear;
      PanNossoNumero.Caption:= '';
      PDisplayBanco.Caption := '';
      CRegistro.Clear;
      CValorTotal.Clear;
      Gauge.Progress         := 0;
      wLogError              := False;
     {inicializa variaveis}
      wDUPLICATA             := '';
      wIDENTIFICA_TITULO     := '';
      wNOSSO_NUMERRO         := '';
      wOCORRENCIA            := '';
      wDATA_OCORRENCIA       := '';
      wCOD_REJEICAO          := '';
      wCOD_INDICACAO         := '';
      wVALOR_DESCONTO        := '';
      wVALOR_ABATIMENTO      := '';
      wVALOR_TARIFA          := '';
      wVALOR_JUROS_MORA      := '';
      wVALOR_PAGO            := '';
      wVALOR_MULTA           := '';
      wSTATUS_BAIXA          := 'N';
      wLogError              := False;
      Application.ProcessMessages;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '1'then
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {le o retorno}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := Trim(copy(wHEADER,28,03));
      CdigitoAge.Text       := Trim(copy(wHEADER,30,01));
      PanContaCorr.Caption  := Trim(copy(wHEADER,34,09));
      CdigitoC.Text         := Trim(copy(wHEADER,43,02));
      PanCodEmpresa.Caption := '';
     {nome do arquivo}
      wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      SQLConsultaArquivo.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1','WHERE A1.CNAB_COD_EMPESA = ''1'' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND A1.CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND A1.CNAB_CONTA = '''+PanContaCorr.Caption+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''','','A1.');
      SQLConsultaArquivo.Open;
      if not SQLConsultaArquivo.IsEmpty then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
         begin
            //beep;
            uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,77,3) <> CCodigoBco1.Text) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+CCodigoBco1.Text+' '+CbBancos1.Text+' !'));
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end;
     {atualiza arquivo CNAB  - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,15)), {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
      //
      Gauge.Progress        := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text      := Trim(copy(wHEADER,108,001));
                  PDisplayDup.Caption    := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption := Trim(copy(wHEADER,063,011));{nosso numero}
                  PDisplayEmiss.Caption  := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption   := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value    := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption  := CbBancos1.Text;
                  CValorTotal.Value      := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger    := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wDUPLICATA             := PreenchezeroEsquerda(Trim(copy(wHEADER,117,006)),6);{seu numero} //117 - 010
                  wNParcela              := '';
                  wNParcela              := Trim(copy(wHEADER,124,002));
                  if wNParcela<>'' then
                     wNParcela           := PreencheZeroEsquerda(wNParcela,2);
                  wIDENTIFICA_TITULO     := '';//Trim(copy(wHEADER,038,062));{Identificação do Titulo Empresa}
                  wNOSSO_NUMERRO         := Trim(copy(wHEADER,063,011));{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  //nao wDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,302,002));{codigo rejeição}
                  wCOD_INDICACAO         := Trim(copy(wHEADER,304,001));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := '0.00';
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '02' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [06,07,15,31,32,33,38,39] then  //37 - baixa titulo cartorio {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;

      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
          {copia arquivo para pasta de importados}
           AtualizaArquivoRetorno;
          //
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;
     Screen.Cursor    := CrDefault;
   end;
end;

procedure TFrmRetornoCNAB.AtribuiCaminhoRefBanco;
begin
   try
      {cria diretorio conforme banco para remessa}
      if SQLContaBanco.FieldByName('BAN_CAMINHO_RETORNO').IsNull then
         begin
            wDIR := dbInicio.SistemaLocal+'Bancos\Retorno\'+CCodigoBco1.Text;
             if not DirectoryExists(wDIR) then
                begin
                    ForceDirectories(wDIR);
                    {Atualizar o caminho no cadastro de bancos}
                    DataCadastros.SqlUpdate.Close;
                    DataCadastros.SqlUpdate.Sql.Text := SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_CAMINHO_RETORNO = '''+wDIR+'''','WHERE BAN_COD_APELIDO = '''+CCodigoBco.Text+'''','','');
                    DataCadastros.SqlUpdate.ExecSql;
                end;
         end
      else
          wDIR := SQLContaBanco.FieldByName('BAN_CAMINHO_RETORNO').AsString;
      //
      FileArqImportar.FileName := wDIR+'\';
   except
      //beep;
      uteis.erro  ('Impossível localizar caminho para importar os arquivos.');
   end;
end;

procedure TFrmRetornoCNAB.BitProcessarClick(Sender: TObject);
begin
     if (EdFormaPagamento.Text = '') then
     begin
         uteis.aviso('Informe a forma de pagamento');
         EdFormaPagamento.SetFocus;
         EdFormaPagamento.SelectAll;
     end
     else
     if uteis.confirmacao ( ('Confirma importação do arquivo '+ExtractFileName(FileArqImportar.FileName)+' ref. o banco '+FormatFloat('000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text))= mryes then
     begin
          if ExtractFileName(FileArqImportar.FileName) <> '' then
          begin
               BitProcessar.Enabled    := False;
               CCodigoBco1.Enabled     := False;
               CbBancos1.Enabled       := False;
               FileArqImportar.Enabled := False;
               BitImprimir.Enabled     := False;
               BitTipoImpressao1.Enabled:= False;
               BitVisualizar.Enabled   := False;
              //
               if CCodigoBco1.AsInteger = 001 then
                  ImportarBRASIL
               else
               if CCodigoBco1.AsInteger = 399 then
                  ImportarCNAB_HSBC
               else
               if CCodigoBco1.AsInteger = 104 then
                  ImportarCNAB_CEF
               else
               if CCodigoBco1.AsInteger = 8 then
                  ImportarCNAB_SANTADER
               else
               if CCodigoBco1.AsInteger = 341 then
                  ImportarCNAB_ITAU
               else
               if CCodigoBco1.AsInteger = 237 then
                  ImportarBRADESCO
               else
                  begin
                     //beep;
                     uteis.aviso('Retorno para o banco não encontrado !'+#13#10+
                           'Entre em Contato com Suporte Técnico...');
                  end;
             //
               CCodigoBco1.Enabled     := True;
               //BitVisualizar.Enabled   := True;
               CbBancos1.Enabled       := True;
               FileArqImportar.Enabled := True;
               BitImprimir.Enabled     := True;
               BitTipoImpressao1.Enabled:= True;
         end
         else
         begin
               uteis.aviso(Pchar('Informe o arquivo para importar o retorno ref. o banco :'+FormatFloat('000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' !'));
               FileArqImportar.Enabled := True;
               FileArqImportar.SetFocus;
         end;
     end
     else
     begin
         FileArqImportar.Enabled := True;
         FileArqImportar.SetFocus;
     end;
     //
     CCodigoBco1.SetFocus;
     CCodigoBco1.SelectAll;
end;

procedure TFrmRetornoCNAB.AtualizaArquivoCNABRemessa(wCOD_ARQUIVO,wLITERAL_ARQUIVO,wCOD_SERVICO,wLITERAL_SERVICO,wDATA_ARQ:String);
 Var
   sCod_Cnab,
   sStatusBaixa,
   sDataBaixa,
   sHoraBaixa:String;
begin
   try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      sCod_Cnab    := '';
      sStatusBaixa := 'N';
      sDataBaixa   := 'null';
      sHoraBaixa   := 'null';
     //
      if RadCNAB400.Checked then
         sCod_Cnab := '400'
      else
      if RadCNAB240.Checked then
         sCod_Cnab := '240';
     //
      if CCodigoBco1.AsInteger = 399 then
         wARQUIVO := wARQUIVO+'-'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+Copy(DateToStr(Date),8,4);
     //
      if ChkBaixaTitulos.Checked then
         begin
            sStatusBaixa := 'S';
            sDataBaixa   := chr(39)+DataAmericana(DateToStr(Date))+chr(39);
            sHoraBaixa   := chr(39)+TimeToStr(Time)+chr(39);
         end;
     //
      wSeleciona := 'WHERE A1.CNAB_COD_EMPESA = ''1'' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '''+wLITERAL_ARQUIVO+''' AND A1.CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND A1.CNAB_CONTA = '''+PanContaCorr.Caption+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      wSeleciona := wSeleciona + ' AND A1.EMP_CODIGO = '''+wCodigoEmpresa+'''';
      DataCadastros.SqlUpdate.Close;                                                              //DadosBase0.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      DataCadastros.SqlUpdate.Sql.Text := 'SELECT A1.CNAB_REGISTRO FROM ARQUIVO_CNAB A1 '+wSeleciona;
      DataCadastros.SqlUpdate.Open;
      if DataCadastros.SqlUpdate.IsEmpty then
      begin

           DataCadastros.SqlUpdate.Close;

           wSQL1:= 'Insert Into ARQUIVO_CNAB (CNAB_CODIGO,CNAB_COD_EMPESA,CNAB_CODIGO_BANCO,CNAB_COD_ARQUIVO,CNAB_LITERAL_ARQUIVO,CNAB_DATA,CNAB_HORA,CNAB_COD_SERVICO,CNAB_LITERA_SERVICO,CNAB_AGENCIA,CNAB_AGENCIA_DV,CNAB_CONTA,CNAB_CONTA_DV,CNAB_QTDE_DUPLICATA,';
           wSQL2:= 'CNAB_NOME_ARQUIVO,CNAB_STATUS_BAIXA,CNAB_DATA_BAIXA,CNAB_HORA_BAIXA,EMP_CODIGO)';
           wSQL3:= 'values('''+sCod_Cnab+''','''
                               +'1'+''','''
                               +CCodigoBco1.Text+''','''
                               +wCOD_ARQUIVO+''','''
                               +wLITERAL_ARQUIVO+''','''
                               +DataAmericana(wDATA_ARQ)+''','''
                               +TimeToStr(Time)+''','''
                               +wCOD_SERVICO+''','''
                               +wLITERAL_SERVICO+''','''
                               +PanAgencia.Caption+''','''
                               +CdigitoAge.Text+''','''
                               +PanContaCorr.Caption+''','''
                               +CdigitoC.Text+''','''
                               +IntToStr(wQTD_DUPLICATA)+''','''
                               +wARQUIVO+''','''
                               +sStatusBaixa+''','
                               +sDataBaixa+','
                               +sHoraBaixa+','''
                               +wCodigoEmpresa+''')';

           DataCadastros.SqlUpdate.Sql.Text := wSQL1+wSQL2+wSQL3;
           if dbInicio.IsDesenvolvimento then
               copytoclipboard(DataCadastros.SqlUpdate.Sql.Text);

           DataCadastros.SqlUpdate.ExecSql;
           //
           wSeleciona := 'WHERE A1.CNAB_COD_EMPESA = ''1'' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = '''+wLITERAL_ARQUIVO+''' AND A1.CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND A1.CNAB_CONTA = '''+PanContaCorr.Caption+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
           wSeleciona := wSeleciona + ' AND A1.EMP_CODIGO = '''+wCodigoEmpresa+'''';
           DataCadastros.SqlUpdate.Close;
           DataCadastros.SqlUpdate.Sql.Text := 'SELECT A1.CNAB_REGISTRO FROM ARQUIVO_CNAB A1 '+wSeleciona;
           DataCadastros.SqlUpdate.Open;
           if not DataCadastros.SqlUpdate.IsEmpty then
               sCodigoCnab := DataCadastros.SqlUpdate.FieldByName('CNAB_REGISTRO').AsString
           else
               sCodigoCnab := '0';
      end;
      Screen.Cursor    := CrDefault;
   except on E:Exception do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar aquivo : '+ #13 + E.message));
     end;
   end;
end;

procedure TFrmRetornoCNAB.AtualizaArquivoCNABRemessaDuplicata;
begin
   try
     try
       Screen.Cursor:= CrHourglass;
      {sql}
       wSQL1        := 'Insert Into DUPLICAT_CNAB (DCN_COD_REMESSA,DCN_DUPLICATA,DCN_DUP_PARCELA,DCN_IDENTIFICA_TITULO,DCN_COD_OCORRENCIA,DCN_DATA_OCORRENCIA,DCN_COD_REJEICAO,DCN_INDIC_CREDITO,DCN_NOSSO_NUMERO,DCN_TARIFA,DCN_VALOR_ABATIMENTO,';
       wSQL2        := 'DCN_VALOR_DESCONTO,DCN_VALOR_PAGO,DCN_JUROS_MORA,DCN_VALOR_MULTA,DCN_STATUS_BAIXA,EMP_CODIGO)';
       wSQL3        := 'values('''+sCodigoCnab+''','''
                                +wDUPLICATA+''','''
                                +wNPARCELA+''','''
                                +wIDENTIFICA_TITULO+''','''
                                +wOCORRENCIA+''','''
                                +wDATA_OCORRENCIA+''','''
                                +wCOD_REJEICAO+''','''
                                +wCOD_INDICACAO+''','''
                                +wNOSSO_NUMERRO+''','''
                                +ValorAmericano(wVALOR_TARIFA)+''','''
                                +ValorAmericano(wVALOR_ABATIMENTO)+''','''
                                +ValorAmericano(wVALOR_DESCONTO)+''','''
                                +ValorAmericano(wVALOR_PAGO)+''','''
                                +ValorAmericano(wVALOR_JUROS_MORA)+''','''
                                +ValorAmericano(wVALOR_MULTA)+''','''
                                +wSTATUS_BAIXA+''','''
                                +wCodigoEmpresa+''')';
       DataCadastros1.CdSDupliCNAB.Close;
       DataCadastros1.CdSDupliCNAB.CommandText := wSQL1+wSQL2+wSQL3;
       DataCadastros1.CdSDupliCNAB.Execute;
      Screen.Cursor := CrDefault;
     except on E:Exception do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
       end;
     end;
   finally
   end;
end;

procedure TFrmRetornoCNAB.FormCreate(Sender: TObject);
begin
   inherited;
   height := 515;
   width := 970;
   NbookPages.PageIndex := 0;
end;

procedure TFrmRetornoCNAB.FormDestroy(Sender: TObject);
begin
     FrmRetornoCNAB := Nil;
end;

procedure TFrmRetornoCNAB.AtualizaContaReceberAutomatico;
 Var
   wTIPO_PGTO       :String[12];
   wSITUACAO_BAIXA  :String[1];
begin
   try
{'Bloqueada';
'Cancelada';
'Devolução';
'Pendente';
Cartório
Protestada
Liquidada
}
     try
       {inicializa variaveis}
        if CCodigoBco1.AsInteger = 001 then {Tratameto ref. BANCO BRASIL}
           begin
              if (StrToInt(wOCORRENCIA) in [15]) then
                 begin
                    wTIPO_PGTO      := 'Cartório'; //CARTORIO
                    wSITUACAO_BAIXA := 'L';
                 end
              else
              if (StrToInt(wOCORRENCIA) in [19])  then
                 begin
                    wTIPO_PGTO      := 'Protestada'; //PROTESTADO
                    wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
             if wNParcela <> '' then
                wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
             else
                wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
           end
        else
        if CCodigoBco1.AsInteger = 008 then {Tratameto ref. Santader}
           begin
              if StrToInt(wOCORRENCIA) in [15] then
                 begin
                    wTIPO_PGTO      := 'Cartório'; //CARTORIO
                    wSITUACAO_BAIXA := 'L';
                 end
              else
              if StrToInt(wOCORRENCIA) in [32] then
                 begin
                    wTIPO_PGTO      := 'Protestada'; //PROTESTADO
                    wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
             if wNParcela <> '' then
                wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
             else
                wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
           end
        else
        if CCodigoBco1.AsInteger = 399 then {tratamento ref. HSBC}
           begin
              if StrToInt(wOCORRENCIA) in [15,32] then
                 begin
                    wTIPO_PGTO      := 'Cartório'; //CARTORIO
                    wSITUACAO_BAIXA := 'L';
                 end
              else
              if StrToInt(wOCORRENCIA) in [37] then
                 begin
                    wTIPO_PGTO      := 'Protestada';//PROTESTO
                    wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
              if wNParcela <> '' then
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
              else
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
           end
        else
        if CCodigoBco1.AsInteger = 104 then {tratamento ref. CEF}
           begin
              if StrToInt(wOCORRENCIA) in [22] then
                 begin
                    wTIPO_PGTO      := 'Cartório'; //CARTORIO
                    wSITUACAO_BAIXA := 'L';
                 end
              else
              if StrToInt(wOCORRENCIA) in [25] then
                 begin
                   wTIPO_PGTO      := 'Protestada';//PROTESTO
                   wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
              //
//              if wIDENTIFICA_TITULO <> '' then
//                 wPESQUISA_TITULO  := ' where FAT_CODIGO = '''+wIDENTIFICA_TITULO+''''
//              else
              if wNParcela <> '' then
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
              else
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
           end
        else
        if CCodigoBco1.AsInteger = 341 then {tratamento ITAU}
           begin
              if StrToInt(wOCORRENCIA) in [08] then
                begin
                   wTIPO_PGTO      := 'Cartório'; //CARTORIO
                   wSITUACAO_BAIXA := 'L';
                end
              else
              if StrToInt(wOCORRENCIA) in [32] then
                 begin
                    wTIPO_PGTO      := 'Protestada';//PROTESTO
                    wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
              //
              if wNParcela <> '' then
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
              else
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
           end
        else
        if CCodigoBco1.AsInteger = 237 then {tratamento ITAU}
           begin
              if StrToInt(wOCORRENCIA) in [15] then
                 begin
                    wTIPO_PGTO      := 'Cartório'; //CARTORIO
                    wSITUACAO_BAIXA := 'L';
                 end
              else
              if StrToInt(wOCORRENCIA) in [19] then
                 begin
                    wTIPO_PGTO      := 'Protestada';//PROTESTO
                    wSITUACAO_BAIXA := 'P';
                 end
              else
                 begin
                    wTIPO_PGTO      := 'Liquidada';//BANCO
                    wSITUACAO_BAIXA := 'L';
                 end;
              //

              if wNParcela <> '' then
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '+qStr(wDUPLICATA)+' and FPC_NUMER='+qStr(wNParcela)
              else
                 wPESQUISA_TITULO   := ' where FAT_CODIGO = '+qStr(wDUPLICATA);
           end;
       wPESQUISA_TITULO := wPESQUISA_TITULO + ' AND EMP_CODIGO = '''+wCodigoEmpresa+'''';
      {************************************************************************************}
        Application.ProcessMessages;
        LblSataus.Caption  := 'Atualizando arquivo de Conta à Receber....';
       {atualiza arquivo de duplciatas}
        DataCadastros.SqlUpdate.Close;

        wSQL1 := 'SELECT * FROM FAT_PC01 ';

        DataCadastros.SqlUpdate.Sql.Text := wSQL1+wPESQUISA_TITULO;
        DataCadastros.SqlUpdate.Open;
                                    
        if (not DataCadastros.SqlUpdate.IsEmpty) then
           begin
               //baixa
               ContasReceberBaixa(PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6), //sFaturaRegistro,
                                  PreenchezeroEsquerda(CCodigoBco1.Text,4), //sContaBancoRegistro,
                                  EdFormaPagamento.Text, //sFormaPgtoRegistro,
                                  dbInicio.Usuario.Codigo, //sUsuarioCodido
                                   //:String;
                                  DataCadastros.SqlUpdate.FieldByName('FPC_VLPARC').AsCurrency, //rPendente,
                                  StrToFloat(wVALOR_PAGO), //rBaixar,
                                  0.00, //rDesconto,
                                  StrToFloat(wVALOR_JUROS_MORA), //rJuros,
                                  0.00, //rMulta,
                                  StrToFloat(wVALOR_PAGO), //rRecebido
                                   //:Currency;
                                  dDataRecebimento); //dDataRecebimento:TDateTime):Boolean;
               //atualiza
               DataCadastros.SqlUpdate.Close;
               wSQL1 := 'update FAT_PC01 set '+
                                    ' FPC_STATUS_BAIXA = ''A''';{A=Automatica - M=Manual}
               DataCadastros.SqlUpdate.Sql.Text := wSQL1+wPESQUISA_TITULO;
               DataCadastros.SqlUpdate.ExecSql;
               DataCadastros.SqlUpdate.Close;
           end
        else
           DataCadastros.SqlUpdate.Close;
       {atualiza limite de credito cliente}
        AtualizaLimiteCliente(wPESQUISA_TITULO);
       except on E:Exception do
         begin
            //beep;
            Screen.Cursor    := CrDefault;
            uteis.erro  (Pchar('Impossível atualizar o arquivo: '+#13#10+ E.message));
         end;
       end;
   finally
   end;
end;

procedure TFrmRetornoCNAB.AtualizaArquivoCNABRemessaDuplicataSTATUS_BAIXA(wDUPLICATA:String);
begin
   try
     Screen.Cursor    := CrHourglass;
     if (wNParcela <> '') then
        wSeleciona := 'WHERE DCN_DUPLICATA = '''+wDUPLICATA+''' AND DCN_DUP_PARCELA = '''+wNParcela+''''
     else
        wSeleciona := 'WHERE DCN_DUPLICATA = '''+wDUPLICATA+'''';
     wSeleciona := wSeleciona + ' AND EMP_CODIGO = '''+wCodigoEmpresa+'''';
     DataCadastros1.CdSDupliCNAB.Close;
     DataCadastros1.CdSDupliCNAB.CommandText := 'UPDATE DUPLICAT_CNAB SET DCN_STATUS_BAIXA = ''S'''+wSeleciona;
     DataCadastros1.CdSDupliCNAB.Execute;
     Screen.Cursor    := CrDefault;
   except on E:Exception do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
     end;
   end;
end;

procedure TFrmRetornoCNAB.BitImprimir1Click(Sender: TObject);
begin
    Screen.Cursor := CrHourglass;
    PanTipo.Visible := False;
    if DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'REMESSA' then
       ImprimirProtocoloRemessaCNAB400(iif(RadVideo.checked  ,'V','I'),DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString)
    else
    if DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO' then
       ImprimirProtocoloRetornoCNAB400(iif(RadVideo.checked  ,'V','I'),DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString,FormatFloat('000',DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO_BANCO').AsCurrency));
    Screen.Cursor := CrDefault;
end;

procedure TFrmRetornoCNAB.DBGridRetornoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   begin
      if not DBGridTitulos.Columns[0].Field.IsNull then
         DBGridTitulos.SetFocus;
      key := #0;
  end;

end;

procedure TFrmRetornoCNAB.DBGridRetornoCellClick(Column: TColumn);
begin
  if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'REMESSA' then
    BitEstornoRemessa.Caption := '&Estorno Remessa'
  Else if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO' then
    BitEstornoRemessa.Caption := '&Estorno Retorno' ;
  BitEstornoRemessa.Enabled := MatchStr(DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString,['REMESSA','RETORNO' ]);
end;

procedure TFrmRetornoCNAB.DBGridRetornoDblClick(Sender: TObject);
begin
    if not DBGridTitulos.Columns[0].Field.IsNull then
       DBGridTitulos.SetFocus;
end;

procedure TFrmRetornoCNAB.ImportarCNAB_CEF;
 Var
  wREGISTRO : TextFile;
  wHEADER   : AnsiString;
  wTOTAL_REGISTROS:Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
     IniciarVar;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '1'then
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {ler o primeira linha}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := Trim(copy(wHEADER,27,4));
      CdigitoAge.Text       := '';//Trim(copy(wHEADER,30,1));
      PanContaCorr.Caption  := Trim(copy(wHEADER,35,8));
      CdigitoC.Text         := '';//Trim(copy(wHEADER,43,2));
      PanCodEmpresa.Caption := Trim(copy(wHEADER,27,16));

     {Verifica a empresa do Arquivo de Retorno para saber qual o
     codigo de cadastro da empresa}
     wEmpresa              := Trim(Copy(wHEADER,47,20));
     wPos :=  Pos(' ',wEmpresa);
     wEmpresa              := Trim(Copy(wHEADER,47,wPos));
     {Busca o Codigo da empresa no Cadastro da Empresa}
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.Sql.Text := 'SELECT E1.EMP_CODIGO FROM EMP0000 E1 WHERE (E1.EMP_RAZAO LIKE '''+wEmpresa+'%'') OR (E1.EMP_FANTASIA LIKE '''+wEmpresa+'%'')';
     DataCadastros.SqlUpdate.Open;
     if DataCadastros.SqlUpdate.IsEmpty = False then
        wCodigoEmpresa := DataCadastros.SqlUpdate.FieldByName('EMP_CODIGO').AsString;
     DataCadastros.SqlUpdate.Close;
     if (wCodigoEmpresa<>dbInicio.Empresa.EMP_CODIGO) then
        if uteis.confirmacao ( ('O arquivo que está importando é da Empresa : '+wEmpresa+#13+#10+'E a empresa logada é : '+dbInicio.Empresa.RAZAO))= MrNo then
           exit;

     {nome do arquivo}
      wARQUIVO  :=  ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      wSeleciona := 'WHERE A1.CNAB_COD_EMPESA = ''1'' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND A1.CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND A1.CNAB_CONTA = '''+PanContaCorr.Caption+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      wSeleciona := wSeleciona + ' AND A1.EMP_CODIGO = '''+wCodigoEmpresa+'''';
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString CNAB_LITERAL_ARQUIVO = '''+Trim(copy(wHEADER,03,07))+''' and
      SQLConsultaArquivo.CommandText := 'SELECT A1.* FROM ARQUIVO_CNAB A1 '+wSeleciona;
      SQLConsultaArquivo.Open;
      if (not SQLConsultaArquivo.IsEmpty) then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            wLogError   := True;
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
          begin
             //beep;
             uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
             wLogError   := True;
             FileArqImportar.Enabled := True;
             FileArqImportar.SetFocus;
             FileArqImportar.SelectAll;
             exit;
          end
      else
      if (copy(wHEADER,77,3) <> CCodigoBco1.Text) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+CCodigoBco1.Text+' '+CbBancos1.Text+' !'));
            wLogError   := True;
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            exit;
         end;
     {atualiza arquivo CNAB - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,15)),  {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
     //
     Gauge.Progress         := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text      := Trim(copy(wHEADER,107,002));
                  PDisplayDup.Caption    := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption := Trim(copy(wHEADER,063,011));{nosso numero}
                  PDisplayEmiss.Caption  := '  /  /    ';//Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption   := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value    := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption  := CbBancos1.Text;
                  CValorTotal.Value      := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger    := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wNOSSO_NUMERRO         := PreenchezeroEsquerda(Trim(copy(wHEADER,063,011)),11);{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  wDUPLICATA             := PreenchezeroEsquerda(Trim(copy(wHEADER,117,006)),6);{seu numero} //117 - 010
                  wNParcela              := '';
                  wNParcela              := Trim(copy(wHEADER,124,002));
                  if wNParcela<>'' then
                     wNParcela           := PreencheZeroEsquerda(wNParcela,2);
                  wIDENTIFICA_TITULO     := '';//Trim(copy(wHEADER,038,016));{Identificação do Titulo Empresa}
                  //naowDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,080,003));{codigo rejeição}
                  wCOD_INDICACAO         := '';//CEF não tem  //Trim(copy(wHEADER,304,001));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,280,013))) / 100)); {Valor da Multa}
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '01' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [21,22,24] then //25 - baixa protesto {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;
      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
            {fecha o arquivo}
             closeFile(wREGISTRO);
            {copia arquivo para pasta de importados}
             AtualizaArquivoRetorno;
             uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
            closeFile(wREGISTRO);
            uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;
     Screen.Cursor    := CrDefault;
   end;
end;

procedure TFrmRetornoCNAB.AtualizaNossoNumeroBancoDuplicata;
begin
    try
      try
        Application.ProcessMessages;
        LblSataus.Caption  := 'Atualizando arquivo de Conta à Receber....';
       {atualiza arquivo de duplciatas}
        wSeleciona := '';
        DataCadastros.SqlUpdate.Close;
        wSQL1        := 'UPDATE FAT_PC01 SET FPC_COBNUM = '''+wNOSSO_NUMERRO+'''';
        if (wNParcela <> '') then
           wSeleciona   := ' WHERE FAT_CODIGO = '''+wDUPLICATA+''' AND FPC_NUMER = '''+wNParcela+''''
        else
           wSeleciona   := ' WHERE FAT_CODIGO = '''+wDUPLICATA+'''';
        wSeleciona := wSeleciona + ' AND EMP_CODIGO = '''+wCodigoEmpresa+'''';
        DataCadastros.SqlUpdate.Sql.Text := wSQL1+wSeleciona;
        DataCadastros.SqlUpdate.ExecSql;
        DataCadastros.SqlUpdate.Close;
      except on E:Exception do
         begin
             //beep;
             Screen.Cursor    := CrDefault;
             uteis.erro  (Pchar('Impossível atualizar o arquivo: '+#13#10+ E.message));
         end;
      end;
    finally
      FormatSettings.ShortDateFormat    := 'dd/mm/yyyy';
    end;
end;

procedure TFrmRetornoCNAB.BitImprimirClick(Sender: TObject);
begin
    Screen.Cursor := CrHourglass;
    wSeleciona := 'WHERE A1.CNAB_REGISTRO = '''+sCodigoCnab+''''+
                 ' AND A1.CNAB_COD_EMPESA =' + IntToStr(StrToInt(DBInicio.Empresa.EMP_CODIGO));
    wOrdem     := 'A1.CNAB_REGISTRO DESC,A1.CNAB_DATA';
    DataCadastros1.CdSArquivoCNAB.Close;
    DataCadastros1.CdSArquivoCNAB.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1 ',wSeleciona,wOrdem,'A1.');
    DataCadastros1.CdSArquivoCNAB.Open;
    ImprimirProtocoloRetornoCNAB400(iif(RadVideo.checked  ,'V','I'),sCodigoCnab,FormatFloat('000',CCodigoBco1.AsInteger));
    Screen.Cursor := CrDefault;
end;

procedure TFrmRetornoCNAB.BitVisualizarClick(Sender: TObject);
 Var
 wREGISTRO: TextFile;
 wARQUIVO:String;
begin
   try
      GbRetorno.Enabled := False;
      TVisualizar.Clear;
      AssignFile(wREGISTRO,FileArqImportar.FileName);
      Reset(wREGISTRO);
      while(not eof(wREGISTRO)) do
         begin
            Readln(wREGISTRO,wARQUIVO);
            TVisualizar.Lines.Add(wARQUIVO);
         end;
     {}
      PanCaptionV.Caption   := ' Gerado Arquivo retorno '+RadCNAB400.Caption+ 'ref. banco :'+CCodigoBco.Text+' - '+CbBancos.Text;
      PanVisualizar.Top     := 4;
      PanVisualizar.Left    := 11;
      PanVisualizar.Visible := True;
      TVisualizar.SetFocus;
   finally
       closeFile(wREGISTRO);
   end;
end;

procedure TFrmRetornoCNAB.BotoesAcesso;
begin
  if Assigned(FrmRetornoCNAB) then
  begin
    BitImprimir1.Enabled := Uteis.AcessoUsuario('FinanceiroConsulta Arquivos de Retornos e Remessas',DBInicio.Usuario.CODIGO,FrmRetornoCNAB).Relatorio;

  end;
end;

procedure TFrmRetornoCNAB.ButFechaClick(Sender: TObject);
begin
   GbRetorno.Enabled     := True;
   PanVisualizar.Visible := False;
   CCodigoBco1.SetFocus;
   CCodigoBco1.SelectAll;
end;

procedure TFrmRetornoCNAB.BitFechaVisualClick(Sender: TObject);
begin
   GbRetorno.Enabled     := True;
   PanVisualizar.Visible := False;
   CCodigoBco1.SetFocus;
   CCodigoBco1.SelectAll;
end;

procedure TFrmRetornoCNAB.EstornoTitulos(const tipo :string);
begin
  try
    Try
      Screen.Cursor := CrHourglass;
      SQLDupliCNAB.DisableControls;
      SQLDupliCNAB.First;
//      wSeleciona := 'WHERE F2.FAT_CODIGO = '''+SQLDupliCNAB.FieldByname('FAT_CODIGO').AsString+''' AND F2.FPC_NUMER = '''+SQLDupliCNAB.FieldByname('FPC_NUMER').AsString+''' AND F2.FPC_SITPAG = ''L''';
//      wSeleciona := wSeleciona + ' AND F2.EMP_CODIGO = '''+SQLDupliCNAB.FieldByname('EMP_CODIGO').AsString+'''';
//      SQLConsultaCRC.Close;
//      SQLConsultaCRC.CommandText := 'SELECT F2.FAT_CODIGO,F2.FPC_NUMER,F2.FPC_SITPAG FROM FAT_PC01 F2 '+wSeleciona;
//      SQLConsultaCRC.Open;
//      if SQLConsultaCRC.IsEmpty then
//         begin
             try
               LblMensagem1.Caption    := '';
               LblMensagem2.Caption    := '';
               PanProcessando.Visible  := True;
               Application.ProcessMessages;
               LblProcesso.Caption     := 'Processando o Estorno das Duplicatas....';
               ProgressBar.Position    := 0;
               ProgressBar.Max         := SQLDupliCNAB.RecordCount;
               while not SQLDupliCNAB.Eof do
                  begin
                    {estorna duplicata}
                     DataCadastros.SqlUpdate.Close;
                     DataCadastros.SqlUpdate.Sql.Text := 'UPDATE FAT_PC01 SET FPC_STATUS_REMESSA = ''N'',FPC_DATA_REMESSA = NULL '+
                     ' WHERE FAT_CODIGO = '''+SQLDupliCNAB.FieldByname('FAT_CODIGO').AsString+''' AND FPC_NUMER = '''+SQLDupliCNAB.FieldByname('FPC_NUMER').AsString+''''+
                     ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ;
                     DataCadastros.SqlUpdate.ExecSql;
                    //
                     ProgressBar.Position := ProgressBar.Position + 1;
                     SQLDupliCNAB.Next;
                  end;
             finally
              {delete arquivo de duplicata CNAB}
               DataCadastros.SqlUpdate.Close;
               DataCadastros.SqlUpdate.Sql.Text := 'DELETE FROM DUPLICAT_CNAB WHERE DCN_COD_REMESSA = '''+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString+'''';
               DataCadastros.SqlUpdate.ExecSql;
               DataCadastros.SqlUpdate.Close;
              {}
//               DataCadastros1.CdSArquivoCNAB.Edit;
               DBInicio.ExecSql('update ARQUIVO_CNAB SET CNAB_LITERAL_ARQUIVO ='+  QuotedStr( IIF(tipo = 'Remessa',  'ESTORNO REMESSA' ,'ESTORNO RETORNO'))+
                             ' WHERE CNAB_REGISTRO = ' + IntToStr(DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsInteger) );
//               if tipo = 'Remessa' then
//                 DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString := 'ESTORNO REMESSA'
//               else
//                 DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString := 'ESTORNO RETORNO' ;
//               DataCadastros1.CdSArquivoCNAB.ApplyUpdates(0);
                 SelecionaRetornoBanco(CCodigoBco.Text);
             end;
//         end
//      else
//         begin
//            //beep;
//            uteis.aviso(Pchar('Duplicata '+SQLDupliCNAB.FieldByname('DCN_DUPLICATA').AsString+' já Liquidada ref. '+
//            VarToStr(iif(tipo= 'Remessa','a remessa','ao retorno'))   + ' Solicitada para Estorno !'+#13#10+
//                        'Arquivo Solicitado não pode ser Estornado ...'));
//         end;
    finally
       SQLDupliCNAB.EnableControls;
       SQLDupliCNAB.Refresh;
       PanProcessando.Visible  := False;
       LblProcesso.Caption     := 'Processando...';
       Screen.Cursor           := CrDefault;
    end;
  except on E:Exception do
      begin
         //beep;
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
      end;
  end;
end;

procedure TFrmRetornoCNAB.EstornoTitulosRetornoCopel;
begin
try
    Try
      Screen.Cursor := CrHourglass;
      SQLDupliCNAB.DisableControls;
      SQLDupliCNAB.First;

       try
         LblMensagem1.Caption    := '';
         LblMensagem2.Caption    := '';
         PanProcessando.Visible  := True;
         Application.ProcessMessages;
         LblProcesso.Caption     := 'Processando o Estorno das Duplicatas....';
         ProgressBar.Position    := 0;
         ProgressBar.Max         := SQLDupliCNAB.RecordCount;

         while not SQLDupliCNAB.Eof do
            begin
              SQLConsultaCRC.Close ;
              SQLConsultaCRC.CommandText := 'SELECT * FROM FAT_PC01 WHERE FAT_CODIGO = '+QuotedStr(SQLDupliCNAB.FieldByname('FAT_CODIGO').AsString) +
                                            ' AND FPC_NUMER = ' +QuotedStr(SQLDupliCNAB.FieldByname('FPC_NUMER').AsString) +
                                            ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ;
              SQLConsultaCRC.Open;
              {estorna duplicata}
               with dbInicio do
               begin
                 ExecSql( 'delete from FAT_RECEBIMENTO '+
                          'where emp_codigo = '+qStr(dbInicio.Empresa.EMP_CODIGO)+
                          '  and fat_registro='+ IntToStr(SQLConsultaCRC.FieldByName('FAT_REGISTRO').AsInteger ));

                  ExecSql( 'UPDATE FAT_PC01 SET FPC_PAGTO = NULL '+', '+
                           '                    FPC_DESCTO = 0'+','+
                           '                    FPC_PREVISAO = ''S'','+
                           '                    FPC_JUROS = 0'+','+
                           '                    FPC_MULTA = 0'+','+
                           '                    FPC_VLPAGO = 0'+', '+
                           '                    FPC_SITPAG = '+qStr('P')+' , FPC_STATUS = '+qStr('Pendente')+', ' +
                           '                    FPC_TARIFA = 0'+
                           'WHERE FAT_REGISTRO = '+  IntToStr(SQLConsultaCRC.FieldByName('FAT_REGISTRO').AsInteger ) );


               end;

              //
               ProgressBar.Position := ProgressBar.Position + 1;
               SQLDupliCNAB.Next;
            end;
       finally
        {delete arquivo de duplicata CNAB}
         DataCadastros.SqlUpdate.Close;
         DataCadastros.SqlUpdate.Sql.Text := 'DELETE FROM DUPLICAT_CNAB WHERE DCN_COD_REMESSA = '''+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString+'''';
         DataCadastros.SqlUpdate.ExecSql;
         DataCadastros.SqlUpdate.Close;
         DBInicio.ExecSql('update ARQUIVO_CNAB SET CNAB_LITERAL_ARQUIVO ='+  QuotedStr('ESTORNO RETORNO')+
                       ' WHERE CNAB_REGISTRO = ' + IntToStr(DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsInteger) );

           SelecionaRetornoBanco(CCodigoBco.Text);
       end;

    finally
       SQLDupliCNAB.EnableControls;
       SQLDupliCNAB.Refresh;
       PanProcessando.Visible  := False;
       LblProcesso.Caption     := 'Processando...';
       Screen.Cursor           := CrDefault;
    end;
  except on E:Exception do
      begin
         //beep;
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
      end;
  end;
end;

procedure TFrmRetornoCNAB.AtualizaArquivoRetorno;
 Var
 wORIGEM,wDESTINO:String;

begin
  {verifica diretorio  para arquivo importado e cria}
   wORIGEM  := '';
   wDESTINO := '';
   //
   //wORIGEM  := ExtractFileDir(FileArqImportar.FileName);
   wORIGEM  := FileArqImportar.FileName;
   wDESTINO := ExtractFileDir(FileArqImportar.FileName)+'\IMPORTADO\'+FormatFloat('000',CCodigoBco1.AsInteger);
   if not DirectoryExists(wDESTINO) then
      ForceDirectories(wDESTINO);
  {copia o arquivo = ORIGEM,DESTINO,ARQUIVO }
  CopiarArquivo(wORIGEM,wDESTINO);
 {apagar arquivo}
  DeletaArquivo(wORIGEM);
end;

procedure TFrmRetornoCNAB.ImportarCNAB_SANTADER;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
      IniciarVar;
      Application.ProcessMessages;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '1' then
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {le o retorno}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := Trim(copy(wHEADER,28,03));
      CdigitoAge.Text       := Trim(copy(wHEADER,30,01));
      PanContaCorr.Caption  := Trim(copy(wHEADER,34,09));
      CdigitoC.Text         := Trim(copy(wHEADER,43,02));
      PanCodEmpresa.Caption := '';
     {nome do arquivo}
      wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      SQLConsultaArquivo.CommandText := 'SELECT * FROM ARQUIVO_CNAB WHERE CNAB_COD_EMPESA = ''1'' AND CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND CNAB_CONTA = '''+PanContaCorr.Caption+''' AND CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      SQLConsultaArquivo.Open;
      if not SQLConsultaArquivo.IsEmpty then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
         begin
            //beep;
            uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,077,003) <> FormatFloat('000',CCodigoBco1.AsInteger)) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um Retorno de Cobrança ref. o Banco '+FormatFloat('000',CCodigoBco1.AsInteger)+' '+CbBancos1.Text+' !'));
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end;
     {atualiza arquivo CNAB  - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)), {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)), {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)), {Código Serviço}
                                 Trim(copy(wHEADER,12,15)), {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
      //
      Gauge.Progress        := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text     := Trim(copy(wHEADER,108,001));
                  PDisplayDup.Caption   := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption:= Trim(copy(wHEADER,074,082));{nosso numero}
                  PDisplayEmiss.Caption := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption  := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value   := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption := CbBancos1.Text;
                  CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wDUPLICATA            := PreenchezeroEsquerda(Trim(copy(wHEADER,117,006)),6);{seu numero} //117 - 010
                  wNParcela             := '';
                  wNParcela             := Trim(copy(wHEADER,124,002));
                  if wNParcela<>'' then
                     wNParcela          := PreencheZeroEsquerda(wNParcela,2);
                  wIDENTIFICA_TITULO     := ''; //Trim(copy(wHEADER,038,025));//Trim(copy(wHEADER,038,062));{Identificação do Titulo Empresa}
                  wNOSSO_NUMERRO         := Trim(copy(wHEADER,074,082));{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,302,002));{codigo rejeição}
                  wCOD_INDICACAO         := Trim(copy(wHEADER,036,002));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := '0.00';
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '02' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [06,07,15,16] then {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;

      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
          {copia arquivo para pasta de importados}
           AtualizaArquivoRetorno;
          //
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;

     Screen.Cursor    := CrDefault;
   end;
end;

procedure TFrmRetornoCNAB.ImportarSicredi;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
 try
     try
      Screen.Cursor    := CrHourglass;
      IniciarVar;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
    {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '1'then
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {ler o primeira linha}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := '';
      CdigitoAge.Text       := '';//Trim(copy(wHEADER,30,1));
      PanContaCorr.Caption  := '';
      CdigitoC.Text         := '';//Trim(copy(wHEADER,43,2));
      PanCodEmpresa.Caption := Trim(copy(wHEADER,27,19));

     {Verifica a empresa do Arquivo de Retorno para saber qual o
     codigo de cadastro da empresa}
     wEmpresa    := Trim(Copy(wHEADER,32,14));
     {Busca o Codigo da empresa no Cadastro da Empresa}
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.Sql.Text := 'SELECT E1.EMP_CODIGO FROM EMP0000 E1 WHERE EMP_CGC =' + wEmpresa;
     DataCadastros.SqlUpdate.Open;
     if DataCadastros.SqlUpdate.IsEmpty = False then
        wCodigoEmpresa := DataCadastros.SqlUpdate.FieldByName('EMP_CODIGO').AsString;
     DataCadastros.SqlUpdate.Close;
     if (wCodigoEmpresa<>dbInicio.Empresa.EMP_CODIGO) then
        if uteis.confirmacao ( ('O arquivo que está importando é da Empresa : '+wEmpresa+#13+#10+'E a empresa logada é : '+dbInicio.Empresa.RAZAO))= MrNo then
           exit;

     {nome do arquivo}
      wARQUIVO  :=  ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      wSeleciona := 'WHERE A1.CNAB_COD_EMPESA = ''1'' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND A1.CNAB_AGENCIA = '''+PanAgencia.Caption+''' AND A1.CNAB_CONTA = '''+PanContaCorr.Caption+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      wSeleciona := wSeleciona + ' AND A1.EMP_CODIGO = '''+wCodigoEmpresa+'''';
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString CNAB_LITERAL_ARQUIVO = '''+Trim(copy(wHEADER,03,07))+''' and
      SQLConsultaArquivo.CommandText := 'SELECT A1.* FROM ARQUIVO_CNAB A1 '+wSeleciona;
      SQLConsultaArquivo.Open;
      if (not SQLConsultaArquivo.IsEmpty) then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            wLogError   := True;
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
          begin
             //beep;
             uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
             wLogError   := True;
             FileArqImportar.Enabled := True;
             FileArqImportar.SetFocus;
             FileArqImportar.SelectAll;
             exit;
          end
      else
      if (copy(wHEADER,77,3) <> CCodigoBco1.Text) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+CCodigoBco1.Text+' '+CbBancos1.Text+' !'));
            wLogError   := True;
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            exit;
         end;
     {atualiza arquivo CNAB - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,15)),  {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
     //
     Gauge.Progress         := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text      := Trim(copy(wHEADER,107,002));
                  PDisplayDup.Caption    := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption := Trim(copy(wHEADER,063,011));{nosso numero}
                  PDisplayEmiss.Caption  := '  /  /    ';//Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption   := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value    := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption  := CbBancos1.Text;
                  CValorTotal.Value      := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger    := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wNOSSO_NUMERRO         := PreenchezeroEsquerda(Trim(copy(wHEADER,063,011)),11);{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  wDUPLICATA             := PreenchezeroEsquerda(Trim(copy(wHEADER,117,006)),6);{seu numero} //117 - 010
                  wNParcela              := '';
                  wNParcela              := Trim(copy(wHEADER,124,002));
                  if wNParcela<>'' then
                     wNParcela           := PreencheZeroEsquerda(wNParcela,2);
                  wIDENTIFICA_TITULO     := '';//Trim(copy(wHEADER,038,016));{Identificação do Titulo Empresa}
                  //naowDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,080,003));{codigo rejeição}
                  wCOD_INDICACAO         := '';//CEF não tem  //Trim(copy(wHEADER,304,001));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,280,013))) / 100)); {Valor da Multa}
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '01' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [21,22,24] then //25 - baixa protesto {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;
      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
            {fecha o arquivo}
             closeFile(wREGISTRO);
            {copia arquivo para pasta de importados}
             AtualizaArquivoRetorno;
             uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
            closeFile(wREGISTRO);
            uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;
     Screen.Cursor    := CrDefault;
   end;



 end;

procedure TFrmRetornoCNAB.ImportarCNAB_ITAU;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
      IniciarVar;
      Application.ProcessMessages;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
      begin
           Readln(wREGISTRO,wHEADER);
           if copy(wHEADER,001,001) = '1'then
              Inc(wQTD_DUPLICATA);
      end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {le o retorno}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := Trim(copy(wHEADER,27,04));
      CdigitoAge.Text       := Trim(copy(wHEADER,31,02));
      PanContaCorr.Caption  := Trim(copy(wHEADER,33,05));
      CdigitoC.Text         := Trim(copy(wHEADER,38,01));
      PanCodEmpresa.Caption := '';
     {Verifica a empresa do Arquivo de Retorno para saber qual o
     codigo de cadastro da empresa}
     wEmpresa              := Trim(Copy(wHEADER,47,20));
     wPos :=  Pos(' ',wEmpresa);
     wEmpresa              := Trim(Copy(wHEADER,47,wPos));
     {Busca o Codigo da empresa no Cadastro da Empresa}
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.Sql.Text := 'SELECT E1.EMP_CODIGO FROM EMP0000 E1 WHERE (E1.EMP_RAZAO LIKE '''+wEmpresa+'%'') OR (E1.EMP_FANTASIA LIKE '''+wEmpresa+'%'')';
     DataCadastros.SqlUpdate.Open;
     if DataCadastros.SqlUpdate.IsEmpty = False then
        wCodigoEmpresa := DataCadastros.SqlUpdate.FieldByName('EMP_CODIGO').AsString;
     DataCadastros.SqlUpdate.Close;
     if (wCodigoEmpresa<>dbInicio.Empresa.EMP_CODIGO) then
        if uteis.confirmacao ( ('O arquivo que está importando é da Empresa : '+wEmpresa+#13+#10+'E a empresa logada é : '+dbInicio.Empresa.RAZAO))= MrNo then
           exit;
     {nome do arquivo}
      wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      SQLConsultaArquivo.CommandText := 'SELECT * FROM ARQUIVO_CNAB WHERE CNAB_COD_EMPESA = ''1'' AND CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND CNAB_AGENCIA = '''+PanAgencia.Caption+''' and CNAB_CONTA = '''+PanContaCorr.Caption+''' and CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      SQLConsultaArquivo.Open;
      if not SQLConsultaArquivo.IsEmpty then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
         begin
            //beep;
            uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,77,3) <> CCodigoBco1.Text) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+CCodigoBco1.Text+' '+CbBancos1.Text+' !'));
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end;
     {atualiza arquivo CNAB  - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,15)),  {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
      //
      Gauge.Progress        := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text     := Trim(copy(wHEADER,108,001));
                  PDisplayDup.Caption   := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption:= Trim(copy(wHEADER,063,008));{nosso numero}
                  PDisplayEmiss.Caption := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption  := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value   := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption := CbBancos1.Text;
                  CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wDUPLICATA             := PreenchezeroEsquerda(Trim(copy(wHEADER,117,006)),06);
                  wNParcela              := '';
                  wNParcela              := Trim(copy(wHEADER,123,002));
                  if wNParcela<>'' then
                     wNParcela           := PreencheZeroEsquerda(wNParcela,2);
                 {tratamento para o sisteam antigo ecopecas}
                  //if Length(wDUPLICATA) > 07 then
                  //   Delete(wDUPLICATA,1,(Length(wDUPLICATA)-07));
                  //
                  wIDENTIFICA_TITULO     := Trim(copy(wHEADER,038,025));{Identificação do Titulo Empresa}
                  wNOSSO_NUMERRO         := Trim(copy(wHEADER,063,008));{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  //wDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,378,008));{codigo rejeição}
                  wCOD_INDICACAO         := '0';//Trim(copy(wHEADER,304,001));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := '0.00';
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '02' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [06,07,08,10] then //32 - protestado {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;

      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
          {copia arquivo para pasta de importados}
           AtualizaArquivoRetorno;
          //
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;

     Screen.Cursor    := CrDefault;
   end;

end;

procedure TFrmRetornoCNAB.FileArqImportarAfterDialog(Sender: TObject;
  var Name: String; var Action: Boolean);
begin
   BitImprimir.Enabled       := False;
   BitTipoImpressao1.Enabled := False;
   BitProcessar.Enabled      := True;
end;

procedure TFrmRetornoCNAB.ImportarBRADESCO;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
      IniciarVar;
      Application.ProcessMessages;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '1'then
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {le o retorno}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := '';//Trim(copy(wHEADER,28,03));
      CdigitoAge.Text       := '';//Trim(copy(wHEADER,30,01));
      PanContaCorr.Caption  := '';//Trim(copy(wHEADER,34,09));
      CdigitoC.Text         := '';//Trim(copy(wHEADER,43,02));
      PanCodEmpresa.Caption := '';
     {nome do arquivo}
      wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      SQLConsultaArquivo.CommandText := 'select * from ARQUIVO_CNAB where CNAB_COD_EMPESA = ''1'' and CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' and CNAB_AGENCIA = '''+PanAgencia.Caption+''' and CNAB_CONTA = '''+PanContaCorr.Caption+''' and CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      SQLConsultaArquivo.Open;
      if not SQLConsultaArquivo.IsEmpty then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
         begin
            //beep;
            uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,077,003) <> FormatFloat('000',CCodigoBco1.AsInteger)) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+FormatFloat('000',CCodigoBco1.AsInteger)+' '+CbBancos1.Text+' !'));
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end;
     {atualiza arquivo CNAB  - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,15)), {Literal Serviço}
                                 Trim(copy(wHEADER,380,002))+'/'+Trim(copy(wHEADER,382,002))+'/20'+Trim(copy(wHEADER,384,002)));{data ARquivo}
      //
      Gauge.Progress        := Gauge.Progress + 1;
     {Lê os registros DETALHE}
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '1') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text     := Trim(copy(wHEADER,108,001));
                  PDisplayDup.Caption   := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption:= Trim(copy(wHEADER,071,012));{nosso numero}
                  PDisplayEmiss.Caption := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption  := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value   := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption := CbBancos1.Text;
                  CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wDUPLICATA            := PreenchezeroEsquerda(Trim(copy(wHEADER,117,010)),10);{seu numero} //117 - 010
                 {tratamento para o sisteam antigo ecopecas}
                  //if Length(wDUPLICATA) > 07 then
                  // Delete(wDUPLICATA,1,(Length(wDUPLICATA)-07));
                  //
                  wIDENTIFICA_TITULO     := Trim(copy(wHEADER,127,010));{Identificação do Titulo Empresa}
                  wNOSSO_NUMERRO         := Trim(copy(wHEADER,071,012));{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  //nao wDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,113,002))+'/'+Trim(copy(wHEADER,111,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  wCOD_REJEICAO          := Trim(copy(wHEADER,319,002));//Trim(copy(wHEADER,319,010));{codigo rejeição}
                  wCOD_INDICACAO         := '0';//Trim(copy(wHEADER,304,001));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,176,013))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := '0.00';
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if wOCORRENCIA = '02' then
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [06,15,16,17] then {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;
      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
          {copia arquivo para pasta de importados}
           AtualizaArquivoRetorno;
          //
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;

     Screen.Cursor    := CrDefault;
   end;

end;

procedure TFrmRetornoCNAB.ImportarBRASIL;
 Var
  wREGISTRO       : TextFile;
  wHEADER         : AnsiString;
  wTOTAL_REGISTROS: Integer;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
      IniciarVar;
      wCodigoEmpresa := dbInicio.Empresa.EMP_CODIGO ;

      Application.ProcessMessages;
      LblSataus.Caption      := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
     {arquivo de retorno}
      AssignFile(wREGISTRO,FileArqImportar.FileName);
     {conta os titulos}
      Reset(wREGISTRO);
      wQTD_DUPLICATA := 0;
      while not eof(wREGISTRO)do
        begin
           Readln(wREGISTRO,wHEADER);
            if copy(wHEADER,001,001) = '7' then // '7' = id registro detalhe Banco Brasil
               Inc(wQTD_DUPLICATA);
        end;
      //
      Gauge.MaxValue     := wQTD_DUPLICATA + 1;
     {le o retorno}
      Reset(wREGISTRO);
      Readln(wREGISTRO,wHEADER);
     {atribui agencia/conta}
      Application.ProcessMessages;
      LblSataus.Caption     := 'Importando arquivo CNAB 400 - retorno ref. o banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text;
      PanAgencia.Caption    := Trim(copy(wHEADER,27,04));
      CdigitoAge.Text       := Trim(copy(wHEADER,31,02));
      PanContaCorr.Caption  := Trim(copy(wHEADER,33,05));
      CdigitoC.Text         := Trim(copy(wHEADER,38,01));
      PanCodEmpresa.Caption := '';
     {nome do arquivo}
      wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
     {verifica se arquivo já foi atualizado}
      SQLConsultaArquivo.Close;                                                              //DataCadastros.CdSEmpresa.FieldByname('EMP_CODIGO').AsString
      SQLConsultaArquivo.CommandText := 'select * from ARQUIVO_CNAB where CNAB_COD_EMPESA = ''1'' and CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' and CNAB_AGENCIA = '''+PanAgencia.Caption+''' and CNAB_CONTA = '''+PanContaCorr.Caption+''' and CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
      SQLConsultaArquivo.Open;
      if not SQLConsultaArquivo.IsEmpty then
         begin
            //beep;
            uteis.aviso('Arquivo de retorno informado já foi importado para o sistema !');
            wLogError   := True;
            SQLConsultaArquivo.Close;
            exit;
         end;
     {valida o tamanho do registro}
      if length(wHEADER) <> 400 then
         begin
            //beep;
            uteis.aviso('Arquivo informado com o tamanho de registro diferente de 400 bytes. ');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,1,26) <> '02RETORNO01COBRANCA       ') then
         begin
            //beep;
            uteis.aviso('Arquivo informado não é um arquivo de retorno de cobrança com layout CNAB400.');
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end
      else
      if (copy(wHEADER,077,003) <> FormatFloat('000',CCodigoBco1.AsInteger)) then
         begin
            //beep;
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+FormatFloat('000',CCodigoBco1.AsInteger)+' '+CbBancos1.Text+' !'));
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            FileArqImportar.SelectAll;
            wLogError   := True;
            exit;
         end;
     {atualiza arquivo CNAB  - HEADER}
      AtualizaArquivoCNABRemessa(Trim(copy(wHEADER,02,01)),  {Código Arquivo}
                                 Trim(copy(wHEADER,03,07)),  {Literal_arquivo}
                                 Trim(copy(wHEADER,10,02)),  {Código Serviço}
                                 Trim(copy(wHEADER,12,08)),  {Literal Serviço}
                                 Trim(copy(wHEADER,095,002))+'/'+Trim(copy(wHEADER,097,002))+'/20'+Trim(copy(wHEADER,99,002)));{data ARquivo}
      //
      Gauge.Progress        := Gauge.Progress + 1;
     {Lê os registros DETALHE}
     Reset(wREGISTRO);
      while(not eof(wREGISTRO)) do
         begin
           {lê o registro atual}
            Readln(wREGISTRO,wHEADER);
           if (Trim(copy(wHEADER,001,001)) = '7') then
              begin
                 {display tela}
                  Application.ProcessMessages;
                  CCodCarteira.Text     := Trim(copy(wHEADER,107,002));
                  PDisplayDup.Caption   := Trim(copy(wHEADER,117,010));
                  PanNossoNumero.Caption:= Trim(copy(wHEADER,064,017));{nosso numero}
                  PDisplayEmiss.Caption := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));
                  PDisplayVenc.Caption  := Trim(copy(wHEADER,147,002))+'/'+Trim(copy(wHEADER,149,002))+'/20'+Trim(copy(wHEADER,151,002));
                  CdisplayValor.Value   := (StrToFloat(Trim(copy(wHEADER,153,013))) / 100);
                  PDisplayBanco.Caption := CbBancos1.Text;
                  CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);
                  CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
                 {informações dos titulos}
                  wDUPLICATA             := Trim(copy(wHEADER,117,010)); {seu numero} //117 - 010 999999/99b
                  wNParcela              := '';
                  if pos('/',wDuplicata)>0 then
                  begin
                       wNParcela :=GetTextAfter(wDuplicata,'/');
                       wDuplicata:=GetTextBefore(wDuplicata,'/');
                  end;

                 {tratamento para o sisteam antigo ecopecas}
                  //if Length(wDUPLICATA) > 07 then
                  //   Delete(wDUPLICATA,1,(Length(wDUPLICATA)-07));
                  //
                  wIDENTIFICA_TITULO     := Trim(copy(wHEADER,039,025));{Identificação do Titulo Empresa}
                  wNOSSO_NUMERRO         := Trim(copy(wHEADER,064,017));{nosso numero}
                  wOCORRENCIA            := Trim(copy(wHEADER,109,002));{codigo ocorrencia}
                  //wDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));{Data ocorrencia}
                  wDATA_OCORRENCIA       := Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002));

                  try
                     dDataRecebimento       := StrToDate(Trim(copy(wHEADER,111,002))+'/'+Trim(copy(wHEADER,113,002))+'/20'+Trim(copy(wHEADER,115,002)));
                  except

                  end;

                  if wOCORRENCIA = '03' then
                     wCOD_REJEICAO       := Trim(copy(wHEADER,081,002));{codigo rejeição}
                  wCOD_INDICACAO         := Trim(copy(wHEADER,109,002));{codigo indicativo de crédito}
                  wVALOR_TARIFA          := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,182,007))) / 100)); {tarifas ou custas despesas cartorios}
                  wVALOR_ABATIMENTO      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,228,013))) / 100)); {valor abatimento}
                  wVALOR_DESCONTO        := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,241,013))) / 100)); {valor desconto}
                  wVALOR_PAGO            := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,254,013))) / 100)); {valor pago}
                  wVALOR_JUROS_MORA      := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,267,013))) / 100)); {juros de mora}
                  wVALOR_MULTA           := FormatFloat('######0.00',(StrToFloat(Trim(copy(wHEADER,280,013))) / 100)); {MULTA}
                 {atualiza arquivo de duplicata CNAB}
                  wSTATUS_BAIXA          := IIF(ChkBaixaTitulos.checked , 'S','N');
                 //
                  AtualizaArquivoCNABRemessaDuplicata;
                 {atualiza entrada confirmada}
                  if (wOCORRENCIA = '02') then  // entrada
                     AtualizaNossoNumeroBancoDuplicata;
                 {atualiza contas a receber}
                  if ChkBaixaTitulos.Checked then
                     if StrToInt(wOCORRENCIA) in [05,06,07,08,15] then {duplicatas liquidadas conf. ocorrencia}
                        AtualizaContaReceberAutomatico;
                 //
                  Gauge.Progress         := Gauge.Progress + 1;
              end;
         end;

      Screen.Cursor    := CrDefault;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     //beep;
     if wLogError = False then
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
          {copia arquivo para pasta de importados}
           //AtualizaArquivoRetorno;
          //
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' foi Importado com Sucesso!'));
        end
     else
        begin
          {fecha o arquivo}
           closeFile(wREGISTRO);
           uteis.aviso(Pchar('Arquivo de retorno '+wARQUIVO+' ref. o banco '+FormatFloat('0000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' não foi importado !'));
        end;

     Screen.Cursor    := CrDefault;
   end;

end;

procedure TFrmRetornoCNAB.BitEstornoRemessaClick(Sender: TObject);
var tipo :string;
begin
  BitEstornoRemessa.Enabled := false;
  if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'REMESSA' then
    tipo := 'Remessa'
  else if DataCadastros1.DSArquivoCNAB.DataSet.FieldByname('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO' then
    tipo := 'Retorno' ;

   if uteis.confirmacao ( ('Deseja Estornar '+tipo+' do Arquivo: '+ DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString+#13#10
                       +'Data/hora da '+tipo+': '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString+' - ' +DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA').AsString+' ?' )) = mryes then
      begin
         GbConsulta.Enabled     := False;
         TrataArquivoTextoEstorno (tipo);
         if (DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO_BANCO').AsInteger =900) and ( tipo = 'Retorno')  then
          EstornoTitulosRetornoCopel
         else
           EstornoTitulos(tipo);
         GbConsulta.Enabled     := True;
         DBGridRetorno.SetFocus;
      end
   else
      begin
         DBGridRetorno.SetFocus;
      end;
end;

procedure TFrmRetornoCNAB.BitEstornoRetoroClick(Sender: TObject);
begin
    if uteis.confirmacao ( ('Deseja Estornar Retorno do Arquivo: '+ DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString+#13#10
                        +'Data/hora da Retorno: '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString+' - ' +DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA').AsString+' ?' )) = mryes then
       begin
          GbConsulta.Enabled     := False;
          EstornoRetornoTitulos;
          GbConsulta.Enabled     := True;
          DBGridRetorno.SetFocus;
       end
    else
       begin
          DBGridRetorno.SetFocus;
       end;
end;

procedure TFrmRetornoCNAB.EstornoRetornoTitulos;
begin
   try
      Try
        Screen.Cursor           := CrHourglass;
        SQLDupliCNAB.DisableControls;
        SQLDupliCNAB.First;
        try
          PanProcessando.Visible  := True;
          Application.ProcessMessages;
          LblProcesso.Caption     := 'Processando o Estorno das Duplicatas....';
          ProgressBar.Position    := 0;
          ProgressBar.Max         := SQLDupliCNAB.RecordCount;
          while not SQLDupliCNAB.Eof do
             begin
               BuscaRecebimentos;
               if (not CdSRecebimentos.IsEmpty) then
                  begin
                     CdSRecebimentos.First;
                     while (not CdSRecebimentos.Eof) do
                        begin
                           ContasReceberEstornaBaixa(CdSRecebimentosFRE_REGISTRO.AsString);
                           CdSRecebimentos.Next;
                        end;
                  end;
                ProgressBar.Position := ProgressBar.Position + 1;
               //
                SQLDupliCNAB.Next;
             end;
        finally
         {delete arquivo de duplicata CNAB}
          DataCadastros.SqlUpdate.Close;
          DataCadastros.SqlUpdate.Sql.Text := 'DELETE FROM DUPLICAT_CNAB WHERE DCN_COD_REMESSA = '''+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString+'''';
          DataCadastros.SqlUpdate.ExecSql;
          DataCadastros.SqlUpdate.Close;
         {}
          DataCadastros1.CdSArquivoCNAB.Edit;
          DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString := 'ESTORNO RETORNO';
          DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString    := 'E-'+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString;
          DataCadastros1.CdSArquivoCNAB.ApplyUpdates(0);
        end;
      finally
        SQLDupliCNAB.EnableControls;
        SQLDupliCNAB.Refresh;
        PanProcessando.Visible  := False;
        LblProcesso.Caption     := 'Processando...';
        Screen.Cursor           := CrDefault;
      end;
   except on E:Exception do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
     end;
   end;

end;

procedure TFrmRetornoCNAB.BitCancelarBClick(Sender: TObject);
begin
   if uteis.confirmacao ( 'Confirma o Cancelamento da Consulta Atual ?') = mryes then
      begin
         DataCadastros1.CdSArquivoCNAB.Close;
         SQLDupliCNAB.Close;
         SQLDupliCNAB.PacketRecords := -1;
         //
         CCodigoBco.Enabled   := True;
         CbBancos.Enabled     := True;
         BitCancelarB.Visible := False;
         BitPesquisar.Visible := True;
         CbBancos.Text        := '';
         CCodigoBco.Clear;
         CCodigoBco.SetFocus;
         CCodigoBco.SelectAll;
      end
   else
      begin
         DBGridRetorno.SetFocus;
      end;
end;

procedure TFrmRetornoCNAB.BitBaixaTitulosClick(Sender: TObject);
begin
   if uteis.confirmacao ( ('Deseja Baixar dos Titulos ref. Retorno do Arquivo: '+ DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString+#13#10
                       +'Data/hora da Retorno: '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString+' - ' +DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA').AsString+' ?' )) = mryes then
      begin
         try
            SQLDupliCNAB.DisableControls;
            SQLDupliCNAB.First;
            GbConsulta.Enabled      := False;
            LblMensagem1.Caption    := '';
            LblMensagem2.Caption    := '';
            PanProcessando.Visible  := True;
           //
             while not SQLDupliCNAB.Eof do
                begin
                   LblMensagem1.Caption    := 'Duplicata : '+SQLDupliCNAB.FieldByName('DCN_DUPLICATA').AsString+'     Vencimento: '+SQLDupliCNAB.FieldByName('FPC_VENCTO').AsString;
                   LblMensagem2.Caption    := 'Cliente   : '+FormatFloat('000000',SQLDupliCNAB.FieldByName('CLI_CODIGO').AsInteger)+'-'+SQLDupliCNAB.FieldByName('CL_RAZAO').AsString;
                   Application.ProcessMessages;
                  //
                   if CCodigoBco.AsInteger = 399 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [06,07,15,31,32,33,37,38,39] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end
                   else
                   if CCodigoBco.AsInteger = 104 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [21,22,24,25] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end
                   else
                   if CCodigoBco.AsInteger = 008 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [06,07,15,16,32] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end
                   else
                   if CCodigoBco.AsInteger = 341 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [06,08,10,32] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end
                   else
                   if CCodigoBco.AsInteger = 237 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [06,09,15,16,17] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end
                   else
                   if CCodigoBco.AsInteger = 001 then
                      begin
                         if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [06,07,08,09,10,15] then {duplicatas liquidadas conf. ocorrencia}
                            AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
                      end;
                   //
                   SQLDupliCNAB.Next;
                end;
         finally
            DataCadastros1.CdSArquivoCNAB.Edit;
            DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_STATUS_BAIXA').AsString := 'S';
            DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA_BAIXA').AsDateTime := Date;
            DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA_BAIXA').AsDateTime := Time;
            DataCadastros1.CdSArquivoCNAB.ApplyUpdates(0);
            DataCadastros1.CdSArquivoCNAB.Refresh;
           //
            SQLDupliCNAB.EnableControls;
            SQLDupliCNAB.First;
            GbConsulta.Enabled      := True;
            PanProcessando.Visible  := False;
            DBGridRetorno.SetFocus;
         end;
      end
   else
      begin
         DBGridRetorno.SetFocus;
      end;
end;

procedure TFrmRetornoCNAB.AtualizaContaReceberAutomaticoNaoBaixadoImportacao;
 Var
   wTIPO_PGTO       :String[12];
   wPESQUISA_TITULO :String;
begin
   try
{'Bloqueada';
'Cancelada';
'Devolução';
'Pendente';
Cartório
Protestada
Liquidada
}
     try
       {inicializa variaveis}
        if CCodigoBco.AsInteger = 001 then {Tratameto ref. BANCO BRASIL}
           begin
              if (SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [15]) then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if (SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [19])  then
                 wTIPO_PGTO := 'Protestada' //PROTESTADO
              else
                 wTIPO_PGTO := 'Liquidada';//BANCO
              wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end
        else
        if CCodigoBco.AsInteger = 008 then {Tratameto ref. Santader}
           begin
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [15] then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [32] then
                 wTIPO_PGTO := 'Protestada' //PROTESTADO
              else
                 wTIPO_PGTO := 'Liquidada';//BANCO
             wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end
        else
        if CCodigoBco.AsInteger = 399 then {tratamento ref. HSBC}
           begin
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [15,32] then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [37] then
                 wTIPO_PGTO := 'Protestada'//PROTESTO
              else
                 wTIPO_PGTO := 'Liquidada';//BANCO
             //
             wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end
        else
        if CCodigoBco.AsInteger = 104 then {tratamento ref. CEF}
           begin
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [22] then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [25] then
                 wTIPO_PGTO := 'Protestada'//PROTESTO
              else
                 wTIPO_PGTO := 'Liquidada';//BANCO
              //
              wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end
        else
        if CCodigoBco.AsInteger = 341 then {tratamento ITAU}
           begin
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [08] then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [32] then
                 wTIPO_PGTO := 'Protestada'//PROTESTO
              else
                 wTIPO_PGTO := 'Liquidade';//BANCO
              //
              wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end
        else
        if CCodigoBco.AsInteger = 237 then {tratamento ITAU}
           begin
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [15] then
                 wTIPO_PGTO := 'Cartório' //CARTORIO
              else
              if SQLDupliCNAB.FieldByName('DCN_COD_OCORRENCIA').AsInteger in [19] then
                 wTIPO_PGTO := 'T'//PROTESTO
              else
                 wTIPO_PGTO := 'B';//BANCO
              //
              wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+copy(wDUPLICATA,1,6)+''' and FPC_NUMER = '''+copy(wDUPLICATA,7,2)+'''';
           end;
       wPESQUISA_TITULO := wPESQUISA_TITULO + ' AND EMP_CODIGO = '''+wCodigoEmpresa+'''';
      {************************************************************************************}
       {atualiza arquivo de duplciatas}
        DataCadastros.SqlUpdate.Close;


        wSQL1 := 'SELECT * FROM FAT_PC01 ';

        DataCadastros.SqlUpdate.Sql.Text := wSQL1+wPESQUISA_TITULO;
        DataCadastros.SqlUpdate.Open;
                                    
        if (not DataCadastros.SqlUpdate.IsEmpty) then
           begin
               //baixa
               ContasReceberBaixa(PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6), //sFaturaRegistro,
                                  PreenchezeroEsquerda(CCodigoBco1.Text,4), //sContaBancoRegistro,
                                  EdFormaPagamento.Text, //sFormaPgtoRegistro,
                                  dbInicio.Usuario.Codigo, //sUsuarioCodido
                                   //:String;
                                  DataCadastros.SqlUpdate.FieldByName('FPC_VLPARC').AsCurrency, //rPendente,
                                  SQLDupliCNAB.FieldByName('DCN_VALOR_PAGO').AsCurrency, //rBaixar,
                                  0.00, //rDesconto,
                                  SQLDupliCNAB.FieldByName('DCN_JUROS_MORA').AsCurrency, //rJuros,
                                  0.00, //rMulta,
                                  SQLDupliCNAB.FieldByName('DCN_VALOR_PAGO').AsCurrency, //rRecebido
                                   //:Currency;
                                  SQLDupliCNAB.FieldByName('DCN_DATA_OCORRENCIA').AsDateTime); //dDataRecebimento:TDateTime):Boolean;
               //atualiza
               DataCadastros.SqlUpdate.Close;
               wSQL1 := 'update FAT_PC01 set '+
                                    ' FPC_STATUS_BAIXA = ''A''';{A=Automatica - M=Manual}
               DataCadastros.SqlUpdate.Sql.Text := wSQL1+wPESQUISA_TITULO;
               DataCadastros.SqlUpdate.ExecSql;
               DataCadastros.SqlUpdate.Close;
           end
        else
           DataCadastros.SqlUpdate.Close;
       {}
        AtualizaLimiteCliente(wPESQUISA_TITULO);
       except on E:Exception do
         begin
            //beep;
            Screen.Cursor    := CrDefault;
            uteis.erro  (Pchar('Impossível atualizar o arquivo: '+#13#10+ E.message));
         end;
       end;
   finally
   end;
end;

procedure TFrmRetornoCNAB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_F12 then
        BitBaixaTitulos.Click;
end;

procedure TFrmRetornoCNAB.CbFiltroClick(Sender: TObject);
begin
   if BitCancelarB.Visible then
      SelecionaRetornoBanco(CCodigoBco.Text);
end;

procedure TFrmRetornoCNAB.BitTipoImpressaoClick(Sender: TObject);
begin
   if PanTipo.Visible then
      begin
         GbConsulta.Enabled := True;
         PanTipo.Visible    := False;
      end
   else
      begin
         PanTipo.Top        := 335;
         PanTipo.Left       := 433;
         GbConsulta.Enabled := True;
         PanTipo.Visible    := True;
      end;
end;

procedure TFrmRetornoCNAB.BitTipoImpressao1Click(Sender: TObject);
begin
   if PanTipo.Visible then
      begin
         GbConsulta.Enabled := True;
         PanTipo.Visible    := False;
      end
   else
      begin
         PanTipo.Top        := 335;
         PanTipo.Left       := 431;
         GbConsulta.Enabled := True;
         PanTipo.Visible    := True;
      end;
end;

procedure TFrmRetornoCNAB.AtualizaLimiteCliente(
  wDUPLICATA:String);
begin
end;

procedure TFrmRetornoCNAB.TrataArquivoTextoEstorno (const tipo : string);
 Var
  sArqOrigem,
  sArqDestino:String;
begin
   if sCaminhoRemessa = '' then
      begin
         sArqOrigem      := dbInicio.SistemaLocal+'\Bancos\'+tipo+'\'+FormatFloat('000',CCodigoBco.AsInteger)+'\'+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString;
         sArqDestino     := dbInicio.SistemaLocal+'\Bancos\'+tipo+'\ESTORNO\'+FormatFloat('000',CCodigoBco.AsInteger)+'\'+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString;
         sCaminhoRemessa := dbInicio.SistemaLocal+'\Bancos\'+tipo+'\'+FormatFloat('000',CCodigoBco.AsInteger);
      end
   else
      begin
         sArqOrigem      := sCaminhoRemessa+'\'+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString;
         sArqDestino     := sCaminhoRemessa+'\ESTORNO\'+FormatFloat('000',CCodigoBco.AsInteger)+'\'+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString;
      end;
   //
   sCaminhoRemessa := sCaminhoRemessa+'\ESTORNO\'+FormatFloat('000',CCodigoBco.AsInteger);
   if not DirectoryExists(sCaminhoRemessa) then
      ForceDirectories(sCaminhoRemessa);
   //
   MoveArquivo(sArqOrigem,sArqDestino,False);
end;

procedure TFrmRetornoCNAB.ImprimirProtocoloRemessaCNAB400(wSAIDA,wCOD_REMESSA: String);
begin
    try
       Screen.Cursor := CrHourglass;
       {seleciona duplicatas}
       wSql1      := 'SELECT D1.DCN_NOSSO_NUMERO,D1.DCN_INSTRUCAO1,D1.DCN_INSTRUCAO2,D1.DCN_PROTESTAR,D1.DCN_DIAS_PROT,F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_DTEMIS,F1.FPC_VENCTO,F1.FPC_VLPARC,'+
                     '  F1.FPC_COBNUM,F1.CLI_CODIGO,C1.CLI_RAZAO FROM DUPLICAT_CNAB D1 ';
       wSql2      := 'LEFT JOIN FAT_PC01 F1 ON (F1.FAT_CODIGO = D1.DCN_DUPLICATA AND F1.FPC_NUMER = D1.DCN_DUP_PARCELA AND F1.EMP_CODIGO = D1.EMP_CODIGO) '+
       ' LEFT JOIN CLI0000  C1 ON (C1.CLI_CODIGO = F1.CLI_CODIGO) ';
       wSeleciona := 'WHERE D1.DCN_COD_REMESSA = '''+wCOD_REMESSA+'''';
       if Share('RECEBER')= 'E' then
         wSeleciona := wSeleciona + ' AND D1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';

       if Assigned(FormGeradorCNAB) then
          begin
             if FormGeradorCNAB.RadNumFatura.Checked then
                wSQL3 := 'F1.FAT_CODIGO,F1.CLI_CODIGO'
             else
             if FormGeradorCNAB.RadCodCliente.Checked then
                wSQL3 := 'F1.CLI_CODIGO,F1.FAT_CODIGO'
             else
             if FormGeradorCNAB.RadRazao.Checked then
                wSQL3 := 'C1.CLI_RAZAO,F1.FAT_CODIGO'
                else if RADdatavencimento.Checked then
               wSQL3 := 'F1.FPC_VENCTO ,F1.FAT_CODIGO';
          end
       else
          begin
             if RadNumFatura.Checked then
                wSQL3 := 'F1.FAT_CODIGO,C1.CLI_CODIGO'
             else
             if RadCodCliente.Checked then
                wSQL3 := 'F1.CLI_CODIGO,F1.FAT_CODIGO'
             else
             if RadRazao.Checked then
                wSQL3 := 'C1.CLI_RAZAO,F1.FAT_CODIGO'
              else if RADdatavencimento.Checked then
               wSQL3 := 'F1.FPC_VENCTO ,F1.FAT_CODIGO';

          end;
       SQLRelatorio.Close;
       SQLRelatorio.CommandText := SQLDEF('RECEBER',wSQL1+wSQL2,wSeleciona,wSQL3,'D1.');
       SQLRelatorio.Open;
       //
       if wSAIDA = 'V' then
          begin
             RDProtCNAB.OpcoesPreview.Preview := true;
             RDProtCNAB.abrir;
             if RDProtCNAB.Setup = false then
                exit;
          end
       else
          begin
             RDProtCNAB.OpcoesPreview.Preview := False;
             RDProtCNAB.abrir;
             if RDProtCNAB.Setup = false then
                exit;
          end;
       {iniciliza variaveis}
        iLINHA        := 010;
        iQtdeRegistro := 0;
        cTOTAL_GERAL  := 0;
        SQLRelatorio.First;
        if not SQLRelatorio.IsEmpty then
           begin
              while not SQLRelatorio.Eof do
                 begin
                    if iLINHA >= 61 Then
                       begin
                          RDProtCNAB.Novapagina;
                          iLINHA       := 010;
                       end;
                    RDProtCNAB.ImpF  (iLINHA,002,SQLRelatorio.FieldByname('FAT_CODIGO').AsString+'-'+SQLRelatorio.FieldByname('FPC_NUMER').AsString,[]);
                    RDProtCNAB.ImpF  (iLINHA,013,SQLRelatorio.FieldByname('FPC_DTEMIS').AsString,[]);
                    RDProtCNAB.ImpF  (iLINHA,024,SQLRelatorio.FieldByname('FPC_VENCTO').AsString,[]);
                    RDProtCNAB.ImpVal(iLINHA,034,'##,###,##0.00',SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency,[]);
                    RDProtCNAB.ImpF  (iLINHA,049,StrZero(SQLRelatorio.FieldByname('CLI_CODIGO').AsString,6)+'-'+SQLRelatorio.FieldByname('CLI_RAZAO').AsString,[]);
                    RDProtCNAB.Imp   (iLINHA,104,SQLRelatorio.FieldByName('DCN_NOSSO_NUMERO').AsString);
                    if SQLRelatorio.FieldByname('DCN_PROTESTAR').AsString = 'S' then
                       RDProtCNAB.ImpF  (iLINHA,126,'S',[])
                    else
                       RDProtCNAB.ImpF  (iLINHA,126,'N',[]);
                    RDProtCNAB.ImpF  (iLINHA,132,FormatFloat('0000',SQLRelatorio.FieldByname('DCN_DIAS_PROT').AsInteger)+'D',[]);
                    Inc(iLINHA);
                    Inc(iQtdeRegistro);
                    cTOTAL_GERAL     := (cTOTAL_GERAL + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                    SQLRelatorio.Next;
                 end;
           end;
     finally
      Screen.Cursor := CrDefault;
      SQLRelatorio.Close;
      SQLDetalhe.Close;
      RDProtCNAB.Fechar;
    end;
end;

procedure TFrmRetornoCNAB.RDProtCNABNewPage(Sender: TObject;
  Pagina: Integer);
begin
    RDProtCNAB.imp (001,001, '========================================================================================================================================');
    RDProtCNAB.imp (002,002, dbInicio.Empresa.FANTASIA);
    RDProtCNAB.ImpD(002,136, 'EMISSAO : '+DateToStr(Date),[]);
    RDProtCNAB.ImpF(003,030, 'P R O T O C O L O   R E M E S S A   C O B R A N Ç A   A R Q U I V O   C N A B',[]);
    RDProtCNAB.ImpD(003,136, 'PAGINA  :       '+FormatFLoat('0000',pagina),[]);
    RDProtCNAB.imp (004,001, '========================================================================================================================================');
    if Assigned(FormGeradorCNAB) then
       begin
          RDProtCNAB.ImpF(005,002, 'BANCO REMESSA: '+FormatFloat('000',FormGeradorCNAB.CCodigoBco.AsInteger)+' - '+FormGeradorCNAB.CbBancos.Text,[]);
          RDProtCNAB.ImpF(005,060, 'DATA REMESSA : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
          RDProtCNAB.ImpF(005,100, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);
       end
    else
    if Assigned(FrmRetornoCNAB) then
       begin
          RDProtCNAB.ImpF(005,002, 'BANCO REMESSA: '+FormatFloat('000',FrmRetornoCNAB.CCodigoBco.AsInteger)+' - '+FrmRetornoCNAB.CbBancos.Text,[]);
          RDProtCNAB.ImpF(005,060, 'DATA REMESSA : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
          RDProtCNAB.ImpF(005,100, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);
       end;
    RDProtCNAB.ImpF(006,001, 'INSTRUÇÃO 1: ',[negrito]);
    RDProtCNAB.ImpF(006,070, 'INSTRUÇÃO 2: ',[negrito]);
    SQLDetalhe.Close;
    SQLDetalhe.CommandText := 'select IST_COD_BANCO,IST_CODIGO,IST_DESCRICAO from INSTRUCAO_CNAB where IST_COD_BANCO = '''+CCodigoBco.Text+'''';
    SQLDetalhe.Open;
    if SQLDetalhe.Locate('IST_CODIGO',SQLRelatorio.FieldByname('DCN_INSTRUCAO1').AsString,[]) then
       RDProtCNAB.ImpF  (006,014,FormatFloat('000',SQLRelatorio.FieldByname('DCN_INSTRUCAO1').AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,67),[]);
    if SQLDetalhe.Locate('IST_CODIGO',SQLRelatorio.FieldByname('DCN_INSTRUCAO2').AsString,[]) then
       RDProtCNAB.ImpF  (006,83,FormatFloat('000',SQLRelatorio.FieldByname('DCN_INSTRUCAO2').AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,63),[]);
    RDProtCNAB.Imp (007,001, '----------------------------------------------------------------------------------------------------------------------------------------');
    RDProtCNAB.ImpF(008,001, ' FATURA     EMISSÃO    VENCIMENTO     VALOR R$  [                 C L I E N T E                 ]       NOSSO NUMERO   PROTESTAR QT DIAS',[]);
    RDProtCNAB.Imp (009,001, '----------------------------------------------------------------------------------------------------------------------------------------');
end;

procedure TFrmRetornoCNAB.RDProtCNABBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtCNAB.imp   (062,001, '========================================================================================================================================');
   RDProtCNAB.impF  (063,001, ' QTDE DE REGISTROS: ',[]);
   RDProtCNAB.impVal(063,022, '000000',iQtdeRegistro,[]);
   RDProtCNAB.impF  (063,098, 'VALOR TOTAL REMESSA : ',[]);
   RDProtCNAB.impVal(063,121, '###,###,##0.00',cTOTAL_GERAL,[]);
   RDProtCNAB.imp   (064,001, '========================================================================================================================================');
end;

procedure TFrmRetornoCNAB.RDProtRetornoCNABNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtRetornoCNAB.imp (001,001, '========================================================================================================================================');
   RDProtRetornoCNAB.imp (002,002, dbInicio.Empresa.FANTASIA);
   RDProtRetornoCNAB.ImpD(002,136, 'EMISSAO : '+DateToStr(Date),[]);
   RDProtRetornoCNAB.ImpF(003,030, 'P R O T O C O L O   R E T O R N O   C O B R A N Ç A   A R Q U I V O   C N A B',[]);
   RDProtRetornoCNAB.ImpD(003,136, 'PAGINA  :       '+FormatFLoat('0000',pagina),[]);
   RDProtRetornoCNAB.imp (004,001, '========================================================================================================================================');
   if FrmRetornoCNAB.NbookPages.PageIndex = 0  then
      begin
         RDProtRetornoCNAB.ImpF(005,002, 'BANCO RETORNO: '+FormatFloat('000',FrmRetornoCNAB.CCodigoBco.AsInteger)+' - '+FrmRetornoCNAB.CbBancos.Text,[]);
         RDProtRetornoCNAB.ImpF(005,060, 'DATA RETORNO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
         RDProtRetornoCNAB.ImpF(005,098, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);
      end
   else
   if FrmRetornoCNAB.NbookPages.PageIndex = 1  then
      begin
         RDProtRetornoCNAB.ImpF(005,002, 'BANCO RETORNO: '+FormatFloat('000',FrmRetornoCNAB.CCodigoBco1.AsInteger)+' - '+FrmRetornoCNAB.CbBancos1.Text,[]);
         RDProtRetornoCNAB.ImpF(005,060, 'DATA RETORNO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
         RDProtRetornoCNAB.ImpF(005,098, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);
      end;
   RDProtRetornoCNAB.Imp (006,001, '----------------------------------------------------------------------------------------------------------------------------------------');
end;

procedure TFrmRetornoCNAB.RDProtRetornoCNABBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtRetornoCNAB.imp   (064,001, '========================================================================================================================================');
end;

procedure TFrmRetornoCNAB.ImprimirProtocoloRetornoCNAB400(wSAIDA,wCOD_RETORNO,wCOD_BANCO: String);
Var
  wQtde : Integer;
begin
    try
      Screen.Cursor := CrHourglass;
      {seleciona duplicatas}
      wSql1 := 'SELECT F2.FAT_CODIGO,F2.FPC_NUMER,F2.FPC_VENCTO,F2.FPC_PAGTO,F2.FPC_VLPARC,F2.FPC_JUROS,D1.DCN_VALOR_DESCONTO,D1.DCN_TARIFA,F2.FPC_VLPAGO,C1.CLI_CODIGO,C1.CLI_RAZAO,F2.FPC_COBNUM,'+
      ' D1.DCN_DATA_OCORRENCIA,D1.DCN_COD_OCORRENCIA,coalesce(DESCRICAOOCORRENCIA,O1.OCR_DESCRICAO) as OCR_DESCRICAO ,';
      wSql2 := 'D1.DCN_COD_REJEICAO,R1.REJ_DESCRICAO FROM DUPLICAT_CNAB D1 LEFT JOIN FAT_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PARCELA = F2.FPC_NUMER AND D1.EMP_CODIGO = F2.EMP_CODIGO) '+
      ' LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO or C1.CLI_UND_CONSUMIDORA = DCN_NOSSO_NUMERO) ';
      if (DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO') or (DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'ESTORNO RETORNO') then
         wSql3 := 'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APELIDO=O1.OCR_COD_BANCO)AND(D1.DCN_COD_OCORRENCIA=O1.OCR_COD_OCORRENCIA) AND(O1.OCR_TIPO_OCORRENCIA=''R'') LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO=R1.REJ_COD_BANCO) '
      else
         wSql3 := 'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APELIDO=O1.OCR_COD_BANCO)AND(D1.DCN_COD_OCORRENCIA=O1.OCR_COD_OCORRENCIA) AND(O1.OCR_TIPO_OCORRENCIA=''T'') LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO=R1.REJ_COD_BANCO) ';
      wSQL4 := ' AND(D1.DCN_COD_REJEICAO=R1.REJ_COD_REJEICAO) WHERE D1.DCN_COD_REMESSA = '''+wCOD_RETORNO+'''';

      if Share('RECEBER')= 'E' then
        wSQL4 := wSQL4 + ' AND D1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
     //
      if RadNumFatura.Checked then
         wOrdem := ' ORDER BY D1.DCN_COD_OCORRENCIA,D1.DCN_COD_REJEICAO'
      else if RADdatavencimento.Checked then
        wOrdem :='ORDER BY D1.DCN_COD_OCORRENCIA,D1.DCN_COD_REJEICAO, F2.FPC_VENCTO, F2.FAT_CODIGO,F2.FPC_NUMER'
      else
         wOrdem := ' ORDER BY D1.DCN_COD_OCORRENCIA,D1.DCN_COD_REJEICAO, F2.CLI_CODIGO,F2.FAT_CODIGO,F2.FPC_NUMER';
     //
      SQLRelatorio.Close;
      SQLRelatorio.CommandText := wSQL1+wSQL2+wSQL3+wSQL4+wOrdem;
      SQLRelatorio.Open;
      wQtde := SqlRelatorio.RecordCount;
      SQLRelatorio.First;
      if wSAIDA = 'V' then
      begin
            RDProtRetornoCNAB.OpcoesPreview.Preview := true;
            RDProtRetornoCNAB.abrir;
            if RDProtRetornoCNAB.Setup = false then
               exit;
      end
      else
      begin
            RDProtRetornoCNAB.OpcoesPreview.Preview := False;
            RDProtRetornoCNAB.abrir;
            if RDProtRetornoCNAB.Setup = false then
               exit;
      end;
      {iniciliza variaveis}
       wSQL1:='';
       wSQL2:='';
       wSQL3:='';
       wSQL4:='';
       wSeleciona:='';
       wOrdem:='';
       iLINHA            := 010;
       iQtdeRegistro     := 0;
       cTOTAL_GERAL      := 0;
       cTOTAL_JUROS      := 0;
       cTOTAL_DESCONTOS  := 0;
       cTOTAL_TARIFAS    := 0;
       wTOTAL_ENTRADAS   := 0;
       wTOTAL_LIQUIDADAS := 0;
       wTOTAL_CARTORIO   := 0;
       wTOTAL_REJEICAO   := 0;
       wTOTAL_BAIXA      := 0;
       wTOTAL_OUTROS     := 0;
       wTOTAL_PROTESTO   := 0;
       iQTDE_ENTRADAS    := 0;
       iQTDE_LIQ         := 0;
       iQTDE_CARTORIO    := 0;
       iQTDE_REJEICAO    := 0;
       iQTDE_BAIXA       := 0;
       iQTDE_PROT        := 0;
       iQTDE_OUTROS      := 0;
       iLINHA := 007;
       if not SQLRelatorio.IsEmpty then
          begin
              while not SQLRelatorio.Eof do
               begin
                   if iLINHA >= 64 Then
                      begin
                          RDProtRetornoCNAB.Novapagina;
                          iLINHA := 007;
                      end;
                   wOcorrencia := SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString;
                   while (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) and not SQLRelatorio.Eof do
                    begin
                        wRejeicao := SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString;
                        RDProtRetornoCNAB.ImpF(iLINHA,001, 'OCORRENCIA : ',[negrito]);
                        RDProtRetornoCNAB.ImpF(iLINHA,014,StrZero(SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsString,3)+' - '+Copy(SQLRelatorio.FieldByname('OCR_DESCRICAO').AsString,1,46),[negrito]);
                        INC(iLINHA);
                        if SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString <> '000' then
                           begin
                               RDProtRetornoCNAB.ImpF(iLINHA,003, 'REJEIÇÃO : ',[negrito]);
                               RDProtRetornoCNAB.ImpF(iLINHA,014,SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString+' - '+Copy(SQLRelatorio.FieldByname('REJ_DESCRICAO').AsString,1,46),[negrito]);
                           end;
                        INC(iLINHA);
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                        RDProtRetornoCNAB.ImpF(iLINHA,001, 'DUPLICATA NOSSO Nº.   VENCIMENTO DATA PAGTO DIA DT. OCORR. VALOR  R$ JUROS R$ DESC R$ TARIFA VALOR PAGO          C L I E N T E          ',[]);
                        INC(iLINHA);
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                        while (wRejeicao = SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString) and (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) and not SQLRelatorio.Eof do
                         begin
                             RDProtRetornoCNAB.ImpF  (iLINHA,001,SQLRelatorio.FieldByname('FAT_CODIGO').AsString+'-'+SQLRelatorio.FieldByname('FPC_NUMER').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,011,SQLRelatorio.FieldByname('FPC_COBNUM').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,023,SQLRelatorio.FieldByname('FPC_VENCTO').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,034,SQLRelatorio.FieldByname('FPC_PAGTO').AsString,[]);
                             if not SQLRelatorio.FieldByname('FPC_PAGTO').IsNull then
                                RDProtRetornoCNAB.ImpVal(iLINHA,045,'00',(SQLRelatorio.FieldByname('FPC_PAGTO').AsDateTime - SQLRelatorio.FieldByname('FPC_VENCTO').AsDateTime),[])
                             else
                                RDProtRetornoCNAB.ImpVal(iLINHA,045,'000',0,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,049,SQLRelatorio.FieldByname('DCN_DATA_OCORRENCIA').AsString,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,060,'##,##0.00',SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,072,'##0.00',SQLRelatorio.FieldByname('FPC_JUROS').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,080,'##0.00',SQLRelatorio.FieldByname('DCN_VALOR_DESCONTO').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,087,'##0.00',SQLRelatorio.FieldByname('DCN_TARIFA').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,094,'###,##0.00',SQLRelatorio.FieldByname('FPC_VLPAGO').AsCurrency,[]);
                             if (SQLRelatorio.FieldByname('CLI_CODIGO').AsString <>'') then
                                begin
                                    RDProtRetornoCNAB.ImpF  (iLINHA,105,StrZero(SQLRelatorio.FieldByname('CLI_CODIGO').AsString,5),[]);
                                    RDProtRetornoCNAB.ImpF  (iLINHA,110,'-'+Copy(SQLRelatorio.FieldByname('CLI_RAZAO').AsString,1,26),[]);
                                end;
                             Inc(iLINHA);
                             Inc(iQtdeRegistro);
                             {TOTAIS}
                             //cTOTAL_GERAL      := (cTOTAL_GERAL     + SQLRelatorio.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency);
                             cTOTAL_JUROS      := (cTOTAL_JUROS     + SQLRelatorio.FieldByname('FPC_JUROS').AsCurrency);
                             cTOTAL_DESCONTOS  := (cTOTAL_DESCONTOS + SQLRelatorio.FieldByname('DCN_VALOR_DESCONTO').AsCurrency);
                             cTOTAL_TARIFAS    := (cTOTAL_TARIFAS   + SQLRelatorio.FieldByname('DCN_TARIFA').AsCurrency);
                             {RESUMO TITULOS - OCORRENCIAS}
                             if wCOD_BANCO = '399' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,07,15,31,32,33,38,39] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15,32] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,16] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [37] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '104' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 01 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [21] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [22] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [99] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [23,24] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [25] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '008' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '341' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [08] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,15] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '237' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '001' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [05,06,07,08] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end;
                             SQLRelatorio.Next;
                             if (wRejeicao = SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString) and (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) then
                                begin
                                    if iLINHA >= 64 Then
                                       begin
                                          RDProtRetornoCNAB.Novapagina;
                                          iLINHA       := 007;
                                          RDProtRetornoCNAB.ImpF(iLINHA,001, 'OCORRENCIA : ',[negrito]);
                                          RDProtRetornoCNAB.ImpF(iLINHA,014,StrZero(SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsString,3)+' - '+Copy(SQLRelatorio.FieldByname('OCR_DESCRICAO').AsString,1,46),[negrito]);
                                          INC(iLINHA);
                                          if SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString <> '000' then
                                             begin
                                                 RDProtRetornoCNAB.ImpF(iLINHA,003, 'REJEIÇÃO : ',[negrito]);
                                                 RDProtRetornoCNAB.ImpF(iLINHA,014,SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString+' - '+Copy(SQLRelatorio.FieldByname('REJ_DESCRICAO').AsString,1,46),[negrito]);
                                             end;
                                          INC(iLINHA);
                                          RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                                          INC(iLINHA);
                                       end;
                                end;


                         end;
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                    end;
               end;
              {resumo}
              if iLINHA >= 50 Then
                 begin
                    RDProtRetornoCNAB.Novapagina;
                    iLINHA       := 007;
                 end
              else
                 begin
                     iLINHA:=iLINHA+5;
                 end;
                 //{}
              RDProtRetornoCNAB.impF  (iLINHA,001, '[--------------R E S U M O   D O S  T I T U L O S--------------]',[]);
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL ENTRADAS   : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_ENTRADAS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_ENTRADAS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL LIQUIDADAS : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_LIQUIDADAS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_LIQ,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL CARTORIOS  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_CARTORIO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_CARTORIO,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL REJEIÇÕES  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_REJEICAO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_REJEICAO,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL BAIXAS     : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_BAIXA,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_BAIXA,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL PROTESTOS  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_PROTESTO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_PROT,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL OUTROS     : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_OUTROS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_OUTROS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL JUROS      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_JUROS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL TARIFAS    : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_TARIFAS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'SUB - TOTAL      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',(wTOTAL_ENTRADAS+wTOTAL_LIQUIDADAS+wTOTAL_CARTORIO+wTOTAL_REJEICAO+wTOTAL_BAIXA+wTOTAL_PROTESTO+cTOTAL_JUROS+cTOTAL_TARIFAS+wTOTAL_OUTROS),[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL DESCOTOS   : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_DESCONTOS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL GERAL      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',((wTOTAL_ENTRADAS+wTOTAL_LIQUIDADAS+wTOTAL_CARTORIO+wTOTAL_REJEICAO+wTOTAL_BAIXA+wTOTAL_PROTESTO+cTOTAL_JUROS+cTOTAL_TARIFAS+wTOTAL_OUTROS) - cTOTAL_DESCONTOS),[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',(iQTDE_ENTRADAS+iQTDE_LIQ+iQTDE_CARTORIO+iQTDE_REJEICAO+iQTDE_BAIXA+iQTDE_PROT+iQTDE_OUTROS),[]);
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,001, '----------------------------------------------------------------',[]);
          end;
    finally
     Screen.Cursor := CrDefault;
     RDProtRetornoCNAB.Fechar;
   end;
end;

procedure TFrmRetornoCNAB.IniciarVar;
begin
  PanAgencia.Caption    := '';
  CdigitoAge.Clear;
  PanContaCorr.Caption;
  CdigitoC.Clear;
  CCodCarteira.Clear;
  PanCodEmpresa.Caption := '';
  PDisplayDup.Caption   := '';
  PDisplayEmiss.Caption := '  /  /    ';
  PDisplayVenc.Caption  := '  /  /    ';
  CdisplayValor.Clear;
  PanNossoNumero.Caption:= '';
  PDisplayBanco.Caption := '';
  CRegistro.Clear;
  CValorTotal.Clear;
  Gauge.Progress         := 0;
  wLogError              := False;
  {inicializa variaveis}
  wDUPLICATA             := '';
  wIDENTIFICA_TITULO     := '';
  wNOSSO_NUMERRO         := '';
  wOCORRENCIA            := '';
  wDATA_OCORRENCIA       := '';
  wCOD_REJEICAO          := '';
  wCOD_INDICACAO         := '';
  wVALOR_DESCONTO        := '';
  wVALOR_ABATIMENTO      := '';
  wVALOR_TARIFA          := '';
  wVALOR_JUROS_MORA      := '';
  wVALOR_PAGO            := '';
  wVALOR_MULTA           := '';
  wSTATUS_BAIXA          := 'N';
  wCodigoEmpresa := dbInicio.Empresa.EMP_CODIGO ;
end;

procedure TFrmRetornoCNAB.CCodigoBco1Click(Sender: TObject);
begin
    CCodigoBco.SelectAll;
end;

procedure TFrmRetornoCNAB.CCodigoBcoClick(Sender: TObject);
begin
    CCodigoBco.SelectAll;
end;

procedure TFrmRetornoCNAB.MudaCorCampos(Sender: TObject);
begin
  {cor dos campos TCampoBox}
   if Assigned(CampoBox) then
      begin
         CampoBox.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoBox := TComboBox(ActiveControl);
      end
   else
      begin
         CampoBox := nil;
      end;
  {CampoEdit :TMaskEdit}
   if Assigned(CampoMaskEdit) then
      begin
         CampoMaskEdit.color := clWindow;
      end;
   if ActiveControl is TMaskEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoMaskEdit := TMaskEdit(ActiveControl);
      end
   else
      begin
         CampoMaskEdit := nil;
      end;
  {CampoCurrencyEdit :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
   {CampoFileEdit:TFileNameEdit}
   if Assigned(CampoFileEdit) then
      begin
         CampoFileEdit.color := clWindow;
      end;
   if ActiveControl is TFileNameEdit then
      begin
         TFileNameEdit(ActiveControl).color := $0080FFFF;
         CampoFileEdit := TFileNameEdit(ActiveControl);
      end
   else
      begin
         CampoFileEdit := nil;
      end;
end;

procedure TFrmRetornoCNAB.BuscaRecebimentos;
begin
   CdSRecebimentos.Close;
   if (not SQLDupliCNAB.IsEmpty) then
      begin
         wSql1      := 'SELECT  '+
                       '     T1.FRE_REGISTRO,'+
                       '     T1.FRE_DATA_RECEBIMENTO,'+
                       '     T1.FRE_VALOR,'+
                       '     T1.FRE_DESCONTO,'+
                       '     T1.FRE_JUROS,'+
                       '     T1.FRE_MULTA,'+
                       '     T1.FRE_RECEBIDO,'+
                       '     T1.BAN_CODIGO, '+
                       '     T2.BAN_APELIDO as BAN_RAZAO,'+
                       '     T1.FPG_REGISTRO,'+
                       '     T3.FPG_DESCRICAO,'+
                       '     T1.USU_CODIGO,'+
                       '     t4.USU_NOME '+
                       ' FROM '+
                       ' FAT_RECEBIMENTO T1 '+
                       ' JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                       ' JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                       ' JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)';
         wSeleciona := 'WHERE T1.FAT_REGISTRO = '+SQLDupliCNABFAT_REGISTRO.AsString;
         wOrdem     := 'T1.FRE_DATA_RECEBIMENTO';
         CdSRecebimentos.CommandText := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
         CdSRecebimentos.Open;
      end;
end;

procedure TFrmRetornoCNAB.EdFormaPagamentoExit(Sender: TObject);
begin
   if (EdFormaPagamento.Text = '') then
      begin
         EdFormaPagamento.Clear;
         CBFormaPagamento.Text := '';
      end
   else
      begin
         CBFormaPagamento.TextoLocalizar := EdFormaPagamento.Text;
         CBFormaPagamento.Localizar := True;
         if (CBFormaPagamento.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Forma de Pagamento não localizado com o código informado');
               CBFormaPagamento.Text := '';
               EdFormaPagamento.SetFocus;
               EdFormaPagamento.SelectAll;
            end;
      end;
end;

procedure TFrmRetornoCNAB.CBFormaPagamentoExit(Sender: TObject);
begin
   if (CBFormaPagamento.CodigoLista = '') or (CBFormaPagamento.Text = '') then
      begin
         CBFormaPagamento.Text := '';
         EdFormaPagamento.Text := '';
      end
   else
      begin
         EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
      end;
end;

procedure TFrmRetornoCNAB.CBFormaPagamentoChange(Sender: TObject);
begin
   EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
end;

procedure TFrmRetornoCNAB.Sb_FormaPagamentoClick(Sender: TObject);
begin
   try
      FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
      FrmCadastroFormaPagamento.ShowModal;
   finally
      FrmCadastroFormaPagamento.Destroy;
      FrmCadastroFormaPagamento := Nil;
   end;
   CBFormaPagamento.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := True;
end;

procedure TFrmRetornoCNAB.Button2Click(Sender: TObject);
begin
     PanTipo.visible:=False;
end;

end.



