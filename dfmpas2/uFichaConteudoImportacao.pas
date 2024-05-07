unit uFichaConteudoImportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, StrUtils ,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxEditRepositoryItems, frxDBSet, JvAnimatedImage, JvGIFCtrl, JvDialogs,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmFichaConteudoImportacao = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaNCM: TStringField;
    cdsBuscaDetalhesPRD_REFER_ITENS: TStringField;
    cdsBuscaDetalhesPRD_DESCRI: TStringField;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1NCM: TcxGridDBColumn;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    Botao: TcxEditRepositoryButtonItem;
    cxgrd1DBTableView1Botao: TcxGridDBColumn;
    cdsBuscaDetalhesPRD_REFER: TStringField;
    cdsBuscaGTIN: TStringField;
    cxgrd1DBTableView1GTIN: TcxGridDBColumn;
    cdsBuscaPRD_UND: TStringField;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cdsBuscaPRD_ORIGEM: TIntegerField;
    cxgrd1DBTableView1PRD_ORIGEM: TcxGridDBColumn;
    cdsBuscaPRD_FCI_VALOR_PARCELA_IMPORTADA: TFMTBCDField;
    cdsBuscaDetalhesPRECO_COMPRA_MEDIO: TFMTBCDField;
    cxgrd1DBTableView2PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cdsBuscaVALOR_TOTAL: TFMTBCDField;
    cxgrd1DBTableView1PRD_FCI_VALOR_PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1DBTableView1VALOR_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView1CONTEUDO_IMPORTACAO: TcxGridDBColumn;
    cdsBuscaCI: TFMTBCDField;
    cdsBuscaDetalhesFTI_UC: TFloatField;
    cxgrd1DBTableView2FTI_UC: TcxGridDBColumn;
    cdsBuscaDetalhesPRD_UND: TStringField;
    cxgrd1DBTableView2PRD_UND: TcxGridDBColumn;
    cdsBuscaDetalhesPERCENTUAL_ORIGEM: TFMTBCDField;
    cxgrd1DBTableView2PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cdsBuscaDetalhesQUANTIDADE: TFMTBCDField;
    cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn;
    cdsBuscaDetalhesVALOR_COMPRA: TFMTBCDField;
    cxgrd1DBTableView2VALOR_COMPRA: TcxGridDBColumn;
    cdsBuscaDetalhesVALOR_UNITARIO: TFMTBCDField;
    cxgrd1DBTableView2QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView2VALOR_UNITARIO: TcxGridDBColumn;
    cdsBuscaDetalhesVALOR_TOTAL_ITEM: TFMTBCDField;
    cxgrd1DBTableView2VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cdsBuscaDetalhesPARCELA_IMPORTADA: TFMTBCDField;
    cxgrd1DBTableView2PARCELA_IMPORTADA: TcxGridDBColumn;
    edReferencia: TEdit;
    Label1: TLabel;
    cdsBuscaDetalhesPRECO_VENDA: TFMTBCDField;
    Label2: TLabel;
    edDescricao: TEdit;
    frxFCI: TfrxReport;
    frxDBBusca: TfrxDBDataset;
    frxDBBuscaDetalhes: TfrxDBDataset;
    OpenDialog1: TOpenDialog;
    btImportar: TJvArrowButton;
    cxgrd1DBTableView1PTI_SIGLA: TcxGridDBColumn;
    cdsBuscaPTI_SIGLA: TStringField;
    cdsBuscaDetalhesPTI_SIGLA: TStringField;
    cxgrd1DBTableView2PTI_SIGLA: TcxGridDBColumn;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    cdsNivel3: TFDQuery;
    dsNivel3: TDataSource;
    cdsNivel4: TFDQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FMTBCDField10: TFloatField;
    StringField10: TStringField;
    FMTBCDField11: TFMTBCDField;
    FMTBCDField12: TFMTBCDField;
    FMTBCDField13: TFMTBCDField;
    FMTBCDField14: TFMTBCDField;
    FMTBCDField15: TFMTBCDField;
    FMTBCDField16: TFMTBCDField;
    FMTBCDField17: TFMTBCDField;
    FMTBCDField18: TFMTBCDField;
    dsNivel4: TDataSource;
    cdsNivel5: TFDQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FMTBCDField19: TFloatField;
    StringField15: TStringField;
    FMTBCDField20: TFMTBCDField;
    FMTBCDField21: TFMTBCDField;
    FMTBCDField22: TFMTBCDField;
    FMTBCDField23: TFMTBCDField;
    FMTBCDField24: TFMTBCDField;
    FMTBCDField25: TFMTBCDField;
    FMTBCDField26: TFMTBCDField;
    FMTBCDField27: TFMTBCDField;
    dsNivel5: TDataSource;
    cdsNivel6: TFDQuery;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FMTBCDField28: TFloatField;
    StringField20: TStringField;
    FMTBCDField29: TFMTBCDField;
    FMTBCDField30: TFMTBCDField;
    FMTBCDField31: TFMTBCDField;
    FMTBCDField32: TFMTBCDField;
    FMTBCDField33: TFMTBCDField;
    FMTBCDField34: TFMTBCDField;
    FMTBCDField35: TFMTBCDField;
    FMTBCDField36: TFMTBCDField;
    dsNivel6: TDataSource;
    cdsNivel7: TFDQuery;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    FMTBCDField37: TFloatField;
    StringField25: TStringField;
    FMTBCDField38: TFMTBCDField;
    FMTBCDField39: TFMTBCDField;
    FMTBCDField40: TFMTBCDField;
    FMTBCDField41: TFMTBCDField;
    FMTBCDField42: TFMTBCDField;
    FMTBCDField43: TFMTBCDField;
    FMTBCDField44: TFMTBCDField;
    FMTBCDField45: TFMTBCDField;
    dsNivel7: TDataSource;
    cdsNivel8: TFDQuery;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    FMTBCDField46: TFloatField;
    StringField30: TStringField;
    FMTBCDField47: TFMTBCDField;
    FMTBCDField48: TFMTBCDField;
    FMTBCDField49: TFMTBCDField;
    FMTBCDField50: TFMTBCDField;
    FMTBCDField51: TFMTBCDField;
    FMTBCDField52: TFMTBCDField;
    FMTBCDField53: TFMTBCDField;
    FMTBCDField54: TFMTBCDField;
    dsNivel8: TDataSource;
    cdsNivel9: TFDQuery;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    FMTBCDField55: TFloatField;
    StringField35: TStringField;
    FMTBCDField56: TFMTBCDField;
    FMTBCDField57: TFMTBCDField;
    FMTBCDField58: TFMTBCDField;
    FMTBCDField59: TFMTBCDField;
    FMTBCDField60: TFMTBCDField;
    FMTBCDField61: TFMTBCDField;
    FMTBCDField62: TFMTBCDField;
    FMTBCDField63: TFMTBCDField;
    dsNivel9: TDataSource;
    cxgrd1Level2: TcxGridLevel;
    cxgrd1DBTableView3: TcxGridDBTableView;
    cdsNivel3PRD_REFER: TStringField;
    cdsNivel3PRD_REFER_ITENS: TStringField;
    cdsNivel3PRD_DESCRI: TStringField;
    cdsNivel3PTI_SIGLA: TStringField;
    cdsNivel3FTI_UC: TFloatField;
    cdsNivel3PRD_UND: TStringField;
    cdsNivel3PARCELA_IMPORTADA: TFMTBCDField;
    cdsNivel3VALOR_TOTAL_ITEM: TFMTBCDField;
    cdsNivel3VALOR_UNITARIO: TFMTBCDField;
    cdsNivel3VALOR_COMPRA: TFMTBCDField;
    cdsNivel3QUANTIDADE_COMPRADA: TFMTBCDField;
    cdsNivel3PERCENTUAL_ORIGEM: TFMTBCDField;
    cdsNivel3PRECO_VENDA: TFMTBCDField;
    cdsNivel3PRECO_COMPRA_MEDIO: TFMTBCDField;
    cxgrd1DBTableView3PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView3PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView3PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView3PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView3FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView3PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView3PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1DBTableView3VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView3VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView3VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView3QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView3PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView3PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView3PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1Level3: TcxGridLevel;
    cxgrd1DBTableView4: TcxGridDBTableView;
    cxgrd1DBTableView4PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView4PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView4PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView4PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView4FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView4PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView4PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView4PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView4PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView4QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView4VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView4VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView4VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView4PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1Level4: TcxGridLevel;
    cxgrd1DBTableView5: TcxGridDBTableView;
    cxgrd1DBTableView5PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView5PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView5PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView5PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView5FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView5PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView5PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView5PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView5PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView5QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView5VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView5VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView5VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView5PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1Level5: TcxGridLevel;
    cxgrd1DBTableView6: TcxGridDBTableView;
    cxgrd1DBTableView6PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView6PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView6PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView6PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView6FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView6PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView6PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView6PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView6PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView6QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView6VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView6VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView6VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView6PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1Level6: TcxGridLevel;
    cxgrd1DBTableView7: TcxGridDBTableView;
    cxgrd1DBTableView7PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView7PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView7PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView7PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView7FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView7PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView7PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView7PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView7PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView7QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView7VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView7VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView7VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView7PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1Level7: TcxGridLevel;
    cxgrd1DBTableView8: TcxGridDBTableView;
    cxgrd1DBTableView8PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView8PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView8PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView8PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView8FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView8PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView8PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView8PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView8PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView8QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView8VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView8VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView8VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView8PARCELA_IMPORTADA: TcxGridDBColumn;
    cxgrd1Level8: TcxGridLevel;
    cxgrd1DBTableView9: TcxGridDBTableView;
    cxgrd1DBTableView9PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView9PRD_REFER_ITENS: TcxGridDBColumn;
    cxgrd1DBTableView9PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView9PTI_SIGLA: TcxGridDBColumn;
    cxgrd1DBTableView9FTI_UC: TcxGridDBColumn;
    cxgrd1DBTableView9PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView9PRECO_COMPRA_MEDIO: TcxGridDBColumn;
    cxgrd1DBTableView9PRECO_VENDA: TcxGridDBColumn;
    cxgrd1DBTableView9PERCENTUAL_ORIGEM: TcxGridDBColumn;
    cxgrd1DBTableView9QUANTIDADE_COMPRADA: TcxGridDBColumn;
    cxgrd1DBTableView9VALOR_COMPRA: TcxGridDBColumn;
    cxgrd1DBTableView9VALOR_UNITARIO: TcxGridDBColumn;
    cxgrd1DBTableView9VALOR_TOTAL_ITEM: TcxGridDBColumn;
    cxgrd1DBTableView9PARCELA_IMPORTADA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleBold: TcxStyle;
    ProgressBar1: TProgressBar;
    pnBuscando: TPanel;
    frxDBNivel9: TfrxDBDataset;
    frxDBNivel8: TfrxDBDataset;
    frxDBNivel7: TfrxDBDataset;
    frxDBNivel6: TfrxDBDataset;
    frxDBNivel5: TfrxDBDataset;
    frxDBNivel4: TfrxDBDataset;
    frxDBNivel3: TfrxDBDataset;
    cxgrd1DBTableView2PRECO_VENDA: TcxGridDBColumn;
    cdsBuscaDetalhesCONSUMO_TOTAL: TFMTBCDField;
    cdsNivel3CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel4CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel5CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel6CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel7CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel8CONSUMO_TOTAL: TFMTBCDField;
    cdsNivel9CONSUMO_TOTAL: TFMTBCDField;
    cxgrd1DBTableView2CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView3CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView4CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView5CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView6CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView7CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView8CONSUMO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView9CONSUMO_TOTAL: TcxGridDBColumn;
    cdsBuscaDetalhesNCM: TStringField;
    cdsBuscaDetalhesGTIN: TStringField;
    cdsNivel3NCM: TStringField;
    cdsNivel3GTIN: TStringField;
    cdsNivel4NCM: TStringField;
    cdsNivel4GTIN: TStringField;
    cdsNivel5NCM: TStringField;
    cdsNivel5GTIN: TStringField;
    cdsNivel6NCM: TStringField;
    cdsNivel6GTIN: TStringField;
    cdsNivel7NCM: TStringField;
    cdsNivel7GTIN: TStringField;
    cdsNivel8NCM: TStringField;
    cdsNivel8GTIN: TStringField;
    cdsNivel9NCM: TStringField;
    cdsNivel9GTIN: TStringField;
    mtGrid: TFDMemTable;
    mtGridPRD_REFER: TStringField;
    mtGridPRD_REFER_ITENS: TStringField;
    mtGridPRD_DESCRI: TStringField;
    mtGridPTI_SIGLA: TStringField;
    mtGridFTI_UC: TFloatField;
    mtGridCONSUMO_TOTAL: TFMTBCDField;
    mtGridPRD_UND: TStringField;
    mtGridPRECO_COMPRA_MEDIO: TFMTBCDField;
    mtGridPRECO_VENDA: TFMTBCDField;
    mtGridPERCENTUAL_ORIGEM: TFMTBCDField;
    mtGridQUANTIDADE_COMPRADA: TFMTBCDField;
    mtGridVALOR_COMPRA: TFMTBCDField;
    mtGridVALOR_UNITARIO: TFMTBCDField;
    mtGridVALOR_TOTAL_ITEM: TFMTBCDField;
    mtGridPARCELA_IMPORTADA: TFMTBCDField;
    mtGridNCM: TStringField;
    mtGridGTIN: TStringField;
    SalvarFicha: TSaveDialog;
    procedure btnMP_ExpotarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    function AtualizaFCI(prdRefer: string; prdReferPai: string): Double;
    procedure btnrelatoriosClick(Sender: TObject);
    procedure frxFCIBeginDoc(Sender: TObject);
    procedure frxFCIGetValue(const VarName: string; var Value: Variant);
    procedure edReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure btImportarClick(Sender: TObject);
    procedure cdsBuscaCalcFields(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrd1DBTableView2DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView2StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrd1DBTableView3DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView4DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView5DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView6DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView7DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView8DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxgrd1DBTableView1DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure edDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsBuscaDetalhesCalcFields(DataSet: TDataSet);
    procedure cdsNivel3CalcFields(DataSet: TDataSet);
    procedure cdsNivel4CalcFields(DataSet: TDataSet);
    procedure cdsNivel5CalcFields(DataSet: TDataSet);
    procedure cdsNivel6CalcFields(DataSet: TDataSet);
    procedure cdsNivel7CalcFields(DataSet: TDataSet);
    procedure cdsNivel8CalcFields(DataSet: TDataSet);
    procedure cdsNivel9CalcFields(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
   procedure filtro;
   procedure filtroDetalhe;
   function sqlText(prdRefer: string): string;
   procedure  ParcelaImportada(prdRefer: string; var preco, percentualOrigem, QuantidadeComprada: Double);
   function ValorSaida(prdRefer: string): double;
   function AtualizaDetalhe(var vlParcelaImportada: Double; prdRefer: string; var clonePai, cloneFilho: TFDQuery; var tabelaTemp: TFDMemTable): Double;
   procedure Bloco0;
   procedure Bloco5;
   procedure Bloco9;
   function ConsumoTotal(cds: TFDQuery; Post: Boolean): double;
   procedure EnableControls;
   procedure DisableControls;
   procedure GravaArquivoFCI(prdReferPai: string; nivel: integer);

   var
    linhas : TStringList;
    nLinhas: integer;
    linhasBloco5: integer;
    arqPesq: string;
    vlParcelaImportadaTotal: double;
    arquivoIni: string;
    FCI : TStringList;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaConteudoImportacao: TfrmFichaConteudoImportacao;

implementation

uses Uteis, InicioDB, System.DateUtils;
{$R *.dfm}

procedure TfrmFichaConteudoImportacao.FormCreate(Sender: TObject);
var
  temp: string;
begin
  inherited;
  Self.ProcedureFiltro := filtro;
  self.ProcedureFiltroDetalhe := filtroDetalhe;
  self.CampoID := 'PRD_REFER';
  linhas := TStringList.Create;
  arqPesq := Self.Name + '.' + DBInicio.Usuario.CODIGO  + '.pesq';
  edReferencia.Text := LeIni(arqPesq, 'edReferencia', 'text', temp);
  edDescricao.Text := LeIni(arqPesq, 'edDescricao', 'text', temp);
  arquivoIni := dbInicio.SistemaLocal + 'settings\frmFichaConteudoImportacao' + DBInicio.Usuario.USERNAME +  ' .grid';

  cdsBuscaDetalhes.AddIndex('prdRefer', 'PRD_REFER', 'ASC', []);
  cdsBuscaDetalhes.IndexName := 'prdRefer';
  cdsNivel3.AddIndex('prdRefer', 'PRD_REFER', 'ASC', []);
  cdsNivel3.IndexName := 'prdRefer';
  cdsNivel4.AddIndex('prdRefer', 'PRD_REFER', 'ASC', []);
  cdsNivel4.IndexName := 'prdRefer';
  cdsNivel5.AddIndex('prdRefer', 'PRD_REFER', 'ASC', []);
  cdsNivel5.IndexName := 'prdRefer';
  cdsNivel6.AddIndex('prdRefer', 'PRD_REFER', 'ASC', []);
  cdsNivel6.IndexName := 'prdRefer';


end;

procedure TfrmFichaConteudoImportacao.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F6 then
    btnrelatoriosClick(Sender);

  end;

procedure TfrmFichaConteudoImportacao.FormShow(Sender: TObject);
begin
  inherited;
  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
  JvGIFAnimator1.Animate := True;
  cxgrd1DBTableView1.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView1');
  cxgrd1DBTableView2.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView2');
  cxgrd1DBTableView3.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView3');
  cxgrd1DBTableView4.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView4');
  cxgrd1DBTableView5.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView5');
  cxgrd1DBTableView6.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView6');
  cxgrd1DBTableView7.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView7');
  cxgrd1DBTableView8.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView8');
  cxgrd1DBTableView9.RestoreFromIniFile(arquivoIni + '.cxgrd1DBTableView9');
  // btnPesquisa.Click;
end;

procedure TfrmFichaConteudoImportacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravaIni(arqPesq, 'edReferencia', 'text', edReferencia.Text);
  GravaIni(arqPesq, 'edDescricao', 'text', edDescricao.Text);
  cxgrd1DBTableView1.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView1');
  cxgrd1DBTableView2.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView2');
  cxgrd1DBTableView3.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView3');
  cxgrd1DBTableView4.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView4');
  cxgrd1DBTableView5.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView5');
  cxgrd1DBTableView6.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView6');
  cxgrd1DBTableView7.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView7');
  cxgrd1DBTableView8.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView8');
  cxgrd1DBTableView9.StoreToIniFile(arquivoIni + '.cxgrd1DBTableView9');
  inherited;
  Action := caFree;
  frmFichaConteudoImportacao := nil;
end;

procedure TfrmFichaConteudoImportacao.frxFCIBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxFCI.FindObject('logoempresa')).Picture.Bitmap.Assign(DbInicio.empresa.logo);
end;

procedure TfrmFichaConteudoImportacao.frxFCIGetValue(const VarName: string; var Value: Variant);
var
  vlParcelaImportada : double;
  CloneA, Clone: TFDQuery;
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.RAZAO;
  if VarName = 'TOTAL' then
    Value := vlParcelaImportadaTotal;
  if (VarName = 'RECALCULA1') OR (VarName = 'RECALCULA2') OR (VarName = 'RECALCULA3') OR (VarName = 'RECALCULA4') OR (VarName = 'RECALCULA5') then
  begin
    if VarName = 'RECALCULA1' then
    begin
      CloneA := cdsBusca;
      Clone := cdsBuscaDetalhes;
      Clone.SQL.Text := sqlText(CloneA.FieldByName('PRD_REFER').AsString);
      AtualizaDetalhe(vlParcelaImportada, CloneA.FieldByName('PRD_REFER').AsString, CloneA, Clone, mtGrid);
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + vlParcelaImportada;
    end
    else
    if VarName = 'RECALCULA2' then
    begin
      CloneA := cdsBuscaDetalhes;
      Clone := cdsNivel3;
      Clone.SQL.Text := sqlText(CloneA.FieldByName('PRD_REFER_ITENS').AsString);
      AtualizaDetalhe(vlParcelaImportada, CloneA.FieldByName('PRD_REFER_ITENS').AsString, CloneA, Clone, mtGrid);
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + vlParcelaImportada;
    end
    else
    if VarName = 'RECALCULA3' then
    begin
      CloneA := cdsNivel3;
      Clone := cdsNivel4;
      Clone.SQL.Text := sqlText(CloneA.FieldByName('PRD_REFER_ITENS').AsString);
      AtualizaDetalhe(vlParcelaImportada, CloneA.FieldByName('PRD_REFER_ITENS').AsString, CloneA, Clone, mtGrid);
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + vlParcelaImportada;
    end
    else
    if VarName = 'RECALCULA4' then
    begin
      CloneA := cdsNivel4;
      Clone := cdsNivel5;
      Clone.SQL.Text := sqlText(CloneA.FieldByName('PRD_REFER_ITENS').AsString);
      AtualizaDetalhe(vlParcelaImportada, CloneA.FieldByName('PRD_REFER_ITENS').AsString, CloneA, Clone, mtGrid);
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + vlParcelaImportada;
    end
    else
    if VarName = 'RECALCULA5' then
    begin
      CloneA := cdsNivel5;
      Clone := cdsNivel6;
      Clone.SQL.Text := sqlText(CloneA.FieldByName('PRD_REFER_ITENS').AsString);
      AtualizaDetalhe(vlParcelaImportada, CloneA.FieldByName('PRD_REFER_ITENS').AsString, CloneA, Clone, mtGrid);
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + vlParcelaImportada;
    end
    ;
    Value := '';

  end;
end;

procedure TfrmFichaConteudoImportacao.ParcelaImportada(prdRefer: string; var preco, percentualOrigem, QuantidadeComprada: double);
var
  data: TDateTime;
  dias : integer;
  existeNotaEntrada, existeNotaEntradaInterestadual : boolean;
  sqlNotaInterestadual: string;
begin
  pnBuscando.Caption := 'Buscando Parcela Importada';
  {
    0 – Nacional, exceto as indicadas nos códigos  3, 4, 5 e 8
    1 – Estrangeira – Importação direta, exceto a indicada no código 6
    2 – Estrangeira – Adquirida no mercado interno, exceto a indicada no código 7
    3 – Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40% (quarenta por cento)
    4 – Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam o Decreto-Lei nº 288/67, e as Leis nºs 8.248/91, 8.387/91, 10.176/01 e 11.484/07
    5 – Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40% (quarenta por cento)
    6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural
    7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural.
    8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70% (setenta por cento).
  }
    OpenAux( 'SELECT          AVG(ei.ENF_PRECO- (ei.ENF_ICMS / ei.ENF_QTDE  )) AS PRECO, ' +
                     '        CASE ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 0 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 1 THEN  100 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 2 THEN  100 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 3 THEN  50 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 4 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 5 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 6 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 7 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 8 THEN  100 ' +
                     '        END  AS PERCENTUAL_ORIGEM, ' +
                     '        SUM(ei.ENF_QTDE) AS QUANTIDADE ' +
                     ' FROM ENF0001 en ' +
                     '   JOIN ENF_IT01 ei ON (ei.ENF_IT_NOTANUMBER = en.ENF_NOTANUMBER) AND (ei.FOR_CODIGO = en.FOR_CODIGO) ' +
                     '   JOIN FOR0000 fo ON (fo.FOR_CODIGO =  en.FOR_CODIGO AND fo.FOR_UF <> ' + QuotedStr(DBInicio.Empresa.UF) + ')' +
                     ' WHERE  ei.ENF_ORIGEM_MERCADORIA IS NOT NULL ' +
                     '  AND ei.PRD_REFER = ' + QuotedStr(prdRefer) +
                     ' GROUP BY ei.ENF_ORIGEM_MERCADORIA'
            );
    existeNotaEntradaInterestadual := not qAux.IsEmpty;

    if existeNotaEntradaInterestadual then
      sqlNotaInterestadual := '   JOIN FOR0000 fo ON (fo.FOR_CODIGO =  en.FOR_CODIGO AND fo.FOR_UF <> ' + QuotedStr(DBInicio.Empresa.UF) + ')'
    else
      sqlNotaInterestadual := ' ';

    OpenAux('SELECT           AVG(ei.ENF_PRECO- (ei.ENF_ICMS / ei.ENF_QTDE  )) AS PRECO, ' +
                     '        CASE ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 0 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 1 THEN  100 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 2 THEN  100 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 3 THEN  50 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 4 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 5 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 6 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 7 THEN  0 ' +
                     '          WHEN ei.ENF_ORIGEM_MERCADORIA = 8 THEN  100 ' +
                     '        END  AS PERCENTUAL_ORIGEM, ' +
                     '        SUM(ei.ENF_QTDE) AS QUANTIDADE ' +
                     ' FROM ENF0001 en ' +
                     '   JOIN ENF_IT01 ei ON (ei.ENF_IT_NOTANUMBER = en.ENF_NOTANUMBER) AND (ei.FOR_CODIGO = en.FOR_CODIGO) ' +
                     sqlNotaInterestadual +
                     ' WHERE  ei.ENF_ORIGEM_MERCADORIA IS NOT NULL ' +
                     '  AND ei.PRD_REFER = ' + QuotedStr(prdRefer) +
                     ' GROUP BY ei.ENF_ORIGEM_MERCADORIA'
            );

    existeNotaEntrada := not qAux.IsEmpty;
    if existeNotaEntrada then
    begin
      dias :=  60;
      while True do
      begin
        data := now - dias;
        OpenAux('SELECT           AVG(ei.ENF_PRECO- (ei.ENF_ICMS / ei.ENF_QTDE  )) AS PRECO, ' +
                         '        CASE ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 0 THEN  0 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 1 THEN  100 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 2 THEN  100 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 3 THEN  50 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 4 THEN  0 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 5 THEN  0 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 6 THEN  0 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 7 THEN  0 ' +
                         '          WHEN ei.ENF_ORIGEM_MERCADORIA = 8 THEN  100 ' +
                         '        END  AS PERCENTUAL_ORIGEM, ' +
                         '        SUM(ei.ENF_QTDE) AS QUANTIDADE ' +
                         ' FROM ENF0001 en ' +
                         '   JOIN ENF_IT01 ei ON (ei.ENF_IT_NOTANUMBER = en.ENF_NOTANUMBER) AND (ei.FOR_CODIGO = en.FOR_CODIGO) ' +
                         sqlNotaInterestadual +
                         ' WHERE  ei.ENF_ORIGEM_MERCADORIA IS NOT NULL ' +
                         '     AND en.ENF_ENTRADA >= ' + DateToSQL(data) +
                         '  AND ei.PRD_REFER = ' + QuotedStr(prdRefer) +
                         ' GROUP BY ei.ENF_ORIGEM_MERCADORIA'
                );
        if not qAux.IsEmpty then
          break;
        dias := dias + 30;
      end
    end
    else
    begin
      OpenAux('SELECT	          pr.PRD_PCUSTO AS PRECO, ' +
                       '        CASE ' +
                       '          WHEN pr.PRD_ORIGEM  = 0 THEN  0 ' +
                       '          WHEN pr.PRD_ORIGEM  = 1 THEN  100 ' +
                       '          WHEN pr.PRD_ORIGEM  = 2 THEN  100 ' +
                       '          WHEN pr.PRD_ORIGEM  = 3 THEN  50 ' +
                       '          WHEN pr.PRD_ORIGEM  = 4 THEN  0 ' +
                       '          WHEN pr.PRD_ORIGEM  = 5 THEN  0 ' +
                       '          WHEN pr.PRD_ORIGEM  = 6 THEN  0 ' +
                       '          WHEN pr.PRD_ORIGEM  = 7 THEN  0 ' +
                       '          WHEN pr.PRD_ORIGEM  = 8 THEN  100 ' +
                       '        END  AS PERCENTUAL_ORIGEM, ' +
                       '        1 AS QUANTIDADE ' +
                       ' FROM PRD0000 pr ' +
                       ' WHERE  PRD_REFER = ' + QuotedStr(prdRefer)
              );
    end;
    preco := qAux.FieldByName('PRECO').AsFloat;
    percentualOrigem := qAux.FieldByName('PERCENTUAL_ORIGEM').AsFloat;
    quantidadeComprada := qAux.FieldByName('QUANTIDADE').AsFloat;
end;




function TfrmFichaConteudoImportacao.ValorSaida(prdRefer: string): double;
var
  data : TDateTime;
  existeNotaSaida : boolean;
begin
    OpenAux('SELECT	AVG(ni.NF_PRECO -  (ni.NF_ICMSVALOR / ni.NF_QTDE )) AS VALOR_SAIDA ' +
                     ' FROM NF_IT01 ni ' +
                     ' JOIN NF0001 nf ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND ni.PED_CODIGO = nf.PED_CODIGO) ' +
                     ' WHERE  ni.PRD_REFER = ' + QuotedStr(prdRefer)
            );
    existeNotaSaida := qAux.FieldByName('VALOR_SAIDA').AsCurrency > 0;
    if existeNotaSaida then
    begin
      data := Now - 60;
      while True do
      begin
        OpenAux('SELECT	AVG(ni.NF_PRECO -  (ni.NF_ICMSVALOR / ni.NF_QTDE )) AS VALOR_SAIDA ' +
                         ' FROM NF_IT01 ni ' +
                         ' JOIN NF0001 nf ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND ni.PED_CODIGO = nf.PED_CODIGO) ' +
                         ' WHERE  ni.PRD_REFER = ' + QuotedStr(prdRefer) +
                         '   AND nf.NF_EMISSAO >= ' + DateToSQL(data)
                );
        if not qAux.IsEmpty and (qAux.FieldByName('VALOR_SAIDA').AsFloat > 0) then
          break;
        data := data - 30;
      end
    end
    else
    begin
      OpenAux('SELECT	pr.PRD_PVENDA AS VALOR_SAIDA ' +
                       ' FROM PRD0000 pr ' +
                       ' WHERE  PRD_REFER = ' + QuotedStr(prdRefer)
              );
    end;
    Result := qAux.FieldByName('VALOR_SAIDA').AsFloat;
end;




procedure TfrmFichaConteudoImportacao.Bloco0;
var
  linha : string;
begin
  linha := '0000|';
  linha := linha + RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) + '|';
  linha := linha + DBInicio.Empresa.RAZAO + '|';
  linha := linha + '1.0';
  linhas.Add(linha); // linha 1

  linhas.Add('0001|Texto em caracteres UTF-8: (dígrafo BR)''ção'',(dígrafo espanhol-enhe)''ñ'',(trema)''Ü'',(ordinais)''ªº'',(ligamento s+z alemão)''ß''.'); // linha 2

  linha := '0010|';
  linha := linha + RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF) + '|';
  linha := linha + DBInicio.Empresa.RAZAO + '|';
  linha := linha + RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INSC_EST) + '|';
  linha := linha + RetirarMascaraCNPJ_INSC(DBInicio.Empresa.ENDERECO) + '|';
  linha := linha + RetiraTodaMascara(DBInicio.Empresa.CEP) + '|';
  linha := linha + DBInicio.Empresa.CIDADE + '|';
  linha := linha + DBInicio.Empresa.UF;
  linhas.Add(linha); // linha 3

  nLinhas := 4;
  linha := '0990|' + IntToStr(nLinhas);
  linhas.Add(linha); // linha 4
  nLinhas := 5;

