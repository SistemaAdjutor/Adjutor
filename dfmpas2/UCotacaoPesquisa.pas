unit UCotacaoPesquisa;

interface

uses
  ShellApi,
  cxGridDBDataDefinitions, System.Variants, SgDbSeachComboUnit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls, cxCheckBox, cxEditRepositoryItems, Vcl.Menus, frxClass, frxExportPDF, frxDBSet, Vcl.Buttons, Data.FMTBcd,
  Data.SqlExpr, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog,
  frxExportBaseDialog;

type
  TfrmCotacaoPesquisa = class(TfrmBaseDBFDAC)
    pPesquisa: TPanel;
    qCotacao: TFDQuery;
    qCotacaoItem: TFDQuery;
    qCotacaoFornecedor: TFDQuery;
    dsCotacao: TDataSource;
    dsCotacaoItem: TDataSource;
    dsCotacaoFornecedor: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btIncluir: TButton;
    cxGrid1DBTableView1SET_DESCRICAO: TcxGridDBColumn;
    qCotacaoItemCIT_CODIGO: TIntegerField;
    qCotacaoItemCOT_CODIGO: TIntegerField;
    qCotacaoItemPRD_REFER: TStringField;
    qCotacaoItemCIT_QUANTIDADE_SOLICITADA: TBCDField;
    qCotacaoItemCIT_COTACAO_APROVADA: TStringField;
    qCotacaoItemPRD_DESCRI: TStringField;
    qCotacaoFornecedorCOF_CODIGO: TIntegerField;
    qCotacaoFornecedorCIT_CODIGO: TIntegerField;
    qCotacaoFornecedorFOR_CODIGO: TStringField;
    qCotacaoFornecedorCOF_QUANTIDADE_COTADA: TBCDField;
    qCotacaoFornecedorCOF_PRECO_COTACAO: TBCDField;
    qCotacaoFornecedorCOF_DATA_PRAZO_ENTREGA: TDateField;
    qCotacaoFornecedorCOF_DATA_AUTORIZACAO: TDateField;
    qCotacaoFornecedorCOF_TIPO_FRETE: TStringField;
    qCotacaoFornecedorCOF_APROVADA: TStringField;
    qCotacaoFornecedorFOR_RAZAO: TStringField;
    cxGrid1DBTableView1COT_SOLICITANTE: TcxGridDBColumn;
    qCotacaoItemPRD_DESCRICAO: TStringField;
    qCotacaoItemCIT_QTDE_MIN: TBCDField;
    qCotacaoItemCIT_QTDE_MAX: TBCDField;
    qCotacaoItemPRD_UNISIGLA: TStringField;
    qCotacaoItemCIT_DATA_NECESSIDADE: TDateField;
    qCotacaoItemMARCADO: TIntegerField;
    btAutoriza: TButton;
    qCotacaoItemCIT_DATA_AUTORIZACAO: TDateField;
    qCotacaoItemCIT_RESPONSAVEL: TStringField;
    qCotacaoItemCIT_OBS_AUTORIZACAO: TStringField;
    qCotacaoItemCIT_STATUS: TIntegerField;
    pmCotacaoItem: TPopupMenu;
    email: TMenuItem;
    InserirItemnoPedidodeCompra: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    btnFechar: TSpeedButton;
    frxDBCotacao: TfrxDBDataset;
    frxDBItem: TfrxDBDataset;
    frxDBFornecedor: TfrxDBDataset;
    qCotacaoFornecedorFOR_FONE: TStringField;
    qCotacaoFornecedorFOR_EMAIL: TStringField;
    pmCotacaoFornecedor: TPopupMenu;
    qCotacaoFornecedorCOF_FORNECEDOR_NOME: TStringField;
    edCofFornecedorMail: TStringField;
    edCofFornecedorFone: TStringField;
    ExcluirCotao1: TMenuItem;
    frxMail: TfrxReport;
    qCotacaoFornecedorCIT_CODIGO_1: TIntegerField;
    qCotacaoFornecedorCOT_CODIGO: TIntegerField;
    qCotacaoFornecedorPRD_REFER: TStringField;
    qCotacaoFornecedorCIT_QUANTIDADE_SOLICITADA: TBCDField;
    qCotacaoFornecedorPRD_DESCRICAO: TStringField;
    qCotacaoFornecedorCIT_QTDE_MIN: TBCDField;
    qCotacaoFornecedorCIT_QTDE_MAX: TBCDField;
    qCotacaoFornecedorPRD_UNISIGLA: TStringField;
    qCotacaoFornecedorCIT_APROVADA: TStringField;
    qCotacaoFornecedorCIT_DATA_NECESSIDADE: TDateField;
    qCotacaoFornecedorCIT_STATUS: TIntegerField;
    qCotacaoFornecedorCIT_DATA_AUTORIZACAO: TDateField;
    qCotacaoFornecedorCIT_RESPONSAVEL: TStringField;
    qCotacaoFornecedorCIT_OBS_AUTORIZACAO: TStringField;
    GroupBox1: TGroupBox;
    pAberta: TPanel;
    Image1: TImage;
    lbAberta: TLabel;
    lbAbertaQt: TLabel;
    pRejeitada: TPanel;
    Image2: TImage;
    lbRejeitada: TLabel;
    lbRejeitadaQt: TLabel;
    pAutCotacao: TPanel;
    Image3: TImage;
    lbAutCotacao: TLabel;
    lbAutCotacaoQt: TLabel;
    pCotAprovada: TPanel;
    Image4: TImage;
    lbFinalizada: TLabel;
    lbFinalizadaQt: TLabel;
    pAutCompra: TPanel;
    Image5: TImage;
    lbAutcompra: TLabel;
    lbAutcompraQt: TLabel;
    pConcluida: TPanel;
    Image6: TImage;
    lbConcluida: TLabel;
    lbConcluidaQt: TLabel;
    pCancelada: TPanel;
    Image7: TImage;
    lbCancelada: TLabel;
    lbCanceladaQt: TLabel;
    btnLimpar: TSpeedButton;
    qCotacaoItemCOT_DATA_SOL_COTACAO: TDateField;
    frxListaSolicitacao: TfrxReport;
    cxGrid1DBTableView1COT_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_QUANTIDADE_SOLICITADA: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_QTDE_MIN: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_QTDE_MAX: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UNISIGLA: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_DATA_NECESSIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1MARCADO: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_CODIGO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_QUANTIDADE_COTADA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_PRECO_COTACAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PCL_NOME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_DATA_PRAZO_ENTREGA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_DATA_AUTORIZACAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_TIPO_FRETE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_APROVADA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FOR_CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FOR_FONE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FOR_EMAIL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_FORNECEDOR_NOME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_FORNECEDOR_EMAIL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COF_FORNECEDOR_FONE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_QUANTIDADE_SOLICITADA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_DATA_NECESSIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_STATUS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_DATA_AUTORIZACAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_RESPONSAVEL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_OBS_AUTORIZACAO: TcxGridDBBandedColumn;
    Inserirfornecedornositens1: TMenuItem;
    qFornecedor: TSQLQuery;
    buscaFornecedor: TSgDbSearchCombo;
    frxCotacao2: TfrxReport;
    qCotacaoFrx: TFDQuery;
    qCotacaoMARCADO: TIntegerField;
    qCotacaoPRD_DESCRICAO: TStringField;
    qCotacaoCOT_CODIGO: TIntegerField;
    qCotacaoCOT_NUMERO: TStringField;
    qCotacaoCOT_SOLICITANTE: TStringField;
    qCotacaoSET_CODIGO: TIntegerField;
    qCotacaoCOT_DATA_SOL_COTACAO: TDateField;
    qCotacaoCOT_DATA_FINALIZACAO: TDateField;
    qCotacaoCOT_APROVADA: TStringField;
    qCotacaoEMP_CODIGO: TStringField;
    qCotacaoCOT_OBSERVACAO: TStringField;
    qCotacaoCIT_CODIGO: TIntegerField;
    qCotacaoCOT_CODIGO_1: TIntegerField;
    qCotacaoPRD_REFER: TStringField;
    qCotacaoCIT_QUANTIDADE_SOLICITADA: TBCDField;
    qCotacaoCIT_QTDE_MIN: TBCDField;
    qCotacaoCIT_QTDE_MAX: TBCDField;
    qCotacaoPRD_UNISIGLA: TStringField;
    qCotacaoCIT_APROVADA: TStringField;
    qCotacaoCIT_DATA_NECESSIDADE: TDateField;
    qCotacaoCIT_STATUS: TIntegerField;
    qCotacaoCIT_DATA_AUTORIZACAO: TDateField;
    qCotacaoCIT_RESPONSAVEL: TStringField;
    qCotacaoCIT_OBS_AUTORIZACAO: TStringField;
    qCotacaoPRD_DESCRICAO_1: TStringField;
    qCotacaoSET_DESCRICAO: TStringField;
    qCotacaoEMP_CODIGO_1: TStringField;
    frxDBCotacao2: TfrxDBDataset;
    qCotacaoFrxFOR_RAZAO: TStringField;
    qCotacaoFrxPRD_DESCRICAO: TStringField;
    qCotacaoFrxCOF_CODIGO: TIntegerField;
    qCotacaoFrxCIT_CODIGO: TIntegerField;
    qCotacaoFrxFOR_CODIGO: TStringField;
    qCotacaoFrxCOF_QUANTIDADE_COTADA: TBCDField;
    qCotacaoFrxCOF_PRECO_COTACAO: TBCDField;
    qCotacaoFrxCOF_DATA_AUTORIZACAO: TDateField;
    qCotacaoFrxCOF_DATA_PRAZO_ENTREGA: TDateField;
    qCotacaoFrxCOF_TIPO_FRETE: TStringField;
    qCotacaoFrxCOF_APROVADA: TStringField;
    qCotacaoFrxCOF_FORNECEDOR_NOME: TStringField;
    qCotacaoFrxCOF_FORNECEDOR_EMAIL: TStringField;
    qCotacaoFrxCOF_FORNECEDOR_FONE: TStringField;
    qCotacaoFrxCIT_CODIGO_1: TIntegerField;
    qCotacaoFrxCOT_CODIGO: TIntegerField;
    qCotacaoFrxPRD_REFER: TStringField;
    qCotacaoFrxCIT_QUANTIDADE_SOLICITADA: TBCDField;
    qCotacaoFrxCIT_QTDE_MIN: TBCDField;
    qCotacaoFrxCIT_QTDE_MAX: TBCDField;
    qCotacaoFrxPRD_UNISIGLA: TStringField;
    qCotacaoFrxCIT_APROVADA: TStringField;
    qCotacaoFrxCIT_DATA_NECESSIDADE: TDateField;
    qCotacaoFrxCIT_STATUS: TIntegerField;
    qCotacaoFrxCIT_DATA_AUTORIZACAO: TDateField;
    qCotacaoFrxCIT_RESPONSAVEL: TStringField;
    qCotacaoFrxCIT_OBS_AUTORIZACAO: TStringField;
    qCotacaoFrxPRD_DESCRICAO_1: TStringField;
    qCotacaoFrxCOT_CODIGO_1: TIntegerField;
    qCotacaoFrxCOT_NUMERO: TStringField;
    qCotacaoFrxCOT_SOLICITANTE: TStringField;
    qCotacaoFrxSET_CODIGO: TIntegerField;
    qCotacaoFrxCOT_DATA_SOL_COTACAO: TDateField;
    qCotacaoFrxCOT_DATA_FINALIZACAO: TDateField;
    qCotacaoFrxCOT_APROVADA: TStringField;
    qCotacaoFrxEMP_CODIGO: TStringField;
    qCotacaoFrxCOT_OBSERVACAO: TStringField;
    qCotacaoFrxFOR_CODIGO_1: TStringField;
    qCotacaoFrxCCT_CODIGO: TStringField;
    qCotacaoFrxFOR_RAZAO_1: TStringField;
    qCotacaoFrxFOR_ENDERE: TStringField;
    qCotacaoFrxFOR_BAIRRO: TStringField;
    qCotacaoFrxFOR_CIDADE: TStringField;
    qCotacaoFrxFOR_UF: TStringField;
    qCotacaoFrxCID_CODIGO: TIntegerField;
    qCotacaoFrxFOR_CEP: TStringField;
    qCotacaoFrxFOR_CONTATO: TStringField;
    qCotacaoFrxFOR_FONE: TStringField;
    qCotacaoFrxFOR_FAX: TStringField;
    qCotacaoFrxFOR_EMAIL: TStringField;
    qCotacaoFrxFOR_FONCONT: TStringField;
    qCotacaoFrxFOR_FAXCONT: TStringField;
    qCotacaoFrxFOR_OBS: TStringField;
    qCotacaoFrxEMP_CODIGO_1: TStringField;
    qCotacaoFrxFOR_CGC: TStringField;
    qCotacaoFrxFOR_INSC: TStringField;
    qCotacaoFrxFOR_HOME: TStringField;
    qCotacaoFrxFOR_EMAILCONT: TStringField;
    qCotacaoFrxFOR_PRAZOVENDAS: TStringField;
    qCotacaoFrxCCT_NOVO: TStringField;
    qCotacaoFrxFOR_ATIVO: TStringField;
    qCotacaoFrxPCL_CODIGO: TStringField;
    qCotacaoFrxFOR_INSCMUNI: TStringField;
    qCotacaoFrxFOR_DTCADASTRO: TSQLTimeStampField;
    qCotacaoFrxFOR_INSCST: TStringField;
    qCotacaoFrxAMX_CODIGO: TStringField;
    qCotacaoFrxFOR_MODALIDADE_CONTABIL: TStringField;
    qCotacaoFrxFOR_ATUALIZA_PCUSTO: TStringField;
    qCotacaoFrxFOR_ATUALIZA_PVENDA: TStringField;
    qCotacaoFrxFOR_MOTIVO_INATIVO: TStringField;
    qCotacaoFrxFOR_SUFRAMA: TStringField;
    qCotacaoFrxCOLABORADOR: TStringField;
    qCotacaoFrxENDERECO_COL: TStringField;
    qCotacaoFrxDATA_NASC: TSQLTimeStampField;
    qCotacaoFrxLOCAL_NASC: TStringField;
    qCotacaoFrxNACIONALIDADE: TStringField;
    qCotacaoFrxESTADO_CIVIL: TStringField;
    qCotacaoFrxPAI: TStringField;
    qCotacaoFrxMAE: TStringField;
    qCotacaoFrxRG: TStringField;
    qCotacaoFrxRG_EMISSAO: TSQLTimeStampField;
    qCotacaoFrxORGAO_UF: TStringField;
    qCotacaoFrxTITULO_ELEITORAL: TStringField;
    qCotacaoFrxZONA: TIntegerField;
    qCotacaoFrxSECAO: TIntegerField;
    qCotacaoFrxORGAO_CLASSE: TStringField;
    qCotacaoFrxCTPS: TIntegerField;
    qCotacaoFrxSERIE: TStringField;
    qCotacaoFrxCTPS_EXPEDICAO: TSQLTimeStampField;
    qCotacaoFrxCTPS_UF: TStringField;
    qCotacaoFrxCPF: TStringField;
    qCotacaoFrxHABILITACAO: TStringField;
    qCotacaoFrxHABILITACAO_CATEG: TStringField;
    qCotacaoFrxDOC_MILITAR: TStringField;
    qCotacaoFrxDOC_MILITAR_CATEG: TStringField;
    qCotacaoFrxCOR: TStringField;
    qCotacaoFrxSEXO: TStringField;
    qCotacaoFrxGRAU_INSTRUCAO: TStringField;
    qCotacaoFrxDEFICIENCIA: TStringField;
    qCotacaoFrxFONE_RESIDENCIAL: TStringField;
    qCotacaoFrxFONE_CELULAR: TStringField;
    qCotacaoFrxCARGO: TStringField;
    qCotacaoFrxFUNCAO: TStringField;
    qCotacaoFrxCBO: TStringField;
    qCotacaoFrxADMISSAO: TSQLTimeStampField;
    qCotacaoFrxSALARIO: TFMTBCDField;
    qCotacaoFrxSALARIO_POR: TStringField;
    qCotacaoFrxHORA_ENTRADA: TTimeField;
    qCotacaoFrxHORA_SAIDA: TTimeField;
    qCotacaoFrxSAIDA_INTERVALO: TTimeField;
    qCotacaoFrxENTRADA_INTERVALO: TTimeField;
    qCotacaoFrxFGTS_DATA_OPCAO: TSQLTimeStampField;
    qCotacaoFrxFGTS_CONTA_BANCO: TStringField;
    qCotacaoFrxFGTS_DATA_RETIFICACAO: TSQLTimeStampField;
    qCotacaoFrxPIS_DATA: TSQLTimeStampField;
    qCotacaoFrxPIS_NUMERO: TStringField;
    qCotacaoFrxPIS_DOMINIO_BANCARIO: TStringField;
    qCotacaoFrxPIS_NUM_BANCO: TIntegerField;
    qCotacaoFrxPIS_AGENCIA: TStringField;
    qCotacaoFrxPIS_END_AGENCIA: TStringField;
    qCotacaoFrxBENEFICIARIOS: TStringField;
    qCotacaoFrxSALARIO_ALTERACOES: TStringField;
    qCotacaoFrxFERIAS_PERIODO_AQUISITIVO: TStringField;
    qCotacaoFrxFERIAS_PERIODO_GOZO: TStringField;
    qCotacaoFrxACIDENTE_TRABALHO: TStringField;
    qCotacaoFrxDOENCA_PROFISSIONAL: TStringField;
    qCotacaoFrxCONTRIBUICAO_SINDICATO: TStringField;
    qCotacaoFrxRESCISAO_DATA: TSQLTimeStampField;
    qCotacaoFrxRESCISAO_TIPO: TStringField;
    qCotacaoFrxFOR_DATAULTFORNECIMENTO: TDateField;
    qCotacaoFrxSET_CODIGO_1: TIntegerField;
    qCotacaoFrxSET_DESCRICAO: TStringField;
    qCotacaoFrxEMP_CODIGO_2: TStringField;
    qCotacaoFrxPCX_CODIGO: TStringField;
    qCotacaoFrxPRD_CODIGO: TStringField;
    qCotacaoFrxPRD_REFER_1: TStringField;
    qCotacaoFrxPRD_STATUS: TStringField;
    qCotacaoFrxPRD_DTCADASTRO: TDateField;
    qCotacaoFrxPRD_DESCRI: TStringField;
    qCotacaoFrxPRD_DESCRI_RES: TStringField;
    qCotacaoFrxPRD_UND: TStringField;
    qCotacaoFrxPRD_UND_GRADE_CALCULO: TStringField;
    qCotacaoFrxPRD_EMBALA: TStringField;
    qCotacaoFrxPGR_CODIGO: TStringField;
    qCotacaoFrxPTI_CODIGO: TStringField;
    qCotacaoFrxIPI_CODIGO: TStringField;
    qCotacaoFrxPRD_ALIQICM: TFMTBCDField;
    qCotacaoFrxLIN_CODIGO: TStringField;
    qCotacaoFrxPRD_COMPL: TStringField;
    qCotacaoFrxPRD_CARACT: TMemoField;
    qCotacaoFrxPRD_MINIMO: TFMTBCDField;
    qCotacaoFrxPRD_PCUSTO: TFMTBCDField;
    qCotacaoFrxPRD_PVENDA: TFMTBCDField;
    qCotacaoFrxPRD_PMEDIO: TFMTBCDField;
    qCotacaoFrxPRD_PMATPRI: TFMTBCDField;
    qCotacaoFrxPRD_MAOOBRA: TFMTBCDField;
    qCotacaoFrxPRD_ESTOQUE: TFMTBCDField;
    qCotacaoFrxPRD_SAIDA: TFMTBCDField;
    qCotacaoFrxPRD_PENDENTE: TFMTBCDField;
    qCotacaoFrxFOR_CODIGO_2: TStringField;
    qCotacaoFrxPRD_ENTRADA: TFMTBCDField;
    qCotacaoFrxPRD_MAXIMO: TFMTBCDField;
    qCotacaoFrxPRD_TEMSUB: TStringField;
    qCotacaoFrxPRD_SITRIBUT: TStringField;
    qCotacaoFrxPRD_ICMSUBS: TFMTBCDField;
    qCotacaoFrxPRD_UTILCONV: TStringField;
    qCotacaoFrxPRD_UNDCOMP: TStringField;
    qCotacaoFrxPRD_PESOKG: TFMTBCDField;
    qCotacaoFrxPRD_FATORC: TFMTBCDField;
    qCotacaoFrxPRD_DIVMULT: TStringField;
    qCotacaoFrxEMP_CODIGO_3: TStringField;
    qCotacaoFrxPRD_DTPCUSTO: TSQLTimeStampField;
    qCotacaoFrxPRD_TABPRECO: TStringField;
    qCotacaoFrxPRD_GARANTIA: TStringField;
    qCotacaoFrxPRD_FAMILIA: TStringField;
    qCotacaoFrxPRD_CODBARRA: TStringField;
    qCotacaoFrxPRD_VAR1: TFMTBCDField;
    qCotacaoFrxPRD_VAR2: TFMTBCDField;
    qCotacaoFrxPRD_VAR3: TFMTBCDField;
    qCotacaoFrxPRD_VAR4: TFMTBCDField;
    qCotacaoFrxPRD_VAR5: TFMTBCDField;
    qCotacaoFrxPRD_VAR6: TFMTBCDField;
    qCotacaoFrxPRD_VAR7: TFMTBCDField;
    qCotacaoFrxPRD_VAR8: TFMTBCDField;
    qCotacaoFrxPRD_DCVAR1: TStringField;
    qCotacaoFrxPRD_DCVAR2: TStringField;
    qCotacaoFrxPRD_DCVAR3: TStringField;
    qCotacaoFrxPRD_DCVAR4: TStringField;
    qCotacaoFrxPRD_DCVAR5: TStringField;
    qCotacaoFrxPRD_DCVAR6: TStringField;
    qCotacaoFrxPRD_DCVAR7: TStringField;
    qCotacaoFrxPRD_DCVAR8: TStringField;
    qCotacaoFrxPRD_CURVA: TStringField;
    qCotacaoFrxPRD_CODORIGINAL: TStringField;
    qCotacaoFrxPRD_CODMERCOSUL: TStringField;
    qCotacaoFrxPRD_DTPVENDA: TDateField;
    qCotacaoFrxAMX_CODIGO_1: TStringField;
    qCotacaoFrxPRD_PESOLIQ: TFMTBCDField;
    qCotacaoFrxPRD_GRADE: TStringField;
    qCotacaoFrxPRD_CUSTOCOMIPI: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA: TFMTBCDField;
    qCotacaoFrxPRD_EMPENHO: TFMTBCDField;
    qCotacaoFrxPRD_SALDOPRODUCAO: TFMTBCDField;
    qCotacaoFrxPRD_SIMULACAO: TFMTBCDField;
    qCotacaoFrxPRD_COMISSAO: TBCDField;
    qCotacaoFrxPRD_RESERVA_VAR1: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR2: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR3: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR4: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR5: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR6: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR7: TFMTBCDField;
    qCotacaoFrxPRD_RESERVA_VAR8: TFMTBCDField;
    qCotacaoFrxPRD_DT_ULT_COMPRA: TDateField;
    qCotacaoFrxPRD_VL_ULT_COMPRA: TFMTBCDField;
    qCotacaoFrxPRD_NF_ULT_COMPRA: TStringField;
    qCotacaoFrxFOR_CODIGO_ANT: TStringField;
    qCotacaoFrxPRD_DT_ULT_COMPRA_ANT: TDateField;
    qCotacaoFrxPRD_VL_ULT_COMPRA_ANT: TFMTBCDField;
    qCotacaoFrxPRD_NF_ULT_COMPRA_ANT: TStringField;
    qCotacaoFrxPRD_LOTE: TStringField;
    qCotacaoFrxPRD_DIV_MULT_PROD: TStringField;
    qCotacaoFrxSTB_TRIBUTACAO: TStringField;
    qCotacaoFrxPRD_ORIGEM: TIntegerField;
    qCotacaoFrxPRD_CUSTO_CREDITO: TFMTBCDField;
    qCotacaoFrxPRD_MARGEMVENDA: TFMTBCDField;
    qCotacaoFrxPRD_MARGEMOFERTA: TFMTBCDField;
    qCotacaoFrxPRD_PRECOOFERTA: TFMTBCDField;
    qCotacaoFrxPRD_INICIOOFERTA: TDateField;
    qCotacaoFrxPRD_FIMOFERTA: TDateField;
    qCotacaoFrxPRD_PVENDA2: TFMTBCDField;
    qCotacaoFrxPRD_PVENDA3: TFMTBCDField;
    qCotacaoFrxPRD_PVENDA4: TFMTBCDField;
    qCotacaoFrxPRD_PVENDA5: TFMTBCDField;
    qCotacaoFrxPRD_PVENDA6: TFMTBCDField;
    qCotacaoFrxUSU_CODIGO_ATUAL_TAB: TIntegerField;
    qCotacaoFrxUSU_LOGIN_ATUAL_TAB: TStringField;
    qCotacaoFrxPRD_DATA_ATUAL_TAB: TSQLTimeStampField;
    qCotacaoFrxSPED_GENCODIGO: TStringField;
    qCotacaoFrxSPED_TIPCODIGO: TStringField;
    qCotacaoFrxPRD_UNICODIGO: TIntegerField;
    qCotacaoFrxPRD_PRODSERV: TStringField;
    qCotacaoFrxPRD_CUSTOFRETE: TFMTBCDField;
    qCotacaoFrxPRD_CUSTOIPI: TFMTBCDField;
    qCotacaoFrxPRD_CUSTOSUBTRIB: TFMTBCDField;
    qCotacaoFrxPRD_CUSTOADCIONAL: TFMTBCDField;
    qCotacaoFrxPRD_MGDESPFIXAS: TFMTBCDField;
    qCotacaoFrxPRD_INDICESOBMARGEM: TFMTBCDField;
    qCotacaoFrxSRV_REGISTRO: TIntegerField;
    qCotacaoFrxPRD_FOTO: TBlobField;
    qCotacaoFrxPRD_GERENCIA_LOTE: TStringField;
    qCotacaoFrxPRD_GRADE_OBRIGATORIO: TStringField;
    qCotacaoFrxPRDE_REGISTRO: TIntegerField;
    qCotacaoFrxCEST_COD: TStringField;
    qCotacaoFrxCEST_REVISAR: TStringField;
    qCotacaoFrxPRD_CSTPISCOFINS: TStringField;
    qCotacaoFrxPRD_ESPECIFICO: TStringField;
    qCotacaoFrxID_PRD_ESPECIFICO: TIntegerField;
    qCotacaoFrxPRD_ESPECIFICO_REDST: TSingleField;
    qCotacaoFrxPRD_PMC: TSingleField;
    qCotacaoFrxPRD_TABELA: TStringField;
    qCotacaoFrxPRD_DESCONTO: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO2: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA2: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO3: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA3: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO4: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA4: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO5: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA5: TFMTBCDField;
    qCotacaoFrxPRD_PERC_COMISSAO6: TFMTBCDField;
    qCotacaoFrxPRD_PERC_VENDA6: TFMTBCDField;
    qCotacaoFrxINTERNO: TBCDField;
    qCotacaoFrxEXTERNO: TBCDField;
    qCotacaoFrxALTURA1: TBCDField;
    qCotacaoFrxALTURA2: TBCDField;
    qCotacaoFrxPRD_PER_ICMS: TFMTBCDField;
    qCotacaoFrxPRD_PER_PISCONFINS: TFMTBCDField;
    qCotacaoFrxPRD_PER_IPI: TFMTBCDField;
    qCotacaoFrxPRD_PER_FRETE: TFMTBCDField;
    qCotacaoFrxPRD_PER_OUTROS: TFMTBCDField;
    qCotacaoFrxPRD_PER_LUCRO: TFMTBCDField;
    qCotacaoFrxPCX_CODIGO_1: TStringField;
    qCotacaoFrxPRD_OUTROSCUSTOS: TFMTBCDField;
    qCotacaoFrxPRD_CBENEF: TStringField;
    qCotacaoFrxPRO_CODIGO: TIntegerField;
    qCotacaoFrxPRD_TIPOPECA_TERM: TStringField;
    qCotacaoFrxPRD_MATERIAL_TERM: TStringField;
    qCotacaoFrxPRD_DUREZASUPERFICIAL_TERM: TStringField;
    qCotacaoFrxPRD_DUREZANUCLEO_TERM: TStringField;
    qCotacaoFrxPRD_PROFUNDIDADE_TERM: TStringField;
    qCotacaoFrxPRD_TAMANHOGRAO_TERM: TStringField;
    qCotacaoFrxPRD_EHT_TERM: TStringField;
    qCotacaoFrxPRD_DESENHO_TERM: TStringField;
    qCotacaoFrxPRD_UND_TRIB: TStringField;
    qCotacaoFrxMER_PRODUTO_ID: TIntegerField;
    qCotacaoFrxMER_MENSAGEM: TStringField;
    qCotacaoFrxPRD_ULTIMA_UPD_MERCOS: TSQLTimeStampField;
    qCotacaoFrxPRD_UPD_LISTAPRECO_MERCOS: TSQLTimeStampField;
    qCotacaoFrxCNAE_CODIGO: TStringField;
    qCotacaoFrxSRV_CODIGO: TStringField;
    qCotacaoFrxPRD_IMPOSTOS_RETIRADOS: TFMTBCDField;
    qCotacaoFrxPRD_VAIXML: TStringField;
    qCotacaoFrxPRD_MULTIPLICADOR: TBCDField;
    qCotacaoFrxPRD_ENVASE: TStringField;
    qCotacaoFrxPRD_ALMOX_UNICO: TStringField;
    qCotacaoFrxPRD_ESTOQUE_SEGURANCA_REG: TBCDField;
    qCotacaoFrxPRD_LOTE_COMPRA_REG: TStringField;
    qCotacaoFrxPRD_OBSERVACAO_REG: TMemoField;
    qCotacaoFrxPRD_DATA_REG: TDateField;
    qCotacaoFrxPRD_USU_CODIGO_REG: TIntegerField;
    frxDBCotacaoM: TfrxDBDataset;
    qCotacaoM: TFDQuery;
    cbSelecionarTodos: TCheckBox;
    cxGrid1DBTableView1CIT_DATA_AUTORIZACAO: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_RESPONSAVEL: TcxGridDBColumn;
    cxGrid1DBTableView1CIT_OBS_AUTORIZACAO: TcxGridDBColumn;
    qCotacaoFornecedorPCL_CODIGO: TStringField;
    Impresso1: TMenuItem;
    ImprimirItensdaCotao1: TMenuItem;
    ImprimirListadeSolicitao1: TMenuItem;
    imprimir: TMenuItem;
    AutorizaodeCompra1: TMenuItem;
    frxAutorizacaoCompra: TfrxReport;
    qCotacaoFornecedorPCL_NOME: TStringField;
    cxGrid1DBBandedTableView1COF_CODIGO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CIT_CODIGO: TcxGridDBBandedColumn;
    qCotacaoFornecedorCOF_VIA_TRANSPORTE: TIntegerField;
    cxGrid1DBBandedTableView1COF_VIA_TRANSPORTE: TcxGridDBBandedColumn;
    qCotacaoPCX_DESCRI: TStringField;
    cxGrid1DBTableView1PCX_DESCRI: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btAutorizaClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CIT_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBBandedTableView1CIT_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1COT_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure ImprimirItemCotacaoClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView2COF_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure btnFecharClick(Sender: TObject);
    procedure emailClick(Sender: TObject);
    procedure CotaonoFornecedor1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure ExcluirCotao1Click(Sender: TObject);
    procedure frxMailBeginDoc(Sender: TObject);
    procedure InserirItemnoPedidodeCompraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pAbertaClick(Sender: TObject);
    procedure pRejeitadaClick(Sender: TObject);
    procedure pAutCotacaoClick(Sender: TObject);
    procedure pCotAprovadaClick(Sender: TObject);
    procedure pAutCompraClick(Sender: TObject);
    procedure pConcluidaClick(Sender: TObject);
    procedure pCanceladaClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure frxListaSolicitacaoBeginDoc(Sender: TObject);
    procedure frxListaSolicitacaoGetValue(const VarName: string; var Value: Variant);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure Inserirfornecedornositens1Click(Sender: TObject);
    procedure frxCotacao2BeginDoc(Sender: TObject);
    procedure cbSelecionarTodosClick(Sender: TObject);
    procedure AbreOperacoes(CitStatus: Integer);
    function Marcado(): Boolean;
    procedure AtualizaPainelStatus;
    procedure ListadeSolicitao1Click(Sender: TObject);
    procedure AutorizaodeCompra1Click(Sender: TObject);
    procedure frxAutorizacaoCompraBeginDoc(Sender: TObject);
    procedure cxGrid1DBBandedTableView1COF_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1COF_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBBandedTableView1COF_VIA_TRANSPORTEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
  private
    { Private declarations }
    var
      nome1 :string;
      nome2 :string;
  public
    var
      UltimaOperacao: integer;
      pCotCodigo: integer;
    { Public declarations }
  end;

