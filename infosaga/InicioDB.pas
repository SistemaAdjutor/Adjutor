unit InicioDB;

// migrada antiga unit abertura.pas
// migrada antiga unit senhaform.par
// {$D-}

{$DEFINE ADJUTOR}
{$DEFINE SISTEMA} //COMENTE ESTA LINHA PARA COMPILAR O PACK infosagaD102 - remova o comentario para compilar o sistema

interface

uses
  IdSSLOpenSSL,
  System.JSON,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  System.DateUtils,
  Controls,
  Forms,
  Dialogs,
  BaseForm,
  StdCtrls,
  ExtCtrls,
  IniFiles,
  DB,
  SqlExpr,
  Mask,
  DBCtrls,
  FMTBcd,
  jpeg,
  IdMultipartFormData,
  Xml.XMLIntf,
  Xml.XMLDoc,
  idHttp,
  ACBrBase,
  ACBrCalculadora,
  DBClient,
  Provider,
  RLRichFilter,
  RLXLSFilter,
  RLPDFFilter,
  RLFilters,
  RLHTMLFilter,
  RLPreviewForm,
  RlConsts,
  RLDraftFilter,
  Buttons,
  RXCtrls,
  Data.DBXInterBase,
  Data.DBXFirebird,
  ACBrEnterTab,
  RxToolEdit,
  RxCurrEdit,
  JvExControls,
  JvAnimatedImage,
  JvGIFCtrl,
  IBX.IBDatabase,
  Xml.xmldom,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  Xml.Win.msxmldom,
  RzLaunch,
  SgDbSeachComboUnit,
  Vcl.Themes,
  Vcl.Styles,
  Data.DBXCommon,
  JvComponentBase,
  JvBalloonHint,
  Shellapi,
  JvThread,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Phys.IBBase,
  uniGUIBaseClasses,
  uniGUIClasses,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxDBLookupComboBox,
  IdIPWatch,
  FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IB,
  JvPropertyStore,
  JvProgramVersionCheck,
  System.StrUtils,
  FireDAC.Phys.Intf,
  FireDAC.Phys.FBDef,
  FireDAC.DApt.Intf,
  IdIntercept,
  IdGlobal,
  ACBrMail;

type

  TEnumTipoSequencia = ( tpGenerator, tpFatura );
  TEnumTipoDanfe = ( tpRetrato, tpPaisagem );
  TEnumModoSSL = ( tsslmBoth, tsslmClient, tsslmServer, tsslmUnassigned );
  TEnumValorAproximadoImpostos = ( vaiApenasConsumidorFinal, vaiTodos );
  TEnumModoOperacao = ( tpNormalEstadual, tpContingencia );
  TEnumTipoAmbiente = ( tpProducao, tpTeste );
  TEnumTipoOperacao = ( tpGerarXML, tpTransmitir, tpVerificar, tpCancelar,
    tpInutilizar, tpImprimir, tpCartaCorrecao );

  tVersao = record
    CODIGO : Integer;
    VERSAO : string;
    VERSAOCOMPLETO : string;
    patch : Integer;
    Data : TDateTime;
    PROGRAMA : String;
    NOMEARQUIVO : String;
    ARQUIVO : string;
    ATUALIZADOR : string;
    Issues : string;
    PATH : string;
  end;

  tUsuario = record

    const
      USUARIOPADRAO = 'ADM';
      SENHAPADRAO = '@1N19';

    var
      USERNAME : String;
      PSW : String;
      NOME : String;
      ATIVO : boolean;
      NIVELACESSO : Integer;
      CODIGO : String;
      EMAIL_USUARIO : string;
      USU_EMAIL_SENHA : STRING; // SENHA DO EMAIL DO USUARIO
  end;

type
  tsharedb = record
    Produtos : boolean;
    ProdutoPrecoEmpresa: boolean;
    EnderecoEstoque: boolean;
    Clientes : boolean;
    Bancos : boolean;
    Transportadora : boolean;
    Representantes : boolean;
    Fornecedores : boolean;
    Receber : boolean;
    Pagar : boolean;
    Pedidos : boolean;
    Cotacoes : boolean;
    OrdensCompra : boolean;
    FichaTecnica : boolean;
    OrdemProducao : boolean;
    Parametros : boolean;
    Tabelas : boolean;
    Prazos : boolean;
    OperacaoFiscal : boolean;
    PlanoContas : boolean;
    Fiscal : boolean;
    Estoques : boolean;
    ICMS : boolean;
  end;

type
  TNfe = Record
    TipoSequencia : TEnumTipoSequencia;
    OptantePeloSimplesNacional : boolean;
    EmailCabecalho : String;
    EmailHost : String;
    EmailUserName : String;
    EmailPorta : String;
    EmailPassworld : String;
    EmailAutenticacao : boolean;
    CaminhoLogotipo : String;
    TipoDanfe : TEnumTipoDanfe;
    RequerConexaoSSL : boolean;
    Porta : Integer;
    VersaoSSL : Integer;
    ModoSSL : TEnumModoSSL;
    ComplementoProduto : boolean;
    ValorAproximadoImpostos : TEnumValorAproximadoImpostos;
    ModeloDanfe : string;
    NumeracaoUnica : string;
    ModoOperacao : TEnumModoOperacao;
    AmbienteWebService : TEnumTipoAmbiente;
    CertificadoDigital : String;
    CertificadoSelecionado : boolean;
    Justificativa : String;
    Contingencia : string;
    sincrono : boolean;
    Logo : tBitMap; // adr 2016
    Usar_Logo : boolean;
    EmailRepresentanteNFE : boolean;
    Emp_TipoCertificado : Integer;

  End;

  TNFCe = record
    CSC : string; // CODIGO DE SEGURANÇA DO CONSUMIDOR
    IDToken : string;
  end;

  TEmpresaRec = Record
    EMP_CODIGO : String;
    CNPJ_CNPF : String;
    INSC_EST : String;
    INS_MUNICIPAL : String;
    RAZAO : String;
    FANTASIA : String;
    ENDERECO : String;
    BAIRRO : String;
    CIDADE : String;
    UF : String;
    CEP : String;
    FONE : String;
    CXPOSTAL : String;
    FAX : String;
    HOME_PAGE : String;
    EMAIL : String;
    EMAILVENDA : String;
    EMAILCOMPRA : String;
    EmailPassworldCompras : String;
    NOMECOMPRADOR : String;
    END_ENTREGA : String;
    CID_ENTREGA : String;
    UF_ENTREGA : String;
    CEP_ENTREGA : String;
    OPT_SIMPLES : String;
    REGIME_SERVICO : String;

    EMP_PIS_ALIQ : Currency;
    EMP_COFINS_ALIQ : Currency;

    ALIQ_SIMPLES : Real;
    ALIQ_CREDITO : Real;
    ALIQ_ISS : Real;
    ALIQ_IR : Real;
    ALIQ_PIS : Real;
    ALIQ_COFINS : Real;
    AmbienteNfe : Integer;

    CHAVE : String;
    DATA_ACESSO : TDate;
    CaminhoLogo : String;
    // Configurações de Email
    EmailHost : String;
    EmailAutenticacao : boolean;
    EmailUserName : String;
    EmailPassworld : String;
    EmailUserNameFinanceiro : string;
    EmailPassworldFinanceiro : String;

    // parametros de usuários
    EmailPorta : string;
    EmailRequerConexaoSSL : boolean;
    EmailRequerConexaoTLS : boolean;
    EmailModoSSL : String;
    EmailVersaoSSL : Integer;
    iCSOSN : Integer;
    iCSOSN_ST : Integer; // adr 2015
    Logo : tBitMap; // adr 2016
    bEMP_NFE_FAT : boolean; // marca no faturamento para enviar ao sefaz
    wPmt_Tabnome1 : string[ 030 ];
    wPmt_Tabnome2 : string[ 030 ];
    wPmt_Tabnome3 : string[ 030 ];
    wPmt_Tabnome4 : string[ 030 ];
    wPmt_Tabnome5 : string[ 030 ];
    wPmt_Tabnome6 : string[ 030 ];

    wPmt_Percvenda1 : Double;
    wPmt_Percvenda2 : Double;
    wPmt_Percvenda3 : Double;
    wPmt_Percvenda4 : Double;
    wPmt_Percvenda5 : Double;
    wPmt_Percvenda6 : Double;

    wPmt_PercComissao1 : Double;
    wPmt_PercComissao2 : Double;
    wPmt_PercComissao3 : Double;
    wPmt_PercComissao4 : Double;
    wPmt_PercComissao5 : Double;
    wPmt_PercComissao6 : Double;
    wPmt_TelaPedidoDoacao : boolean;
    wPmt_Ativa_NFCE : boolean;
    wPMT_CALCULO_MARGEM_VENDA : Integer;
    wPMT_MEM_PESQPED : boolean;
    wPMT_FATURAR_PENDENCIAS : boolean;
    wPMT_OP_SEMAPONTA : boolean;
    wPMT_NAO_AUTO_PVENDA : boolean;
    WPMT_RESPONSAVEL_TECNICO : boolean;
    wPMT_PROD_TERMICO : boolean; // tratamento termico
    wPMT_ORC_GERAPEDIDO : boolean;
    // orçamento industrial gera pedido automaticamente ao aprovar
    wPMT_ORC_GERAACORDO : boolean;
    // orçamento industrial gera pedido automaticamente ao aprovar
    PMT_GerarTagICMSSubsPagaAnter : string;
    PMT_NAO_ATUALIZAR_BANCO : boolean;
    wPMT_ORDEM_CODFORN, wPMT_ORDEM_DESCFORN : boolean;
    // mostrar a descricao e código do produto no fornecedor
    wPMT_EXPEDICAO_MULTIEMPRESA : boolean; // expedição multiempresa
    wPMT_FATURA_MULTIEMPRESA : boolean;
    Wpmt_atualiza_prazo_cliente : boolean;
    WPMT_RETIRAR_ICMS_BASECOFINSPIS : boolean;
    wPMT_CERTIFICADO_DIGITAL : string;
    SerieNF : string;
    EmailContador : string;
    EmailInterno : string;
    emp_crt : string;
    Cid_Codigo : Integer;
    CID_IBGE : Integer;
    TipoSeqNfe : string;
    MensagemNFe : string;
    wTipoLiberacaoFaturamento : string; // M manual e Automatico
    PMT_LIBERAR_EXPEDICAO : string; // p - pedido f -faturamento
    PMT_ICMS_CUSTOENTRADA : boolean; // 'RETIRAR ICMS DO CUSTO DE ENTRADA
    PMT_PIS_CUSTOENTRADA : boolean; // 'RETIRAR PIS/COFINS DO CUSTO DE ENTRADA
    ModoSSL : string;

    sPadraoConsultaPedidoStatus : string;
    VisualizaPedios_P : boolean;
    VisualizaPedidos_CRM : boolean;
    p_NumDiasValidade_Orcamento : Integer;
    // num dias de validade de orçamento padrão
    pUSP_USAPRAZODESABILITADO : boolean;
    PMT_VINCULAR_VENDEDOR : boolean; // vincular vendedor com usuario no pedido
    fCODIGO_REPRES : string; // REPRESENTANTE DO USUARIO
    bVisualizaClientes_P : boolean;
    sCaminhoServidorPCP : string;
    bReajusteVenda : boolean;
    sMensagemPadraoPedido : WideString;
    pComissaoEscala : boolean;
    pComissaoSimples : boolean;
    pComissaoItem : boolean;
    pComissaoPadrao : boolean;
    pComissaoRepresentantePadrao : Double;
    pComissaoSupervisorPadrao : Double;
    pComissaoGerentePadrao : Double;
    fSeqUnicaPed : boolean;
    wPrm_NrPedido_Vendedor_fat : boolean;
    wPMT_COMP_ITEM_PEDIDO_IT_NF : boolean;
    wPMT_FAT_CONFIRMA_PARCELA : boolean;
    bFaturamentoIPI1Parcela : boolean;
    bFaturamentoST1Parcela : boolean;

    wAtualizaEstoque : string;
    bVisualizaMarkupPedido : boolean;
    AcessoRelatorios_P : string;
    bCentroCustoObrigatorio : boolean;
    PMT_CENTROCUSTO_REQUERIDO_PAGAR : boolean;
    // frmpedidoitem
    DesctoMaximo_P : Currency;
    bUtilizaGrade : boolean; // utilizando a grade
    bDigitacaoGradeVendas : boolean;
    // multiplas grades  ao invés de de grade simples
    bBloquearVendaPrecoCustoMargemZerado : boolean;
    bUtilizaB2B : boolean;
    sReferenciaProvisoriaOrcamento : string;
    bGradeObrigatoria : boolean; // grade obrigatória
    pVENDA_ABAIXO_CUSTO : boolean;
    wCalcularPV : Integer;
    bAlteraTabeladePrecos : boolean;
    bDiretivaObrigatoria : boolean;
    bDiretivaObrigatoriaAba : boolean;
    bCadastroProdutoVenda : boolean;
    bTransferenciaKardexVenda : boolean;
    bHabilitaComissaoPedido : boolean;
    bPermitirExcluirItem : boolean;
    bPermitirEstornaExpedicao : boolean;
    bHabilitaColunaNF : boolean;
    sPadraoPesquisaProduto : STRING;
    bHabilitarTabelaPreco : boolean;
    fUSP_ALTERA_COMISSAO : boolean;
    fPMT_QTDE_DEC_PED : Integer;
    fPMT_MULTTAB : string;
    bAlteraDescricaodoItem : boolean;
    wPMT_COMP_ITEM_PEDIDO : boolean;
    wPMT_PRODUTO_SEM_VALOR : boolean; // antigo wPMT_PRODUTO_AGREGADO
    bHabilitaConsultaCompraVenda : boolean;

    sPadraoPesquisaEmpresa : string;
    pVENDA_VER_CUSTO : string;
    pVISUALIZA_ABA_VENDA : string;
    WvARIACOES : boolean;
    bUSP_EXCLUSAO_PEDIDO_P : boolean;
    bUSP_STAT_PRECO_BRUTO_P : boolean;
    bUSP_STAT_PRECO_LIQUIDO_P : boolean;
    bUSP_ALTERA_DESCONTO_P : boolean;
    USP_ALTERA_DESCONTO_NOTA : boolean;
    bUSP_INCLUIR_CLIENTES : boolean;
    bUSP_ALTERAR_CLIENTES : boolean;
    bUSP_USA_CREDITO_CC : boolean;
    bUSP_TRANSFERENCIATITULOS : boolean;

    fPedNumeracaoAutomatica : boolean;
    wBtnEquivale : string;
    wPmt_Utiliza_Analise_Credito : string;
    wMultiAlmox : string;
    wPMT_AMX_VENDA : string;
    wVariacaoNota : string;
    wPMT_VENDA_MSG_ATRASO_FIN : string;

    wPMT_UTILIZA_CODIGO_ORIG_VD : boolean;
    PMT_DESCOSIDERAR_FATURA : boolean;

    bPMT_HABILITAR_CODORIGINAL : boolean;
    bPMT_PRAZO_ITEM : boolean;
    wPrmMarca : string;
    wCod_Carteira : string;
    wTp_Cobranca : string;
    wTp_Docuto : string;

    wNFModelo : string;
    wPMT_MOD_BOLETO_BARRA : Integer;
    sEmpresaPadraoBoleto : string;

    TextoCobranca1 : string;
    TextoCobranca2 : string;
    TextoCobranca3 : string;
    wPMT_PATH_LOGODUPL : string;
    sTipoBaseCustoProducao : STRING;
    sPMT_MSG_ETIQUETASISTEMA : STRING;

    FormatoPadraoReferencia : String;
    fPMT_VALOR_APROX_TRIB : String;
    fPMT_FORM_DANFE : String;
    fPMT_USAR_SEQUENCIA_NFE_UNICA : String;
    fPMT_MULTIPLICADOR_P : boolean;

    WebServiceValidaLicenca : String;
    WebServiceValidaLicenca2 : String;
    wPMT_CAB_TABPRECO : string;
    wPMT_CNPJ_CLIENTE_DUPLICADO : boolean;
    iCasaDecimaisEnf : Integer;
    wPmt_Amx_EntradaNota : string;
    wCalcularPM : Integer; (* calcular preço medio *)
    wPMT_VALOR_KIT : boolean;
    wPMT_ITENS_KIT : boolean;
    wPMT_PAGAR_COMISSAO_VERBA : boolean;
    wPMT_TRIB_NF : boolean;
    wPMT_CONTROLA_KIT : boolean;
    wPMT_PRODUZIR_MAIS_OP : boolean;
    // parametro de produção se pode produzir além da quantidade da OS
    wPMT_VARPERC_MEDIDA_PRODUTO : Double;
    // VARIACAO EM PERCENTUAL DE MEDIDA DE PRODUTO NA PESQUISA DE VENDA
    bPMT_HABILITA_MEDIDAPRD : boolean;
    // 'HABILITAR CAMPOS DE MEDIDAS DOS PRODUTOS PARA VENDA'
    bPMT_NCM_UND_ITEM_PROV : boolean;
    // LIBERAR DIGITACAO DE NCM E UND EM ITEM PROVISORIO
    bUSP_ABRICHAMADO : boolean;
    bPMT_ATIVAR_PPAC : boolean;
    bUSP_DASH_VENDAS, bUSP_DASH_FINANCEIRO, bNaoAbrirDash : boolean;
    bPMT_INCLUIRRAPIDO : boolean;
    bUSP_ALTERA_FORMA_PAG_FAT : boolean;
    spmt_CaminhoFoto : string;
    sPMT_CAMINHO_PEDIN : string;
    // ALMOXARIFADO
    PMT_AMX_PRODUCAO_ENTRADA : string; // almoxarifado de entrada

    // NOTA FISCAL
    PMT_MENSAGEM1 : string;
    PMT_MENSAGEM2 : string;
    PMT_MENSAGEM3 : string;

    // CONTROLE FINANCEIRO
    bPMT_CONTROLE_CONTASPAGAR : boolean;
    // 'HABILTAR APROVACAO PARA PAGAMENTO NO CONTAS A PAGAR';
    bUSP_APROVAR_PAG : boolean; // 'APROVAR PAGAMENTO DE CONTAS A PAGAR';
    bUSP_REPROVAR_PAG : boolean; // 'REPROVAR PAGAMENTO DE CONTAS A PAGAR';
    bUSP_APROVAR_EST, bUSP_REPROVAR_EST, bUSP_APONTAR_EST : boolean;
    bUSP_APONTAR : boolean; // apontar pagamento/solicitar
    bUSP_CUSTOPRODUCAO : boolean; // mostrar custo de produção

    USP_LIMITE_CONSULTA_ORCA : Integer; // limite de consulta de orçamentos
    // NOVA PRODUÇÃO
    Bpmt_gerarsubordens : boolean;
    // 'gerar subordens(PI/PA) DENTRO DA PRINCIPAL';
    PMT_COMPOSICAOORDEM : string; // S -SEQUENCIAL P  - PEDIDO
    PMT_HABILITAR_MRP : boolean; // habilitar nova produção
    PMT_AMX_PRODUCAO_SAIDA : string;
    // amoxarifado de produção de saida -- paramettro do antigo

    PMT_COMSUMIRINSUMO : string;
    // m - manual;  i - iniciar produção ou E - envio a producao
    PMT_OPS_CONCLUIR : boolean;
    // gravar saidas no kardex sem controlar empenho do estoque
    PMT_GERAR_NUM_LOTE : string;

    PMT_LOTE_AUTOMATICO : string;
    PMT_LOTE_PREFIXO : string;
    PMT_LOTE_SEMENTE : Integer;

    PMT_HABILITAR_DIFAL : boolean;
    PMT_VALOR_DIFAL_PEDIDO : boolean;
    PMT_PRD_REFER_SCO_REFER : string;
    // Referência genérica de produto em Solicitação de Compra.

    PMT_CUSTO_MATERIAPRIMA : STRING;
    // CUSTO DA MATERIA PRIMA L - LIQUIDO ; E - ENTRADA - M - CUSTO MEDIO
    PMT_CUSTOOPERACAO : string; // “Formação do custo de Operação”
    PMT_CUSTOCOLABORADOR : string; // “Formação do custo de mão-de-obras
    PMT_CUSTOEQUIPAMENTO : string; // “Formação do custo do equipamento”

    PRD_SPEDVALIDA : boolean;
    // ativar validação de sped no cadastro de produto;
    PMT_ENVASE_SBAIXA : boolean; // AUTORIZA CONCLUIR ENVASE SEM ESTOQUE
    PMT_HABILITA_ENVASE : boolean; // autoriza controle do envase

    USP_BLOQUEIO_ALTERA_VENDEDOR : boolean;
    // bloquea o usuario e alterar o vendedor
    PMT_REL_ORDEMPRODUCAO : string; // MODELO DE  IMPRESSÃO DE ORDEM DE PRODUÇÃO
    PMT_CLIENTE_PRODUCAO : string; // cliente padrão ao incluir produção pelo
    USP_OPV_CODIGO : Integer;
    USP_PERMITE_ALTER_TIPO : boolean; // PERMITE ALTERAT TIPO DE PEDIDO
    USP_DESABILITA_COPIAR_PEDIDO : boolean;
    // DESABILITA A CÓPIA DE PEDIDOS NA TELA DE PEDIDOS
    PMT_HABILITAR_PRODU_ANTIGO : boolean; // HABILITAR PRODUÇÃO ANTIGA
    PMT_INTEGRAR_PRD_SERV : boolean;
    PMT_ATIVAR_INTERMEDIADOR : boolean; // HABILITAR TAG INTERMEDIADOR
    PMT_HABILITA_ICMS_PEDIDO : boolean;
    // HABILITAR A COLUNA ICMS NO ITEM DO PEDIDO
    PMT_PEDIDO_IND_PLASTICA : boolean;

    PMT_FAT_NF_VALOR_ORIGINAL : string;
    // Composição do Valor Original da Fatura na Nota Fiscal - [T] Valor Total dos Produtos | [L] Valor Líquido da Fatura
    PMT_FAT_NF_FRETE_SEGURO_DESP : boolean;
    // Inclui Frete, Seguro e Despesas no Valor Original da Fatura na Nota Fiscal - [S]im | [N]ão
    PMT_FAT_NF_VALOR_LIQ_DESC : boolean;
    // Inclui os Descontos (Pedido e Faturamento) no Valor Original da Fatura na Nota Fiscal - [S]im | [N]ão
    PMT_FAT_NF_VALOR_ANTECIPADO : boolean;
    // Diminui o Valor Antecipado do Valor Original da Fatura na Nota Fiscal - [S]im | [N]ão
    PMT_FAT_NF_SEM_VALOR_COMERCIAL : boolean;
    // Diminui CFOP Sem Valor Comercial do Valor Original da Fatura na Nota Fiscal - [S]im | [N]ão
    PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP : boolean;
    // Diminui o Valor Antecipado do Valor Liquido da Fatura na Nota Fiscal - [S]im | [N]ão
  end;

  // Nota Fiscal servico
  TNFSE = record
    NaturezaOpe : Integer; // natureza operação
    AmbienteNFSE : Integer;
    ALIQ_ISS : Real;
    ALIQ_IR : Real;
    ALIQ_PIS : Real;
    ALIQ_COFINS : Real;
    ALIQ_CSLL : Real;
    Aliq_INSS : Real;
    Serie : string; // série da NFSE padrão que guarda no cadastro de empresa
    ATIVA_NFSE : boolean;
    Emp_TipoCertificado : Integer;
  end;

  TConexaoBase = Record
    TipoConexao : String;
    ServidorDados : String;
    VendorLib : String;
    TipoProtocolo : String;
    Dialeto : String;
    HostName : String;
    PathRemoto : String;
    PathLocal : String;
    Usuario : String;
    Senha : String;
    UnidadeServidor : String;
    CriarMapeamento : String;
    UnidadeBackup : String;
    IndentificaBackup : String;
    MonitoraSql : boolean;
  end;

  TDBInicio = class( TfrmBase )
    MainDB : TSQLConnection;
    dspAux : TDataSetProvider;
    cdsAux : TClientDataSet;
    RLHTMLFilter1 : TRLHTMLFilter;
    RLPDFFilter2 : TRLPDFFilter;
    RLXLSFilter1 : TRLXLSFilter;
    RLRichFilter1 : TRLRichFilter;
    RLPreviewSetup1 : TRLPreviewSetup;
    RLDraftFilter1 : TRLDraftFilter;
    qAux2 : TSQLQuery;
    qAux3 : TSQLQuery;
    Panel1 : TPanel;
    Image1 : TImage;
    RxLabel3 : TRxLabel;
    RxLversao : TRxLabel;
    RxLabel1 : TRxLabel;
    lbCopyright : TRxLabel;
    btCancel : TBitBtn;
    btOk : TBitBtn;
    qAux : TSQLQuery;
    SqlVersao : TSQLQuery;
    SqlVersaoCODIGO : TIntegerField;
    SqlVersaoVERSAO : TStringField;
    SqlVersaoDATA : TDateField;
    SqlVersaoPROGRAMA : TStringField;
    SqlVersaoNOMEARQUIVO : TStringField;
    SqlVersaoARQUIVO : TBlobField;
    SqlVersaoATUALIZADOR : TBlobField;
    DspVersao : TDataSetProvider;
    CdsVersao : TClientDataSet;
    CdsVersaoCODIGO : TIntegerField;
    CdsVersaoVERSAO : TStringField;
    CdsVersaoDATA : TDateField;
    CdsVersaoPROGRAMA : TStringField;
    CdsVersaoNOMEARQUIVO : TStringField;
    CdsVersaoARQUIVO : TBlobField;
    CdsVersaoATUALIZADOR : TBlobField;
    vXMLDoc : TXMLDocument;
    IdHTTP1 : TIdHTTP;
    Label2 : TLabel;
    Label1 : TLabel;
    CEmpresa : TCurrencyEdit;
    CbEmpresa : TComboBox;
    EdUsuario : TEdit;
    Label3 : TLabel;
    Label4 : TLabel;
    edSenha : TMaskEdit;
    RzLauncher1 : TRzLauncher;
    JvBalloonHint1 : TJvBalloonHint;
    JvThread1 : TJvThread;
    FDACConn : TFDConnection;
    FDQuery1 : TFDQuery;
    FDTransaction1 : TFDTransaction;
    FDPhysFBDriverLink1 : TFDPhysFBDriverLink;
    FDGUIxWaitCursor1 : TFDGUIxWaitCursor;
    IdIPWatch1 : TIdIPWatch;
    FDIBSDump1 : TFDIBSDump;
    lpatch : TLabel;
    cbConfig : TComboBox;
    IdConnectionIntercept1 : TIdConnectionIntercept;
    ACBrMail : TACBrMail;

    procedure FormCreate( Sender : TObject );
    procedure MainDBBeforeDisconnect( Sender : TObject );
    procedure FormShow( Sender : TObject );
    procedure FormKeyDown(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState );
    procedure FormDestroy( Sender : TObject );
    procedure btCancelClick( Sender : TObject );
    procedure btOKClick( Sender : TObject );
    procedure CbEmpresaClick( Sender : TObject );
    procedure CEmpresaExit( Sender : TObject );
    procedure edSenhaKeyDown(
      Sender  : TObject;
      var Key : Word;
      Shift   : TShiftState );
    procedure JvThread1Execute(
      Sender : TObject;
      Params : Pointer );
    procedure JvThread1Begin( Sender : TObject );
    procedure cbConfigCloseUp( Sender : TObject );
    procedure IdConnectionIntercept1Connect( ASender : TIdConnectionIntercept );
    procedure IdConnectionIntercept1Disconnect
      ( ASender : TIdConnectionIntercept );
    procedure IdConnectionIntercept1Receive(
      ASender     : TIdConnectionIntercept;
      var ABuffer : TIdBytes );
    procedure IdConnectionIntercept1Send(
      ASender     : TIdConnectionIntercept;
      var ABuffer : TIdBytes );
    procedure ACBrMailAfterMailProcess( Sender : TObject );
    procedure ACBrMailBeforeMailProcess( Sender : TObject );
    procedure ACBrMailMailException(
      const AMail : TACBrMail;
      const E     : Exception;
      var ThrowIt : boolean );
    procedure ACBrMailMailProcess(
      const AMail   : TACBrMail;
      const aStatus : TMailStatus );
    procedure EdUsuarioChange( Sender : TObject );

    private
      vlUsuario : tUsuario;
      vlEmpresa : TEmpresaRec;
      vlNfe : TNfe;
      vlNFCe : TNFCe;
      vlNFSe : TNFSE;
      vlSharedb : tsharedb;
      vlBancoConexao : TConexaoBase;
      vlVersao : tVersao;
      vlSistemaLocal : string;
      vlMeuIp : String;
      vlProgSel : String;
      vlEmpSel : string;
      vlSem_Validacao : boolean;
      fIsDesenvolvimento : boolean;
      fVerificaVersao : boolean;
      fModulosComoAplicacao : boolean;
      fIsServidor : boolean;
      fIsCliente : boolean;

      function GetNomeServidor : string;
      function GetPastaDb : string;
      function GetNomeDb : string;
      function IsServer : boolean;

      procedure ReadIniFile( const name : string = 'Adjutor.ini' );

      Function InsereTabela(
        const pTabela : string;
        pCampos       : array of string;
        const CampoPK : string ) : boolean;
      Procedure InsereRegistro(
        pTabela    : string;
        pRegistros : array of string ); Overload;
      Procedure InsereRegistro( pTabela, pRegistros : string ); Overload;
      Procedure InsereChaveEstrangeira( pNomeFK, pTabela, pCampo,
        pReferencia : string );
      function InsereView( pNomeView, vSql : string ) : boolean;

      {$ifdef SISTEMA}Function GeraArquivoIni : boolean;{$endif}
      {$ifdef SISTEMA}procedure LerVersao;{$endif}

      procedure LeLogoEmpresa( const pCod : string );
      function GetEmpCod : string;
      procedure StEmpCod( const Value : string );
      procedure OpenParametrosSistema;
      procedure OpenParametrosUsuario;

      {$ifdef SISTEMA}procedure CarregaComboEmpresas;{$endif}
      procedure OpenAux( const pSql : string );
      Function CheckUpdtClient : boolean;
      function CheckUpdtServer : boolean;
      {$ifdef SISTEMA}procedure Validacao;{$Endif}
      procedure LeEstilo;
      procedure CriaMonitor( psqlDB : TSQLConnection );

    public

      {$ifdef SISTEMA}procedure CarregaEmpresaSelecionada( const pCod : string );{$endif}
      procedure CarregaParametrosNFSe;
      procedure CarregarParametrosNFe;
      procedure CarregarParametrosNFCe;
      procedure CarregarCompartilhamentos;
      function ValidaUserSenha( pUser, pSenha : String ) : boolean;
      Function GetServerDate : TDateTime;
      Function IniciaDB(
        sqlDB          : TSQLConnection;
        IsolationLevel : string = 'ReadCommitted' ) : boolean;
      function IniciaDBFireDAC(
        sqlDB          : TFDConnection;
        IsolationLevel : string = 'ReadCommitted' ) : boolean;
      procedure GetBancoConexao( const Value : TConexaoBase );
      // procedure IniciaDBZ(sqlDB: tZConnection); // Zeos Lib
      function OpenIni : boolean;
      Property SistemaLocal : string
        read vlSistemaLocal
        Write vlSistemaLocal;
      Property NomeServidor : string
        read GetNomeServidor;
      Property PastaDB : string
        read GetPastaDb;
      Property NomeDB : string
        read GetNomeDb;

      Property Usuario : tUsuario
        Read vlUsuario
        Write vlUsuario;

      Property Empresa : TEmpresaRec
        Read vlEmpresa
        Write vlEmpresa;
      property BancoConexao : TConexaoBase
        Read vlBancoConexao
        Write GetBancoConexao;
      property MeuIP : string
        Read vlMeuIp
        write vlMeuIp;

      Property PROGRAMA : string
        Read vlProgSel;
      Property VERSAO : tVersao
        read vlVersao
        write vlVersao;

      Procedure InsereCampo( const pTabela, pCampo : string );
      Procedure InsereGenerator( pNmGenerator : string );
      Procedure InsereIndice( pTabela, pNomeIndex, pCampos : string );
      function ExisteCampo( const pTabela, pCampo : string ) : boolean;
      function TabelaExiste( const pTabela : string ) : boolean;

      function GetParametroSistema( const NomeParam : string ) : String;
      function GetParametroUsuario( const NomeParam : string ) : String;

      function Exclusivo( pNomeCompartilhamento : string ) : boolean;

      Function ExclusivoSql( CONST pNomeCompartilhamento : string )
        : String; overload;
      Function ExclusivoSql(
        CONST pNomeCompartilhamento : string;
        const Empresa               : string ) : String; overload;


      function GetNextSequence( const pNomeGenerator : string ) : Integer;
      procedure SetNaoAbrirDash( const aValue : boolean );
      // novi
      function RetornaRegistroTabela( const sTabela, sCampoRegistro,
        sCondicao : String ) : String;
      {$ifdef SISTEMA}
      function ValidaLimiteCredito(
        const sClienteCodigo : string;
        sEmpresaCodigo       : String;
        bBloqueia            : boolean ) : boolean;
      {$endif}

      Property IsDesenvolvimento : boolean
        Read fIsDesenvolvimento
        write fIsDesenvolvimento;
      Property ModulosComoAplicacao : boolean
        Read fModulosComoAplicacao
        write fModulosComoAplicacao;
      property VerificarVersao : boolean
        read fVerificaVersao
        write fVerificaVersao;
      Property EMP_CODIGO : string
        read GetEmpCod
        Write StEmpCod;

      property Nfe : TNfe
        Read vlNfe
        Write vlNfe;
      property NfCe : TNFCe
        Read vlNFCe
        Write vlNFCe;
      property NFSE : TNFSE
        READ vlNFSe
        write vlNFSe;
      property Sharedb : tsharedb
        read vlSharedb
        write vlSharedb;
      Function TestaConexao : boolean;
      function Login : boolean;

      Property IsServidor : boolean
        read fIsServidor
        write fIsServidor;
      Property IsCliente : boolean
        read fIsCliente
        write fIsCliente;
      procedure ValidaOnline(
        const pCnpj        : String;
        pShowException     : boolean;
        chaveCriptografica : string;
        ValidadeContrato   : TDate;
        QuantidadeUsuarios : Integer );
      property modulo : string
        read vlProgSel
        write vlProgSel;
      property NaoAbrirDash : boolean
        write SetNaoAbrirDash;
      Function LaunchExe( const pForm : string ) : boolean;
  end;

