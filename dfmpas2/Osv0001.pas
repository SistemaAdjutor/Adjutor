{******************************************************************************
 *  Programa...: Osv0001-Nome formulario = FormOrdServCentro
 *  Objetivo...: Buscar O.S p/ manutenção
 *  Analista...: Márcio Neu Pacheco
 *  Programador: Jackson e Márcio
 *
 *  Comentários:
 *
 *  Criação..........: Set/99
 *  Ultima Alteração.: Jun/03
 *  Alterado por.....: Marcio
 *
 *
 *  Conversao........: 08/04
 *  Alterado por.....: Jefferson A S
 *
 *****************************************************************************}
unit Osv0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ComCtrls, Mask,  rxToolEdit,
   rxCurrEdit, DBCtrls, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod,
  ImgList, FMTBCd, MIDASLIB, Data.DBXFirebird, ppDesignLayer, ppParameter,
  System.ImageList, SimpleDS;

type
  TFormOrdServCentro = class(TForm)

    Grp_Pesquisa: TGroupBox;
    Rd_OS: TRadioButton;
    Rd_Pedido: TRadioButton;
    Rd_Refer: TRadioButton;
    Panel2: TPanel;
    Bit_GeraOS: TBitBtn;
    Bit_Imprimir: TBitBtn;
    BitEstornar: TBitBtn;
    Bit_concluir: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel1: TPanel;
    Bit_Processo: TBitBtn;
    Bit_Celulas: TBitBtn;
    Grp_filtra: TGroupBox;
    Edt_Nome: TEdit;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    SqlCdsOPImp: TSQLClientDataSet;
    DsOP: TDataSource;
    DsCelOP: TDataSource;
    SqlCdsCelOp: TSQLClientDataSet;
    GroupBox1: TGroupBox;
    Rad_Concluida: TRadioButton;
    Rad_Aberta: TRadioButton;
    Rad_Estornada: TRadioButton;
    Rad_Todas: TRadioButton;
    Rd_Descricao: TRadioButton;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamPMT_CELULAPROD: TStringField;
    SqlCdsParamPMT_MDL_OP: TStringField;
    SqlCdsParamPMT_PROCESPROD: TStringField;
    SqlCdsParamPMT_UNFORMULA: TSmallintField;
    SqlCdsCelOpCEL_CODIGO: TStringField;
    SqlCdsCelOpCEL_NOME: TStringField;
    SqlCdsCelOpCEM_TUPTRAB: TFMTBCdField;
    SqlCdsCelOpCEM_TRABALHO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DbGridOS: TDBGrid;
    DbGridCelulas: TDBGrid;
    SqlCdsOPImpOSV_STATUS_CC: TStringField;
    SqlCdsParamPMT_VARIACOES: TStringField;
    SqlCdsItemOP: TSQLClientDataSet;
    DsItemOP: TDataSource;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtOp: TEdit;
    EdtEmissao: TEdit;
    EdtRefer: TEdit;
    EdtDescri: TEdit;
    CurrQtde: TCurrencyEdit;
    GrpVar: TGroupBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel7: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    CurrTotal: TCurrencyEdit;
    CurrMod1: TCurrencyEdit;
    CurrMod2: TCurrencyEdit;
    CurrMod3: TCurrencyEdit;
    CurrMod4: TCurrencyEdit;
    CurrMod5: TCurrencyEdit;
    CurrMod6: TCurrencyEdit;
    CurrMod7: TCurrencyEdit;
    CurrMod8: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    SqlCdsProduto: TSQLClientDataSet;
    DsProduto: TDataSource;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DCVAR1: TStringField;
    SqlCdsProdutoPRD_DCVAR2: TStringField;
    SqlCdsProdutoPRD_DCVAR3: TStringField;
    SqlCdsProdutoPRD_DCVAR4: TStringField;
    SqlCdsProdutoPRD_DCVAR5: TStringField;
    SqlCdsProdutoPRD_DCVAR6: TStringField;
    SqlCdsProdutoPRD_DCVAR7: TStringField;
    SqlCdsProdutoPRD_DCVAR8: TStringField;
    SqlCdsItemOPTOTALUC_CC: TCurrencyField;
    SqlCdsItemOPQTDE1_CC: TCurrencyField;
    SqlCdsItemOPQTDE2_CC: TCurrencyField;
    SqlCdsItemOPQTDE3_CC: TCurrencyField;
    SqlCdsItemOPQTDE4_CC: TCurrencyField;
    SqlCdsItemOPQTDE5_CC: TCurrencyField;
    SqlCdsItemOPQTDE6_CC: TCurrencyField;
    SqlCdsItemOPQTDE7_CC: TCurrencyField;
    SqlCdsItemOPQTDE8_CC: TCurrencyField;
    SqlCdsParamPMT_EMPRESACLASSE: TStringField;
    SqlCdsCelOpCEM_DTENTROU: TDateField;
    SqlCdsCelOpCEM_DTCONCLUIU: TDateField;
    ppDBPipeline2: TppDBPipeline;
    ppRelOSP01: TppReport;
    ppRelOSP02: TppReport;
    SqlCdsItemOPOSV_CODIGO: TStringField;
    SqlCdsItemOPPRD_REFER_ITENS: TStringField;
    SqlCdsItemOPOSI_UC: TFloatField;
    SqlCdsItemOPOSI_QTDE1: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE2: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE3: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE4: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE5: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE6: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE7: TFMTBCdField;
    SqlCdsItemOPOSI_QTDE8: TFMTBCdField;
    SqlCdsItemOPPRD_DESCRI: TStringField;
    SqlCdsItemOPPRD_UND: TStringField;
    ppDBPipeline1: TppDBPipeline;
    SqlCdsOPImpOSV_CODIGO: TStringField;
    SqlCdsOPImpOSV_EMISSAO: TSQLTimeStampField;
    SqlCdsOPImpPRD_REFER: TStringField;
    SqlCdsOPImpOSV_QTDE: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE1: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE2: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE3: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE4: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE5: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE6: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE7: TFMTBCdField;
    SqlCdsOPImpOSV_QTDE8: TFMTBCdField;
    SqlCdsOPImpOSV_OBS1: TStringField;
    SqlCdsOPImpOSV_OBS2: TStringField;
    SqlCdsOPImpOSV_OBS3: TStringField;
    SqlCdsOPImpOSV_OBS4: TStringField;
    SqlCdsOPImpOSV_OBS5: TStringField;
    SqlCdsOPImpOSV_OBS6: TStringField;
    SqlCdsOPImpOSV_OBS7: TStringField;
    SqlCdsOPImpPED_CODIGO: TStringField;
    SqlCdsOPImpFTC_TUP: TFMTBCdField;
    SqlCdsOPImpOSV_PRECOUNIT: TFMTBCdField;
    SqlCdsOPImpCEL_CODIGO: TStringField;
    SqlCdsOPImpOSV_STATUS: TStringField;
    SqlCdsOPImpPRD_DESCRI: TStringField;
    SqlCdsOPImpPRD_DCVAR1: TStringField;
    SqlCdsOPImpPRD_DCVAR2: TStringField;
    SqlCdsOPImpPRD_DCVAR3: TStringField;
    SqlCdsOPImpPRD_DCVAR4: TStringField;
    SqlCdsOPImpPRD_DCVAR5: TStringField;
    SqlCdsOPImpPRD_DCVAR6: TStringField;
    SqlCdsOPImpPRD_DCVAR7: TStringField;
    SqlCdsOPImpPRD_DCVAR8: TStringField;
    SqlCdsOPImpCLI_CODIGO: TStringField;
    SqlCdsOPImpPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsOPImpCLI_RAZAO: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    LBL_01_EMPRESA: TppLabel;
    ppLine29: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape12: TppShape;
    ppLabel9: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel10: TppLabel;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel19: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText16: TppDBText;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel20: TppLabel;
    ppLabel11: TppLabel;
    ppLabel21: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppShape28: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape32: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    SqlCdsOPImpPGR_CODIGO: TStringField;
    ppHeaderBand2: TppHeaderBand;
    LBL_02_EMPRESA: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDBText26: TppDBText;
    ppLabel39: TppLabel;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppLabel41: TppLabel;
    ppDBText30: TppDBText;
    ppLabel42: TppLabel;
    ppVarToTup: TppVariable;
    ppShape33: TppShape;
    ppLabel43: TppLabel;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppShape44: TppShape;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel47: TppLabel;
    ppDBText49: TppDBText;
    ppLabel73: TppLabel;
    ppDBText60: TppDBText;
    ppLine33: TppLine;
    ppLabel36: TppLabel;
    ppDBText61: TppDBText;
    ppLabel59: TppLabel;
    ppDBText62: TppDBText;
    ppLabel74: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine21: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText32: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppDBText33: TppDBText;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape45: TppShape;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine22: TppLine;
    ppShape46: TppShape;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel75: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    raCodeModule1: TraCodeModule;
    SqlCdsOPImpFTC_PROC1: TStringField;
    SqlCdsOPImpFTC_PROC2: TStringField;
    SqlCdsOPImpFTC_PROC3: TStringField;
    SqlCdsOPImpFTC_PROC4: TStringField;
    SqlCdsOPImpFTC_PROC5: TStringField;
    SqlCdsOPImpFTC_PROC6: TStringField;
    SqlCdsOPImpFTC_PROC7: TStringField;
    SqlCdsOPImpFTC_PROC8: TStringField;
    ppLabel76: TppLabel;
    ppDBText24: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLabel77: TppLabel;
    SqlCdsItemOPQTDE_CC: TFloatField;
    SqlCdsOPImpOSV_IMPRESSO: TStringField;
    imgList1: TImageList;
    SqlCdsOPImpCC_IMPRESSO: TBooleanField;
    SqlOP: TSQLDataSet;
    SqlOPEMP_CODIGO: TStringField;
    SqlOPOSV_CODIGO: TStringField;
    SqlOPOSV_EMISSAO: TSQLTimeStampField;
    SqlOPPRD_REFER: TStringField;
    SqlOPOSV_QTDE: TFMTBCdField;
    SqlOPOSV_QTDE1: TFMTBCdField;
    SqlOPOSV_QTDE2: TFMTBCdField;
    SqlOPOSV_QTDE3: TFMTBCdField;
    SqlOPOSV_QTDE4: TFMTBCdField;
    SqlOPOSV_QTDE5: TFMTBCdField;
    SqlOPOSV_QTDE6: TFMTBCdField;
    SqlOPOSV_QTDE7: TFMTBCdField;
    SqlOPOSV_QTDE8: TFMTBCdField;
    SqlOPOSV_STATUS: TStringField;
    SqlOPOSV_IMPRESSO: TStringField;
    SqlOPPED_CODIGO: TStringField;
    SqlOPFTC_TUP: TFMTBCdField;
    SqlOPOSV_PRECOUNIT: TFMTBCdField;
    SqlOPCEL_CODIGO: TStringField;
    SqlOPPRD_DESCRI: TStringField;
    SqlOPPRD_CODIGO: TStringField;
    SqlOPPGR_CODIGO: TStringField;
    DspOP: TDataSetProvider;
    CdsOP: TClientDataSet;
    CdsOPEMP_CODIGO: TStringField;
    CdsOPOSV_CODIGO: TStringField;
    CdsOPOSV_EMISSAO: TSQLTimeStampField;
    CdsOPPRD_REFER: TStringField;
    CdsOPOSV_QTDE: TFMTBCdField;
    CdsOPOSV_QTDE1: TFMTBCdField;
    CdsOPOSV_QTDE2: TFMTBCdField;
    CdsOPOSV_QTDE3: TFMTBCdField;
    CdsOPOSV_QTDE4: TFMTBCdField;
    CdsOPOSV_QTDE5: TFMTBCdField;
    CdsOPOSV_QTDE6: TFMTBCdField;
    CdsOPOSV_QTDE7: TFMTBCdField;
    CdsOPOSV_QTDE8: TFMTBCdField;
    CdsOPOSV_STATUS: TStringField;
    CdsOPOSV_IMPRESSO: TStringField;
    CdsOPPED_CODIGO: TStringField;
    CdsOPFTC_TUP: TFMTBCdField;
    CdsOPPRD_DESCRI: TStringField;
    CdsOPPRD_CODIGO: TStringField;
    CdsOPCC_IMPRESSO: TBooleanField;
    CdsOPOSV_STATUS_CC: TStringField;
    CdsOPOSV_PRECOUNIT: TFMTBCdField;
    CdsOPCEL_CODIGO: TStringField;
    CdsOPPGR_CODIGO: TStringField;
    DsOpGrade: TDataSource;
    procedure Bit_GeraOSClick(Sender: tObject);
    procedure Rd_OSClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure Edt_NomeClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure Bit_ProcessoClick(Sender: tObject);
    procedure BitEstornarClick(Sender: tObject);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure Bit_CelulasClick(Sender: tObject);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure LayOutPcp;
    procedure BitSairClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure SqlCdsOPImpAfterScroll(DataSet: TDataSet);
    procedure Edt_NomeKeyPress(Sender: tObject; var Key: Char);
    procedure Rad_TodasClick(Sender: tObject);
    procedure Bit_concluirClick(Sender: tObject);
    procedure SqlCdsItemOPCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: tObject);
    procedure DbGridOSDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsOPAfterScroll(DataSet: TDataSet);
    procedure CdsOPCalcFields(DataSet: TDataSet);
    procedure DbGridOSDblClick(Sender: tObject);
  private
    { Private declarations }
    {variaveis}
     wValorCons : Currency;

    procedure BotaoPesquisar;
    procedure mensagens;
    procedure MostraPCP;
    procedure Busca;
    procedure EstornaOP;
    procedure ImprimirOP;
    Procedure AtualizaStatusImpressao(wORDEM:string);
    Procedure mostraItensOrdem;
    Procedure mostraMateriaPrima;
    Procedure FiltrarTipoOPs;

  public
    { Public declarations }
    wPmt_UnFormula : Integer;
  end;