var
  frmCotacaoPesquisa: TfrmCotacaoPesquisa;

implementation

{$R *.dfm}

uses uCotacaoCadastro, InicioDB, uCotacaoAutorizacao, Uteis, uCotacaoFornecedor, RWFunc, DataCad;

procedure TfrmCotacaoPesquisa.AbreOperacoes(CitStatus: Integer);
var
  where: string;
begin
  pAberta.Color := clBtnFace;
  pRejeitada.Color := clBtnFace;
  pAutCotacao.Color := clBtnFace;
  pCotAprovada.Color := clBtnFace;
  pAutCompra.Color := clBtnFace;
  pConcluida.Color := clBtnFace;
  pCancelada.Color := clBtnFace;

  case CitStatus of
    1: pAberta.Color := clTeal;
    2: pRejeitada.Color := clTeal;
    3: pAutCotacao.Color := clTeal;
    4: pCotAprovada.Color := clTeal;
    5: pAutCompra.Color := clTeal;
    6: pConcluida.Color := clTeal;
    7: pCancelada.Color := clTeal;
  end;



  UltimaOperacao := CitStatus;
  qCotacao.Filtered := False;
  qCotacaoItem.Filtered := False;
  qCotacaoFornecedor.Filtered := False;

  qCotacao.Close;
  qCotacaoItem.Close;
  qCotacaoFornecedor.Close;

  if CitStatus = 999 then
    where := ''
  else 
    where  := ' WHERE ci.CIT_STATUS = ' + IntToStr(CitStatus);

  qCotacao.SQL.Text :=
    ' SELECT DISTINCT  0 as Marcado, ' +
    ' CASE WHEN p.PRD_DESCRI IS NULL THEN ci.PRD_DESCRICAO ELSE p.PRD_DESCRI END AS prd_descricao, ' +
    '  ct.*, ci.*, se.SET_DESCRICAO, ct.EMP_CODIGO, px.PCX_DESCRI ' +
    '   FROM COTACAO ct ' +
    '     JOIN COTACAO_ITEM ci ON (ci.COT_CODIGO = ct.COT_CODIGO) ' +
    '     LEFT JOIN COTACAO_FORNECEDOR cf ON (cf.CiT_CODIGO = ci.CIT_CODIGO) ' +
    '     LEFT JOIN FOR0000 f ON (f.FOR_CODIGO = cf.FOR_CODIGO) ' +
    '     LEFT JOIN SETOR se ON (se.SET_CODIGO = ct.SET_CODIGO) ' +
    '     LEFT JOIN PRD0000 p ON (p.PRD_REFER = ci.PRD_REFER) ' +
    '     LEFT JOIN PCX0000 px ON (px.PCX_CODIGO = ci.PCX_CODIGO) ' +
        where +
    '   ORDER BY ct.COT_CODIGO, ci.CIT_CODIGO ' ;
  qCotacao.Open;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qCotacao.SQL.Text);


  qCotacaoItem.SQL.Text :=
    ' SELECT c.COT_DATA_SOL_COTACAO, ci.*, 0 as Marcado, ' +
    '  CASE WHEN ci.PRD_REFER IS NULL ' +
    '    THEN ci.PRD_DESCRICAO ' +
    '    ELSE pr.PRD_DESCRI ' +
    '  END AS PRD_DESCRI ' +
    '  FROM COTACAO_ITEM ci ' +
    '    JOIN COTACAO c ON (c.COT_CODIGO = ci.COT_CODIGO) ' +
    '    LEFT JOIN PRD0000 pr ON pr.PRD_REFER = ci.PRD_REFER ' +
       where +
    '  ORDER BY COT_CODIGO, CIT_CODIGO ' ;
  qCotacaoItem.Open;

  qCotacaoFornecedor.SQL.Text :=
    ' SELECT ' +
    ' CASE WHEN p.PRD_DESCRI IS NULL THEN ci.PRD_DESCRICAO ELSE p.PRD_DESCRI END AS prd_descricao, ' +
    ' cf.*, ci.*, f.FOR_RAZAO, f.FOR_FONE, f.FOR_EMAIL, pc.PCL_NOME ' +
    ' FROM COTACAO_FORNECEDOR cf ' +
    ' JOIN COTACAO_ITEM ci ON	CI.CIT_CODIGO = cf.CIT_CODIGO ' +
    ' LEFT JOIN FOR0000 f ON f.FOR_CODIGO = cf.FOR_CODIGO ' +
    ' LEFT JOIN PCL0000 pc ON pc.PCL_CODIGO = cf.PCL_CODIGO ' +
    ' LEFT JOIN PRD0000 p ON (p.PRD_REFER = ci.PRD_REFER) ' +

      where +
    '  ORDER BY cf.CIT_CODIGO, cf.COF_CODIGO ';
  qCotacaoFornecedor.Open;
  AtualizaPainelStatus;