var
  DBInicio : TDBInicio;
  fConfiguracoesIni : TStringList;

const
  db_usernm = 'SYSDBA';
  db_passwd = 'masterkey';

{$ifdef SISTEMA}Function SplashStart( const pShow : boolean ) : boolean;{$endif}
function EncontrouIni : boolean;
function EncontrouVariosIni : boolean;
Function FormataRefer( const pRefer : string ) : String;

Function ExclusivoSqlE( CONST pNomeCompartilhamento : string ): String;
Function BuscaUmDadoSqlAsStringE(const sql: string): String;
Procedure InsereGeneratorE( pNmGenerator : string );

Exports ExclusivoSqlE, BuscaUmDadoSqlAsStringE, InsereGeneratorE;

implementation

uses
  Uteis {$ifdef SISTEMA}
  , ConfiguraBancoForm,
  LicencaForm,
  Val0002,
  Animacao,
  RWFunc {$EndIf}
  ;

{$R *.dfm}

Procedure InsereGeneratorE( pNmGenerator : string );
begin
  dbInicio.InsereGenerator( pNmGenerator );
end;

Function BuscaUmDadoSqlAsStringE(const sql: string): String;
begin
  result:= dbInicio.BuscaUmDadoSqlasString(sql);
end;

Function ExclusivoSqlE( CONST pNomeCompartilhamento : string ): String;
begin
  result:=dbInicio.ExclusivoSql(pNomeCompartilhamento);
end;

Function FormataRefer( const pRefer : string ) : String;
  var
    lFmt : string;
  begin
    if DBInicio.Empresa.FormatoPadraoReferencia <> ''
    then
    begin
      lFmt := DBInicio.Empresa.FormatoPadraoReferencia;
      if pRefer.Length < lFmt.Length
      then
        Result := CopyRight( lFmt + trim( pRefer ), Length( lFmt ) )
      Else
        Result := pRefer;
    end
    Else
      Result := pRefer;
  end;

{$ifdef SISTEMA}
function SplashStart( const pShow : boolean ) : boolean;

  var
    x, p : Integer;
    usr, PSW : string;
    flg : boolean;

  begin

    Result := False;
    try

      if assigned( DBInicio )
      then
      begin
        DBInicio.Close;
        FreeAndNil( DBInicio );
      end;
      DBInicio := TDBInicio.Create( application );

      with DBInicio do
      begin

        MeuIP := GetIp;

        SistemaLocal := InsereBarraDiretorio
          ( ExtractFileDir( Application.ExeName ) );
        // DeletarArquivos( SistemaLocal + '\settings', '*.psq' );
        // Limpar arquivos persistencia pesquisas ???????

        flg := not EncontrouIni;
        if flg
        then
        begin
          Uteis.aviso( 'Arquivo de configuração do sistema não encontrado...' );
          while flg do
          begin
            if GeraArquivoIni
            then
              flg := not EncontrouIni
            Else
              Abort;
          end;
        end;

        OpenIni;
        LeEstilo;
        flg := not IniciaDBFireDAC( FDACConn );
        flg := Not IniciaDB( MainDB );
        while flg do
        begin
          if GeraArquivoIni
          then
            flg := Not IniciaDB( MainDB )
          Else
            Halt( 0 );
          // Abort ;
        end;

        usr := '';
        vlProgSel := '';
        vlSem_Validacao := False;
        if paramcount > 0
        then
        begin
          for x := 0 to paramcount do
          begin
            p := pos( 'USER', UpperCase( ParamStr( x ) ) );
            if p > 0
            then
              usr := getpalavraapos( ParamStr( x ), '=' )
            else
            begin
              p := pos( 'FORM', UpperCase( ParamStr( x ) ) );
              if p > 0
              then
                vlProgSel := getpalavraapos( ParamStr( x ), '=' )
              else
              begin
                p := pos( 'EMP', UpperCase( ParamStr( x ) ) );
                if p > 0
                then
                  vlEmpSel := getpalavraapos( ParamStr( x ), '=' );
              end;
            end;
            if UpperCase( ParamStr( x ) ) = 'SEMVALIDACAO'
            then
              vlSem_Validacao := True;

          end;
        end;

        LerVersao;
        if not vlSem_Validacao
        then
          vlSem_Validacao := DelphiAberto;

        if vlProgSel = ''
        then
        begin

          {$ifdef SISTEMA}CarregaComboEmpresas;{$endif}
        end;

        if ( usr = '' ) and ( DelphiAberto )
        then
        begin
          Result := ValidaUserSenha( 'NOVI', '@1N19' );
          // CarregaEmpresaSelecionada( '001' );
          CarregaEmpresaSelecionada( strzero( DBInicio.CEmpresa.text,
            3 - Length( DBInicio.CEmpresa.text ) ) );
        end
        Else
        begin
          if usr <> ''
          then
          begin
            if ( usr = 'NOVI' ) and ( PSW <> '@1N19' )
            then
            begin
              Result := False;

            end
            else
            begin
              PSW := buscaumdadosqlasstring
                ( 'select usu_senha from usuario where usu_login=' +
                qstr( usr ) );
              Result := ValidaUserSenha( usr, PSW );
              if vlEmpSel <> ''
              then
                CarregaEmpresaSelecionada( strzero( vlEmpSel, 3 ) );
            end;
          end;

          if ( not Result ) and ( vlProgSel = '' )
          then
          begin
            EdUsuario.Clear;
            edSenha.Clear;
            Close;
            ShowModal;
            Result := ModalResult = mrOK;
          end;
        end;
        if Result and ( vlProgSel = '' )
        then
          if NOT vlSem_Validacao
          then
            Validacao;

        // LerVersao;
      end;

    Except
      on E : Exception do
      begin
        SplashStart := False;
        raise Exception.Create( E.Message );
      end;
    end;
  end;
{$endif}


function TDBInicio.LaunchExe( const pForm : string ) : boolean;
  begin
    Result := False;
    if ModulosComoAplicacao and ( modulo = '' )
    then
    begin
      DBInicio.RzLauncher1.FileName := 'Adjutor.exe';
      DBInicio.RzLauncher1.Parameters := '/USER=' + Usuario.USERNAME + ' /FORM='
        + pForm + ' /EMP=' + Empresa.EMP_CODIGO;
      DBInicio.RzLauncher1.WaitType := wtFullStop; // wtProcessMessages;
      DBInicio.RzLauncher1.WaitUntilFinished := False;
      DBInicio.RzLauncher1.Launch;
      Result := True;
    end

  end;

