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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGridDBDataDefinitions,
  cxDataControllerConditionalFormattingRulesManagerDialog, SgDbSeachComboUnit,
  ComboBoxRW, JvBaseDlg, JvSelectDirectory, JvExComCtrls, JvDateTimePicker,
  Vcl.Mask, RxToolEdit;

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
    Label1: TLabel;
    cdsBuscaDetalhesPRECO_VENDA: TFMTBCDField;
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
    cdsNivel4FTI_UC: TFloatField;
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
    cdsNivel5FTI_UC: TFloatField;
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
    cdsNivel6FTI_UC: TFloatField;
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
    cdsNivel7FTI_UC: TFloatField;
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
    cdsNivel8FTI_UC: TFloatField;
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
    cdsNivel9FTI_UC: TFloatField;
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
    cdsBuscaFTC_BASEFORMULA: TIntegerField;
    cxgrd1DBTableView1FTC_BASEFORMULA: TcxGridDBColumn;
    cbProduto: TComboBoxRw;
    edReferencia: TEdit;
    GerarFicha: TMenuItem;
    ListadeItens1: TMenuItem;
    btProcessarGrid: TJvArrowButton;
    chkCalcula: TCheckBox;
    frxDBListaItens: TfrxDBDataset;
    frxListaItens: TfrxReport;
    GerarGrid: TMenuItem;
    SelecionarPasta: TJvSelectDirectory;
    Label2: TLabel;
    Label3: TLabel;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    PercentuaisdaFCI1: TMenuItem;
    frxPercentuaisFCI: TfrxReport;
    cdsBuscaPRD_FCI_DATA_GERACAO: TSQLTimeStampField;
    procedure btnMP_ExpotarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    function AtualizaFCI(prdRefer: string; prdReferPai: string; quantidadePai: double; var totalPI: double): Double;
    procedure ChamaAtualizacaoFCI(prdRefer: string; prdReferPai: string; quantidadePai: double; var totalPI: double);
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
    procedure cxgrd1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView2DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView3DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView4DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView5DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView6DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView7DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxgrd1DBTableView8DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cbProdutoChange(Sender: TObject);
    procedure edReferenciaExit(Sender: TObject);
    procedure GerarFichaClick(Sender: TObject);
    procedure btProcessarGridClick(Sender: TObject);
    procedure ListadeItens1Click(Sender: TObject);
    procedure frxListaItensBeginDoc(Sender: TObject);
    procedure frxListaItensGetValue(const VarName: string; var Value: Variant);
    procedure GerarGridClick(Sender: TObject);
    procedure PercentuaisdaFCI1Click(Sender: TObject);
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
   function CalcularConsumoTotal(referencia, referenciaFilha: string; baseFormula: double): Double;
   procedure EnableControls;
   procedure DisableControls;
   procedure GravaArquivoFCI(prdReferPai: string; nivel: integer);
    function ConsumoTotal(cds: TFDQuery; Post: Boolean): double;

   var
    linhas : TStringList;
    nLinhas: integer;
    linhasBloco5: integer;
    arqPesq: string;
    vlParcelaImportadaTotal: double;
    arquivoIni: string;
    FCI : TStringList;
    base, UCDetalhe, UCNivel3, UCNivel4, UCNivel5, UCNivel6, UCNivel7, UCNivel8: double;

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
  edReferencia.SetFocus;
  DataInicial.Date := Now - 30;
  DataFinal.Date := Now;
end;

procedure TfrmFichaConteudoImportacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravaIni(arqPesq, 'edReferencia', 'text', edReferencia.Text);
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

procedure TfrmFichaConteudoImportacao.frxListaItensBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxPercentuaisFCI.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmFichaConteudoImportacao.frxListaItensGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
  if (VarName  = 'PRD_ORIGEM') then
  begin
    case cdsBuscaPRD_ORIGEM.AsInteger of
      0 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Nacional';
      1 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Estrangeira';
      2 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Estrangeira';
      3 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Nacional';
      4 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Nacional';
      5 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Nacional';
      6 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Estrangeira';
      7 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Estrangeira';
      8 : Value := cdsBuscaPRD_ORIGEM.AsString + ' - Nacional';
    end;
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




procedure TfrmFichaConteudoImportacao.PercentuaisdaFCI1Click(Sender: TObject);
begin
  inherited;
  frxPercentuaisFCI.ShowReport();