end;

procedure TfrmCotacaoPesquisa.AtualizaPainelStatus;
begin
  lbAbertaQt.Caption     := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 1');
  lbRejeitadaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 2');
  lbAutCotacaoQt.Caption := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 3');
  lbFinalizadaQt.Caption := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 4');
  lbAutcompraQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 5');
  lbConcluidaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 6');
  lbCanceladaQt.Caption  := BuscaUmDadoSqlAsString('SELECT count(CIT_STATUS) FROM COTACAO_ITEM WHERE CIT_STATUS = 7');
end;

procedure TfrmCotacaoPesquisa.AutorizaodeCompra1Click(Sender: TObject);
begin
  inherited;
  if not Marcado then
    exit;
  qCotacaoFornecedor.Filtered := False;
  frxAutorizacaoCompra.ShowReport();
  AbreOperacoes(UltimaOperacao);
end;

procedure TfrmCotacaoPesquisa.btIncluirClick(Sender: TObject);
begin
  inherited;
  if not assigned(frmCotacaoCadastro) then
    frmCotacaoCadastro := TfrmCotacaoCadastro.Create(Application);
  frmCotacaoCadastro.Inclui := True;
  frmCotacaoCadastro.cotCodigo := 0;
  frmCotacaoCadastro.dtCotDataSolCotacao.Date := Now;
  frmCotacaoCadastro.cbCitStatus.ItemIndex := 1;
  frmCotacaoCadastro.tbCotacao.Open;
  frmCotacaoCadastro.tbCotacao.Insert;
  frmCotacaoCadastro.Show;