var
  FormOrdServCentro: TFormOrdServCentro;

implementation

uses Uteis, Osv0002, CEL0007,DataCad, Men0001, Osv0005, DmProdu, ufrmpreviewrb, iniciodb;

{$R *.DFM}

procedure TFormOrdServCentro.Busca;
begin
    if Rad_Todas.checked  then
       begin
           wSeleciona := '';
       end;
    if Rad_Aberta.checked  then
       begin
           wSeleciona := 'WHERE O1.OSV_STATUS = ''A'''
       end;
    if Rad_Concluida.checked  then
       begin
           wSeleciona := 'WHERE O1.OSV_STATUS = ''C''';
       end;
    if Rad_Estornada.checked  then
       begin
           wSeleciona := 'WHERE O1.OSV_STATUS = ''E''';
       end;
    if Edt_Nome.Text <> '' then
       begin
           if Rd_OS.checked  then
              begin
                  if Rad_Todas.checked  then
                     wSeleciona := 'WHERE O1.OSV_CODIGO = '''+Edt_Nome.Text+''''
                  else
                     wSeleciona := wSeleciona +' AND O1.OSV_CODIGO = '''+Edt_Nome.Text+'''';
                  wOrdem     := 'O1.OSV_CODIGO';
              end;
           if Rd_Pedido.checked  then
              begin
                  if Rad_Todas.checked  then
                     wSeleciona := 'WHERE O1.PED_CODIGO = '''+Edt_Nome.Text+''''
                  else
                     wSeleciona := wSeleciona +' AND O1.PED_CODIGO = '''+Edt_Nome.Text+'''';
                  wOrdem     := 'O1.PED_CODIGO';
              end;
           if Rd_Refer.checked  then
              begin
                  if Rad_Todas.checked  then
                     wSeleciona := 'WHERE O1.PRD_REFER LIKE '''+Edt_Nome.Text+'%'''
                  else
                     wSeleciona := wSeleciona +' AND O1.PRD_REFER LIKE '''+Edt_Nome.Text+'%''';
                  wOrdem     := 'O1.PRD_REFER';
              end;
           if Rd_Descricao.checked  then
              begin
                  if Rad_Todas.checked  then
                     wSeleciona := 'WHERE P1.PRD_DESCRI LIKE '''+Edt_Nome.Text+'%'''
                  else
                     wSeleciona := wSeleciona + ' AND P1.PRD_DESCRI LIKE '''+Edt_Nome.Text+'%''';
                  wOrdem     := 'P1.PRD_DESCRI';
              end;
           Screen.Cursor := crHourGlass;
           try
             wSql1 := 'SELECT O1.Emp_codigo,O1.Osv_codigo,O1.Osv_emissao,O1.Prd_refer,O1.Osv_qtde,O1.Osv_qtde1,O1.Osv_qtde2,O1.Osv_qtde3,O1.Osv_qtde4,O1.Osv_qtde5,O1.Osv_qtde6,O1.Osv_qtde7,O1.Osv_qtde8,';
             wSql2 := 'O1.Osv_status,O1.Osv_impresso,O1.Ped_codigo,O1.Ftc_tup,O1.Osv_precounit,O1.cel_codigo,P1.Prd_descri,P1.Prd_codigo,P1.pgr_codigo From OSV0001 O1 left join PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) ';