end;

procedure TfrmFichaConteudoImportacao.Bloco5;
var
  linha : string;
begin
  linha := '5001';
  linhas.Add(linha); // linha 5

  nLinhas := nLinhas + 1;
  linhasbloco5 := 0;

  cdsBusca.First;
  while not cdsBusca.Eof do
  begin
    linhasBloco5 := linhasBloco5 + 1;
    nLinhas := nLinhas + 1;
    linha := '5020|';
    linha := linha + cdsBuscaPRD_DESCRI.AsString + '|';
    linha := linha + RetiraTodaMascara(cdsBuscaNCM.AsString) + '|';
    linha := linha + cdsBuscaPRD_REFER.AsString + '|';
    linha := linha + cdsBuscaGTIN.AsString + '|';
    linha := linha + cdsBuscaPRD_UND.AsString + '|';
    linha := linha + FloatToStr(RoundTo(cdsBuscaVALOR_TOTAL.AsCurrency, -2)) + '|';
    linha := linha + FloatToStr(RoundTo(cdsBuscaPRD_FCI_VALOR_PARCELA_IMPORTADA.AsCurrency, -2)) + '|';
    linha := linha + FloatToStr(RoundTo(cdsBuscaCI.AsCurrency, -2));
    linhas.Add(linha);
    cdsBusca.Next;
  end;

  nLinhas := nLinhas + 1;
  linha := '5990|';
  linha := linha + IntToStr(linhasBloco5 + 2);
  linhas.Add(Linha)