end;

procedure TfrmCotacaoPesquisa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TfrmCotacaoPesquisa.btnLimparClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(999);
end;

procedure TfrmCotacaoPesquisa.cbSelecionarTodosClick(Sender: TObject);
var j, sel, citCodigo: integer;
begin
  inherited;
  sel := cxGrid1DBTableView1.Controller.SelectedRecordCount;
  for j := 0 to sel-1 do
  begin
      CitCodigo := cxGrid1DBTableView1.Controller.SelectedRecords[j].Values[cxGrid1DBTableView1CIT_CODIGO.Index];
      qCotacao.Locate('CIT_CODIGO', CitCodigo, []);
      qCotacao.Edit;
      qCotacaoMARCADO.AsInteger := 1;      
      qCotacao.Post;
  end;
  cbSelecionarTodos.Checked := False;
end;

procedure TfrmCotacaoPesquisa.CotaonoFornecedor1Click(Sender: TObject);
var
  ADetailDataController   : TcxGridDBDataController;
  ASubDetailDataController: TcxGridDBDataController;
  ARelationIndex, AFocusedIndex,   ARelationIndex2, AFocusedIndex2, CitCodigo, CofCodigo: Integer;

begin
  inherited;
  ARelationIndex := TcxGridDBDataController(cxGrid1DBTableView1.DataController).GetDetailActiveRelationIndex(cxGrid1DBTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxGrid1DBTableView1.DataController).GetDetailDataController(cxGrid1DBTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  if ADetailDataController.Controller.SelectedRecords[0] = nil then
  begin
    MessageDlg('Insira um Fornecedor', mtWarning, [mbOK], 0);
    Exit;
  end;
  CitCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxGrid1DBBandedTableView1CIT_CODIGO.Index];