end;

function TfrmFichaConteudoImportacao.ValorSaida(prdRefer: string): double;
var
  data : TDateTime;
  existeNotaSaida : boolean;
begin
    OpenAux('SELECT	AVG(ni.NF_PRECO -  (ni.NF_ICMSVALOR / ni.NF_QTDE )) AS VALOR_SAIDA ' +
                     ' FROM NF_IT01 ni ' +
                     ' JOIN NF0001 nf ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND ni.PED_CODIGO = nf.PED_CODIGO) ' +
                     ' WHERE ni.PRD_REFER = ' + QuotedStr(prdRefer) +
                     '   AND ni.NF_QTDE > 0 '
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
                         '   AND nf.NF_EMISSAO >= ' + DateToSQL(data) +
                     '   AND ni.NF_QTDE > 0 '
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
  if DataFinal.Date < DataInicial.Date then
  begin
    uteis.Aviso('A Data Final é menor que a Data Incial');
    Abort;
  end;
  if (DataInicial.Date > StrToDate('30/12/1899') ) and (DataFinal.Date = StrToDate('30/12/1899') )   then
  begin
    uteis.Aviso('A Data Final não foi informada');
    Abort;
  end;
  if (DataFinal.Date > StrToDate('30/12/1899') ) and (DataInicial.Date = StrToDate('30/12/1899') )   then
  begin
    uteis.Aviso('A Data Inicial não foi informada');
    Abort;
  end;
  DisableControls;
  PanelAguarde.Visible := True;
  if (edReferencia.Text = '') and (cbProduto.Text = '') then
  begin
    PanelAguarde.Visible := False;
    Uteis.Aviso('Informe alguma Referência ou Descrição para pesquisa');
    Exit;
  end;
  inherited;
  EnableControls;
  PanelAguarde.Visible := False;
end;


procedure TfrmFichaConteudoImportacao.cbProdutoChange(Sender: TObject);
begin
  inherited;
  edReferencia.Text := cbProduto.IdRetorno;
//  btnPesquisa.Click;
end;

procedure TfrmFichaConteudoImportacao.cdsBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if chkCalcula.Checked then
    cdsBuscaVALOR_TOTAL.AsFloat := valorSaida(cdsBuscaPRD_REFER.AsString);
end;

procedure TfrmFichaConteudoImportacao.cdsBuscaDetalhesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBuscaDetalhes.FieldByName('CONSUMO_TOTAL').AsFloat := base * DataSet.FieldByName('FTI_UC').ASFloat;
end;


procedure TfrmFichaConteudoImportacao.cdsNivel3CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel3.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * DataSet.FieldByName('FTI_UC').ASFloat;

end;

procedure TfrmFichaConteudoImportacao.cdsNivel4CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.cdsNivel5CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * ucNivel4 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.cdsNivel6CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * ucNivel4 * ucNivel5 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.cdsNivel7CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * ucNivel4 * ucNivel5 * ucNivel6 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.cdsNivel8CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * ucNivel4 * ucNivel5 * ucNivel6 * ucNivel7 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.cdsNivel9CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsNivel4.FieldByName('CONSUMO_TOTAL').AsFloat := base * UCDetalhe * UCNivel3 * ucNivel4 * ucNivel5 * ucNivel6 * ucNivel7 * ucNivel8 * DataSet.FieldByName('FTI_UC').ASFloat;
end;

procedure TfrmFichaConteudoImportacao.filtro;
var
  sqltext : string;
begin
//  cdsBusca.Close;

  sqltext := ' SELECT DISTINCT pr.PRD_REFER, pr.PRD_DESCRI, pt.PTI_SIGLA, pr.IPI_CODIGO AS NCM, ' +
             '        pr.PRD_CODBARRA AS GTIN, pr.PRD_UND, pr.PRD_ORIGEM, ' +
             '        pr.PRD_FCI_CONTEUDO_IMPORTACAO AS CI, ' +
             '        pr.PRD_FCI_VALOR_PARCELA_IMPORTADA, ' +
             '        ft.FTC_BASEFORMULA, pr.PRD_FCI_DATA_GERACAO ' +
             '   FROM PRD0000 pr ' +
             '   JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER ) ' +
             '   JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
             iif(DataInicial.Date > StrToDateTime('30/12/1899'), 'JOIN NF_IT01 ni ON (ni.PRD_REFER = pr.PRD_REFER)', '') +
             iif(DataInicial.Date > StrToDateTime('30/12/1899'), 'JOIN NF0001 nf ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND ni.PED_CODIGO = nf.PED_CODIGO)', '') +
             '   WHERE 1 = 1 ' +
             iif(edReferencia.Text = '', '', ' AND FT.PRD_REFER LIKE ' + QuotedStr(edReferencia.Text + '%' )) +
             iif(cbProduto.Text = '', '', ' AND PR.PRD_DESCRI LIKE UPPER(' + QuotedStr('%' + cbProduto.Text + '%') + ')' ) +
             iif(DataInicial.Date > StrToDateTime('30/12/1899'), ' AND nf.NF_EMISSAO >= ' + DateToSQL(DataInicial.Date), '') +
             iif(DataInicial.Date > StrToDateTime('30/12/1899'), ' AND nf.NF_EMISSAO <= ' + DateToSQL(DataFinal.Date), '') +
             '   ORDER BY pr.PRD_REFER ';
  cdsBusca.SQL.Text := sqltext;
  if DBInicio.IsDesenvolvimento then
    copyToClipBoard(sqlText);
//  cdsBusca.Open;
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

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  base := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView1FTC_BASEFORMULA.Index);
//  cxgrd1DBTableView1.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView2DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView2PRD_REFER_ITENS.Index);
  cdsNivel3.SQL.Text := sqlText(prdRefer);
  cdsNivel3.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView2DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCDetalhe := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView2CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView2.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView3DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView3PRD_REFER_ITENS.Index);
  cdsNivel4.SQL.Text := sqlText(prdRefer);
  cdsNivel4.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView3DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel3 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView3CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView3.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView4DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView4PRD_REFER_ITENS.Index);
  cdsNivel5.SQL.Text := sqlText(prdRefer);
  cdsNivel5.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView4DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel4 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView4CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView4.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView5DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView5PRD_REFER_ITENS.Index);
  cdsNivel6.SQL.Text := sqlText(prdRefer);
  cdsNivel6.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView5DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel5 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView5CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView5.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView6DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView6PRD_REFER_ITENS.Index);
  cdsNivel7.SQL.Text := sqlText(prdRefer);
  cdsNivel7.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView6DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel6 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView6CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView6.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView7DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView7PRD_REFER_ITENS.Index);
  cdsNivel8.SQL.Text := sqlText(prdRefer);
  cdsNivel8.Open;
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView7DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel7 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView7CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView7.ViewData.Collapse(true);
end;

procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView8DataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  prdRefer : string;
begin
  inherited;
  prdRefer := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView8PRD_REFER_ITENS.Index);
  cdsNivel9.SQL.Text := sqlText(prdRefer);
  cdsNivel9.Open;
end;


procedure TfrmFichaConteudoImportacao.cxgrd1DBTableView8DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  UCNivel8 := ADataController.GetValue(ARecordIndex, cxgrd1DBTableView8CONSUMO_TOTAL.Index);
//  cxgrd1DBTableView8.ViewData.Collapse(true);
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

procedure TfrmFichaConteudoImportacao.edReferenciaExit(Sender: TObject);
begin
  inherited;
  cbProduto.idRetorno := edReferencia.Text;
end;

procedure TfrmFichaConteudoImportacao.edReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnPesquisa.Click;
end;


procedure TfrmFichaConteudoImportacao.ChamaAtualizacaoFCI(prdRefer, prdReferPai: string; quantidadePai: double; var totalPI: double);
var
  tPI, CI, valorTotal: double;
  prdOrigem: integer;
begin
  valorTotal := 0;
  AtualizaFCI(prdRefer, '', quantidadePai, tPI);
  CI := (vlParcelaImportadaTotal / valorTotal) * 100;
  cdsBusca.Edit;
  valorTotal := valorSaida(prdRefer);
  cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency := valorTotal; // valorSaida(prdRefer);
  cdsBusca.Post;


  if valorTotal = 0 then // cdsBusca.FieldByName('VALOR_TOTAL').AsCurrency = 0 then
  begin
    cdsBusca.EnableControls;
    panelAguarde.Visible := False;
    uteis.Aviso('Não existe Nota Fiscal de Saída deste Produto, e também não está cadastrado o Preço de venda.' + #13 + 'Impossível Prosseguir');
    Abort;
  end;


  if (CI > 0) and (CI < 1) then
    CI := 1;
  case Round(CI) of
    1..40 : prdOrigem := 5;
    41..70: prdOrigem := 3;
    71..10000: prdOrigem := 8
    else prdOrigem := 0;
  end;


  ExecSql('UPDATE PRD0000 SET ' +
          ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL((vlParcelaImportadaTotal / valorTotal) * 100) + ', ' +
          ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL(vlParcelaImportadaTotal) + ', ' +
          ' PRD_FCI_DATA_GERACAO = ' + DateTimeToSQL(Now) + ', ' +
          ' PRD_ORIGEM = ' + IntToStr(prdOrigem) +
          ' WHERE PRD_REFER = ' + QuotedStr(prdRefer));

end;


procedure TfrmFichaConteudoImportacao.BotaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  quantidadePai, tPI, baseFormula: double;
  rec, I, fim: integer;
  prdRefer : string;
begin
  inherited;

  if TComponent(Sender).className = 'TcxButtonEdit' then
    if MessageDlg('Deseja Recalcular a Ficha de Conteúdo de Importação?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      Exit;
  panelAguarde.Visible := True;
  Application.ProcessMessages;
  cdsBusca.DisableControls;

  rec := cdsBusca.RecNo;
  // loop no grid
  if TComponent(Sender).className = 'TcxButtonEdit' then
  begin
    fim := 0;
  end
  else
  begin
    fim := cxgrd1DBTableView1.DataController.RecordCount - 1;
  end;


  for I := 0 to fim do
  begin
    vlParcelaImportadaTotal := 0;
    if TComponent(Sender).className = 'TcxButtonEdit' then
    begin
      if (cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1FTC_BASEFORMULA.Index] = null)
        or (cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1FTC_BASEFORMULA.Index] = 0)
          then baseFormula := 0
          else baseFormula := cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1FTC_BASEFORMULA.Index];
    end
    else
    begin
      if (cxgrd1DBTableView1.DataController.Values[I, cxgrd1DBTableView1FTC_BASEFORMULA.Index] = null)
        or (cxgrd1DBTableView1.DataController.Values[I, cxgrd1DBTableView1FTC_BASEFORMULA.Index] = 0)
          then baseFormula := 0
          else baseFormula := cxgrd1DBTableView1.DataController.Values[I, cxgrd1DBTableView1FTC_BASEFORMULA.Index];
    end;

    if (baseFormula = 0)
    then
      begin
        cdsBusca.EnableControls;
        panelAguarde.Visible := False;
        uteis.Aviso('A Base da Composição não está cadastrada na Ficha Técnica do produto ' + prdRefer +  #13 + 'Impossível Processar');
        Continue;
      end;
    if TComponent(Sender).className = 'TcxButtonEdit' then
    begin
      prdRefer := cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
    end
    else
    begin
      prdRefer := cxgrd1DBTableView1.DataController.Values[I, cxgrd1DBTableView1PRD_REFER.Index];
    end;
    quantidadePai  := baseFormula;
    tPI := 0;

    ChamaAtualizacaoFCI(prdRefer, '', quantidadePai, tPI);
  end;


  cdsBusca.EnableControls;
  btnPesquisa.Click;
  cdsBusca.RecNo := rec;
  panelAguarde.Visible := False;
  MessageDlg('Ficha Recalculada com sucesso.', mtInformation, [mbOk], 0);
end;


function TfrmFichaConteudoImportacao.AtualizaFCI(prdRefer: string; prdReferPai: string; quantidadePai: double; var totalPI: double): Double;
var
  PrdReferItem: string;
  CI, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado, vlParcelaImportadaLocal, totalPILocal : Double;
  prdOrigem: Integer;
  Auxiliar: TFDQuery;
begin
  Application.ProcessMessages;
  Auxiliar := TFDQuery.Create(Self);
  Auxiliar.Connection := dbConn;
  Auxiliar.SQL.Text :=
          'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS, pt.PTI_SIGLA, fi.FTI_UC, CAST(0 AS NUMERIC(18, 5)) AS CONSUMO_TOTAL' +
          '  FROM FTC_IT01 fi ' +
          '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
          '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
          '  WHERE fi.PRD_REFER = ' + QuotedStr(prdRefer)  +
          '  ORDER BY fi.PRD_REFER, fi.PRD_REFER_ITENS'
  ;
  Auxiliar.Open;
  if dbInicio.IsDesenvolvimento then
    copyToClipboard(Auxiliar.SQL.Text);

  while not Auxiliar.Eof do
  begin

    prdReferItem := Auxiliar.FieldByName('PRD_REFER_ITENS').AsString;
    if Auxiliar.FieldByName('PTI_SIGLA').AsString = 'MP' then
    begin
      precoImportado := 0;
      percentualOrigemImportado := 0;
      quantidadeCompradaImportado := 0;
      ParcelaImportada(prdReferItem, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado);  // ENTRADA DE NOTA

      CI := (quantidadePai * Auxiliar.FieldByName('FTI_UC').AsFloat) * ((precoImportado / 100) * percentualOrigemImportado) ;

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

      ExecSql('UPDATE PRD0000 SET ' +
              ' PRD_FCI_CONTEUDO_IMPORTACAO = ' + FloatToSQL(CI) + ', ' +
              ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL(  (vlParcelaImportadaLocal *  Auxiliar.FieldByName('FTI_UC').AsFloat) * quantidadePai ) + ', ' +
              ' PRD_FCI_DATA_GERACAO = ' + DateTimeToSQL(Now) + ', ' +
              ' PRD_ORIGEM = ' + IntToStr(prdOrigem) +
              ' WHERE PRD_REFER = ' + QuotedStr(prdReferItem));

      vlParcelaImportadaTotal := vlParcelaImportadaTotal + ((vlParcelaImportadaLocal *  Auxiliar.FieldByName('FTI_UC').AsFloat) * quantidadePai );
      totalPI := totalPI + ((vlParcelaImportadaLocal *  Auxiliar.FieldByName('FTI_UC').AsFloat) * quantidadePai )
    end
    else
    begin
      totalPILocal := 0;
      AtualizaFCI(prdReferItem, prdRefer, quantidadePai * Auxiliar.FieldByName('FTI_UC').AsFloat, totalPILocal);
      ExecSql('UPDATE PRD0000 SET ' +
              ' PRD_FCI_VALOR_PARCELA_IMPORTADA = ' + FloatToSQL(totalPILocal) +
              ' WHERE PRD_REFER = ' + QuotedStr(prdReferItem));
      totalPI := totalPI + totalPILocal;
    end;
    Auxiliar.Next;
  end;
  Result := vlParcelaImportadaTotal ;
end;

function TfrmFichaConteudoImportacao.AtualizaDetalhe(var vlParcelaImportada: Double; prdRefer: string; var clonePai, cloneFilho: TFDQuery; var tabelaTemp: TFDMemTable): Double;
var
  precoImportado, percentualOrigemImportado, quantidadeCompradaImportado,
  CI, Resultado: double;

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


  while not cloneFilho.eof do
  begin
    ProgressBar1.Position := cloneFilho.RecNo;

    precoImportado := 0;
    percentualOrigemImportado := 0;
    quantidadeCompradaImportado := 0;
    ParcelaImportada(cloneFilho.FieldByName('PRD_REFER_ITENS').AsString, precoImportado, percentualOrigemImportado, quantidadeCompradaImportado);  // ENTRADA DE NOTA

    Application.ProcessMessages;

    if tabelaTemp.Name = 'mtGrid' then       // Qualquer alteração no cálculo deve ser replicado em cloneFilho e tabelaTemp
    begin
      cloneFilho.Edit;
      cloneFilho.FieldByName('QUANTIDADE_COMPRADA').AsFloat := quantidadeCompradaImportado;
      cloneFilho.FieldByName('VALOR_UNITARIO').AsFloat := precoImportado;
      cloneFilho.FieldByName('VALOR_TOTAL_ITEM').AsFloat := precoImportado * cloneFilho.FieldByName('FTI_UC').AsFloat;
      cloneFilho.FieldByName('PERCENTUAL_ORIGEM').AsFloat := percentualOrigemImportado;
      cloneFilho.FieldByName('PRECO_COMPRA_MEDIO').AsFloat := precoImportado;
      cloneFilho.FieldByName('VALOR_COMPRA').AsFloat := precoImportado * quantidadeCompradaImportado;
      CI := ((percentualOrigemImportado / 100) * precoImportado) * cloneFilho.FieldByName('FTI_UC').AsFloat;
//      quantidadeItensPai := BuscaUmDadoSqlAsfloat('SELECT FTI_UC FROM FTC_IT01 FI WHERE PRD_REFER = ' + QuotedStr(clonePai.FieldByName('PRD_REFER').AsString) +  ' AND PRD_REFER_ITENS = ' + QuotedStr(cloneFilho.FieldByName('PRD_REFER').AsString) );

      if cloneFilho.FieldByName('PTI_SIGLA').AsString = 'MP' then
        Resultado := Resultado + cloneFilho.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado);

      cloneFilho.FieldByName('PARCELA_IMPORTADA').AsFloat := cloneFilho.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado); //Resultado ???

      cloneFilho.Post;

    end
    else
    begin
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
      // quantidadeItensPai := BuscaUmDadoSqlAsfloat('SELECT FTI_UC FROM FTC_IT01 FI WHERE PRD_REFER = ' + QuotedStr(clonePai.FieldByName('PRD_REFER').AsString) +  ' AND PRD_REFER_itens = ' + QuotedStr(cloneFilho.FieldByName('PRD_REFER').AsString) );

      tabelaTemp.FieldByName('CONSUMO_TOTAL').AsFloat := ConsumoTotal(cloneFilho, False);

      if cloneFilho.FieldByName('PTI_SIGLA').AsString = 'MP' then
        Resultado := Resultado + tabelaTemp.FieldByName('CONSUMO_TOTAL').AsFloat * ((precoImportado / 100) * percentualOrigemImportado);

      tabelaTemp.FieldByName('PARCELA_IMPORTADA').AsFloat := Resultado;
      tabelaTemp.Post;


    end;
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