end;

procedure TfrmFichaConteudoImportacao.Bloco9;
var
  linha : string;
begin
  linha := '9001';
  linhas.Add(linha);

  linha := '9900|0000|1';
  linhas.Add(linha);

  linha := '9900|0010|1';
  linhas.Add(linha);

  linha := '9900|5020|' + IntToStr(linhasBloco5);
  linhas.Add(linha);

  linha := '9990|5';
  linhas.Add(linha);

  linhas.Add('9999|' + IntToStr(nLinhas + 5));

end;

procedure TfrmFichaConteudoImportacao.btImportarClick(Sender: TObject);
var
  importarFCI, linhaFCI: TStringList;
  j, i : Integer;
  codigoMercadoria, codigoFCI : string;
begin
  inherited;
  importarFCI := TStringList.Create;
  linhaFCI := TStringList.Create;

  if not OpenDialog1.Execute()
    then Exit;
    
  importarFCI.LoadFromFile(OpenDialog1.FileName);

  linhaFCI.Delimiter := '|';
  linhaFCI.StrictDelimiter := True;
  
  for j := 0 to importarFCI.Count -1 do
  begin
    linhaFCI.DelimitedText := importarFCI[j];
    for i := 0 to linhaFCI.Count -1 do
    begin
      if (i = 0) and (linhaFCI[i] = '5020') then
      begin
        codigoMercadoria := linhaFCI[3];
        codigoFCI := linhaFCI[9];
        ExecSql('UPDATE PRD0000 SET PRD_CODIGO_FCI = ' + QuotedStr(codigoFCI) + ' WHERE PRD_REFER = ' + QuotedStr(codigoMercadoria) );                
      end;
    end;                           
  end;

  MessageDlg('Arquivo Importado com sucesso.', mtInformation, [mbOK], 0);

  importarFCI.Free;
  linhaFCI.Free;