//  ARelationIndex2 := ADetailDataController.GetDetailActiveRelationIndex(ADetailDataController.FocusedRecordIndex);
//  ASubDetailDataController := ADetailDataController.GetDetailDataController(ADetailDataController.FocusedRecordIndex, ARelationIndex2) as TcxGridDBDataController;
//  if ASubDetailDataController.Controller.SelectedRecords[0] <> nil then
//    CofCodigo := ASubDetailDataController.Controller.SelectedRecords[0].Values[cxGrid1DBBandedTableView2COF_CODIGO.Index];

  qCotacaoFornecedor.Insert;
  qCotacaoFornecedorCIT_CODIGO.AsInteger := CitCodigo;
  qCotacaoFornecedorCOF_CODIGO.AsInteger := GetNextSequence( 'GEN_COTACAO_FORNECEDOR');
  if not assigned(frmCotacaoFornecedor) then
    frmCotacaoFornecedor := TfrmCotacaoFornecedor.Create(Application);
  frmCotacaoFornecedor.BuscaFornecedor := False;
  frmCotacaoFornecedor.ShowModal;
end;

procedure TfrmCotacaoPesquisa.btAutorizaClick(Sender: TObject);
begin
  inherited;
  if not Marcado then
    exit;
  if not assigned(frmCotacaoAutorizacao) then
    frmCotacaoAutorizacao := TfrmCotacaoAutorizacao.Create(Application);
  frmCotacaoAutorizacao.ShowModal;
  AtualizaPainelStatus;
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  citCodigo, RecordIndex : integer;
begin
  inherited;
  try
    if ACellViewInfo.Properties is TcxCheckBoxProperties then
    begin
      RecordIndex := ACellViewInfo.GridRecord.Index;
      citCodigo :=  TcxCustomGridTableView(Sender).DataController.GetValue(RecordIndex, cxGrid1DBBandedTableView1CIT_CODIGO.Index);
      qCotacaoItem.Locate('CIT_CODIGO', citCodigo, []);
      qCotacaoItem.Edit;
      if qCotacaoItemMARCADO.AsInteger = 1 then
        qCotacaoItemMARCADO.AsInteger := 0
      else
        qCotacaoItemMARCADO.AsInteger := 1;
      qCotacaoItem.Post;
      TcxCustomGridTableView(Sender).DataController.FocusedRecordIndex := RecordIndex;
    end;
  except
    // faz nada
  end;
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1CIT_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não'
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1CIT_STATUSGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = '1' then
    AText := 'Aberta'
  else if AText = '2' then
    AText := 'Rejeitada'
  else if AText = '3' then
    AText := 'Autorização de Cotação'
  else if AText = '4' then
    AText := 'Cotação Finalizada'
  else if AText = '5' then
    AText := 'Autorização de Compra'
  else if AText = '6' then
    AText := 'Concluída'
  else if AText = '7' then
    AText := 'Cancelada'
  else
    AText := 'Não Definido';
{
    0 - Não Definido
    1 - Aberta
    2 - Rejeitada
    3 - Autorização de Cotação
    4 - Cotação Finalizada
    5 - Autorização de Compra
    6 - Concluída
    7 - Cancelada
}

end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1COF_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não';
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1COF_TIPO_FRETEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = '0' then
    AText := '0-Remetente (CIF)';
  if AText = '1' then
    AText := '1-Destinatário (FOB)';
  if AText = '2' then
    AText := '2-Terceiros';
  if AText = '3' then
    AText := '3-Próprio por conta do remetente';
  if AText = '4' then
    AText := '4-Próprio por conta do destinatário';
  if AText = '9' then
    AText := '9-Sem frete';
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1COF_VIA_TRANSPORTEGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = '' then
    exit;
  case StrToInt(AText) of
    1:  AText := '1-Marítima';
    2:  AText := '2-Fluvial';
    3:  AText := '3-Lacustre';
    4:  AText := '4-Aérea';
    5:  AText := '5-Postal';
    6:  AText := '6-Ferroviária';
    7:  AText := '7-Rodoviária';
    8:  AText := '8-Conduto/Rede Trans.';
    9:  AText := '9-Meios Próprios';
    10: AText := '10-Entrada/Saída Ficta';
    11: AText := '11-Courier';
    12: AText := '12-Handcarry';
  end;

end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if(AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1COF_APROVADA.Index] = 'S') then
  begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  cxGrid1DBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  cofCodigo, RecordIndex : integer;
begin
  inherited;
  RecordIndex := ACellViewInfo.GridRecord.Index;
  cofCodigo :=   TcxCustomGridTableView(Sender).DataController.GetValue(RecordIndex, cxGrid1DBBandedTableView1COF_CODIGO.Index);
  qCotacaoFornecedor.Locate('COF_CODIGO', cofCodigo, []);
  if not assigned(frmCotacaoFornecedor) then
    frmCotacaoFornecedor := TfrmCotacaoFornecedor.Create(Application);
  cxGrid1DBBandedTableView1.DataController.FocusedRowIndex := RecordIndex;
  frmCotacaoFornecedor.edPrazo.idRetorno := qCotacaoFornecedorPCL_CODIGO.AsString;
  frmCotacaoFornecedor.cbFornecedor.idRetorno := qCotacaoFornecedorFOR_CODIGO.AsString;
  frmCotacaoFornecedor.cotCodigo := pCotCodigo;
  if qCotacaoFornecedorCOF_TIPO_FRETE.AsString <> '' then
    case qCotacaoFornecedorCOF_TIPO_FRETE.AsInteger of
      0, 1, 2, 3, 4 : frmCotacaoFornecedor.cbCofTipoFrete.ItemIndex := qCotacaoFornecedorCOF_TIPO_FRETE.AsInteger;
      9 : frmCotacaoFornecedor.cbCofTipoFrete.ItemIndex := 5;
    end;
  frmCotacaoFornecedor.ShowModal;