function TfrmFichaConteudoImportacao.CalcularConsumoTotal(referencia, referenciaFilha: string; baseFormula: double): Double;
var
  query: TFDQuery;
  consumoTotal, consumoFilha: Double;

begin
  consumoTotal := 0;
  Result := 0;

  query := TFDQuery.Create(nil);
  try
    query.Connection := dbConn;
    query.SQL.Text :=
                   ' SELECT ' +
                   '   fi.FTI_REGISTRO, ' +
                   '   fi.PRD_REFER, ' +
                   '   fi.PRD_REFER_ITENS, ' +
                   '   fi.FTI_UC, ' +
                   '   pt.PTI_SIGLA, ' +
                   '   ft.FTC_BASEFORMULA ' +
                   ' FROM FTC_IT01 fi ' +
                   ' JOIN PRD0000 p ON (p.PRD_REFER = fi.PRD_REFER_ITENS) ' +
                   ' JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = p.PTI_CODIGO) ' +
                   ' JOIN FTC0000 ft ON (ft.PRD_REFER = fi.PRD_REFER) ' +
                   ' WHERE fi.PRD_REFER = ' + QuotedStr(referencia) +
                   ' AND   fi.PRD_REFER_ITENS = ' + QuotedStr(referenciaFilha) +
                   ' ORDER BY fi.PRD_REFER_ITENS';
    if dbInicio.IsDesenvolvimento then
      copyToClipboard(query.SQL.Text);
    query.Open;


    while not query.Eof do
    begin
      referenciaFilha := query.FieldByName('PRD_REFER_ITENS').AsString;
      consumoFilha := query.FieldByName('FTI_UC').AsFloat;

      if query.FieldByName('PTI_SIGLA').AsString = 'MP' then
      begin
        result := consumoFilha * baseFormula;
      end
      else
        result := result * CalcularConsumoTotal(referencia, referenciaFilha, consumoFilha);

      query.Next;
    end;
  finally
    // Feche a query e libere a memória
    query.Close;
    query.Free;
  end;

  // Retorne o consumo total
  Result := consumoTotal;