end;

procedure TfrmFichaConteudoImportacao.btnMP_ExpotarClick(Sender: TObject);
begin
  if not SaveDialog1.Execute then
    Exit;
  linhas.Clear;
  Bloco0;
  Bloco5;
  Bloco9;
  linhas.SaveToFile(SaveDialog1.FileName, TEncoding.UTF8);
  CopyToClipBoard(SaveDialog1.FileName);
  MessageDlg('Arquivo ' + SaveDialog1.FileName + ' Exportado com Sucesso', mtInformation, [mbOk],0);
end;


procedure TfrmFichaConteudoImportacao.btnPesquisaClick(Sender: TObject);
begin
  DisableControls;
  PanelAguarde.Visible := True;
  inherited;
  EnableControls;
  PanelAguarde.Visible := False;
end;


procedure TfrmFichaConteudoImportacao.cdsBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBuscaVALOR_TOTAL.AsFloat := valorSaida(cdsBuscaPRD_REFER.AsString);
end;

procedure TfrmFichaConteudoImportacao.cdsBuscaDetalhesCalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsBuscaDetalhes, True);
end;


procedure TfrmFichaConteudoImportacao.cdsNivel3CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel3, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel4CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel4, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel5CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel5, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel6CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel6, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel7CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel7, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel8CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel8, True);
end;