{
             wSql1 := 'SELECT O1.OSV_CODIGO,O1.OSV_EMISSAO,O1.PRD_REFER,P1.PGR_CODIGO,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,O1.OSV_QTDE,O1.OSV_QTDE1,';
             wSql2 := 'O1.OSV_OBS1,O1.OSV_IMPRESSO,O1.OSV_OBS2,O1.OSV_OBS3,O1.OSV_OBS4,O1.OSV_OBS5,O1.OSV_OBS6,O1.OSV_OBS7,O1.OSV_QTDE2,O1.OSV_QTDE3,O1.OSV_QTDE4,O1.OSV_QTDE5,O1.OSV_QTDE6,O1.OSV_QTDE7,O1.OSV_QTDE8,';
             wSql3 := 'O1.PED_CODIGO,E1.CLI_CODIGO,C1.CLI_RAZAO,E1.PED_DTSAIDA,O1.FTC_TUP,O1.OSV_PRECOUNIT,O1.CEL_CODIGO,O1.OSV_STATUS,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8 FROM OSV0001 O1 ';
             wSql4 := 'JOIN PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PED_CODIGO)  AND (E1.EMP_CODIGO = O1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = E1.CLI_CODIGO) ';
             wSql5 := 'LEFT JOIN FTC0000 F1 ON (O1.PRD_REFER  = F1.PRD_REFER) ';
}
             CdsOP.Close;
             CdsOP.PacketRecords := -1;
             CdsOP.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,wOrdem,'O1.');
             CdsOP.Open;
             if (CdsOP.IsEmpty) then
                begin
                    Mensagens;
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click;
                end
             else
                begin
                    BotaoPesquisar;
                    DbGridOS.SetFocus;
                end;
           except on E:EdatabaseError do
              uteis.erro  (pchar('Erro ao Localizar a ordem de produção !'+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormOrdServCentro.Rd_OSClick(Sender: tObject);
begin
    LayOutPcp;
end;

procedure TFormOrdServCentro.Edt_NomeExit(Sender: tObject);
begin
    Edt_Nome.Color := clWindow;
    if (Rd_OS.checked ) then
       Edt_Nome.Text := StrZero(Edt_Nome.Text,Edt_Nome.MaxLength);
//    if (Rd_Pedido.checked ) then
//       Edt_Nome.Text := StrZero(Edt_Nome.Text,6);
end;

procedure TFormOrdServCentro.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormOrdServCentro.Edt_NomeClick(Sender: tObject);
begin
    Edt_Nome.SelectAll;
    if PageControl1.ActivePage = TabSheet2 then
       PageControl1.ActivePage := TabSheet1;
end;

procedure TFormOrdServCentro.Bit_GeraOSClick(Sender: tObject);
begin
    try
      try
        FormOrdServGera := TFormOrdServGera.Create(Application);
        FormOrdServGera.ShowModal;
      finally
        FormOrdServGera.Destroy;
        FormOrdServGera := nil
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServCentro.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Left:= 0;
    Top := 0;
    {abrir primeiro a tabela de parametro para atribuir nas variaveis:
    wPmt_unformula,wCelulaProd,wProcesProd,wMdl_op}
    Try
      SqlCdsParam.Close;
      SqlCdsParam.CommandText := SQLDEF('PARAMETROS','select P2.PMT_CELULAPROD,P2.PMT_EMPRESACLASSE,P2.PMT_VARIACOES,P2.PMT_MDL_OP,P2.PMT_PROCESPROD,P2.PMT_UNFORMULA from PRMT0001 P2 ','','','P2.');
      SqlCdsParam.Open;
      if SqlCdsParam.IsEmpty = false then
         begin
             wPmt_Unformula := iif(SqlCdsParamPMT_UNFORMULA.AsInteger=0,1,SqlCdsParamPMT_UNFORMULA.AsInteger);
             // preparar a tela conforme paramentros
             if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
                // mostrar grade de celulas de produçao e ajuste grade de O.S.
                begin
                    Bit_Celulas.Enabled         := True;
                    DbGridCelulas.Visible       := True;
                    DbGridOS.Height             := 309;
                    DbGridOS.Columns[0].Width   :=  44; //O.P.
                    DbGridOS.Columns[1].Width   :=  63; //EMISSAO
                    DbGridOS.Columns[2].Width   :=  80; //REFERENCIA
                    DbGridOS.Columns[3].Width   := 285; //DESCRICAO
                    DbGridOS.Columns[4].Width   :=  61; //QUANT.
                    DbGridOS.Columns[5].Width   :=  43; //PEDIDO
                    DbGridOS.Columns[6].Width   :=  43; //TUP
                    DbGridOS.Columns[7].Width   :=  70; //STATUS
                    DbGridOS.Columns[8].Width   :=  25; //CEL
                    DbGridOS.Columns[8].Visible := True;
                    DbGridOS.Columns[9].Width   :=  25; //IMP
                end
             else
                begin
                    Bit_Celulas.Enabled         := False;
                    DbGridCelulas.Visible       := False;
                    DbGridOS.Height             := 399;
                    DbGridOS.Columns[0].Width   :=  44; //O.P.
                    DbGridOS.Columns[1].Width   :=  63; //EMISSAO
                    DbGridOS.Columns[2].Width   :=  80; //REFERENCIA
                    DbGridOS.Columns[3].Width   := 304; //DESCRICAO
                    DbGridOS.Columns[4].Width   :=  61; //QUANT.
                    DbGridOS.Columns[5].Width   :=  43; //PEDIDO
                    DbGridOS.Columns[6].Width   :=  43; //TUP
                    DbGridOS.Columns[7].Width   :=  70; //STATUS
                    DbGridOS.Columns[8].Width   :=  25; //CEL
                    DbGridOS.Columns[8].Visible := false;
                    DbGridOS.Columns[9].Width   :=  25; //IMP
                end;
                // prepapar a tela conforme paramentros
                if SqlCdsParamPMT_PROCESPROD.AsString = 'S' then
                  Bit_Processo.Enabled := True
                else
                  Bit_Processo.Enabled := False;

               if SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                  begin
                      GrpVar.Visible := true;
                      DbGrid1.Top                 := 108;
                      DbGrid1.Height              := 291;
                      DbGrid1.Width               := 785;
                      DbGrid1.Columns[0].Width    := 63;   //Materia
                      DbGrid1.Columns[1].Width    := 359;  //Descricao da Materia-Prima
                      DbGrid1.Columns[2].Width    := 56;   //U.C.
                      DbGrid1.Columns[3].Width    := 30;   //UND
                      DbGrid1.Columns[4].Width    := 61;   //QTDE
                      DbGrid1.Columns[4].Visible  := False;
                      DbGrid1.Columns[5].Width    := 75;   //Var1
                      DbGrid1.Columns[5].Visible  := True;
                      DbGrid1.Columns[6].Width    := 75;   //Var2
                      DbGrid1.Columns[6].Visible  := True;
                      DbGrid1.Columns[7].Width    := 75;   //Var3
                      DbGrid1.Columns[7].Visible  := True;
                      DbGrid1.Columns[8].Width    := 75;   //Var4
                      DbGrid1.Columns[8].Visible  := True;
                      DbGrid1.Columns[9].Width    := 75;   //Var5
                      DbGrid1.Columns[9].Visible  := True;
                      DbGrid1.Columns[10].Width   := 75;   //Var6
                      DbGrid1.Columns[10].Visible := True;
                      DbGrid1.Columns[11].Width   := 75;   //Var7
                      DbGrid1.Columns[12].Visible := True;
                      DbGrid1.Columns[12].Width   := 75;   //Var8
                      DbGrid1.Columns[13].Width   := 85;   //Total U.C.
                  end
               else
                  begin
                      GrpVar.Visible := false;
                      DbGrid1.Top                 := 39;
                      DbGrid1.Height              := 363;
                      DbGrid1.Width               := 785;
                      DbGrid1.Columns[0].Width    := 75;   //Materia
                      DbGrid1.Columns[1].Width    := 386;  //Descricao materia-Prima
                      DbGrid1.Columns[2].Width    := 85;   //U.C.
                      DbGrid1.Columns[3].Width    := 30;   //UND
                      DbGrid1.Columns[4].Visible  := True;
                      DbGrid1.Columns[4].Width    := 85;   //QTDE
                      DbGrid1.Columns[5].Width    := 75;
                      DbGrid1.Columns[5].Visible  := False;
                      DbGrid1.Columns[6].Width    := 75;
                      DbGrid1.Columns[6].Visible  := False;
                      DbGrid1.Columns[7].Width    := 75;
                      DbGrid1.Columns[7].Visible  := False;
                      DbGrid1.Columns[8].Width    := 75;
                      DbGrid1.Columns[8].Visible  := False;
                      DbGrid1.Columns[9].Width    := 75;
                      DbGrid1.Columns[9].Visible  := False;
                      DbGrid1.Columns[10].Width   := 75;
                      DbGrid1.Columns[10].Visible := False;
                      DbGrid1.Columns[11].Width   := 75;
                      DbGrid1.Columns[11].Visible := False;
                      DbGrid1.Columns[12].Width   := 75;
                      DbGrid1.Columns[12].Visible := False;
                      DbGrid1.Columns[13].Width   := 85;
                  end;
         end;
      //
      Rad_Aberta.Checked := true;
      Rd_Refer.Checked   := true;
      LayOutPcp;
      MostraPCP;
      PageControl1.TabIndex := 0;
      Edt_Nome.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela de parametros !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    try
      CdsOP.PacketRecords := -1; 
      CdsOP.Close;
      SqlCdsCelOp.Close;
      SqlCdsParam.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
end;

procedure TFormOrdServCentro.Bit_ImprimirClick(Sender: tObject);
begin
    if CdsOP.IsEmpty = false then
       begin
           if (CdsOPOSV_STATUS.AsString <> 'E') or ((CdsOPOSV_STATUS.AsString <> 'C')) then
              begin
               ImprimirOP;
               AtualizaStatusImpressao(CdsOPOSV_CODIGO.AsString);
{passa para o proximo registro apos impressao para continuar imprimindo na sequencia}
               CdsOp.Next;
                {esse procedimento foi retirado porque cancela a consulta
                 e deixa o sistema operacionalmente ruim alem de ser inutil
                  MostraPCP; rodrigo 16.08.2005 DANKA
                 }
              end
           else
              begin
                  uteis.aviso('Ordem de Produção Estornada/Concluída ! Não é possível imprimi-lá !');
              end;
       end
    else
       uteis.aviso('Não há ordem de produção à ser impressa !');
    DbGridOS.SetFocus;
end;

procedure TFormOrdServCentro.Bit_ProcessoClick(Sender: tObject);
begin
{
    if (SqlCdsOP.IsEmpty = false) then
       begin
           if wSelecao = true then
              begin
                  try
                    try
                      FormOrdServProcesso := TFormOrdServProcesso.Create(Application);
                      FormOrdServProcesso.ShowModal;
                    finally
                      FormOrdServProcesso.Destroy;
                      FormOrdServProcesso := nil;
                      wSelecao := false;
                      Edt_Nome.SetFocus;
                    end;
                  except
                      //beep;
                      uteis.erro  ('Ocorreu um erro na criação do formulário!');
                  end;
              end
           else
              begin
                  uteis.aviso('Selecione a Ordem de Produção no Grid !');
                  Edt_Nome.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Não Existem Orem de Produção !');
           wSelecao := False;
           Edt_Nome.SetFocus;
       end;
}
end;

procedure TFormOrdServCentro.BitEstornarClick(Sender: tObject);
begin
    if (CdsOP.IsEmpty) then
       begin
           uteis.aviso('Não Existem Ordem de Produção !');
           Exit;
       end;
    if (CdsOPOSV_STATUS.AsString = 'C') then
       begin
           uteis.aviso('Não pode estornar uma ordem de producao <<CONCLUÍDA>> !');
           Edt_Nome.SetFocus;
           exit;
       end;
    if (CdsOPOSV_STATUS.AsString = 'A') then
       EstornaOP
    else
       if (CdsOPOSV_STATUS.AsString = 'E') then
          begin
              uteis.aviso('Não pode estornar um Ordem de Produção já estornada !');
          end;
    Edt_Nome.SetFocus;
end;

procedure TFormOrdServCentro.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_F3 then
       Bit_Processo.Click;
    if Key = VK_F2 then
       Bit_Celulas.Click;
end;

procedure TFormOrdServCentro.Bit_CelulasClick(Sender: tObject);
begin
    if (CdsOP.IsEmpty = false) then
       begin
           try
             try
               FormEnviaCelula := TFormEnviaCelula.Create(Application);
               FormEnviaCelula.ShowModal;
             finally
               FormEnviaCelula.Destroy;
               FormEnviaCelula := nil;
               Edt_Nome.SetFocus;
             end;
           except
                //beep;
                uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end
    else
       begin
           uteis.aviso('Não Existem Ordem de Produção!');
           Edt_Nome.SetFocus;
       end;
end;

procedure TFormOrdServCentro.Edt_NomeEnter(Sender: tObject);
begin
    Edt_nome.Text := '';
    BotaoPesquisar;
    MostraPCP;
    Edt_nome.Color := $0080FFFF;
    PageControl1.ActivePage := TabSheet1;
end;

procedure TFormOrdServCentro.LayOutPcp;
begin
    Grp_Pesquisa.TabOrder := 0;
    Grp_filtra.TabOrder   := 1;
    BitPesquisar.TabOrder := 2;
    BitCancelar.TabOrder  := 3;
    if Rd_OS.checked  then
       begin
           Grp_filtra.Caption := 'Informe o Código da O.P.:';
           Edt_Nome.MaxLength := 6;
           Edt_Nome.Width     := 45;
       end;
    if Rd_Pedido.checked  then
       begin
           Grp_filtra.Caption := 'Informe o Código do Pedido:';
           Edt_Nome.MaxLength := 7;
           Edt_Nome.Width     := 55;
       end;
    if Rd_Refer.checked  then
       begin
           Grp_filtra.Caption := 'Informe a Referência do Produto:';
           Edt_Nome.MaxLength := 50;
           Edt_Nome.Width     := 85;
       end;
    if Rd_Descricao.checked  then
       begin
           Grp_filtra.Caption := 'Informe a Referência do Produto:';
           Edt_Nome.MaxLength := 50;
           Edt_Nome.Width     := 365;
       end;
    Edt_Nome.text := '';
    Edt_Nome.SetFocus;
end;

procedure TFormOrdServCentro.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServCentro.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
       begin
           BitPesquisar.Enabled := False;
           BitCancelar .Enabled := True;
       end
    else
       begin
           BitPesquisar.Enabled := True;
           BitCancelar .Enabled := False;
       end;
end;

procedure TFormOrdServCentro.mensagens;
begin
    if Rd_OS.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código da O.P.!')
           else
              uteis.aviso('Código da O.P. não encontrado !');
       end;
    if Rd_Pedido.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código do Pedido !')
           else
              uteis.aviso('Pedido não encontrado !');
       end;
    if Rd_Refer.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe a Referência do Produto !')
           else
              uteis.aviso('Referência não encontrado !');
       end;
    if Rd_Descricao.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe a Descrição do Produto !')
           else
              uteis.aviso('Descrição do produto não encontrado !');
       end;
end;

procedure TFormOrdServCentro.MostraPCP;
begin
    Screen.Cursor := crHourGlass;
    try
      if Rad_Todas.checked  then
         begin
             wSeleciona := '';
         end;
      if Rad_Aberta.checked  then
         begin
             wSeleciona := 'WHERE O1.OSV_STATUS = ''A''';
             Bit_Concluir.Enabled   := TRue;
             BitEstornar.Enabled    := True;
         end;
      if Rad_Concluida.checked  then
         begin
             wSeleciona := 'WHERE O1.OSV_STATUS = ''C''';
             BitEstornar.Enabled    := False;
         end;
      if Rad_Estornada.checked  then
         begin
             wSeleciona := 'WHERE O1.OSV_STATUS = ''E''';
             BitEstornar.Enabled    := False;
         end;

    WSQL1 :=' SELECT O1.Emp_codigo,O1.Osv_codigo,O1.Osv_emissao,O1.Prd_refer,O1.Osv_qtde,O1.Osv_qtde1,O1.Osv_qtde2,O1.Osv_qtde3,O1.Osv_qtde4,O1.Osv_qtde5,O1.Osv_qtde6,';
    WSQL2 :='O1.Osv_qtde7,O1.Osv_qtde8,O1.Osv_status,O1.Osv_impresso,O1.Ped_codigo,O1.Ftc_tup,O1.Osv_precounit,O1.cel_codigo,P1.Prd_descri,P1.Prd_codigo,P1.pgr_codigo From OSV0001 O1 left join PRD0000 P1 ON (O1.PRD_REFER  = P1.PRD_REFER)';


   (*   rodrigo 16.08.2005

      wSql1 := 'SELECT O1.EMP_CODIGO,O1.OSV_CODIGO,O1.OSV_EMISSAO,O1.PRD_REFER,P1.PGR_CODIGO,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
      wSql2 := 'O1.OSV_QTDE,O1.OSV_QTDE1,O1.OSV_OBS1,O1.OSV_OBS2,O1.OSV_OBS3,O1.OSV_OBS4,O1.OSV_OBS5,O1.OSV_OBS6,O1.OSV_OBS7,O1.OSV_QTDE2,O1.OSV_QTDE3,O1.OSV_QTDE4,O1.OSV_QTDE5,O1.OSV_QTDE6,O1.OSV_QTDE7,O1.OSV_QTDE8,01.OSV_IMPRESSO,';
      wSql3 := 'O1.PED_CODIGO,E1.CLI_CODIGO,C1.CLI_RAZAO,E1.PED_DTSAIDA,O1.FTC_TUP,O1.OSV_PRECOUNIT,O1.CEL_CODIGO,O1.OSV_STATUS,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8 FROM OSV0001 O1 ';
      wSql4 := 'JOIN PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PED_CODIGO)  AND (E1.EMP_CODIGO = O1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = E1.CLI_CODIGO) ';
      wSql5 := 'LEFT JOIN FTC0000 F1 ON (O1.PRD_REFER  = F1.PRD_REFER) ';
      *)
      //
      CdsOP.Close;
      CdsOP.PacketRecords := 10;
      //rodrigoCdsOP.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4+wSql5,wSeleciona,'O1.OSV_EMISSAO DESC,O1.OSV_CODIGO','O1.');
      CdsOP.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,'O1.OSV_EMISSAO DESC,O1.OSV_CODIGO','O1.');
      CdsOP.Open;
//      DbGridOS.SetFocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraPCP;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           Busca;
       end
    else
       begin
           Mensagens;
           Edt_Nome.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormOrdServCentro.SqlCdsOPImpAfterScroll(DataSet: TDataSet);
begin
    if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
       begin
           try
             SqlCdsCelOp.Close;
             SqlCdsCelOp.CommandText := SQLDEF('ORDEMPRODUCAO','select C1.CEL_CODIGO,C2.CEL_NOME,C1.CEM_DTENTROU,C1.CEM_TUPTRAB,C1.CEM_DTCONCLUIU,C1.CEM_TRABALHO from CEL_MOV03 C1 '+
                                               'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO','where C1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','C1.OSV_CODIGO','C1.');
             SqlCdsCelOp.Open;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao localizar a Célula dessa O.P. !'+e.message));
           end;
       end;
    Screen.Cursor := crHourGlass;
    EdtOp.Text      := CdsOPOSV_CODIGO.AsString;
    EdtEmissao.Text := CdsOPOSV_EMISSAO.Text;
    EdtRefer.Text   := CdsOPPRD_REFER.AsString;
    EdtDescri.Text  := CdsOPPRD_DESCRI.AsString;
    CurrQtde.Value  := CdsOPOSV_QTDE.AsCurrency;
    CurrMod1.Value  := CdsOPOSV_QTDE1.AsCurrency;
    CurrMod2.Value  := CdsOPOSV_QTDE2.AsCurrency;
    CurrMod3.Value  := CdsOPOSV_QTDE3.AsCurrency;
    CurrMod4.Value  := CdsOPOSV_QTDE4.AsCurrency;
    CurrMod5.Value  := CdsOPOSV_QTDE5.AsCurrency;
    CurrMod6.Value  := CdsOPOSV_QTDE6.AsCurrency;
    CurrMod7.Value  := CdsOPOSV_QTDE7.AsCurrency;
    CurrMod8.Value  := CdsOPOSV_QTDE8.AsCurrency;
    CurrTotal.Value := (CurrMod1.Value+CurrMod2.Value+CurrMod3.Value+CurrMod4.Value+CurrMod5.Value+CurrMod6.Value+CurrMod7.Value+CurrMod8.Value);
    try
      {Mostrar as descricoes das variacoes}
      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','Select P1.PRD_REFER,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 from PRD0000 P1 ',
                                          'where P1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
      SqlCdsProduto.Open;
      {Mostrar os itens}
      SqlCdsItemOP.Close;
      SqlCdsItemOP.CommandText := SQLDEF('ORDEMPRODUCAO','select O2.OSV_CODIGO,O2.PRD_REFER_ITENS,P2.PRD_DESCRI,P2.PRD_UND,O2.OSI_UC,O2.OSI_QTDE1,O2.OSI_QTDE2,O2.OSI_QTDE3,O2.OSI_QTDE4,O2.OSI_QTDE5,O2.OSI_QTDE6,O2.OSI_QTDE7,O2.OSI_QTDE8 from OSV_IT02 O2 '+
                                         'LEFT JOIN PRD0000 P2 ON P2.PRD_REFER = O2.PRD_REFER_ITENS ','where O2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''' AND O2.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','P2.PRD_DESCRI','O2.');
      SqlCdsItemOP.Open;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao localizar os itens da Ordem de Produção !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.Edt_NomeKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Rd_OS.checked ) or (Rd_Pedido.checked ) then
       begin
           if not (key in ['0'..'9',#8]) then
              begin
                 //beep;
                 Key := #0;
              end;
       end;
end;

procedure TFormOrdServCentro.Rad_TodasClick(Sender: tObject);
begin
//    MostraPCP;
    FiltrarTipoOPs;
end;

procedure TFormOrdServCentro.Bit_concluirClick(Sender: tObject);
begin
    if (CdsOP.IsEmpty = false) then
       begin
           try
             try
               FormConcluirOP := TFormConcluirOP.Create(Application);
               FormConcluirOP.ShowModal;
             finally
               FormConcluirOP.Destroy;
               FormConcluirOP:= nil;
             end;
           except
               //beep;
               uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end
    else
       uteis.aviso('Não há ordem de produção para concluir !');
    Edt_Nome.SetFocus;
end;

procedure TFormOrdServCentro.EstornaOP;
begin
    wValorCons := 0;
    if uteis.confirmacao ( 'A O.P. será cancelada e os materiais consumidos retornarão ao estoque. Confirma ?')= mrYes then
       begin
           screen.cursor := crHourglass;
           try
             try
               DmProducao.CdsOsvIt.Close;
               DmProducao.CdsOsvIt.CommandText := SQLDEF('ORDEMPRODUCAO','Select I2.* from OSV_IT02 I2 ','where I2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','I2.OSV_CODIGO','I2.');
               DmProducao.CdsOsvIt.Open;
               DmProducao.CdsOsvIt.First;
               while not DmProducao.CdsOsvIt.Eof do
                begin
                    {Zerar a variavel}
                    wValorCons := 0;
                    wValorCons := (((((DmProducao.CdsOsvItOSI_QTDE1.AsCurrency + DmProducao.CdsOsvItOSI_QTDE2.AsCurrency) +
                                      (DmProducao.CdsOsvItOSI_QTDE3.AsCurrency + DmProducao.CdsOsvItOSI_QTDE4.AsCurrency)) +
                                      (DmProducao.CdsOsvItOSI_QTDE5.AsCurrency + DmProducao.CdsOsvItOSI_QTDE6.AsCurrency)) +
                                      (DmProducao.CdsOsvItOSI_QTDE7.AsCurrency + DmProducao.CdsOsvItOSI_QTDE8.AsCurrency))) * DmProducao.CdsOsvItOSI_UC.AsCurrency / wPmt_UnFormula;
                    try
                      {Atualiza os itens do estoque conforme a ordem de producao}
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_SAIDA = (PRD_SAIDA - '+ValorAmericano(FloatToStr(wValorCons))+')','where PRD_REFER = '''+DmProducao.CdsOsvItPRD_REFER_ITENS.AsString+'''','','');
                      DataCadastros.sqlUpdate.Execsql;
                    except on E:EdataBaseError do
                      begin
                          uteis.erro  (pchar('erro ao atualizar a tabela PRD0000 !'+E.MESSAGE));
                      end;
                    end;
                    DmProducao.CdsOsvIt.Next;
                end;
               {Alterarndo o Status da OSV_IT02 OSV_STATUS = 'E'}
               try
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Update OSV0001 set OSV_STATUS = ''E''','where OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','','');
                 DataCadastros.sqlUpdate.Execsql;
               except on E:EdataBaseError do
                 uteis.erro  (pchar('Erro ao mudar os Status da OSV_IT02 !'+E.MESSAGE));
               end;
               {Excluindo o Movimento na tabela PRD_ENSA}
               try
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Delete from PRD_ENSA ','where PES_TIPO = ''S'' and PES_TIPDOC = ''OP'' and PES_ORIGEM = ''Automatica'' and PES_NUMDOC = '''+CdsOPOSV_CODIGO.AsString+'''','','');
                 DataCadastros.sqlUpdate.Execsql;
               except on e:EdataBaseError do
                  uteis.erro  (pchar('Erro ao excluir o movimento de Saída da tabela PRD_ENSA !'+E.Message));
               end;
             except on E:EdataBaseError do
               begin
                   uteis.erro  (pchar('Erro ao localizar os itens da Ordem de Produção ! '+e.message));
               end;
             end;
           finally
              //
           end;
           Screen.Cursor := crDefault;
           DmProducao.CdsOsvIt.Close;
           CdsOP.Refresh;
       end;
end;

procedure TFormOrdServCentro.ImprimirOP;
begin
    if CdsOP.IsEmpty then
       begin
           uteis.aviso('Não Existem Ordens na Produção!');
           Exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      wSql1 := 'SELECT O1.EMP_CODIGO,O1.OSV_CODIGO,O1.OSV_EMISSAO,O1.PRD_REFER,P1.PGR_CODIGO,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
      wSql2 := 'O1.OSV_QTDE,O1.OSV_QTDE1,O1.OSV_OBS1,O1.OSV_OBS2,O1.OSV_OBS3,O1.OSV_OBS4,O1.OSV_OBS5,O1.OSV_OBS6,O1.OSV_OBS7,O1.OSV_QTDE2,O1.OSV_QTDE3,O1.OSV_QTDE4,O1.OSV_QTDE5,O1.OSV_QTDE6,O1.OSV_QTDE7,O1.OSV_QTDE8,O1.OSV_IMPRESSO,';
      wSql3 := 'O1.PED_CODIGO,E1.CLI_CODIGO,C1.CLI_RAZAO,E1.PED_DTSAIDA,O1.FTC_TUP,O1.OSV_PRECOUNIT,O1.CEL_CODIGO,O1.OSV_STATUS,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,F1.FTC_PROC8 FROM OSV0001 O1 ';
      wSql4 := 'JOIN PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PED_CODIGO)  AND (E1.EMP_CODIGO = O1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = E1.CLI_CODIGO) ';
      wSql5 := 'LEFT JOIN FTC0000 F1 ON (O1.PRD_REFER  = F1.PRD_REFER) ';
      wSeleciona := 'WHERE O1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''''; //AND (O1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+''')';
      SqlCdsOPImp.Close;
      SqlCdsOPImp.PacketRecords := -1;
      SqlCdsOPImp.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4+wSql5,wSeleciona,'O1.OSV_CODIGO','O1.');
      SqlCdsOPImp.Open;
      if SqlCdsOPImp.IsEmpty = false then
         begin
             //
             MostraMateriaPrima;
         end;
      if SqlCdsParamPMT_MDL_OP.AsString = '1' then  // QUIMICA
         begin
             LBL_01_EMPRESA.Caption   := dbInicio.Empresa.Razao;
             ppRelOSP01.DeviceType:= 'Screen';
             RBuilderPreview(ppRelOSP01);
         end;
      if SqlCdsParamPMT_MDL_OP.AsString = '2' then  // BOLSAS
         begin
             LBL_02_EMPRESA.Caption   := dbInicio.Empresa.Razao;
             ppRelOSP02.DeviceType:= 'Screen';
             RBuilderPreview(ppRelOSP02);
         end;
         
    {rodrigo - marcando o item como impresso para mostrar graficamente na grade}
      AtualizaStatusImpressao(CdsOPOSV_CODIGO.AsString);

    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.SqlCdsItemOPCalcFields(DataSet: TDataSet);
begin
    if SqlCdsParamPMT_VARIACOES.AsString = 'S' then
       begin
           SqlCdsItemOPTOTALUC_CC.AsCurrency := ((SqlCdsItemOPOSI_QTDE1.AsCurrency+SqlCdsItemOPOSI_QTDE2.AsCurrency+SqlCdsItemOPOSI_QTDE3.AsCurrency+SqlCdsItemOPOSI_QTDE4.AsCurrency+SqlCdsItemOPOSI_QTDE5.AsCurrency+SqlCdsItemOPOSI_QTDE6.AsCurrency+SqlCdsItemOPOSI_QTDE7.AsCurrency+SqlCdsItemOPOSI_QTDE8.AsCurrency)*SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE1_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE1.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE2_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE2.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE3_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE3.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE4_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE4.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE5_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE5.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE6_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE6.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE7_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE7.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
           SqlCdsItemOPQTDE8_CC.AsCurrency   := (SqlCdsItemOPOSI_QTDE8.AsCurrency *SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula;
       end
    else
       begin
           SqlCdsItemOPQTDE_CC.AsCurrency    := CurrQtde.Value;
           SqlCdsItemOPTOTALUC_CC.AsCurrency := ((CurrQtde.Value*SqlCdsItemOPOSI_UC.AsCurrency)/wPmt_UnFormula);
       end;
end;

procedure TFormOrdServCentro.PageControl1Change(Sender: tObject);
begin
    if PageControl1.TabIndex = 1 then
       begin
           Screen.Cursor := crHourGlass;
           EdtOp.Text      := CdsOPOSV_CODIGO.AsString;
           EdtEmissao.Text := CdsOPOSV_EMISSAO.Text;
           EdtRefer.Text   := CdsOPPRD_REFER.AsString;
           EdtDescri.Text  := CdsOPPRD_DESCRI.AsString;
           CurrQtde.Value  := CdsOPOSV_QTDE.AsCurrency;
           CurrMod1.Value  := CdsOPOSV_QTDE1.AsCurrency;
           CurrMod2.Value  := CdsOPOSV_QTDE2.AsCurrency;
           CurrMod3.Value  := CdsOPOSV_QTDE3.AsCurrency;
           CurrMod4.Value  := CdsOPOSV_QTDE4.AsCurrency;
           CurrMod5.Value  := CdsOPOSV_QTDE5.AsCurrency;
           CurrMod6.Value  := CdsOPOSV_QTDE6.AsCurrency;
           CurrMod7.Value  := CdsOPOSV_QTDE7.AsCurrency;
           CurrMod8.Value  := CdsOPOSV_QTDE8.AsCurrency;
           CurrTotal.Value := (CurrMod1.Value+CurrMod2.Value+CurrMod3.Value+CurrMod4.Value+CurrMod5.Value+CurrMod6.Value+CurrMod7.Value+CurrMod8.Value);
           try
             {Mostrar as descricoes das variacoes}
             SqlCdsProduto.Close;
             SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT P1.PRD_REFER,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 FROM PRD0000 P1 ',
                                                 'WHERE P1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
             SqlCdsProduto.Open;
             {Mostrar os itens}
             if SqlCdsParamPMT_MDL_OP.AsString = '1' then  // QUIMICA
                begin
                    wOrdem := 'O2.OSI_REGISTRO';
                end
             else
                begin
                    wOrdem := 'P2.PRD_DESCRI';
                end;
             SqlCdsItemOP.Close;
             SqlCdsItemOP.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT O2.OSI_REGISTRO,O2.OSV_CODIGO,O2.PRD_REFER_ITENS,P2.PRD_DESCRI,P2.PRD_UND,O2.OSI_UC,O2.OSI_QTDE1,O2.OSI_QTDE2,O2.OSI_QTDE3,O2.OSI_QTDE4,O2.OSI_QTDE5,O2.OSI_QTDE6,O2.OSI_QTDE7,O2.OSI_QTDE8 FROM OSV_IT02 O2 '+
                                                'LEFT JOIN PRD0000 P2 ON P2.PRD_REFER = O2.PRD_REFER_ITENS ','WHERE O2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''',wOrdem,'O2.');
             SqlCdsItemOP.Open;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao localizar os itens da Ordem de Produção !'+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormOrdServCentro.DbGridOSDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  wStatusImp : Boolean;
begin
    if Column.Field = (CdsOPCC_IMPRESSO) then
       begin
           DBGridOS.Canvas.FillRect(Rect);
           if (CdsOPCC_IMPRESSO.AsBoolean = TRUE) then
              ImgList1.Draw(DBGridOS.Canvas,Rect.Left+03,Rect.Top+1,2)//2
           else
              ImgList1.Draw(DBGridOS.Canvas,Rect.Left+03,Rect.Top+1,1);//1
       end;
end;

procedure TFormOrdServCentro.AtualizaStatusImpressao(wORDEM: string);
begin
    {atualiza o status de ordem de produção como impressa}
    try
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :='update OSV0001 set OSV_IMPRESSO = ''S'' where OSV_CODIGO = '''+wORDEM+'''';
      DataCadastros.sqlUpdate.Execsql;
      CdsOP.Refresh;
     except on E:edatabaseError do
         uteis.erro  (pchar('Erro ao atualizar status de impressão !'+e.message));
     end;
end;

procedure TFormOrdServCentro.mostraMateriaPrima;
begin
    {}
    try
      wSql1 := 'select O2.OSV_CODIGO,O2.PRD_REFER_ITENS,O2.OSI_UC,O2.OSI_QTDE1,O2.OSI_QTDE2,O2.OSI_QTDE3,O2.OSI_QTDE4,O2.OSI_QTDE5,O2.OSI_QTDE6,O2.OSI_QTDE7,O2.OSI_QTDE8,';
      wSql2 := 'O2.OSI_RESERVADO,O2.OSI_EMPENHO,O2.OSI_APONTADO,P2.PRD_DESCRI,P2.PRD_UND,P3.PTI_SIGLA,O2.OSI_STATUSEMPENHO,case O2.OSI_STATUSEMPENHO when ''N'' then ''Pendente'' ';
      wSql3 := 'when ''P'' then ''Parcial'' when ''S'' then ''Concluído'' end as wStatusEmpenho from OSV_IT02 O2 left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER) left join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO) ';
      //
      wSeleciona := 'WHERE O2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''';
      if SqlCdsParamPMT_MDL_OP.AsString = '1' then  // QUIMICA
         begin
             wOrdem := 'O2.OSI_REGISTRO';
         end
      else
         begin
             wOrdem := 'P2.PRD_DESCRI';
         end;
      SqlCdsItemOP.Close;
      SqlCdsItemOp.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'O2.');
      SqlCdsItemOP.Open;
   except
   on e:EdatabaseError do
         begin
             uteis.erro  (pchar('Erro ao localizar matéria prima !'+e.message));
         end;
   on  e:Exception do
        begin
             uteis.erro  (pchar('Ocorreu uma exceção ao localizar matéria prima !'+e.message));
        end;
   end;

end;

procedure TFormOrdServCentro.CdsOPAfterScroll(DataSet: TDataSet);
begin
    if SqlCdsParamPMT_CELULAPROD.AsString = 'S' then
       begin
           try
             SqlCdsCelOp.Close;
             SqlCdsCelOp.CommandText := SQLDEF('ORDEMPRODUCAO','select C1.CEL_CODIGO,C2.CEL_NOME,C1.CEM_DTENTROU,C1.CEM_TUPTRAB,C1.CEM_DTCONCLUIU,C1.CEM_TRABALHO from CEL_MOV03 C1 '+
                                               'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO','where C1.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+'''','C1.OSV_CODIGO','C1.');
             SqlCdsCelOp.Open;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao localizar a Célula dessa O.P. !'+e.message));
           end;
       end;
end;

procedure TFormOrdServCentro.CdsOPCalcFields(DataSet: TDataSet);
begin
    CdsOPOSV_STATUS_CC.AsString := iif(CdsOPOSV_STATUS.AsString = 'A','Aberta',
                                   iif(CdsOPOSV_STATUS.AsString = 'C','Concluída','Estornada'));
    if (CdsOPOSV_IMPRESSO.AsString = 'S') then
       CdsOPCC_IMPRESSO.AsBoolean := true
    else
       CdsOPCC_IMPRESSO.AsBoolean := false;
end;

procedure TFormOrdServCentro.mostraItensOrdem;
begin
    {mostra detalhes da ordem de produtoca guia itens da ordem}
    Screen.Cursor := crHourGlass;
    try
      EdtOp.Text      := CdsOPOSV_CODIGO.AsString;
      EdtEmissao.Text := CdsOPOSV_EMISSAO.Text;
      EdtRefer.Text   := CdsOPPRD_REFER.AsString;
      EdtDescri.Text  := CdsOPPRD_DESCRI.AsString;
      CurrQtde.Value  := CdsOPOSV_QTDE.AsCurrency;
      CurrMod1.Value  := CdsOPOSV_QTDE1.AsCurrency;
      CurrMod2.Value  := CdsOPOSV_QTDE2.AsCurrency;
      CurrMod3.Value  := CdsOPOSV_QTDE3.AsCurrency;
      CurrMod4.Value  := CdsOPOSV_QTDE4.AsCurrency;
      CurrMod5.Value  := CdsOPOSV_QTDE5.AsCurrency;
      CurrMod6.Value  := CdsOPOSV_QTDE6.AsCurrency;
      CurrMod7.Value  := CdsOPOSV_QTDE7.AsCurrency;
      CurrMod8.Value  := CdsOPOSV_QTDE8.AsCurrency;
      CurrTotal.Value := (CurrMod1.Value+CurrMod2.Value+CurrMod3.Value+CurrMod4.Value+CurrMod5.Value+CurrMod6.Value+CurrMod7.Value+CurrMod8.Value);
        {Mostrar as descricoes das variacoes}
        SqlCdsProduto.Close;
        SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','Select P1.PRD_REFER,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 from PRD0000 P1 ',
                                            'where P1.PRD_REFER = '''+CdsOPPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
        SqlCdsProduto.Open;
        {Mostrar os itens}
        MostraMateriaPrima;

        wSql1 := 'select O2.OSV_CODIGO,O2.PRD_REFER_ITENS,O2.OSI_UC,O2.OSI_QTDE1,O2.OSI_QTDE2,O2.OSI_QTDE3,O2.OSI_QTDE4,O2.OSI_QTDE5,O2.OSI_QTDE6,O2.OSI_QTDE7,O2.OSI_QTDE8,';
        wSql2 := 'O2.OSI_RESERVADO,O2.OSI_EMPENHO,O2.OSI_APONTADO,P2.PRD_DESCRI,P2.PRD_UND,P3.PTI_SIGLA,O2.OSI_STATUSEMPENHO,case O2.OSI_STATUSEMPENHO when ''N'' then ''Pendente'' ';
        wSql3 := 'when ''P'' then ''Parcial'' when ''S'' then ''Concluído'' end as wStatusEmpenho from OSV_IT02 O2 left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER) left join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO) ';
        //
        SqlCdsItemOP.Close;
        SqlCdsItemOP.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3,'where O2.OSV_CODIGO = '''+CdsOPOSV_CODIGO.AsString+''' AND O2.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','P2.PRD_DESCRI','O2.');
        SqlCdsItemOP.Open;

    except on E:EdatabaseError do
       begin
          Screen.Cursor := crDefault;
          uteis.erro  (pchar('Erro ao mostrar itens da ordem de produção !'+e.message));
       end;
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServCentro.DbGridOSDblClick(Sender: tObject);
begin
    PageControl1.ActivePageIndex := 1;
    mostraItensOrdem;
end;

procedure TFormOrdServCentro.FiltrarTipoOPs;
begin
    try
      if Rad_Todas.checked  then
         begin
             CdsOp.Filtered := False;
             CdsOp.Filter   := '';
             CdsOp.Filtered := True;
         end;
      if Rad_Aberta.checked  then
         begin
             CdsOp.Filtered := False;
             CdsOp.Filter   := 'OSV_STATUS = ''A''';
             CdsOp.Filtered := True;
         end;
      if Rad_Concluida.checked  then
         begin
             CdsOp.Filtered := False;
             CdsOp.Filter   := 'OSV_STATUS = ''C''';
             CdsOp.Filtered := True;
         end;
      if Rad_Estornada.checked  then
         begin
             CdsOp.Filtered := False;
             CdsOp.Filter   := 'OSV_STATUS = ''E''';
             CdsOp.Filtered := True;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao filtrar as OPs ! '+e.message));
    end;
end;

end.