end;


function TfrmFichaConteudoImportacao.ConsumoTotal(cds: TFDQuery; Post: Boolean): double;
var
  prdRefer, prdFilho, ptiSigla: string;
  baseFormula, ConsumoTotal: double;
begin
  prdRefer := UpperCase(cdsBuscaPRD_REFER.AsString); // UpperCase(edReferencia.Text); //  cds.FieldByName('PRD_REFER').AsString;
  prdFilho := cds.FieldByName('PRD_REFER_ITENS').AsString;
  ptiSigla := cds.FieldByName('PTI_SIGLA').AsString;
  baseFormula := cdsBuscaFTC_BASEFORMULA.AsFloat * cds.FieldByName('FTI_UC').AsFloat;
  consumoTotal := CalcularConsumoTotal(prdRefer, prdFilho, baseFormula)   ;
  if Post then
    cds.FieldByName('CONSUMO_TOTAL').AsFloat := consumoTotal;
  result := consumoTotal;
  exit;


  qAux.Close;
  qAux.SQL.Text :=
       ' WITH RECURSIVE ficha (id, item_pai, filhos, nivel, caminho, consumo, ctotal) ' +
       ' AS ( ' +
       '  SELECT ce.fti_registro, ce.prd_refer, ce.prd_refer_itens, 1, CAST(ce.prd_refer AS VARCHAR(100)),  1, ce.fti_uc ' +
       '  FROM ftc_it01 ce ' +
       '  WHERE ce.prd_refer = ' + QuotedStr(prdRefer) +
       ' UNION ALL ' +
       ' SELECT e.fti_registro, e.prd_refer, e.prd_refer_itens, fc.nivel + 1, CAST(fc.caminho || ' + QuotedStr('->') + ' || e.prd_refer AS VARCHAR(32000)) ' +
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
  I, fim: integer;