end;

procedure TfrmCotacaoPesquisa.cxGrid1DBBandedTableView2COF_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não'
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  citCodigo : integer;
begin
  inherited;
  if AButton = mbRight then
    exit;

  try
    if ACellViewInfo.Properties is TcxCheckBoxProperties then
    begin
      CitCodigo := cxGrid1DBTableView1.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1CIT_CODIGO.Index];
      pCotCodigo := cxGrid1DBTableView1.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1COT_CODIGO.Index];
      qCotacao.Locate('CIT_CODIGO', citCodigo, []);
      qCotacao.Edit;
      if qCotacaoMARCADO.AsInteger = 1 then
        qCotacaoMARCADO.AsInteger := 0
      else
        qCotacaoMARCADO.AsInteger := 1;
      qCotacao.Post;
    end;
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  pCotCodigo := cxGrid1DBTableView1.Controller.SelectedRecords[0].Values[cxGrid1DBTableView1COT_CODIGO.Index];
  if not assigned(frmCotacaoCadastro) then
    frmCotacaoCadastro := TfrmCotacaoCadastro.Create(Application);
  frmCotacaoCadastro.tbUndMedida.Open;
  frmCotacaoCadastro.Inclui := False;
  frmCotacaoCadastro.cotCodigo := qCotacaoCOT_CODIGO.AsInteger;
  frmCotacaoCadastro.tbCotacao.Open;
  frmCotacaoCadastro.tbCotacao.Edit;
  frmCotacaoCadastro.tbCotacao.Locate('COT_CODIGO', qCotacaoCOT_CODIGO.AsInteger, []);
  frmCotacaoCadastro.dtCotDataSolCotacao.Date := qCotacaoCOT_DATA_SOL_COTACAO.AsDateTime;
  frmCotacaoCadastro.cbSetor.idRetorno := qCotacaoSET_CODIGO.AsString;
  frmCotacaoCadastro.qItem.Close;
  frmCotacaoCadastro.qItem.SQL.Text :=
    ' SELECT ci.*, ' +
    '  CASE WHEN ci.PRD_REFER IS NULL ' +
    '    THEN ci.PRD_DESCRICAO ' +
    '    ELSE pr.PRD_DESCRI ' +
    '  END AS PRD_DESCRI ' +
    '  FROM COTACAO_ITEM ci ' +
    '  LEFT JOIN PRD0000 pr ON pr.PRD_REFER = ci.PRD_REFER ' +
    '  WHERE ci.COT_CODIGO = ' + qCotacaoCOT_CODIGO.AsString +
    '  ORDER BY COT_CODIGO, CIT_CODIGO ' ;
  frmCotacaoCadastro.qItem.Open;
  frmCotacaoCadastro.qItem.First;
  frmCotacaoCadastro.ShowModal;
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBTableView1COT_APROVADAGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  inherited;
  if AText = 'S' then
    AText := 'Sim'
  else
    AText := 'Não'
end;

procedure TfrmCotacaoPesquisa.cxGrid1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  pCotCodigo := ADataController.GetValue(ARecordIndex, cxGrid1DBTableView1COT_CODIGO.Index);
  cxGrid1DBTableView1.ViewData.Collapse(True);
end;

procedure TfrmCotacaoPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxGrid1DBTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome1, True, [gsoUseFilter] );
  cxGrid1DBBandedTableView1.StoreToIniFile(dbInicio.SistemaLocal+'settings\'+nome2, True, [gsoUseFilter] );
  Action := caFree;
  frmCotacaoPesquisa := nil;
end;

procedure TfrmCotacaoPesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  nome1 := 'frmCotacaoPesquisa.cxGrid1DBTableView1' + DBInicio.Usuario.CODIGO + '.grid';
  nome2 := 'frmCotacaoPesquisa.cxGrid1DBBandedTableView1' + DBInicio.Usuario.CODIGO + '.grid';
end;

procedure TfrmCotacaoPesquisa.FormShow(Sender: TObject);
begin
  inherited;
  pPesquisa.Height := 40;
  cbSelecionarTodos.Top := 43;
  cxGrid1DBTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome1, True, True, [gsoUseFilter] );
  cxGrid1DBBandedTableView1.RestoreFromIniFile(dbInicio.SistemaLocal+'settings\'+nome2, True, True, [gsoUseFilter] );
  AbreOperacoes(999);
end;

procedure TfrmCotacaoPesquisa.frxAutorizacaoCompraBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxAutorizacaoCompra.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmCotacaoPesquisa.frxCotacao2BeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxCotacao2.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmCotacaoPesquisa.frxMailBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxMail.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmCotacaoPesquisa.frxListaSolicitacaoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxListaSolicitacao.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmCotacaoPesquisa.frxListaSolicitacaoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.RAZAO;
  if VarName = 'CIDADE' then
    Value := DBInicio.Empresa.CIDADE;
end;

procedure TfrmCotacaoPesquisa.ImprimirItemCotacaoClick(Sender: TObject);
var
  citCodigo : string;
begin
  inherited;
  if not Marcado then
    exit;

  while not qCotacao.Eof do
  begin
      citCodigo := citCodigo + qCotacaoCIT_CODIGO.AsString + ',';
      qCotacao.Next;
  end;
  citCodigo := citCodigo.Substring(0, Length(citCodigo) -1);

  qCotacaoFrx.Close;
  qCotacaoFrx.SQL.Text :=
   ' SELECT  f.FOR_RAZAO, CASE WHEN p.PRD_DESCRI IS NULL THEN ci.PRD_DESCRICAO ELSE p.PRD_DESCRI END AS prd_descricao, ' +
   '   cf.*, ci.*, ct.*, f.*, se.*, p.* ' +
   '   FROM COTACAO_FORNECEDOR cf ' +
   '   JOIN COTACAO_ITEM ci ON (ci.CIT_CODIGO = cf.CIT_CODIGO) ' +
   '   JOIN COTACAO ct ON (ct.COT_CODIGO = ci.COT_CODIGO) ' +
   '   LEFT JOIN FOR0000 f ON	(f.FOR_CODIGO = cf.FOR_CODIGO) ' +
   '   LEFT JOIN SETOR se ON	se.SET_CODIGO = ct.SET_CODIGO ' +
   '   LEFT JOIN PRD0000 p ON	(p.PRD_REFER = ci.PRD_REFER) ' +
   ' WHERE ci.CIT_CODIGO in (' + citCodigo + ')' +
   ' ORDER BY f.FOR_RAZAO, ct.COT_CODIGO';
  qCotacaoFrx.Open;
  frxCotacao2.ShowReport();
  AbreOperacoes(UltimaOperacao);
end;

function TfrmCotacaoPesquisa.Marcado: Boolean;
var
  Resultado : boolean;
begin
  Resultado := True;
  qCotacao.Filtered := False;
  qCotacao.Filter := 'MARCADO = 1';
  qCotacao.Filtered := True;
  qCotacao.First;
  if qCotacao.Eof then
  begin
    MessageDlg('Marque na caixa de seleção, um ou mais itens.', mtWarning, [mbOK], 0);
    qCotacao.Filtered := False;
    Resultado := False;
  end;
  Result := Resultado;
end;

procedure TfrmCotacaoPesquisa.pAbertaClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(1);
end;

procedure TfrmCotacaoPesquisa.pRejeitadaClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(2);
end;

procedure TfrmCotacaoPesquisa.pAutCotacaoClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(3);
end;

procedure TfrmCotacaoPesquisa.pCotAprovadaClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(4);
end;

procedure TfrmCotacaoPesquisa.pAutCompraClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(5);
  qCotacaoFornecedor.Filtered := False;
  qCotacaoFornecedor.Filter := 'COF_APROVADA = ' + QuotedStr('S');
  qCotacaoFornecedor.Filtered := True;
end;

procedure TfrmCotacaoPesquisa.pConcluidaClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(6);
end;

procedure TfrmCotacaoPesquisa.pCanceladaClick(Sender: TObject);
begin
  inherited;
  AbreOperacoes(7);
end;

procedure TfrmCotacaoPesquisa.ExcluirCotao1Click(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController;
 ASubDetailDataController: TcxGridDBDataController;
 ARelationIndex, AFocusedIndex,   ARelationIndex2, AFocusedIndex2, CitCodigo, CofCodigo: Integer;
begin
  inherited;
  ARelationIndex := TcxGridDBDataController(cxGrid1DBTableView1.DataController).GetDetailActiveRelationIndex(cxGrid1DBTableView1.DataController.FocusedRecordIndex);
  ADetailDataController := TcxGridDataController(cxGrid1DBTableView1.DataController).GetDetailDataController(cxGrid1DBTableView1.DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  CitCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxGrid1DBBandedTableView1CIT_CODIGO.Index];
  CofCodigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxGrid1DBBandedTableView1COF_CODIGO.Index];

//  ARelationIndex2 := ADetailDataController.GetDetailActiveRelationIndex(ADetailDataController.FocusedRecordIndex);
//  ASubDetailDataController := ADetailDataController.GetDetailDataController(ADetailDataController.FocusedRecordIndex, ARelationIndex2) as TcxGridDBDataController;
//  if ASubDetailDataController.Controller.SelectedRecords[0] = nil then
//    exit;


//  CofCodigo := ASubDetailDataController.Controller.SelectedRecords[0].Values[cxGrid1DBBandedTableView2COF_CODIGO.Index];
  if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo] , 0) <> mrYes then
    exit;
  qCotacaoFornecedor.Locate('COF_CODIGO', CofCodigo, []);
  qCotacaoFornecedor.Delete;
  qCotacaoFornecedor.Refresh;