procedure TDBInicio.LeEstilo;
  var
    ArquivoIni : TiniFile;
    PATH : String;
    estilo : string;
  begin
    Application.ProcessMessages;
    PATH := ExtractFilePath( Application.ExeName ) + '\Adjutor.ini';
    estilo := 'Iceberg Classico';
    if FileExists( PATH )
    then
    begin
      ArquivoIni := TiniFile.Create( PATH );
      estilo := ArquivoIni.ReadString( 'APARENCIA', 'estilo',
        'Iceberg Classico' ); // estilo  default
    end;
    if estilo <> ''
    then
      tStyleManager.TrySetStyle( estilo );
  end;

Function TDBInicio.Login : boolean;
  begin
    EdUsuario.Clear;
    edSenha.Clear;
    ShowModal;
    Result := ModalResult = mrOK;
  end;

Function TDBInicio.CheckUpdtServer : boolean;
  var
    NomeArq, PastaExe : string;
  begin
    CheckUpdtServer := False;

    CdsVersao.Open;

    // verifica se tem mais que dois registros na tebela de versao do sistema
    if CdsVersao.RecordCount > 1
    then
      ExecSql( 'delete from versaosistema where codigo<>1' );

    if ( BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    versaosistema' )
      = 0 ) or ( BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    versaosistema where codigo=1' )
      = 0 )
    then
      ExecSql( 'Insert into versaosistema (codigo,data) values ( 1,' +
        DateToSql( date ) + ')' );

    CdsVersao.Refresh;
    if CdsVersao.Locate( 'CODIGO', 1, [ ] )
    then
      CdsVersao.Edit;

    NomeArq := 'Adjutor' + trim( RxLversao.Caption ) + '.exe';
    PastaExe := ExtractFileDir( Application.ExeName );

    if ( CdsVersaoDATA.IsNull ) or
      ( CdsVersaoVERSAO.AsString < RxLversao.Caption )
    then
    begin
      CdsVersaoDATA.AsDateTime := date;
      CdsVersaoPROGRAMA.AsString := 'Adjutor';
      if CdsVersaoVERSAO.AsString < trim( RxLversao.Caption )
      then
      begin
        CdsVersaoVERSAO.AsString := trim( RxLversao.Caption );
        CdsVersaoATUALIZADOR.Clear;
        CdsVersaoNOMEARQUIVO.AsString := NomeArq;
        if FileExists( PastaExe + '\Atualização\' + NomeArq )
        then
          TBlobField( CdsVersaoARQUIVO )
            .LoadFromFile( PastaExe + '\Atualização\' + NomeArq )
          // carrega o instalador atualizador no banco
        else
        begin
          Application.MessageBox( pchar( 'Inicialização com problemas. ' + #13 +
            'O Arquivo: ' + PastaExe + '\Atualização\' + NomeArq + #13 +
            'Não foi Localizado!!!!' + #13 + #13 +
            'Copie o arquivo para o local indicado e volte a executar o sistema!' ),
            'Adjutor.', MB_OK + MB_ICONERROR );
          Application.Terminate;
        end;
      end;
    end;

    CdsVersao.Post;
    CdsVersao.ApplyUpdates( 0 );
    CdsVersao.Close;

    CheckUpdtServer := True;

  end;

procedure TDBInicio.edSenhaKeyDown(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState );
  begin
    if Key = VK_RETURN
    then
    BEGIN
      btOk.SetFocus;
      btOk.Click;
      Key := 0;
    END;
    inherited;
  end;

Function TDBInicio.CheckUpdtClient : boolean;
  var
    NomeArq, PastaExe : string;
  begin
    CheckUpdtClient := False;
    CdsVersao.Open;

    // verifica se nao tem registro na tebela versao
    if ( CdsVersao.RecordCount = 0 ) or
      not ( CdsVersao.Locate( 'CODIGO', 1, [ ] ) )
    then
    begin
      // caso nao tenha registros, fecha o sistema para que o servidor coloca os dados necessarios no banco de dados
      Application.MessageBox
        ( 'É necessário acessar o Servidor para atualizar o banco de dados!',
        'Atenção', MB_OK + MB_ICONERROR );
      Application.Terminate;
    end;

    NomeArq := 'Adjutor' + CdsVersaoVERSAO.AsString + '.exe';
    PastaExe := ExtractFileDir( Application.ExeName );

    TestaPasta( PastaExe + '\Atualização' );

    // salva o intalador atualizado no diretorio caso não exista
    if not FileExists( PastaExe + '\Atualização\' + NomeArq )
    then
      if not CdsVersao.FieldByName( 'ARQUIVO' ).IsNull
      then
        TBlobField( CdsVersao.FieldByName( 'ARQUIVO' ) )
          .SaveToFile( PastaExe + '\Atualização\' + NomeArq );

    // compara a versao do sistema com a versao do banco de dados
    if ( trim( RxLversao.Caption ) < CdsVersaoVERSAO.AsString )
    then
    Begin
      // Executa sistema de atualização
      try
        RzLauncher1.FileName := PastaExe + '\Atualização\' + NomeArq;
        RzLauncher1.Launch;
      Except
        // mansagem de erro se o atualizador nao esta onde deveria estar
        Application.MessageBox
          ( 'Não foi possível encontrar o programa de atualização.' + #13 +
          'Contate o suporte.', 'Adjutor', MB_OK + MB_ICONERROR );
      end;
      // fecha o sistema
      Application.Terminate;
    end
    else
      // compara a versao do sistema com a versao do banco de dados
      if ( trim( RxLversao.Caption ) > CdsVersaoVERSAO.AsString )
      then
      Begin
        // mensagem de erro se o servidor estiver desatualizado
        Application.MessageBox
          ( pchar( 'O executável do servidor esta desatualizado.' + #13 +
          'Versão local      : ' + trim( RxLversao.Caption ) + #13 +
          'Versão do servidor: ' + CdsVersaoVERSAO.Value ), 'Atenção',
          MB_OK + MB_ICONERROR );

        CheckUpdtClient := True;
      end;
    CheckUpdtClient := True;
    CdsVersao.Close;

  end;

Procedure TDBInicio.OpenAux( const pSql : string );
  begin
    qAux.Close;
    qAux.Sql.text := pSql;
    if DelphiAberto
    then
      copytoclipboard( pSql );
    qAux.Open;
  end;

{$ifdef SISTEMA}
Procedure TDBInicio.CarregaComboEmpresas;
  begin
    CbEmpresa.Items.Clear;
    OpenAux( 'select EMP_CODIGO, EMP_RAZAO from EMP0000 order by EMP_CODIGO' );
    CEmpresa.text := qAux.FieldByName( 'EMP_CODIGO' ).AsString;
    while not qAux.Eof do
    begin
      CbEmpresa.Items.Add( qAux.FieldByName( 'EMP_RAZAO' ).AsString );
      qAux.Next;
    end;
    CbEmpresa.ItemIndex := 0;
    qAux.Close;
  end;

function TDBInicio.ValidaLimiteCredito(
  const sClienteCodigo : string;
  sEmpresaCodigo       : String;
  bBloqueia            : boolean ) : boolean;
  VAR
    V1, V2, V3 : Currency;
    msg : string;
  begin
    Result := True;

    // if (sEmpresaCodigo = '') then
    // sEmpresaCodigo := '999';
    sEmpresaCodigo := iif( Share( 'CLIENTES' ) = 'C', '999',
      DBInicio.Empresa.EMP_CODIGO );

    if ( sClienteCodigo <> '' )
    then
    begin
      qAux.Close;
      qAux.Sql.text :=
        'SELECT SALDO , utilizado_fatura, utilizado_pedido FROM PCD_LIMITE_CLIENTE('
        + qstr( sClienteCodigo ) + ', ' + qstr( sEmpresaCodigo ) + ')';
      qAux.Open;
      V1 := qAux.fields[ 0 ].AsCurrency;
      V2 := qAux.fields[ 1 ].AsCurrency;
      V3 := qAux.fields[ 2 ].AsCurrency;
      qAux.Close;
      if ( V1 < 0 )
      then
      begin
        Result := not bBloqueia;
        if ( bBloqueia )
        then
          msg := 'Impossível Continuar, Valor Excede o Limite de Crédito do Cliente!'
        Else
          msg := 'Atenção!! O valor excedeu o limite de crédito do Cliente!';
        Uteis.erro( pchar( msg + #13#10 + #13#10 +
          'Pedidos pendentes de faturamento : R$ ' + FormatFloat( '#,##0.00',
          V3 ) + #13#10 + 'Faturas pendentes de pagamento   : R$ ' +
          FormatFloat( '#,##0.00', V2 ) + #13#10 + #13#10 +
          'Saldo do limite de crédito       : R$ ' +
          FormatFloat( '#,##0.00', V1 ) ) );
      end;
    end;

  end;
{$endif}
function TDBInicio.RetornaRegistroTabela( const sTabela, sCampoRegistro,
  sCondicao : String ) : String;
  var
    sEmpresa, Sql : String;
    Tabelas, Estoques, Produtos : boolean;
  begin
    sEmpresa := '';
    Tabelas := Exclusivo( 'TABELAS' );
    Estoques := Exclusivo( 'ESTOQUES' );
    Produtos := Exclusivo( 'PRODUTOS' );

    if Tabelas OR ( Estoques and Produtos )
    then
      sEmpresa := ' and emp_codigo = ' + qstr( Empresa.EMP_CODIGO );
    Sql := 'Select ' + sCampoRegistro + ' From ' + sTabela + ' where ' +
      sCondicao + sEmpresa;
    Result := buscaumdadosqlasstring( Sql );
  end;

procedure TDBInicio.SetNaoAbrirDash( const aValue : boolean );
  begin
    vlEmpresa.bNaoAbrirDash := aValue;
  end;

procedure TDBInicio.StEmpCod( const Value : string );
  begin
    vlEmpresa.EMP_CODIGO := Value;
  end;

Procedure TDBInicio.InsereCampo( const pTabela, pCampo : string );
  begin
    if not ExisteCampo( pTabela, pCampo )
    then
      ExecSql( 'ALTER TABLE ' + UpperCase( pTabela ) + ' ADD ' +
        UpperCase( pCampo ) );
  end;

Function TDBInicio.ExisteCampo( const pTabela, pCampo : string ) : boolean;
  var
    vnmCampo : string;
  begin
    vnmCampo := GetTextBefore( pCampo + ' ', ' ' );
    if Length( vnmCampo ) > 30
    then
      GeraException( 'O nome do campo ' + UpperCase( vnmCampo ) + '(Tabela:' +
        UpperCase( pTabela ) +
        ') excede o tamanho máximo possível (30Caract).' );
    Result := BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    rdb$relation_fields '
      + 'where RDB$RELATION_FIELDS.rdb$relation_name = ' +
      qstr( UpperCase( pTabela ) ) + ' AND ' +
      'RDB$RELATION_FIELDS.RDB$FIELD_NAME = ' +
      qstr( UpperCase( vnmCampo ) ) ) > 0;
  end;

Function TDBInicio.TabelaExiste( const pTabela : string ) : boolean;
  begin
    Result := BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    RDB$RELATIONS WHERE RDB$FLAGS=1 and RDB$RELATION_NAME='
      + qstr( UpperCase( pTabela ) ) ) > 0;
  end;

Function TDBInicio.InsereTabela(
  const pTabela : string;
  pCampos       : array of string;
  const CampoPK : string ) : boolean;
  var
    vSql, vCampo : string;
    I : Integer;
  begin
    if Length( pTabela ) > 26
    then
      GeraException( 'O nome da tabela ' + UpperCase( pTabela ) +
        ' excede o tamanho máximo possível (26Caract).' );

    Result := ( not TabelaExiste( pTabela ) );
    if Result
    then
    begin
      vSql := 'CREATE TABLE ' + UpperCase( pTabela ) + '(';
      { 'ID INTEGER NOT NULL,'+
        'DTCADASTRO DATE,'+
        'USERCADASTROU VARCHAR(20) COLLATE WIN_PTBR,'+
        'DTEDICAO TIMESTAMP,'+
        'USEREDITOU VARCHAR(20) COLLATE WIN_PTBR'; }
      for I := Low( pCampos ) to High( pCampos ) do
      begin
        vCampo := trim( GetTextBefore( pCampos[ I ], ' ' ) );
        if Length( vCampo ) > 30
        then
          GeraException( 'O nome do campo ' + UpperCase( vCampo ) + '(Tabela:' +
            UpperCase( pTabela ) +
            ') excede o tamanho máximo possível (30Caract).' );
        vSql := vSql + ',' + UpperCase( pCampos[ I ] );
      end;
      vSql := vSql + ')';
      ExecSql( vSql );
      InsereGenerator( 'ID_' + UpperCase( pTabela ) );
      ExecSql( 'ALTER TABLE ' + UpperCase( pTabela ) + ' ADD CONSTRAINT ' +
        UpperCase( pTabela ) + 'PK PRIMARY KEY (ID)' );
      ExecSql( 'CREATE INDEX ' + UpperCase( pTabela ) + '01 ON ' +
        UpperCase( pTabela ) + '(' + CampoPK + ')' );
    end;
  end;

Function TDBInicio.InsereView(
  pNomeView : string;
  vSql      : string ) : boolean;
  begin
    if Length( pNomeView ) > 26
    then
      GeraException( 'O nome da view ' + UpperCase( pNomeView ) +
        ' excede o tamanho máximo possível (26Caract).' );
    Result := BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    RDB$VIEW_RELATIONS WHERE RDB$VIEW_NAME='
      + qstr( UpperCase( pNomeView ) ) ) = 0;
    if Result
    then
    begin
      ExecSql( vSql );
    end;
  end;

Procedure TDBInicio.InsereGenerator( pNmGenerator : string );
  begin
    pNmGenerator := trim( UpperCase( pNmGenerator ) );
    if Length( pNmGenerator ) > 30
    then
      GeraException( 'O nome do generator ' + pNmGenerator +
        ' excede o tamanho máximo possível (30Caract).' );
    if BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    rdb$generatorS Where rdb$generator_name='
      + qstr( pNmGenerator ) ) = 0
    then
    begin
      ExecSql( 'CREATE GENERATOR ' + pNmGenerator );
      ExecSql( 'SET GENERATOR ' + pNmGenerator + ' TO 1' );
    end;
  end;

Function TDBInicio.GetServerDate : TDateTime;
  begin
    Result := BuscaUmDadoSqlasDateTime
      ( 'select Current_Date from RDB$Database' );
  end;

Procedure TDBInicio.InsereRegistro(
  pTabela    : string;
  pRegistros : array of string );
  var
    vSql : string;
    I, id : Integer;
    vRegistro, vCampoDado, vCampo, vDado, vCampos, vValues : String;
  begin
    for I := Low( pRegistros ) to High( pRegistros ) do
    begin
      vRegistro := pRegistros[ I ] + ',';
      id := GetNextSequence( 'ID_' + pTabela );
      vCampos := 'ID,USERCADASTROU,DTCADASTRO';
      vValues := inttostr( id ) + ',' + qstr( 'INFOSAGA' ) + ',' +
        DateToSql( GetServerDate );
      while vRegistro <> '' do
      begin
        vCampoDado := GetTextBefore( vRegistro, ',' );
        vRegistro := GetTextAfter( vRegistro, ',' );
        vCampo := GetTextBefore( vCampoDado, '=' );
        vDado := qstr( GetTextAfter( vCampoDado, '=' ) );
        vCampos := vCampos + ',' + vCampo;
        vValues := vValues + ',' + vDado;
      end;
      vSql := 'Insert Into ' + pTabela + '(' + vCampos + ') Values (' +
        vValues + ')';
      ExecSql( vSql );
    end;
  end;