procedure TfrmFichaConteudoImportacao.cdsNivel9CalcFields(DataSet: TDataSet);
begin
  inherited;
  ConsumoTotal(cdsNivel9, True);
end;

procedure TfrmFichaConteudoImportacao.filtro;
var sqltext : string;
begin
  cdsBusca.Close;
  sqltext := ' SELECT pr.PRD_REFER, pr.PRD_DESCRI, pt.PTI_SIGLA, IPI_CODIGO AS NCM, ' +
             '        pr.PRD_CODBARRA AS GTIN, pr.PRD_UND, pr.PRD_ORIGEM, ' +
             '        pr.PRD_FCI_CONTEUDO_IMPORTACAO AS CI, ' +
             '        pr.PRD_FCI_VALOR_PARCELA_IMPORTADA ' +
             '   FROM PRD0000 pr ' +
             '   JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER ) ' +
             '   JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
             '   WHERE 1 = 1 ' +
             iif(edReferencia.Text = '', '', ' AND FT.PRD_REFER LIKE ' + QuotedStr(edReferencia.Text + '%' )) +
             iif(edDescricao.Text = '', '', ' AND PR.PRD_DESCRI LIKE ' + QuotedStr('%' + edDescricao.Text + '%')) +
             '   ORDER BY pr.PRD_REFER ';
  cdsBusca.SQL.Text := sqltext;
  cdsBusca.Open;
end;

function TfrmFichaConteudoImportacao.sqlText(prdRefer: string): string;
begin

  result := 'SELECT fi.PRD_REFER,  fi.PRD_REFER_ITENS , pr.PRD_DESCRI, ' +
             ' pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN, ' +
             ' pt.PTI_SIGLA, fi.FTI_UC, pr.PRD_UND, ' +
             ' COALESCE(PRD_FCI_VALOR_PARCELA_IMPORTADA, 0) AS PARCELA_IMPORTADA, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS VALOR_COMPRA, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS PRECO_VENDA, ' +
             ' CAST(0.0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO ' +
             '   FROM FTC_IT01 fi ' +
             '   JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
             '   JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
             iif(prdRefer = '', '', ' WHERE fi.PRD_REFER = ' + QuotedStr(prdRefer) )+
             ' ORDER BY fi.PRD_REFER, fi.PRD_REFER_ITENS  ';
  if DBInicio.IsDesenvolvimento then
    copyToClipBoard(Result);
end;

procedure TfrmFichaConteudoImportacao.filtroDetalhe;
begin
  cdsBuscaDetalhes.Close;
  cdsBuscaDetalhes.SQL.Text := sqlText(cdsBuscaPRD_REFER.AsString);
  cdsBuscaDetalhes.Open;
  cdsBuscaDetalhes.Last;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView1DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada : double;
  prdRefer: string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView1PRD_REFER.Index);
  cdsBuscaDetalhes.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsBusca, cdsBuscaDetalhes, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView2DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada: double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView2PRD_REFER_ITENS.Index);
  cdsNivel3.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsBuscaDetalhes, cdsNivel3, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView3DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada: double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView3PRD_REFER_ITENS.Index);
  cdsNivel4.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel3, cdsNivel4, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView4DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada: double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView4PRD_REFER_ITENS.Index);
  cdsNivel5.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel4, cdsNivel5, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView5DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada : double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView5PRD_REFER_ITENS.Index);
  cdsNivel6.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel5, cdsNivel6, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView6DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada : double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView6PRD_REFER_ITENS.Index);
  cdsNivel7.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel6, cdsNivel7, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView7DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada : double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView7PRD_REFER_ITENS.Index);
  cdsNivel8.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel7, cdsNivel8, mtGrid);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView8DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  vlParcelaImportada : double;
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView8PRD_REFER_ITENS.Index);
  cdsNivel9.SQL.Text := sqlText(prdRefer);
  AtualizaDetalhe(vlParcelaImportada, prdRefer, cdsNivel8, cdsNivel9, mtGrid);
end;


procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView2StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  prdRefer: string;
begin
  inherited;
  try
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PRD_REFER_ITENS');
    prdRefer := VarToStr(ARecord.Values[AColumn.Index]);
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
      if BuscaUmDadoSqlAsInteger('SELECT COUNT(PRD_REFER) FROM FTC_IT01 WHERE PRD_REFER = ' + QuotedStr(prdRefer ) ) > 0 then
        AStyle := cxStyleBold;
  except
    on e: exception do
      showmessage(e.message);
  end;
end;

procedure TfrmFichaConteudoImportacao.edDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnPesquisa.Click;
end;

procedure TfrmFichaConteudoImportacao.edReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnPesquisa.Click;
end;

procedure TfrmFichaConteudoImportacao.BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  CI: double;
  prdOrigem: integer;