end;

procedure TfrmCotacaoPesquisa.emailClick(Sender: TObject);
var
  j: Integer;
  dt, DataSolicitacao,
  ArquivoAnexo, nomeBase, char, erro, sucesso,
  where, filtro, emailFornecedor : string;
  msg, anexo: TStringList;

begin
  inherited;
  if not Marcado then
    exit;

  if TComponent(Sender).Name = 'imprimir' then
  begin
    if MessageDlg('Confirma a geração do arquivo PDF?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      exit;
    MessageDlg('Arquivo Gravado em: ' +  dbInicio.SistemaLocal + 'Cotacoes', mtInformation, [mbOk], 0);
  end
  else
  begin
    if MessageDlg('Confirma o envio do e-mail?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      exit;
  end;

  try
    CreateDirectory(PWideChar(dbInicio.SistemaLocal + 'Cotacoes'), nil);
  except
    raise Exception.Create('Error - não é possível criar o diretório');
  end;

  where := '(';
  filtro := '(';
  qCotacao.First;
  while not qCotacao.Eof do
  begin
    where := where + ' ci.CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString + ' OR ';
    filtro := filtro + ' CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString + ' OR ';
    qCotacao.Next;
  end;
  where := where.Substring(0, Length(where) - 3) + ')';
  filtro := filtro.Substring(0, Length(filtro) - 3) + ')';

  qAux.Close;
  qAux.SQL.Text :=
     ' SELECT DISTINCT cf.FOR_CODIGO  ' +
     ' FROM COTACAO_FORNECEDOR cf ' +
     ' JOIN COTACAO_ITEM ci ON (ci.CIT_CODIGO = cf.CIT_CODIGO) ' +
     ' WHERE ' + where +
     ' ORDER BY cf.FOR_CODIGO';
  qAux.Open;
  qCotacaoM.Close;
  qCotacaoM.Open;

  while not qAux.Eof do
  begin
      qCotacaoFornecedor.Filtered := False;
      qCotacaoFornecedor.Filter := filtro + ' AND (FOR_CODIGO = ' + QuotedStr(qAux.FieldByName('FOR_CODIGO').AsString) + ')';
      qCotacaoFornecedor.Filtered := True;

      filtro := '(';
      qCotacao.First;
      while not qCotacao.Eof do
      begin
        filtro := filtro + ' CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString + ' OR ';
        qCotacao.Next;
      end;
      filtro := filtro.Substring(0, Length(filtro) - 3) + ')';

      qCotacaoM.Filtered := False;
      qCotacaoM.Filter := filtro + ' AND FOR_CODIGO = ' + QuotedStr(qAux.FieldByName('FOR_CODIGO').AsString) ;
      qCotacaoM.Filtered := True;
      if dbInicio.IsDesenvolvimento then
        CopyToClipBoard(qCotacaoM.SQL.Text);

      if (qCotacaoFornecedor.FieldByName('FOR_EMAIL').AsString = '') AND (qCotacaoFornecedor.FieldByName('COF_FORNECEDOR_EMAIL').AsString = '')  then
      begin
        erro := erro + 'e-mail do fornecedor ' +
          iif(
            qCotacaoFornecedor.FieldByName('FOR_RAZAO').AsString = '',
            qCotacaoFornecedor.FieldByName('COF_FORNECEDOR_NOME').AsString,
            qCotacaoFornecedor.FieldByName('FOR_RAZAO').AsString
          )
          + ' não informado' + #13;
        qAux.Next;
        Continue
      end;

      dt := qCotacaoM.FieldByName('COT_DATA_SOL_COTACAO').AsString;;
      DataSolicitacao := copy(dt, 7,4) + copy(dt, 4,2) + copy(dt, 1, 2);
      ArquivoAnexo := dbInicio.SistemaLocal+'Cotacoes\' +
        DataSolicitacao + '-' +
        strzero(qCotacaoCOT_CODIGO.AsString, 6) + '-' +
        strzero(qCotacaoCIT_CODIGO.AsString, 6) + '-' +


        TiraCaracteresEspeciais(qCotacaoFornecedor.FieldByName('FOR_RAZAO').AsString);
      nomeBase := ArquivoAnexo;
      if FileExists(ArquivoAnexo + '.pdf') then
      begin
        for j := 65 to 90 do
        begin
          char := chr(j);
          if FileExists(NomeBase + '-' + char + '.pdf') then
            continue
          else
          begin
            ArquivoAnexo := nomeBase + '-' + char;
            if not FileExists(ArquivoAnexo + '.pdf') then
              break;
          end;
        end;
      end;
      ArquivoAnexo := ArquivoAnexo + '.pdf';
      frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'Cotacoes';
      frxPDFExport1.FileName    := ArquivoAnexo;
      frxPDFExport1.ShowDialog  := False;
      frxMail.PrepareReport();
      frxMail.Export(frxPDFExport1);

      if TComponent(Sender).Name = 'imprimir' then
      begin
        ShellExecute(0, 'OPEN', PChar(ArquivoAnexo), '', '', SW_SHOWNORMAL);
        qAux.Next;
        Continue;
      end;

      msg:= TStringList.Create;
      with msg do
      begin
        Clear;
        Add(qCotacaoFornecedor.FieldByName('FOR_RAZAO').AsString);
        Add('');
        Add('Solicitamos a Cotacao de Precos dos itens relacionados no arquivo em anexo.');
        Add('');
        Add('');
        Add('Atenciosamente.');
        Add('');
        Add('');
        Add(DBInicio.Empresa.RAZAO);
        Add(DBInicio.Empresa.FANTASIA);
        Add(DBInicio.Empresa.FONE);
        Add(DBInicio.Empresa.ENDERECO);
        Add(DBInicio.Empresa.BAIRRO);
        Add(DBInicio.Empresa.CIDADE + ' - ' + DBInicio.Empresa.UF);
        Add(DBInicio.Empresa.CEP);
        Add(DBInicio.Empresa.HOME_PAGE);
        Add(DBInicio.Empresa.EMAILCOMPRA);
      end;
      anexo := TStringList.Create;
      anexo.Add(ArquivoAnexo);
      if qCotacaoFornecedor.FieldByName('FOR_EMAIL').AsString = '' then
        emailFornecedor := qCotacaoFornecedor.FieldByName('COF_FORNECEDOR_EMAIL').AsString
      else
        emailFornecedor := qCotacaoFornecedor.FieldByName('FOR_EMAIL').AsString;
      if emailFornecedor <> '' then
        if enviaMail('Financeiro', DBInicio.Empresa.EMAILCOMPRA, emailfornecedor, 'Solicitação de Cotação', DBInicio.Empresa.EMAILCOMPRA, msg, anexo) then
          sucesso := sucesso + 'Mensagem enviada com sucesso para ' + qCotacaoFornecedor.FieldByName('FOR_RAZAO').AsString + #13;

      qAux.Next;
  end;

  if erro <> '' then
    MessageDlg(erro, mtWarning, [mbOK], 0);
  if sucesso <> '' then
    MessageDlg(sucesso, mtInformation, [mbOK], 0);
  AbreOperacoes(UltimaOperacao);
end;


procedure TfrmCotacaoPesquisa.Inserirfornecedornositens1Click(Sender: TObject);
var
  Mensagem, pclCodigo, AText: string;
begin
  inherited;
  if not Marcado then
    exit;
  Mensagem := '';
  buscaFornecedor.Button.Click;
  if MessageDlg('Confirma Inserção do Fornecedor nos Itens?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  qCotacao.First;
  while not qCotacao.Eof do
  begin
    if qCotacaoCIT_Status.AsInteger <> 3 then // 3 = Autorização de cotação
    begin
      if qCotacaoCIT_Status.AsInteger = 1 then
        AText := 'Aberta'
      else if qCotacaoCIT_Status.AsInteger = 2 then
        AText := 'Rejeitada'
      else if qCotacaoCIT_Status.AsInteger = 3 then
        AText := 'Autorização de Cotação'
      else if qCotacaoCIT_Status.AsInteger = 4 then
        AText := 'Cotação Finalizada'
      else if qCotacaoCIT_Status.AsInteger = 5 then
        AText := 'Autorização de Compra'
      else if qCotacaoCIT_Status.AsInteger = 6 then
        AText := 'Concluída'
      else if qCotacaoCIT_Status.AsInteger = 7 then
        AText := 'Cancelada'
      else
        AText := 'Não Definido';

      mensagem := mensagem + qCotacaoPRD_DESCRICAO.AsString + ' - ' + AText + CRLF;
      qCotacao.Next;
      Continue;
    end;

    if BuscaUmDadoSqlAsString(
      'SELECT CIT_CODIGO ' +
      ' FROM COTACAO_FORNECEDOR ' +
      '  WHERE CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString +
      '    AND FOR_CODIGO = ' + QuotedStr(buscaFornecedor.idRetorno) ) <> ''
    then
    begin
      qCotacao.Next;
      Continue;
    end;

    pclCodigo := BuscaUmDadoSqlAsString('SELECT PCL_CODIGO  FROM FOR0000 WHERE FOR_CODIGO = ' + QuotedStr(buscaFornecedor.idRetorno) );

    qAux.Close;
    qAux.SQL.Text := 'INSERT INTO COTACAO_FORNECEDOR ' +
        ' (COF_CODIGO, CIT_CODIGO, FOR_CODIGO, COF_QUANTIDADE_COTADA, PCL_CODIGO) ' +
    ' VALUES ( ' +
        IntToStr(GetNextSequence( 'GEN_COTACAO_FORNECEDOR')) + ',' +
        qCotacaoCIT_CODIGO.AsString + ',' +
        QuotedStr(buscaFornecedor.idRetorno) + ',' +
        FloatToSQL(qCotacaoCIT_QUANTIDADE_SOLICITADA.AsFloat) + ',' +
        QuotedStr(pclCodigo) +
     ')';
    qAux.ExecSQL;
    qCotacao.Next;
  end;
  if mensagem <> '' then
  begin
    Mensagem := 'Fornecedores não cadastrados para os seguintes itens e motivo' + CRLF + CRLF + Mensagem;
    MessageDlg(Mensagem, mtInformation, [mbOk], 0);
  end;
  AbreOperacoes(UltimaOperacao);
end;

procedure TfrmCotacaoPesquisa.InserirItemnoPedidodeCompraClick(Sender: TObject);
var
  aprovada : boolean;
  cotCodigo, citStatus, OCP_CODIGO, filtro, qFiltro, filtro2, condPagamento: string;
  cotAnterior: integer;
begin
  inherited;
  if not Marcado then
    exit;

  if MessageDlg('Confirma Envio de Cotação para Compras?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  filtro := '(';
  qFiltro := '(';
  qCotacao.First;
  while not qCotacao.Eof do
  begin
    citStatus := BuscaUmDadoSqlAsString('SELECT COF_APROVADA FROM COTACAO_FORNECEDOR WHERE (COF_APROVADA = ''S'') AND (CIT_CODIGO = ' + qCotacao.FieldByName('CIT_CODIGO').AsString +  ')' ) ;
    if (qCotacao.FieldByName('PRD_REFER').AsString = '') and (citStatus = 'S' ) then
    begin
      MessageDlg('Referência do Produto não cadastrada para o Item ' + qCotacao.FieldByName('PRD_DESCRICAO').AsString, mtWarning, [mbOK], 0);
      exit;
    end;
    if citStatus = 'S' then
    begin
      filtro := filtro + ' CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString + ' OR ';
      qFiltro := qFiltro + ' ci.CIT_CODIGO = ' + qCotacaoCIT_CODIGO.AsString + ' OR ';
    end;
    qCotacao.Next;
  end;
  filtro := filtro.Substring(0, Length(filtro) - 3) + ')';
  qFiltro := qFiltro.Substring(0, Length(qFiltro) - 3) + ')';




  qAux2.Close;
  qAux2.SQL.Text :=
    '  SELECT ' +
    '    DISTINCT ' +
    '    ct.EMP_CODIGO ' +
    '  FROM  COTACAO ct ' +
    '  JOIN COTACAO_ITEM ci ON  (ci.COT_CODIGO = ct.COT_CODIGO) ' +
    '  LEFT JOIN COTACAO_FORNECEDOR cf ON  (cf.CiT_CODIGO = ci.CIT_CODIGO) ' +
    '  JOIN FOR0000 f ON  (f.FOR_CODIGO = cf.FOR_CODIGO) ' +
    '  JOIN PRD0000 p ON  (p.PRD_REFER = ci.PRD_REFER) ' +
    '  WHERE cf.COF_APROVADA = ''S'' AND  ' + qFiltro +
    '  GROUP BY 1 ' ;
  qAux2.Open;
  if qAux2.Eof then
  begin
    MessageDlg('Verifique a consistência dos dados das cotações, fornecedor, produto ou aprovação requeridas.', mtWarning, [mbOK], 0);
    Exit;
  end;

  qAux4.Close;
  qAux4.SQL.Text :=
     ' SELECT DISTINCT cf.FOR_CODIGO  ' +
     ' FROM COTACAO_FORNECEDOR cf ' +
     ' JOIN COTACAO_ITEM ci ON (ci.CIT_CODIGO = cf.CIT_CODIGO) ' +
     ' WHERE (COF_APROVADA = ''S'') AND  ' + qFiltro +
     ' ORDER BY cf.FOR_CODIGO';
  qAux4.Open;
  while not qAux4.Eof do
  begin
      qCotacaoFornecedor.Filtered := False;
      qCotacaoFornecedor.Filter := filtro + ' AND (COF_APROVADA = ''S'') AND (FOR_CODIGO = ' + QuotedStr(qAux4.FieldByName('FOR_CODIGO').AsString) + ')';
      qCotacaoFornecedor.Filtered := True;

      filtro2 := '(';
      qCotacaoFornecedor.First;
      while not qCotacaoFornecedor.Eof do
      begin
        filtro2 := filtro2 + ' COT_CODIGO = ' + qCotacaoFornecedor.FieldByName('COT_CODIGO').AsString + ' OR ';
        qCotacaoFornecedor.Next;
      end;
      filtro2 := filtro2.Substring(0, Length(filtro2) - 3) + ')';
      qCotacao.Filtered := False;
      qCotacao.Filter := filtro2 ;
      qCotacao.Filtered := True;

      OCP_CODIGO := QuotedStr(strzero(RWFunc.SequenciadorPRC(DataCadastros.SQLConnection1, DBInicio.Empresa.EMP_CODIGO ,'OCP0000', 'OCP_CODIGO', 0),6));
      condPagamento := BuscaUmDadoSqlAsString('SELECT PCL_NOME FROM PCL0000 WHERE PCL_CODIGO = ' + QuotedStr(qCotacaoFornecedorPCL_CODIGO.AsString) );
      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := 'INSERT INTO OCP0000 (' +
                        ' OCP_CODIGO, COT_CODIGO, FOR_CODIGO, OCP_DTEMIS, OCP_DTENTREGA,' +
                        ' OCP_REQUERENTE, OCP_TPPAGTO, OCP_OBS, EMP_CODIGO, OCP_TOTAL, OCP_PRAZO ' +
                        ' ) VALUES ('+
                        OCP_CODIGO + ',' +
                        QuotedStr(qCotacaoCIT_CODIGO.AsString) + ',' +
                        QuotedStr(qCotacaoFornecedorFOR_CODIGO.AsString) + ',' +
                        DateToSQL(qCotacaoFornecedorCIT_DATA_AUTORIZACAO.AsDateTime) + ',' +
                        DateToSQL(qCotacaoFornecedorCOF_DATA_PRAZO_ENTREGA.AsDateTime) + ',' +
                        QuotedStr(qCotacaoFornecedorCIT_RESPONSAVEL.AsString) + ',' +
                        QuotedStr(qCotacaoFornecedorCOF_TIPO_FRETE.AsString) + ',' +
                        QuotedStr(qCotacaoFornecedorCIT_OBS_AUTORIZACAO.AsString) + ',' +
                        QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                        FloatToSQL(qCotacaoFornecedorCOF_QUANTIDADE_COTADA.AsFloat * qCotacaoFornecedorCOF_PRECO_COTACAO.AsFloat) + ',' +
                        QuotedStr(condPagamento) +
                        ')';
      qAux.ExecSQL;

      qCotacaoFornecedor.First;
      while not qCotacaoFornecedor.Eof do
      begin
        qAux.Close;
        qAux.SQL.Clear;
        qAux.SQL.Text := 'INSERT INTO OCP_IT01 (' +
                          ' OCP_CODIGO, PRD_REFER, OCI_QTDES, OCI_PRECO, EMP_CODIGO, ' +
                          ' OCI_DESCRICAO, PRD_UND  ' +
                          ' ) VALUES ('+
                          OCP_CODIGO + ',' +
                          QuotedStr(qCotacaoFornecedorPRD_REFER.AsString) + ',' +
                          FloatToSQL(qCotacaoFornecedorCOF_QUANTIDADE_COTADA.AsFloat) + ',' +
                          FloatToSQL(qCotacaoFornecedorCOF_PRECO_COTACAO.AsFloat) + ',' +
                          QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ',' +
                          QuotedStr(qCotacaoFornecedorPRD_DESCRICAO.AsString) + ',' +
                          QuotedStr(qCotacaoFornecedorPRD_UNISIGLA.AsString) +
                          ')';
        qAux.ExecSQL;
        qCotacaoFornecedor.Next;
      end;
      qAux4.Next;
  end;
  qCotacao.Filtered := False;
  qCotacaoItem.Filtered := False;
  qCotacaoFornecedor.Filtered := False;
end;

procedure TfrmCotacaoPesquisa.ListadeSolicitao1Click(Sender: TObject);
begin
  inherited;
  if not Marcado then
    exit;
  frxListaSolicitacao.ShowReport();
  AbreOperacoes(UltimaOperacao);
end;

end.