begin
  inherited;

  if TComponent(Sender).Name = 'GerarFicha' then
  begin
    if cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0] = nil then
    begin
      Aviso('Por favor, selecione um registro');
      Exit;
    end;
    fim := 0;
    cdsbusca.Filter := 'PRD_REFER = ' + QuotedStr(VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index]));
    cdsBusca.Filtered := True;
  end
  else // GerarGrid
  begin
    if cxgrd1DBTableView1.DataController.RecordCount = 0 then
    begin
      Aviso('Por favor, escolha um filtro de registros');
      Exit;
    end;
    fim := cxgrd1DBTableView1.DataController.RecordCount;

  end;

  // prdRefer := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index]);

  FCI := TStringList.Create;
  DisableControls;
  cdsBusca.First;
  cdsBuscaDetalhes.First;


  if TComponent(Sender).Name = 'GerarFicha' then
  begin
    prdRefer := VarToStr(cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index]);
    SalvarFicha.FileName := prdRefer + '.html';
    if not SalvarFicha.Execute then
      Exit;

  end
  else // Gerar Grid
  begin
    if not SelecionarPasta.Execute then
      Exit;
  end;


  for I := 0 to fim do
  begin

    if TComponent(Sender).Name = 'GerarGrid' then
      prdRefer := cdsbusca.FieldByName('PRD_REFER').AsString;

    // frxFCI.ShowReport();

    FCI.Clear;
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
    if TComponent(Sender).Name = 'GerarGrid' then
      SalvarFicha.FileName := SelecionarPasta.Directory + '\' + prdRefer + '.html';
    FCI.SaveToFile(SalvarFicha.FileName);
    if TComponent(Sender).Name = 'GerarGrid' then
      cdsBusca.Next;

  end;
  FCI.Free;
  cdsBusca.Filtered := False;
  if TComponent(Sender).Name = 'GerarGrid' then
    Aviso( IntToStr(fim) + ' Arquivos Gerados com Sucesso')
  else
    Aviso('Arquivo Gerado com Sucesso');

  EnableControls;
end;


procedure TfrmFichaConteudoImportacao.btProcessarGridClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('Deseja Recalcular todas as Fichas de Conteúdo de Importação apresentadas no grid?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      Exit;

  BotaoPropertiesButtonClick(Sender, 0);
end;

procedure TfrmFichaConteudoImportacao.GerarFichaClick(Sender: TObject);
begin
  inherited;
  btnrelatoriosClick(Sender);
end;

procedure TfrmFichaConteudoImportacao.GerarGridClick(Sender: TObject);
begin
  inherited;
  btnrelatoriosClick(Sender);
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



procedure TfrmFichaConteudoImportacao.ListadeItens1Click(Sender: TObject);
begin
  inherited;
  frxListaItens.ShowReport();
end;

end.