Procedure TDBInicio.InsereRegistro( pTabela, pRegistros : string );
  var
    vSql : string;
    x, y, id : Integer;
    vRegistro, vDado, vCampos, vValues : String;

  begin
    vRegistro := trim( pRegistros ) + '\';
    vCampos := 'ID,USERCADASTROU,DTCADASTRO, DTEDICAO,USEREDITOU';
    qAux.Sql.Clear;
    qAux.Sql.Add( 'Select RDB$FIELD_NAME from RDB$RELATION_FIELDS' );
    qAux.Sql.Add( 'WHERE RDB$RELATION_NAME=' + qstr( UpperCase( pTabela ) ) );
    qAux.Sql.Add( 'and RDB$FIELD_NAME<>' + qstr( 'ID' ) );
    qAux.Sql.Add( 'and RDB$FIELD_NAME<>' + qstr( 'USERCADASTROU' ) );
    qAux.Sql.Add( 'and RDB$FIELD_NAME<>' + qstr( 'DTCADASTRO' ) );
    qAux.Sql.Add( 'and RDB$FIELD_NAME<>' + qstr( 'DTEDICAO' ) );
    qAux.Sql.Add( 'and RDB$FIELD_NAME<>' + qstr( 'USEREDITOU' ) );
    qAux.Sql.Add( 'order by RDB$FIELD_ID' );
    qAux.Open;
    x := 0;
    while not qAux.Eof do
    begin
      vCampos := InsereAfter( vCampos, ',' ) + qAux.fields[ 0 ].AsString;
      inc( x );
      qAux.Next;
    end;
    qAux.Close;
    id := GetNextSequence( 'ID_' + pTabela );
    vValues := inttostr( id ) + ',' + qstr( 'INFOSAGA' ) + ',' +
      DateToSql( GetServerDate ) + ',NULL,NULL';
    y := 0;
    if vRegistro <> ''
    then
    begin
      while vRegistro <> '' do
      begin
        inc( y );
        vDado := qstr( trim( GetTextBefore( vRegistro, '\' ) ) );
        vRegistro := GetTextAfter( vRegistro, '\' );
        vValues := vValues + ',' + vDado;
      end;
    end;
    if x <> y
    then
    begin
      Showmessage( 'Numero incorreto de valores/campos' );
      exit;
    end;
    vSql := 'Insert Into ' + pTabela + '(' + vCampos + ') Values (' +
      vValues + ')';
    try
      ExecSql( vSql );
    except
    end;
  end;

Procedure TDBInicio.InsereIndice( pTabela, pNomeIndex, pCampos : string );
  var
    vNmIndx : string;
  begin
    vNmIndx := trim( UpperCase( pTabela ) ) + trim( UpperCase( pNomeIndex ) );
    if Length( vNmIndx ) > 30
    then
      GeraException( 'O nome de indice ' + vNmIndx +
        ' excede o tamanho máximo possível (30Caract).' );
    if BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    RDB$INDICES where RDB$INDEX_NAME='
      + qstr( UpperCase( vNmIndx ) ) ) = 0
    then
      ExecSql( 'CREATE INDEX ' + UpperCase( vNmIndx ) + ' ON ' + pTabela + '(' +
        UpperCase( pCampos ) + ')' );
  end;

Procedure TDBInicio.InsereChaveEstrangeira( pNomeFK, pTabela, pCampo,
  pReferencia : string );
  begin
    pNomeFK := trim( pNomeFK );
    if Length( pNomeFK ) > 30
    then
      GeraException( 'O nome de Chave Estrangeira ' + pNomeFK +
        ' excede o tamanho máximo possível (30Caract).' );
    if BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from    RDB$RELATION_CONSTRAINTS where RDB$CONSTRAINT_NAME='
      + qstr( pNomeFK ) ) = 0
    then
      ExecSql( 'alter table ' + pTabela + ' add constraint ' + pNomeFK +
        ' foreign key (' + pCampo + ') references ' + pReferencia );
  end;

Function TDBInicio.ValidaUserSenha( pUser, pSenha : String ) : boolean;
  /// /
    Procedure SetValoresUsuario;
      var
        qry : TSQLQuery;
        flg_tr : boolean;
      begin
        flg_tr := MainDB.InTransaction;
        qry := TSQLQuery.Create( self );
        try
          if not flg_tr
          then
            BeginTransaction;
          qry.SQLConnection := MainDB;
          IF ( pUser = 'NOVI' )
          then
          begin
            qry.Sql.text :=
              'Select USU_NOME, USU_CODIGO, USU_EMAIL, USU_EMAIL_SENHA from USUARIO where USU_LOGIN='
              + qstr( pUser );
          end
          else
          begin
            qry.Sql.text :=
              'Select USU_NOME, USU_CODIGO, USU_EMAIL, USU_EMAIL_SENHA from USUARIO where USU_LOGIN='
              + qstr( pUser ) + ' and USU_SENHA=' + qstr( pSenha );
          end;

          qry.Open;
          IF qry.IsEmpty
          THEN
            raise Exception.Create( 'Usuário não existe' );
          with vlUsuario do
          begin
            USERNAME := pUser;
            PSW := pSenha;
            NOME := qry.fields[ 0 ].AsString;
            ATIVO := True;
            NIVELACESSO := 1;
            CODIGO := qry.fields[ 1 ].AsString;
            EMAIL_USUARIO := qry.fields[ 2 ].AsString;
            USU_EMAIL_SENHA := qry.fields[ 3 ].AsString;
            OpenParametrosUsuario;

          end;
          if not flg_tr
          then
            CommitTransaction;
        finally
          qry.Close;
          FreeAndNil( qry );
        end;
      end;

  begin

    IsManutencao := False;
    IF ( pUser = 'NOVI' )
    then
    begin
      if vlVersao.Issues <> ''
      then
      begin
        Result := True;
        SetValoresUsuario;
        IsManutencao := True;
        ExecSql( 'UPDATE USUARIO_ACESSO  ' +
          ' SET USA_ACESSO = 1, USA_ALTERACAO = ''S'', USA_INCLUSAO = ''S'', USA_EXCLUSAO = ''S'', USA_RELATORIO = ''S'''
          + ' WHERE  USA_COD_USUARIO = (SELECT USU_CODIGO FROM USUARIO WHERE USU_NOME = ''NOVI'')' );

        Result := True;

      end
      else if ( pSenha <> '@1N19' )
      then
      begin
        Result := False;

      end
      else
      begin
        Result := True;
        SetValoresUsuario;
        IsManutencao := True;
        ExecSql( 'UPDATE USUARIO_ACESSO  ' +
          ' SET USA_ACESSO = 1, USA_ALTERACAO = ''S'', USA_INCLUSAO = ''S'', USA_EXCLUSAO = ''S'', USA_RELATORIO = ''S'''
          + ' WHERE  USA_COD_USUARIO = (SELECT USU_CODIGO FROM USUARIO WHERE USU_NOME = ''NOVI'')' );
      end;
    end
    else
    Begin
      if vlVersao.Issues <> ''
      then
      begin
        Result := ( BuscaUmDadoSqlAsInteger
          ( 'Select cast(count(*) as integer) as conta from    USUARIO where USU_LOGIN='
          + qstr( pUser ) ) > 0 );

        if Result
        then
        begin
          SetValoresUsuario;
          // Result := Usuario.ATIVO;
          if not Result
          then
            GeraException( 'Usuário Inativo!!!' );
          Result := ( BuscaUmDadoSqlAsInteger
            ( 'Select cast(count(*) as integer) as conta from    usuario_empresa where usu_codigo = '
            + Usuario.CODIGO + ' and emp_codigo= ' +
            QuotedStr( strzero( CEmpresa.text, 3 ) ) ) > 0 );
          if not Result
          then
            GeraException( 'Usuário sem permissão para empresa ' +
              CEmpresa.text );
        end
        Else
          GeraException( 'Usuário Inválidos!!!' );
      end
      else
      begin

        Result := ( BuscaUmDadoSqlAsInteger
          ( 'Select cast(count(*) as integer) as conta from    USUARIO where USU_LOGIN='
          + qstr( pUser ) + ' and USU_SENHA=' + qstr( pSenha ) ) > 0 );
        try
          if Result
          then
          begin
            SetValoresUsuario;
            Result := Usuario.ATIVO;
            if not Result
            then
              GeraException( 'Usuário Inativo!!!' );
            Result := ( BuscaUmDadoSqlAsInteger
              ( 'Select cast(count(*) as integer) as conta from    usuario_empresa where usu_codigo = '
              + Usuario.CODIGO + ' and emp_codigo= ' +
              QuotedStr( strzero( CEmpresa.text, 3 ) ) ) > 0 );
            if not Result
            then
              GeraException( 'Usuário sem permissão para empresa ' +
                CEmpresa.text );
          end
          Else
            GeraException( 'Usuário ou Senhas Inválidos!!!' );
        Except

        End;

      end;
    End;
  end;

procedure TDBInicio.OpenParametrosUsuario;
  begin
    WITH qAux do
    begin
      // IF dbInicio.Usuario.CODIGO = 'NOVI' THEN
      // begin
      // vlEmpresa.fCODIGO_REPRES:= '';
      // vlEmpresa.AcessoRelatorios_P   :='S'  ;
      // vlEmpresa.bVisualizaMarkupPedido := true;
      // vlEmpresa.bVisualizaClientes_P:=true;
      // vlEmpresa.bReajusteVenda:=true;
      // vlEmpresa.VisualizaPedios_P := true;
      // vlEmpresa.pUSP_USAPRAZODESABILITADO:= true;
      //
      // vlEmpresa.pVENDA_ABAIXO_CUSTO   := true;
      // vlEmpresa.bCadastroProdutoVenda := true;
      // vlEmpresa.bTransferenciaKardexVenda := true;
      // VLEMPRESA.bHabilitaComissaoPedido := true;
      // vlEmpresa.bPermitirExcluirItem := true;
      // vlEmpresa.bPermitirEstornaExpedicao := true;
      // vlEmpresa.fUSP_ALTERA_COMISSAO:=true;
      // vlEmpresa.DesctoMaximo_P := 0;
      // vlEmpresa.bAlteraTabeladePrecos := true;
      // ////////////////////
      // vlEmpresa.pVENDA_VER_CUSTO        := 'S' ;
      // vlEmpresa.bUSP_EXCLUSAO_PEDIDO_P  := true;
      // vlEmpresa.bUSP_STAT_PRECO_BRUTO_P := true;
      // vlEmpresa.bUSP_STAT_PRECO_LIQUIDO_P := true;
      // vlEmpresa.bUSP_ALTERA_DESCONTO_P   := true;
      // vlEmpresa.bUSP_INCLUIR_CLIENTES := true;
      // vlEmpresa.bUSP_ALTERAR_CLIENTES :=  true;
      // vlEmpresa.bUSP_USA_CREDITO_CC :=   true;
      // vlEmpresa.bUSP_TRANSFERENCIATITULOS := true;
      // vlEmpresa.bUSP_ALTERA_FORMA_PAG_FAT := TRUE;
      //
      // vlEmpresa.bUSP_APROVAR_PAG := TRUE;
      // vlEmpresa.bUSP_REPROVAR_PAG := TRUE;
      // vlEmpresa.bUSP_APONTAR := TRUE;
      // vlEmpresa.bUSP_APROVAR_EST := True;
      // vlEmpresa.bUSP_REPROVAR_EST := True ;
      // end
      // else
      // begin

      Sql.text := 'select * from USUARIO_PARAMETRO a, usuario c  ' +
        ' where c.usu_codigo = a.usp_cod_usuario and a.USP_COD_USUARIO = ' +
        qstr( DBInicio.Usuario.CODIGO );
      Open;
      try
        vlEmpresa.fCODIGO_REPRES := FieldByName( 'REP_CODIGO' ).AsString;
        vlEmpresa.AcessoRelatorios_P :=
          FieldByName( 'USP_RELATORIOS_P' ).AsString;
        vlEmpresa.bVisualizaMarkupPedido :=
          ( FieldByName( 'USP_VISUALIZA_MARKUP_PEDIDO' ).AsString = 'S' );
        vlEmpresa.bVisualizaClientes_P :=
          ( FieldByName( 'USP_VISUALIZA_CLIENTES_P' ).AsString = 'S' );
        vlEmpresa.bReajusteVenda :=
          ( FieldByName( 'USP_VENDA_REAJUSTE' ).AsString = 'S' );
        vlEmpresa.VisualizaPedios_P :=
          ( FieldByName( 'USP_VISUALIZA_PEDIDOS_P' ).AsString = 'S' );
        vlEmpresa.VisualizaPedidos_CRM :=
          ( FieldByName( 'USP_VISUALIZA_PEDIDOS_CRM' ).AsString = 'S' );
        vlEmpresa.pUSP_USAPRAZODESABILITADO :=
          ( FieldByName( 'USP_USAPRAZODESABILITADO' ).AsString = 'S' );

        vlEmpresa.pVENDA_ABAIXO_CUSTO :=
          FieldByName( 'PERMITE_VENDA_ABAIXO_CUSTO' ).AsString = 'S';
        vlEmpresa.bCadastroProdutoVenda :=
          ( FieldByName( 'USP_VENDA_CADASTRO_PRODUTO' ).AsString = 'S' );
        vlEmpresa.bTransferenciaKardexVenda :=
          ( FieldByName( 'USP_VENDA_TRANSFERENCIA' ).AsString = 'S' );
        vlEmpresa.bHabilitaComissaoPedido :=
          ( FieldByName( 'USP_VIZUALIZAR_COMISSOES' ).AsString = 'S' );
        vlEmpresa.bPermitirExcluirItem :=
          ( FieldByName( 'USP_PERMITE_EXCLUIR_ITENS' ).AsString = 'S' );
        vlEmpresa.bPermitirEstornaExpedicao :=
          ( FieldByName( 'USP_ESTORNAEXPEDICAO' ).AsString = 'S' );
        vlEmpresa.bHabilitaColunaNF :=
          ( FieldByName( 'USP_HABILITA_COLUNA_NF' ).AsString = 'S' );
        vlEmpresa.fUSP_ALTERA_COMISSAO :=
          ( FieldByName( 'USP_ALTERA_COMISSAO' ).AsString = 'S' );
        vlEmpresa.DesctoMaximo_P :=
          StrToFloatDef( FieldByName( 'USP_DESCONTO_MAX_P' ).AsString, 0 );
        vlEmpresa.bAlteraTabeladePrecos :=
          ( FieldByName( 'USP_ALTERA_TABELA_PRECOS' ).AsString = 'S' );
        /// /////////////////
        vlEmpresa.pVENDA_VER_CUSTO :=
          FieldByName( 'PERMITE_VER_CUSTO' ).AsString;
        vlEmpresa.pVISUALIZA_ABA_VENDA :=
          FieldByName( 'USP_VISUALIZA_ABA_VENDA' ).AsString;
        vlEmpresa.bUSP_EXCLUSAO_PEDIDO_P :=
          ( FieldByName( 'USP_EXCLUSAO_PEDIDO_P' ).AsString = 'S' );
        vlEmpresa.bUSP_STAT_PRECO_BRUTO_P :=
          ( FieldByName( 'USP_STAT_PRECO_BRUTO_P' ).AsString = 'S' );
        vlEmpresa.bUSP_STAT_PRECO_LIQUIDO_P :=
          ( FieldByName( 'USP_STAT_PRECO_LIQUIDO_P' ).AsString = 'S' );
        vlEmpresa.bUSP_ALTERA_DESCONTO_P :=
          ( FieldByName( 'USP_ALTERA_DESCONTO_P' ).AsString = 'S' );
        vlEmpresa.USP_ALTERA_DESCONTO_NOTA :=
          ( FieldByName( 'USP_ALTERA_DESCONTO_NOTA' ).AsString = 'S' );
        vlEmpresa.bUSP_INCLUIR_CLIENTES :=
          ( FieldByName( 'USP_INCLUIR_CLIENTES' ).AsString = 'S' );
        vlEmpresa.bUSP_ALTERAR_CLIENTES :=
          ( FieldByName( 'USP_ALTERAR_CLIENTES' ).AsString = 'S' );
        vlEmpresa.bUSP_USA_CREDITO_CC :=
          ( FieldByName( 'USP_USA_CREDITO_CC' ).AsString = 'S' );
        vlEmpresa.bUSP_TRANSFERENCIATITULOS :=
          ( FieldByName( 'USP_TRANSFERENCIATITULOS' ).AsString = 'S' );
        vlEmpresa.bUSP_ABRICHAMADO :=
          ( FieldByName( 'USP_ABRICHAMADO' ).AsString = 'S' );
        vlEmpresa.bUSP_DASH_VENDAS :=
          ( FieldByName( 'USP_DASH_VENDAS' ).AsString = 'S' );
        vlEmpresa.bUSP_DASH_FINANCEIRO :=
          ( FieldByName( 'USP_DASH_FINANCEIRO' ).AsString = 'S' );
        vlEmpresa.bNaoAbrirDash :=
          ( FieldByName( 'USP_DASH_NAO_ABRIR' ).AsString = 'S' );
        vlEmpresa.bUSP_ALTERA_FORMA_PAG_FAT :=
          FieldByName( 'USP_ALTERA_FORMA_PAG_FAT' ).AsString = 'S';

        vlEmpresa.bUSP_APROVAR_PAG := FieldByName( 'USP_APROVAR_PAG' )
          .AsString = 'S';
        vlEmpresa.bUSP_REPROVAR_PAG := FieldByName( 'USP_REPROVAR_PAG' )
          .AsString = 'S';
        vlEmpresa.bUSP_APONTAR := FieldByName( 'USP_APONTAR' ).AsString = 'S';
        vlEmpresa.bUSP_APROVAR_EST := FieldByName( 'USP_APROVAR_EST' )
          .AsString = 'S';
        vlEmpresa.bUSP_REPROVAR_EST := FieldByName( 'USP_REPROVAR_EST' )
          .AsString = 'S';
        vlEmpresa.bUSP_APONTAR_EST := FieldByName( 'USP_APONTAR_EST' )
          .AsString = 'S';
        vlEmpresa.bUSP_CUSTOPRODUCAO := FieldByName( 'USP_CUSTOPRODUCAO' )
          .AsString = 'S';

        vlEmpresa.USP_LIMITE_CONSULTA_ORCA :=
          FieldByName( 'USP_LIMITE_CONSULTA_ORCA' ).AsInteger;
        vlEmpresa.USP_BLOQUEIO_ALTERA_VENDEDOR :=
          FieldByName( 'USP_ALTERA_VENDEDOR' ).AsString = 'S';
        vlEmpresa.USP_OPV_CODIGO := FieldByName( 'USP_OPV_CODIGO' ).AsInteger;
        vlEmpresa.USP_PERMITE_ALTER_TIPO :=
          FieldByName( 'USP_PERMITE_ALTER_TIPO' ).AsString = 'S';
        vlEmpresa.USP_DESABILITA_COPIAR_PEDIDO :=
          FieldByName( 'USP_DESABILITA_COPIAR_PEDIDO' ).AsString = 'S';
      finally
        Close;
      end;
      // end;
    End;
  end;

procedure TDBInicio.OpenParametrosSistema;
  begin
    WITH qAux do
    BEGIN

      Sql.text := 'Select * from PRMT0001 where EMP_CODIGO=' +
        qstr( DBInicio.Empresa.EMP_CODIGO );
      Open;

      try

        vlEmpresa.WebServiceValidaLicenca := DBInicio.buscaumdadosqlasstring
          ( 'select first 1 wsLic from wsNovi where SEQUENCIA = 1 ' );
        vlEmpresa.WebServiceValidaLicenca2 := DBInicio.buscaumdadosqlasstring
          ( 'select first 1 wsLic from wsNovi where SEQUENCIA = 2 ' );

        vlEmpresa.wPMT_CNPJ_CLIENTE_DUPLICADO :=
          ( FieldByName( 'PMT_CNPJ_CLIENTE_DUPLICADO' ).AsString = 'S' );

        vlEmpresa.wPMT_CAB_TABPRECO :=
          trim( FieldByName( 'PMT_CAB_TABPRECO' ).AsString );
        vlEmpresa.iCasaDecimaisEnf := FieldByName( 'PMT_QTDE_DEC_ENF' )
          .AsInteger;
        vlEmpresa.wPmt_Amx_EntradaNota :=
          FieldByName( 'PMT_AMX_ENTRADA' ).AsString;
        vlEmpresa.wCalcularPM := FieldByName( 'PMT_CALCULARPM' ).AsInteger;

        vlEmpresa.FormatoPadraoReferencia :=
          trim( FieldByName( 'FMT_PAD_REFER' ).AsString );
        vlEmpresa.fPMT_VALOR_APROX_TRIB :=
          FieldByName( 'PMT_VALOR_APROX_TRIB' ).AsString;
        vlEmpresa.fPMT_FORM_DANFE := FieldByName( 'PMT_FORM_DANFE' ).AsString;
        vlEmpresa.fPMT_USAR_SEQUENCIA_NFE_UNICA :=
          FieldByName( 'PMT_USAR_SEQUENCIA_NFE_UNICA' ).AsString;
        vlEmpresa.sPMT_MSG_ETIQUETASISTEMA :=
          FieldByName( 'PMT_MSG_ETIQUETASISTEMA' ).AsString;
        vlEmpresa.sTipoBaseCustoProducao :=
          FieldByName( 'PMT_CUSTO_BASE_PRODUCAO' ).AsString;
        vlEmpresa.wPMT_PATH_LOGODUPL :=
          FieldByName( 'PMT_PATH_LOGODUPL' ).AsString;
        vlEmpresa.TextoCobranca1 := FieldByName( 'PMT_OBS_BLOQ1' ).AsString;
        vlEmpresa.TextoCobranca2 := FieldByName( 'PMT_OBS_BLOQ2' ).AsString;
        vlEmpresa.TextoCobranca3 := FieldByName( 'PMT_OBS_BLOQ3' ).AsString;
        vlEmpresa.sEmpresaPadraoBoleto :=
          FieldByName( 'PMT_EMPRESA_PADRAO_BOLETO' ).AsString;
        vlEmpresa.wPMT_MOD_BOLETO_BARRA := FieldByName( 'PMT_MOD_BOLETO_BARRA' )
          .AsInteger;
        vlEmpresa.sCaminhoServidorPCP :=
          FieldByName( 'PMT_PROD_PCP_ENDERECO' ).AsString;
        vlEmpresa.sMensagemPadraoPedido :=
          FieldByName( 'PMT_PED_IMPORTANTE' ).AsString;
        vlEmpresa.pComissaoEscala :=
          ( FieldByName( 'PMT_COMIS_ESCALA' ).AsString = 'S' );
        vlEmpresa.pComissaoSimples :=
          ( FieldByName( 'PMT_COMIS_SIMPLES' ).AsString = 'S' );
        vlEmpresa.pComissaoItem :=
          ( FieldByName( 'PMT_COMIS_PROD' ).AsString = 'S' );
        vlEmpresa.pComissaoPadrao :=
          ( FieldByName( 'PMT_COMIS_GRP' ).AsString = 'S' );
        vlEmpresa.pComissaoRepresentantePadrao :=
          FieldByName( 'PMT_COMIS_REP' ).AsFloat;
        vlEmpresa.pComissaoGerentePadrao :=
          FieldByName( 'PMT_COMIS_GER' ).AsFloat;
        vlEmpresa.pComissaoSupervisorPadrao :=
          FieldByName( 'PMT_COMIS_SUP' ).AsFloat;
        vlEmpresa.bCentroCustoObrigatorio :=
          ( FieldByName( 'PMT_CENTRO_CUSTO_OBRIGATORIO' ).AsString = 'S' );
        vlEmpresa.PMT_CENTROCUSTO_REQUERIDO_PAGAR :=
          ( FieldByName( 'PMT_CENTROCUSTO_REQUERIDO_PAGAR' ).AsString = 'S' );

        vlEmpresa.wAtualizaEstoque :=
          FieldByName( 'PMT_ATULIZA_ESTOQUE' ).AsString;
        vlEmpresa.fSeqUnicaPed := ( FieldByName( 'PMT_SEQUENCIA_UNICA_PEDIDO' )
          .AsString = 'S' );
        vlEmpresa.wPrm_NrPedido_Vendedor_fat :=
          ( FieldByName( 'PMT_FAT_MSG_PEDIDO_VEND' ).AsString = 'S' );
        vlEmpresa.wPMT_COMP_ITEM_PEDIDO_IT_NF :=
          ( FieldByName( 'PMT_COMP_ITEM_PEDIDO_IT_NF' ).AsString = 'S' );
        vlEmpresa.wPMT_FAT_CONFIRMA_PARCELA :=
          ( FieldByName( 'PMT_FAT_CONFIRMA_PARCELA' ).AsString = 'S' );
        vlEmpresa.bFaturamentoIPI1Parcela :=
          ( FieldByName( 'PMT_DPL_IPI_NA1D' ).AsString = 'S' );
        vlEmpresa.bFaturamentoST1Parcela :=
          ( FieldByName( 'PMT_DPL_ST_NA1D' ).AsString = 'S' );
        vlEmpresa.PMT_LIBERAR_EXPEDICAO :=
          FieldByName( 'PMT_LIBERAR_EXPEDICAO' ).AsString;
        vlEmpresa.PMT_ICMS_CUSTOENTRADA :=
          FieldByName( 'PMT_ICMS_CUSTOENTRADA' ).AsString = 'S';
        vlEmpresa.PMT_PIS_CUSTOENTRADA := FieldByName( 'PMT_PIS_CUSTOENTRADA' )
          .AsString = 'S';
        vlEmpresa.wPrmMarca := FieldByName( 'PMT_NF_MARCA' ).AsString;
        vlEmpresa.wCod_Carteira := FieldByName( 'PMT_COD_CARTEIRA' ).AsString;
        vlEmpresa.wTp_Cobranca := FieldByName( 'PMT_TP_COBRANCA' ).AsString;
        vlEmpresa.wTp_Docuto := FieldByName( 'PMT_TP_DOCTO' ).AsString;
        // vlEmpresa.wNFSerie := fieldbyname('SIN_SERIE_NF').asstring;
        vlEmpresa.wNFModelo := FieldByName( 'SIN_MODE_NF' ).AsString;

        vlEmpresa.PMT_HABILITAR_DIFAL := FieldByName( 'PMT_HABILITAR_DIFAL' )
          .AsString = 'S';
        vlEmpresa.PMT_VALOR_DIFAL_PEDIDO :=
          FieldByName( 'PMT_VALOR_DIFAL_PEDIDO' ).AsString = 'S';

        vlEmpresa.fPedNumeracaoAutomatica :=
          ( FieldByName( 'PMT_NUMER_PEDIDO' ).AsString = 'A' );
        vlEmpresa.wBtnEquivale := FieldByName( 'PMT_BTN_EQUIV' ).AsString;
        vlEmpresa.wPmt_Utiliza_Analise_Credito :=
          FieldByName( 'PMT_UTILIZA_ANALISE_CREDITO' ).AsString;
        vlEmpresa.wMultiAlmox := FieldByName( 'PMT_ALMOX' ).AsString;
        vlEmpresa.wPMT_AMX_VENDA := FieldByName( 'PMT_AMX_VENDA' ).AsString;
        vlEmpresa.wVariacaoNota := FieldByName( 'PMT_VAR_NOTA' ).AsString;
        // NÃO USA MAIS
        vlEmpresa.wPMT_VENDA_MSG_ATRASO_FIN :=
          FieldByName( 'PMT_VENDA_MSG_ATRASO_FIN' ).AsString;
        vlEmpresa.wPmt_TelaPedidoDoacao :=
          ( FieldByName( 'pmt_Pedido_Doacao' ).AsString = 'S' );
        vlEmpresa.wPmt_Ativa_NFCE :=
          ( FieldByName( 'EMP_HAB_NFCE' ).AsString = 'S' );
        vlEmpresa.wPMT_CALCULO_MARGEM_VENDA :=
          FieldByName( 'PMT_CALCULO_MARGEM' ).AsInteger;
        // frmpedidoitem
        vlEmpresa.wPMT_MEM_PESQPED :=
          ( FieldByName( 'PMT_MEM_PESQPED' ).AsString = 'S' );
        vlEmpresa.wPMT_FATURAR_PENDENCIAS :=
          ( FieldByName( 'PMT_FATURAR_PENDENCIAS' ).AsString = 'S' );
        vlEmpresa.wPMT_OP_SEMAPONTA :=
          ( FieldByName( 'PMT_OP_SEMAPONTA' ).AsString = 'S' );
        vlEmpresa.wPMT_NAO_AUTO_PVENDA :=
          ( FieldByName( 'PMT_NAO_AUTO_PVENDA' ).AsString = 'S' );
        vlEmpresa.WPMT_RESPONSAVEL_TECNICO :=
          ( FieldByName( 'PMT_RESPONSAVEL_TECNICO' ).AsString = 'S' );
        vlEmpresa.wPMT_PROD_TERMICO :=
          ( FieldByName( 'PMT_HAB_TERMICO' ).AsString = 'S' );
        vlEmpresa.wPMT_ORC_GERAPEDIDO :=
          ( FieldByName( 'PMT_ORC_GERAPEDIDO' ).AsString = 'S' );
        vlEmpresa.wPMT_ORC_GERAACORDO :=
          ( FieldByName( 'PMT_ORC_GERAACORDO' ).AsString = 'S' );
        vlEmpresa.PMT_GerarTagICMSSubsPagaAnter :=
          FieldByName( 'PMT_GerarTagICMSSubsPagaAnter' ).AsString;
        vlEmpresa.PMT_NAO_ATUALIZAR_BANCO :=
          ( FieldByName( 'PMT_NAO_ATUALIZAR_BANCO' ).AsString = 'S' );
        vlEmpresa.wPMT_ORDEM_CODFORN :=
          ( FieldByName( 'PMT_ORDEM_CODFORN' ).AsString = 'S' );
        vlEmpresa.wPMT_ORDEM_DESCFORN :=
          ( FieldByName( 'PMT_ORDEM_DESCFORN' ).AsString = 'S' );
        vlEmpresa.wPMT_EXPEDICAO_MULTIEMPRESA :=
          ( FieldByName( 'PMT_EXPEDICAO_MULTIEMPRESA' ).AsString = 'S' );
        vlEmpresa.wPMT_FATURA_MULTIEMPRESA :=
          ( FieldByName( 'PMT_FATURA_MULTIEMPRESA' ).AsString = 'S' );
        vlEmpresa.Wpmt_atualiza_prazo_cliente :=
          ( FieldByName( 'PMT_ATUALIZAR_CLIENTE' ).AsString = 'S' );
        vlEmpresa.bUtilizaGrade :=
          ( FieldByName( 'PMT_VENDA_GRADE' ).AsString = 'S' );
        vlEmpresa.bDigitacaoGradeVendas :=
          ( FieldByName( 'PMT_DIGITACAO_GRID_VENDAS' ).AsString = 'S' );
        vlEmpresa.bBloquearVendaPrecoCustoMargemZerado :=
          ( FieldByName( 'PMT_BLOQ_VENDA_PCM' ).AsString = 'S' );
        vlEmpresa.bUtilizaB2B := ( FieldByName( 'PMT_B2B' ).AsString = 'S' );
        vlEmpresa.sReferenciaProvisoriaOrcamento :=
          FieldByName( 'PMT_REFERENCIA_PROVISORIA' ).AsString;
        vlEmpresa.bGradeObrigatoria :=
          ( FieldByName( 'PMT_OBRIGAR_GRADE_VENDA' ).AsString = 'S' );
        vlEmpresa.wCalcularPV := StrToIntDef( FieldByName( 'PMT_CALCULARPV' )
          .AsString, 0 );
        vlEmpresa.bDiretivaObrigatoria :=
          ( FieldByName( 'PMT_OBRIGAR_DIRETIVA_VENDA' ).AsString = 'S' );
        vlEmpresa.bDiretivaObrigatoriaAba :=
          ( FieldByName( 'PMT_OBRIGAR_DIRETIVA_VENDA_ABA' ).AsString = 'S' );
        if vlEmpresa.bDiretivaObrigatoriaAba
        then
          vlEmpresa.bDiretivaObrigatoria := True;
        vlEmpresa.sPadraoPesquisaProduto :=
          FieldByName( 'PMT_PADRAO_PESQUISA_PROD' ).AsString;
        vlEmpresa.WPMT_RETIRAR_ICMS_BASECOFINSPIS :=
          ( FieldByName( 'PMT_RETIRAR_ICMS_BASECOFINSPIS' ).AsString = 'S' );
        vlEmpresa.bHabilitarTabelaPreco :=
          ( FieldByName( 'PMT_HABILITA_TABELA_PRECOS' ).AsString = 'S' );
        vlEmpresa.pComissaoEscala :=
          ( FieldByName( 'PMT_COMIS_ESCALA' ).AsString = 'S' );
        vlEmpresa.pComissaoSimples :=
          ( FieldByName( 'PMT_COMIS_SIMPLES' ).AsString = 'S' );
        vlEmpresa.pComissaoItem :=
          ( FieldByName( 'PMT_COMIS_PROD' ).AsString = 'S' );
        vlEmpresa.wAtualizaEstoque :=
          FieldByName( 'PMT_ATULIZA_ESTOQUE' ).AsString;
        vlEmpresa.fPMT_QTDE_DEC_PED := FieldByName( 'PMT_QTDE_DEC_PED' )
          .AsInteger;
        if vlEmpresa.fPMT_QTDE_DEC_PED < 2
        then
          vlEmpresa.fPMT_QTDE_DEC_PED := 2;
        vlEmpresa.fPMT_MULTTAB := FieldByName( 'PMT_MULTTAB' ).AsString;
        vlEmpresa.bAlteraDescricaodoItem := FieldByName( 'PMT_PEDITEMDESC' )
          .AsString = 'S';
        vlEmpresa.wPMT_COMP_ITEM_PEDIDO := FieldByName( 'PMT_COMP_ITEM_PEDIDO' )
          .AsString = 'N';

        vlEmpresa.wPMT_PRODUTO_SEM_VALOR :=
          FieldByName( 'PMT_PRODUTO_AGREGADO' ).AsString = 'S';
        vlEmpresa.bHabilitaConsultaCompraVenda :=
          FieldByName( 'PMT_KARDEX_PEDIDO' ).AsString = 'S';
        vlEmpresa.wTipoLiberacaoFaturamento :=
          FieldByName( 'PMT_LIBERAR_FATURA' ).AsString;

        vlEmpresa.sPadraoConsultaPedidoStatus :=
          FieldByName( 'PMT_CONS_VENDA_PEDDO_STAT' ).AsString;
        vlEmpresa.wPmt_Tabnome1 := ( FieldByName( 'PMT_TABNOME1' ).AsString );
        vlEmpresa.wPmt_Tabnome2 := ( FieldByName( 'PMT_TABNOME2' ).AsString );
        vlEmpresa.wPmt_Tabnome3 := ( FieldByName( 'PMT_TABNOME3' ).AsString );
        vlEmpresa.wPmt_Tabnome4 := ( FieldByName( 'PMT_TABNOME4' ).AsString );
        vlEmpresa.wPmt_Tabnome5 := ( FieldByName( 'PMT_TABNOME5' ).AsString );
        vlEmpresa.wPmt_Tabnome6 := ( FieldByName( 'PMT_TABNOME6' ).AsString );

        vlEmpresa.wPmt_Percvenda1 :=
          iif( FieldByName( 'PMT_PERC_VENDA1' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA1' ).Value );
        vlEmpresa.wPmt_Percvenda2 :=
          iif( FieldByName( 'PMT_PERC_VENDA2' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA2' ).Value );
        vlEmpresa.wPmt_Percvenda3 :=
          iif( FieldByName( 'PMT_PERC_VENDA3' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA3' ).Value );
        vlEmpresa.wPmt_Percvenda4 :=
          iif( FieldByName( 'PMT_PERC_VENDA4' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA4' ).Value );
        vlEmpresa.wPmt_Percvenda5 :=
          iif( FieldByName( 'PMT_PERC_VENDA5' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA5' ).Value );
        vlEmpresa.wPmt_Percvenda6 :=
          iif( FieldByName( 'PMT_PERC_VENDA6' ).IsNull, 0,
          FieldByName( 'PMT_PERC_VENDA6' ).Value );

        vlEmpresa.wPmt_PercComissao1 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO1' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO1' ).Value );
        vlEmpresa.wPmt_PercComissao2 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO2' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO2' ).Value );
        vlEmpresa.wPmt_PercComissao3 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO3' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO3' ).Value );
        vlEmpresa.wPmt_PercComissao4 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO4' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO4' ).Value );
        vlEmpresa.wPmt_PercComissao5 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO5' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO5' ).Value );
        vlEmpresa.wPmt_PercComissao6 :=
          iif( FieldByName( 'PMT_PERC_COMISSAO6' ).IsNull, 0,
          FieldByName( 'PMT_PERC_COMISSAO6' ).Value );

        vlEmpresa.wPMT_UTILIZA_CODIGO_ORIG_VD :=
          ( FieldByName( 'PMT_UTILIZA_CODIGO_ORIG_VD_NF' ).AsString = 'S' );

        vlEmpresa.bPMT_HABILITAR_CODORIGINAL :=
          ( FieldByName( 'PMT_HABILITAR_CODORIGINAL' ).AsString = 'S' );
        vlEmpresa.bPMT_PRAZO_ITEM := FieldByName( 'PMT_PRAZO_ITEM' )
          .AsString = 'S';
        vlEmpresa.sPadraoPesquisaEmpresa :=
          FieldByName( 'PMT_PADRAO_EMP_CONSULTA' ).AsString;
        vlEmpresa.WvARIACOES :=
          ( FieldByName( 'PMT_VARIACOES' ).AsString = 'S' ); // NÃO USA MAIS
        vlEmpresa.wPMT_VALOR_KIT :=
          ( FieldByName( 'PMT_VALOR_KIT' ).AsString = 'S' );
        vlEmpresa.wPMT_ITENS_KIT :=
          ( FieldByName( 'PMT_ITENS_KIT' ).AsString = 'S' );
        vlEmpresa.wPMT_PAGAR_COMISSAO_VERBA :=
          ( FieldByName( 'PMT_PAGAR_COMISSAO_VERBA' ).AsString = 'S' );
        vlEmpresa.wPMT_TRIB_NF :=
          ( FieldByName( 'PMT_TRIB_NF' ).AsString = 'S' );
        vlEmpresa.wPMT_CONTROLA_KIT :=
          ( FieldByName( 'PMT_CONTROLA_KIT' ).AsString = 'S' );
        vlEmpresa.wPMT_PRODUZIR_MAIS_OP :=
          ( FieldByName( 'PMT_PRODUZIR_MAIS_OP' ).AsString = 'S' );
        vlEmpresa.wPMT_VARPERC_MEDIDA_PRODUTO :=
          FieldByName( 'PMT_VARPERC_MEDIDA_PRODUTO' ).AsFloat;
        vlEmpresa.bPMT_HABILITA_MEDIDAPRD :=
          ( FieldByName( 'PMT_HABILITA_MEDIDAPRD' ).AsString = 'S' );
        vlEmpresa.bPMT_NCM_UND_ITEM_PROV :=
          ( FieldByName( 'PMT_NCM_UND_ITEM_PROV' ).AsString = 'S' );
        // LIBERAR DIGITACAO DE NCM E UND EM ITEM PROVISORIO
        vlEmpresa.p_NumDiasValidade_Orcamento :=
          FieldByName( 'PMT_NUMDIAS_ORC' ).AsInteger;
        vlNFSe.ATIVA_NFSE := ( qAux.FieldByName( 'PMT_ATIVA_NFSE' )
          .AsString = 'S' );
        vlEmpresa.bPMT_ATIVAR_PPAC :=
          ( qAux.FieldByName( 'PMT_ATIVAR_PPAC' ).AsString = 'S' );
        vlEmpresa.bPMT_INCLUIRRAPIDO :=
          ( FieldByName( 'PMT_INCLUIRRAPIDO' ).AsString = 'S' );
        vlEmpresa.spmt_CaminhoFoto := FieldByName( 'pmt_CaminhoFoto' ).AsString;
        vlEmpresa.sPMT_CAMINHO_PEDIN :=
          FieldByName( 'PMT_CAMINHO_PEDIN' ).AsString;
        vlEmpresa.PMT_AMX_PRODUCAO_ENTRADA :=
          FieldByName( 'PMT_AMX_PRODUCAO_ENTRADA' ).AsString;
        vlEmpresa.bPMT_CONTROLE_CONTASPAGAR :=
          FieldByName( 'PMT_CONTROLE_CONTASPAGAR' ).AsString = 'S';
        vlEmpresa.Bpmt_gerarsubordens :=
          ( FieldByName( 'pmt_gerarsubordens' ).AsString = 'S' );
        vlEmpresa.PMT_HABILITAR_MRP :=
          ( FieldByName( 'PMT_HABILITAR_MRP' ).AsString = 'S' );
        vlEmpresa.PMT_COMPOSICAOORDEM :=
          FieldByName( 'PMT_COMPOSICAOORDEM' ).AsString;
        vlEmpresa.PMT_AMX_PRODUCAO_SAIDA :=
          FieldByName( 'PMT_AMX_PRODUCAO_SAIDA' ).AsString;
        vlEmpresa.PMT_AMX_PRODUCAO_ENTRADA :=
          FieldByName( 'PMT_AMX_PRODUCAO_ENTRADA' ).AsString;
        vlEmpresa.PMT_COMSUMIRINSUMO :=
          FieldByName( 'PMT_COMSUMIRINSUMO' ).AsString;
        vlEmpresa.PMT_GERAR_NUM_LOTE :=
          FieldByName( 'PMT_GERAR_NUM_LOTE' ).AsString;

        vlEmpresa.PMT_LOTE_AUTOMATICO :=
          FieldByName( 'PMT_LOTE_AUTOMATICO' ).AsString;
        vlEmpresa.PMT_LOTE_PREFIXO := FieldByName( 'PMT_LOTE_PREFIXO' )
          .AsString;
        vlEmpresa.PMT_LOTE_SEMENTE := FieldByName( 'PMT_LOTE_SEMENTE' )
          .AsInteger;

        vlEmpresa.PMT_PRD_REFER_SCO_REFER :=
          FieldByName( 'PMT_PRD_REFER_SCO_REFER' ).AsString;

        vlEmpresa.PMT_CUSTO_MATERIAPRIMA :=
          FieldByName( 'PMT_CUSTO_MATERIAPRIMA' ).AsString;
        vlEmpresa.PMT_CUSTOOPERACAO :=
          FieldByName( 'PMT_CUSTOOPERACAO' ).AsString;
        vlEmpresa.PMT_CUSTOCOLABORADOR :=
          FieldByName( 'PMT_CUSTOCOLABORADOR' ).AsString;
        vlEmpresa.PMT_CUSTOEQUIPAMENTO :=
          FieldByName( 'PMT_CUSTOEQUIPAMENTO' ).AsString;
        vlEmpresa.PMT_VINCULAR_VENDEDOR :=
          FieldByName( 'PMT_VINCULAR_VENDEDOR' ).AsString = 'S';
        vlEmpresa.wPMT_CERTIFICADO_DIGITAL :=
          qAux.FieldByName( 'PMT_CERTIFICADO_DIGITAL' ).AsString;
        vlEmpresa.fPMT_MULTIPLICADOR_P :=
          qAux.FieldByName( 'PMT_MULTIPLICADOR_P' ).AsString = 'S';
        vlEmpresa.PMT_ENVASE_SBAIXA := qAux.FieldByName( 'PMT_ENVASE_SBAIXA' )
          .AsString = 'S';
        vlEmpresa.PMT_HABILITA_ENVASE :=
          qAux.FieldByName( 'PMT_HABILITA_ENVASE' ).AsString = 'S';
        vlEmpresa.PMT_REL_ORDEMPRODUCAO :=
          qAux.FieldByName( 'PMT_REL_ORDEMPRODUCAO' ).AsString;
        vlEmpresa.PMT_CLIENTE_PRODUCAO :=
          qAux.FieldByName( 'PMT_CLIENTE_PRODUCAO' ).AsString;
        vlEmpresa.PMT_HABILITAR_PRODU_ANTIGO :=
          qAux.FieldByName( 'PMT_HABILITAR_PRODU_ANTIGO' ).AsString = 'S';
        vlEmpresa.PMT_INTEGRAR_PRD_SERV :=
          qAux.FieldByName( 'PMT_INTEGRAR_PRD_SERV' ).AsString = 'S';
        vlEmpresa.PMT_DESCOSIDERAR_FATURA :=
          qAux.FieldByName( 'PMT_DESCOSIDERAR_FATURA' ).AsString = 'S';
        vlEmpresa.PMT_ATIVAR_INTERMEDIADOR :=
          qAux.FieldByName( 'PMT_ATIVAR_INTERMEDIADOR' ).AsString = 'S';
        vlEmpresa.PMT_HABILITA_ICMS_PEDIDO :=
          qAux.FieldByName( 'PMT_HABILITA_ICMS_PEDIDO' ).AsString = 'S';
        vlEmpresa.PMT_PEDIDO_IND_PLASTICA :=
          qAux.FieldByName( 'PMT_PEDIDO_IND_PLASTICA' ).AsString = 'S';

        vlEmpresa.PMT_MENSAGEM1 := qAux.FieldByName( 'PMT_MENSAGEM1' ).AsString;
        vlEmpresa.PMT_MENSAGEM2 := qAux.FieldByName( 'PMT_MENSAGEM2' ).AsString;
        vlEmpresa.PMT_MENSAGEM3 := qAux.FieldByName( 'PMT_MENSAGEM3' ).AsString;

        vlEmpresa.PMT_FAT_NF_VALOR_ORIGINAL :=
          qAux.FieldByName( 'PMT_FAT_NF_VALOR_ORIGINAL' ).AsString;
        vlEmpresa.PMT_FAT_NF_FRETE_SEGURO_DESP :=
          qAux.FieldByName( 'PMT_FAT_NF_FRETE_SEGURO_DESP' ).AsString = 'S';
        vlEmpresa.PMT_FAT_NF_VALOR_LIQ_DESC :=
          qAux.FieldByName( 'PMT_FAT_NF_VALOR_LIQ_DESC' ).AsString = 'S';
        vlEmpresa.PMT_FAT_NF_VALOR_ANTECIPADO :=
          qAux.FieldByName( 'PMT_FAT_NF_VALOR_ANTECIPADO' ).AsString = 'S';
        vlEmpresa.PMT_FAT_NF_SEM_VALOR_COMERCIAL :=
          qAux.FieldByName( 'PMT_FAT_NF_SEM_VALOR_COMERCIAL' ).AsString = 'S';

        vlEmpresa.PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP :=
          qAux.FieldByName( 'PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP' ).AsString = 'S';

      finally
        Close;
      end;

    END;
  end;

function EncontrouVariosIni : boolean;
  var
    pesq : TSearchRec;
    j : Integer;
  begin
    Result := False;
    j := FindFirst( DBInicio.SistemaLocal + 'Ad*.ini', faAnyFile, pesq );
    if j = 0
    then
    begin
      fConfiguracoesIni := TStringList.Create;
      Result := True;
      repeat
        fConfiguracoesIni.Add( pesq.name );

      until FindNext( pesq ) <> 0;
      FindClose( pesq );
    end;
  end;

function EncontrouIni : boolean;
  begin
    Result := FileExists( DBInicio.SistemaLocal + '\Adjutor.ini' );
    if Result
    then
      if EncontrouVariosIni
      then
      begin
        DBInicio.cbConfig.Visible := True;
        DBInicio.cbConfig.Items := fConfiguracoesIni;
        FreeAndNil( fConfiguracoesIni );
      end;
  end;

Function TDBInicio.TestaConexao : boolean;
  begin
    OpenIni;
    Result := IniciaDB( MainDB );
  end;

Function TDBInicio.OpenIni : boolean;
  begin
    cbConfig.Items.indexof( cbConfig.text );

    if cbConfig.Visible and not ( cbConfig.ItemIndex = - 1 )
    then
      ReadIniFile( cbConfig.Items[ cbConfig.ItemIndex ] )
    else
    begin
      Result := EncontrouIni;
      if Result
      then
        ReadIniFile;
    end;

  end;

procedure TDBInicio.ReadIniFile( const name : string = 'Adjutor.ini' );
  var
    ini : TiniFile;
    nm : string;
  begin
    nm := DBInicio.SistemaLocal + name;
    ini := TiniFile.Create( nm );
    try
      with vlBancoConexao do
      begin

        TipoProtocolo := trim( ini.ReadString( 'SERVIDOR', 'PROTOCOLO', '' ) );
        Dialeto := '3';
        TipoConexao := ini.ReadString( 'SERVIDOR', 'CONEXAO', '' );

        ServidorDados := ini.ReadString( 'SERVIDOR', 'SERVIDOR_DADOS', '' );
        VendorLib := ini.ReadString( 'SERVIDOR', 'VENDORLIB', '' );
        HostName := ini.ReadString( 'SERVIDOR', 'HOSTNAME', '' );
        if MatchStr( UpperCase( HostName ), [ 'LOCALHOST', '127.0.0.1',
          '127.0.0.1/3050' ] )
        then
          TipoConexao := 'L'
        else
          TipoConexao := 'R';
        PathRemoto := ini.ReadString( 'SERVIDOR', 'PATHREMOTO', '' );
        PathLocal := ini.ReadString( 'SERVIDOR', 'PATHLOCAL',
          vlBancoConexao.PathRemoto );
        Usuario := DesCriptografa( ini.ReadString( 'SERVIDOR',
          'USUARIO', '' ) );
        Senha := DesCriptografa( ini.ReadString( 'SERVIDOR', 'SENHA', '' ) );
        UnidadeServidor := ini.ReadString( 'SERVIDOR', 'UNIDADE_SERVIDOR', '' );
        CriarMapeamento := ini.ReadString( 'SERVIDOR', 'CRIAMAPEAMENTO', '' );
        UnidadeBackup := ini.ReadString( 'SERVIDOR', 'UNIDADE_BACKUP', '' );
        IndentificaBackup := ini.ReadString( 'SERVIDOR', 'ID_BACKUP', '' );
        MonitoraSql := ( ini.ReadString( 'SISTEMA', 'MONITORASQL', 'FALSE' )
          = 'TRUE' );
        IsDesenvolvimento := ( ini.ReadString( 'SISTEMA', 'DESENVOLVIMENTO',
          'FALSE' ) = 'TRUE' );
        VerificarVersao := ( ini.ReadString( 'SISTEMA', 'VERIFICARVERSAO',
          'FALSE' ) = 'TRUE' );
        fModulosComoAplicacao :=
          ( ini.ReadString( 'SISTEMA', 'MODULOSCOMOAPLICACAO', 'FALSE' )
          = 'TRUE' );
        IsServidor := ( ini.ReadString( 'SISTEMA', 'SERVIDOR', 'FALSE' )
          = 'TRUE' );
        IsCliente := ( ini.ReadString( 'SISTEMA', 'CLIENTE', 'FALSE' )
          = 'TRUE' );
      end;
    Finally
      FreeAndNil( ini );
    end;
    TestaPasta( SistemaLocal + '\SQL' );
    // SqlMonitor.FileName:=SistemaLocal+'\SQL\SqlMonitor.Sql';
  end;

procedure TDBInicio.ACBrMailAfterMailProcess( Sender : TObject );
  begin
    inherited;
    {$ifdef SISTEMA}
    ConnectionStatus.Add( 'Depois de Enviar o email: ' + TACBrMail( Sender )
      .Subject );
    {$endif}
  end;

procedure TDBInicio.ACBrMailBeforeMailProcess( Sender : TObject );
  begin
    inherited;
    {$ifdef SISTEMA}
    ConnectionStatus.Add( 'Antes de Enviar o email: ' + TACBrMail( Sender )
      .Subject );
    {$endif}
  end;

procedure TDBInicio.ACBrMailMailException(
  const AMail : TACBrMail;
  const E     : Exception;
  var ThrowIt : boolean );
  begin
    inherited;
    {$ifdef SISTEMA}
    ConnectionStatus.Add( E.Message );
    ThrowIt := False;
    ConnectionStatus.Add( '*** Erro ao Enviar o email: ' + AMail.Subject );
    {$endif}
  end;

procedure TDBInicio.ACBrMailMailProcess(
  const AMail   : TACBrMail;
  const aStatus : TMailStatus );
  begin
    inherited;
    {$ifdef SISTEMA}
    case aStatus of
      pmsStartProcess :
        ConnectionStatus.Add( 'Iniciando processo de envio.' );
      pmsConfigHeaders :
        ConnectionStatus.Add( 'Configurando o cabeçalho do e-mail.' );
      pmsLoginSMTP :
        ConnectionStatus.Add( 'Logando no servidor de e-mail.' );
      pmsStartSends :
        ConnectionStatus.Add( 'Iniciando os envios.' );
      pmsSendTo :
        ConnectionStatus.Add( 'Processando lista de destinatários.' );
      pmsSendCC :
        ConnectionStatus.Add( 'Processando lista CC.' );
      pmsSendBCC :
        ConnectionStatus.Add( 'Processando lista BCC.' );
      pmsSendReplyTo :
        ConnectionStatus.Add( 'Processando lista ReplyTo.' );
      pmsSendData :
        ConnectionStatus.Add( 'Enviando dados.' );
      pmsLogoutSMTP :
        ConnectionStatus.Add( 'Fazendo Logout no servidor de e-mail.' );
      pmsDone :
        ConnectionStatus.Add( 'Terminando e limpando.' );
    end;
    ConnectionStatus.Add( '   ' + AMail.Subject );
    {$endif}
    // Application.ProcessMessages;
  end;

procedure TDBInicio.btCancelClick( Sender : TObject );
  begin
    inherited;
    ModalResult := mrCancel;
  end;

procedure TDBInicio.btOKClick( Sender : TObject );
  begin
  {$ifdef SISTEMA}
    inherited;
    if ( EdUsuario.text = 'NOVI' ) and ( edSenha.text <> '@1N19' ) and
      ( trim( vlVersao.Issues ) = '' )
    then
    begin

      raise Exception.Create( 'Senha inválida' )

    end
    else if EdUsuario.text = vlUsuario.USUARIOPADRAO
    THEN
    begin
      if edSenha.text = vlUsuario.SENHAPADRAO
      then
      begin
        with vlUsuario do
        begin
          USERNAME := USUARIOPADRAO;
          PSW := SENHAPADRAO;
          NOME := 'Novi';
          ATIVO := True;
          NIVELACESSO := 1;
          CODIGO := '18';
          EMAIL_USUARIO := 'marcio@novisistemas.com.br';
          OpenParametrosUsuario;

        end;
        vlEmpresa.fCODIGO_REPRES := '000';
        vlEmpresa.AcessoRelatorios_P := 'S';
        vlEmpresa.bVisualizaMarkupPedido := True;
        vlEmpresa.bVisualizaClientes_P := False;
        vlEmpresa.bReajusteVenda := True;
        vlEmpresa.VisualizaPedios_P := False;
        vlEmpresa.pUSP_USAPRAZODESABILITADO := True;
        vlEmpresa.bUSP_STAT_PRECO_BRUTO_P := True;
        vlEmpresa.bUSP_STAT_PRECO_LIQUIDO_P := True;
        vlEmpresa.bUSP_ALTERA_DESCONTO_P := True;
        vlEmpresa.USP_ALTERA_DESCONTO_NOTA := True;

        CarregaEmpresaSelecionada( strzero( CEmpresa.text, 3 ) );
        ModalResult := mrOK;
      end;
    end
    else if ValidaUserSenha( EdUsuario.text, edSenha.text )
    then
    begin
      CarregaEmpresaSelecionada( strzero( CEmpresa.text, 3 ) );
      ModalResult := mrOK;
      // provoca acessviolation FrmMenu.Status.Panels[0].Text:= 'Usuário: '+DBInicio.Usuario.NOME;
    end;
    {$endif}
  end;

procedure TDBInicio.FormCreate( Sender : TObject );
  begin
    inherited;

    CdsVersao.FetchOnDemand := False;
    SQLConnection := MainDB;
    self.Width := 671;
    self.Height := 424;
    EdUsuario.Clear;
    edSenha.Clear;
    fIsServidor := False;
    fIsCliente := False;

    with vlUsuario do
    begin
      USERNAME := '';
      PSW := '';
      NOME := '';
      ATIVO := False;
      NIVELACESSO := 0;
    end;

    vlEmpresa.Logo := tBitMap.Create;
    vlNfe.Logo := tBitMap.Create;

    FormatSettings.DecimalSeparator := ',';
    FormatSettings.ThousandSeparator := '.';
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    Application.HintHidePause := 10000;
    RxLversao.Caption := GetBuildInfo;

  end;

procedure TDBInicio.FormDestroy( Sender : TObject );
  begin
    inherited;
    MainDB.Connected := False;
  end;

procedure TDBInicio.FormKeyDown(
  Sender  : TObject;
  var Key : Word;
  Shift   : TShiftState );
  begin
    inherited;
    if GetKeyState( VK_CONTROL ) and 128 > 0
    then // control pressionado
    begin
      if Key = VK_RETURN
      then
      begin
        btOk.Click;
        Key := 0;
      end
    end;
  end;

procedure TDBInicio.FormShow( Sender : TObject );
  begin
    inherited;
    self.Caption := 'Sistema X';
    lbCopyright.Caption := 'Copyright© 2009-' + inttostr( YearOf( Now ) ) +
      ' by Novi Sistemas';
    EdUsuario.SetFocus;
  end;

procedure TDBInicio.IdConnectionIntercept1Connect
  ( ASender : TIdConnectionIntercept );
  begin
    inherited;
    {$ifdef SISTEMA}
    Uteis.ConnectionStatus.Add( '' );
    Uteis.ConnectionStatus.Add( 'Conectou!' );
    {$endif}
  end;

procedure TDBInicio.IdConnectionIntercept1Disconnect
  ( ASender : TIdConnectionIntercept );
  begin
    inherited;
    {$ifdef SISTEMA}
    Uteis.ConnectionStatus.Add( '' );
    Uteis.ConnectionStatus.Add( 'Desconectou!' );
    {$endif}
  end;

procedure TDBInicio.IdConnectionIntercept1Receive(
  ASender     : TIdConnectionIntercept;
  var ABuffer : TIdBytes );
  begin
    inherited;
    {$ifdef SISTEMA}
    Uteis.ConnectionStatus.Add( '' );
    Uteis.ConnectionStatus.Add( 'Recebeu: ' + BytesToString( ABuffer ) );
    {$endif}
  end;

procedure TDBInicio.IdConnectionIntercept1Send(
  ASender     : TIdConnectionIntercept;
  var ABuffer : TIdBytes );
  begin
    inherited;
    {$ifdef SISTEMA}
    Uteis.ConnectionStatus.Add( '' );
    Uteis.ConnectionStatus.Add( 'Enviou: ' + BytesToString( ABuffer ) );
    {$endif}
  end;

Function TDBInicio.IniciaDB(
  sqlDB          : TSQLConnection;
  IsolationLevel : string = 'ReadCommitted' ) : boolean;
  begin
    if sqlDB.Connected
    then
    begin
      RollBackTransaction;
      sqlDB.Connected := False;
    end;
    With sqlDB do
    begin

      Connected := False;
      ConnectionName := 'FBConnection';
      DriverName := 'Firebird';
      LoginPrompt := False;

      Params.Clear;
      Params.Add( 'DriverUnit=Data.DBXFirebird' );
      Params.Add
        ( 'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.bpl' );
      Params.Add
        ( 'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b' );
      Params.Add
        ( 'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFirebirdDriver220.bpl' );
      Params.Add
        ( 'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandFactory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b' );
      Params.Add( 'GetDriverFunc=getSQLDriverINTERBASE' );
      Params.Add( 'LibraryName=dbxfb.dll' );
      Params.Add( 'LibraryNameOsx=libsqlfb.dylib' );
      Params.Add( 'VendorLib=fbclient.dll' );
      Params.Add( 'VendorLibWin64=fbclient.dll' );
      Params.Add
        ( 'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird' );

      if BancoConexao.TipoConexao = 'R'
      then
        Params.Add( 'database=' + BancoConexao.HostName + ':' +
          BancoConexao.PathRemoto )
      else
      begin
        vlBancoConexao.PathRemoto := vlBancoConexao.PathLocal;
        Params.Add( 'database=' + BancoConexao.HostName + ':' +
          BancoConexao.PathLocal );
      end;
      Params.Add( 'user_name=' + BancoConexao.Usuario );
      Params.Add( 'password=' + BancoConexao.Senha );
      Params.Add( 'Role=' );
      Params.Add( 'MaxBlobSize=-1' );
      Params.Add( 'LocaleCode=0000' );
      Params.Add( 'IsolationLevel=' + IsolationLevel );
      Params.Add( 'SQLDialect=3' );
      Params.Add( 'CommitRetain=False' );
      Params.Add( 'WaitOnLocks=False' );
      Params.Add( 'TrimChar=True' );
      Params.Add( 'BlobSize=-1' );
      Params.Add( 'ErrorResourceFile=' );
      Params.Add( 'RoleName=RoleName' );
      Params.Add( 'ServerCharSet=' );
      Params.Add( 'Trim Char=True' );

    end;
    try
      sqlDB.Connected := True;

      if BancoConexao.MonitoraSql
      then
        CriaMonitor( sqlDB );

      { mFlg:=SqlMonitor.active;
        SqlMonitor.active:=False;
        SqlMonitor.SQLConnection:=SqlDB;
        SqlMonitor.active:=mFlg; }
    Except
      on E : Exception do
      begin
        if UpperCase( copy( E.Message, 1, 44 ) )
          = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.'
        then
          MessageDlg( 'Usuário e/ou Senha DB não definido!', mtError,
            [ mbOK ], 0 )
        else if UpperCase( copy( E.Message, 1, 34 ) )
          = 'UNABLE TO COMPLETE NETWORK REQUEST'
        then
          MessageDlg( 'Conexão falhou!' + #13 + #13 +
            'Impossível encontrar o Servidor na rede!' + #13 + #13 +
            'Verifique se o servidor esta ligado.', mtWarning, [ mbOK ], 0 )
        else
          MessageDlg( 'Conexão falhou!' + #13 + E.Message, mtError,
            [ mbOK ], 0 );
      end;
    end;
    Result := sqlDB.Connected;
  end;

function TDBInicio.IniciaDBFireDAC(
  sqlDB          : TFDConnection;
  IsolationLevel : string ) : boolean;
  begin
    try

      with sqlDB do
      begin
        Connected := False;
        // FDPhysFBDriverLink1.VendorHome := ExtractFilePath(Application.ExeName) ;
        FDPhysFBDriverLink1.VendorLib := ExtractFilePath( Application.ExeName )
          + 'fbclient.dll';
        FDPhysFBDriverLink1.Release;

        Params.Clear;

        Params.Values[ 'DriverID' ] := 'FB';
        Params.Values[ 'user_name' ] := BancoConexao.Usuario;;
        Params.Values[ 'password' ] := BancoConexao.Senha;;
        if ( BancoConexao.TipoConexao = 'R' )
        then
        begin
          Params.Values[ 'server' ] := BancoConexao.HostName;
          Params.Values[ 'Protocol' ] := 'ipTCPIP';
          Params.Values[ 'Database' ] := BancoConexao.PathRemoto;
        end
        else
        begin
          Params.Values[ 'Database' ] := iif( BancoConexao.PathLocal = '',
            BancoConexao.PathRemoto, BancoConexao.PathLocal );
          Params.Values[ 'Protocol' ] := 'ipLocal';
          Params.Values[ 'server' ] := '';
        end;

        Params.Values[ 'port' ] := '3050';
        Params.Values[ 'CharacterSet' ] := 'ISO8859_1'; // 'UTF8';
        Params.Values[ 'DriverID' ] := 'FB';
        Params.Values[ 'SQLDialect' ] := '3';
        Connected := True;
      end;
      FDQuery1.Connection := sqlDB;
      FDQuery1.Open;
      Result := True;
    except
      on E : Exception do
        Result := False;
      // ShowMessage('Ocorreu uma Falha na configuração no Banco Firebird:'+e.Message);
    end;

  end;

Procedure TDBInicio.CriaMonitor( psqlDB : TSQLConnection );
  var
    SqlM : tSqlMonitor;
  begin
    SqlM := tSqlMonitor.Create( nil );
    SqlM.SQLConnection := psqlDB;
    TestaPasta( DBInicio.SistemaLocal + '\SqlMonitor' );
    SqlM.FileName := DBInicio.SistemaLocal + '\SqlMonitor\' + psqlDB.Owner.name
      + '.' + psqlDB.name + '.txt';
    SqlM.AutoSave := True;
    SqlM.Active := True;
  end;

{ procedure TDBInicio.IniciaDBZ(sqlDB: tZConnection);
  var MFlg:boolean;
  begin
  if SqlDB.Connected then
  SqlDB.Connected:=False;

  With SqlDB do
  begin
  DataBase := PastaDB+NomeDB;
  Password := BancoConexao.Senha;
  User := BancoConexao.Usuario;
  Protocol := 'firebird-2.5';
  HostName := NomeServidor;
  end;
  try
  SqlDB.Connected:=true;
  Except on E:Exception do
  begin
  if UpperCase(copy(E.Message,1,44)) = 'YOUR USER NAME AND PASSWORD ARE NOT DEFINED.' then
  begin
  beep;
  GeraException('Usuário e/ou Senha DB não definido!');
  end
  else
  MessageDlg('Conexão falhou, passe a mensagem abaixo ao Administrador de Sistemas:'+#13+ E.Message,mtError, [mbOK],0);
  application.Terminate;
  end;
  end;
  end; }

procedure TDBInicio.MainDBBeforeDisconnect( Sender : TObject );
  begin
    inherited;
    RollBackTransaction;
  end;

{ initialization
  rlConsts.SetVersion(3,71,'B'); }

function TDBInicio.GetNomeDb : string;
  begin
    if BancoConexao.TipoConexao = 'R'
    then
      Result := ExtractFileName( BancoConexao.PathRemoto )
    else if BancoConexao.TipoConexao = 'L'
    then
      Result := ExtractFileName( BancoConexao.PathLocal );
  end;

function TDBInicio.GetNomeServidor : string;
  begin
    Result := BancoConexao.HostName;
  end;

function TDBInicio.GetPastaDb : string;
  begin
    Result := ExtractFilePath( BancoConexao.PathRemoto );
  end;

Function TDBInicio.IsServer : boolean;
  var
    vIP : string;
  begin
    if IsServidor
    then // testa parametro SERVIDOR=TRUE - Arquivo INI (Força execução como servidor - util para testar atualizador)
      IsServer := True
    Else if IsCliente
    then // testa parametro CLIENTE=TRUE - Arquivo INI  (Força execução como cliente - util para testar atualizador)
      IsServer := False
    Else
    begin
      vIP := GetTextBefore( BancoConexao.HostName, '/' );
      IsServer := ( MeuIP = vIP ) or ( EmptyStr = vIP );
    end;
  end;

procedure TDBInicio.JvThread1Begin( Sender : TObject );
  begin
    inherited;

    if VERSAO.Issues = ''
    then
    begin
      {$ifdef SISTEMA}
      fmAnimacao := TfmAnimacao.Create( Application );
      fmAnimacao.Panel1.Caption :=
        'Carregando configurações do servidor. Aguarde, isto poderá demorar um pouco...';
      fmAnimacao.Show;
      Application.ProcessMessages;

      ValidaOnline( DBInicio.Empresa.CNPJ_CNPF, False, '', 0, 0 );
      fmAnimacao.Free;
      {$endif}
    end;

  end;

procedure TDBInicio.JvThread1Execute(
  Sender : TObject;
  Params : Pointer );
  begin
    inherited;
    //
  end;

{$ifdef SISTEMA}
procedure TDBInicio.LerVersao;
  var
    versaosistema, versaobanco, versaoreduzida, IPMAQUINA, Origem,
      Destino : String;
    p : Integer;
    patchbanco : Integer;
    r : TIdIPWatch;
    Function WinExecAndWait(
      const PATH       : pchar;
      const Visibility : Word;
      const Wait       : boolean ) : boolean;
      var
        ProcessInformation : TProcessInformation;
        StartupInfo : TStartupInfo;
      begin
        FillChar( StartupInfo, SizeOf( TStartupInfo ), 0 );
        with StartupInfo do
        begin
          cb := SizeOf( TStartupInfo );
          lpReserved := NIL;
          lpDesktop := NIL;
          lpTitle := NIL;
          dwFlags := STARTF_USESHOWWINDOW;
          wShowWindow := Visibility;
          cbReserved2 := 0;
          lpReserved2 := NIL
        end;

        Result := CreateProcess( NIL, { address of module name }
          PATH, { address of command line }
          NIL, { address of process security attributes }
          NIL, { address of thread security attributes }
          False, { new process inherits handle }
          NORMAL_PRIORITY_CLASS, { creation flags }
          NIL, { address of new environment block }
          NIL, { address of current directory name }
          StartupInfo, ProcessInformation );
        if Result
        then
        begin
          with ProcessInformation do
          begin
            if Wait
            then
              WaitForSingleObject( hProcess, INFINITE );
            CloseHandle( hThread );
            CloseHandle( hProcess )
          end;
        end;
      end;

  begin
    with qAux do
    begin
      Close;
      Sql.Clear;
      Sql.Add( 'select * from VERSAOSISTEMA' );
      try
        Open;
        with vlVersao do
        begin
          CODIGO := FieldByName( 'codigo' ).AsInteger;
          p := pos( 'patch', FieldByName( 'scriptadjutor' ).AsString );
          if p > 0
          then
            patchbanco :=
              StrToIntDef( trim( copy( FieldByName( 'scriptadjutor' ).AsString,
              p + 6, 10 ) ), 0 );

          if p = 0
          then
          begin
            // escrito errado em alguns bancos
            p := pos( 'path', FieldByName( 'scriptadjutor' ).AsString );
            if p > 0
            then
              patchbanco :=
                StrToIntDef
                ( trim( copy( FieldByName( 'scriptadjutor' ).AsString, p + 5,
                10 ) ), 0 );
          end;

          VERSAO := FieldByName( 'versao' ).AsString;
          Data := FieldByName( 'data' ).AsDateTime;
          PROGRAMA := FieldByName( 'programa' ).AsString;
          NOMEARQUIVO := FieldByName( 'nomearquivo' ).AsString;
          ARQUIVO := FieldByName( 'arquivo' ).AsString;
          ATUALIZADOR := FieldByName( 'atualizador' ).AsString;
          versaobanco := VERSAO;
        end;
      finally
        Close;
      end;
    end;
    vlVersao.patch := 0;
    vlVersao.Issues := '';

    r := TIdIPWatch.Create( nil );
    try
      IPMAQUINA := r.LocalIP;
    finally
      r.Free;
    end;
    cbConfig.Visible := vlVersao.Issues <> '';
    lpatch.Visible := ( vlVersao.Issues <> '' ) or ( vlVersao.patch > 0 );
    if vlVersao.Issues <> ''
    then
    begin
      lpatch.Caption := 'HOMOLOGAÇÃO ISSUES ' + vlVersao.Issues;
      VerificarVersao := True;
      vlVersao.VERSAOCOMPLETO := lpatch.Caption + '-' + ' compilando em ' +
        FormatDateTime( 'dd/mm HH:nn', Now );
    end
    else
    begin
      lpatch.Caption := iif( vlVersao.patch > 0,
        'patch ' + inttostr( vlVersao.patch ), '' );
      vlVersao.VERSAOCOMPLETO := GetBuildInfo + iif( vlVersao.patch > 0,
        ' - patch ' + inttostr( vlVersao.patch ), iif( vlVersao.Issues <> '',
        ' - ' + lpatch.Caption, '' ) ) + ' - ' +
        copy( DateToStr( vlVersao.Data ), 1, 5 );
    end;

    vlVersao.PATH := ExtractFilePath( Application.ExeName );
    versaosistema := GetBuildInfo;
    versaoreduzida := copy( versaobanco,
      ( Length( trim( versaobanco ) ) - 2 ), 3 );

    if VerificarVersao
    then
      exit;
    // só vai atualizar a versão do patch se for o servidor
    if ( versaobanco = versaosistema ) and ( patchbanco < vlVersao.patch ) and
      ( vlVersao.patch > 0 ) and
      ( MatchStr( UpperCase( vlBancoConexao.HostName ),
      [ 'LOCALHOST', '127.0.0.1/3050', '127.0.0.1', IPMAQUINA ] ) )
    then
      ExecSql( 'update VERSAOSISTEMA set scriptadjutor = ' +
        QuotedStr( versaosistema + ' patch ' + inttostr( vlVersao.patch ) ) );
    if not vlSem_Validacao
    then
      if ( versaobanco > versaosistema ) or
        ( ( versaobanco = versaosistema ) and ( patchbanco > vlVersao.patch ) )
        and not ( MatchStr( UpperCase( vlBancoConexao.HostName ),
        [ 'LOCALHOST', '127.0.0.1/3050', '127.0.0.1', IPMAQUINA ] ) )
      then
      begin
        Uteis.aviso
          ( 'Sua versão esta desatualizada. Iniciaremos o download da versão ' +
          versaobanco + iif( patchbanco > 0,
          ' - patch ' + inttostr( patchbanco ), '' ) + '.' );

        Application.ProcessMessages;
        fmAnimacao := TfmAnimacao.Create( Application );
        fmAnimacao.Show;

        if patchbanco = 0
        then
        begin
          Origem := 'https://www.novisistemas.com.br/Atualizacoes-Softwares/Adjutor/AdjutorServer'
            + versaoreduzida + '.exe';
          Destino := ExtractFileDir( Application.ExeName ) +
            '\atualização\AdjutorServer' + versaoreduzida + '.exe';
        end
        else
        begin
          Origem := 'https://www.novisistemas.com.br/Atualizacoes-Softwares/Adjutor/AdjutorServer'
            + versaoreduzida + 'patch' + inttostr( patchbanco ) + '.exe';
          Destino := ExtractFileDir( Application.ExeName ) +
            '\atualização\AdjutorServer' + versaoreduzida + 'patch' +
            inttostr( patchbanco ) + '.exe';
        end;

        if DownloadArquivo( Origem, Destino )
        then
        begin
          fmAnimacao.Close;
          Application.ProcessMessages;
          Uteis.aviso( 'Por favor cofirme o passo-a-passo até concluir.' );
          ShellExecute( 0, Nil, pWideCHAR( Destino ), Nil, Nil, SW_SHOWNORMAL );

        end
        else
        begin
          fmAnimacao.Close;
          Showmessage
            ( 'Não foi possivel fazer o download, verifique sua conexão com a internet!' )
        end;
        Application.Terminate;
      end;
  end;
{$endif}

{$ifdef SISTEMA}
Function TDBInicio.GeraArquivoIni : boolean;
  {$IFDEF ADJUTOR}var
    tcr : TFrmConfiguraBanco;
  {$ENDIF}
  begin
  {$IFDEF ADJUTOR}
    tcr := TFrmConfiguraBanco.Create( Application );
    try
      tcr.ShowModal;
      Result := tcr.ModalResult = mrOK;
    finally
      FreeAndNil( tcr );
    end;
  {$ENDIF}
  end;
 {$endif}

Function TDBInicio.GetParametroSistema( const NomeParam : string ) : String;
  begin
    Result := buscaumdadosqlasstring( 'Select ' + NomeParam +
      ' from PRMT0001 where EMP_CODIGO=' + QuotedStr( Empresa.EMP_CODIGO ) );
  end;

Function TDBInicio.GetParametroUsuario( const NomeParam : string ) : String;
  var
    wresult : string;
  begin
    if Usuario.USERNAME = Usuario.USUARIOPADRAO
    then
      // if NomeParam  in [ 'USP_STAT_PRECO_BRUTO_P','USP_STAT_PRECO_LIQUIDO_P', 'USP_REEMISSAO_PEDIDO_P']
      if NomeParam = 'REP_CODIGO'
      then
        Result := '000'
      else
        Result := 'S'
    else
    begin

      // busca se existe usuário
      wresult := buscaumdadosqlasstring( 'select ' + NomeParam +
        ' from USUARIO_TUDO_VIEW where USP_COD_USUARIO = ' +
        qstr( DBInicio.Usuario.CODIGO ) );
      if wresult = 'S'
      then
      begin
        cdsAux.Close;
        qAux.Sql.text := 'select ' + NomeParam +
          ' from USUARIO_TUDO_VIEW where USP_COD_USUARIO = ' +
          qstr( DBInicio.Usuario.CODIGO );
        qAux.Open;
        Result := qAux.FieldByName( NomeParam ).AsString;
        // pega valor do campo - S ou N
      end
      else
        Result := 'N';

    end;
  end;

{ ele retorna true se for exclusivo e false como compartilhado }
procedure TDBInicio.EdUsuarioChange( Sender : TObject );
  begin
    inherited;
    EdUsuario.text := RetiraAcentos( EdUsuario.text );
    EdUsuario.Perform( WM_KeyDown, VK_END, 0 );
  end;

Function TDBInicio.Exclusivo( pNomeCompartilhamento : string ) : boolean;
  var
    compartilhado : boolean;
  begin
    Result := False;
    compartilhado := False;
    pNomeCompartilhamento := UpperCase( pNomeCompartilhamento );
    if pNomeCompartilhamento = 'PRODUTOS'
    then
      compartilhado := Sharedb.Produtos
    else
    if pNomeCompartilhamento = 'PRODUTO_PRECO_EMPRESA' then
      compartilhado := Sharedb.ProdutoPrecoEmpresa
    else
    if pNomeCompartilhamento = 'ENDERECO_ESTOQUE' then
      compartilhado := Sharedb.EnderecoEstoque
    else
    if pNomeCompartilhamento = 'CLIENTES'
    then
      compartilhado := Sharedb.Clientes
    else if pNomeCompartilhamento = 'BANCOS'
    then
      compartilhado := Sharedb.Bancos
    else if pNomeCompartilhamento = 'TRANSPORTADORAS'
    then
      compartilhado := Sharedb.Transportadora
    else if pNomeCompartilhamento = 'REPRESENTANTES'
    then
      compartilhado := Sharedb.Representantes
    else if pNomeCompartilhamento = 'FORNECEDORES'
    then
      compartilhado := Sharedb.Fornecedores
    else if pNomeCompartilhamento = 'RECEBER'
    then
      compartilhado := Sharedb.Receber
    else if pNomeCompartilhamento = 'PAGAR'
    then
      compartilhado := Sharedb.Pagar
    else if pNomeCompartilhamento = 'PEDIDOS'
    then
      compartilhado := Sharedb.Pedidos
    else if pNomeCompartilhamento = 'COTACOES'
    then
      compartilhado := Sharedb.Cotacoes
    else if pNomeCompartilhamento = 'ORDENSCOMPRA'
    then
      compartilhado := Sharedb.OrdensCompra
    else if pNomeCompartilhamento = 'FICHATECNICA'
    then
      compartilhado := Sharedb.FichaTecnica
    else if pNomeCompartilhamento = 'ORDEMPRODUCAO'
    then
      compartilhado := Sharedb.OrdemProducao
    else if pNomeCompartilhamento = 'PARAMETROS'
    then
      compartilhado := Sharedb.Parametros
    else if pNomeCompartilhamento = 'TABELAS'
    then
      compartilhado := Sharedb.Tabelas
    else if pNomeCompartilhamento = 'PRAZOS'
    then
      compartilhado := Sharedb.Prazos
    else if pNomeCompartilhamento = 'OPERACAOFISCAL'
    then
      compartilhado := Sharedb.OperacaoFiscal
    else if pNomeCompartilhamento = 'PLANODECONTAS'
    then
      compartilhado := Sharedb.PlanoContas
    else if pNomeCompartilhamento = 'FISCAL'
    then
      compartilhado := Sharedb.Fiscal
    else if pNomeCompartilhamento = 'ESTOQUES'
    then
      compartilhado := Sharedb.Estoques
    ELSE if pNomeCompartilhamento = 'ICMS'
    then
      compartilhado := Sharedb.ICMS;

    Result := NOT compartilhado;

  end;

function TDBInicio.ExclusivoSql( const pNomeCompartilhamento,
  Empresa : string ) : String;
  begin
    if Exclusivo( pNomeCompartilhamento )
    then
      Result := 'emp_codigo=' + qstr( Empresa )
    Else
      Result := '';

  end;

Function TDBInicio.ExclusivoSql( CONST pNomeCompartilhamento : string )
  : String;
  begin
    if Exclusivo( pNomeCompartilhamento )
    then
      Result := 'emp_codigo=' + qstr( Empresa.EMP_CODIGO )
    Else
      Result := '';
  end;

procedure TDBInicio.GetBancoConexao( const Value : TConexaoBase );
  begin
    vlBancoConexao := Value;
  end;

function TDBInicio.GetEmpCod : string;
  begin
    Result := vlEmpresa.EMP_CODIGO;
  end;

Function TDBInicio.GetNextSequence( const pNomeGenerator : string ) : Integer;
  begin
    Result := BuscaUmDadoSqlAsInteger( 'SELECT GEN_ID(' + pNomeGenerator +
      ', 1) FROM RDB$DATABASE' );
  end;

procedure TDBInicio.LeLogoEmpresa( const pCod : string );
  var
    qry : TSQLQuery;
  begin
    qry := TSQLQuery.Create( self );
    try
      qry.SQLConnection := MainDB;
      qry.Sql.text := 'select EMP_LOGO from EMP0000 where EMP_CODIGO =' +
        qstr( pCod );
      qry.Open;
      Le_Imagem_JPEG_toBMP( ( qry.fields[ 0 ] as TBlobField ), vlEmpresa.Logo );
      // image1.picture.bitmap.assign ( vlEmpresa.logo );
    Finally
      qry.Close;
      FreeAndNil( qry );
    end;
  end;

{$ifdef SISTEMA}
procedure TDBInicio.CarregaEmpresaSelecionada( const pCod : string );
  var
    lcod : string;
  begin
    CarregarCompartilhamentos;
    lcod := strzero( pCod, 3 );
    LeLogoEmpresa( lcod );
    vlEmpresa.EMP_CODIGO := lcod;
    OpenParametrosSistema;
    cdsAux.Close;
    qAux.Sql.text := 'select * from EMP0000 where EMP_CODIGO =' + qstr( lcod );
    qAux.Open;

    vlEmpresa.CNPJ_CNPF := MascaraCNPJ_CPF( qAux.FieldByName( 'EMP_CGC' )
      .AsString );
    vlEmpresa.INSC_EST := qAux.FieldByName( 'EMP_INSC' ).AsString;
    vlEmpresa.RAZAO := qAux.FieldByName( 'EMP_RAZAO' ).AsString;
    vlEmpresa.FANTASIA := qAux.FieldByName( 'EMP_FANTASIA' ).AsString;
    vlEmpresa.ENDERECO := qAux.FieldByName( 'EMP_ENDERE' ).AsString;
    vlEmpresa.BAIRRO := qAux.FieldByName( 'EMP_BAIRRO' ).AsString;
    vlEmpresa.CIDADE := qAux.FieldByName( 'EMP_CIDADE' ).AsString;
    if qAux.FieldByName( 'CID_CODIGO' ).AsInteger > 0
    then
      vlEmpresa.CID_IBGE := BuscaUmDadoSqlAsInteger
        ( 'SELECT CID_COD_IBGE  FROM CID0000 WHERE CID_CODIGO = ' +
        inttostr( qAux.FieldByName( 'CID_CODIGO' ).AsInteger ) );
    vlEmpresa.Cid_Codigo := qAux.FieldByName( 'CID_CODIGO' ).AsInteger;

    vlEmpresa.UF := qAux.FieldByName( 'EMP_UF' ).AsString;
    vlEmpresa.CEP := copy( qAux.FieldByName( 'EMP_CEP' ).AsString, 1, 5 ) + '-'
      + copy( qAux.FieldByName( 'EMP_CEP' ).AsString, 6, 3 );
    vlEmpresa.FONE := MascaraFone( qAux.FieldByName( 'EMP_FONE' ).AsString );
    vlEmpresa.FAX := MascaraFone( qAux.FieldByName( 'EMP_FAX' ).AsString );
    vlEmpresa.HOME_PAGE := qAux.FieldByName( 'EMP_HOME' ).AsString;
    vlEmpresa.EMAIL := qAux.FieldByName( 'EMP_EMAIL' ).AsString;
    vlEmpresa.EMAILVENDA := qAux.FieldByName( 'EMP_EMAILVENDAS' ).AsString;

    vlEmpresa.EMAILCOMPRA := qAux.FieldByName( 'EMP_EMAILCOMPRAS' ).AsString;
    vlEmpresa.NOMECOMPRADOR := qAux.FieldByName( 'EMP_NOMECOMPRADOR' ).AsString;
    if qAux.FieldByName( 'EMP_PASSWORD_COMPRAS' ).AsString <> ''
    then
      vlEmpresa.EmailPassworldCompras :=
        DesCriptografa( qAux.FieldByName( 'EMP_PASSWORD_COMPRAS' ).AsString );

    vlEmpresa.END_ENTREGA := qAux.FieldByName( 'EMP_ENDENTR' ).AsString;
    vlEmpresa.CID_ENTREGA := qAux.FieldByName( 'EMP_CIDENTR' ).AsString;
    vlEmpresa.UF_ENTREGA := qAux.FieldByName( 'EMP_UFENTR' ).AsString;
    vlEmpresa.CEP_ENTREGA := copy( qAux.FieldByName( 'EMP_CEPENTR' ).AsString,
      1, 5 ) + '-' + copy( qAux.FieldByName( 'EMP_CEPENTR' ).AsString, 6, 3 );
    vlEmpresa.OPT_SIMPLES := qAux.FieldByName( 'EMP_OPTANTE_SIMPLES' ).AsString;
    vlEmpresa.ALIQ_SIMPLES := qAux.FieldByName( 'EMP_PERCENT_SIMPLES' ).AsFloat;
    vlEmpresa.ALIQ_CREDITO := qAux.FieldByName( 'EMP_DIREITO_CREDITO' ).AsFloat;
    vlEmpresa.AmbienteNfe := qAux.FieldByName( 'EMP_AMBIENTE_NFE' ).AsInteger;
    // = '1->Producao,0->Homologacao;
    vlEmpresa.CHAVE := DesCriptografa( qAux.FieldByName( 'EMP_CHAVE' )
      .AsString );
    vlEmpresa.INS_MUNICIPAL := qAux.FieldByName( 'EMP_INSC_MUNICIPAL' )
      .AsString;
    vlEmpresa.CaminhoLogo := qAux.FieldByName( 'EMP_CAMINHO_LOGO' ).AsString;

    vlEmpresa.REGIME_SERVICO :=
      qAux.FieldByName( 'EMP_REGIME_SERVICO' ).AsString;
    vlEmpresa.iCSOSN := qAux.FieldByName( 'EMP_CSOSN' ).AsInteger;
    vlEmpresa.iCSOSN_ST := qAux.FieldByName( 'EMP_CSOSN_ST' ).AsInteger;
    vlEmpresa.EMP_PIS_ALIQ := qAux.FieldByName( 'EMP_PIS_ALIQ' ).AsFloat;
    vlEmpresa.EMP_COFINS_ALIQ := qAux.FieldByName( 'EMP_COFINS_ALIQ' ).AsFloat;

    try
      vlEmpresa.DATA_ACESSO :=
        StrToDate( DesCriptografa( qAux.FieldByName( 'EMP_DATA_ACESSO' )
        .AsString ) );
    except
      Validacao;
      Close;
    end;
    vlEmpresa.SerieNF := qAux.FieldByName( 'EMP_SERIE_NFE' ).AsString;

    vlEmpresa.EmailContador := qAux.FieldByName( 'EMP_EMAIL_CONTADOR' )
      .AsString;
    vlEmpresa.EmailInterno := qAux.FieldByName( 'EMP_EMAIL_INTERNO' ).AsString;
    vlEmpresa.emp_crt := qAux.FieldByName( 'EMP_CRT' ).AsString;

    vlEmpresa.ModoSSL := qAux.FieldByName( 'EMP_MODO_SSL' ).AsString;
    vlEmpresa.TipoSeqNfe := qAux.FieldByName( 'EMP_GENERATION_NFE' ).AsString;
    vlEmpresa.EmailHost := qAux.FieldByName( 'EMP_HOST' ).AsString;
    vlEmpresa.EmailPorta := qAux.FieldByName( 'EMP_PORTA' ).AsString;
    vlEmpresa.EmailUserName := qAux.FieldByName( 'EMP_USERNAME' ).AsString;
    vlEmpresa.EmailPassworld := qAux.FieldByName( 'EMP_PASSWORD' ).AsString;
    if qAux.FieldByName( 'EMP_USERNAME_FIN' ).AsString <> ''
    then
      vlEmpresa.EmailUserNameFinanceiro :=
        DesCriptografa( qAux.FieldByName( 'EMP_USERNAME_FIN' ).AsString );
    if qAux.FieldByName( 'EMP_PASSWORD_FIN' ).AsString <> ''
    then
      vlEmpresa.EmailPassworldFinanceiro :=
        DesCriptografa( qAux.FieldByName( 'EMP_PASSWORD_FIN' ).AsString );

    vlEmpresa.MensagemNFe := qAux.FieldByName( 'EMP_MENSAGEM_NFE' ).AsString;
    vlEmpresa.EmailAutenticacao := qAux.FieldByName( 'EMP_REQUER_AUTENTICACAO' )
      .AsString = 'S';
    vlEmpresa.EmailRequerConexaoSSL :=
      qAux.FieldByName( 'EMP_REQUER_CONEXAO_SSL' ).AsString = 'S';
    vlEmpresa.EmailRequerConexaoTLS :=
      qAux.FieldByName( 'EMP_REQUER_CONEXAO_tLs' ).AsString = 'S';
    vlEmpresa.EmailModoSSL := qAux.FieldByName( 'EMP_MODO_SSL' ).AsString;
    vlEmpresa.EmailVersaoSSL := qAux.FieldByName( 'EMP_VERSAO_SSL' ).AsInteger;
    vlEmpresa.bEMP_NFE_FAT := qAux.FieldByName( 'EMP_NFE_FAT' ).AsString = 'S';
    vlEmpresa.PRD_SPEDVALIDA :=
      ( qAux.FieldByName( 'PRD_SPEDVALIDA' ).AsString = 'S' );
    if vlNFSe.ATIVA_NFSE
    then
      CarregaParametrosNFSe;

    CarregarParametrosNFe;
    CarregarParametrosNFCe;

  end;
{$endif}

procedure TDBInicio.CarregaParametrosNFSe;
  begin
    vlNFSe.AmbienteNFSE := qAux.FieldByName( 'EMP_AMBIENTE_NFSE' ).AsInteger;
    // = '1->Producao,0->Homologacao;
    vlNFSe.NaturezaOpe := qAux.FieldByName( 'EMP_naturezaoperacao' ).AsInteger;
    // vlNFSe.ALIQ_ISS     := qAux.FieldByname('EMP_PERCENT_ISS').AsFloat;
    // vlNFSe.ALIQ_IR      := qAux.FieldByname('EMP_PERCENT_IR').AsFloat;
    // vlNFSe.ALIQ_PIS     := qAux.FieldByname('EMP_PERCENT_PIS').AsFloat;
    // vlNFSe.ALIQ_COFINS  := qAux.FieldByname('EMP_PERCENT_COFINS').AsFloat;
    // vlNFSe.ALIQ_CSLL     := qAux.FieldByname('EMP_PERCENT_CSLL').AsFloat;
    // vlNFSe.Aliq_INSS  := qAux.FieldByname('EMP_PERCENT_INSS').AsFloat;
    vlNFSe.Serie := qAux.FieldByName( 'EMP_SERIE_NFSE' ).AsString;
    vlNFSe.Emp_TipoCertificado :=
      qAux.FieldByName( 'EMP_TIPO_CERTIFICADO_NFSE' ).AsInteger;

  end;

procedure TDBInicio.CarregarCompartilhamentos;
  begin
    cdsAux.Close;
    qAux.Sql.text :=
      'SELECT *  FROM SHAREDB ';
    qAux.Open;
    vlSharedb.Produtos := qAux.FieldByName( 'PRODUTOS' ).AsString = 'C';
    vlSharedb.ProdutoPrecoEmpresa := qAux.FieldByName( 'PRODUTO_PRECO_EMPRESA' ).AsString = 'C';
    vlSharedb.EnderecoEstoque := qAux.FieldByName( 'ENDERECO_ESTOQUE' ).AsString = 'C';
    vlSharedb.Clientes := qAux.FieldByName( 'CLIENTES' ).AsString = 'C';
    vlSharedb.Bancos := qAux.FieldByName( 'BANCOS' ).AsString = 'C';
    vlSharedb.Transportadora := qAux.FieldByName( 'TRANSPORTADORAS' )
      .AsString = 'C';
    vlSharedb.Representantes := qAux.FieldByName( 'REPRESENTANTES' )
      .AsString = 'C';
    vlSharedb.Fornecedores := qAux.FieldByName( 'FORNECEDORES' ).AsString = 'C';
    vlSharedb.Receber := qAux.FieldByName( 'RECEBER' ).AsString = 'C';
    vlSharedb.Pagar := qAux.FieldByName( 'PAGAR' ).AsString = 'C';
    vlSharedb.Pedidos := qAux.FieldByName( 'PEDIDOS' ).AsString = 'C';
    vlSharedb.Cotacoes := qAux.FieldByName( 'COTACOES' ).AsString = 'C';
    vlSharedb.OrdensCompra := qAux.FieldByName( 'ORDENSCOMPRA' ).AsString = 'C';
    vlSharedb.FichaTecnica := qAux.FieldByName( 'FICHATECNICA' ).AsString = 'C';
    vlSharedb.OrdemProducao := qAux.FieldByName( 'ORDEMPRODUCAO' )
      .AsString = 'C';
    vlSharedb.Parametros := qAux.FieldByName( 'PARAMETROS' ).AsString = 'C';
    vlSharedb.Tabelas := qAux.FieldByName( 'TABELAS' ).AsString = 'C';
    vlSharedb.Prazos := qAux.FieldByName( 'PRAZOS' ).AsString = 'C';
    vlSharedb.OperacaoFiscal := qAux.FieldByName( 'OPERACAOFISCAL' )
      .AsString = 'C';
    vlSharedb.PlanoContas := qAux.FieldByName( 'PLANODECONTAS' ).AsString = 'C';
    vlSharedb.Fiscal := qAux.FieldByName( 'FISCAL' ).AsString = 'C';
    vlSharedb.Estoques := qAux.FieldByName( 'ESTOQUES' ).AsString = 'C';
    vlSharedb.ICMS := qAux.FieldByName( 'ICMS' ).AsString = 'C';

  end;

procedure TDBInicio.CarregarParametrosNFCe;
  begin
    vlNFCe.CSC := qAux.FieldByName( 'EMP_CSC' ).AsString;
    vlNFCe.IDToken := qAux.FieldByName( 'EMP_idToken' ).AsString;
  end;

procedure TDBInicio.CarregarParametrosNFe;
  begin

    vlNfe.ComplementoProduto := vlEmpresa.wPMT_COMP_ITEM_PEDIDO_IT_NF;
    vlNfe.ModeloDanfe := vlEmpresa.fPMT_FORM_DANFE;
    vlNfe.NumeracaoUnica := vlEmpresa.fPMT_USAR_SEQUENCIA_NFE_UNICA;

    vlNfe.CertificadoDigital := 'Nenhum certificado digital selecionado!';
    vlNfe.CertificadoSelecionado := False;
    vlNfe.Justificativa := '';
    if ( qAux.FieldByName( 'EMP_GENERATION_NFE' ).AsString <> 'S' )
    then
      vlNfe.TipoSequencia := tpGenerator
    else
      vlNfe.TipoSequencia := tpFatura;
    vlNfe.EmailRepresentanteNFE :=
      ( qAux.FieldByName( 'EMP_NFE_REP' ).AsString = 'S' );
    vlNfe.EmailHost := vlEmpresa.EmailHost;
    vlNfe.EmailPorta := vlEmpresa.EmailPorta;
    vlNfe.EmailUserName := vlEmpresa.EmailUserName;
    vlNfe.EmailPassworld := vlEmpresa.EmailPassworld;
    vlNfe.EmailCabecalho := vlEmpresa.MensagemNFe;
    vlNfe.EmailAutenticacao := vlEmpresa.EmailAutenticacao;
    vlNfe.CaminhoLogotipo := vlEmpresa.CaminhoLogo;
    vlNfe.TipoDanfe := iif( qAux.FieldByName( 'EMP_TIPO_DANFE' ).AsString = 'P',
      tpPaisagem, tpRetrato );
    vlNfe.Contingencia := qAux.FieldByName
      ( 'EMP_SISTEMA_CONTINGENCIA_NFE' ).AsString;
    vlNfe.sincrono := qAux.FieldByName( 'emp_sincrono' ).AsString = 'S';
    // vlNfe.ModoOperacao                := IIF(vlEmpresa.Contingencia = 'S',tpContingencia,tpNormalEstadual);
    vlNfe.AmbienteWebService := iif( vlEmpresa.AmbienteNfe = 1, tpProducao,
      tpTeste );
    vlNfe.RequerConexaoSSL := vlEmpresa.EmailRequerConexaoSSL;
    vlNfe.Porta := StrToIntDef( vlEmpresa.EmailPorta, 586 );
    vlNfe.VersaoSSL := vlEmpresa.EmailVersaoSSL;
    vlNfe.Emp_TipoCertificado := qAux.FieldByName( 'EMP_TIPOCERTIFICADO' )
      .AsInteger;

    if ( vlEmpresa.ModoSSL = 'B' )
    then
      vlNfe.ModoSSL := tsslmBoth
    else if ( vlEmpresa.ModoSSL = 'C' )
    then
      vlNfe.ModoSSL := tsslmClient
    else if ( vlEmpresa.ModoSSL = 'S' )
    then
      vlNfe.ModoSSL := tsslmServer
    else if ( vlEmpresa.ModoSSL = 'U' )
    then
      vlNfe.ModoSSL := tsslmUnassigned;

    if ( vlEmpresa.fPMT_VALOR_APROX_TRIB = 'T' )
    then
      vlNfe.ValorAproximadoImpostos := vaiTodos
    else
      vlNfe.ValorAproximadoImpostos := vaiApenasConsumidorFinal;
    vlNfe.Usar_Logo := qAux.FieldByName( 'EMP_LOGONFE_PROPRIO' ).AsString = 'S';
    Le_Imagem_JPEG_toBMP( ( qAux.FieldByName( 'EMP_LOGO_NFE' ) as TBlobField ),
      vlNfe.Logo );

  end;

procedure TDBInicio.cbConfigCloseUp( Sender : TObject );
  begin
    inherited;

    ReadIniFile( cbConfig.Items[ cbConfig.ItemIndex ] );
    GetBancoConexao( BancoConexao );
    IniciaDBFireDAC( FDACConn );
    IniciaDB( MainDB );
    {$ifdef SISTEMA}CarregaComboEmpresas;{$endif}
  end;

procedure TDBInicio.CbEmpresaClick( Sender : TObject );
  begin
    inherited;
    CEmpresa.text := buscaumdadosqlasstring
      ( 'select emp_codigo from emp0000 where emp_razao=' +
      qstr( CbEmpresa.text ) );
  end;

procedure TDBInicio.CEmpresaExit( Sender : TObject );
  begin
    inherited;
    if BuscaUmDadoSqlAsInteger
      ( 'select CAST(count(*) AS INTEGER)  from emp0000 where emp_codigo=' +
      qstr( strzero( CEmpresa.text, 3 ) ) ) > 0
    then
      CbEmpresa.text := buscaumdadosqlasstring
        ( 'select emp_razao from emp0000 where emp_codigo=' +
        qstr( strzero( CEmpresa.text, 3 ) ) )
    Else
      CbEmpresaClick( nil );
  end;

{$ifdef SISTEMA}
procedure TDBInicio.Validacao;
{$IFDEF ADJUTOR}
  var
    bChaveValidador : boolean;
    iQtdeDias, wAtivas : Integer;
    tcr : TFrmLicenca;
    lCnpj : String;
    lastDB : TSQLConnection;
{$ENDIF}
  begin
{$IFDEF ADJUTOR}
    // if not DelphiAberto then
    // validaOnline( dbInicio.Empresa.CNPJ_CNPF, False );
    JvThread1.Execute( self );
    bChaveValidador := False;

    if ( date < DBInicio.Empresa.DATA_ACESSO )
    then
    begin
      iQtdeDias := 0;
      bChaveValidador := True;
    end;
    if ( not bChaveValidador )
    then
    begin
      if trim( DBInicio.Empresa.CHAVE ) = ''
      then
        iQtdeDias := 0
      ELSE if ( Validade( DBInicio.Empresa.CHAVE ) < date )
      then
        iQtdeDias := 0
      else
        iQtdeDias := DaysBetween( date, Validade( DBInicio.Empresa.CHAVE ) );
    end;
    lCnpj := '';
    if trim( DBInicio.Empresa.CHAVE ) <> ''
    then
      lCnpj := MascaraCNPJ_CPF( Cnpj( DBInicio.Empresa.CHAVE ) );

    if not DelphiAberto
    then
      if ( DBInicio.Empresa.CNPJ_CNPF <> lCnpj )
      then
        bChaveValidador := True;

    if ( iQtdeDias <= 5 ) and ( not bChaveValidador )
    then
    begin
      if ( iQtdeDias = 0 )
      then
        bChaveValidador := True
      else if ( Uteis.confirmacao( pchar( 'Seu sistema vai expirar em ' +
        inttostr( iQtdeDias ) + ' dia(s)' + #13 +
        'Gostaria de validar agora ?' ) ) = mrYes )
      then
      begin
        ExecSql( 'UPDATE EMP0000 SET EMP0000.EMP_CHAVE = '''' WHERE EMP0000.EMP_CGC = '
          + ExtrairNumeros( DBInicio.Empresa.CNPJ_CNPF ) );
        bChaveValidador := True;
      end
      else
      begin
        if ( iQtdeDias <= 1 ) or
          ( BuscaUmDadoSqlasDateTime
          ( ' SELECT CLI_SV_VALIDADE_ATUAL FROM CLI_SV00' ) < Now )
        then
          ExecSql( 'UPDATE EMP0000 SET EMP0000.EMP_CHAVE = '''' WHERE EMP0000.EMP_CGC = '
            + ExtrairNumeros( DBInicio.Empresa.CNPJ_CNPF ) );

      end;
    end;

    wAtivas := BuscaUmDadoSqlAsInteger
      ( 'Select cast(count(*) as integer) as conta from   clientes_ativos_view where upper( MON$ATTACHMENT_NAME ) = upper( '
      + qstr( BancoConexao.PathRemoto ) + ' )' + ' AND MON$REMOTE_ADDRESS <> ' +
      QuotedStr( iif( BancoConexao.HostName = '127.0.0.1', '127.0.0.1',
      IdIPWatch1.LocalIP ) ) );

    if ( wAtivas >= Conexoes( DBInicio.Empresa.CHAVE ) ) and
      ( not bChaveValidador )
    then
    begin
      if ( Uteis.confirmacao
        ( pchar( 'Seu número de licenças contratadas foi excedido!' + #13 +
        'Contratado: ' + inttostr( Conexoes( DBInicio.Empresa.CHAVE ) ) + #13 +
        'Ativas: ' + inttostr( wAtivas ) + #13 + #13 +
        'Gostaria de validar a licença agora?' ) ) = mrYes )
      then
        bChaveValidador := True
      else
        Application.Terminate;
    end;

    if ( bChaveValidador ) { OR TRUE }
    then
    begin
      tcr := TFrmLicenca.Create( Application );
      try

        try
          tcr.iNrDias := iQtdeDias;
          tcr.iNrLicencas := Conexoes( DBInicio.Empresa.CHAVE );
        except
          tcr.iNrDias := 0;
          tcr.iNrLicencas := 0;
        end;
        tcr.ShowModal;
      finally
        FreeAndNil( tcr );
      end;
    end
    else
      ExecSql( 'UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = ' +
        RetornaNull( Criptografa( DateToStr( date ) ) ) );
{$ENDIF}
  end;
{$endif}

procedure TDBInicio.ValidaOnline(
  const pCnpj        : String;
  pShowException     : boolean;
  chaveCriptografica : string;
  ValidadeContrato   : TDate;
  QuantidadeUsuarios : Integer );
  var
    sChaveNova, sData : String;
    idHttp : TIdHTTP;
    IdSSL : TIdSSLIOHandlerSocketOpenSSL;
    dados : TJSonValue;
    Cnpj, retornoJSON, url : string;
  begin

    idHttp := TIdHTTP.Create;
    IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( idHttp );
    IdSSL.SSLOptions.SSLVersions := [ sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2 ];
    idHttp.IOHandler := IdSSL;

    try
      // if (vlBancoConexao.HostName = '192.168.0.251') then
      // url := 'https://api.teste.compacta9.com.br/api/VerificarContrato/91' + // teste (retirar quando entrar em produção)
      // '?cpf_cnpj=' + pCnpj
      // else
      url := 'https://api.compacta9.com.br/api/VerificarContrato/91' +
      // produção
        '?cpf_cnpj=' + pCnpj;

      retornoJSON := idHttp.get( url );
      dados := TJSonObject.ParseJSONValue( retornoJSON );
      sChaveNova := dados.GetValue< string >( 'serial' );

      if ( trim( sChaveNova ) <> '' )
      then
      begin
        sData := Criptografa( DateToStr( date ) );
        sChaveNova := Criptografa( sChaveNova );
        ExecSql( 'UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = ' +
          RetornaNull( sData ) + ', EMP0000.EMP_CHAVE = ' +
          RetornaNull( sChaveNova ) + ' WHERE EMP0000.EMP_CGC = ' +
          ExtrairNumeros( pCnpj ) );
      end;

    except
      on E : Exception do
      begin
        Showmessage( E.Message );
      end;
    end;

  end;

end.