begin
  inherited;

  if MessageDlg('Deseja Recalcular a Ficha de Conteúdo de Importação?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  vlParcelaImportadaTotal := 0;;
  AtualizaFCI(cdsBuscaPRD_REFER.AsString, '');
  CI := (vlParcelaImportadaTotal / cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency) * 100;
  cdsBusca.DisableControls;
  cdsBusca.Edit;
  cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency := valorSaida(cdsBuscaPRD_REFER.AsString);
  cdsBusca.Post;
  cdsBusca.EnableControls;

  if (CI > 0) and (CI < 1) then
    CI := 1;
  case Round(CI) of
    1..40 : prdOrigem := 5;
    41..70: prdOrigem := 3;
    71..10000: prdOrigem := 8
    else prdOrigem := 0;
  end;

  ExecSql('UPDATE PRD0000 SET ' +
          // ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL((CI / cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency) * 100) + ', ' +
          ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL((vlParcelaImportadaTotal / cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency) * 100) + ', ' +
          ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL(vlParcelaImportadaTotal) + ', ' +
          ' PRD_FCI_DATA_GERACAO = ' + DateTimeToSQL(Now) + ', ' +
          ' PRD_ORIGEM = ' + IntToStr(prdOrigem) +
          ' WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString));

  btnPesquisa.Click;
  MessageDlg('Ficha Recalculada com sucesso.', mtInformation, [mbOk], 0);
end;


function TfrmFichaConteudoImportacao.AtualizaFCI(prdRefer: string; prdReferPai: string): Double;
var
  PrdReferItem: string;
  CI, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado, vlParcelaImportadaLocal, quantidadePai, ResFCI : Double;
  prdOrigem: Integer;
  Auxiliar: TFDQuery;
begin
  Auxiliar := TFDQuery.Create(Self);
  Auxiliar.Connection := dbConn;
  Auxiliar.SQL.Text :=
          'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS, pt.PTI_SIGLA, fi.FTI_UC, CAST(0 AS NUMERIC(18, 5)) AS CONSUMO_TOTAL' +
          '  FROM FTC_IT01 fi ' +
          '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
          '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
          '  WHERE fi.PRD_REFER = ' + QuotedStr(prdRefer)
  ;
  Auxiliar.Open;

  while not Auxiliar.Eof do
  begin

    prdReferItem := Auxiliar.FieldByName('PRD_REFER_ITENS').AsString;
    if Auxiliar.FieldByName('PTI_SIGLA').AsString = 'MP' then
    begin
      precoImportado := 0;
      percentualOrigemImportado := 0;
      quantidadeCompradaImportado := 0;
      ParcelaImportada(prdReferItem, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado);  // ENTRADA DE NOTA

      quantidadePai := ConsumoTotal(Auxiliar, False);

      // CI := precoImportado * quantidadePai;
      CI := quantidadePai * ((precoImportado / 100) * percentualOrigemImportado) ;

      if CI = 0 then
        vlParcelaImportadaLocal := 0
      else
        vlParcelaImportadaLocal := (percentualOrigemImportado / 100) * CI;
      if (CI > 0) and (CI < 1) then
        CI := 1;
      case Round(CI) of
        1..40 : prdOrigem := 5;
        41..70: prdOrigem := 3;
        71..10000: prdOrigem := 8
        else prdOrigem := 0;
      end;
      // quantidadePai := BuscaUmDadoSqlAsfloat('SELECT FTI_UC FROM FTC_IT01 FI WHERE PRD_REFER = ' + QuotedStr(prdReferPai) +  ' AND PRD_REFER_itens = ' + QuotedStr(prdRefer) ) ;
;
      ExecSql('UPDATE PRD0000 SET ' +
              ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL(CI) + ', ' +
              ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL(  (vlParcelaImportadaLocal *  Auxiliar.FieldByName('FTI_UC').AsFloat) * quantidadePai ) + ', ' +
              ' PRD_FCI_DATA_GERACAO = ' + DateTimeToSQL(Now) + ', ' +
              ' PRD_ORIGEM = ' + IntToStr(prdOrigem) +
              ' WHERE PRD_REFER = ' + QuotedStr(prdReferItem));

      // vlParcelaImportadaTotal := vlParcelaImportadaTotal + (vlParcelaImportadaLocal * quantidadePai * Auxiliar.FieldByName('FTI_UC').AsFloat  );
      vlParcelaImportadaTotal := vlParcelaImportadaTotal + (CI);
    end
    else
    if Auxiliar.FieldByName('PTI_SIGLA').AsString = 'PI' then
    begin
      resFCI := AtualizaFCI(prdReferItem, prdRefer);
      {
      ParcelaImportada(prdReferItem, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado);  // ENTRADA DE NOTA
      quantidadePai := ConsumoTotal(Auxiliar, False);
      CI := quantidadePai * ((precoImportado / 100) * percentualOrigemImportado) ;
      if (CI > 0) and (CI < 1) then
        CI := 1;
      case Round(CI) of
        1..40 : prdOrigem := 5;
        41..70: prdOrigem := 3;
        71..10000: prdOrigem := 8
        else prdOrigem := 0;
      end;
      ExecSql('UPDATE PRD0000 SET ' +
              ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL(CI) + ', ' +
              ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL( ResFCI ) + ', ' +
              ' PRD_FCI_DATA_GERACAO = ' + DateTimeToSQL(Now) + ', ' +
              ' PRD_ORIGEM = ' + IntToStr(prdOrigem) +
              ' WHERE PRD_REFER = ' + QuotedStr(prdRefer ));
      }

    end;
    Auxiliar.Next;
  end;
  Result := vlParcelaImportadaTotal ;
end;

function TfrmFichaConteudoImportacao.AtualizaDetalhe(var vlParcelaImportada: Double; prdRefer: string; var clonePai, cloneFilho: TFDQuery; var tabelaTemp: TFDMemTable): Double;
var
  precoImportado, percentualOrigemImportado, quantidadeCompradaImportado,
  CI, quantidadeItensPai, Resultado: double;
  CloneP, CloneF: TFDQuery;

  PRD_REFER,
  PRD_REFER_ITENS,
  PRD_DESCRI,
  PTI_SIGLA,
  PRD_UND,
  NCM,
  GTIN
    : TStringField;

  FTI_UC,
  CONSUMO_TOTAL,
  PRECO_VENDA,

  QUANTIDADE_COMPRADA,
  VALOR_UNITARIO,
  VALOR_TOTAL_ITEM,
  PERCENTUAL_ORIGEM,
  PRECO_COMPRA_MEDIO,
  VALOR_COMPRA,
  PARCELA_IMPORTADA
    : TFloatField;


begin
  CI := 0;
  pnBuscando.Visible := True;

  if not cloneFilho.Active then
    cloneFilho.Open;
  cloneFilho.Filtered := False;
  cloneFilho.Filter := 'PRD_REFER = ' + QuotedStr(prdRefer);
  cloneFilho.Filtered := True;
  ProgressBar1.Visible := True;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := cloneFilho.RecordCount;
  Resultado := 0;

        {
  if tabelaTemp.Name <> 'mtGrid' then
  begin
    tabelaTemp.Close;

    if tabelaTemp.FieldDefs.Count = 0 then
    begin
      PRD_REFER := TStringField.Create(tabelaTemp);
      PRD_REFER.FieldName := 'PRD_REFER';
      PRD_REFER_ITENS := TStringField.Create(tabelaTemp);
      PRD_REFER_ITENS.FieldName := 'PRD_REFER_ITENS';
      PRD_DESCRI := TStringField.Create(tabelaTemp);
      PRD_DESCRI.FieldName := 'PRD_DESCRI';
      PTI_SIGLA := TStringField.Create(tabelaTemp);
      PTI_SIGLA.FieldName := 'PTI_SIGLA';
      PRD_UND := TStringField.Create(tabelaTemp);
      PRD_UND.FieldName := 'PRD_UND';
      NCM := TStringField.Create(tabelaTemp);
      NCM.FieldName := 'NCM';
      GTIN := TStringField.Create(tabelaTemp);
      GTIN.FieldName := 'GTIN';

      FTI_UC := TFloatField.Create(tabelaTemp);
      FTI_UC.FieldName := 'FTI_UC';
      CONSUMO_TOTAL := TFloatField.Create(tabelaTemp);
      CONSUMO_TOTAL.FieldName := 'CONSUMO_TOTAL';
      PRECO_VENDA := TFloatField.Create(tabelaTemp);
      PRECO_VENDA.FieldName := 'PRECO_VENDA';

      QUANTIDADE_COMPRADA := TFloatField.Create(tabelaTemp);
      QUANTIDADE_COMPRADA.FieldName := 'QUANTIDADE_COMPRADA';
      VALOR_UNITARIO := TFloatField.Create(tabelaTemp);
      VALOR_UNITARIO.FieldName := 'VALOR_UNITARIO';
      VALOR_TOTAL_ITEM := TFloatField.Create(tabelaTemp);
      VALOR_TOTAL_ITEM.FieldName := 'VALOR_TOTAL_ITEM';
      PERCENTUAL_ORIGEM := TFloatField.Create(tabelaTemp);
      PERCENTUAL_ORIGEM.FieldName := 'PERCENTUAL_ORIGEM';
      PRECO_COMPRA_MEDIO := TFloatField.Create(tabelaTemp);
      PRECO_COMPRA_MEDIO.FieldName := 'PRECO_COMPRA_MEDIO';
      VALOR_COMPRA := TFloatField.Create(tabelaTemp);
      VALOR_COMPRA.FieldName := 'VALOR_COMPRA';
      PARCELA_IMPORTADA := TFloatField.Create(tabelaTemp);
      PARCELA_IMPORTADA.FieldName := 'PARCELA_IMPORTADA';

      CONSUMO_TOTAL := TFloatField.Create(tabelaTemp);
      CONSUMO_TOTAL.FieldName := 'CONSUMO_TOTAL';
      PRECO_VENDA := TFloatField.Create(tabelaTemp);
      PRECO_VENDA.FieldName := 'PRECO_VENDA';


      tabelaTemp.FieldDefs.Add('PRD_REFER', ftString, 20, False);
      tabelaTemp.FieldDefs.Add('PRD_REFER_ITENS', ftString, 20, False);
      tabelaTemp.FieldDefs.Add('PRD_DESCRI', ftString, 100, False);
      tabelaTemp.FieldDefs.Add('PTI_SIGLA', ftString, 2, False);
      tabelaTemp.FieldDefs.Add('PRD_UND', ftString, 6, False);
      tabelaTemp.FieldDefs.Add('NCM', ftString, 8, False);
      tabelaTemp.FieldDefs.Add('GTIN', ftString, 13, False);

      tabelaTemp.FieldDefs.Add('FTI_UC', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('CONSUMO_TOTAL', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('PRECO_VENDA', ftFloat, 0, False);

      tabelaTemp.FieldDefs.Add('QUANTIDADE_COMPRADA', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('VALOR_UNITARIO', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('VALOR_TOTAL_ITEM', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('PERCENTUAL_ORIGEM', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('PRECO_COMPRA_MEDIO', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('VALOR_COMPRA', ftFloat, 0, False);
      tabelaTemp.FieldDefs.Add('PARCELA_IMPORTADA', ftFloat, 0, False);
    end;
    tabelaTemp.CreateDataSet;
    tabelaTemp.Open;
  end;
                 }

  while not cloneFilho.eof do
  begin
    ProgressBar1.Position := cloneFilho.RecNo;

    precoImportado := 0;
    percentualOrigemImportado := 0;
    quantidadeCompradaImportado := 0;
    ParcelaImportada(cloneFilho.FieldByName('PRD_REFER_ITENS').AsString, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado);  // ENTRADA DE NOTA

    Application.ProcessMessages;

//    if tabelaTemp.Name = 'mtGrid' then       // Qualquer alteração no cálculo deve ser replicado em cloneFilho e tabelaTemp
//    begin
      cloneFilho.Edit;
      cloneFilho.FieldByName('QUANTIDADE_COMPRADA').AsFloat := quantidadeCompradaImportado;
      cloneFilho.FieldByName('VALOR_UNITARIO').AsFloat := precoImportado;
      cloneFilho.FieldByName('VALOR_TOTAL_ITEM').AsFloat := precoImportado * cloneFilho.FieldByName('FTI_UC').AsFloat;
      cloneFilho.FieldByName('PERCENTUAL_ORIGEM').AsFloat := percentualOrigemImportado;
      cloneFilho.FieldByName('PRECO_COMPRA_MEDIO').AsFloat := precoImportado;
      cloneFilho.FieldByName('VALOR_COMPRA').AsFloat := precoImportado * quantidadeCompradaImportado;
      CI := ((percentualOrigemImportado / 100) * precoImportado) * cloneFilho.FieldByName('FTI_UC').AsFloat;
      quantidadeItensPai := BuscaUmDadoSqlAsfloat('SELECT FTI_UC FROM FTC_IT01 FI WHERE PRD_REFER = ' + QuotedStr(clonePai.FieldByName('PRD_REFER').AsString) +  ' AND PRD_REFER_ITENS = ' + QuotedStr(cloneFilho.FieldByName('PRD_REFER').AsString) );

      if cloneFilho.FieldByName('PTI_SIGLA').AsString = 'MP' then
        Resultado := Resultado + cloneFilho.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado);

      cloneFilho.FieldByName('PARCELA_IMPORTADA').AsFloat := cloneFilho.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado); //Resultado ???

      cloneFilho.Post;

//    end
//    else
{    begin
      tabelaTemp.Insert;

      tabelaTemp.FieldByName('PRD_REFER').AsString := cloneFilho.FieldByName('PRD_REFER').AsString;
      tabelaTemp.FieldByName('PRD_REFER_ITENS').AsString := cloneFilho.FieldByName('PRD_REFER_ITENS').AsString;
      tabelaTemp.FieldByName('PRD_DESCRI').AsString := cloneFilho.FieldByName('PRD_DESCRI').AsString;
      tabelaTemp.FieldByName('PTI_SIGLA').AsString := cloneFilho.FieldByName('PTI_SIGLA').AsString;
      tabelaTemp.FieldByName('PRD_UND').AsString := cloneFilho.FieldByName('PRD_UND').AsString;
      tabelaTemp.FieldByName('NCM').AsString := cloneFilho.FieldByName('NCM').AsString;
      tabelaTemp.FieldByName('GTIN').AsString := cloneFilho.FieldByName('GTIN').AsString;

      tabelaTemp.FieldByName('FTI_UC').AsFloat := cloneFilho.FieldByName('FTI_UC').AsFloat;
      tabelaTemp.FieldByName('PRECO_VENDA').AsFloat := cloneFilho.FieldByName('PRECO_VENDA').AsFloat;

      tabelaTemp.FieldByName('QUANTIDADE_COMPRADA').AsFloat := quantidadeCompradaImportado;
      tabelaTemp.FieldByName('VALOR_UNITARIO').AsFloat := precoImportado;
      tabelaTemp.FieldByName('VALOR_TOTAL_ITEM').AsFloat := precoImportado * cloneFilho.FieldByName('FTI_UC').AsFloat;
      tabelaTemp.FieldByName('PERCENTUAL_ORIGEM').AsFloat := percentualOrigemImportado;
      tabelaTemp.FieldByName('PRECO_COMPRA_MEDIO').AsFloat := precoImportado;
      tabelaTemp.FieldByName('VALOR_COMPRA').AsFloat := precoImportado * quantidadeCompradaImportado;
      CI := ((percentualOrigemImportado / 100) * precoImportado) * cloneFilho.FieldByName('FTI_UC').AsFloat;
      quantidadeItensPai := BuscaUmDadoSqlAsfloat('SELECT FTI_UC FROM FTC_IT01 FI WHERE PRD_REFER = ' + QuotedStr(clonePai.FieldByName('PRD_REFER').AsString) +  ' AND PRD_REFER_itens = ' + QuotedStr(cloneFilho.FieldByName('PRD_REFER').AsString) );

      tabelaTemp.FieldByName('CONSUMO_TOTAL').AsFloat := ConsumoTotal(cloneFilho, False);

      if cloneFilho.FieldByName('PTI_SIGLA').AsString = 'MP' then
        Resultado := Resultado + tabelaTemp.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado);

      tabelaTemp.FieldByName('PARCELA_IMPORTADA').AsFloat := Resultado;
      tabelaTemp.Post;


    end;      }
    cloneFilho.Next;

    pnBuscando.Caption := 'Atualizando Tabela Local...';
    Application.ProcessMessages;


  end;


  vlParcelaImportada := (percentualOrigemImportado / 100) * CI;
  Result := Resultado;

  if tabelaTemp.Active then
    tabelaTemp.First;

  ProgressBar1.Visible := False;
  pnBuscando.Visible := False;
end;

function TfrmFichaConteudoImportacao.ConsumoTotal(cds: TFDQuery; Post: Boolean): double;
var
  prdRefer, prdFilho, ptiSigla: string;
begin
  prdRefer := UpperCase(cdsBuscaPRD_REFER.AsString); // UpperCase(edReferencia.Text); //  cds.FieldByName('PRD_REFER').AsString;
  prdFilho := cds.FieldByName('PRD_REFER_ITENS').AsString;
  ptiSigla := cds.FieldByName('PTI_SIGLA').AsString;
  qAux.Close;
  qAux.SQL.Text :=
       ' WITH RECURSIVE ficha (id, item_pai, filhos, nivel, caminho, consumo, ctotal) ' +
       ' AS ( ' +
       '  SELECT ce.fti_registro, ce.prd_refer, ce.prd_refer_itens, 1, CAST(ce.prd_refer AS VARCHAR(100)),  1, ce.fti_uc ' +
       '  FROM ftc_it01 ce ' +
       '  WHERE ce.prd_refer = ' + QuotedStr(prdRefer) +
       ' UNION ALL ' +
       ' SELECT e.fti_registro, e.prd_refer, e.prd_refer_itens, fc.nivel + 1, CAST(fc.caminho || ' + QuotedStr('->') + ' || e.prd_refer AS VARCHAR(1000)) ' +
       '  ,fc.consumo, fc.ctotal * e.fti_uc ' +
       ' FROM ficha fc ' +
       ' JOIN ftc_it01 e ON fc.filhos = e.prd_refer ' +
       ' ), ' +
       ' ultimos_registros AS ( ' +
       ' SELECT s1.id, s1.item_pai, s1.filhos, s1.nivel, s1.caminho,ctotal ' +
       ' FROM ficha s1 ' +
       ' WHERE NOT EXISTS ( ' +
       ' SELECT 1 ' +
       ' FROM ficha s2 ' +
       ' WHERE s2.item_pai = s1.item_pai ' +
       '   AND s2.nivel > s1.nivel ' +
       ' ) ' +
       ') ' +
       ' SELECT caminho, item_pai, filhos, nivel ,pt.pti_sigla,ctotal ' +
       ' FROM ultimos_registros ' +
       ' join prd0000 pr on pr.prd_refer = ultimos_registros.filhos ' +
       ' join prd_tipo pt on pt.pti_codigo=pr.pti_codigo ' +
       iif(ptiSigla = 'PI'
            , ' where pt.pti_sigla = ' + QuotedStr('PI') + '  AND filhos = ' + QuotedStr(prdFilho)
            , ' where pt.pti_sigla = ' + QuotedStr('MP') + '  AND filhos = ' + QuotedStr(prdFilho)
          ) +
       ' ORDER BY item_pai ';
  qAux.Open;
  if DBInicio.IsDesenvolvimento then
    copyToClipboard(qAux.SQL.Text);
  if (qAux.FieldByName('CTOTAL').AsFloat > 0) and Post then
    cds.FieldByName('CONSUMO_TOTAL').AsFloat := qAux.FieldByName('CTOTAL').AsFloat;

  result := qAux.FieldByName('CTOTAL').AsFloat;


end;

procedure TfrmFichaConteudoImportacao.EnableControls;
begin
  cdsBusca.EnableControls;
  cdsBuscaDetalhes.EnableControls;
  cdsNivel3.EnableControls;
  cdsNivel4.EnableControls;
  cdsNivel5.EnableControls;
  cdsNivel6.EnableControls;
  cdsNivel7.EnableControls;
  cdsNivel8.EnableControls;
  cdsNivel9.EnableControls;
end;

procedure TfrmFichaConteudoImportacao.DisableControls;
begin
  cdsBusca.DisableControls;
  cdsBuscaDetalhes.DisableControls;
  cdsNivel3.DisableControls;
  cdsNivel4.DisableControls;
  cdsNivel5.DisableControls;
  cdsNivel6.DisableControls;
  cdsNivel7.DisableControls;
  cdsNivel8.DisableControls;
  cdsNivel9.DisableControls;

end;


procedure TfrmFichaConteudoImportacao.btnrelatoriosClick(Sender: TObject);
var
  prdRefer: string;
begin
  inherited;
  if cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0] = nil then
  begin
    Aviso('Por favor, selecione um registro');
    Exit;
  end;


  if not SalvarFicha.Execute then
    Exit;

  prdRefer := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index]);
  DisableControls;
  cdsbusca.Filter := 'PRD_REFER = ' + QuotedStr(prdRefer);
  cdsBusca.Filtered := True;
  cdsBusca.First;
  cdsBuscaDetalhes.First;

  // frxFCI.ShowReport();


  FCI := TStringList.Create;
  FCI.Add(
    '    <style>  body '       + #123 + 'font-size: 1em; font-family: Arial;' + #125 + '</style>' +
    '    <style>  .pi '        + #123 + 'font-size: 1.1em; font-family: Arial; font-weight: bold; color:grey; ' + #125 + '</style>' +
    '    <style>  .cabecalho ' + #123 + 'font-size: 1.3em; font-family: Arial; font-weight: bold;' + #125 + '</style>' +
    '    <style>  table'       + #123 + 'border:0px;' + #125 + '</style>' +
    '    <style>  th '         + #123 + 'font-style:bold; text-align:left;' + #125 + '</style>' +
    '    <style>  .direita '   + #123 + 'text-align:right;' + #125 + '</style>' +
    '    <style>  .tipo '      + #123 + 'width: 50px;' + #125 + '</style>' +

    '<table>'  +
    '<tr class="cabecalho">'  +
      '<th>Referência</th>' +
      '<th>Descrição</th>' +
      '<th class="direita">Valor da Parcela Importada</th>' +
      '<th class="direita">Conteudo de Importação</th>' +
      '<th>NCM</th>' +
      '<th>GTIN</th>' +
    '</tr>'
  );

  FCI.Add(
          '<tr class="cabecalho">' +
            '<td>' + cdsbusca.FieldByName('PRD_REFER').AsString +  '</td>'  +
            '<td>' + cdsbusca.FieldByName('PRD_DESCRI').AsString + '</td>' +
            '<td class="direita">' + FormatFloat('###,###,##0.00', cdsbusca.FieldByName('PRD_FCI_VALOR_PARCELA_IMPORTADA').AsFloat) + '</td>' +
            '<td class="direita">' + FormatFloat('###,###,##0.00', cdsbusca.FieldByName('CI').AsFloat) + '</td>' +
            '<td>' + cdsbusca.FieldByName('NCM').AsString + '</td>' +
            '<td>' + cdsbusca.FieldByName('GTIN').AsString + '</td>' +
          '</tr>'
         );

  FCI.Add('</table>');

  FCI.Add('<hr>');

  FCI.Add('<table>');


  FCI.Add(
    '<tr>'  +
      '<th>Referência</th>' +
      '<th>Descrição</th>' +
      '<th class="tipo">Tipo</th>' +
      '<th class="tipo">Unidade</th>' +
      '<th class="direita">UC</th>' +
      '<th class="direita">Valor de Compra</th>' +
      '<th class="direita">Perc. Origem</th>' +
      '<th class="direita">Parcela Importada</th>' +
      '<th>NCM</th>' +
      '<th>GTIN</th>' +
    '</tr>'
  );
  GravaArquivoFCI(prdrefer, 0);
  FCI.Add('</table>');
  FCI.SaveToFile(SalvarFicha.FileName);
  FCI.Free;
  Aviso('Arquivo Gerado com Sucesso');

  EnableControls;
end;


procedure TfrmFichaConteudoImportacao.GravaArquivoFCI(prdReferPai: string; nivel: integer);
var
  ClonePai, CloneFilho: TFDQuery;
  mtNivel: TFDMemTable;
  vlParcelaImportada: Double;
begin

  ClonePai := TFDQuery.Create(Self);
  ClonePai.Connection := dbConn;
  ClonePai.SQL.Text := sqlText(prdReferPai);
  ClonePai.Open;

  mtNivel := TFDMemTable.Create(Self);

  while not ClonePai.Eof do
  begin
    CloneFilho := TFDQuery.Create(cdsBuscaDetalhes);
    CloneFilho.Connection := dbConn;
    CloneFilho.SQL.Text := sqlText(ClonePai.FieldByName('PRD_REFER').AsString);
    CloneFilho.Open;
    if (mtNivel.RecordCount > 0) and mtNivel.Eof then
      Exit;
    if ClonePai.FieldByName('PTI_SIGLA').AsString = 'PI'  then
    begin
      AtualizaDetalhe(vlParcelaImportada, ClonePai.FieldByName('PRD_REFER').AsString, ClonePai, Clonefilho, mtNivel);
    end
    else
    begin
      if not mtNivel.Active then
      begin
        mtNivel.data := ClonePai.data;
      end;
    end;
    while not mtNivel.Eof do
    begin
      if mtNivel.FieldByName('PTI_SIGLA').AsString = 'PI' then
      begin
        FCI.Add(
                 '<tr class="pi">' +
                    '<td>' + Replicate('&emsp;', nivel + 1)  + mtNivel.FieldByName('PRD_REFER_ITENS').AsString +  '</td>'  +
                    '<td>' + Replicate('&emsp;', nivel + 1)  + mtNivel.FieldByName('PRD_DESCRI').AsString + '</td>' +
                    '<td>' + mtNivel.FieldByName('PTI_SIGLA').AsString + '</td>' +
                    '<td>' + mtNivel.FieldByName('PRD_UND').AsString + '</td>' +
                    '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('FTI_UC').AsFloat) + '</td>' +
                    '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('VALOR_COMPRA').AsFloat) + '</td>' +
                    '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('PERCENTUAL_ORIGEM').AsFloat) + '</td>' +
                    '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('PARCELA_IMPORTADA').AsFloat) + '</td>' +
                    '<td>' + mtNivel.FieldByName('NCM').AsString + '</td>' +
                    '<td>' + mtNivel.FieldByName('GTIN').AsString + '</td>' +
                 '</tr>'
               );
        Inc(nivel);
        GravaArquivoFCI(mtNivel.FieldByName('PRD_REFER_ITENS').AsString, nivel);
        Dec(Nivel);
      end
      else
             FCI.Add(
                    '<tr>' +
                      '<td>' + Replicate('&emsp;', nivel + 1)   + mtNivel.FieldByName('PRD_REFER_ITENS').AsString + '</td>' +
                      '<td>' + Replicate('&emsp;', nivel + 1)   + mtNivel.FieldByName('PRD_DESCRI').AsString + '</td>' +
                      '<td>' + mtNivel.FieldByName('PTI_SIGLA').AsString + '</td>' +
                      '<td>' + mtNivel.FieldByName('PRD_UND').AsString + '</td>' +
                      '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('FTI_UC').AsFloat) + '</td>' +
                      '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('VALOR_COMPRA').AsFloat) + '</td>' +
                      '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('PERCENTUAL_ORIGEM').AsFloat) + '</td>' +
                      '<td class="direita">' + FormatFloat('###,###,##0.00', mtNivel.FieldByName('PARCELA_IMPORTADA').AsFloat) + '</td>' +
                      '<td>' + mtNivel.FieldByName('NCM').AsString + '</td>' +
                      '<td>' + mtNivel.FieldByName('GTIN').AsString + '</td>' +
                    '</tr>' + CRLF
                  );
      mtNivel.Next;
      CloneFilho.Next;
    end;
    ClonePai.Next;
  end;
  ClonePai.Free;
  CloneFilho.Free;
end;



end.
