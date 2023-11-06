unit cnab0001;

interface

uses
  IOUtils,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, ExtCtrls, Buttons, RXCtrls,
  FMTBCd, DB, SqlExpr,SqlClientDataSet, Provider, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, DBCtrls,IdTrivialFTPBase, Gauges, ComCtrls,RichEdit, RxRichEd,
  RDprint,RWFUNC, MIDASLIB, ImgList, Data.DBXFirebird, System.ImageList, system.StrUtils,
  SimpleDS, ACBrBase, ACBrBoleto, Vcl.Menus, System.Math,JvExMask, JvToolEdit, ACBrValidador, ACBrBoletoFCFortesFr, ACBrBoletoFCFR, ACBrBoletoConversao;

type
  TFormGeradorCNAB = class(TForm)
    BitVoltar: TBitBtn;
    BitAvancar: TBitBtn;
    BitCancelar: TBitBtn;
    Bevel2: TBevel;
    BitBtnSair: TBitBtn;
    SQLCrCduplicata: TSQLDataSet;
    DSPCrCduplicata: TDataSetProvider;
    CdSCrCduplicata: TClientDataSet;
    DsCrCduplicata: TDataSource;
    PanVisualizar: TPanel;
    PanCaptionV: TPanel;
    Bevel3: TBevel;
    BitFechaVisual: TBitBtn;
    ButFecha: TButton;
    RxLabel1: TRxLabel;
    SQLClientes: TSQLClientDataSet;
    Status: TStatusBar;
    TVisualizar: TRxRichEdit;
    Panel5: TPanel;
    LblMensagem: TLabel;
    CdSCrCduplicataFAT_CODIGO: TStringField;
    CdSCrCduplicataFPC_NUMER: TStringField;
    CdSCrCduplicataBAN_CODIGO: TStringField;
    CdSCrCduplicataBAN_APELIDO: TStringField;
    CdSCrCduplicataFPC_VENCTO: TSQLTimeStampField;
    CdSCrCduplicataFPC_VLPARC: TFMTBCdField;
    CdSCrCduplicataCLI_CODIGO: TStringField;
    CdSCrCduplicataCLI_RAZAO: TStringField;
    CdSCrCduplicataEMP_CODIGO: TStringField;
    CdSCrCduplicataFPC_DTEMIS: TSQLTimeStampField;
    CdSCrCduplicataCLI_ENDFAT: TStringField;
    CdSCrCduplicataCLI_CIDFAT: TStringField;
    CdSCrCduplicataCLI_CEPFAT: TStringField;
    CdSCrCduplicataCLI_UFFAT: TStringField;
    CdSCrCduplicataCLI_PROTESTAR: TStringField;
    CdSCrCduplicataCLI_QTDE_DIAS_PROTESTO: TIntegerField;
    CdSCrCduplicataCLI_PESSOA: TStringField;
    CdSCrCduplicataCLI_CGC: TStringField;
    SQLBancos: TSQLClientDataSet;
    CdSCrCduplicataFPC_NPARCELAS: TSmallintField;
    SQLDetalhe: TSQLClientDataSet;
    SQLRelatorio: TSQLClientDataSet;
    CdSCrCduplicataCLI_ENDERE: TStringField;
    CdSCrCduplicataCLI_BAIRRO: TStringField;
    CdSCrCduplicataCLI_CEP: TStringField;
    CdSCrCduplicataCLI_CIDADE: TStringField;
    CdSCrCduplicataCLI_UF: TStringField;
    SQLBancosBAN_CODIGO: TStringField;
    SQLBancosBAN_COD_APELIDO: TIntegerField;
    SQLBancosBAN_APELIDO: TStringField;
    SQLBancosBAN_SEQ_NOSSONUMERO: TIntegerField;
    SQLContaBancos: TSQLClientDataSet;
    SQLContaBancosBAN_CODIGO: TStringField;
    SQLContaBancosBAN_RAZAO: TStringField;
    SQLContaBancosBAN_APELIDO: TStringField;
    SQLContaBancosBAN_CODAGE: TStringField;
    SQLContaBancosBAN_CODAGEDIG: TStringField;
    SQLContaBancosBAN_ENDERE: TStringField;
    SQLContaBancosBAN_CIDADE: TStringField;
    SQLContaBancosBAN_UF: TStringField;
    SQLContaBancosBAN_FONE: TStringField;
    SQLContaBancosBAN_FAX: TStringField;
    SQLContaBancosBAN_CEP: TStringField;
    SQLContaBancosBAN_CONTATO: TStringField;
    SQLContaBancosBAN_JUROMES: TFMTBCdField;
    SQLContaBancosBAN_OBS: TStringField;
    SQLContaBancosEMP_CODIGO: TStringField;
    SQLContaBancosBAN_DNAS_CONT: TSQLTimeStampField;
    SQLContaBancosBAN_EMAIL: TStringField;
    SQLContaBancosBAN_HOME: TStringField;
    SQLContaBancosBAN_CONTA: TStringField;
    SQLContaBancosBAN_DIGCONTA: TStringField;
    SQLContaBancosBAN_COD_CART: TStringField;
    SQLContaBancosBAN_N_CARTEIRA: TStringField;
    SQLContaBancosBAN_INSTRUCAO1: TStringField;
    SQLContaBancosBAN_INSTRUCAO2: TStringField;
    SQLContaBancosBAN_CODNOBANCO: TStringField;
    SQLContaBancosBAN_TAM_NONUM: TStringField;
    SQLContaBancosBAN_PROTPRAZO: TStringField;
    SQLContaBancosBAN_COD_APELIDO: TIntegerField;
    SQLContaBancosBAN_CAMINHO_REMESSA: TStringField;
    SQLContaBancosBAN_CAMINHO_RETORNO: TStringField;
    SQLContaBancosBAN_SEQUENCIA_REMESSA: TIntegerField;
    SQLContaBancosBAN_ESPECIE_COB: TStringField;
    SQLContaBancosBAN_ACEITE: TStringField;
    SQLContaBancosBAN_SEQ_NOSSONUMERO: TIntegerField;
    SQLContaBancosBAN_COBTIPO: TStringField;
    SQLContaBancosBAN_LIMITECREDITO: TFMTBCdField;
    SQLContaBancosBAN_VCTOLIMITE: TIntegerField;
    SQLContaBancosBAN_DIASCRED_COBRANCA: TIntegerField;
    SQLContaBancosBAN_FLUXOCAIXA: TStringField;
    SQLContaBancosBAN_GERACHEQUE: TStringField;
    SQLContaBancosBAN_LIMITE_DESCTODUPL: TFMTBCdField;
    SQLContaBancosBAN_LIMITE_DESCTOCHEQ: TFMTBCdField;
    SQLContaBancosBAN_NDIAS_MAXDESCTO: TIntegerField;
    SQLContaBancosBAN_OUTROS_CREDITOS: TFMTBCdField;
    SQLContaBancosBAN_JUROS_DESCTOCHEQ: TFMTBCdField;
    SQLContaBancosBAN_JUROS_DESCTODUPL: TFMTBCdField;
    SQLContaBancosBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCdField;
    SQLContaBancosBAN_LIMITE_UTILIZADO_DUPL: TFMTBCdField;
    SQLContaBancosBAN_SEQ_CHEQUE: TIntegerField;
    SQLContaBancosBAN_LIMITE_CHEQESP: TFMTBCdField;
    ImgBanco: TImage;
    CdSCrCduplicataCLI_BAIFAT: TStringField;
    CdSCrCduplicataSELECAO: TBooleanField;
    ImageList1: TImageList;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    SQLContaBancosBAN_CARTEIRA_REGISTRO: TStringField;
    SQLContaBancosBAN_RESP_BOLETO: TStringField;
    CdSCrCduplicataFPC_COBNUM: TStringField;
    CdSCrCduplicataCC_TOTAL_FATURAS: TCurrencyField;
    SQLContaBancosBAN_CODIGO_TRANSMISSAO: TStringField;
    CdSCrCduplicataFPC_COBTIPO: TStringField;
    SQLBancosBAN_MULTA: TFMTBCdField;
    SQLBancosBAN_MULTA_DIAS: TIntegerField;
    GroupBox1: TGroupBox;
    NbookPages: TNotebook;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CbBancos: TComboBox;
    CCodigoBco: TCurrencyEdit;
    ccBan_codigo: TCurrencyEdit;
    GroupBox3: TGroupBox;
    GbPesquisa: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    CbCliente: TComboBox;
    RadVencimento: TRadioButton;
    RadEmissao: TRadioButton;
    EdCodCliente: TCurrencyEdit;
    RadDuplicatas: TRadioButton;
    RadFiltros: TRadioButton;
    GroupBox5: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Bevel4: TBevel;
    Label15: TLabel;
    Label17: TLabel;
    Label35: TLabel;
    DBGridDuplicata: TDBGrid;
    GroupBox10: TGroupBox;
    CbOcorrencia: TComboBox;
    CCodOcorrencia: TCurrencyEdit;
    CQtdeDupliTotal: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CQtdeDupliSelecionada: TCurrencyEdit;
    CQtdeDupliRestante: TCurrencyEdit;
    CurTotalFaturas: TCurrencyEdit;
    GbCnab: TGroupBox;
    Label18: TLabel;
    Bevel1: TBevel;
    Label30: TLabel;
    FileArqSalvar: TFilenameEdit;
    GroupBox9: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    PDisplayDup: TPanel;
    PDisplayEmiss: TPanel;
    PDisplayVenc: TPanel;
    PDisplayValor: TPanel;
    PDisplayBanco: TPanel;
    PanCliente: TPanel;
    CRegistro: TCurrencyEdit;
    CValorTotal: TCurrencyEdit;
    Panel10: TPanel;
    Gauge: TGauge;
    BitProcessar: TBitBtn;
    BitCancelarPro: TBitBtn;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    ChkRemessaTeste: TCheckBox;
    BitTipoImpressao: TBitBtn;
    PanTipo: TPanel;
    GroupBox4: TGroupBox;
    RadNumFatura: TRadioButton;
    RadCodCliente: TRadioButton;
    RadRazao: TRadioButton;
    GroupBox6: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    Panel2: TPanel;
    RDProtCNAB: TRDprint;
    Label41: TLabel;
    CDSCrcDuplicataFPC_DATABOLETO: TSQLTimeStampField;
    CDSCrcDuplicataban_convenio: TStringField;
    PageControl1: TPageControl;
    tsCopel: TTabSheet;
    tsOutros: TTabSheet;
    pCopel: TPanel;
    Label45: TLabel;
    pProduto: TPanel;
    Label34: TLabel;
    edCodProduto: TEdit;
    rgMovCopel: TRadioGroup;
    edConvenio: TEdit;
    pOutros: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label31: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    Label39: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label44: TLabel;
    Label40: TLabel;
    Label6: TLabel;
    CbAgencia: TComboBox;
    CDigitoAge: TCurrencyEdit;
    CbContaCorr: TComboBox;
    CDigitoC: TCurrencyEdit;
    CCodCarteira: TEdit;
    CNumCarteira: TEdit;
    GroupBox7: TGroupBox;
    Rad_Protesto_Cliente: TRadioButton;
    Rad_Protesto_Gerador: TRadioButton;
    CbInstrucao01: TComboBox;
    C1Instrucao: TCurrencyEdit;
    C2Instrucao: TCurrencyEdit;
    CbInstrucao02: TComboBox;
    CbEspecie: TComboBox;
    EdEmpresa: TEdit;
    EdEmpresaTransmissao: TEdit;
    CbAceite: TComboBox;
    CPrazoProtesto: TCurrencyEdit;
    CJurosMora: TCurrencyEdit;
    GroupBox11: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    CbRespBoleto: TComboBox;
    CbRegistrada: TComboBox;
    edtMultaDias: TEdit;
    EdMensagem: TEdit;
    edtMulta: TEdit;
    SQLBancosBAN_CONVENIO: TStringField;
    SQLContaBancosBAN_LEIAUTE: TIntegerField;
    rgLeiaute: TRadioGroup;
    CDSCrcDuplicataPED_UND_CONSUMIDORA: TIntegerField;
    ACBrBoleto1: TACBrBoleto;
    CDSCrcDuplicataFPC_DTDESC: TSQLTimeStampField;
    CDSCrcDuplicataFPC_DESCTO: TFMTBCDField;
    PopupMenu1: TPopupMenu;
    Marcartodos1: TMenuItem;
    Desmarcartodos1: TMenuItem;
    edEmpresaRemessa: TEdit;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    DataInicial1: TJvDateEdit;
    DataFinal1: TJvDateEdit;
    ACBrValidador1: TACBrValidador;
    ACBrBoletoFCFR1: TACBrBoletoFCFR;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    pbanco: TPanel;
    pinfo: TPanel;
    Label46: TLabel;
    C3Instrucao: TCurrencyEdit;
    CbInstrucao03: TComboBox;
    SQLContaBancosBAN_INSTRUCAO3: TStringField;
    CDSCrcDuplicataBAN_INSTRUCAO2: TStringField;

    procedure FormShow(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CCodigoBcoKeyPress(Sender: tObject; var Key: Char);
    procedure CbBancosClick(Sender: tObject);
    procedure BitBtnSairClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure CbAgenciaClick(Sender: tObject);
    procedure CbContaCorrClick(Sender: tObject);
    procedure BitAvancarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitVoltarClick(Sender: tObject);
    procedure CbEspecieClick(Sender: tObject);
    procedure CbAceiteClick(Sender: tObject);
    procedure BitProcessarClick(Sender: tObject);
    procedure BitCancelarProClick(Sender: tObject);
    procedure DBGridEmpresaKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridDuplicataKeyPress(Sender: tObject; var Key: Char);
    procedure BitVisualizarClick(Sender: tObject);
    procedure BitFechaVisualClick(Sender: tObject);
    procedure EdCodClienteKeyPress(Sender: tObject; var Key: Char);
    procedure CbClienteClick(Sender: tObject);
    procedure RadFiltrosClick(Sender: tObject);
    procedure RadDuplicatasClick(Sender: tObject);
    procedure RadVencimentoClick(Sender: tObject);
    procedure RadEmissaoClick(Sender: tObject);
    procedure DataInicialKeyPress(Sender: tObject; var Key: Char);
    procedure DataInicial1KeyPress(Sender: tObject; var Key: Char);
    procedure DataFinalKeyPress(Sender: tObject; var Key: Char);
    procedure DataFinal1KeyPress(Sender: tObject; var Key: Char);
    procedure BitImprimirClick(Sender: tObject);
    procedure ButFechaClick(Sender: tObject);
    procedure TVisualizarSelectionChange(Sender: tObject);
    procedure CCodOcorrenciaKeyPress(Sender: tObject; var Key: Char);
    procedure CbOcorrenciaClick(Sender: tObject);
    procedure C1InstrucaoKeyPress(Sender: tObject; var Key: Char);
    procedure CbInstrucao01Click(Sender: tObject);
    procedure C2InstrucaoKeyPress(Sender: tObject; var Key: Char);
    procedure CbInstrucao02Click(Sender: tObject);
    procedure BitTipoImpressaoClick(Sender: tObject);
    procedure RDProtCNABNewPage(Sender: tObject; Pagina: Integer);
    procedure RDProtCNABBeforeNewPage(Sender: tObject; Pagina: Integer);
    procedure DBGridDuplicataDrawColumnCell(Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDuplicataDblClick(Sender: tObject);
    procedure CCodigoBcoChange(Sender: tObject);
    procedure CdSCrCduplicataCalcFields(DataSet: TDataSet);
    procedure edtMultaKeyPress(Sender: tObject; var Key: Char);
    procedure edtMultaDiasKeyPress(Sender: tObject; var Key: Char);
    procedure CDSCrcDuplicataSELECAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rgLeiauteClick(Sender: TObject);
    procedure MarcaDesmarcar(const b: boolean);
    procedure Marcartodos1Click(Sender: TObject);
    procedure Desmarcartodos1Click(Sender: TObject);
    procedure C3InstrucaoKeyPress(Sender: TObject; var Key: Char);
    procedure CbInstrucao03Click(Sender: TObject);
  private
    { Private declarations }
     wREGISTRO        : TextFile;
     wLIT_REMESSA     :String;
     wCOD_CARTEIRA    :String;
     wACEITE          :String[1];
     wCaracTitulo     :string;
     wProtestar       :String[1];
     wDIR:String;

     //

     wDIAS_PROTESTO,
     wCOD_INSTRUCAO1,
     wCOD_INSTRUCAO2,
     wCOD_INSTRUCAO3,
     wESPECIE         :String[2];
     wLeiaute : Integer ; // 1 - CNAB400 2 - CNAB240
     wCREGISTRADA,
     wRESPBOLETO      :String[1];
     //
     sCODIGO_BANCO,
     sBanco_CONVENIO,
     wARQUIVO,
     wCAMINHO_ARQUIVO:String;
     wCANCELAR       :Boolean;
     //
     cTOTAL_GERAL :Currency;
     //
     iLINHA,
     iQtdeRegistro,
     wSEQ_REMESSA,
     wNumeroRegistro,
     wNossoNumero,
     wQtdeDuplicatas: Integer;
     wARQUIVO_LIMPAR,
     wEndereco,
     wBairro,
     wCep,
     wCidade,
     wUf:String;
    {campos}
     CampoEdit    :TEdit;
     CampoMaskEdit:TMaskEdit;
     CampoBox     :TComboBox;
     CampoCurrency:TCurrencyEdit;
     ban_cod_apelido : 1..999 ;
     procedure MudaCorCampos(Sender: tObject);
     procedure preencheBancos;
     procedure preencheClientes;
     procedure CarregarImagens;
     procedure AtribuiAgencias;
     procedure AtribuiContasDaAgencia;
     procedure SelecionaDuplicatasRemessa;
     procedure LimpaCampos;
     procedure LimpaCamposGera;
     procedure CriaDiretorioRemessa;
     procedure AtribuirEspecieBanco(wCOD_BANCO:String);
     procedure AtualizaRemessaDuplicata;
     procedure IncrementaSequenciaArquivoCNAB;
     procedure AtualizaArquivoCNABRemessa;
     procedure AtualizaArquivoCNABRemessaDuplicata;
     Procedure UpdateCursorPos;
     procedure PreencherOcorrencias(wCOD_BANCO:String);
     procedure PreencherInstrucao(wCOD_BANCO:String);
    {gera remessa}
     procedure GerarRemessaCNAB400_HSBC;
     procedure GerarRemessaCNAB400_CEF;
     procedure GerarRemessaCNAB400_BRADESCO;
     procedure GerarRemessaCNAB240_BRADESCO;
     procedure GerarRemessaCNAB400_ITAU;
     procedure GerarREmessaCNAB400_BRASIL_CBR641_6P;
     procedure GerarREmessaCNAB400_BRASIL_CBR641_7P;
     procedure GerarRemessaCNAB400_SANTANDER;
     procedure GerarRemessaCNAB400_Sicredi;
     procedure GerarAcbrRemessaGenerica;
     procedure GerarRemessaCopel;
     procedure GerarRemessaCELESC;
     procedure ImprimirProtocoloRemessaCNAB400(wSAIDA:String;wCOD_REMESSA:String);
     procedure CarregaLogo;
     procedure LimparSelecao;
     procedure CalculaTotaisSelecao;
     procedure SelecaodeTodasFaturas;
     procedure CarregaContaBancos;
     procedure LimpaCNAB;
  public
    { Public declarations }
  end;

var
   FormGeradorCNAB: TFormGeradorCNAB;

implementation

uses Uteis, UFuncoes, DataCad, Men0001, DataCad1, iniciodb;

resourcestring
  sColRowInfo = 'Linha: %3d   Coluna: %3d';

{$R *.dfm}

procedure TFormGeradorCNAB.FormShow(Sender: tObject);
begin
    try
       Screen.OnActiveControlChange   := MudaCorCampos;
       preencheBancos;
       preencheClientes;
       DataCadastros.CdsEmpresa.Open;
       DataCadastros.CdsEmpresa.Locate('emp_codigo',dbinicio.Empresa.EMP_CODIGO,[]);

    except on E:Exception do
       begin
          uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
       end;
    end;
end;

procedure TFormGeradorCNAB.MarcaDesmarcar(const b: boolean);
var clone : TClientDataSet;
begin
 Screen.Cursor := crHourGlass;
 clone := TClientDataSet.Create(Self);
 try
   clone.CloneCursor(CdSCrCduplicata,true);
   clone.First;
   while not clone.Eof do
   begin
    clone.Edit;
    clone.FieldByName('Selecao').AsBoolean := b;
    clone.Post;
    clone.Next;
   end;
 finally
   CalculaTotaisSelecao;
   FreeAndNil(clone);
   Screen.Cursor := crDefault;
 end;


end;

procedure TFormGeradorCNAB.Marcartodos1Click(Sender: TObject);
begin
  MarcaDesmarcar(true);
end;

procedure TFormGeradorCNAB.MudaCorCampos(Sender: tObject);
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
end;

procedure TFormGeradorCNAB.preencheBancos;
begin
   try
     SQLBancos.close;
     SQLBancos.CommandText := SQLDEF('BANCOS','SELECT B1.BAN_CODIGO,B1.BAN_COD_APELIDO,B1.BAN_APELIDO,B1.BAN_SEQ_NOSSONUMERO, B1.BAN_MULTA, B1.BAN_MULTA_DIAS, B1.BAN_CONVENIO '+
     ' FROM BAN0000 B1 ','','B1.BAN_APELIDO','B1.');


     SQLBancos.Open;
     SQLBancos.First;
     while not SQLBancos.Eof do
      begin
          CbBancos.Items.Add(SQLBancos.FieldByname('BAN_APELIDO').AsString);
          SQLBancos.Next;
      end;
     SQLBancos.First;
    except on E:Exception do
       begin
          uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
       end;
    end;
end;

procedure TFormGeradorCNAB.CarregarImagens;
  var
    wFigura:Thandle;
begin
  {atribuir imagen da dll}
{   wFigura := loadlibrary('Cptimg.dll');
    try
      if wFigura <> 0 then
         begin
            ImgLog.Picture.Bitmap.LoadFromResourceName(wFigura,'transdoc');
            //Image2.Picture.Bitmap.LoadFromResourceName(wFigura,'transf1');
         end
      else
         uteis.erro  ('Impossível localizar arquivo o cptimg.dll !');
    except
      freelibrary(wFigura);
    end;
  }
end;

procedure TFormGeradorCNAB.FormCreate(Sender: tObject);
begin
   CarregarImagens;
   wCANCELAR     := False;
   wACEITE       := 'N';
   wCaracTitulo  := 'CS'; //cobrnaça simple
   wESPECIE      := '00';
   sCODIGO_BANCO := '';
   NbookPages.PageIndex := 0;
   Self.height:= 654;
   self.width:= 683;
   tsOutros.TabVisible := False;
   tsCopel.TabVisible := False;
   PageControl1.ActivePage := tsOutros;

end;

procedure TFormGeradorCNAB.FormDestroy(Sender: TObject);
begin
     FormGeradorCNAB := Nil;
end;

procedure TFormGeradorCNAB.CCodigoBcoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
        // if SQLBancos.Locate('BAN_COD_APELIDO',CCodigoBco.AsInteger,[]) then
         if SQLBancos.Locate('BAN_CODIGO',ccBan_codigo.AsInteger,[]) then
            begin
               CbBancos.Text            := SQLBancos.FieldByname('BAN_APELIDO').AsString;
               LblMensagem.Caption      := 'Remessa arquivo CNAB para o banco '+SQLBancos.FieldByname('BAN_APELIDO').AsString+'.';
              {atribuir o código do banco para filtrar as duplicatas}
               sCODIGO_BANCO := SQLBancos.FieldByname('BAN_CODIGO').AsString;
               CarregaContaBancos;
               AtribuirEspecieBanco(CCodigoBco.Text);

               AtribuiAgencias;

               PreencherInstrucao(CCodigoBco.Text);

               BitAvancar.Enabled       := True;
               BitBtnSair.Visible       := False;
               BitCancelar.Visible      := True;
            end
         else
            begin
               uteis.aviso('Banco não encontrado com o código informado ...');
               LblMensagem.Caption       := 'Remessa arquivo CNAB para o banco.';
               CbBancos.Text             := '';


            end;
         key :=#0;
      end;
end;

procedure TFormGeradorCNAB.CbBancosClick(Sender: tObject);
begin
   if SQLBancos.Locate('BAN_APELIDO',CbBancos.Text,[]) then
      begin
         if (SQLBancos.FieldByname('BAN_COD_APELIDO').AsInteger  = 900) or
            (SQLBancos.FieldByname('BAN_COD_APELIDO').AsInteger  = 901) then
           PageControl1.ActivePage := tsCopel
         else
           PageControl1.ActivePage := tsOutros;
         CCodigoBco.AsInteger := SQLBancos.FieldByname('BAN_COD_APELIDO').AsInteger;
         edConvenio.Text := SQLBancos.FieldByname('BAN_CONVENIO').AsString;
         edCodProduto.Text := SQLBancos.FieldByname('BAN_CONVENIO').AsString;
         //busca pelo codigo do registro. pode ter mais de uma conta para o mesmo banco
         ccBan_codigo.AsInteger := SQLBancos.FieldByname('BAN_CODIGO').AsInteger;
         LblMensagem.Caption       := 'Remessa arquivo CNAB para o banco '+SQLBancos.FieldByname('BAN_APELIDO').AsString+'.';
         if CCodigoBco.AsInteger <> 0 then
            begin
             CarregaContaBancos;

             AtribuirEspecieBanco(CCodigoBco.Text);

             AtribuiAgencias;
            {atribuir o código do banco para filtrar as duplicatas}
             sCODIGO_BANCO := SQLBancos.FieldByname('BAN_CODIGO').AsString;
             sBanco_CONVENIO := SQLBancos.FieldByname('BAN_CONVENIO').AsString;

             PreencherInstrucao(CCodigoBco.Text);

             edtMulta.Text := SQLBancos.FieldByname('BAN_MULTA').AsString;
             edtMultaDias.Text := SQLBancos.FieldByname('BAN_MULTA_DIAS').AsString;
           end;
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','SELECT PMT_OBS_BLOQ1, PMT_OBS_BLOQ2,PMT_OBS_BLOQ3 from PRMT0001 p',
                                         '','','p.');
         DataCadastros.sqlUpdate.Open;
         EdMensagem.Text :=
         DataCadastros.SqlUpdate.FieldByName('PMT_OBS_BLOQ1').asString + ' ' +
         DataCadastros.SqlUpdate.FieldByName('PMT_OBS_BLOQ2').asString + ' ' +
         DataCadastros.SqlUpdate.FieldByName('PMT_OBS_BLOQ3').asString ;

         BitAvancar.Enabled       := True;
         BitBtnSair.Visible       := False;
         BitCancelar.Visible      := True;
      end
   else
      begin
         LblMensagem.Caption       := 'Remessa arquivo CNAB para o banco.';
      end;
end;

procedure TFormGeradorCNAB.AtribuiAgencias;
begin
   try
    {inicializa variaveis}
     wCAMINHO_ARQUIVO  := '';
     CarregaContaBancos;

     if not SQLContaBancos.IsEmpty then
        begin
           CbAgencia.Items.Clear;
           while not SQLContaBancos.Eof do
              begin
                 CbAgencia.Items.Add(SQLContaBancos.FieldByname('BAN_CODAGE').AsString);
                 SQLContaBancos.Next;
              end;
           SQLContaBancos.First;
           CbAgencia.ItemIndex  := 0;
           CdigitoAge.Text      := SQLContaBancos.FieldByname('BAN_CODAGEDIG').AsString;
           wCAMINHO_ARQUIVO     := SQLContaBancos.FieldByName('BAN_CAMINHO_REMESSA').AsString;
           AtribuiContasDaAgencia;
        end
     else
        begin
           //beep;
           uteis.aviso('Não foram encotradas agências para esse banco informado !');
        end;
   except on E:Exception do
      begin
         uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
      end;
   end;
end;

procedure TFormGeradorCNAB.BitBtnSairClick(Sender: tObject);
begin
   close;
end;

procedure TFormGeradorCNAB.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          if PanVisualizar.Visible then
             BitFechaVisual.Click
          else
          if BitCancelarPro.Enabled then
             BitCancelarPro.Click
          else
          if BitCancelar.Visible then
             BitCancelar.Click
          else
          if BitBtnSair.Visible then
             close;
          key := #0;
       end;
end;

procedure TFormGeradorCNAB.AtribuiContasDaAgencia;
var i : integer;
begin
   try
     SQLContaBancos.Close;
     SQLContaBancos.CommandText := SQLDEF('BANCOS','SELECT B1.* FROM BAN0000 B1 ','WHERE B1.BAN_CODIGO = '''+StrZero(ccBan_codigo.Text,4)+'''','B1.BAN_CODAGE','B1.');
     SQLContaBancos.Open;
     if not SQLContaBancos.IsEmpty then
        begin
           CbContaCorr.Items.Clear;
           while not SQLContaBancos.Eof do
              begin
                 CbContaCorr.Items.Add(SQLContaBancos.FieldByname('BAN_CONTA').AsString);
                 SQLContaBancos.Next;
              end;
           SQLContaBancos.First;
           CbContaCorr.ItemIndex  := 0;
           CdigitoC.Text          := SQLContaBancos.FieldByname('BAN_DIGCONTA').AsString;
          {}
           CCodCarteira.Text    := SQLContaBancos.FieldByname('BAN_COD_CART').AsString;
           CNumCarteira.Text    := SQLContaBancos.FieldByname('BAN_N_CARTEIRA').AsString;
           C1Instrucao.Text     := SQLContaBancos.FieldByname('BAN_INSTRUCAO1').AsString;

           if CCodigoBco.AsInteger = 104 then
               C2Instrucao.Text     := '0'           // fixo no manual
           else
               C2Instrucao.Text     := SQLContaBancos.FieldByname('BAN_INSTRUCAO2').AsString;
           C3Instrucao.Text     := SQLContaBancos.FieldByname('BAN_INSTRUCAO3').AsString;
           CPrazoProtesto.Text  := SQLContaBancos.FieldByname('BAN_PROTPRAZO').AsString;
           EdEmpresa.Text       := SQLContaBancos.FieldByname('BAN_CODNOBANCO').AsString;
           EdEmpresaTransmissao.Text := SQLContaBancosBAN_CODIGO_TRANSMISSAO.AsString;
           CJurosMora.Value     := SQLContaBancos.FieldByname('BAN_JUROMES').AsCurrency;
                  wESPECIE := SQLContaBancos.FieldByName('BAN_ESPECIE_COB').AsString;
           if (CbEspecie.Items.Count > 0) and  (SQLContaBancos.FieldByName('BAN_ESPECIE_COB').AsString <>  '' )  then
              begin
              for i := 0 to CbEspecie.Items.Count - 1 do
              begin
                 if CCodigoBco.Text <> '748' then
               begin
                   if (COPY(CbEspecie.Items[I],1,2) = wESPECIE) then
                    begin
                       CbEspecie.ItemIndex   := i;
                       break;
                    end;
               end
                  else
               begin
                   if (COPY(CbEspecie.Items[I],1,1) = wESPECIE) then
                    begin
                       CbEspecie.ItemIndex   := i;
                       break;
               end;
                 end;
              end;

           end;
            {aceite}
             if SQLContaBancos.FieldByName('BAN_ACEITE').AsString       = 'A' then
                CbAceite.ItemIndex  := 0
             else
             if SQLContaBancos.FieldByName('BAN_ACEITE').AsString       = 'N' then
                CbAceite.ItemIndex  := 1
             else
                CbAceite.ItemIndex  := 1;
             if SQLContaBancos.FieldByName('BAN_ACEITE').IsNull then
                wACEITE := 'N'
             else
                wACEITE := SQLContaBancos.FieldByName('BAN_ACEITE').AsString;
           wCaracTitulo := SQLContaBancos.FieldByName('BAN_COBTIPO').AsString;

            CbRegistrada.ItemIndex := 0 ;  { SEMPRE é registrada }
            wCREGISTRADA := SQLContaBancos.FieldByName('BAN_CARTEIRA_REGISTRO').AsString;

            { Responsavel pela impressao do boleto }
            if SQLContaBancos.FieldByName('BAN_RESP_BOLETO').AsString   = 'B' then
               CbRespBoleto.ItemIndex := 0
            else
               CbRespBoleto.ItemIndex := 1;
            wRESPBOLETO := SQLContaBancos.FieldByName('BAN_RESP_BOLETO').AsString;

        end
     else
        begin
           //beep;
           uteis.aviso('Não foram encontradas contas para essa agência informada !');
        end;
   except on E:Exception do
      begin
         uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
      end;
   end;
end;

procedure TFormGeradorCNAB.CbAgenciaClick(Sender: tObject);
begin
   if SQLContaBancos.Locate('AB_AGENCIA',CbAgencia.Text,[]) then
      begin
         CdigitoAge.Text   := SQLContaBancos.FieldByname('AB_AGENCIA_DV').AsString;
         AtribuiContasDaAgencia;
      end
   else
      CdigitoAge.Text   := '';
end;

procedure TFormGeradorCNAB.CbContaCorrClick(Sender: tObject);
begin
   if SQLContaBancos.Locate('AB_CONTA',CbContaCorr.Text,[]) then
      begin
         CbContaCorr.Text     := SQLContaBancos.FieldByname('AB_CONTA_DV').AsString;
         CCodCarteira.Text    := SQLContaBancos.FieldByname('AB_COD_CARTEIRA').AsString;
         CNumCarteira.Text    := SQLContaBancos.FieldByname('AB_NUMERO_CARTEIRA').AsString;
         C1Instrucao.Text     := SQLContaBancos.FieldByname('AB_INSTRUCAO1').AsString;
         C2Instrucao.Text     := SQLContaBancos.FieldByname('AB_INSTRUCAO2').AsString;
         CPrazoProtesto.Text  := SQLContaBancos.FieldByname('AB_DIAS_PROTESTO').AsString;
         EdEmpresa.Text       := SQLContaBancos.FieldByname('AB_IDENTIFICA_BANCO').AsString;
      end;
end;

procedure TFormGeradorCNAB.SelecionaDuplicatasRemessa;
begin
   try
     { BANCOS COM LAYOUT
      - HSBC;
      - 104-CEF;
      - BRADESCO;
      - 341 - ITAU;
      - 1   - BRASIL;
      - 33  - SANTANDER;
                                        }
     Screen.Cursor := CrHourglass;
     wSeleciona    := '';
     if InRange(ban_cod_apelido,900,901) and (rgMovCopel.ItemIndex in [1,2] ) then //movimento de alteração ou cancelamento
       wSeleciona    := ' WHERE F1.FPC_STATUS_REMESSA = ''S'''
     else
     wSeleciona    := ' WHERE F1.FPC_STATUS_REMESSA = ''N''';
     if RadDuplicatas.Checked then
        begin
           //if (CCodigoBco.Value = 341) or (CCodigoBco.Value = 1) then  //(itau) ou (Brasil:cod.carterira = 11, 31, 51 e na 12,15,17 se empresa tiver que preencher nossonumero)
           // Se Carteira Nao registrada ou  Impressao do boleto pelo banco (entao nao preciso  gerar codigo de barra e nosso numero antecipado
           if (wCREGISTRADA = 'N') or (wRESPBOLETO = 'B') or (InRange(ban_cod_apelido,900,901)) then
              wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''''
           else
              // seleciona os faturas cuja duplicata tenha já sido impressa e o titulo já tenha o numero da cobrança(nosso  numero) e codigo de barraa
              wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_IMPDUP = ''S'' AND F1.FPC_COBNUM <> '' ''';
        end
     else
        begin
            if RadVencimento.Checked then
               begin
                   if EdCodCliente.AsInteger <> 99999 then
                      begin
                        // Se Carteira Nao registrada ou  Impressao do boleto pelo banco (entao nao preciso  gerar codigo de barra e nosso numero antecipado
                        if (wCREGISTRADA = 'N') or (wRESPBOLETO = 'B') or (InRange(ban_cod_apelido,900,901)) then
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_VENCTO BETWEEN '''+DataAmericana(DataInicial.Text)+''' AND '''+DataAmericana(DataFinal.Text)+''' AND F1.CLI_CODIGO = '''+FormatFloat('00000',EdCodCliente.AsInteger)+''''
                        else
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_IMPDUP = ''S'' AND F1.FPC_VENCTO BETWEEN '''+DataAmericana(DataInicial.Text)+''' AND '''+DataAmericana(DataFinal.Text)+''' AND F1.CLI_CODIGO = '''+FormatFloat('00000',EdCodCliente.AsInteger)+''' AND F1.FPC_COBNUM <> '' ''';
                      end
                   else
                      begin
                        // Se Carteira Nao registrada ou  Impressao do boleto pelo banco (entao nao preciso  gerar codigo de barra e nosso numero antecipado
                        if (wCREGISTRADA = 'N') or (wRESPBOLETO = 'B') or (InRange(ban_cod_apelido,900,901)) then
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_VENCTO BETWEEN '''+DataAmericana(DataInicial.Text)+''' AND '''+DataAmericana(DataFinal.Text)+''''
                         else
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_IMPDUP = ''S'' AND F1.FPC_VENCTO BETWEEN '''+DataAmericana(DataInicial.Text)+''' AND '''+DataAmericana(DataFinal.Text)+''' AND F1.FPC_COBNUM <> '' ''';
                      end;
               end
            else
            if RadEmissao.Checked then
               begin
                   if EdCodCliente.AsInteger <> 99999 then
                      begin
                        // Se Nao Carteira registrada ou  Impressao do boleto pelo banco (entao nao preciso  gerar codigo de barra e nosso numero antecipado
                        if (wCREGISTRADA = 'N') or (wRESPBOLETO = 'B') or (InRange(ban_cod_apelido,900,901)) then
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_DTEMIS BETWEEN '''+DataAmericana(DataInicial1.Text)+''' and '''+DataAmericana(DataFinal1.Text)+''' and F1.CLI_CODIGO = '''+FormatFloat('00000',EdCodCliente.AsInteger)+''''
                        else
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_IMPDUP = ''S'' AND F1.FPC_DTEMIS BETWEEN '''+DataAmericana(DataInicial1.Text)+''' and '''+DataAmericana(DataFinal1.Text)+''' AND F1.CLI_CODIGO = '''+FormatFloat('00000',EdCodCliente.AsInteger)+''' AND F1.FPC_COBNUM <> '' ''';
                      end
                   else
                      begin
                        // Se Nao Carteira registrada ou  Impressao do boleto pelo banco (entao nao preciso  gerar codigo de barra e nosso numero antecipado
                        if (wCREGISTRADA = 'N') or (wRESPBOLETO = 'B') or (InRange(ban_cod_apelido,900,901)) then
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_DTEMIS BETWEEN '''+DataAmericana(DataInicial1.Text)+''' AND '''+DataAmericana(DataFinal1.Text)+''''
                        else
                            wSeleciona := wSeleciona + ' AND F1.BAN_CODIGO = '''+sCODIGO_BANCO+''' AND F1.FPC_IMPDUP = ''S'' AND F1.FPC_DTEMIS BETWEEN '''+DataAmericana(DataInicial1.Text)+''' AND '''+DataAmericana(DataFinal1.Text)+''' AND F1.FPC_COBNUM <> '' ''';
                      end;
               end;
        end;
        wSql1 := 'SELECT F1.FAT_CODIGO,'+
                 '       F1.FPC_NUMER,'+
                 '       F1.BAN_CODIGO,'+
                 '       B1.BAN_APELIDO,'+
                 '       B1.BAN_INSTRUCAO2,'+
                 '       F1.FPC_DTEMIS,'+
                 '       F1.FPC_DATABOLETO, '+
                 '       F1.FPC_VENCTO,'+
                 '       F1.FPC_VLPARC,'+
                 '       F1.CLI_CODIGO,'+
                 '       C1.CLI_RAZAO,'+
                 '       C1.CLI_ENDERE,'+
                 '       C1.CLI_BAIRRO,'+
                 '       C1.CLI_CEP,'+
                 '       C1.CLI_CIDADE,'+
                 '       C1.CLI_UF,'+
                 '       C1.CLI_ENDFAT,'+
                 '       C1.CLI_CIDFAT,'+
                 '       C1.CLI_CEPFAT,'+
                 '       C1.CLI_BAIFAT,'+
                 '       C1.CLI_UFFAT,'+
                 '       F1.FPC_COBNUM,'+
                 '       F1.FPC_COBTIPO,'+
                 '       F1.EMP_CODIGO,'+
                 '       C1.CLI_PESSOA,'+
                 '       C1.CLI_CGC,'+
                 '       C1.CLI_PROTESTAR,'+
                 '       C1.CLI_QTDE_DIAS_PROTESTO,'+
                 '       F1.FPC_NPARCELAS, '+
                 '       b1.BAN_CONVENIO, '+
                 '       PED_UND_CONSUMIDORA, ' +
                 '       FPC_DESCTO, ' +
                 '       FPC_DTDESC '  +
                 'FROM FAT_PC01 F1 '+
                 '     JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO  and C1.CLI_INATIVO = ''A'' '+  ')'+
                 //   ConcatSe(' AND C1.',DBInicio.ExclusivoSql('CLIENTES'))+
                 '     LEFT JOIN BAN0000 B1 ON F1.BAN_CODIGO = B1.BAN_CODIGO ';

        if Share('RECEBER')='E' then
           wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
        wSeleciona := wSeleciona + ' AND F1.FPC_SITPAG = ''P'' ';
        Try
          CdSCrCduplicata.Close;
          CdSCrCduplicata.CommandText := wSQL1+wSeleciona;
          if DBInicio.IsDesenvolvimento then
            CopyToClipBoard(CdSCrCduplicata.CommandText);
          CdSCrCduplicata.Open;
        except on E:Exception do
               begin
                   // se por acaso der erro somente ao abrir a tabela
                   uteis.aviso('Não foram encontradas faturas ou falta gerar e imprimir boleto para criar nosso numero.');
                   exit;
               end;
        end;

     if CdSCrCduplicata.IsEmpty then
        begin
            //beep;
            uteis.aviso('Não foram encontradas faturas ou falta gerar e imprimir boleto para criar nosso numero.');
            {if RadDuplicatas.Checked then
            else
            if RadFiltros.Checked then}

        end
     else
        begin
            // traz todas as faturas marcadas na selecao para remessa
            SelecaodeTodasFaturas;

            CalculaTotaisSelecao;

            NbookPages.PageIndex := NbookPages.PageIndex + 1;

        end;
     Screen.Cursor    := CrDefault;
   except on E:Exception do
      begin
         //beep;
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
      end;
   end;
end;

procedure TFormGeradorCNAB.BitAvancarClick(Sender: tObject);
begin                                                                         
   if NbookPages.PageIndex = 0 then
      begin
          edEmpresaRemessa.Text :=  DBInicio.Empresa.EMP_CODIGO+ '-' + DBInicio.Empresa.RAZAO;
         ban_cod_apelido:= DBInicio.BuscaUmDadoSqlAsInteger('SELECT ban_cod_apelido FROM BAN0000 WHERE ban_codigo = ' +QuotedStr( strzero(ccBan_codigo.Text,4) ));
         if (wCREGISTRADA = 'S') and (wRESPBOLETO = 'B') then
            uteis.aviso(pchar('Remessa em Carteira Registrada e BOLETO pelo BANCO.'#13+#13+
                        'Boleto NÃO pode ser impresso no sistema. O Banco vai gerar Código de Barras dele.'));

         if (wCREGISTRADA = 'S') and (wRESPBOLETO = 'E') then
            uteis.aviso(pchar('Remessa em Carteira Registrada e BOLETO pela EMPRESA.'#13+#13+
                        'As faturas serão liberadas para gerar Remessa somente depois da Impressão dos boletos.'));

         if (wCREGISTRADA = 'N') then
             uteis.aviso('Remessa SEM REGISTRO. Boleto deve ser impresso somente após gerar a remessa.');

         if (CbAgencia.Text = '') and  ( not  InRange(ban_cod_apelido,900,901))   then
            begin
               //beep;
               uteis.aviso('Informe a agência ref. o banco para remessa do arquivo CNAB !');
            end
         else
         if (CbContaCorr.Text = '') and  ( not  InRange(ban_cod_apelido,900,901))  then
            begin
               //beep;
               uteis.aviso('Informe a conta corrente ref. a agência e banco para remessa do arquivo CNAB !');


            end
         else
         if (CCodCarteira.Text = '') and  ( not  InRange(ban_cod_apelido,900,901))  then
            begin
               //beep;
               uteis.aviso('Informe o código da Carteira para remessa do arquivo CNAB !');
            end
         else
         if ((C1Instrucao.Text = '') or (C1Instrucao.AsInteger = 0)) and (ban_cod_apelido <> 237) and ( not  InRange(ban_cod_apelido, 900, 901))  then
            begin
               //beep;
               uteis.aviso('Informe a Instrução para remessa do arquivo CNAB !');
            end
         else if InRange(ban_cod_apelido ,900,901) and (rgMovCopel.ItemIndex = -1) then
           uteis.Aviso('Informe o tipo de movimento')
         else if (ban_cod_apelido = 900) and (edCodProduto.Text = '') then
           uteis.Aviso('Informe o código do produto')
         else if (ban_cod_apelido = 900) and (edConvenio.Text = '') then
           uteis.Aviso('Informe o código do convênio')
         else
           begin
               NbookPages.PageIndex := NbookPages.PageIndex + 1;
               if BitVoltar.Enabled = False then
                  BitVoltar.Enabled := True;
      end
      end
   else
   if NbookPages.PageIndex = 1 then
      begin
         if (DataInicial.Enabled) and (DataFinal.Enabled) then
            begin
               if (DataInicial.Text = '  /  /    ') or (DataFinal.Text = '  /  /    ') then
                  begin
                     //beep;
                     uteis.aviso('Informe o vencimento para filtro das faturas !');


                  end
               else
                  begin
                     SelecionaDuplicatasRemessa;
                     PreencherOcorrencias(FormatFloat('000',CCodigoBco.AsInteger));
                  end;
            end
         else
         if (DataInicial1.Enabled) and (DataFinal1.Enabled) then
            begin
               if (DataInicial1.Text = '  /  /    ') or (DataFinal1.Text = '  /  /    ') then
                  begin
                     //beep;
                     uteis.aviso('Informe o vencimento para filtro das faturas !');


                  end
               else
                  begin
                     SelecionaDuplicatasRemessa;
                     PreencherOcorrencias(FormatFloat( '000' , CCodigoBco.AsInteger));
                  end;
            end
         else
            begin
               SelecionaDuplicatasRemessa;
               PreencherOcorrencias(FormatFloat( '000' , CCodigoBco.AsInteger));
            end;

            CalculaTotaisSelecao;
      end
   else
   if NbookPages.PageIndex = 2 then
      begin
         
         //Valida se foi selecionada alguma duplicata
         if (CQtdeDupliSelecionada.AsInteger <= 0) then
            begin
               uteis.aviso('Nenhuma fatura foi selecionada!');
            end
         else
            begin
               //Filtra Duplicatas
               CdSCrCduplicata.Filter := 'SELECAO = true';
               CdSCrCduplicata.Filtered := True;

               CriaDiretorioRemessa;
               NbookPages.PageIndex := NbookPages.PageIndex + 1;
               BitProcessar.Enabled := True;
               BitAvancar.Enabled   := False;

            end;
      end;
end;


procedure TFormGeradorCNAB.SelecaodeTodasFaturas;
begin
    CdSCrCduplicata.Filtered := False;
    CdSCrCduplicata.DisableControls;
    CurTotalFaturas.Value := 0;
    CdSCrCduplicata.First;
    while not CdSCrCduplicata.Eof do
      begin
        try
          CdSCrCduplicata.Edit;
          CdSCrCduplicataSelecao.AsBoolean := not CdSCrCduplicataSELECAO.AsBoolean;
          CdSCrCduplicata.Post;
         except
         end;
         CurTotalFaturas.Value := CurTotalFaturas.Value +  CdSCrCduplicataFPC_VLPARC.AsCurrency;
         CdSCrCduplicata.Next;
      end;
   CdSCrCduplicata.EnableControls;

end;

procedure TFormGeradorCNAB.BitCancelarClick(Sender: tObject);
begin
    if NbookPages.PageIndex = 3 then
    begin
      {decrementa seq. do banco}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_SEQUENCIA_REMESSA = (BAN_SEQUENCIA_REMESSA - 1) ','WHERE BAN_CODIGO = ''' + strZero(ccBan_codigo.Text, 4) + '''','','');
      DataCadastros.sqlUpdate.Execsql;
    end;
    BitAvancar.Enabled       := False;
    BitBtnSair.Visible       := True;
    BitCancelar.Visible      := False;
    LimpaCampos;
    LimpaCamposGera;
    NbookPages.PageIndex     := 0;


end;

procedure TFormGeradorCNAB.LimpaCampos;
begin
    CCodigoBco.Clear;
    CbBancos.Text        := '';
    CbAgencia.Clear;
    CdigitoAge.Clear;
    CbContaCorr.Clear;
    CdigitoC.Clear;
    CCodCarteira.Clear;
    C1Instrucao.Clear;
    CbInstrucao01.Clear;
    C2Instrucao.Clear;
    CbInstrucao02.Clear;
    c3instrucao.Clear ;
    CbInstrucao03.clear;
    CPrazoProtesto.Clear;
    EdEmpresa.Clear;
    EdMensagem.Clear;
end;

procedure TFormGeradorCNAB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFormGeradorCNAB.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    if BitBtnSair.Visible = False then
       begin
          //beep;
          CanClose := False;
          uteis.aviso('Processo de remessa do arquivo CNAB não foi concluido !');
       end
    else
       begin
          try
             Screen.OnActiveControlChange   := nil;
             SQLContaBancos.Close;
             CdSCrCduplicata.Close;
             DataCadastros.CdsEmpresa.Close;
             SQLBancos.Close;
             SQLClientes.Close;
             DataCadastros1.CdSArquivoCNAB.Close;
          except on E:Exception do
             begin
                uteis.erro  (Pchar('Impossível fechar o arquivo: '+ #13 + E.message));
             end;
           end;
       end;
end;

procedure TFormGeradorCNAB.BitVoltarClick(Sender: tObject);
begin
   //Limpa Filtro
   LimparSelecao;

   if NbookPages.PageIndex = 3 then
   begin
     {decrementa seq. do banco}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_SEQUENCIA_REMESSA = (BAN_SEQUENCIA_REMESSA - 1) ','WHERE BAN_CODIGO = ''' + strZero(ccBan_codigo.Text, 4) + '''','','');
      DataCadastros.sqlUpdate.Execsql;
   end;

   if NbookPages.PageIndex > 0 then
      NbookPages.PageIndex := NbookPages.PageIndex - 1;
  {focus}
   if NbookPages.PageIndex = 0 then
      begin


      end
   else
   if NbookPages.PageIndex = 1 then
      begin
         {f RadDuplicatas.Checked then

         else
         if RadFiltros.Checked then}

      end
   else
   {f NbookPages.PageIndex = 2 then
      DBGridDuplicata.SetFocus;}
   if NbookPages.PageIndex = 0 then
      BitVoltar.Enabled     := False;
   if BitAvancar.Enabled = False then
      BitAvancar.Enabled    := True;
end;

procedure TFormGeradorCNAB.CriaDiretorioRemessa;
begin
   {nome do arquivo data atual}
    IncrementaSequenciaArquivoCNAB;
   {cria diretorio conforme banco para remessa}
    if wCAMINHO_ARQUIVO <> '' then
       wDIR := wCAMINHO_ARQUIVO
    else
       wDIR := dbInicio.SistemaLocal+'Bancos\Remessa\'+FormatFloat('000',CCodigoBco.AsInteger);
    if not DirectoryExists(wDIR) then
       ForceDirectories(wDIR);
    FileArqSalvar.FileName := wDIR + '\' + wARQUIVO;
    {Atualizar o caminho no cadastro de bancos}
    DataCadastros.sqlUpdate.Close;
    DataCadastros.sqlUpdate.Execsql;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_CAMINHO_REMESSA = '''+wDIR+'''','WHERE BAN_CODIGO = '''+ccBan_codigo.Text+'''','','');
end;

procedure TFormGeradorCNAB.GerarRemessaCNAB400_HSBC;
var lmulta : Currency ;
    lDias : Integer;
    lDataMulta, lDescAbat : string;

begin
   try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
      {remessa para teste ou remessa valida}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
      {codigo Carteira}
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +PreencheDireita('COBRANCA',15){LITERAL SERVICO}
                       +'0'{ZERO}
                       +CbAgencia.Text//+CdigitoAge.Text{AGENCIA CEDENTE}
                       +'55'{SUB-CONTA}
                       +PreencheDireita(Trim(CbAgencia.Text)+Trim(CbContaCorr.Text)+Trim(FormatFloat('00',CdigitoC.AsInteger)),11){Conta Corrente}
                       +PreencheDireita('',2){uso do banco}
                       +PreencheDireita(TiraAcento(Copy(DataCadastros.CdsEmpresa.FieldByname('EMP_RAZAO').AsString,1,30),True),30){NOME DO CLIENTE}
                       +'399'  {CODIGO BANCO}
                       +PreencheDireita('HSBC',15){NOME DO BANCO}
                       +Copy(DateToStr(Date),1,2) {DIA - Data da Gravação}
                       +Copy(DateToStr(Date),4,2) {MES - Data da Gravação}
                       +Copy(DateToStr(Date),9,2) {ANO - Data da Gravação}
                       +'01600'{densidade de gravação}
                       +'BPI'{LITEAL DENSIDADE UNIDADE DE DENSIDADE DE GRAVAÇÃO}
                       +PreencheDireita('',2){uso do banco}
                       +'LANCV08'{SIGLA LAYOUT}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',022){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );
     {***************************************FIM REGISTRO GEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
        begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+'-'+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);


           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lDescAbat:='0000000000000';
           if (lMulta<>0) then
           begin
              lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias);
              lDataMulta := Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2);
              lDescAbat := lDataMulta + PreencheZeroEsquerda( ExtrairNumeros( FormatFloat ('00.00', lmulta ) ),4) +  '000';
              wCOD_INSTRUCAO2 := '15' // multa
           end
           Else
              wCOD_INSTRUCAO2 := '00';

           //situacao para protesto
           wCOD_INSTRUCAO1 := '00';
           wDIAS_PROTESTO  := '00';

           {instrucao 01 e dias p/protesto}
           if C1Instrucao.AsInteger in [75,77] then
           begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
           end
           else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);

           {insturcao 02 e dias p/protesto}
           if wCOD_INSTRUCAO2 = '00' then
           begin
               if C2Instrucao.AsInteger in [75,77] then
               begin
                      if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                         wCOD_INSTRUCAO2 := '00'
                      else
                         wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
               else
               if C2Instrucao.AsInteger <> 0 then
                   wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
           end;

            {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);

            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;

            {gera registro}

            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'02'  {codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14){Número de Inscrição CNPF/CNPJ}
                             +'0'{ZERO}
                             +CbAgencia.Text//+CdigitoAge.Text{AGENCIA CEDENTE}
                             +'55'{SUB-CONTA}
                             +PreencheDireita(Trim(CbAgencia.Text)+Trim(CbContaCorr.Text)+Trim(FormatFloat('00',CdigitoC.AsInteger)),11){Conta Corrente}
                             +PreencheDireita('',2){BRANCOS}
                             +PreencheDireita(Copy(EdMensagem.Text,1,24),24){ mensagem para o boleto tem q imprimir * na coluna 62 para sair no boletor CONTROLE DO PRATICIPANTE} //PreencheDireita(CdSCrCduplicata.FieldByname('FAT.FPC_NUMER').AsString,25){CONTROLE DO PRATICIPANTE}
                             +PreencheDireita('*',1){* para imprimir mensagem no boleto tem q ser imprsso o * na coluna 62 }
                             +PreencheZeroEsquerda('0',011){NOSSO NUMERO - }
                             +'999999'{DESCONTO DATA - 2}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),11){VALOR DESCONTO 2}
                             +'999999'{DESCONTO DATA - 3}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),11){VALOR DESCONTO 3}

                             +CNumCarteira.Text//CCodCarteira.Text {Carteira 1-Cobrança Simples / 3 Garantia de Operaçoes}
                             +FormatFloat('00',CCodOcorrencia.AsInteger){Codigo da Ocorrencia = 01-Remessa / 02-Pedido Baixa etc....}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){Seu Número}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'399'{banco cobrador}
                             +PreencheZeroEsquerda('0',5){agencia depositaria}
                             +wESPECIE {Espécie 01-Duplicata Mercantil / 02-Nota Promissoria / 03-nota seguro}
                             +wACEITE  {A = PARA ACEITO - N = PARA NÃO ACEITO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,1,2){DIA - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,4,2){MES - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1//FormatFloat('00',C1Instrucao.AsInteger){Instrução 01}
                             +wCOD_INSTRUCAO2//FormatFloat('00',C2Instrucao.AsInteger){Instrução 02}

                             +PreencheDireita('',08){Banco para taxa mes}
                             +'T'{juros de mora com taxa}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',CJurosMora.Value)),4)
                             +'999999'{Desconto Data}

                             +lDescAbat // Valor Abatimrento ou Multa 

                             +PreencheZeroEsquerda('0',13){Valor do IOF}
                             +PreencheDireita('',06){brancos}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',CJurosMora.Value)),4){Taxa da mora diaria}
                             // +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.Value)),3){Numero de dias para protesto}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',StrToFloat(wDIAS_PROTESTO))),3){Numero de dias para protesto}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02')  {codigo de Inscrição}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,True),40){Nome do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,38),True),38){Endereco do Sacado}
                             +PreencheDireita('',02){Instrução de não recebimento do bloqueto brancos}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wBairro,1,12),True),12) {Bairro sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,1,5),True),05){cep do sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,6,3),True),03){Sufixo do cep do sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             +PreencheDireita('',39){sacador avalista}
                             +'E'{tipo de bloqueto -  E =Assume bloq. auto-envelopado com comprovante de entrega / S = Assume bloq. auto-envelopado sem comprovante de entrega}
                             +wDIAS_PROTESTO{Prazo de Protesto} //PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.Value)),2){Prazo de Protesto}
                             +'9'{tipo de moeda 9 = Real}
                             +FormatFloat('000000',wNumeroRegistro)
                   );
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
        end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',138){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;

           uteis.aviso(Pchar('Arquivo '+rgLeiaute.Items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.AtribuirEspecieBanco(wCOD_BANCO: String);
begin
   //BRASIL
   if wCOD_BANCO = '1' then {espécie do titulo cobranca B.BRASIL}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NOTA SEGURO');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('08-LETRA CÂMBIO');
         CbEspecie.Items.Add('09-WARRANT');
         CbEspecie.Items.Add('10-CHEQUE');
         CbEspecie.Items.Add('12-DUPLICATA SERVIÇO');
         CbEspecie.Items.Add('13-NOTA DE DEBITO');
         CbEspecie.Items.Add('15-APOLICE DE SEGURO');
         CbEspecie.Items.Add('25-DIVIDA ATIVA DA UNIAO');
         CbEspecie.Items.Add('26-DIVIDA ATIVA DE ESTADO');
         CbEspecie.Items.Add('27-DIVIDA ATIVA DE MUNICIPIO');
      end
   else
   //HSBC
   if wCOD_BANCO = '399' then {espécie do titulo cobranca HSBC}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DP-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NP-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NS-NOTA SEGURO');
         CbEspecie.Items.Add('05-RC-RECIBO');
         CbEspecie.Items.Add('08-SD-COBRANÇA EXPRESSA');
         CbEspecie.Items.Add('09-SD-COBRANÇA ESCRITURAL');
         CbEspecie.Items.Add('10-DS-DUPLICATA DE SERVIÇO');
         CbEspecie.Items.Add('98-PD-COBRANÇA DIRETIVA');
      end
   else
   //CEF
   if wCOD_BANCO = '104' then
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DM - DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NP - NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-DS - DUPLICATA DE SERVIÇO');
         CbEspecie.Items.Add('05-NS - NOTA DE SEGURO');
         CbEspecie.Items.Add('06-LC - LETRA DE CÂMBIO');
         CbEspecie.Items.Add('09-OU - OUTROS');
      end
   else
   //BRADESCO - SICOOB
   if (wCOD_BANCO = '237') or (wCOD_BANCO = '756') then
      begin
      if rgLeiaute.ItemIndex = 1 then
      begin
        CbEspecie.Items.Clear;
        CbEspecie.Items.Add('01-CH CHEQUE');
        CbEspecie.Items.Add('02-DM DUPLICATA MERCANTIL');
        CbEspecie.Items.Add('03-DMI DUPLICATA MERCANTIL P/ INDICAÇÃO');
        CbEspecie.Items.Add('04-DS DUPLICATA DE SERVIÇO');
        CbEspecie.Items.Add('05-DSI DUPLICATA DE SERVIÇO P/ INDICAÇÃO');
        CbEspecie.Items.Add('06-DR DUPLICATA RURAL');
        CbEspecie.Items.Add('07-LC LETRA DE CÂMBIO');
        CbEspecie.Items.Add('08-NCC NOTA DE CRÉDITO COMERCIAL');
        CbEspecie.Items.Add('09-NCE NOTA DE CRÉDITO A EXPORTAÇÃO');
        CbEspecie.Items.Add('10-NCI NOTA DE CRÉDITO INDUSTRIAL');
        CbEspecie.Items.Add('11-NCR NOTA DE CRÉDITO RURAL');
        CbEspecie.Items.Add('12-NP NOTA PROMISSÓRIA');
        CbEspecie.Items.Add('13-NPR NOTA PROMISSÓRIA RURAL');
        CbEspecie.Items.Add('14-TM TRIPLICATA MERCANTIL');
        CbEspecie.Items.Add('15-TS TRIPLICATA DE SERVIÇO');
        CbEspecie.Items.Add('16-NS NOTA DE SEGURO');
        CbEspecie.Items.Add('17-RC RECIBO');
        CbEspecie.Items.Add('18-FAT FATURA');
        CbEspecie.Items.Add('19-ND NOTA DE DÉBITO');
        CbEspecie.Items.Add('20-AP APÓLICE DE SEGURO');
        CbEspecie.Items.Add('21-ME MENSALIDADE ESCOLAR');
        CbEspecie.Items.Add('22-PC PARCELA DE CONSÓRCIO');
        CbEspecie.Items.Add('23-NF NOTA FISCAL');
        CbEspecie.Items.Add('24-DD DOCUMENTO DE DÍVIDA');
        CbEspecie.Items.Add('25-CÉDULA DE PRODUTO RURAL');
        CbEspecie.Items.Add('26-WARRANT');
        CbEspecie.Items.Add('27-DÍVIDA ATIVA DE ESTADO');
        CbEspecie.Items.Add('28-DÍVIDA ATIVA DE MUNICÍPIO');
        CbEspecie.Items.Add('29-DÍVIDA ATIVA DA UNIÃO');
        CbEspecie.Items.Add('30-ENCARGOS CONDOMINIAIS');
        CbEspecie.Items.Add('31-CARTÃO DE CRÉDITO');
        CbEspecie.Items.Add('32-BDP BOLETO DE PROPOSTA');
        CbEspecie.Items.Add('99-OUTROS');
      end
      else
      begin
       CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NOTA DE SEGURO');
         CbEspecie.Items.Add('04-COBRANCA SERIADA');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('10-LETRAS DE CAMBIO');
         CbEspecie.Items.Add('11-NOTA DE DEBITO');
         CbEspecie.Items.Add('12-DUPLICATA DE SERV.');
         CbEspecie.Items.Add('99-OUTROS');
      end;
      end
   else
   // ITAU
   if wCOD_BANCO = '341' then
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NOTA SEGURO');
         CbEspecie.Items.Add('04-MENSALIDADE ESCOLAR');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('06-CONTRATO');
         CbEspecie.Items.Add('07-COSSEGUROS');
         CbEspecie.Items.Add('08-DUPLICATA SERVIÇO');
         CbEspecie.Items.Add('09-LETRA CÂMBIO');
         CbEspecie.Items.Add('13-NOTA DE DÉBITOS');
         CbEspecie.Items.Add('99-DIVERSOS');
      end
   else
   // SANTANDER
   if (wCOD_BANCO = '033') OR (wCOD_BANCO = '33') then
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-APOLICE/SEGURO');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('06-DUPLICATA DE SERVIÇO');
         CbEspecie.Items.Add('07-LETRA DE CAMBIO');
      end;
   if wCOD_BANCO = '748' then
   begin
     CbEspecie.Items.Clear;
     CbEspecie.Items.Add('A-DUPLICATA MERCANTIL POR INDICAÇÃO');
     CbEspecie.Items.Add('B-DUPLICATA RURAL');
     CbEspecie.Items.Add('C-NOTA PROMISSÓRIA');
     CbEspecie.Items.Add('D-NOTA PROMISSÓRIA RURAL');
     CbEspecie.Items.Add('E-NOTA SEGUROS');
     CbEspecie.Items.Add('G-RECIBO');
     CbEspecie.Items.Add('H-LETRA CÂMBIO');
     CbEspecie.Items.Add('I-NOTA DE DÉBITOS');
     CbEspecie.Items.Add('J-DUPLICATA DE SERVIÇO POR INDICAÇÃO');
     CbEspecie.Items.Add('K-OUTROS');
     CbEspecie.Items.Add('O-BOLETO PROPOSTA');
   end;

   {banco SAFRA}
   if wCOD_BANCO = '422' then
    begin
       CbEspecie.Items.Clear;
       CbEspecie.Items.Add('01-Duplicata Mercantil');
       CbEspecie.Items.Add('02-Nota Promissória');
       CbEspecie.Items.Add('03-Nota Seguro');
       CbEspecie.Items.Add('05-Recibo');
       CbEspecie.Items.Add('09-Duplicata de Serviços');
       CbEspecie.Items.Add('99-OUTROS');
    end

end;

procedure TFormGeradorCNAB.CbEspecieClick(Sender: tObject);
begin
  if CbEspecie.Text <> '' then
      begin
    if  CCodigoBco.Text <> '748' then
        wESPECIE :=  copy(CbEspecie.Text,1,2)
   else
      wESPECIE := copy(CbEspecie.Text,1,1) // sicredi é letra
         end;
         end;

procedure TFormGeradorCNAB.CbAceiteClick(Sender: tObject);
begin
  {399 - 104}
   case CbAceite.ItemIndex of
     0:wACEITE       := 'A';
     1:wACEITE       := 'N';
   end;

end;

procedure TFormGeradorCNAB.LimpaCamposGera;
begin
   CValorTotal.Clear;
   CRegistro.Clear;
   PDisplayDup.Caption   := '';
   PDisplayEmiss.Caption := '';
   PDisplayVenc.Caption  := '';
   PDisplayValor.Caption := '';
   PDisplayBanco.Caption := '';
   PanCliente.Caption    := '';
   Gauge.Progress        := 0;
end;

procedure TFormGeradorCNAB.LimpaCNAB;
var
  crm, bak: TextFile;
  path, caminho, linha, a, e, p :String;
  arquivo, extensao: TStringList;
  j : integer;
begin
  arquivo := TStringList.Create;
  extensao := TStringList.Create;
//  if FileExists(FileArqSalvar.FileName) then
  if wARQUIVO_LIMPAR = '' then
    wARQUIVO_LIMPAR := FileArqSalvar.FileName;

  if FileExists(wARQUIVO_LIMPAR) then
  begin
    a := ExtractFileName(wARQUIVO_LIMPAR);
    a := a.Substring(0, Length(a) -4);
    e := ExtractFileExt(wARQUIVO_LIMPAR);
    p := ExtractFilePath(wARQUIVO_LIMPAR);
    arquivo.Add(a);
    extensao.Add(e);
  end
  else
    // for Path in TDirectory.GetFiles(FileArqSalvar.FileName)  do
    for Path in TDirectory.GetFiles(wARQUIVO_LIMPAR)  do
    begin
      a := ExtractFileName(path);
      a := a.Substring(0, Length(a) -4);
      e := ExtractFileExt(path);
      p := ExtractFilePath(wARQUIVO_LIMPAR);
      arquivo.Add(a);
      extensao.Add(e);
    end;

  FileArqSalvar.FileName := wARQUIVO_LIMPAR;
  for j := 0 to arquivo.Count -1  do
  begin

    AssignFile(crm, p + '\' + arquivo[j] + extensao[j]);
    Reset(crm);

    AssignFile(bak, p + '\' + arquivo[j] + '.bak');
    ReWrite(bak);

    while(not eof(crm)) do
    begin
      Readln(crm, linha);
      WriteLn(bak, TiraCaracteresEspeciais(linha, True));
    end;

    CloseFile(crm);
    CloseFile(bak);

    DeleteFile(p + '\' + arquivo[j] + extensao[j]);
    RenameFile(p + '\' + arquivo[j] + '.bak', p + '\' + arquivo[j] + extensao[j] )
  end;
end;

procedure TFormGeradorCNAB.BitProcessarClick(Sender: tObject);
begin

 if uteis.confirmacao ( ('Deseja gerar o arquivo '+ rgLeiaute.Items[rgLeiaute.ItemIndex]+' para o Banco : '+#13#10
                              +CCodigoBco.Text+' - '+CbBancos.Text+' ?')) = mryes then
         begin
               FileArqSalvar.Enabled      := False;
               BitProcessar.Enabled       := False;
               BitCancelarPro.Enabled     := True;
               BitCancelar.Enabled        := False;
               BitVisualizar.Enabled      := False;
               BitImprimir.Enabled        := False;
               BitTipoImpressao.Enabled   := False;

              {bancos arquivo cnab}
               if CCodigoBco.Value = 001 then
               begin
                  if Length(TRIM(SQLContaBancosBAN_CODNOBANCO.AsString)) = 6 then    // 6 POSIÇÕES
                     GerarREmessaCNAB400_BRASIL_CBR641_6P
                  else
                  if Length(TRIM(SQLContaBancosBAN_CODNOBANCO.AsString)) = 7 then    // 7 POSIÇÕES
                     GerarREmessaCNAB400_BRASIL_CBR641_7P
                  else
                      uteis.aviso('Código do cedente incorreto ou layout não disponível');
               end
               else
               if CCodigoBco.Value = 33 then
                  GerarRemessaCNAB400_SANTANDER
               else
//               if CCodigoBco.Value = 104 then
//                  GerarRemessaCNAB400_CEF
               //else
               if CCodigoBco.Value = 237 then
               begin
                 if rgLeiaute.ItemIndex = 1 then // cnab240
                    GerarRemessaCNAB240_BRADESCO
                           else
                    GerarRemessaCNAB400_BRADESCO;
               end
               else
               if CCodigoBco.Value = 341 then
                  GerarRemessaCNAB400_ITAU
               else
               if CCodigoBco.Value = 399 then
                  GerarRemessaCNAB400_HSBC
               else if CCodigoBco.Value = 900 then
                  GerarRemessaCopel
               else if CCodigoBco.Value = 901 then
                  GerarRemessaCELESC
            //   else if CCodigoBco.Value = 748 then
            //     GerarRemessaCNAB400_Sicredi
                else
                 begin
                 try
                  ACBrBoleto1.Banco.TipoCobranca := ACBrBoleto1.GetTipoCobranca(StrToIntDef(CCodigoBco.Text,0));
                 except
                  on e:exception do
                  begin
                                uteis.aviso('Remessa para o banco informado não existente !'+#13#10+
                                      'Entre em  contato  com o  suporte técnico para'+#13#10+
                                      '       solicitar gerador ref. o banco...      ');
                                FileArqSalvar.Enabled    := True;
                                BitBtnSair.Visible       := True;
                                BitCancelar.Visible      := False;


                                exit;

                           end;
                 end;
                 GerarAcbrRemessaGenerica;


               end;

//   begin
//    //beep;
//    uteis.aviso('Remessa para o banco informado não existente !'+#13#10+
//          'Entre em  contato  com o  suporte técnico para'+#13#10+
//          '       solicitar gerador ref. o banco...      ');
//    FileArqSalvar.Enabled    := True;
//    BitBtnSair.Visible       := True;
//    BitCancelar.Visible      := False;
               //
//               if uteis.confirmacao ( 'Deseja imprimir protolo de remessa do arquivo ?') = mryes then
//
//    exit;
//   end;
   //


   LimpaCNAB(); // retira todos os acentos do arquivo gerado

   if uteis.confirmacao ( 'Deseja imprimir protocolo de remessa do arquivo ?') = mryes then
                  BitImprimir.Click;
               FileArqSalvar.Enabled      := True;
               {}
               BitBtnSair.Visible         := True;
               BitCancelar.Visible        := False;
         end;



   end;

procedure TFormGeradorCNAB.BitCancelarProClick(Sender: tObject);
begin
   wCANCELAR    := True;
end;

procedure TFormGeradorCNAB.DBGridEmpresaKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
          {f RadDuplicatas.Checked then
             RadDuplicatas.SetFocus
          else
          if RadFiltros.Checked then
             RadFiltros.SetFocus;}
          key := #0;
      end;
end;

procedure TFormGeradorCNAB.Desmarcartodos1Click(Sender: TObject);
begin
  MarcaDesmarcar(False);
end;

procedure TFormGeradorCNAB.DBGridDuplicataKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin

         key := #0;
      end;
end;

procedure TFormGeradorCNAB.AtualizaRemessaDuplicata;
begin
   try
     //Screen.Cursor    := CrHourglass;
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','UPDATE FAT_PC01 SET FPC_STATUS_REMESSA = ''S'',FPC_DATA_REMESSA = '''+DataAmericana(DateToStr(Date))+'''','WHERE FAT_CODIGO = '''+CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+''' AND FPC_NUMER = '''+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString+'''','','');
     DataCadastros.sqlUpdate.Execsql;
     DataCadastros.sqlUpdate.Close;
     //Screen.Cursor    := CrDefault;
    except on E:Exception do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar arquivo: '+ #13#10 + E.message));
       end;
    end;
end;

procedure TFormGeradorCNAB.BitVisualizarClick(Sender: tObject);
 Var
 wREGISTRO: TextFile;

begin


  // FileArqSalvar.FileName := 'C:\00229\COBRANCA\SICREDI\REMESSA\SICRE156.TXT';

  exit;

   try
      TVisualizar.Clear;
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      Reset(wREGISTRO);
      while(not eof(wREGISTRO)) do
         begin
            Readln(wREGISTRO,wARQUIVO);
            TVisualizar.Lines.Add(wARQUIVO);
         end;
     {}
      PanCaptionV.Caption   := ' Gerado Arquivo Remessa '+ rgLeiaute.Items[rgLeiaute.ItemIndex]+ ' ref. o banco :'+FormatFloat('000',CCodigoBco.AsInteger)+' - '+CbBancos.Text;
      PanVisualizar.Top     := 2;
      PanVisualizar.Left    := 2;
      PanVisualizar.Visible := True;

   finally
       closeFile(wREGISTRO);
   end;
end;

procedure TFormGeradorCNAB.BitFechaVisualClick(Sender: tObject);
begin
   PanVisualizar.Visible := False;
   TVisualizar.Clear;

end;

procedure TFormGeradorCNAB.preencheClientes;
begin
  {preenche clientes}
   try
    {preenche clientes}
     SQLClientes.Close;
     SQLClientes.CommandText := SQLDEF('CLIENTES','SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_FANTASIA FROM CLI0000 C1 ','','C1.CLI_RAZAO','C1.');
     SQLClientes.Open;
     CbCliente.Items.Clear;
     CbCliente.Items.Add('TODOS CLIENTES');
     while not SQLClientes.Eof do
       begin
          CbCliente.Items.Add(SQLClientes.FieldByname('CLI_RAZAO').AsString);
          SQLClientes.Next;
       end;
     CbCliente.ItemIndex := 0;
   except on E:EDataBaseError do
       begin
          //beep;
          uteis.erro  (Pchar('Impossível abrir arquivo: '+ #13 + E.message));

       end;
   end;
end;

procedure TFormGeradorCNAB.EdCodClienteKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
     begin
         if (Trim(EdCodCliente.Text) <> '') and (EdCodCliente.Value <> 99999 ) then
            begin
               if SQLClientes.Locate('CLI_CODIGO',FormatFloat('00000',EdCodCliente.Value),[]) then
                  CbCliente.Text     := SQLClientes.FieldByname('CLI_RAZAO').AsString
               else
                  begin
                     //beep;
                     uteis.erro  ('Cliente não encotrado com o código informado ...');
                     CbCliente.ItemIndex := -1;


                  end;
            end
         else
            begin
               CbCliente.ItemIndex := 0;
            end;
         Key := #0;
     end;
end;

procedure TFormGeradorCNAB.CbClienteClick(Sender: tObject);
begin
   if CbCliente.ItemIndex = 0 then
      EdCodCliente.AsInteger := 99999
   else
   if SQLClientes.Locate('CLI_RAZAO',CbCliente.Text,[]) then
      EdCodCliente.AsInteger := SQLClientes.FieldByname('CLI_CODIGO').AsInteger;
end;

procedure TFormGeradorCNAB.RadFiltrosClick(Sender: tObject);
begin
   GbPesquisa.Enabled    := True;
   RadVencimento.Checked := True;
   DataInicial.Enabled   := True;
   DataFinal.Enabled     := True;
   DataInicial.Date      := Date;
   DataFinal.Date        := Date;
   EdCodCliente.Enabled  := True;
   CbCliente.Enabled     := True;


end;

procedure TFormGeradorCNAB.RadDuplicatasClick(Sender: tObject);
begin
   GbPesquisa.Enabled   := False;
   //
   DataInicial1.Clear;
   DataFinal1.Clear;
   DataInicial.Clear;
   DataFinal.Clear;
   //
   EdCodCliente.Enabled  := False;
   CbCliente.Enabled     := False;
   DataInicial1.Enabled  := False;
   DataFinal1.Enabled    := False;
   DataInicial.Enabled   := False;
   DataFinal.Enabled     := False;
end;

procedure TFormGeradorCNAB.RadVencimentoClick(Sender: tObject);
begin
   DataInicial1.Clear;
   DataFinal1.Clear;
   //
   DataInicial1.Enabled := False;
   DataFinal1.Enabled   := False;
   //
   DataInicial.Enabled  := True;
   DataFinal.Enabled    := True;
   DataInicial.Date     := Date;
   DataFinal.Date       := Date;


end;

procedure TFormGeradorCNAB.RadEmissaoClick(Sender: tObject);
begin
   DataInicial.Clear;
   DataFinal.Clear;
   //
   DataInicial.Enabled   := False;
   DataFinal.Enabled     := False;
   //
   DataInicial1.Enabled  := True;
   DataFinal1.Enabled    := True;
   DataInicial1.Date     := Date;
   DataFinal1.Date       := Date;


end;

procedure TFormGeradorCNAB.DataInicialKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         ValidaData(DataInicial.Text,DataInicial);
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.DataInicial1KeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         ValidaData(DataInicial1.Text,DataInicial1);
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.DataFinalKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         ValidaData(DataFinal.Text,DataFinal);
         key := #0;
      end;

end;

procedure TFormGeradorCNAB.DataFinal1KeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         ValidaData(DataFinal1.Text,DataFinal1);
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.BitImprimirClick(Sender: tObject);
begin
   try
     ImprimirProtocoloRemessaCNAB400(iif(RadVideo.checked  ,'V','I'),DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString);
   finally
   end;
end;

procedure TFormGeradorCNAB.ButFechaClick(Sender: tObject);
begin
   PanVisualizar.Visible := False;
   TVisualizar.Clear;

end;

procedure TFormGeradorCNAB.IncrementaSequenciaArquivoCNAB;
begin
   try
      Screen.Cursor    := CrHourglass;
     {incrementa seq. do banco}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_SEQUENCIA_REMESSA = (BAN_SEQUENCIA_REMESSA + 1) ','WHERE BAN_CODIGO = ''' + strZero(ccBan_codigo.Text, 4) + '''','','');
      DataCadastros.sqlUpdate.Execsql;
     {pega ultima seq.}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS','SELECT B1.BAN_SEQUENCIA_REMESSA FROM BAN0000 B1 ','WHERE B1.BAN_CODIGO = '''+strZero(ccBan_codigo.Text, 4)+'''','B1.BAN_COD_APELIDO','B1.');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty then
         wSEQ_REMESSA := DataCadastros.sqlUpdate.FieldByName('BAN_SEQUENCIA_REMESSA').AsInteger
      else
         wSEQ_REMESSA := 0;
     {sequencia arquivo}
      if CCodigoBco.AsInteger = 001 then
         begin
            if ChkRemessaTeste.Checked then
                 wARQUIVO := 'CBR'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+'_'+Copy(FormatFloat('0000',wSEQ_REMESSA),1,4)+'.TST'
            else
               wARQUIVO := 'CBR'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+'_'+Copy(FormatFloat('0000',wSEQ_REMESSA),1,4)+'.REM';

         end
      else
      if CCodigoBco.AsInteger = 33 then
         begin
            if ChkRemessaTeste.Checked then
               wARQUIVO := 'COB'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('0',wSEQ_REMESSA)+'.ENT'
            else
               wARQUIVO := 'COB'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('0',wSEQ_REMESSA)+'.ENT';
         end
      else
      if CCodigoBco.AsInteger = 341 then
         begin
           {atribui sequencia do arquivo}
            wARQUIVO := 'R'+FormatFloat('0000000',wSEQ_REMESSA)+'.REM';
         end
      else
      if CCodigoBco.AsInteger = 399 then
         begin
           {atribui sequencia do arquivo}
            wARQUIVO := 'R'+FormatFloat('0000000',wSEQ_REMESSA)+'.REM';
         end
      else
      if CCodigoBco.AsInteger = 104 then
         begin
           {atribui sequencia do arquivo}
            wARQUIVO     := 'CEF'+FormatFloat('00000',wSEQ_REMESSA)+'.REM';
         end
      else
      if CCodigoBco.AsInteger = 237 then
         begin
           {atribui sequencia do arquivo}
           {CB-COBRANCA BRADESCO
            DD - DIA
            MM - MES
            ?? - VARIAVEIS}
           {nome arquivo}


            if ChkRemessaTeste.Checked then
               wARQUIVO := 'CB'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('00',wSEQ_REMESSA)+'.TST'
            else
               wARQUIVO := 'CB'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('00',wSEQ_REMESSA)+'.REM';

         end
       else if CCodigoBco.AsInteger = 900 then
       begin
        if ChkRemessaTeste.Checked then
           wARQUIVO := 'COPEL'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('00',wSEQ_REMESSA)+'.TST'
        else
           wARQUIVO := 'COPEL'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+FormatFloat('00',wSEQ_REMESSA)+'.TXT';


       end
       else if CCodigoBco.AsInteger = 901 then // CELESC
       begin
        if ChkRemessaTeste.Checked then
        begin
          if RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) = '60982352000111' then
             wARQUIVO := 'ECEL'+FormatFloat('0000',wSEQ_REMESSA)+'.ABE'
          else
             wARQUIVO := 'ECEL'+FormatFloat('00',wSEQ_REMESSA)+'.TST';
        end
        else
        begin
          if RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) = '60982352000111' then
             wARQUIVO := 'ECEL'+FormatFloat('0000',wSEQ_REMESSA)+'.ABE'
          else
             wARQUIVO := 'ECEL'+FormatFloat('00',wSEQ_REMESSA)+'.TXT';
        end;


       end
       else if CCodigoBco.AsInteger = 748 then // SICREDE
       begin
         if ChkRemessaTeste.Checked then
           wARQUIVO := 'SICRE'+FormatFloat('00',wSEQ_REMESSA)+'.TST'
        else
           wARQUIVO := 'SICRE'+FormatFloat('00',wSEQ_REMESSA)+'.TXT';
       end
       ELSE
       begin
          if ChkRemessaTeste.Checked then
           wARQUIVO := 'GENERICO'+FormatFloat('00',wSEQ_REMESSA)+'.TST'
        else
           wARQUIVO := 'GENERICO'+FormatFloat('00',wSEQ_REMESSA)+'.TXT';
       end;
     Screen.Cursor    := CrDefault;
   except on E:Exception do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
     end;
   end;
end;

procedure TFormGeradorCNAB.AtualizaArquivoCNABRemessa;
begin
    try
      Screen.Cursor    := CrHourglass;
      DataCadastros1.CdSArquivoCNAB.Close;
      DataCadastros1.CdSArquivoCNAB.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1 ','WHERE A1.CNAB_COD_EMPESA = '''+DataCadastros.CdsEmpresa.FieldByname('EMP_CODIGO').AsString+''' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = ''REMESSA'' AND A1.CNAB_AGENCIA = '''+CbAgencia.Text+''' AND A1.CNAB_CONTA = '''+CbContaCorr.Text+''' AND A1.CNAB_CONTA_DV = '''+CdigitoC.Text+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''','','A1.');
      DataCadastros1.CdSArquivoCNAB.Open;
      if DataCadastros1.CdSArquivoCNAB.IsEmpty then
         begin
             DataCadastros1.CdSArquivoCNAB.Insert;
           if rgLeiaute.ItemIndex = 0 then
                DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO').AsInteger        := 400
             else
              if rgLeiaute.ItemIndex = 1 then
                   DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO').AsInteger     := 240;
         end
      else
         begin
             DataCadastros1.CdSArquivoCNAB.Edit;
           if rgLeiaute.ItemIndex = 0 then
              DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO').AsInteger        := 400
           else
               DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO').AsInteger     := 240;
         end;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_COD_EMPESA').AsInteger       := DataCadastros.CdsEmpresa.FieldByname('EMP_CODIGO').AsInteger;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CODIGO_BANCO').AsInteger     := CCodigoBco.AsInteger;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_COD_ARQUIVO').AsString       := '1';
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString   := 'REMESSA';
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsDateTime            := Date;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA').AsDateTime            := Time;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_COD_SERVICO').AsString       := '01';
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERA_SERVICO').AsString    := 'COBRANCA';
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_AGENCIA').AsString           := CbAgencia.Text;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_AGENCIA_DV').AsString        := CdigitoAge.Text;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CONTA').AsString             := CbContaCorr.Text;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_CONTA_DV').AsString          := CdigitoC.Text;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_QTDE_DUPLICATA').AsInteger   := wQtdeDuplicatas;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString      := wARQUIVO;
      DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_STATUS').AsString            := 'N'; {E = ENVIADO - N = NÃO ENVIADO}
      //DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA_STATUS').AsDateTime
      //DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_HORA_STATUS').AsDateTime
      DataCadastros1.CdSArquivoCNAB.FieldByName('EMP_CODIGO').AsString             := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdSArquivoCNAB.ApplyUpdates(0);
      Screen.Cursor := CrDefault;
    except on E:Exception do
       begin
           //beep;
           Screen.Cursor := CrDefault;
           uteis.erro  (Pchar('Impossível acessar aquivo : '+ #13 + E.message));
       end;
    end;
end;

procedure TFormGeradorCNAB.AtualizaArquivoCNABRemessaDuplicata;
Var
  wNossoNumero : String;
begin
    try
      Screen.Cursor    := CrHourglass;
      DataCadastros1.CdSArquivoCNAB.Close;
      DataCadastros1.CdSArquivoCNAB.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1 ','WHERE A1.CNAB_COD_EMPESA = '''+DataCadastros.CdsEmpresa.FieldByname('EMP_CODIGO').AsString+''' AND A1.CNAB_CODIGO_BANCO = '''+CCodigoBco.Text+''' AND A1.CNAB_LITERAL_ARQUIVO = ''REMESSA'' AND A1.CNAB_AGENCIA = '''+CbAgencia.Text+''' AND A1.CNAB_CONTA = '''+CbContaCorr.Text+''' AND A1.CNAB_CONTA_DV = '''+CdigitoC.Text+''' AND A1.CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''','','A1.');
      DataCadastros1.CdSArquivoCNAB.Open;
      if (DataCadastros1.CdSArquivoCNAB.IsEmpty = False) then
         begin
             if (CdSCrCduplicata.FieldByName('FPC_COBNUM').IsNull = True) then
                wNossoNumero := '0'
             else
                wNossoNumero := CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString;

             wSQL1      := 'Insert Into DUPLICAT_CNAB (DCN_COD_REMESSA,'+
                                                      'DCN_DUPLICATA,'+
                                                      'DCN_DUP_PARCELA,'+
                                                      'DCN_COD_OCORRENCIA,'+
                                                      'DCN_DATA_OCORRENCIA,'+
                                                      'DCN_INSTRUCAO1,'+
                                                      'DCN_INSTRUCAO2,'+
                                                      'DCN_PROTESTAR,'+
                                                      'DCN_DIAS_PROT,'+
                                                      'DCN_NOSSO_NUMERO,'+
                                                      'EMP_CODIGO)';
             //
             //CdSCrCduplicata.FieldByname('FPC_NUMER').AsString+''','''+
             //CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString+''','''+
             wSQL2      := 'values('''+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_REGISTRO').AsString+''','''+
                                      CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+''','''+
                                      CdSCrCduplicata.FieldByname('FPC_NUMER').AsString+''','''+
                                      FormatFloat('00',CCodOcorrencia.AsInteger)+''','''+
                                      DataAmericana(DateToStr(Date))+''','''+
                                      wCOD_INSTRUCAO1+''','''+
                                      wCOD_INSTRUCAO2+''','''+
                                      wProtestar+''','''+
                                      wDIAS_PROTESTO+''','''+
                                      wNossoNumero+''','''+
//                                      CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString+''','''+
                                      dbInicio.Empresa.EMP_CODIGO+''')';
             DataCadastros1.CdSDupliCNAB.Close;
             DataCadastros1.CdSDupliCNAB.CommandText := wSQL1+wSQL2;
             DataCadastros1.CdSDupliCNAB.Execute;
             Screen.Cursor    := CrDefault;
         end
         else
            uteis.aviso('Verifique já foi gerado uma remessa com este numero anteriormente');

    except on E:Exception do
      begin
         //beep;
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar cadastro: '+ #13 + E.message));
      end;
    end;
end;

procedure TFormGeradorCNAB.GerarRemessaCNAB400_CEF;
var lmulta, lvalor : Currency ;
    lDias : Integer;
    lDataMulta : string;
    dataBoleto: Tdate;
begin
   try
    {remessa para teste ou remessa valida}
     if ChkRemessaTeste.Checked then
        wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
     else
        wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
    {codigo Carteira}
     {if CCodCarteira.Text = 'CS' then
        wCOD_CARTEIRA   :=      '11'
     else
     if CCodCarteira.Text = 'CR' then
        wCOD_CARTEIRA   :=      '12'
     else
     if CCodCarteira.Text = 'SR' then
        wCOD_CARTEIRA   :=      '14';
      }

     //
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +PreencheDireita('COBRANCA',15){LITERAL SERVICO}
                       +CbAgencia.Text {Agência da Empresa}
                       +PreencheDireita(EdEmpresa.Text,6){Identificação da Empresa na CAIXA}
                       +'          '{BRANCOS 10 espaços}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(DataCadastros.CdsEmpresa.FieldByname('EMP_RAZAO').AsString,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}
                       +'104'{CODIGO BANCO}
                       +'C ECON FEDERAL '{NOME DO BANCO}
                       +Copy(DateToStr(Date),1,2) {Data da Gravação}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação}
                       +Copy(DateToStr(Date),9,2) {Data da Gravação}
                       +PreencheDireita('',255){BRANCOS}
                       +PreencheDireita('',034){BRANCOS}
                       +FormatFloat('00000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +FormatFloat('000000',wNumeroRegistro){NUMERO SEQUENCIAL DO REGISTRO}
             );
     {***************************************FIM REGISTRO GEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
         begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+'-'+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           {situacao para protesto}
            wCOD_INSTRUCAO1 := '00';
            wCOD_INSTRUCAO2 := '00';
            wDIAS_PROTESTO  := '00';
            {Protestar pelo Cadastro de Clientes}
            if (Rad_Protesto_Cliente.checked ) then {Protesta pelo cadastro de cliente}
               begin
                   {Cliente com Flag = 'S' para Protestar}
                   wProtestar := CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString;
                   {}
                   if (CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'S') then
                      begin
                          {insturcao 01 e dias p/protesto}
                          if (C1Instrucao.AsInteger in [01]) then
                             wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);

                             wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                          {Dias para protesto}
                          if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
                          else
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
                      end
                   else
                      {Cliente com Flag = 'N' para nao Protestar}
                      begin
                          {insturcao 01 e dias p/protesto}
                          if (C1Instrucao.AsInteger in [01]) then
                             wCOD_INSTRUCAO1 := '02';  {Se o Cliente nao for protestado, a instrucao 1 recebera o codigo 02 para devolver em n dias}

                           wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                          {Dias para protesto}
                          if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
                          else
                             {Caso no cadastro do cliente esteja 0 o dias colocar o padrao do gerador}
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
                      end;
               end
            else
               {Protestar pelo Gerador do Arquivo CNAB}
               begin
                   {}
                   wProtestar := 'S';
                   {insturcao 01 e dias p/protesto}
                   if (C1Instrucao.AsInteger in [01]) then
                      wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);

                   wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                   {prazo para protesto}
                   wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
               end;

            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 35 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-34,35)   ;
            {gera registro}

           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lValor := Uteis.RoundTo( ( CdsCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * lMulta / 100 ), -2 );
           lDataMulta:='000000';
           if (lMulta<>0) then
           begin
              lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias);
              lDataMulta := Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2);
           end;
          if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
           dataBoleto := Date
          else
            dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;

            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'02'{codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14){Número de Inscrição CNPF/CNPJ}
                             +CbAgencia.Text     {cod agencia}
                             +PreencheDireita(EdEmpresa.Text,6){Identificação da Empresa na CAIXA}
                             +IIF(wRESPBOLETO = 'B','1','2')    // emissao boleto '1' banco   -  '2'  Empresa
                             +IIF(wRESPBOLETO = 'B','1','0')    // identificação da entrega: ‘0’ = Postagem pelo Beneficiário   ‘1’ = Pagador via Correio
                              // +'  '{BRANCOS}

                             +'00'{COMISSAO DE PERMANÊCIA}
                             +PreencheDireita(iif(CdSCrCduplicata.FieldByname('FPC_NPARCELAS').AsInteger > 1,CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString),25){INDENTIFICAÇÃO DO TITULO NA EMPRESA}
                             +IIF(wRESPBOLETO = 'B','00000000000000000','14'+PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString,015))
                             +'   '{BRANCOS}
                             +PreencheDireita(EdMensagem.Text,30){MENSAGEM}
                             +'01'  //cod carteira - fixo = '01'
                             +'01'  // CCodOcorrencia = 01 - Entrada de titulo
                             //+FormatFloat('01',CCodOcorrencia.AsInteger){CODIGO DE OCORRENCIA - 01 - entradade titulo}
                             +PreencheDireita(iif(CdSCrCduplicata.FieldByname('FPC_NPARCELAS').AsInteger > 1,Trim(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString),Trim(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString)),10){CONTROLE DO PRATICIPANTE - NUMERO DUPLICATA}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'104'{CÓDIGO DO BANCO}
                             +'00000'{AGÊNCIA COBRADORA}
                             +wESPECIE{ESPECIE}
                             +wACEITE{ACEITE}
                             +Copy(DateToStr(dataBoleto),1,2){DIA - Data Emissão}
                             +Copy(DateToStr(dataBoleto),4,2){MES - Data Emissão}
                             +Copy(DateToStr(dataBoleto),9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1{Instrução 01}
                             +wCOD_INSTRUCAO2{Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30) )),13){juros de 1 dia mora}
                             +PreencheZeroEsquerda('0',06){DATA DO DESCONTO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DESCONTO 1}
                             +PreencheZeroEsquerda('0',13){Valor do IOF}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * 0) / 100))),13){ABATIMENTO 1}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02'){Inscrição do sacado}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,35),True),35){Nome do Sacado}
                             +PreencheDireita('',05){BRANCOS}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,35),True),35){Endereco do Sacado}
                             +PreencheDireita('',05){BRANCOS}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wBairro,1,12),True),12) {Bairro sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,1,5),True),05){cep do sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,6,3),True),03){Sufixo do cep do sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             +lDataMulta { data multa }
                             +PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('######0.00',lValor) ), 10) { valor MULTA }
                             +PreencheDireita('',022){sacador avalista}
                             +PreencheZeroEsquerda('0',002){Instrução 03}
                             +wDIAS_PROTESTO{Prazo para Protesto}
                             +'1'{Moeda 1= Ral}
                             +FormatFloat('000000',wNumeroRegistro) );
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',138){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );

     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.Items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(TVisualizar.Handle, EM_EXLINEFROMCHAR, 0,TVisualizar.SelStart);
  CharPos.X := (TVisualizar.SelStart - SendMessage(TVisualizar.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  Status.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

procedure TFormGeradorCNAB.TVisualizarSelectionChange(Sender: tObject);
begin
   UpdateCursorPos;
end;

procedure TFormGeradorCNAB.PreencherOcorrencias(wCOD_BANCO: String);
begin
   try
     Screen.Cursor    := CrHourglass;
      DataCadastros1.CdSOcorrenciaCNAB.Close;
      DataCadastros1.CdSOcorrenciaCNAB.CommandText := 'SELECT * FROM OCORRENCIA_CNAB WHERE OCR_COD_BANCO = '''+wCOD_BANCO+''' AND OCR_TIPO_OCORRENCIA = ''R'' ORDER BY OCR_COD_OCORRENCIA';
      DataCadastros1.CdSOcorrenciaCNAB.Open;
      DataCadastros1.CdSOcorrenciaCNAB.First;
     //
      CbOcorrencia.Items.Clear;
      while not DataCadastros1.CdSOcorrenciaCNAB.Eof do
         begin
            CbOcorrencia.Items.Add(DataCadastros1.CdSOcorrenciaCNAB.FieldByname('OCR_DESCRICAO').AsString);
            DataCadastros1.CdSOcorrenciaCNAB.Next;
         end;
     //
      if wCOD_BANCO = '399' then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end
      else
      if wCOD_BANCO = '104' then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end
      else
      if wCOD_BANCO = '237' then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end
      else
      if wCOD_BANCO = '001' then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end
      else
      if (wCOD_BANCO = '033') OR (wCOD_BANCO = '33') then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end
      else
      if wCOD_BANCO = '341' then
         begin
            CCodOcorrencia.AsInteger := 1;
            CbOcorrencia.ItemIndex   := 0;
         end;


     Screen.Cursor    := CrDefault;
   except on E:EDataBaseError do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
     end;
   end;
end;

procedure TFormGeradorCNAB.CCodOcorrenciaKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         if DataCadastros1.CdSOcorrenciaCNAB.Locate('OCR_COD_OCORRENCIA',FormatFloat('00',CCodOcorrencia.AsInteger),[]) then
            begin
               CbOcorrencia.Text  := DataCadastros1.CdSOcorrenciaCNAB.FieldByname('OCR_DESCRICAO').AsString;
               
            end
         else
            begin
               //beep;
               uteis.aviso('Ocorrêcia informada não cadastrada para o banco !');


            end;
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.CbOcorrenciaClick(Sender: tObject);
begin
   if DataCadastros1.CdSOcorrenciaCNAB.Locate('OCR_DESCRICAO',CbOcorrencia.Text,[]) then
      CCodOcorrencia.AsInteger  := DataCadastros1.CdSOcorrenciaCNAB.FieldByname('OCR_COD_OCORRENCIA').AsInteger;
end;

procedure TFormGeradorCNAB.PreencherInstrucao(wCOD_BANCO: String);

begin
    try
      Screen.Cursor    := CrHourglass;
      if rgLeiaute.ItemIndex = 0 then //cnab 400
         wLeiaute := 1
      else
         wLeiaute := 2;
      DataCadastros1.CdSInstrucaoCNAB.Close;
      DataCadastros1.CdSInstrucaoCNAB.CommandText   := 'select * from INSTRUCAO_CNAB '+
                                                        'where IST_COD_BANCO = '+wCOD_BANCO+ ' and BAN_LEIAUTE = '+ IntToStr(wLeiaute)+
                                                        ' order by IST_CODIGO';
      DataCadastros1.CdSInstrucaoCNAB.Open;
      DataCadastros1.CdSInstrucaoCNAB.First;
      //
      CbInstrucao01.Items.Clear;
      CbInstrucao02.Items.Clear;
      CbInstrucao03.Items.Clear;
      while not DataCadastros1.CdSInstrucaoCNAB.Eof do
       begin
           CbInstrucao01.Items.Add(DataCadastros1.CdSInstrucaoCNAB.FieldByName('IST_DESCRICAO').AsString);
           DataCadastros1.CdSInstrucaoCNAB.Next;
       end;
      //
      CbInstrucao03.Items := CbInstrucao01.Items;
      CbInstrucao02.Items := CbInstrucao01.Items;
      if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C1Instrucao.AsInteger),[]) then
         CbInstrucao01.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;
      //
      if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C2Instrucao.AsInteger),[]) then
         CbInstrucao02.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;

      if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C3Instrucao.AsInteger),[]) then
         CbInstrucao03.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;
      Screen.Cursor    := CrDefault;
    except on E:EDataBaseError do
      begin
         //beep;
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
      end;
    end;
end;

procedure TFormGeradorCNAB.C1InstrucaoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         if C1Instrucao.AsInteger <> 0 then
            begin
               if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C1Instrucao.AsInteger),[]) then
                  begin
                     CbInstrucao01.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Instrução de cobrança não encotrada com o código informado !');


                  end;
            end;
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.CbInstrucao01Click(Sender: tObject);
begin
   if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_DESCRICAO',CbInstrucao01.Text,[]) then
      C1Instrucao.AsInteger := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_CODIGO').AsInteger;
end;

procedure TFormGeradorCNAB.C2InstrucaoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         if C2Instrucao.AsInteger <> 0 then
            begin
               if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C2Instrucao.AsInteger),[]) then
                  begin
                     CbInstrucao02.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Instrução de cobrança não encotrada com o código informado !');


                  end;
            end;
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.C3InstrucaoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      begin
         if C3Instrucao.AsInteger <> 0 then
            begin
               if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_CODIGO',FormatFloat('00',C3Instrucao.AsInteger),[]) then
                  begin
                     CbInstrucao03.Text := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_DESCRICAO').AsString;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Instrução de cobrança não encotrada com o código informado !');


                  end;
            end;
         key := #0;
      end;
end;

procedure TFormGeradorCNAB.CbInstrucao02Click(Sender: tObject);
begin
   if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_DESCRICAO',CbInstrucao02.Text,[]) then
      C2Instrucao.AsInteger := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_CODIGO').AsInteger;
end;

procedure TFormGeradorCNAB.CbInstrucao03Click(Sender: TObject);
begin
  if DataCadastros1.CdSInstrucaoCNAB.Locate('IST_DESCRICAO',CbInstrucao03.Text,[]) then
      C3Instrucao.AsInteger := DataCadastros1.CdSInstrucaoCNAB.FieldByname('IST_CODIGO').AsInteger;
end;

procedure TFormGeradorCNAB.GerarAcbrRemessaGenerica;
var lmulta : Currency ;
    wNossoSantander,lDias : Integer;
    wDigSantander, lDataMulta, lInfoMulta, lPercMulta, lComplCC : string;
    dtDesconto, dtMulta, wDataProtesto : TDate;
    wNumero: string;
    Titulo: TACBrTitulo;
    databoleto : Tdate;
begin
  try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {Literal arquivo}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
      ACBrBoleto1.DirArqRemessa := wDIR; //  FileArqSalvar.FileName;
      {prazo para protesto}
      if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
         wDIAS_PROTESTO := '00'
      else
      if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
         wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
      else
         wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
       If rgLeiaute.ItemIndex = 1 then
          ACBrBoleto1.LayoutRemessa:= c240
       else
          ACBrBoleto1.LayoutRemessa:= c400;

       // MULTA ATRASO
       lMulta :=  StrToFloatDef(edtMulta.Text,0);
       lDias := StrToIntDef(edtMultaDias.Text,0);
       lDataMulta:='000000';

     lInfoMulta:='0';
     lPercMulta:= '0000';
     if (lMulta<>0) then
     begin
          lInfoMulta:='4';
          lPercMulta := PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('#0.00',lMulta) ), 4); // % MULTA   99.99 -> 9999

          lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias);
          lDataMulta := Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2);
     end;

      wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
      wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
      wCOD_INSTRUCAO3 := FormatFloat('00',C3Instrucao.AsInteger);

     {insturcao 01 e dias p/protesto}
      if C1Instrucao.AsInteger in [06] then
         begin
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wCOD_INSTRUCAO1 := '00'
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
         end
      else
         wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
    {insturcao 02 e dias p/protesto}
      if C2Instrucao.AsInteger in [06] then
         begin
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wCOD_INSTRUCAO2 := '00'
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
         end
      else
         wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
      {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;

      //cedente

      with ACBrBoleto1.Cedente do
      begin

        CodigoTransmissao := EdEmpresaTransmissao.Text;
        CNPJCPF := DBInicio.Empresa.CNPJ_CNPF;
        Logradouro :=RetornaEnderecoSemNumero( DBInicio.Empresa.ENDERECO);
        NumeroRes := RetornaNumeroEndereco( DBInicio.Empresa.ENDERECO);
        Bairro := dbinicio.Empresa.BAIRRO;
        cep := DBInicio.Empresa.CEP;
        cidade := DBInicio.Empresa.CIDADE;
        telefone :=DBInicio.Empresa.FONE;
        Complemento := '';
        UF:= dbinicio.Empresa.UF;
        Nome := DBInicio.Empresa.RAZAO;
        if CCodigoBco.Value = 756 then
          Convenio := ''
        else
          Convenio :=   sBanco_CONVENIO;


        if (length(Convenio) = 6) AND (CCodigoBco.Value = 85) then   // BANCO VIACREDI - AILOS
          ACBrBoleto1.Banco.LayoutVersaoLote := 45
        else
          if length(Convenio) = 6 then
            ACBrBoleto1.Banco.LayoutVersaoLote := 60
        else
          if length(Convenio) = 7 then
            ACBrBoleto1.Banco.LayoutVersaoLote := 67
        else
          if CCodigoBco.Value = 756 then
            ACBrBoleto1.Banco.LayoutVersaoLote := 40;


        CodigoCedente :=   EdEmpresa.Text; //codigo do cedente/codigo beneficiário /codigo da empresa no banco
        Agencia := CbAgencia.Text;
        AgenciaDigito := CDigitoAge.Text;
        Conta := CbContaCorr.Text;
        ContaDigito :=  CDigitoC.Text;

        if wRESPBOLETO = 'B' then //banco
          ResponEmissao := tbBancoEmite
        else //empresa
          ResponEmissao := tbCliEmite;
         Modalidade :=  '1'; //COBRANÇA COM REGISTRO
       if wCaracTitulo = 'CS' then
         CaracTitulo := tcSimples
       Else if wCaracTitulo = 'CC' then
         CaracTitulo := tcCaucionada
       Else if UpperCase(wCaracTitulo) = 'CD' then
         CaracTitulo := tcDescontada
       Else
        CaracTitulo :=  tcSimples;

       TipoInscricao := pJuridica;
       TipoDocumento := Escritural;
       TipoCarteira := tctSimples;

      end;

      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin
        Application.ProcessMessages;
        Gauge.Progress   := Gauge.Progress + 1;
        if StrToIntDef(wDIAS_PROTESTO,0) > 0 then
          wDataProtesto := StrToIntDef(wDIAS_PROTESTO,0) + CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime;
        dtMulta := StrToIntDef(edtMultaDias.Text,0) +  CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime ;

         if (CdSCrCduplicata.FieldByname('FPC_DTDESC').AsDateTime > 0) then
         begin
          dtDesconto :=  CdSCrCduplicata.FieldByname('FPC_DTDESC').AsDateTime;

         end
         else
          dtDesconto := 0;

        {Verifica o Endereço de faturamento}
        if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
           begin
               wEndereco := TiraCaracteresEspeciais(RetornaEnderecoSemNumero(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString), True);
               wNumero   := TiraCaracteresEspeciais(RetornaNumeroEndereco(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString), True) ;
               wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
               wCep      := TiraCaracteresEspeciais(ExtrairNumeros (CdSCrCduplicata.FieldByname('CLI_CEP').AsString), True);
               wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
               wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
           end
        else
           begin
               wEndereco := TiraCaracteresEspeciais(RetornaEnderecoSemNumero(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString), True);
               wNumero   := TiraCaracteresEspeciais(RetornaNumeroEndereco(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString), True);
               wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
               wCep      := TiraCaracteresEspeciais(ExtrairNumeros(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString), True);
               wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
               wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
           end;
        if Length(wEndereco)> 40 then
          wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;

        if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
         dataBoleto := Date
        else
          dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;

        Titulo := ACBrBoleto1.CriarTituloNaLista;
        with Titulo do
        begin
          TipoImpressao := tipNormal;
          Vencimento := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime;
          DataDocumento :=dataBoleto ;
          NumeroDocumento :=  CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
          if ACBrBoleto1.Banco.TipoCobranca = cobCaixaEconomica then
          begin
            EspecieDoc := 'DM';
          end
          else
          if (wEspecie = '02') and (ACBrBoleto1.Banco.TipoCobranca = cobBancoCECRED) then
            EspecieDoc :=   'DM'
          else
            EspecieDoc :=   wESPECIE;


          if wACEITE = 'S' then
            Aceite := atSim
          else
            Aceite := atNao;
          DataProcessamento := Now;
          Carteira := CNumCarteira.Text;
          NossoNumero := CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString;
          ValorDocumento := CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency;
          Sacado.NomeSacado := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString, True);
          Sacado.CNPJCPF := RetirarMascaraCNPJ_INSC(CdSCrCduplicata.FieldByname('CLI_CGC').AsString);
          Sacado.Pessoa := IIF(Length(Sacado.CNPJCPF)=14,pJuridica,pFisica  ) ;
          Sacado.Logradouro := wEndereco;
          Sacado.Numero := wNumero;
          Sacado.Bairro := wBairro;
          Sacado.Cidade :=wCidade;
          Sacado.UF := wUf;
          Sacado.CEP := wCep;
          ValorAbatimento := StrToCurrDef('0', 0);

          // Código da baixa/devolução posição 224 a 224 e 225 a 227
          DataBaixa := Vencimento + DBInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_DIAS_PARA_BAIXA FROM BAN0000 WHERE BAN_COD_APELIDO = ' + IntToStr(ACBrBoleto1.Banco.BancoClass.Numero) ) ;

          LocalPagamento := CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString;
          case DBInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_TIPO_JUROS FROM BAN0000 WHERE BAN_COD_APELIDO = ' + IntToStr(ACBrBoleto1.Banco.BancoClass.Numero) ) of
             1:
             begin
               CodigoMoraJuros := cjValorDia;
               CodigoMora := '1';
               ValorMoraJuros := ValorDocumento * (CJurosMora.Value / 100) / 30 ;
             end;
             2:
             begin
               CodigoMoraJuros := cjTaxaMensal;
               CodigoMora := '2';
               ValorMoraJuros := CJurosMora.Value;
             end;
             3:
             begin
               CodigoMoraJuros := cjIsento;
               CodigoMora := '3';
               ValorMoraJuros := 0 ;
             end;
          end;



            if (Rad_Protesto_Cliente.checked ) then {Protesta pelo cadastro de cliente}
               begin
                   {Cliente com Flag = 'S' para Protestar}
                   wProtestar := CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString;
                   {}
                   if (CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'S') then
                      begin
                          {insturcao 01 e dias p/protesto}
                          if (C1Instrucao.AsInteger in [01]) then
                             wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);

                             wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                          {Dias para protesto}
                          if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
                          else
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
                      end
                   else
                      {Cliente com Flag = 'N' para nao Protestar}
                      begin
                          {insturcao 01 e dias p/protesto}
                          if (C1Instrucao.AsInteger in [01]) then
                             wCOD_INSTRUCAO1 := '02';  {Se o Cliente nao for protestado, a instrucao 1 recebera o codigo 02 para devolver em n dias}

                           wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                          {Dias para protesto}
                          if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
                          else
                             {Caso no cadastro do cliente esteja 0 o dias colocar o padrao do gerador}
                             wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
                      end;
               end
            else
               {Protestar pelo Gerador do Arquivo CNAB}
               begin
                   {}
                   wProtestar := 'S';
                   {insturcao 01 e dias p/protesto}
                   if (C1Instrucao.AsInteger in [01]) then
                      wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);

                  //  wCOD_INSTRUCAO2 := '00';       // fixo no manual 00

                   {prazo para protesto}
                   wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
               end;






          // DiasDeProtesto   :=  CPrazoProtesto.AsInteger;
//          if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
//             DiasDeProtesto := CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger
//          else
//             DiasDeProtesto := CPrazoProtesto.AsInteger;



          DiasDeProtesto := StrToInt(wDIAS_PROTESTO);
          if (Rad_Protesto_Gerador.checked ) then
          begin
            if wCOD_INSTRUCAO1 = '00' then
              CodigoNegativacao := cnNenhum
            else
            if wCOD_INSTRUCAO1 = '01' then
              CodigoNegativacao := cnProtestarCorrido
            else
            if wCOD_INSTRUCAO1 = '02' then
              CodigoNegativacao := cnProtestarUteis
            else
            if wCOD_INSTRUCAO1 = '03' then
              CodigoNegativacao := cnNaoProtestar
            else
            if wCOD_INSTRUCAO1 = '04' then
              CodigoNegativacao := cnNegativar
            else
            if wCOD_INSTRUCAO1 = '05' then
              CodigoNegativacao := cnNaoNegativar
            else
            if wCOD_INSTRUCAO1 = '06' then
              CodigoNegativacao := cnCancelamento;
          end;
         DiasDeNegativacao := CPrazoProtesto.AsInteger;








          if ACBrBoleto1.Banco.TipoCobranca = cobCaixaEconomica then
          begin
           // versao Versão ‘101’ 6 digitos
           //versao Versão ‘107’ 7 ditigos
            if Length(EdEmpresa.text) = 7 then
            begin
              if ACBrBoleto1.LayoutRemessa = c400 then
                ACBrBoleto1.Banco.LayoutVersaoArquivo := 007
              else
                ACBrBoleto1.Banco.LayoutVersaoArquivo := 107
            end
            else
            begin
              if ACBrBoleto1.LayoutRemessa = c400 then
                ACBrBoleto1.Banco.LayoutVersaoArquivo := 0
              else
                ACBrBoleto1.Banco.LayoutVersaoArquivo := 101  ;
            end;
          end;




          ValorDesconto := CdSCrCduplicata.FieldByname('FPC_DESCTO').AsCurrency;
          ValorAbatimento := 0;
          if CCodigoBco.Value = 756 then
            DataMoraJuros := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime + 1
          else
            DataMoraJuros := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime;
          DataDesconto := dtDesconto;
          DataAbatimento := 0;
          DataProtesto := wDataProtesto;
          PercentualMulta := StrToCurrDef(edtMulta.Text, 0);
          DataMulta := dtMulta;
          Mensagem.Text := EdMensagem.Text;
          OcorrenciaOriginal.Tipo := toRemessaRegistrar;
          Instrucao1 := PadRight(trim(wCOD_INSTRUCAO1), 2, '0');
          Instrucao2 := PadRight(trim(wCOD_INSTRUCAO2), 2, '0');
          Instrucao3 := PadRight(trim(wCOD_INSTRUCAO3),2 ,'0');

          ACBrBoleto1.AdicionarMensagensPadroes(Titulo, Mensagem);
        end;
       {atualiza arquivo duplicatas com status de remessa}
        if ChkRemessaTeste.Checked = False then
           AtualizaRemessaDuplicata;
       {atualiza arquivo duplicata CNAB}
        AtualizaArquivoCNABRemessaDuplicata;

        CdSCrCduplicata.Next;
        Gauge.Progress   := Gauge.Progress + 1;
        if wCANCELAR  then
         begin

            if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo '+ rgLeiaute.Items[rgLeiaute.ItemIndex]+ ' ?') = mryes then
             begin

                BitProcessar.Enabled       := True;
                BitCancelarPro.Enabled     := False;
                BitCancelar.Enabled        := True;
                BitVisualizar.Enabled      := False;
                BitImprimir.Enabled        := False;
                BitTipoImpressao.Enabled   := False;
                LimpaCamposGera;
                uteis.aviso('Processo cancelado pelo usuário !');
                exit;
             end
            else
              wCANCELAR  := False;

         end;
      end;
     wARQUIVO_LIMPAR := ACBrBoleto1.GerarRemessa(wSEQ_REMESSA);
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;

     if not wCANCELAR then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;


end;

procedure TFormGeradorCNAB.GerarRemessaCELESC;
Var wMovCelesc, contrato, contaGerencial, nomeCliente: string;
begin
  try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
       wNumeroRegistro  := 1;
       Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
       Gauge.Progress   := 0;
       CValorTotal.Clear;
       CRegistro.Clear;

       wCOD_INSTRUCAO1 := '00';
       wCOD_INSTRUCAO2 := '00';
       wNossoNumero := 0;
       wProtestar := 'N';
       wDIAS_PROTESTO := '0';
     {Literal arquivo}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO 1 -HEADER DA REMESSA }

     // já estava fixo no código
     if RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) = '92736040000890' then
     begin
      contrato := PreencheDireita('01000000002018396850088300SOC LIT CARIT SANTO AGOSTINHO',56);
      nomeCliente := PreencheDireita(copy('SOCIEDADE LITERARIA',1,20),20);
      contaGerencial := '11307P81';    
     end;

     // novo
     if RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) = '60982352000111' then
     begin
      contrato := PreencheDireita('01000000002022895024477100ABE',56);
      nomeCliente := PreencheDireita(copy('ASSOCIACAO BRASILEIR',1,20),20);
      contaGerencial := '11307ABE';    
     end;


     
      Writeln(wREGISTRO,'1'
              +contrato // NUMERO DO CONTRATO
              +'0001' //NUMERO DA CONCESSIONARIA
              +Copy(DateToStr(Date),1,2) {Data DD - dia }   //DATADEENVIO  DDMMAAAA
              +Copy(DateToStr(Date),4,2) {Data MM - mes }
              +Copy(DateToStr(Date),7,4) {Data AAAA - ano}
              +PreencheDireita('R$',6) //SIGLA DA MOEDA
              +PrencheZeroEsquerda(IntToStr(wSEQ_REMESSA),6)
              +PreencheDireita('',2)
              +nomeCliente  //Nome do Cliente Contratante.
              +PreencheDireita('',40)// livre
              +'1' // tipo arquivo remessa
              +PrencheZeroEsquerda('1',6)
          );
      case rgMovCopel.ItemIndex of
       0: wMovCelesc := '74';
       1: wMovCelesc := '78';
       2: wMovCelesc := '77';  //cancelamento
      end;
      wNumeroRegistro := 2;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin

        Application.ProcessMessages;
       { REGISTRO 2 - detail, VALOR A SER LANÇADO NA FATURA}

        Writeln(wREGISTRO,'2'
                         +PreenchezeroEsquerda(inttostr(CdSCrCduplicata.FieldByname('PED_UND_CONSUMIDORA').AsInteger),13)
                         +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),9){valor da parcela}
                         +Copy(DateToStr(Date),1,2) {Data DD - dia }   //DATADEENVIO  DDMMAAAA
                         +Copy(DateToStr(Date),4,2) {Data MM - mes }
                         +Copy(DateToStr(Date),7,4) {Data AAAA - ano}
                         +wMovCelesc
                         +contaGerencial
                         +iif(wMovCelesc<>'77','00','19') //Cobertura/Ocorrência
                         +PreencheDireita(iif(wMovCelesc='77','NAO INFORMADO',''),30) //Descrição da Cobertura/Ocorrência
                         +PreenchezeroEsquerda('0',10)
                         +PreenchezeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CODIGO').AsString,6)
                         +PreencheDireita( COPY(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,1,12),12)
                         +copy(DateToStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime),1,2) {data de emissao DD}
                         +copy(DateToStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime),4,2) {data de emissao mes MM}
                         +copy(DateToStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime),7,4) {data de emissao ano AAAA}
                         +'00000000' //FIM DA VIGENCIA
                         +IIF(Length(CdSCrCduplicata.FieldByname('CLI_CGC').AsString)=14,
                                  Copy(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,13,2),PreencheDireita('',2) )
                         +PreencheDireita('',2) //LIVRE
                         +PreenchezeroEsquerda('',13)// Código Unidade consumidora anterior.
                         +PreenchezeroEsquerda('',10)// Número do cliente anterior/Unidade Administrativa
                         +PreenchezeroEsquerda(IntToStr(wNumeroRegistro),6)
                       );
        Inc(wNumeroRegistro,1);
        CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);

        if ChkRemessaTeste.Checked = False then
           AtualizaRemessaDuplicata;
       {atualiza arquivo duplicata CNAB}
        AtualizaArquivoCNABRemessaDuplicata;
        CdSCrCduplicata.Next;

        Gauge.Progress   := Gauge.Progress + 1;
        if wCANCELAR = True then
           begin
              if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CELESC ?') = mryes then
                 begin
                    BitProcessar.Enabled       := True;
                    BitCancelarPro.Enabled     := False;
                    BitCancelar.Enabled        := True;
                    BitVisualizar.Enabled      := False;
                    BitImprimir.Enabled        := False;
                    BitTipoImpressao.Enabled   := False;
                    LimpaCamposGera;
                    uteis.aviso('Processo cancelado pelo usuário !');
                    exit;
                 end
              else
                 begin
                    wCANCELAR  := False;
                 end;
           end;
      end;
        //FOOTER REGISTRO 9
          Writeln(wREGISTRO,'9'
                  +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CValorTotal.Value)),11)
                  +PreencheDireita('',132)
                  +PreenchezeroEsquerda(IntToStr(wNumeroRegistro),6)    );
     except on E:EDataBaseError do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
     end;


     end;

  finally
   Screen.Cursor    := crDefault;
   CloseFile(wREGISTRO);
   if wCANCELAR  = False then
    begin
       //beep;
       uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                   +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
       BitProcessar.Enabled       := False;
       BitCancelarPro.Enabled     := False;
       BitCancelar.Enabled        := True;
       BitVisualizar.Enabled      := True;
       BitImprimir.Enabled        := True;
       BitTipoImpressao.Enabled   := True;
       wCANCELAR                  := False;
    end
    else
    begin
       BitProcessar.Enabled       := False;
       BitCancelarPro.Enabled     := False;
       BitCancelar.Enabled        := True;
       BitVisualizar.Enabled      := False;
       BitImprimir.Enabled        := False;
       BitTipoImpressao.Enabled   := False;
       wCANCELAR                  := False;
    end;
  end;


end;

procedure TFormGeradorCNAB.GerarRemessaCNAB240_BRADESCO;
var lmulta : Currency ;
    lDias : Integer;
    lDescMulta, lNum : string;
    wTipoInscricao : string;
begin
 try
     wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}

     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'0000' {LOTE DO SERVIÇO}
                       +'0'{Tipo de Registro }
                       +PreencheDireita('',9) {uso exclusivo da febraban}
                       +'2' {cnpj}
                       +RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF) {numero}
                       +PreenchezeroEsquerda(sBanco_CONVENIO,20)   /// codigo do convenio
                       +PreenchezeroEsquerda(CbAgencia.Text,005){IDENT. EMP. - COD. AGENCIA CEDENTE}
                       +copy(CdigitoAge.Text,1,1){DV-Agencia}
                       +PreencheZeroEsquerda(CbContaCorr.Text,12){CONTA CORRENTE}
                       +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA 1 digito}
                       +' ' {DIGITO AGENCIA/conta 1 digito}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(dbinicio.Empresa.RAZAO,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}
                       +PreencheDireita('BRADESCO',30)
                       +PreencheDireita('',10) {uso exclusivo da febraban}
                       +'1' {Código da Remessa}
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD - dia }
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM - mes }
                       +Copy(DateToStr(Date),7,4) {Data da Gravação - AA - ano}
                       +FormatDateTime('hh',now)   {Hora da Gravação - hh}
                       +FormatDateTime('nn',now)   {Hora da Gravação - minutos}
                       +FormatDateTime('ss',now)   {Hora da Gravação - segundos}
                       +FormatFloat('000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA -NSA}
                       +'084' {VERSÃO LAYOUT DO ARQUIVO}
                       +'06250' { DENSIDADE DO ARQUIVO}
                       +PreencheDireita('',20){BRANCOS - RESERVA AO BANCO}
                       +PreencheDireita('',20){BRANCOS - RESERVADO A EMPRESA}
                       +PreencheDireita('',29) {uso exclusivo da febraban}
             );
    { GERAR REGISTRO-HEADER DO LOTE }
      Writeln(wREGISTRO,'237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'0001' {LOTE DO SERVIÇO}
                       +'1'{Tipo de Registro }
                       +'R' {TIPO DE OPERACAO - REMESSA}
                       +'01'{Tipo de SERVIÇO }
                       +PreencheDireita('',2) {uso exclusivo da febraban}
                       +'042' {VERSÃO}
                       +PreencheDireita('',1) {uso exclusivo da febraban}
                       +'2' {cnpj}
                       +PreenchezeroEsquerda(RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF),15) {numero}
                       +PreenchezeroEsquerda(sBanco_CONVENIO,20) // codigo do convenio
                       +PreenchezeroEsquerda(CbAgencia.Text,005){IDENT. EMP. - COD. AGENCIA CEDENTE}
                       +copy(CdigitoAge.Text,1,1){DV-Agencia}
                       +PreencheZeroEsquerda(CbContaCorr.Text,12){CONTA CORRENTE}
                       +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA 1 digito}
                       +' ' {DIGITO AGENCIA/conta 1 digito}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(dbinicio.Empresa.RAZAO,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}

                       +PreencheDireita(Copy(TiraCaracteresEspeciais(EdMensagem.Text,true),1,80),80){MENSAGEM 1 E MENSAGEM 2 - 40 CARACTERES CADA MENSAGEM}
                       +FormatFloat('00000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA }
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                       +Copy(DateToStr(Date),7,4) {Data da Gravação - AA}
                       +'00000000'
                       +PreencheDireita('',33) {uso exclusivo da febraban}
                       );

     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);

            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := '00';
           if Length(RetirarMascaraCNPJ_INSC(CdSCrCduplicata.FieldByName('CLI_CGC').AsString)) = 14 then
              wTipoInscricao := '2'   //cnpj
           else
              wTipoInscricao := '1' ;

           wCOD_INSTRUCAO1:= PreenchezeroEsquerda(C1Instrucao.Text,2);
           wCOD_INSTRUCAO2:= '00';
           wProtestar := 'N';
           wDIAS_PROTESTO := '00';
           // wNossoNumero:= CdSCrCduplicata.FieldByName('FPC_COBNUM').AsInteger;  // tava dando erro de conversão
           wNossoNumero := StrToIntDef(CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString, 0);
            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString,true);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString,true);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, true);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString,true);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString,true);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString,true);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString,true);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;
           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lDescMulta:='00000';
           if (lMulta<>0) then
              lDescMulta := '2'+PreencheZeroEsquerda( ExtrairNumeros( FormatFloat ('00.00', lmulta ) ),4);

           lNum :=  stringreplace(   trim(CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString) , '-' , '', [rfReplaceall] );
           if Length(lNum)>12 then
              lNum := Copy ( lNum, 3, 12 )
           Else
              lNum := PreencheZeroEsquerda(lNum,12);

           Inc(wNumeroRegistro);
           {gera registro TIPO DE REGISTRO 3 - SEGMENTO P}
            Writeln(wREGISTRO,
                       '237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'0001' {LOTE DO SERVIÇO}
                       +'3'{Tipo de Registro }
                       +FormatFloat('00000',wQtdeDuplicatas)
                       +'P' { COD SEGMENTO DO REGISTRO DO DETALHE}
                       +PreencheDireita('',1) {uso exclusivo da febraban}
                       +PreencheEsquerda(wCOD_INSTRUCAO1,2)
                       +PreenchezeroEsquerda(CbAgencia.Text,5){IDENT. EMP. - COD. AGENCIA CEDENTE}
                       +copy(CdigitoAge.Text,1,1){DV-Agencia}
                       +PreencheZeroEsquerda(CbContaCorr.Text,12){CONTA CORRENTE}
                       +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA 1 digito}
                       +' ' {DIGITO AGENCIA/conta 1 digito}
                       +PrencheZeroEsquerda(CCodCarteira.Text,3) // IDENTIFICAÇÃO DO TÍTULO codigo do produto / carteira    - posicao 38 - 40
                       +PreencheZeroEsquerda(IntToStr(wNossoNumero),17) {IDENTIFICAÇÃO DO TÍTULO}
                       +'1' //CODIGO DA CARTEIRA
                       +'1' {forma de cadastramento - com registro}
                       +'2' { tipo de documento - tradicional}
                       +iif (wRESPBOLETO = 'B', '1','2') // CONDICAO PARA EMISSAO BOLETO - 1 = BANCO EMITE/2=CLIENTE EMITE
                       +iif (wRESPBOLETO = 'B', '1','2') // DISTRIBUICAO - 1 = BANCO EMITE/2=CLIENTE EMITE
                       +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,15){CONTROLE DO PRATICIPANTE - NUMERO DOCUMENTO COBRANÇA}
                       +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                       +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                       +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,7,4){ANO - vencimento duplicata}
                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),15){valor do titulo}
                       +'00000'{IDENT. EMP. - COD. AGENCIA CEDENTE}
                       +' '{DV-Agencia}
                       +PreencheEsquerda(wESPECIE,2) {Espécie DIFERENTE PARA 240 E 400}
                       +'N'
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                       +Copy(DateToStr(Date),7,4) {Data da Gravação - AA}
                       +'3' {CODIGO DO JUROS ISENTO}
                       +PreenchezeroEsquerda('',8){DATA DO JUROS}
                       +PreenchezeroEsquerda('',15){VALOR DO JUROS}
                       +'0' {CODIGO DO DESCONTO -SEM DESCONTO}
                       +PreenchezeroEsquerda('',8){DATA DO desconto}
                       +PreenchezeroEsquerda('',15){VALOR DO DESCONTO}
                       +PreenchezeroEsquerda('',15){VALOR DO IOF}
                       +PreenchezeroEsquerda('',15){VALOR DO ABATIMENTO}
                       +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,25){CONTROLE DO PRATICIPANTE - NUMERO DOCUMENTO COBRANÇA}
                       +'3' {NÃO PROTESTAR- DOACOES}
                       +'00'{NUMERO DO PROTESTO}
                       +'2' {CODDIGO DABAIXA}
                       +PreencheDireita('',3) {DIAS PARA BAIXA}
                       +'09'{tipo de moeda 9 = Real}
                       +PreenchezeroEsquerda('',10)
                       +PreencheDireita('',1) {uso exclusivo da febraban}
                   );
           Inc(wQtdeDuplicatas);
           Inc(wNumeroRegistro);
           {TIPO 3 SEGUIMENTO Q }
            Writeln(wREGISTRO,
                       '237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'0001' {LOTE DO SERVIÇO}
                       +'3'{Tipo de Registro }
                       +FormatFloat('00000',wQtdeDuplicatas)
                       +'Q' { COD SEGMENTO DO REGISTRO DO DETALHE - Q}
                       +PreencheDireita('',1) {uso exclusivo da febraban}
                       +PreencheEsquerda(wCOD_INSTRUCAO1,2)
                       +wTipoInscricao
                       +PreenchezeroEsquerda(RetirarMascaraCNPJ_INSC(CdSCrCduplicata.FieldByName('CLI_CGC').AsString),15)
                       +PreencheDireita(copy(TiraCaracteresEspeciais(CdSCrCduplicata.FieldByName('CLI_RAZAO').AsString,true),1,40),40)
                       +PreencheDireita(wEndereco,40)
                       +PreencheDireita(copy(TRIM(wBairro),1,15),15)
                       +PreencheDireita(copy(wCep,1,5),5)
                       +PreencheDireita(copy(wcep,6,3),3)
                       +PreencheDireita(copy(TRIM(wCidade),1,15),15)
                       +PreencheDireita(copy(TRIM(wUf),1,2),2)
                       +'0' {outro beneficiario, sacador avalista}
                       +PreenchezeroEsquerda('',15)
                       +PreencheDireita('',40)
                       +'000'
                       +PreencheDireita('',20)
                       +PreencheDireita('',8) {uso exclusivo da febraban}

            );


           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
      end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER LOTE}
      Writeln(wREGISTRO,
                        '237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'0001' {LOTE DO SERVIÇO}
                       +'5' { TIPO DE REGISTRO           }
                       +PreencheDireita('',9) {uso exclusivo da febraban}
                       +FormatFloat('000000',wNumeroRegistro)
                       +FormatFloat('000000',wQtdeDuplicatas/2)
                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00', CValorTotal.Value)),17)
                       +PreenchezeroEsquerda('',6)
                       +PreenchezeroEsquerda('',17)
                       +PreenchezeroEsquerda('',6)
                       +PreenchezeroEsquerda('',17)
                       +PreenchezeroEsquerda('',6)
                       +PreenchezeroEsquerda('',17)
                       +PreencheDireita('',8)
                       +PreencheDireita('',117)

             );
     Inc(wNumeroRegistro,2); // vai adicionar o header do arquivo e e trailer do arquivo
     { GERAR REGISTRO TRAILER DO ARQUIVO }
      Writeln(wREGISTRO,
                         '237' {CODIGO DO BANCO DE COMPENSAÇÃO}
                       +'9999' {LOTE DO SERVIÇO}
                       + '9' {TIPO DE REGISTRO}
                       +PreencheDireita('',9) {uso exclusivo da febraban}
                       +FormatFloat('000000',1)        {QUANTIDADE DE LOTES}
                       +FormatFloat('000000',wNumeroRegistro)  {QUANTIDADE DE LINHAS}
                       +PrencheZeroEsquerda('',6)
                       +PreencheDireita('',205)
                     );
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.Items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end
end;

procedure TFormGeradorCNAB.GerarRemessaCNAB400_BRADESCO;
var lmulta : Currency ;
    lDias : Integer;
    lDescMulta, lNum, dig : string;
    dataBoleto: TDate;

function CalDigVerificador( const nossonumero: string): string;
begin
  ACBrValidador1.Modulo.CalculoPadrao;
  ACBrValidador1.Modulo.MultiplicadorFinal := 7;
  ACBrValidador1.Modulo.Documento := nossonumero;
  ACBrValidador1.Modulo.Calcular;

   if ACBrValidador1.Modulo.ModuloFinal = 1 then
      Result:= 'P'
   else
      Result:= IntToStr(ACBrValidador1.Modulo.DigitoFinal);
end;
begin
   try
     wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}

     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +PreencheDireita('COBRANCA',15){LITERAL SERVICO}
                       +PreencheZeroEsquerda(EdEmpresa.Text,20){CÓDIGO DA EMPRESA}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(dbinicio.Empresa.RAZAO,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}
                       +'237'{CODIGO BANCO}
                       +'BRADESCO       '{NOME DO BANCO}
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                       +Copy(DateToStr(Date),9,2) {Data da Gravação - AA}
                       +PreencheDireita('',08){BRANCOS}
                       +PreencheDireita('MX',02){INDENTIFICACAO DO SISTEMA}
                       +FormatFloat('0000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +PreencheDireita('',255){BRANCOS}
                       +PreencheDireita('',022){BRANCOS}
                       +FormatFloat('000000',wNumeroRegistro){NUMERO SEQUENCIAL DO REGISTRO}
             );
     {***************************************FIM REGISTRO GEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
         begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := '00';
            wCOD_INSTRUCAO2 := '00';
            wDIAS_PROTESTO  := '00';
           {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
          {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO2 := '00'
                  else
                     wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
           {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;

           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lDescMulta:='00000';
           if (lMulta<>0) then
              lDescMulta := '2'+PreencheZeroEsquerda( ExtrairNumeros( FormatFloat ('00.00', lmulta ) ),4);

           lNum :=  stringreplace(   trim(CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString) , '-' , '', [rfReplaceall] );
           if Length(lNum)>11 then
              lNum := Copy ( lNum, 3, 11 )
           Else
              lNum := PreencheZeroEsquerda(lNum,11);

            dig :=   CalDigVerificador(PreencheZeroEsquerda(CNumCarteira.Text,002)+ lNum);

            if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
             dataBoleto := Date
            else
              dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;
           {gera registro}
            Writeln(wREGISTRO,'1'{codigo do registro}
                             +PreencheDireita('',005){AGECIA DE DÉBITO DO SACADO}
                             +PreencheDireita('',001){DIGITO AGENCIA SACADO}
                             +PreencheDireita('',005){RAZAO DA CONTA DO SACADO}
                             +PreencheDireita('',007){CONTA CORRENTE SACADO}
                             +PreencheDireita('',001){DIGITO CONTA CORRENTE DO SACADO}

                             +'0'{IDENT. EMP. - ZERO}
                             +PreencheZeroEsquerda(CNumCarteira.Text,003){IDENT. EMP. - COD. CARTEIRA}
                             +PreencheZeroEsquerda(TRIM(CbAgencia.Text),005){IDENT. EMP. - COD. AGENCIA CEDENTE}
                             +PreencheZeroEsquerda(CbContaCorr.Text,007){IDENT. EMP. - CONTA CORRENTE}
                             +PreencheDireita(CdigitoC.Text,1){IDENT. EMP. - DIGITO CONTA}


                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,25){CONTROLE DO PRATICIPANTE - NUMERO DUPLICATA}
                             +'000'{COD. DO BANCO SER DEBITADO}

                             +lDescMulta // multa atraso   pos 66-70

                             +lNum //NOSSO NUMERO (com digito)
                             +copy(dig,1,1) //digito verificador
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',(0 / 30))),10){VALOR DESCONTO BONIF. DIA}

                             +iif (wRESPBOLETO = 'B', '1','2') // CONDICAO PAARA EMISSAO BOLETO - 1 = BANCO EMITE/2=CLIENTE EMITE
                             +'N'{IDENT. SE EMITE BOLETO PARA DEBITO AUTOMATICO}
                             +PreencheDireita('',010){BRANCOS}
                             +' '{IDENT; RATEIO CREDITO}
                             +'0'{END. P/AVISO DO DEBITO}
                             +PreencheDireita('',002){BRANCOS}
                             +FormatFloat('00',CCodOcorrencia.AsInteger){CODIGO DE OCORRENCIA}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){NUM. DOCUMENTO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +PreencheZeroEsquerda('0',3){BANCO ENCARREG. COBRANCA}
                             +PreencheZeroEsquerda('0',5){AGENCIA DEPOSITARIA}
                             +wESPECIE {Espécie 01-Duplicata Mercantil / 02-Nota Promissoria / 03-nota seguro}
                             +'N'  {A = PARA ACEITO - N = PARA NÃO ACEITO}
                             +Copy(DateToStr(dataBoleto),1,2){DIA - Data Emissão}
                             +Copy(DateToStr(dataBoleto),4,2){MES - Data Emissão}
                             +Copy(DateToStr(dataBoleto),9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1{Instrução 01}
                             +wDIAS_PROTESTO {dias protesto}{Instrução 02} //FormatFloat('00',C2Instrucao.AsInteger){Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30) )),13){VALOR A SER COBRADO POR DIA}
                             +PreencheZeroEsquerda('0',6){DATA LIMETE P/CONCESSAO DE DESCONTO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DESCONTO}
                             +PreencheZeroEsquerda('0',13){VALOR DO IOF}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DO ABATIMENTO}
                             //+PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',((CdSCrCduplicata.FieldByname('FAT.FPC_VLPARC').AsCurrency * CdSCrCduplicata.FieldByname('CRC_DESCONTO').AsCurrency) / 100))),13){ABATIMENTO 1}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02'){Inscrição do sacado}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,40),True),40){Nome do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,40),True),40){Endereco do Sacado}
                             +PreencheDireita(Copy(' ',1,12),12){1º mensagem}
                             +PreencheZeroEsquerda(Copy(wCep,1,5),05){cep do sacado}
                             +PreencheZeroEsquerda(Copy(wCep,6,3),03){Sufixo do cep do sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(EdMensagem.Text,1,60),true),60){2º mensagem}
                             +FormatFloat('000000',wNumeroRegistro)
                   );
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',138){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );

     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.GerarRemessaCNAB400_ITAU;
var lmulta, lvalor : Currency ;
    lDias : Integer;
    lDataMulta : string;
    dataBoleto : Tdate;
begin
   try
    { o envio de remessa TESTE é selecionado no proprio site do banco itau - marcar remessa teste }
     wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}

     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +PreencheDireita('COBRANCA',15){LITERAL SERVICO}
                       +PreencheZeroEsquerda(CbAgencia.Text,4){AGENCIA MANTENEDORA DA CONTA}
                       +'00'{COMP. ZERO}
                       +PreencheZeroEsquerda(CbContaCorr.Text,5){CONTA CORRENTE}
                       +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                       +PreencheDireita('',008){BRANCOS}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(DataCadastros.CdsEmpresa.FieldByname('EMP_RAZAO').AsString,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}
                       +'341'{CODIGO BANCO}
                       +'BANCO ITAU SA  '{NOME DO BANCO}
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                       +Copy(DateToStr(Date),9,2) {Data da Gravação - AA}
                       +PreencheDireita('',255){BRANCOS}
                       +PreencheDireita('',039){BRANCOS}
                       +FormatFloat('000000',wNumeroRegistro){NUMERO SEQUENCIAL DO REGISTRO}
             );
     {***************************************FIM REGISTRO GEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
         begin
           {display na tela}

            Application.ProcessMessages;
           {Limpar as variaveis}
            wEndereco := '';
            wBairro   := '';
            wCep      := '';
            wCidade   := '';
            wUf       := '';
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            //verificar se já não gerou o nosso numero pois se ja gerou então o usa , senao o sistema ainda vai gerar
            if (CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString <> '') then
              begin
                wNossoNumero := StrToInt(Copy(CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString,0,11));
              end;

            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := '00';
            wCOD_INSTRUCAO2 := '00';
            wDIAS_PROTESTO  := '00';
           {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [09] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
          {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [09] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO2 := '00'
                  else
                     wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            {prazo para protesto}
            wDIAS_PROTESTO := '00';
            if rad_protesto_gerador.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2)
            else
             if (CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'S') and (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
              if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N'  then
                 wDIAS_PROTESTO := '00';

            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;
           {gera registro}

            wESPECIE:=StrZero( Trim(wESPECIE), 2 );
            if wACEITE='' then
               wAceite := 'N';
            wCOD_INSTRUCAO1:=StrZero( wCOD_INSTRUCAO1 , 2 );
            wCOD_INSTRUCAO2:=StrZero( wCOD_INSTRUCAO2 , 2 );
            wDIAS_PROTESTO :=StrZero( wDIAS_PROTESTO , 2 );
            if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
              dataBoleto := Date
            else
              dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;

            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'02'{codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14){Número de Inscrição CNPF/CNPJ}
                             +PreencheZeroEsquerda(CbAgencia.Text,4){AGENCIA MANTENEDORA DA CONTA}
                             +'00'{COMPL. REGISTRO ZERO}
                             +PreencheZeroEsquerda(CbContaCorr.Text,5){CONTA CORRENTE}
                             +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                             +PreencheDireita('',004){BRANCOS}
                             +PreencheZeroEsquerda('0',004){INSTRUCAO ALEGAÇÃO}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,25){IDENTIFICACAO DO TITULO - NUMERO DUPLICATA}
                             +PreencheZeroEsquerda(IntToStr(wNossoNumero),008){NOSSO NUMERO - IDENT. DO TITULO NO BANCO}
//                             +PreencheZeroEsquerda('0',008){NOSSO NUMERO - IDENT. DO TITULO NO BANCO}
                             +PreencheZeroEsquerda('0',013){QTDE DE MOEDA}
                             +PreencheZeroEsquerda(CNumCarteira.Text,003){NUM. CARTEIRA}
                             +PreencheDireita('',021){USO BANCO}
                             +PreencheDireita(CCodCarteira.Text,001){COD. CARTEIRA}
                             +PreencheZeroEsquerda(CCodOcorrencia.Text,02){COD. OCORRENCIA}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){NUM. DOCUMENTO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'341'   {CODIGO BANCO COMPENSAÇÃO}
                             +'00000' {AGENCIA COBRADORA}
                             +wESPECIE{Espécie 01-Duplicata Mercantil / 02-Nota Promissoria / 03-nota seguro}
                             +wACEITE {A = PARA ACEITO - N = PARA NÃO ACEITO}
                             +Copy(DateToStr(dataBoleto),1,2){DIA - Data Emissão}
                             +Copy(DateToStr(dataBoleto),4,2){MES - Data Emissão}
                             +Copy(DateToStr(dataBoleto),9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1{Instrução 01}
                             +wCOD_INSTRUCAO2{Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30) )),13){VALOR A SER COBRADO POR DIA}
                             +'000000'{DESCOTO ATE}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DESCONTO}
                             +PreencheZeroEsquerda('0',13){VALOR DO IOF}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DO ABATIMENTO}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02'){Inscrição do sacado}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,40),True),30){Nome do Sacado}
                             +PreencheDireita('',010){BRANCOS}
//                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString,1,40),True),40){Endereco do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,40),True),40){Endereco do Sacado}
//                             +PreencheDireita(TiraCaracteresEspeciais(Copy('',1,12),True),12) {Bairro sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wBairro,1,12),True),12) {Bairro sacado}
//                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString,1,5),True),05){cep do sacado}
//                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString,6,3),True),03){Sufixo do cep do sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,1,5),True),05){cep do sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,6,3),True),03){Sufixo do cep do sacado}
//                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString,1,15),True),15) {cidade sacado}
//                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString,1,2),True),2) {estado sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             //se for instrução 93 de 352 a 381 (30 caracteres de mensagem adicional
                             // se for instrução 94 de 352 a 391 (40 caracteres de mensagem adicional
                             //outra instrução   352 a 381 sacador/avalista + 382 a 385 brancose 386 a 391 data e mora
                             +iif(MatchStr('94',[wCOD_INSTRUCAO1,wCOD_INSTRUCAO2]),PreencheDireita(copy(EdMensagem.Text,1,40),40),
                                iif(MatchStr('94',[wCOD_INSTRUCAO1,wCOD_INSTRUCAO2]),PreencheDireita(copy(EdMensagem.Text,1,30),40),
                                    PreencheDireita('',030){SACADOR/AVALISTA}   +PreencheDireita('',004){BRANCOS}  +'000000'{DATA DE MORA}))
                             +wDIAS_PROTESTO{Prazo de Protesto}
                             +PreencheDireita('',001){BRANCOS}
                             +FormatFloat('000000',wNumeroRegistro) );

           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lValor := Uteis.RoundTo( ( CdsCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * lMulta / 100 ), -2 );
           lDataMulta:='00000000';
           if (lMulta<>0) then
           begin
                // multa deve ser apresentada em outra linha de detalhe. É opcional
                Inc(wNumeroRegistro);
                lDataMulta := ExtrairNumeros(DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias));
                Writeln(wREGISTRO, '2' // MULTA
                                   +'1' // MULTA INFORMADA VALOR EM REAIS
                                   +lDataMulta
                                   +PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('######0.00',lValor) ), 13) // valor MULTA
                                   +PreencheDireita(' ',255)+PreencheDireita(' ',116) // BRANCOS
                                   +FormatFloat('000000',wNumeroRegistro) );
           end;


           {}
            if (TRIM(CNumCarteira.Text) <> '112') and (TRIM(CNumCarteira.Text) <> '212') then
               Inc(wNossoNumero);
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;

            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;

      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',138){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );

      try
       { rotina desativada porque nossonumero sequencia ja foi gravada correta na impressao do boleto
       if (CNumCarteira.AsInteger <> 112) or (CNumCarteira.AsInteger <> 212) then
           begin
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SqlDef('BANCOS','UPDATE BAN0000 SET BAN_SEQ_NOSSONUMERO = '''+IntToStr(wNossoNumero)+'''','WHERE BAN_COD_APELIDO = '''+IntToStr(CCodigoBco.AsInteger)+'''','','');
               DataCadastros.sqlUpdate.Execsql;
           end;         }
      except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao atualizar a sequência do Nosso Número ! '+e.message));
      end;
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.GerarREmessaCNAB400_BRASIL_CBR641_6P;
{ BANCO DO BRASIL}
Var
   wPREFIXO_TITULO:String[3];
   lMulta, lValor: Currency;
   lDias: Integer;
   lDataMulta: string;

begin
   try
     if ChkRemessaTeste.checked  then
        wLIT_REMESSA  := 'TESTE  ' {LITERAL ARQUIVO}
     else
        wLIT_REMESSA  := 'REMESSA';{LITERAL ARQUIVO}

     { revisado em nov 2011 este campo no layout dever ser BRANCOS - Márcio
    //PREFIXO DO TITULO
     if (CCodCarteira.Text = '31') or (CCodCarteira.Text = '51') then
        wPREFIXO_TITULO := 'SD '
     else
     if (CCodCarteira.Text = '12') then
        wPREFIXO_TITULO := 'AIU'
     else
        // para as outras carteiras (11, 15 e 17)
        wPREFIXO_TITULO := 'AI ';
        }
     try
        Screen.Cursor    := CrHourglass;
        {inicializa variaveis}
        wNumeroRegistro  := 1;
        wQtdeDuplicatas  := 0;
        Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
        Gauge.Progress   := 0;
        CValorTotal.Clear;
        CRegistro.Clear;
        {atualiza arquivo registro CNAB}
        AtualizaArquivoCNABRemessa;
        {criação do arquivo texto}
        AssignFile(wREGISTRO,FileArqSalvar.FileName);
        RewRite(wREGISTRO);
        { GERAR REGISTRO-HEADER DA REMESSA }
        Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                         +'1'{CODIGO DO ARQUIVO}
                         +wLIT_REMESSA{LITERAL ARQUIVO}
                         +'01'{CÓDIGO DO SERVIÇO}
                         +'COBRANCA'{LITERAL SERVICO}
                         +PreencheDireita('',007){BRANCOS}
                         +PreencheZeroEsquerda(CbAgencia.Text,4){AGENCIA MANTENEDORA DA CONTA}
                         +copy(CdigitoAge.Text,1,1){DV-Agencia}
                         +PreencheZeroEsquerda(CbContaCorr.Text,8){CONTA CORRENTE}
                         +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                         +PreencheZeroEsquerda(EdEmpresa.Text,6){NUMERO DO CONVENENTE LIDER - CONFIRMAR}
                         +PreencheDireita(TiraCaracteresEspeciais(Copy(DataCadastros.CdsEmpresa.FieldByname('EMP_RAZAO').AsString,1,30),True),30){NOME EMPRESA Q. GERA REMESSA}
                         +'001BANCO DO BRASIL'{COD. BANCO/NOME}
                         +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                         +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                         +Copy(DateToStr(Date),9,2) {Data da Gravação - AA}
                         +FormatFloat('0000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                         +PreencheDireita('',255){BRANCOS}
                         +PreencheDireita('',032){BRANCOS}
                         +FormatFloat('000000',wNumeroRegistro){NUMERO SEQUENCIAL DO REGISTRO}
             );
        { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
        Gauge.Progress   := Gauge.Progress + 1;
        CdSCrCduplicata.First;
        while not CdSCrCduplicata.Eof do
        begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
            //
            wCOD_INSTRUCAO1 := '00';
            wCOD_INSTRUCAO2 := '00';
            wDIAS_PROTESTO  := '00';
            {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [03,04,05,06,10,15,20,25,30,45] then
            begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
            end
            else
                wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
            {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [03,04,05,06,10,15,20,25,30,45] then
            begin
                 if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                    wCOD_INSTRUCAO2 := '00'
                 else
                    wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            end
            else
                wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);

            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
            begin
                 wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                 wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                 wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                 wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                 wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
            end
            else
            begin
                 wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                 wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                 wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                 wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                 wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
            end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;
            {gera registro}
            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'02'  { PESSOA JURIDICA - codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14){Número de Inscrição CNPF/CNPJ}
                             +PreencheZeroEsquerda(CbAgencia.Text,4){AGENCIA MANTENEDORA DA CONTA}
                             +PreencheZeroEsquerda(CdigitoAge.Text,1){DIGITO AGENCIA}
                             +PreencheZeroEsquerda(CbContaCorr.Text,8){CONTA CORRENTE}
                             +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                             +PreencheZeroEsquerda(EdEmpresa.Text,6){NUMERO DO CONVENIO}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,25){IDENTIFICACAO DO TITULO - NUMERO DUPLICATA}
                             +PreencheZeroEsquerda('0',011){NOSSO NUMERO - BANCO}
                             +PreencheZeroEsquerda('0',001){DIGITO NOSSO NUMERO - BANCO}
                             +PreencheZeroEsquerda('0',002){NUMERO DA PRESTAÇÃO = ZERO}
                             +PreencheZeroEsquerda('0',002){INDICATIVO GRUPOS DE VALOR = ZERO}
                             +PreencheDireita('',003){BRANCOS}
                             +' '{INDICATIVO DE SACADOR VER COM AGENCIA}
                             +PreencheDireita('',003) { BANCOS - PREFIXO DO TITULO  }
                             +PreencheZeroEsquerda(CNumCarteira.Text,003){VARIACAO DA CARTEIRA}
                             +PreencheZeroEsquerda('0',001){CONTA CAUCAO = ZERO}
                             +PreencheZeroEsquerda('0',005){CODIGO DE RESPONSABILIDADE = ZERO}
                             +PreencheDireita('0',001){BRANCO - DIGITO CODIGO DE RESPONSABILIDADE = ZERO}
                             +PreencheZeroEsquerda('0',006){NUMERO BORDERO}
                             +PreencheDireita('',005){REGISTRO BRANCOS}
                             +PreencheZeroEsquerda(CCodCarteira.Text,002){CODIGO CARTEIRA}
                             +PreencheZeroEsquerda(CCodOcorrencia.Text,002){OCORRENCIA}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){NUM. DOCUMENTO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'001'{NUMERO DO BANCO}
                             +'0000'{PREFIXO DA AGENCIA COBRADORA = ZEROS}
                             +' '{DV AGENCIA COBRADORA = BRANCOS}
                             +wESPECIE{Espécie 01-Duplicata Mercantil / 02-Nota Promissoria / 03-nota seguro}
                             +wACEITE {A = PARA ACEITO - N = PARA NÃO ACEITO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,1,2){DIA - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,4,2){MES - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1//FormatFloat('00',C1Instrucao.AsInteger){Instrução 01}
                             +wCOD_INSTRUCAO2//FormatFloat('00',C2Instrucao.AsInteger){Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30) )),13){VALOR A SER COBRADO POR DIA}
                             +'000000'{DATA LIMTE PARA CONCESSAO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DESCONTO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR IOF}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DO ABATIMENTO}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02'){Inscrição do sacado}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,37),True),37){Nome do Sacado}
                             +PreencheDireita('',003){BRANCOS}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,40),True),37){Endereco do Sacado}
                             +PreencheDireita('',015){BRANCOS}
                             +PreencheZeroEsquerda(Copy(wCep,1,5),05){cep do sacado}
                             +PreencheZeroEsquerda(Copy(wCep,6,3),03){Sufixo do cep do sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(EdMensagem.Text,True),40){observaçoes}
                             +wDIAS_PROTESTO{Prazo de Protesto} //PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.Value)),2){Prazo de Protesto}
                             +PreencheDireita('',001){BRANCOS}
                             +FormatFloat('000000',wNumeroRegistro)   );

            // MULTA ATRASO
            lMulta :=  StrToFloatDef(edtMulta.Text,0);
            lDias := StrToIntDef(edtMultaDias.Text,0);
            lValor := 0 ;
            if (lMulta<>0) then
            begin
               lValor := Uteis.RoundTo( ( CdsCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * lMulta / 100 ), -2 );
               Inc(wNumeroRegistro);
               lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias) ;
               Writeln(wREGISTRO, '5'{codigo do registro}
                                  +'99' //MULTA
                                  +'1' // MULTA POR VALOR
                                  +Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2) { data multa }
                                  +PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('######0.00',lValor) ), 12) { valor }
                                  {372 é o total em branco, o resultado é shotstring e não pode passar de 255}
                                  +PreencheDireita( '',255 ) {branco}
                                  +PreencheDireita( '',117 ) {branco}
                                  +FormatFloat('000000',wNumeroRegistro) );
            END;

            {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
            {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
            begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                  begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                  end
                  else
                  begin
                        wCANCELAR  := False;
                  end;
            end;
        end;

        Inc(wNumeroRegistro);
        { GERAR REGISTRO TRAILER}
        Writeln(wREGISTRO,'9'{ codigo do registro}
                          +PreencheDireita('',255){uso do banco}
                          +PreencheDireita('',138){uso do banco}
                          +FormatFloat('000000',wNumeroRegistro) );

     except on E:EDataBaseError do
         begin
              //beep;
              Screen.Cursor    := CrDefault;
              uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
         end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
     begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
     end
     else
     begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
     end;
   end;
end;

procedure TFormGeradorCNAB.GerarREmessaCNAB400_BRASIL_CBR641_7P;
Var wPREFIXO_TITULO:String[3];
    lmulta, lvalor : Currency ;
    lDias : Integer;
    lDataMulta : string;

begin
   try
     if ChkRemessaTeste.checked  then
        wLIT_REMESSA  := 'TESTE  ' {LITERAL ARQUIVO}
     else
        wLIT_REMESSA  := 'REMESSA';{LITERAL ARQUIVO}


     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO , 7}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +'COBRANCA'{LITERAL SERVICO}
                       +PreencheDireita('',007){BRANCOS}
                       +PreencheZeroEsquerda(CbAgencia.Text,4){AGENCIA MANTENEDORA DA CONTA}
                       +copy(CdigitoAge.Text,1,1){DV-Agencia}
                       +PreencheZeroEsquerda(CbContaCorr.Text,8){CONTA CORRENTE}
                       +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                       +'000000'{complemento do registro}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(DataCadastros.CdsEmpresa.FieldByname('EMP_RAZAO').AsString,1,30),True),30){NOME EMPRESA / cedente}
                       +'001BANCO DO BRASIL'{COD. BANCO/NOME}
                       +Copy(DateToStr(Date),1,2) {Data da Gravação - DD}
                       +Copy(DateToStr(Date),4,2) {Data da Gravação - MM}
                       +Copy(DateToStr(Date),9,2) {Data da Gravação - AA}
                       +FormatFloat('0000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +PreencheDireita('',22){BRANCOS}
                       +PreencheZeroEsquerda(EdEmpresa.Text,7){NUMERO DO CONVENENTE LIDER}
                       +PreencheDireita('',254){BRANCOS}
                       +PreencheDireita('',4){BRANCOS}
                       +FormatFloat('000000',wNumeroRegistro){NUMERO SEQUENCIAL DO REGISTRO}
             );
     {***************************************FIM REGISTRO GEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
         begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := '00';
            wCOD_INSTRUCAO2 := '00';
            wDIAS_PROTESTO  := '00';
           {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [03,04,05,06,10,15,20,25,30,45] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
          {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [03,04,05,06,10,15,20,25,30,45] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO2 := '00'
                  else
                     wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);

            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;

           {gera registro}
            Writeln(wREGISTRO,'7'{codigo do registro detalhe}
                             +'02'  { PESSOA JURIDICA - codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14){Número de Inscrição CNPF/CNPJ}
                             +PreencheZeroEsquerda(CbAgencia.Text,4){PREFIXO DA AGENCIA - MANTENEDORA DA CONTA}
                             +PreencheZeroEsquerda(CdigitoAge.Text,1){DIGITO AGENCIA}
                             +PreencheZeroEsquerda(CbContaCorr.Text,8){CONTA CORRENTE}
                             +PreencheZeroEsquerda(CdigitoC.Text,1){DIGITO AGENCIA}
                             +PreencheZeroEsquerda(EdEmpresa.Text,7){NUMERO DO CONVENIO}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,25){IDENTIFICACAO DO TITULO - NUMERO DUPLICATA}
                             +IIF(wRESPBOLETO = 'B',PreencheZeroEsquerda('0',07),PreencheZeroEsquerda(EdEmpresa.Text,07)) {nota 06 - numero convenio}
                             +IIF(wRESPBOLETO = 'B',PreencheZeroEsquerda('0',10),PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('FPC_COBNUM').AsString,010)){NOSSO NUMERO - BANCO}
                             +PreencheZeroEsquerda('0',002){NUMERO DA PRESTAÇÃO = ZERO}
                             +PreencheZeroEsquerda('0',002){INDICATIVO GRUPOS DE VALOR = ZERO}
                             +PreencheDireita('',003){BRANCOS}
                             +' '{INDICATIVO DE SACADOR VER COM AGENCIA}
                             +PreencheDireita('',003){ PREFIXO DO TITULO - BRANCOS}
                             +PreencheZeroEsquerda(CNumCarteira.Text,003){VARIACAO DA CARTEIRA}
                             +PreencheZeroEsquerda('0',001){CONTA CAUCAO = ZERO}
                             +PreencheZeroEsquerda('0',006){ NUMERO DO BORDERO - ZEROS}
                             //+PreencheDireita('',005){REGISTRO BRANCOS - NA MODALIDADE SIMPLES}
                             +IIF(CdSCrCduplicata.FieldByname('FPC_COBTIPO').AsString = 'CC','02VIN',PreencheDireita('',005)) {REGISTRO BRANCOS - NA MODALIDADE SIMPLES}
                             +PreencheZeroEsquerda(CCodCarteira.Text,002){CODIGO CARTEIRA}
                             +PreencheZeroEsquerda(CCodOcorrencia.Text,002){OCORRENCIA}
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){NUM. DOCUMENTO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'001'{NUMERO DO BANCO}
                             +'0000'{PREFIXO DA AGENCIA COBRADORA = ZEROS}
                             +' '{DV AGENCIA COBRADORA = BRANCOS}
                             +wESPECIE{Espécie 01-Duplicata Mercantil / 02-Nota Promissoria / 03-nota seguro}
                             +wACEITE {A = PARA ACEITO - N = PARA NÃO ACEITO}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,1,2){DIA - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,4,2){MES - Data Emissão}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsString,9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1//FormatFloat('00',C1Instrucao.AsInteger){Instrução 01}
                             +wCOD_INSTRUCAO2//FormatFloat('00',C2Instrucao.AsInteger){Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30) )),13){VALOR A SER COBRADO POR DIA}
                             +'000000'{DATA LIMTE PARA CONCESSAO DESCONTO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DESCONTO}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR IOF}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),13){VALOR DO ABATIMENTO}
                             +IIF(CdSCrCduplicata.FieldByname('CLI_PESSOA').AsString = 'F','01','02'){Inscrição do sacado}
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,37),True),37){Nome do Sacado}
                             +PreencheDireita('',003){BRANCOS}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wEndereco,1,40),True),40){Endereco do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wBairro,1,12),True),12){Bairro do Sacado}
                             +PreencheZeroEsquerda(Copy(wCep,1,5),05){cep do sacado}
                             +PreencheZeroEsquerda(Copy(wCep,6,3),03){Sufixo do cep do sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(EdMensagem.Text,True),40){observaçoes}
                             +wDIAS_PROTESTO{Prazo de Protesto} //PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.Value)),2){Prazo de Protesto}
                             +PreencheDireita('',001){BRANCOS}
                             +FormatFloat('000000',wNumeroRegistro)  );

            // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lValor := 0 ;
           if (lMulta<>0) then
           begin
                lValor := Uteis.RoundTo( ( CdsCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * lMulta / 100 ), -2 );
                Inc(wNumeroRegistro);
                lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias) ;
                Writeln(wREGISTRO, '5'{codigo do registro}
                                   +'99' //MULTA
                                   +'1' // MULTA POR VALOR
                                   +Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2) { data multa }
                                   +PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('######0.00',lValor) ), 12) { valor }
                                  {372 é o total em branco, o resultado é shotstring e não pode passar de 255}
                                  +PreencheDireita( '',255 ) {branco}
                                  +PreencheDireita( '',117 ) {branco}
                                   +FormatFloat('000000',wNumeroRegistro) );
           END;

           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheDireita('',255){uso do banco}
                       +PreencheDireita('',138){uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );

     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;
end;


procedure TFormGeradorCNAB.GerarRemessaCNAB400_SANTANDER;
var lmulta : Currency ;
    wNossoSantander,lDias : Integer;
    wDigSantander, lDataMulta, lInfoMulta, lPercMulta, lComplCC : string;
    databoleto : Tdate;
begin
   try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {Literal arquivo}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{CODIGO DO ARQUIVO}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO}
                       +PreencheDireita('COBRANCA',015){LITERAL SERVICO}
                       +PreencheZeroEsquerda(EdEmpresaTransmissao.Text,020)//+CdigitoAge.Text{AGENCIA CEDENTE}
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(DBInicio.Empresa.RAZAO,1,30),True),30){NOME DO EMPRESA}
                       +'033'{CODIGO BANCO}
                       +PreencheDireita('SANTANDER',15){NOME DO BANCO}
                       +Copy(DateToStr(Date),1,2) {DIA - Data da Gravação}
                       +Copy(DateToStr(Date),4,2) {MES - Data da Gravação}
                       +Copy(DateToStr(Date),9,2) {ANO - Data da Gravação}
                       +PreencheZeroEsquerda('0',016)
                       +PreencheDireita('',255){BRANCOS}
                       +PreencheDireita('',020){BRANCOS}
                       +FormatFloat('000',wSEQ_REMESSA){NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +FormatFloat('000000',wNumeroRegistro)
             );
     {***************************************FIM REGISTRO HEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;

      lComplCC := trim(cbContaCorr.Text);
      lComplCC := copy(lComplCC,length(lComplCC),1)+IntToStr( StrToIntDef( CdigitoC.Text, 0 ) ) ;

      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
            wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);

            // wDIAS_PROTESTO  := FormatFloat('00',CPrazoProtesto.AsInteger);
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)
            else
               wDIAS_PROTESTO := FormatFloat('00',CPrazoProtesto.AsInteger);


           {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
          {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO2 := '00'
                  else
                     wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked  then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEP').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString, True);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString, True);
                   wCep      := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString, True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString, True);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;
           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lDataMulta:='000000';

           lInfoMulta:='0';
           lPercMulta:= '0000';
           if (lMulta<>0) then
           begin
                lInfoMulta:='4';
                lPercMulta := PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('#0.00',lMulta) ), 4); // % MULTA   99.99 -> 9999

                lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias);
                lDataMulta := Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2);
           end;

           // FPC_COBNUM foi gravado na impressao sem o digito verificador - Calcular para remessa
           wNossoSantander := StrtoInt(CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString);
           wDigSantander  := Modulo11(InttoStr(wnossoSantander), 9, False);
            if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
              dataBoleto := Date
            else
              dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;

           {gera registro}
            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'02'{codigo de Inscrição}
                             +PreencheZeroEsquerda(DataCadastros.CdsEmpresa.FieldByname('EMP_CGC').AsString,14)  {Número de Inscrição CNPF/CNPJ}
                             +PreencheZeroEsquerda(EdEmpresaTransmissao.Text,020)//+CdigitoAge.Text{AGENCIA CEDENTE}
                             +PreencheDireita('',025)  {BRANCOS}

                             +PreencheZeroEsquerda(COPY(CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString,6,7),007)   { nosso numero   }
                             // digito calculado acima
                             +PreencheZeroEsquerda(wDigSantander,001)   { digito do nosso numero   }

                             +PreencheDireita('000000',006){BRANCOS}
                             +PreencheDireita('',001){BRANCOS}

                             +lInfoMulta // informacao de multa
                             +lPercMulta //Percentual MULTA

                             +'00' // unid valor moeda - por default '00'
                             +PreencheZeroEsquerda('00',013){ZEROS}
                             +PreencheDireita('',004){BRANCOS}
                             +lDataMulta // data cobrança multa

                             +PreencheZeroEsquerda ( CCodCarteira.Text , 001 ) // ZEROS -- Código Carteira

                             +'01'  // cod ocorrencia - 01-entrada tit
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+IIF(Trim(CdSCrCduplicata.FieldByname('FPC_NUMER').AsString) <> '','/','')+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10) //coNTROLE DO PRATICIPANTE - NUMERO DUPLICATA

                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento duplicata}

                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +'033' // nro banco cobrança - 033-santander
                             +PreencheZeroEsquerda(IIF(CCodCarteira.Text = '5',CbAgencia.Text+CdigitoAge.Text,''),005){ZEROS}
                             +'01' // espécie doc - 01 duplicata
                             +PreencheDireita(wACEITE,001){BRANCOS}
                             +Copy(DateToStr(dataBoleto),1,2){DIA - Data Emissão}
                             +Copy(DateToStr(dataBoleto),4,2){MES - Data Emissão}
                             +Copy(DateToStr(dataBoleto),9,2){ANO - Data Emissão}
                             +wCOD_INSTRUCAO1{Instrução 01}
                             +wCOD_INSTRUCAO2{Instrução 02}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##,###,##0.00',(((CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency * CJurosMora.Value)/100)/30))),13){juros de 1 dia mora}
                             +'000000'{DATA PARA DESCONTO}
                             +'0000000000000' {VALOR DESCONTO}
                             +PreencheZeroEsquerda('0',13){Valor do IOF}
                             +PreencheZeroEsquerda('0',13){VALOR DO ABATIMENTO}
                             +iif ( length( trim( CdSCrCduplicata.FieldByname('CLI_CGC').AsString ) )= 14 , '02', '01' )
                             +PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(copy(trim(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString),1,35),True),40){Nome do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(trim(wEndereco),1,40),True),40){Endereco do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(trim(wBairro),1,12),True),12){BRANCOS}

                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,1,5),True),05){cep do sacado}
                             +PreencheZeroEsquerda(TiraCaracteresEspeciais(Copy(wCep,6,3),True),03){Sufixo do cep do sacado}

                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wCidade,1,15),True),15) {cidade sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(wUf,1,2),True),2) {estado sacado}
                             +PreencheDireita(copy(EdMensagem.Text,1,30),30){instrução e mensagem por extenso}

                             +PreencheDireita('',001){BRANCOS}
                             +'I'+lComplCC // 'I'ndicador + Complemento Conta Corrente
                             +PreencheDireita('',006){BRANCOS}
                             +PreencheZeroEsquerda(wDIAS_PROTESTO,002){ZEROS}
                             +PreencheDireita('',001){BRANCOS}
                             +FormatFloat('000000',wNumeroRegistro)
                   );
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +PreencheZeroEsquerda(IntToStr(wNumeroRegistro),6)
                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CValorTotal.Value)),13)
                       +'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
                       +'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
                       +'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
                       +'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
                       +'0000000000000000000000000000000000'{uso do banco}
                       +FormatFloat('000000',wNumeroRegistro)
             );
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.GerarRemessaCNAB400_Sicredi;
var lmulta : Currency ;
    wNossoSantander,lDias : Integer;
    wDigSantander, lDataMulta, lInfoMulta, lPercMulta, lComplCC, dtDesconto : string;
    databoleto: Tdate;
begin
  try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
      wNumeroRegistro  := 1;
      wQtdeDuplicatas  := 0;
      Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
      Gauge.Progress   := 0;
      CValorTotal.Clear;
      CRegistro.Clear;
     {Literal arquivo}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA }
      Writeln(wREGISTRO,'0'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{identificação do arquivo remessa}
                       +wLIT_REMESSA{LITERAL ARQUIVO}
                       +'01'{CÓDIGO DO SERVIÇO  DE COBRANÇA}
                       +PreencheDireita('COBRANCA',015){LITERAL SERVICO}
                       +PrencheZeroEsquerda(EdEmpresa.Text,5 )
                       +PreenchezeroEsquerda(RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF),14)
                       +PreencheDireita('',31)
                       +'748' {numero do sicredi}
                       +PreencheDireita('SICREDI',15)
                       +Copy(DateToStr(Date),7,4) {ANO - Data da Gravação}
                       +Copy(DateToStr(Date),4,2) {MES - Data da Gravação}
                       +Copy(DateToStr(Date),1,2) {DIA - Data da Gravação}
                       +PreencheDireita('',8)
                       +FormatFloat('000',wSEQ_REMESSA){NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +PreencheDireita('',255)
                       +PreencheDireita('',18)
                       +'2.00'
                       +FormatFloat('000000',wNumeroRegistro)
             );
     {***************************************FIM REGISTRO HEADER**************************}
     { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      Gauge.Progress   := Gauge.Progress + 1;

      lComplCC := trim(cbContaCorr.Text);
      lComplCC := copy(lComplCC,length(lComplCC),1)+IntToStr( StrToIntDef( CdigitoC.Text, 0 ) ) ;

      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin
           {display na tela}
            Application.ProcessMessages;
            PDisplayDup.Caption   := CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'-'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString;
            PDisplayEmiss.Caption := CdSCrCduplicata.FieldByname('FPC_DTEMIS').AsString;
            PDisplayVenc.Caption  := CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString;
            PDisplayValor.Caption := FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            PDisplayBanco.Caption := CdSCrCduplicata.FieldByname('BAN_APELIDO').AsString;
            PanCliente.Caption    := FormatFloat('0000',CdSCrCduplicata.FieldByname('CLI_CODIGO').AsInteger)+' - '+ CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString;
            CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);
            Inc(wNumeroRegistro);
            Inc(wQtdeDuplicatas);
            CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
           //
            wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
            wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);

            // wDIAS_PROTESTO  := FormatFloat('00',CPrazoProtesto.AsInteger);
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0)  AND Rad_Protesto_Cliente.Checked  then
               wDIAS_PROTESTO := FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)
            else
               wDIAS_PROTESTO := FormatFloat('00',CPrazoProtesto.AsInteger);



           {insturcao 01 e dias p/protesto}
            if C1Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO1 := '00'
                  else
                     wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO1 := FormatFloat('00',C1Instrucao.AsInteger);
          {insturcao 02 e dias p/protesto}
            if C2Instrucao.AsInteger in [06] then
               begin
                  if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
                     wCOD_INSTRUCAO2 := '00'
                  else
                     wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
               end
            else
               wCOD_INSTRUCAO2 := FormatFloat('00',C2Instrucao.AsInteger);
            {prazo para protesto}
            if CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'N' then
               wDIAS_PROTESTO := '00'
            else
            if (CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger > 0) AND Rad_Protesto_Cliente.Checked then
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CdSCrCduplicata.FieldByname('CLI_QTDE_DIAS_PROTESTO').AsInteger)),2)
            else
               wDIAS_PROTESTO := PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('00',CPrazoProtesto.AsInteger)),2);
            {Verifica o Endereço de faturamento}
            if ((CdSCrCduplicata.FieldByname('CLI_CEPFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString = '')) AND ((CdSCrCduplicata.FieldByname('CLI_CIDFAT').IsNull = TRUE) OR (CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString = '')) then
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDERE').AsString,true);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIRRO').AsString,true);
                   wCep      := TiraCaracteresEspeciais(ExtrairNumeros (CdSCrCduplicata.FieldByname('CLI_CEP').AsString), True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDADE').AsString,true);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UF').AsString, True);
               end
            else
               begin
                   wEndereco := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_ENDFAT').AsString,true);
                   wBairro   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_BAIFAT').AsString,true);
                   wCep      := TiraCaracteresEspeciais(ExtrairNumeros(CdSCrCduplicata.FieldByname('CLI_CEPFAT').AsString), True);
                   wCidade   := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_CIDFAT').AsString,true);
                   wUf       := TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_UFFAT').AsString, True);
               end;
           if Length(wEndereco)> 40 then
              wEndereco := Copy(trim(wEndereco),Length(wEndereco)-39,40)   ;
           // MULTA ATRASO
           lMulta :=  StrToFloatDef(edtMulta.Text,0);
           lDias := StrToIntDef(edtMultaDias.Text,0);
           lDataMulta:='000000';

           lInfoMulta:='0';
           lPercMulta:= '0000';
           if (lMulta<>0) then
           begin
                lInfoMulta:='4';
                lPercMulta := PreencheZeroEsquerda( ExtrairNumeros ( FormatFloat('#0.00',lMulta) ), 4); // % MULTA   99.99 -> 9999

                lDataMulta := DatetoStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').asdatetime+lDias);
                lDataMulta := Copy( lDataMulta,1,2)+Copy(lDataMulta,4,2)+Copy(lDataMulta,9,2);
           end;
           if CdSCrCduplicata.FieldByname('FPC_DTDESC').AsDateTime > 0 then
           begin
            dtDesconto :=  Copy(CdSCrCduplicata.FieldByname('FPC_DTDESC').AsString,1,2){DIA - Data desconto}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DTDESC').AsString,4,2){MES - Data desconto}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_DTDESC').AsString,9,2){ANO - Data desconto}

           end
           else
            dtDesconto := '000000';

           // FPC_COBNUM foi gravado na impressao sem o digito verificador - Calcular para remessa
           wNossoSantander := StrtoInt(CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString);
           wDigSantander  := Modulo11(InttoStr(wnossoSantander), 9, False);
            if CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime = 0 then
              dataBoleto := Date
            else
              dataBoleto := CdSCrCduplicata.FieldByname('FPC_DATABOLETO').AsDateTime;

           {gera registro}
            Writeln(wREGISTRO,'1'{codigo do registro}
                             +'A' // SICREDI COM REGISTRO
                             +'A' // SIMPLES
                             +'A' // TIPO DE IMPRESSÃO
                             +PreencheDireita('',12)
                             +'A'{TIPO DE MOEDA}
                             +'A' //DESCONTO EM VALOR
                             +'B' // JUROS EM PERCENTUAL
                             +PreencheDireita('',28)
                             +PreencheZeroEsquerda(COPY(CdSCrCduplicata.FieldByName('FPC_COBNUM').AsString,1,9),009)   { nosso numero   }
                             +PreencheDireita('',6)
                             +Copy(DateToStr(Date),7,4) {ANO - Data da INSTRUÇÃO}
                             +Copy(DateToStr(Date),4,2) {MES - Data da INSTRUÇÃO}
                             +Copy(DateToStr(Date),1,2) {DIA - Data da INSTRUÇÃO}
                             +PreencheDireita('',1) //071-071
                             + +IIF(wRESPBOLETO = 'B','S','N')    // emissao boleto 'B' banco // POSTAGEM DO TÍTULO - 072
                             +PreencheDireita('',1) //073-073
                             +IIF(wRESPBOLETO = 'B','A','B')    // emissao boleto 'B' banco
                             +'00' // numero da parcela do carne
                             +'00' // numero total de parcelas
                             +PreencheEsquerda('',4)
                             +PreenchezeroEsquerda('',10)
                             +lPercMulta
                             +PreencheEsquerda('',12)
                             +wCOD_INSTRUCAO1
                             +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+'/'+CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,10){seu numero de 111 a 120}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,1,2){DIA - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,4,2){MES - vencimento duplicata}
                             +Copy(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsString,9,2){ANO - vencimento 2 digitos duplicata}
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),13){valor do titulo}
                             +PreencheEsquerda('',09)
                             +copy(wESPECIE,1,1)
                             +wACEITE
                             +Copy(DateToStr(databoleto),1,2){DIA - Data Emissão}
                             +Copy(DateToStr(databoleto),4,2){MES - Data Emissão}
                             +Copy(DateToStr(databoleto),9,2){ANO - Data Emissão}
                             +IIF( CdSCrCduplicata.FieldByname('CLI_PROTESTAR').AsString = 'S','06','00') // PROTESTAR AUTOMATICAMENTE
                             +wDIAS_PROTESTO
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',CJurosMora.Value)),4)
                             +dtDesconto // DATA LIMITE PARA CONCESSÃO DE DESCONTO
                             +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_DESCTO').AsCurrency)),13){valor do desconto}
                             +PreencheEsquerda('',13)
                             +PreencheZeroEsquerda('0',13){VALOR DO ABATIMENTO}
                             +iif ( length( trim(RetirarMascaraCNPJ_INSC( CdSCrCduplicata.FieldByname('CLI_CGC').AsString) ) )= 14 , '2', '1' )
                             +'0' //fixo
                             +PreencheZeroEsquerda(  CdSCrCduplicata.FieldByname('CLI_CGC').AsString,14){Número de Inscrição CNPF/CNPJ sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(copy(trim(TiraCaracteresEspeciais(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,true)),1,40),True),40){Nome do Sacado}
                             +PreencheDireita(TiraCaracteresEspeciais(Copy(trim(wEndereco),1,40),True),40){Endereco do Sacado}
                             +PreencheZeroEsquerda('',5) // código do pagador na cooperativa beneficiario
                             +PreencheZeroEsquerda('',6)
                             +PreencheDireita('',1)
                             +PreencheZeroEsquerda(wCep,08){cep do pagador }
                             +IIF(ChkRemessaTeste.Checked ,'00000',PreencheZeroEsquerda(CdSCrCduplicata.FieldByname('CLI_CODIGO').AsString,5)) // CODIGO DO CLIENTE OU 00000 quando for homologação teste
                             +PreenchezeroEsquerda(RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF),14)
                             +PreencheDireita(copy(TiraCaracteresEspeciais(dbinicio.Empresa.RAZAO,true),41),41)
                             +FormatFloat('000000',wNumeroRegistro)
                   );
           {atualiza arquivo duplicatas com status de remessa}
            if ChkRemessaTeste.Checked = False then
               AtualizaRemessaDuplicata;
           {atualiza arquivo duplicata CNAB}
            AtualizaArquivoCNABRemessaDuplicata;
           {}
            CdSCrCduplicata.Next;
            Gauge.Progress   := Gauge.Progress + 1;
            if wCANCELAR = True then
               begin
                  if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo CNAB 400 ?') = mryes then
                     begin
                        BitProcessar.Enabled       := True;
                        BitCancelarPro.Enabled     := False;
                        BitCancelar.Enabled        := True;
                        BitVisualizar.Enabled      := False;
                        BitImprimir.Enabled        := False;
                        BitTipoImpressao.Enabled   := False;
                        LimpaCamposGera;
                        uteis.aviso('Processo cancelado pelo usuário !');
                        exit;
                     end
                  else
                     begin
                        wCANCELAR  := False;
                     end;
               end;
         end;
      Inc(wNumeroRegistro);
     { GERAR REGISTRO TRAILER}
      Writeln(wREGISTRO,'9'{ codigo do registro}
                       +'1'// identificação do arquivo remessa
                       +'748'   // codigo do sicredi
                       +PrencheZeroEsquerda(EdEmpresa.Text,5 )
                       +PreencheEsquerda('',255)
                       +PreencheEsquerda('',129)
                       +PreencheZeroEsquerda(IntToStr(wNumeroRegistro),6)
             );
     except on E:EDataBaseError do
       begin
          //beep;
          Screen.Cursor    := CrDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
       end;
     end;
   finally
     Screen.Cursor    := CrDefault;
     CloseFile(wREGISTRO);
     if wCANCELAR  = False then
        begin
           //beep;
           uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                       +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := True;
           BitImprimir.Enabled        := True;
           BitTipoImpressao.Enabled   := True;
           wCANCELAR                  := False;
        end
     else
        begin
           BitProcessar.Enabled       := False;
           BitCancelarPro.Enabled     := False;
           BitCancelar.Enabled        := True;
           BitVisualizar.Enabled      := False;
           BitImprimir.Enabled        := False;
           BitTipoImpressao.Enabled   := False;
           wCANCELAR                  := False;
        end;
   end;

end;

procedure TFormGeradorCNAB.GerarRemessaCopel;
Var wConvenio :string;
begin
  try
     try
      Screen.Cursor    := CrHourglass;
     {inicializa variaveis}
       wNumeroRegistro  := 1;
       Gauge.MaxValue   := CdSCrCduplicata.RecordCount;
       Gauge.Progress   := 0;
       CValorTotal.Clear;
       CRegistro.Clear;
       wConvenio :=PreenchezeroEsquerda(edConvenio.Text,6) ;
       wCOD_INSTRUCAO1 := '00';
       wCOD_INSTRUCAO2 := '00';
       wNossoNumero := 0;
       wProtestar := 'N';
       wDIAS_PROTESTO := '0';
     {Literal arquivo}
       if ChkRemessaTeste.Checked then
          wLIT_REMESSA   := 'REM.TST' {LITERAL ARQUIVO}
       else
          wLIT_REMESSA   := 'REMESSA';{LITERAL ARQUIVO}
     {atualiza arquivo registro CNAB}
      AtualizaArquivoCNABRemessa;
     {criação do arquivo texto}
      AssignFile(wREGISTRO,FileArqSalvar.FileName);
      RewRite(wREGISTRO);
     { GERAR REGISTRO-HEADER DA REMESSA TIPO A }
      Writeln(wREGISTRO,'A'{IDENTIFICACAO DO REGISTRO HEADER}
                       +'1'{REMESA DO CONVENIO}
                       +wconvenio{CODIGO DO CONVENIO}
                       +PreencheDireita('',014){livres de 09 a 22 }
                       +PreencheDireita(TiraCaracteresEspeciais(Copy(DBInicio.Empresa.RAZAO,1,20),True),20){NOME DO EMPRESA}
                       +'037' // fixo  copel febraban
                       +PreencheDireita('COPEL DISTRIBUICAO',20){FIXO COPEL}
                       +Copy(DateToStr(Date),7,4) {ANO 4 CASAS - Data da Gravação}
                       +Copy(DateToStr(Date),4,2) {MES - Data da Gravação}
                       +Copy(DateToStr(Date),1,2) {DIA - Data da Gravação}
                       +FormatFloat('000000',wSEQ_REMESSA) {NÚMERO SEQUENCIAL DO ARQUIVO DE REMESSA}
                       +PreencheDireita('',70){livres de 80 A 149  - LIVRE}
                       +'.');
      CdSCrCduplicata.First;
      while not CdSCrCduplicata.Eof do
      begin

        Application.ProcessMessages;
       { REGISTRO E , VALOR A SER LANÇADO NA FATURA}
        Writeln(wREGISTRO,'E'{IDENTIFICACAO DO REGISTRO HEADER}
                         +PreencheDireita(CdSCrCduplicata.FieldByname('CLI_CODIGO').AsString,5) {cliente }
                         +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+ CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,8)
                         +PreencheDireita(TiraCaracteresEspeciais( copy(CdSCrCduplicata.FieldByname('CLI_RAZAO').AsString,1,20),True),12)    {nome cliente}
                         +PreencheDireita(edCodProduto.Text,4)  // codigo do produto
                         +PreenchezeroEsquerda(inttostr(CdSCrCduplicata.FieldByname('PED_UND_CONSUMIDORA').AsInteger),9)
                         +PreencheDireita('',8){livres de 40 a 47 }
                         +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency)),17){valor da parcela}
                         +'03' {codigo da moeda}
                         +PreencheDireita('',2) //67-68
                         +PreencheDireita('',2) // 69-70
                        // +PreencheZeroEsquerda( CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,2)  //67-68
//                         +PreencheZeroEsquerda( CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,2) 69-70
                         +PreencheDireita('',2)
                         +PreencheDireita('',6)
                       //  +copy(DateToStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime),7,4) {data de faturamento ano AAAA}
//                         +copy(DateToStr(CdSCrCduplicata.FieldByname('FPC_VENCTO').AsDateTime),4,2) {data de faturamento mes MM}
                         +PreencheDireita('',41)  {LIVRE DE 79-119}
                         +PreencheDireita(CdSCrCduplicata.FieldByname('FAT_CODIGO').AsString+' '+ CdSCrCduplicata.FieldByname('FPC_NUMER').AsString,30)  {USO CONVENIO DE 120-149 - passado o numero da fatura}
                         +iif(rgMovCopel.ItemIndex=0,'I',IIF(rgMovCopel.ItemIndex=1,'A','C'))
                       );
        CValorTotal.Value     := (CValorTotal.Value   + CdSCrCduplicata.FieldByname('FPC_VLPARC').AsCurrency);

        if ChkRemessaTeste.Checked = False then
           AtualizaRemessaDuplicata;
       {atualiza arquivo duplicata CNAB}
        AtualizaArquivoCNABRemessaDuplicata;
        CdSCrCduplicata.Next;
        Inc( wNumeroRegistro);
        Gauge.Progress   := Gauge.Progress + 1;
        if wCANCELAR = True then
           begin
              if uteis.confirmacao ( 'Deseja cancelar o processo para gerar arquivo COPEL ?') = mryes then
                 begin
                    BitProcessar.Enabled       := True;
                    BitCancelarPro.Enabled     := False;
                    BitCancelar.Enabled        := True;
                    BitVisualizar.Enabled      := False;
                    BitImprimir.Enabled        := False;
                    BitTipoImpressao.Enabled   := False;
                    LimpaCamposGera;
                    uteis.aviso('Processo cancelado pelo usuário !');
                    exit;
                 end
              else
                 begin
                    wCANCELAR  := False;
                 end;
           end;
      end;
      //TRAILLER , RESGISTRO TIPO Z
      Writeln(wREGISTRO,'Z'+FormatFloat('000000',CdSCrCduplicata.RecordCount)
                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',CValorTotal.Value)),17)
                       +PreencheDireita('',125)
                       +'.'
       );
     except on E:EDataBaseError do
     begin
        //beep;
        Screen.Cursor    := CrDefault;
        uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
     end;


     end;

  finally
   Screen.Cursor    := crDefault;
   CloseFile(wREGISTRO);
   if wCANCELAR  = False then
    begin
       //beep;
       uteis.aviso(Pchar('Arquivo '+rgLeiaute.items[rgLeiaute.ItemIndex]+' gerado com sucesso para o Banco : '+#13#10
                   +CCodigoBco.Text+' - '+CbBancos.Text+' ?'));
       BitProcessar.Enabled       := False;
       BitCancelarPro.Enabled     := False;
       BitCancelar.Enabled        := True;
       BitVisualizar.Enabled      := True;
       BitImprimir.Enabled        := True;
       BitTipoImpressao.Enabled   := True;
       wCANCELAR                  := False;
    end
    else
    begin
       BitProcessar.Enabled       := False;
       BitCancelarPro.Enabled     := False;
       BitCancelar.Enabled        := True;
       BitVisualizar.Enabled      := False;
       BitImprimir.Enabled        := False;
       BitTipoImpressao.Enabled   := False;
       wCANCELAR                  := False;
    end;
  end;
end;

procedure TFormGeradorCNAB.BitTipoImpressaoClick(Sender: tObject);
begin
   if PanTipo.Visible then
      begin
         GbCnab.Enabled   := True;
         PanTipo.Visible  := False;
      end
   else
      begin
         GbCnab.Enabled   := True;
         PanTipo.Visible  := True;
      end;
end;

procedure TFormGeradorCNAB.RDProtCNABNewPage(Sender: tObject;
  Pagina: Integer);
begin
    RDProtCNAB.imp (001,001, '========================================================================================================================================');
    RDProtCNAB.imp (002,002, dbInicio.Empresa.FANTASIA);
    RDProtCNAB.ImpD(002,135, 'EMISSAO : '+DateToStr(Date),[]);
    RDProtCNAB.ImpF(003,030, 'P R O T O C O L O   R E M E S S A   C O B R A N Ç A   A R Q U I V O   C N A B',[]);
    RDProtCNAB.ImpD(003,135, 'PAGINA  :       '+FormatFLoat('0000',pagina),[]);
    RDProtCNAB.imp (004,001, '========================================================================================================================================');
    RDProtCNAB.ImpF(005,002, 'BANCO REMESSA: '+FormatFloat('000',FormGeradorCNAB.CCodigoBco.AsInteger)+' - '+FormGeradorCNAB.CbBancos.Text,[]);
    RDProtCNAB.ImpF(005,060, 'DATA REMESSA : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
    RDProtCNAB.ImpF(005,100, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);
    RDProtCNAB.ImpF(006,001, 'INSTRUÇÃO 1: ',[negrito]);
    RDProtCNAB.ImpF(006,070, 'INSTRUÇÃO 2: ',[negrito]);
    SQLDetalhe.Close;
    SQLDetalhe.CommandText := 'select IST_COD_BANCO,IST_CODIGO,IST_DESCRICAO from INSTRUCAO_CNAB where IST_COD_BANCO = '''+CCodigoBco.Text+'''';
    SQLDetalhe.Open;
    if SQLDetalhe.Locate('IST_CODIGO',FormatFloat('00',C1Instrucao.AsInteger),[]) then
       RDProtCNAB.ImpF  (006,014,FormatFloat('000',C1Instrucao.AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,67),[]);

    if SQLDetalhe.Locate('IST_CODIGO',FormatFloat('000',C2Instrucao.AsInteger),[]) then
       RDProtCNAB.ImpF  (006,83,FormatFloat('000',C2Instrucao.AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,63),[]);

    RDProtCNAB.Imp (007,001, '----------------------------------------------------------------------------------------------------------------------------------------');
    RDProtCNAB.ImpF(008,001, 'FATURA   DT BOLETO   VENCIMENTO VALOR  R$ [              C L I E N T E             ] NOSSO NUMERO   PROTESTAR INSTRUCAO DA OCORRENCIA   ',[]);
    RDProtCNAB.Imp (009,001, '----------------------------------------------------------------------------------------------------------------------------------------');
    //                        123456-01 30/03/2005 31/03/2005 99.999,99 010622-12345678901234567890123456789012345 123456789012 SIM 15 DIAS 001-1234567890123456789012
end;

procedure TFormGeradorCNAB.rgLeiauteClick(Sender: TObject);
begin
  AtribuirEspecieBanco(CCodigoBco.Text);
  PreencherInstrucao( CCodigoBco.Text);
end;

procedure TFormGeradorCNAB.RDProtCNABBeforeNewPage(Sender: tObject;
  Pagina: Integer);
begin
    RDProtCNAB.imp   (062,001, '========================================================================================================================================');
    RDProtCNAB.impF  (063,001, ' QTDE DE REGISTROS: ',[]);
    RDProtCNAB.impVal(063,022, '000000',iQtdeRegistro,[]);
    RDProtCNAB.impF  (063,098, 'VALOR TOTAL REMESSA : ',[]);
    RDProtCNAB.impVal(063,121, '###,###,##0.00',cTOTAL_GERAL,[]);
    RDProtCNAB.imp   (064,001, '========================================================================================================================================');
end;

procedure TFormGeradorCNAB.ImprimirProtocoloRemessaCNAB400(wSAIDA,wCOD_REMESSA: String);
begin
   try
      Screen.Cursor := CrHourglass;
      {seleciona duplicatas}
      wSql1      := 'SELECT D1.DCN_NOSSO_NUMERO,D1.DCN_INSTRUCAO1,D1.DCN_INSTRUCAO2,D1.DCN_PROTESTAR,D1.DCN_DIAS_PROT,D1.DCN_COD_OCORRENCIA,O1.ocr_descricao,F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_DATABOLETO,F1.FPC_VENCTO,';
      wSql2      := 'F1.FPC_VLPARC,F1.FPC_COBNUM,F1.CLI_CODIGO,C1.CLI_RAZAO FROM DUPLICAT_CNAB D1 ';
      wSql3      := 'LEFT JOIN FAT_PC01 F1 ON (F1.FAT_CODIGO = D1.DCN_DUPLICATA AND F1.FPC_NUMER = D1.DCN_DUP_PARCELA) AND (F1.EMP_CODIGO = D1.EMP_CODIGO) LEFT JOIN CLI0000  C1 ON (C1.CLI_CODIGO = F1.CLI_CODIGO) ';
      wSql4      := 'LEFT JOIN OCORRENCIA_CNAB O1 ON (D1.DCN_COD_OCORRENCIA = O1.OCR_COD_OCORRENCIA AND O1.OCR_TIPO_OCORRENCIA='''+DataCadastros1.CdSOcorrenciaCNAB.FieldByName('OCR_TIPO_OCORRENCIA').AsString+''') AND (F1.BAN_COD_APELIDO = O1.OCR_COD_BANCO)';
      wSeleciona := 'WHERE D1.DCN_COD_REMESSA = '''+wCOD_REMESSA+'''';
      if Share('RECEBER')= 'E' then
         begin
             wSeleciona := wSeleciona + ' AND D1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
         end;
      if Assigned(FormGeradorCNAB) then
         begin
            if FormGeradorCNAB.RadNumFatura.Checked then
               wOrdem := 'F1.FAT_CODIGO,F1.CLI_CODIGO'
            else
            if FormGeradorCNAB.RadCodCliente.Checked then
               wOrdem := 'F1.CLI_CODIGO,F1.FAT_CODIGO'
            else
            if FormGeradorCNAB.RadRazao.Checked then
               wOrdem := 'C1.CLI_RAZAO,F1.FAT_CODIGO';
         end
      else
         begin
            if RadNumFatura.Checked then
               wOrdem := 'F1.FAT_CODIGO,C1.CLI_CODIGO'
            else
            if RadCodCliente.Checked then
               wOrdem := 'F1.CLI_CODIGO,F1.FAT_CODIGO'
            else
            if RadRazao.Checked then
               wOrdem := 'C1.CLI_RAZAO,F1.FAT_CODIGO';
         end;
      SQLRelatorio.Close;
      SQLRelatorio.CommandText := SQLDEF('RECEBER',wSQL1+wSQL2+wSql3+wSql4,wSeleciona,wOrdem,'D1.');
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
                   RDProtCNAB.ImpF  (iLINHA,001,SQLRelatorio.FieldByname('FAT_CODIGO').AsString+IIF(SQLRelatorio.FieldByname('FPC_NUMER').AsString='','','-'+SQLRelatorio.FieldByname('FPC_NUMER').AsString),[]);
                   RDProtCNAB.ImpF  (iLINHA,011,SQLRelatorio.FieldByname('FPC_DATABOLETO').AsString,[]);
                   RDProtCNAB.ImpF  (iLINHA,022,SQLRelatorio.FieldByname('FPC_VENCTO').AsString,[]);
                   RDProtCNAB.ImpVal(iLINHA,033,'##,##0.00',SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency,[]);
                   RDProtCNAB.ImpF  (iLINHA,043,StrZero(SQLRelatorio.FieldByname('CLI_CODIGO').AsString,6)+'-'+TiraCaracteresEspeciais(copy(SQLRelatorio.FieldByname('CLI_RAZAO').AsString,1,35),true),[]);
                   RDProtCNAB.Imp   (iLINHA,085,SQLRelatorio.FieldByName('DCN_NOSSO_NUMERO').AsString);
                   if SQLRelatorio.FieldByname('DCN_PROTESTAR').AsString = 'S' then
                      RDProtCNAB.ImpF  (iLINHA,104,'S',[])
                   else
                      RDProtCNAB.ImpF (iLINHA,104,'N',[]);

                   RDProtCNAB.ImpF    (iLINHA,108,FormatFloat('00',SQLRelatorio.FieldByname('DCN_DIAS_PROT').AsInteger)+'-D',[]);
                   RDProtCNAB.Imp     (iLINHA,116,StrZero(SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsString,3)+'-'+Copy(SQLRelatorio.FieldByname('OCR_DESCRICAO').AsString,1,22));
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

procedure TFormGeradorCNAB.CarregaContaBancos;
begin
 if ccBan_codigo.Text <> '0000' then
 begin
  SQLContaBancos.Close;
  SQLContaBancos.CommandText := SQLDEF('BANCOS','SELECT B1.* FROM BAN0000 B1 ','WHERE B1.BAN_CODIGO = '''+StrZero(ccBan_codigo.Text,4)+'''','B1.BAN_CODAGE','B1.');
  SQLContaBancos.Open;

  if SQLContaBancos.FieldByName('BAN_LEIAUTE').AsInteger = 2 then
  begin
    rgLeiaute.ItemIndex := 1;
    wLeiaute := 2;
  end
  else
  begin
    rgLeiaute.ItemIndex := 0;
    wLeiaute := 1;
  end;

 end;
end;

procedure TFormGeradorCNAB.CarregaLogo;
var
   sCodigo:String;
begin 
   //
   if (CCodigoBco.Text <> '') then
      begin
         sCodigo := IntToStr(CCodigoBco.AsInteger);
      end
   else
      begin
         sCodigo := '-1';
      end;
   if (FileExists(dbInicio.SistemaLocal+'\logo\'+Formatar(sCodigo,3,False,'0')+'.jpg')) then
      begin
         ImgBanco.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(sCodigo,3,False,'0')+'.jpg');
      end
   else
      begin
         ImgBanco.Picture := nil;
      end;
end;

procedure TFormGeradorCNAB.DBGridDuplicataDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not CdSCrCduplicata.IsEmpty) then
      begin
         if Column.Field = (CdSCrCduplicataSELECAO) then
            begin
              DBGridDuplicata.Canvas.FillRect(Rect);
              if(CdSCrCduplicataSELECAO.AsBoolean) then
                ImageList1.Draw(DBGridDuplicata.Canvas,Rect.Left+03,Rect.Top+1,2)
              else
                ImageList1.Draw(DBGridDuplicata.Canvas,Rect.Left+03,Rect.Top+1,0);
            end;
      end;
end;

procedure TFormGeradorCNAB.DBGridDuplicataDblClick(Sender: tObject);
begin
   if (not CdSCrCduplicata.IsEmpty) then
      begin
         try
            // marca ou desmarca selecao
            CdSCrCduplicata.Edit;
            CdSCrCduplicataSelecao.AsBoolean := not CdSCrCduplicataSELECAO.AsBoolean;
            CdSCrCduplicata.Post;
            // diminuir ou aumentar conforme selecao
            if CdSCrCduplicataSelecao.AsBoolean = false then
                CurTotalFaturas.Value := CurTotalFaturas.Value - CdSCrCduplicataFPC_VLPARC.AsCurrency
            else
               CurTotalFaturas.Value := CurTotalFaturas.Value + CdSCrCduplicataFPC_VLPARC.AsCurrency;

         except
         end;
      end;
   CalculaTotaisSelecao;
end;

procedure TFormGeradorCNAB.CCodigoBcoChange(Sender: tObject);
begin
   CarregaLogo;
end;

procedure TFormGeradorCNAB.LimparSelecao;
begin
   if (not CdSCrCduplicata.IsEmpty) then
      begin
         CdSCrCduplicata.Filtered := False;
         CdSCrCduplicata.DisableControls;
         CdSCrCduplicata.First;
         while (not CdSCrCduplicata.Eof) do
            begin
               CdSCrCduplicata.Edit;
               CdSCrCduplicataSELECAO.AsBoolean := False;
               CdSCrCduplicata.Post;
               //proximo
               CdSCrCduplicata.Next;
            end;
         CdSCrCduplicata.Refresh;
         CalculaTotaisSelecao;
         CdSCrCduplicata.EnableControls;
      end;
end;

procedure TFormGeradorCNAB.CalculaTotaisSelecao;
var
   Pointer:TBookmark;
begin
   //Total das Duplicatas
   Pointer := CdSCrCduplicata.GetBookmark;
   CQtdeDupliTotal.AsInteger := CdSCrCduplicata.RecordCount;
   //Filtra para ver as selecionadas
   CdSCrCduplicata.Filtered := False;
   CdSCrCduplicata.Filter := 'SELECAO = true';
   CdSCrCduplicata.Filtered := True;
   CQtdeDupliSelecionada.AsInteger     :=  CdSCrCduplicata.RecordCount;
   CdSCrCduplicata.Filtered := False;
   //Calcula as restantes
   CQtdeDupliRestante.AsInteger :=  CQtdeDupliTotal.AsInteger -  CQtdeDupliSelecionada.AsInteger;
   try
     CdSCrCduplicata.GotoBookmark(Pointer);
   except

   end;

end;

procedure TFormGeradorCNAB.CdSCrCduplicataCalcFields(DataSet: TDataSet);
begin
    //totalizando
    CdSCrCduplicataCC_TOTAL_FATURAS.AsCurrency := CdSCrCduplicataCC_TOTAL_FATURAS.AsCurrency + CdSCrCduplicataFPC_VLPARC.AsCurrency;
end;

procedure TFormGeradorCNAB.CDSCrcDuplicataSELECAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     Text := '';
end;

procedure TFormGeradorCNAB.edtMultaKeyPress(Sender: tObject;
  var Key: Char);
begin
     AcceptNumberOnly( key );
end;

procedure TFormGeradorCNAB.edtMultaDiasKeyPress(Sender: tObject;
  var Key: Char);
begin
     AcceptNumberOnly( key );
end;

end.


