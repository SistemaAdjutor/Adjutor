unit PesqApontamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, SgDbSeachComboUnit, Data.FMTBcd, Data.SqlExpr,
  cxGridDBDataDefinitions, ACBrCalculadora, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSFillPatterns, dxPSEdgePatterns,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, frxDBSet, Vcl.Mask, JvExMask, JvToolEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBLookupComboBox, Datasnap.DBClient, FireDAC.Stan.StorageBin, frxExportImage, frxExportDOCX, frxExportPDF, cxFilter, cxData, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Phys.FBDef, system.StrUtils,BaseDbEstoqueForm,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog;
  
type
  TfrmApontamentosCargas = class(TfrmBaseDBPesquisaFDAC)
    Label1: TLabel;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cdsBuscaOPE_CODIGO: TIntegerField;
    cdsBuscaOPE_NOME: TStringField;
    cdsBuscaIOP_NORDEM: TStringField;
    cdsBuscaCAR_CODIGO: TIntegerField;
    cdsBuscaDATA_CARGA: TSQLTimeStampField;
    cdsBuscaPCP_STATUS: TStringField;
    cdsBuscaCAR_STATUS: TStringField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_CODIGO: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscaIOP_PESO: TFMTBCDField;
    cdsBuscaIOP_CUSTO: TFMTBCDField;
    cdsBuscaIOP_PRECO: TFMTBCDField;
    cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn;
    cxgrd1DBTableView1CAR_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1DATA_CARGA: TcxGridDBColumn;
    cxgrd1DBTableView1CAR_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn;
    cdsBuscaPCP_CODIGO: TIntegerField;
    qcli: TSQLQuery;
    PesqCliente: TSgDbSearchCombo;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cdsBuscasemCarga: TFDQuery;
    dsBuscaSemCarga: TDataSource;
    cdsBuscasemCargaIOP_CODIGO: TIntegerField;
    cdsBuscasemCargaIOP_NORDEM: TStringField;
    cdsBuscasemCargaPCP_STATUS: TStringField;
    cdsBuscasemCargaCAR_STATUS: TStringField;
    cdsBuscasemCargaOPE_CODIGO: TIntegerField;
    cdsBuscasemCargaOPE_NOME: TStringField;
    cdsBuscasemCargaPRD_REFER: TStringField;
    cdsBuscasemCargaPRD_CODIGO: TStringField;
    cdsBuscasemCargaPRD_DESCRI: TStringField;
    cdsBuscasemCargaCLI_CODIGO: TStringField;
    cdsBuscasemCargaCLI_RAZAO: TStringField;
    cdsBuscasemCargaPED_CODIGO: TStringField;
    cdsBuscasemCargaPCP_CODIGO: TIntegerField;
    cxgrd1DBTableView2IOP_NORDEM: TcxGridDBColumn;
    cxgrd1DBTableView2PCP_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView2OPE_NOME: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView2CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2CLI_RAZAO: TcxGridDBColumn;
    cxgrd1DBTableView2PED_CODIGO: TcxGridDBColumn;
    cdsBuscaDetalhesPCP_CODIGO: TIntegerField;
    cdsBuscaDetalhesAPP_STATUS: TStringField;
    cdsBuscaDetalhesAPP_DATAINI: TSQLTimeStampField;
    cdsBuscaDetalhesAPP_DATAFIM: TSQLTimeStampField;
    cdsBuscaDetalhesEQP_CODIGO: TIntegerField;
    cdsBuscaDetalhesEQP_DESCRICAO: TStringField;
    cdsBuscaDetalhesUSU_NOME: TStringField;
    cxgrd1Level2: TcxGridLevel;
    cxgrd1DBTableView3: TcxGridDBTableView;
    cxgrd1Level3: TcxGridLevel;
    cxgrd1DBTableView3APP_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView3APP_DATAINI: TcxGridDBColumn;
    cxgrd1DBTableView3EQP_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView3USU_NOME: TcxGridDBColumn;
    cxgrd1DBTableView1OPE_NOME: TcxGridDBColumn;
    cdsBuscaDetalhesCAR_CODIGO: TIntegerField;
    cdsBuscaDetalhesAPP_CODIGO: TIntegerField;
    pAponta: TPopupMenu;
    miExcluirapontamento: TMenuItem;
    cdsBuscaCAR_TEMPOGASTO: TBCDField;
    cxgrd1DBTableView1CAR_TEMPOGASTO: TcxGridDBColumn;
    cdsBuscasemCargaPCP_TEMPO_GASTO: TBCDField;
    cxgrd1DBTableView2PCP_TEMPO_GASTO: TcxGridDBColumn;
    cxgrd1DBTableView3APP_CODIGO: TcxGridDBColumn;
    frxRelatorioApont: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cdsBuscaOPE_DESCRICAO: TStringField;
    cxgrd1DBTableView1OPE_DESCRICAO: TcxGridDBColumn;
    Label2: TLabel;
    Ate: TLabel;
    Data: TGroupBox;
    DataCargaIni: TJvDateEdit;
    DataCargaFim: TJvDateEdit;
    cxgrd1DBTableView2OPR_EMISSAO: TcxGridDBColumn;
    cdsBuscaOPR_EMISSAO: TSQLTimeStampField;
    cdsBuscasemCargaOPR_EMISSAO: TSQLTimeStampField;
    dsSetor: TDataSource;
    cdsSetor: TFDQuery;
    cdsSetorSET_CODIGO: TIntegerField;
    cdsSetorSET_DESCRICAO: TStringField;
    cdsSetorEMP_CODIGO: TStringField;
    Label5: TLabel;
    cdsBuscaEQP_DESCRICAO: TStringField;
    cdsBuscaSET_DESCRICAO: TStringField;
    cxgrd1DBTableView1EQP_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn;
    cdsBuscasemCargaEQP_DESCRICAO: TStringField;
    cdsBuscasemCargaSET_DESCRICAO: TStringField;
    cxgrd1DBTableView2EQP_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView2SET_DESCRICAO: TcxGridDBColumn;
    dsBuscaGeral: TClientDataSet;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;

    MtbRelUnido: TFDMemTable;
    cdsBuscaPCP_DATAINI: TSQLTimeStampField;
    cdsBuscaPCP_DATAFIM: TSQLTimeStampField;
    cdsBuscasemCargaPCP_DATAINI: TSQLTimeStampField;
    cdsBuscasemCargaPCP_DATAFIM: TSQLTimeStampField;
    cdsBuscaPCP_TEMPO_GASTO: TBCDField;
    chkFinalizados: TCheckBox;
    numCarga: TEdit;
    numPedido: TEdit;
    NumOS: TEdit;
    PesqSetor: TSgDbSearchCombo;
    cbsituacao: TComboBox;
    Label7: TLabel;
    cdsBuscasemCargaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscasemCargaIOP_PESO: TFMTBCDField;
    frxPDFExport1: TfrxPDFExport;
    frxDOCXExport1: TfrxDOCXExport;
    frxBMPExport1: TfrxBMPExport;
    cxgrdbclmncxgrd1DBTableView2PCP_DATAINI: TcxGridDBColumn;
    cdsBuscasemCargaCAR_CODIGO: TIntegerField;
    cdsBuscasemCargaDATA_CARGA: TSQLTimeStampField;
    cdsBuscasemCargaIOP_CUSTO: TFMTBCDField;
    cdsBuscasemCargaIOP_PRECO: TFMTBCDField;
    cdsBuscasemCargaCAR_TEMPOGASTO: TBCDField;
    cdsBuscasemCargaOPE_DESCRICAO: TStringField;
    MtbRelUnidoIOP_CODIGO: TIntegerField;
    MtbRelUnidoOPE_CODIGO: TIntegerField;
    MtbRelUnidoOPE_NOME: TStringField;
    MtbRelUnidoIOP_NORDEM: TStringField;
    MtbRelUnidoOPR_EMISSAO: TSQLTimeStampField;
    MtbRelUnidoEQP_DESCRICAO: TStringField;
    MtbRelUnidoSET_DESCRICAO: TStringField;
    MtbRelUnidoPCP_DATAINI: TSQLTimeStampField;
    MtbRelUnidoPCP_DATAFIM: TSQLTimeStampField;
    MtbRelUnidoPCP_TEMPO_GASTO: TBCDField;
    MtbRelUnidoCAR_CODIGO: TIntegerField;
    MtbRelUnidoDATA_CARGA: TSQLTimeStampField;
    MtbRelUnidoPCP_STATUS: TStringField;
    MtbRelUnidoCAR_STATUS: TStringField;
    MtbRelUnidoPRD_REFER: TStringField;
    MtbRelUnidoPRD_CODIGO: TStringField;
    MtbRelUnidoPRD_DESCRI: TStringField;
    MtbRelUnidoCLI_CODIGO: TStringField;
    MtbRelUnidoCLI_RAZAO: TStringField;
    MtbRelUnidoPED_CODIGO: TStringField;
    MtbRelUnidoIOP_QUANTIDADE: TFMTBCDField;
    MtbRelUnidoPCP_CODIGO: TIntegerField;
    MtbRelUnidoIOP_PESO: TFMTBCDField;
    MtbRelUnidoIOP_CUSTO: TFMTBCDField;
    MtbRelUnidoIOP_PRECO: TFMTBCDField;
    MtbRelUnidoCAR_TEMPOGASTO: TBCDField;
    MtbRelUnidoOPE_DESCRICAO: TStringField;
    MtbRelUnidopcp_tempo_seg: TIntegerField;
    cxgrd1DBTableView3PCP_CODIGO: TcxGridDBColumn;
    ExcluirOrdemdacarga1: TMenuItem;
    cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    JvArrowButton1: TJvArrowButton;
    cxgrd1DBTableView1OPE_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1OPR_EMISSAO: TcxGridDBColumn;
    cxgrd1DBTableView1PCP_DATAINI: TcxGridDBColumn;
    cxgrd1DBTableView1PCP_DATAFIM: TcxGridDBColumn;
    cxgrd1DBTableView1PCP_TEMPO_GASTO: TcxGridDBColumn;
    cxgrd1DBTableView1PCP_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_QUANTIDADE: TcxGridDBColumn;
    cxgrd1DBTableView1PCP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_PESO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_CUSTO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_PRECO: TcxGridDBColumn;
    chkFaturada: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure cxgrd1ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
    procedure cdsBuscasemCargaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaDetalhesAPP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure numCargaExit(Sender: TObject);
    procedure miExcluirapontamentoClick(Sender: TObject);
    procedure cdsBuscaCAR_TEMPOGASTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure frxRelatorioApontGetValue(const VarName: string; var Value: Variant);
    procedure lcSetorPropertiesChange(Sender: TObject);
    procedure chkFinalizadosClick(Sender: TObject);
    procedure PesqSetorSelect(Sender: TObject);
    procedure cbsituacaoChange(Sender: TObject);
    procedure cdsBuscaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure MtbRelUnidoCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure MtbRelUnidoCalcFields(DataSet: TDataSet);
    procedure MtbRelUnidoDATA_CARGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ExcluirOrdemdacarga1Click(Sender: TObject);

    procedure btnPesquisaClick(Sender: TObject);
    procedure cdsBuscasemCargaBeforeOpen(DataSet: TDataSet);
  private
    sqlCarga : string;
    Filtros: string;
    procedure filtro;
    procedure filtroDetalhado;
    procedure filtroSemCarga;
     procedure EstornarUltimaOperacao (const ped_codigo : string ; const iop_codigo: Integer);
  public
    { Public declarations }
  end;

var
  frmApontamentosCargas: TfrmApontamentosCargas;

implementation

{$R *.dfm}
uses InicioDB, Uteis, PesquisaClientesForm, uIncApontaIndustrial;

procedure TfrmApontamentosCargas.btnEditaClick(Sender: TObject);
var ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 app_codigo :string;
procedure chamarTela (const cxgrd1DBTableView1 : TcxGridDBTableView)  ;
var ok : boolean;
begin
  with cxgrd1DBTableView1 do
  begin
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
     if ADetailDataController.FocusedRecordIndex = -1 then   // sem nenhuma ordem
       //ADetailDataController.FocusControl(0,ok);
      raise Exception.Create('Selecione um apontamento para editar');
//     if Controller.SelectedRecordCount> 1 then
//        raise Exception.Create('Não selecionado nenhum apontamento');

     if ADetailDataController.Controller.SelectedRecords[0].IsData then
     begin
       app_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_CODIGO.index];
        if not assigned(frmApontamentoIndustrial) then
          frmApontamentoIndustrial := TfrmApontamentoIndustrial.Create(Application);
          frmApontamentoIndustrial.pcp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3PCP_CODIGO.index];
          frmApontamentoIndustrial.EditaUnico(app_codigo,'Edição do apontamento');


     end;
  end;

end;
begin
  inherited;

  IF cxGrd1.ActiveLevel = cxgrdlvlGrid1Level1 then
  begin
    chamarTela( cxgrd1DBTableView1)
  end
  else if cxGrd1.ActiveLevel = cxgrd1Level1 then
  begin
    chamarTela( cxgrd1DBTableView2)
  end;


  btnPesquisa.Click;
  filtroDetalhado;
  cdsBuscaDetalhes.open;

  cdsBuscasemCarga.Open;
end;

procedure TfrmApontamentosCargas.btnNovoClick(Sender: TObject);
var
  codigo : integer;
begin
  inherited;
  if not assigned(frmApontamentoIndustrial) then
   frmApontamentoIndustrial := TfrmApontamentoIndustrial.Create(Application);
  frmApontamentoIndustrial.Novo('Apontamento de industrialização');
  btnPesquisa.Click;



end;

procedure TfrmApontamentosCargas.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  filtroSemCarga


end;

procedure TfrmApontamentosCargas.btnrelatoriosClick(Sender: TObject);
begin
  inherited;
  cdsBusca.FetchAll;
  if numCarga.Text = '' then
  begin
    if not cdsBuscasemCarga.Active then
    begin

      cdsBuscasemCarga.Open;

    end;
    cdsBuscasemCarga.FetchAll;
    cdsBuscasemCarga.Filtered := False;
    if cxgrd1DBTableView2.DataController.Filter.FilterText<> '' then
    begin
     cdsBuscasemCarga.Filter:= cxgrd1DBTableView2.DataController.Filter.FilterText;
     cdsBuscasemCarga.Filtered := True;
    end;

  end;

  cdsbusca.Filtered:= False;

  if cxgrd1DBTableView1.DataController.Filter.FilterText<>'' then
  begin
    cdsbusca.Filter := cxgrd1DBTableView1.DataController.Filter.FilterText;
    cdsbusca.Filtered := true;
  end;

  MtbRelUnido.Close;
//  MtbRelUnido.Data := cdsBuscasemCarga.Data;
  MtbRelUnido.CreateDataSet;
  MtbRelUnido.CopyDataSet(cdsBusca,[ coRestart, coAppend]);
  if numCarga.Text = '' then
    MtbRelUnido.CopyDataSet(cdsBuscasemCarga,[coAppend]);

  if MtbRelUnido.RecordCount = 0  then
    raise Exception.Create('Sem informações para imprimir');
  frxRelatorioApont.ShowReport(True);
  cdsbusca.Filtered:= False;
  cdsBuscasemCarga.Filtered := False;
end;

procedure TfrmApontamentosCargas.cbsituacaoChange(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmApontamentosCargas.cdsBuscaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger>0 then
    Text := 'CG'+Sender.AsString
  else
    TEXT:= '';
end;

procedure TfrmApontamentosCargas.cdsBuscaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'P' then
    Text := 'Pendente'
  else if Sender.AsString = 'E' then
    Text := 'Em andamento'
  else if Sender.AsString = 'C' then
    Text := 'Carga confirmada'
  else if Sender.AsString = 'F' then
    Text := 'Concluído'
  else if Sender.AsString = 'A' then
    Text := 'Cancelado';
end;

procedure TfrmApontamentosCargas.cdsBuscaCAR_TEMPOGASTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var horas : real;
  Dias:Integer;
begin
  inherited;
  if Sender.AsFloat > 0  then
  begin
    Dias:=  trunc(Sender.AsFloat);
    horas :=  Sender.AsFloat - Dias;
    Text := IntToStr(dias) + ' dias e horas ' + TimeToStr(horas);

  end;
end;

procedure TfrmApontamentosCargas.cdsBuscaDetalhesAPP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'E' then
    Text := 'Em andamento'
  else if Sender.AsString = 'P' then
    Text := 'Parado'
  else if Sender.AsString = 'C' then
    Text := 'Carga confirmada'
  else if Sender.AsString = 'F' then
    Text := 'Finalizado'
  else if Sender.AsString = 'A' then
    Text := 'Cancelado';
end;

procedure TfrmApontamentosCargas.cdsBuscasemCargaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  filtroSemCarga;
end;

procedure TfrmApontamentosCargas.cdsBuscasemCargaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsBuscasemCarga.Active and not cdsBuscasemCarga.IsEmpty then
  begin
     if Sender.AsString = 'P' then
      Text := 'Pendente'
    else if Sender.AsString = 'C' then
      Text := 'Carga confirmada'
    else if Sender.AsString = 'F' then
      Text := 'Concluído'
    else if Sender.AsString = 'A' then
      Text := 'Cancelado';
  end;
end;

procedure TfrmApontamentosCargas.chkFinalizadosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmApontamentosCargas.cxgrd1ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  inherited;
  if ALevel.Name = 'cxgrdlvlGrid1Level1' then  //CARGA
  begin
    cxgrd1DBTableView3.DataController.DetailKeyFieldNames := 'CAR_CODIGO';
    cxgrd1DBTableView3.DataController.KeyFieldNames := 'CAR_CODIGO';
    cxgrd1DBTableView3.DataController.MasterKeyFieldNames := 'CAR_CODIGO';
    cxgrd1Level2.GridView  := cxgrd1DBTableView3;

   // ShowMessage('cxgrdlvlGrid1Level1')
  end
  else if ALevel.Name = 'cxgrd1Level1' then     // POR OPERACOES
  begin
    if numCarga.Text = '' then
    begin

      cdsBuscasemCarga.Open;
      cxgrd1DBTableView3.DataController.DetailKeyFieldNames := 'PCP_CODIGO';
      cxgrd1DBTableView3.DataController.KeyFieldNames := 'PCP_CODIGO';
      cxgrd1DBTableView3.DataController.MasterKeyFieldNames := 'PCP_CODIGO';
      cxgrd1Level3.GridView  := cxgrd1DBTableView3;
    end;
    //ShowMessage('cxgrd1Level1')
  end;
  cxgrd1DBTableView3.DataController.Refresh;
end;

procedure TfrmApontamentosCargas.EstornarUltimaOperacao(const ped_codigo: string; const iop_codigo: integer);
var kardex :  TfrmBaseDbEstoque ;
conclusao : tdatetime;
begin
   //SE O APONTAMENTO FOR FINALIZADO E JÁ TIVER CONCLUIDO a ordem,
   // dar saida do estoque e voltar a não concluido
   conclusao := BuscaUmDadoSqlAsDateTime  (
       ' SELECT IOP_DATA_CONCLUSAO FROM ITEM_ORDEMPRODUCAO IOP      '+
       ' WHERE IOP_CODIGO = '+ IntToStr(iop_codigo));
  if conclusao >0 then
  Begin

    // SAIDA DO ESTOQUE   de todos os itens, porque só entrou no estoque de todos os itens quando toda o pedido estiver completo
    // desta maneira só vai sair do estoque também quando um das operações foi excluida sair do estoque de todos (claro que a maior das vezes só tem um item)
    if not Assigned(kardex) then
      kardex := TfrmBaseDbEstoque.Create(Application);
    try
      OpenAux4('SELECT * FROM ITEM_ORDEMPRODUCAO IOP                        '+
               ' JOIN ORDEMPRODUCAO opr ON (opr.OPR_CODIGO = iop.OPR_CODIGO)   '+
               ' WHERE iop_codigo = '+ IntToStr(iop_codigo)   );

      qAux4.First;

        kardex.KardexLancamento(IntToStr(iop_codigo),
                  'PRO',
                  DBInicio.Empresa.PMT_AMX_PRODUCAO_ENTRADA,'',
                  qAux4.FieldByName('prd_codigo').AsString,
                   '', // grade
                   '', //unidade
                   'S', //ITPO
                   '',  //LOTE
                   '',  //LOTE
                   '',//OSBERVAÇÃO
                   NOW,
                   qAux4.FieldByName('IOP_QUANTIDADE').AsFloat,
                   qAux4.FieldByName('IOP_NORDEM').AsString,
                   '', //DESCRIÇÃO
                   0,
                  qAux4.FieldByName('CLI_CODIGO').AsString // CLIENTE

                   )  ;
      ExecSql('UPDATE ITEM_ORDEMPRODUCAO SET  IOP_STATUS = ''L'' , IOP_DATA_CONCLUSAO = NULL , IOP_LEADTIME = 0  WHERE IOP_CODIGO = '+IntToStr(iop_codigo) );

    finally
      FreeAndNil(kardex);
    end;


    // voltar a liberada e sem conclusão e sem lieadtime
   ExecSql('UPDATE ORDEMPRODUCAO SET OPR_CONCLUSAO = NULL , OPR_STATUS = ''L'' WHERE PED_CODIGO = '+quotedStr(ped_codigo) +' and emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));
  End;
end;

procedure TfrmApontamentosCargas.ExcluirOrdemdacarga1Click(Sender: TObject);
var car_codigo , iop_codigo: Integer;
  ped_codigo : string;
 ok :Boolean;
begin
  inherited;
  IF cxgrdlvlGrid1Level1.Active then
  begin
   // exclusão do apontamento da carga
    if (MessageDlg('Deseja excluir a ordem da carga ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      car_codigo := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1CAR_CODIGO.Index];
      iop_codigo := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1IOP_CODIGO.Index];
      ped_codigo := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_CODIGO.Index];
      ExecSql('delete from PROCESSOS_PRODUCAO WHERE CAR_CODIGO = '+IntToStr(car_codigo) + ' and iop_codigo = '+IntToStr(iop_codigo));
      // carga nunca pode ter a ultima operação, assim não precisa sair do estoque ao excluir sair do concluido para liberado

      filtro;
    end;
    btnPesquisa.Click;
  end
  else
  begin
    raise Exception.Create('Não se aplica carga neste apontamento');

  end;
end;

procedure TfrmApontamentosCargas.filtro;
var sqltext : string;
begin
  if chkFaturada.Checked then
  begin
    with cdsBusca,sql do
    begin
      Filtros := '';
      sqltext := ' SELECT DISTINCT iop.iop_codigo, IOP_NORDEM, ca.car_codigo, ca.DATA_CARGA, coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
                 ' coalesce(car_status,''P'') car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
                 '  pr.prd_refer, pr.prd_codigo,   cl.cli_codigo, '+
                 ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,  '+
                 ' cl.cli_razao, OP.ped_codigo,  '+
                 '  CASE  '+
                 '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT  PRF_PESOKG* PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS iop_peso, '+
                 ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, CAR_TEMPOGASTO, OPR_EMISSAO, '+
                 ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
                 '  CASE  '+
                 '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS IOP_QUANTIDADE '+
                 ' from item_ordemproducao iop '+
                 ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)      '+
                 ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)             '+
                 ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)             '+
                 ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)            '+
                 ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) '+
                 ' join carga ca on (ca.car_codigo = pp.car_codigo)               '+
                 ' join operacoes ope on (ope.ope_codigo = pp.ope_codigo)         '+
                 ' JOIN NF0001 nf ON (nf.PED_CODIGO = op.ped_codigo)              '+
                 ' JOIN  ped_it01 pi ON (iop.prf_registro = pi.prf_registro)      '+
                 ' JOIN  NF_IT01 nfit on (nf.nf_notanumber = nfit.nf_it_notanumer and pi.prf_registro = nfit.prf_registro) '
                 ;
      end;


       if pesqsetor.idRetorno <> ''  then
       begin
         sqltext:=  sqltext + ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:=   sqltext+ ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
         Filtros:= 'Setor : '+ pesqsetor.idRetorno  + '-'+pesqsetor.cds.FieldByName('SET_DESCRICAO').AsString;
       end
       else
       begin
         sqltext:=  sqltext + ' left join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:= sqltext  + ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
       end;

      cdsBusca.SQL.Text := sqltext;
      if DBINICIO.Exclusivo('PEDIDOS') then
         SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

      if PesqCliente.idRetorno <> '' then
      begin
        filtros:= filtros+ ' Cliente '+PesqCliente.Text;
        SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );

      end;
      if NumOS.Text <> '' then
        SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
      if numPedido.Text <> '' then
        SqlAdd(' OP.ped_codigo CONTAINING '+ QuotedStr(numPedido.Text) );
      if numCarga.Text <> ''  then
        SqlAdd('ca.car_codigo = '+  AnsiReplaceStr(numCarga.Text,'CG','' ));

      // DATA QUE FOI FEITA A CONFIRMAÇÃO DA CARGA
      if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
          SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
      else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
        SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
      else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
        SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));

      if chkFinalizados.Checked then
        SqlAdd(' pp.pcp_status = ' +QuotedStr('F'));
      if cbsituacao.ItemIndex<> -1 then
      begin
        case cbsituacao.ItemIndex of
          0 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('P')); filtros:= filtros+ ' Situação Pententes'; end;
          1 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('C')); filtros:= filtros+ ' Situação Confirmada'; end;
          2 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('F')); filtros:= filtros+ ' Situação Finalizada'; end;
          3 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('A')); filtros:= filtros+ ' Situação Canceladas'; end;
          4 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('E')); filtros:= filtros+ ' Situação Em andamento'; end;
          5 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('S')); filtros:= filtros+ ' Situação Parada'; end;
        end;
      end;
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // AGRUPADOS
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    with cdsBusca,sql do
    begin
      Filtros := '';
      Filtrados := false;
      sqlText := cdsBusca.SQL.Text;
      sqltext := sqlText + ' UNION ALL ' +
                 ' SELECT DISTINCT iop.iop_codigo, IOP_NORDEM, ca.car_codigo, ca.DATA_CARGA, coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
                 ' coalesce(car_status,''P'') car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
                 '  pr.prd_refer, pr.prd_codigo,   cl.cli_codigo, '+
                 ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,  '+
                 ' cl.cli_razao, OP.ped_codigo,  '+
                 '  CASE  '+
                 '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT  PRF_PESOKG* PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS iop_peso, '+
                 ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, CAR_TEMPOGASTO, OPR_EMISSAO, '+
                 ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
                 '  CASE  '+
                 '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS IOP_QUANTIDADE '+
                 ' from item_ordemproducao iop '+
                 ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)      '+
                 ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)             '+
                 ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)             '+
                 ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)            '+
                 ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) '+
                 ' join carga ca on (ca.car_codigo = pp.car_codigo)               '+
                 ' join operacoes ope on (ope.ope_codigo = pp.ope_codigo)         '+
                 ' JOIN NF0001 nf ON (nf.PED_CODIGO = pe.PED_CODIGO_AGRUPADO)              '+
               //  ' JOIN  ped_it01 pi ON (iop.prf_registro = pi.prf_registro)      '+
                 ' JOIN  NF_IT01 nfit on (nf.nf_notanumber = nfit.nf_it_notanumer )' // and pi.prf_registro = nfit.prf_registro ) '
                 ;
      end;


       if pesqsetor.idRetorno <> ''  then
       begin
         sqltext:=  sqltext + ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:=   sqltext+ ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
         Filtros:= 'Setor : '+ pesqsetor.idRetorno  + '-'+pesqsetor.cds.FieldByName('SET_DESCRICAO').AsString;
       end
       else
       begin
         sqltext:=  sqltext + ' left join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:= sqltext  + ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
       end;

      cdsBusca.SQL.Text := sqltext;
      if DBINICIO.Exclusivo('PEDIDOS') then
         SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

      if PesqCliente.idRetorno <> '' then
      begin
        filtros:= filtros+ ' Cliente '+PesqCliente.Text;
        SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );

      end;
      if NumOS.Text <> '' then
        SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
      if numPedido.Text <> '' then
        SqlAdd(' pe.PED_CODIGO_AGRUPADO CONTAINING '+ QuotedStr(numPedido.Text) );
      if numCarga.Text <> ''  then
        SqlAdd('ca.car_codigo = '+  AnsiReplaceStr(numCarga.Text,'CG','' ));

      // DATA QUE FOI FEITA A CONFIRMAÇÃO DA CARGA
      if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
          SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
      else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
        SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
      else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
        SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));

      if chkFinalizados.Checked then
        SqlAdd(' pp.pcp_status = ' +QuotedStr('F'));
      if cbsituacao.ItemIndex<> -1 then
      begin
        case cbsituacao.ItemIndex of
          0 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('P')); filtros:= filtros+ ' Situação Pententes'; end;
          1 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('C')); filtros:= filtros+ ' Situação Confirmada'; end;
          2 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('F')); filtros:= filtros+ ' Situação Finalizada'; end;
          3 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('A')); filtros:= filtros+ ' Situação Canceladas'; end;
          4 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('E')); filtros:= filtros+ ' Situação Em andamento'; end;
          5 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('S')); filtros:= filtros+ ' Situação Parada'; end;
        end;
      end;
















  end
  else
  begin
    with cdsBusca,sql do
    begin
      Filtros := '';
      sqltext := ' SELECT  iop.iop_codigo, IOP_NORDEM, ca.car_codigo, ca.DATA_CARGA, coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
                 ' coalesce(car_status,''P'') car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
                 '  pr.prd_refer, pr.prd_codigo,   cl.cli_codigo, '+
                 ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,  '+
                 ' cl.cli_razao, OP.ped_codigo,  '+
                 '  CASE  '+
                 '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT  PRF_PESOKG* PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS iop_peso, '+
                 ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, CAR_TEMPOGASTO, OPR_EMISSAO, '+
                 ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
                 '  CASE  '+
                 '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS IOP_QUANTIDADE '+
                 ' from item_ordemproducao iop '+
                 ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)      '+
                 ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)             '+
                 ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)             '+
                 ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)            '+
                 ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) '+
                 ' join carga ca on (ca.car_codigo = pp.car_codigo)               '+
                 ' join operacoes ope on (ope.ope_codigo = pp.ope_codigo)         ';

       if pesqsetor.idRetorno <> ''  then
       begin
         sqltext:=  sqltext + ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:=   sqltext+ ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
         Filtros:= 'Setor : '+ pesqsetor.idRetorno  + '-'+pesqsetor.cds.FieldByName('SET_DESCRICAO').AsString;
       end
       else
       begin
         sqltext:=  sqltext + ' left join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO) ';
         sqltext:= sqltext  + ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
       end;

      cdsBusca.SQL.Text := sqltext;
      if DBINICIO.Exclusivo('PEDIDOS') then
         SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

      if PesqCliente.idRetorno <> '' then
      begin
        filtros:= filtros+ ' Cliente '+PesqCliente.Text;
        SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );

      end;
      if NumOS.Text <> '' then
        SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
      if numPedido.Text <> '' then
        SqlAdd(' OP.ped_codigo CONTAINING '+ QuotedStr(numPedido.Text) );
      if numCarga.Text <> ''  then
        SqlAdd('ca.car_codigo = '+  AnsiReplaceStr(numCarga.Text,'CG','' ));

      // DATA QUE FOI FEITA A CONFIRMAÇÃO DA CARGA
      if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
      begin
        SqlAdd(' PP.PCP_DATAINI >='+DateToSQL(DataCargaIni.Date) )
      end
      else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
      begin
         SqlAdd(' PP.PCP_DATAINI <='+DateToSQL(DataCargaFim.date) )
      end
      else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
      begin
        filtros:=filtros + ' Período de '+FormatDateTime('dd/mm/yyyy',DataCargaIni.date)+ ' a '+ FormatDateTime('dd/mm/yyyy',DataCargaFim.date);
        SqlAdd(' PP.PCP_DATAINI between '+DateToSQL(DataCargaIni.date) +' and '+  DateTimeToSQL(DataCargaFim.date+ StrToTime('23:59:59') ));
      end;

      if chkFinalizados.Checked then
        SqlAdd(' pp.pcp_status = ' +QuotedStr('F'));
      if cbsituacao.ItemIndex<> -1 then
      begin
        case cbsituacao.ItemIndex of
          0 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('P')); filtros:= filtros+ ' Situação Pententes'; end;
          1 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('C')); filtros:= filtros+ ' Situação Confirmada'; end;
          2 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('F')); filtros:= filtros+ ' Situação Finalizada'; end;
          3 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('A')); filtros:= filtros+ ' Situação Canceladas'; end;
          4 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('E')); filtros:= filtros+ ' Situação Em andamento'; end;
          5 : begin SqlAdd(' CAR_STATUS = '+QuotedStr('S')); filtros:= filtros+ ' Situação Parada'; end;
        end;
      end;

    end;

  end;
  CopyToClipBoard(cdsBusca.SQL.Text);
end;

procedure TfrmApontamentosCargas.filtroDetalhado;
var sql : string;
begin
  sql := ' SELECT APP_CODIGO, PCP_CODIGO, APP_STATUS, APP_DATAINI, APP_DATAFIM, eq.EQP_CODIGO, eq.EQP_DESCRICAO, USU.USU_NOME,  AP.CAR_CODIGO '+
         '  FROM APONTAMENTO_PROCESSO ap '+
         '  LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ap.EQP_CODIGO) '+
         '  LEFT JOIN USUARIO USU ON (USU.USU_CODIGO = ap.USU_CODIGO)  '+
         ' WHERE APP_CANCELADO is null '+//+ QuotedStr('S') +
         ' ORDER BY CAR_CODIGO, PCP_CODIGO , APP_DATAINI  ';
  cdsBuscaDetalhes.sql.Text:= sql;
  cdsBuscaDetalhes.Open;

end;

procedure TfrmApontamentosCargas.filtroSemCarga;
var sql, filtrou : boolean;
  procedure SqlAdd(const stt: string);
  begin
    if stt<>'' then
    begin
      if not filtrou then
         cdsBuscasemCarga.SQL.Add('WHERE '+stt)
      else
        cdsBuscasemCarga.SQL.Add('AND '+stt);
      filtrou := True;


    end;
  end;
begin
  if numCarga.Text <> '' then
  begin
    cdsBuscasemCarga.Close;
    exit;
  end;
  filtrou := False;
 if chkFaturada.Checked then
  begin
      sqlCarga := ' SELECT DISTINCT iop.iop_codigo, IOP_NORDEM,   coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
               ' ''P'' car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
               '  pr.prd_refer, pr.prd_codigo,  cl.cli_codigo, '+
               ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,    '+
               ' cl.cli_razao, OP.ped_codigo, '+
                  '  CASE  '+
                 '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT PRF_PESOKG * PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS iop_peso, '+
               ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, PCP_TEMPO_GASTO, OPR_EMISSAO, '+
               ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
               '  CASE  '+
               '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
               '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
               '    end     '+
               '   AS IOP_QUANTIDADE '+
               ' from item_ordemproducao iop '+
               ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '+
               ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)    '+
               ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)    '+
               ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)   '+
               ' join PROCESSOS_OPERACOES pop on (iop.pro_codigo = pop.pro_codigo) '+     //copia modelo de processos
               ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_NAOUSACARGA = ''S'') ' +
               ' JOIN NF0001 nf ON (nf.PED_CODIGO = pe.PED_CODIGO)  '+
               ' JOIN  ped_it01 pi ON (iop.prf_registro = pi.prf_registro)      '+
               ' JOIN NF_IT01 nfit ON (nf.nf_notanumber = nfit.nf_it_notanumer  and pi.prf_registro = nfit.prf_registro ) '
               ;


       //tem setor no filtro
       if (pesqsetor.idRetorno <> '')  then
       begin
         sqlCarga:=   sqlCarga+
                    ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
          cdsBuscasemCarga.sql.Text := sqlCarga;
          // foi selecionado uma data
          if cbsituacao.ItemIndex<> -1 then
          begin
            case cbsituacao.ItemIndex of
              0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
              1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
              2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
              3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
              4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
              5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));   //standby
            end;
          end;
          // DATA? SERIA DA DA EMISSÃO DA ORDEM DE PRODUÇÃO OU A DATA SE FOI FEITO O PRIMEIRO APONTAMENTO
          if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
              SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
          else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
          else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));
       end
       else
       Begin
         if (cbsituacao.ItemIndex<> -1) or (DataCargaIni.date > 0) or (DataCargaFim.date > 0) then
         begin
           sqlCarga:= sqlCarga+
                    ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
            cdsBuscasemCarga.sql.Text := sqlCarga;
            case cbsituacao.ItemIndex of
              0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
              1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
              2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
              3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
              4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
              5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));    //standby
            end;
          if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
              SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
          else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
          else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));
         end
         else
         Begin
           sqlCarga:= sqlCarga+
                    ' LEFT join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
            cdsBuscasemCarga.sql.Text := sqlCarga;
         end;
       end;

    if DBINICIO.Exclusivo('PEDIDOS') then
      SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if PesqCliente.idRetorno <> '' then
      SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );
    if NumOS.Text <> '' then
      SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
    if numPedido.Text <> '' then
      SqlAdd(' pe.ped_codigo_agrupado CONTAINING '+ QuotedStr(numPedido.Text) );
    if chkFaturada.Checked then
      SqlAdd(' nf.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///  AGRUPADO
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    filtrou := False;
    Filtrados := false;
    sqlCarga := cdsBuscasemCarga.SQL.Text;
    sqlCarga := sqlCarga +  ' UNION ALL SELECT DISTINCT iop.iop_codigo, IOP_NORDEM,   coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
             ' ''P'' car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
             '  pr.prd_refer, pr.prd_codigo,  cl.cli_codigo, '+
             ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,    '+
             ' cl.cli_razao, OP.ped_codigo, '+
                '  CASE  '+
               '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
               '   ELSE (SELECT PRF_PESOKG * PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
               '    end     '+
               '   AS iop_peso, '+
             ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, PCP_TEMPO_GASTO, OPR_EMISSAO, '+
             ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
             '  CASE  '+
             '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
             '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
             '    end     '+
             '   AS IOP_QUANTIDADE '+
             ' from item_ordemproducao iop '+
             ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '+
             ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)    '+
             ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)    '+
             ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)   '+
             ' join PROCESSOS_OPERACOES pop on (iop.pro_codigo = pop.pro_codigo) '+     //copia modelo de processos
             ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_NAOUSACARGA = ''S'') ' +
             ' JOIN NF0001 nf ON (nf.PED_CODIGO = pe.PED_CODIGO_AGRUPADO)  '+
             ' JOIN NF_IT01 nfit ON (nf.nf_notanumber = nfit.nf_it_notanumer  ) '
             ;

     //tem setor no filtro
     if (pesqsetor.idRetorno <> '')  then
     begin
       sqlCarga:=   sqlCarga+
                  ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                  ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                  ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
        cdsBuscasemCarga.sql.Text := sqlCarga;
        // foi selecionado uma data
        if cbsituacao.ItemIndex<> -1 then
        begin
          case cbsituacao.ItemIndex of
            0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
            1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
            2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
            3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
            4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
            5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));   //standby
          end;
        end;
        // DATA? SERIA DA DA EMISSÃO DA ORDEM DE PRODUÇÃO OU A DATA SE FOI FEITO O PRIMEIRO APONTAMENTO
        if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
            SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
        else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
          SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
        else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
          SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));
     end
     else
     Begin
       if (cbsituacao.ItemIndex<> -1) or (DataCargaIni.date > 0) or (DataCargaFim.date > 0) then
       begin
         sqlCarga:= sqlCarga+
                  ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                  ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                  ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
          cdsBuscasemCarga.sql.Text := sqlCarga;
          case cbsituacao.ItemIndex of
            0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
            1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
            2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
            3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
            4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
            5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));    //standby
          end;
        if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
            SqlAdd(' nf.NF_EMISSAO >='+DateToSQL(DataCargaIni.Date) )
        else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
          SqlAdd(' nf.NF_EMISSAO <= '+DateToSQL(DataCargaFim.date) )
        else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
          SqlAdd(' nf.NF_EMISSAO between '+DateToSQL(DataCargaIni.date) +' and '+ DateToSQL(DataCargaFim.date));
       end
       else
       Begin
         sqlCarga:= sqlCarga+
                  ' LEFT join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                  ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                  ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
          cdsBuscasemCarga.sql.Text := sqlCarga;
       end;
     end;

    if DBINICIO.Exclusivo('PEDIDOS') then
      SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if PesqCliente.idRetorno <> '' then
      SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );
    if NumOS.Text <> '' then
      SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
    if numPedido.Text <> '' then
      SqlAdd(' pe.ped_codigo_agrupado CONTAINING '+ QuotedStr(numPedido.Text) );
    if chkFaturada.Checked then
      SqlAdd(' nf.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );
















  end
  else
  begin
      sqlCarga := ' SELECT  iop.iop_codigo, IOP_NORDEM,   coalesce(PCP_STATUS,''G'') PCP_STATUS, '+
               ' ''P'' car_status , ope.ope_codigo, ope.ope_nome, ope.ope_descricao, '+
               '  pr.prd_refer, pr.prd_codigo,  cl.cli_codigo, '+
               ' (SELECT PRF_PRDDESCRI FROM PED_IT01 it WHERE  IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO) prd_descri,    '+
               ' cl.cli_razao, OP.ped_codigo, '+
                  '  CASE  '+
                 '   WHEN pr.PRD_UND = ''KG'' THEN IOP_QUANTIDADE '+
                 '   ELSE (SELECT PRF_PESOKG * PRF_QTDE FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
                 '    end     '+
                 '   AS iop_peso, '+
               ' IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, PCP_TEMPO_GASTO, OPR_EMISSAO, '+
               ' eqp_Descricao, se.SET_DESCRICAO,  pp.PCP_DATAINI, pp.PCP_DATAFIM, PCP_TEMPO_GASTO, '+
               '  CASE  '+
               '   WHEN (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  = 0 THEN IOP_QUANTIDADE '+
               '   ELSE (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = IT.PRF_REGISTRO)  '+
               '    end     '+
               '   AS IOP_QUANTIDADE '+
               ' from item_ordemproducao iop '+
               ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '+
               ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)    '+
               ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)    '+
               ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)   '+
               ' join PROCESSOS_OPERACOES pop on (iop.pro_codigo = pop.pro_codigo) '+     //copia modelo de processos
               ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_NAOUSACARGA = ''S'') ';

       //tem setor no filtro
       if (pesqsetor.idRetorno <> '')  then
       begin
         sqlCarga:=   sqlCarga+
                    ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO and se.set_codigo = '+VarToStr(pesqsetor.idRetorno)+  ') ' ;
          cdsBuscasemCarga.sql.Text := sqlCarga;
          // foi selecionado uma data
          if cbsituacao.ItemIndex<> -1 then
          begin
            case cbsituacao.ItemIndex of
              0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
              1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
              2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
              3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
              4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
              5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));   //standby
            end;
          end;
          // DATA? SERIA DA DA EMISSÃO DA ORDEM DE PRODUÇÃO OU A DATA SE FOI FEITO O PRIMEIRO APONTAMENTO
          if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
              SqlAdd(' PP.PCP_DATAINI >='+DateToSQL(DataCargaIni.Date) )
          else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' PP.PCP_DATAINI <= '+DateToSQL(DataCargaFim.date) )
          else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' PP.PCP_DATAINI between '+DateToSQL(DataCargaIni.date) +' and '+ DateTimeToSQL(DataCargaFim.date+ StrToTime('23:59:59') ));
       end
       else
       Begin
         if (cbsituacao.ItemIndex<> -1) or (DataCargaIni.date > 0) or (DataCargaFim.date > 0) then
         begin
           sqlCarga:= sqlCarga+
                    ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
            cdsBuscasemCarga.sql.Text := sqlCarga;
            case cbsituacao.ItemIndex of
              0 : SqlAdd(' PCP_STATUS = '+QuotedStr('P'));    //penderte
              1 : SqlAdd(' PCP_STATUS = '+QuotedStr('C'));    //confirmado
              2 : SqlAdd(' PCP_STATUS = '+QuotedStr('F'));    //finalizado
              3 : SqlAdd(' PCP_STATUS = '+QuotedStr('A'));    //cancelado
              4 : SqlAdd(' PCP_STATUS = '+QuotedStr('E'));    //em andamento
              5 : SqlAdd(' PCP_STATUS = '+QuotedStr('S'));    //standby
            end;
          if (DataCargaIni.date > 0) and (DataCargaFim.date = 0)then
              SqlAdd(' PP.PCP_DATAINI >='+DateToSQL(DataCargaIni.Date) )
          else if (DataCargaIni.date = 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' PP.PCP_DATAINI <= '+DateToSQL(DataCargaFim.date) )
          else if (DataCargaIni.date > 0) and (DataCargaFim.date > 0)  then
            SqlAdd(' PP.PCP_DATAINI between '+DateToSQL(DataCargaIni.date) +' and '+ DateTimeToSQL(DataCargaFim.date+ StrToTime('23:59:59') ));
         end
         else
         Begin
           sqlCarga:= sqlCarga+
                    ' LEFT join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo AND pp.OPE_CODIGO = ope.OPE_CODIGO)                 '+
                    ' LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = PP.EQP_CODIGO)' +
                    ' left join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ';
            cdsBuscasemCarga.sql.Text := sqlCarga;
         end;
       end;


    if DBINICIO.Exclusivo('PEDIDOS') then
      SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if PesqCliente.idRetorno <> '' then
      SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );
    if NumOS.Text <> '' then
      SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
    if numPedido.Text <> '' then
      SqlAdd(' OP.ped_codigo CONTAINING '+ QuotedStr(numPedido.Text) );
    if chkFaturada.Checked then
      SqlAdd(' nf.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) );

  end;



end;

procedure TfrmApontamentosCargas.FormCreate(Sender: TObject);
begin
  inherited;
  self.Menu:= 'ProduçãoGerenciamento apontamentos';
  Self.ProcedureFiltro := filtro;
//  self.DepoisFiltro :=onDepoisFiltro;
  self.ProcedureFiltroDetalhe := filtroDetalhado;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
//  self.width:=1175;
//  self.height:=612;
//  Menu := 'ProduçãoPCP';

  self.CampoID := 'IOP_CODIGO';
  sqlCarga := cdsBuscasemCarga.sql.Text;


end;

procedure TfrmApontamentosCargas.FormDestroy(Sender: TObject);
begin
  inherited;
  frmApontamentosCargas := nil;
end;

procedure TfrmApontamentosCargas.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  cdsSetor.Open;
  btnPesquisa.Click;
end;

procedure TfrmApontamentosCargas.frxRelatorioApontGetValue(const VarName: string; var Value: Variant);
var listaOrdem:TStringList;
var horas : real;
  Dias:Integer;

begin
  inherited;
 if (VarName = 'FILTRO') then
  begin
    if (Filtros <> '') then
      Value := 'Filtros: '+Filtros
    else
    begin
      Value := ''
    end;
  end
  else if (VarName = 'CargaouOrdem') then
  begin
    if MtbRelUnidoCAR_CODIGO.AsInteger = 0  then
     Value := MtbRelUnidoIOP_NORDEM.AsString
    else
     Value := 'CG'+ MtbRelUnidoCAR_CODIGO.AsString;
  end
  else if (VarName = 'OrdemCarga')then
  begin
    OpenAux2('SELECT IOP_NORDEM FROM PROCESSOS_PRODUCAO PCP JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = PCP.IOP_CODIGO) ' +
             ' WHERE CAR_CODIGO = '+ IntToStr(MtbRelUnidoCAR_CODIGO.AsInteger));
      listaOrdem := TStringList.Create;
      listaOrdem.Delimiter:= ',';
      try
        while not qAux2.Eof do
        begin
          listaOrdem.Add(qAux2.FieldByName('IOP_NORDEM').AsString);
          qAux2.Next;
        end;
        Value := listaOrdem.DelimitedText;
      finally
        listaOrdem.Free;
      end;

  end;

end;


procedure TfrmApontamentosCargas.lcSetorPropertiesChange(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmApontamentosCargas.miExcluirapontamentoClick(Sender: TObject);
var motivo, status :string;
 ADetailDataController: TcxGridDBDataController;   {cxGridDBDataDefinitions}
 ADetailRecordCount, ARelationIndex, AFocusedIndex, app_codigo, pcp_codigo,car_codigo, iop_codigo : Integer;
 ped_codigo, nordem :string;
 var ok :Boolean;
 Tcr :  TfrmBaseDbEstoque;
begin
  inherited;
  //excluir os apontamentos
  IF cxgrdlvlGrid1Level1.Active then
  begin
    car_codigo := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1CAR_CODIGO.Index];

   // exclusão do apontamento da carga
    if (MessageDlg('Deseja realmente excluir o apontamento da CARGA CG'+IntToStr(car_codigo)+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      //se for excluir o apotamento da carga , exclui o apontamento da carga , não da ordem
      with cxgrd1DBTableView1 do
      begin
        ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
        ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
          if ADetailDataController.FocusedRecordIndex = -1 then   // sem seleção
            raise Exception.Create('Nenhum apontamento selecionado');
          if ADetailDataController.Controller.SelectedRecords[0].IsData then
           begin
             app_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_CODIGO.index];
             status := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_STATUS.index];
             // verifica se é ultimo apontamento de entre todas as ORDENS da CARGA
             if
             BuscaUmDadoSqlAsInteger('SELECT FIRST 1 AP.APP_CODIGO FROM ITEM_ORDEMPRODUCAO IO '+
                                     ' JOIN PROCESSOS_PRODUCAO PCP ON (PCP.IOP_CODIGO = IO.IOP_CODIGO)           '+
                                     ' JOIN APONTAMENTO_PROCESSO AP ON (AP.PCP_CODIGO = PCP.PCP_CODIGO '+
                                     '  OR PCP.CAR_CODIGO = AP.CAR_CODIGO)                                       '+
                                     ' WHERE APP_CANCELADO IS NULL ' +
                                     ' and IOP_NORDEM in (SELECT iop_nordem FROM PROCESSOS_PRODUCAO pcp        '+
                                     '            JOIN ITEM_ORDEMPRODUCAO IO ON (pcp.IOP_CODIGO = io.IOP_CODIGO) '+
                                     '           WHERE car_codigo = '+ IntToStr(car_codigo) + ')' +
                                     ' ORDER BY APP_DATAINI DESC ')<> app_codigo then
                raise Exception.Create('Não é possível excluir este apontamento pois já existe apontamento em operações posteriores a esta');


             if status = 'F' then
             Begin
                ExecSql('update CARGA set car_status = ''E'', CAR_TEMPOGASTO = NULL, CAR_DATAFIM = NULL WHERE car_codigo ='+ IntToStr(car_codigo));
                ExecSql('update PROCESSOS_PRODUCAO set pcp_status = ''E'', PCP_TEMPO_GASTO = NULL , PCP_DATAFIM = NULL  WHERE car_codigo ='+ IntToStr(car_codigo));
                // carga nunca pode ter a ultima operação, assim não precisa sair do estoque ao excluir sair do concluido para liberado
             end
             else if status = 'E' then
             begin
                ExecSql('update CARGA set car_status = ''C'', CAR_TEMPOGASTO = NULL, CAR_DATAFIM = NULL WHERE car_codigo ='+ IntToStr(car_codigo));
                ExecSql('update PROCESSOS_PRODUCAO set pcp_status = ''C'', PCP_TEMPO_GASTO = NULL , PCP_DATAFIM = NULL  WHERE car_codigo ='+ IntToStr(car_codigo));


             end;
           end;
          while (motivo = '') do
          begin
            if InputQuery('Cancelamento','Motivo',motivo)then
            begin
              if (motivo ='') then
                ShowMessage('Digite um motivo')
              else
              begin
                ExecSql( ' update APONTAMENTO_PROCESSO ' +
                     ' SET APP_CANCELADO = '+ QuotedStr('S')+
                    iif(motivo<>'', '  ,APP_MOTIVOCANCELAMENTO = '+QuotedStr(motivo),'') +
                    ' ,USU_CODIGO_CANCEL = ' + DBInicio.Usuario.CODIGO +
                    ' WHERE APP_CODIGO = '+IntToStr(app_codigo)
                    );
              end;
            end
            else
              Break

          end;
      btnPesquisa.Click;
      cdsBuscasemCarga.Open;
      filtroDetalhado;
      cdsBuscaDetalhes.open;
    end
  end
  end
  else  //exclusão do apontamento da ordem
  if (MessageDlg('Deseja realmente excluir o apontamento da ordem ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with cxgrd1DBTableView2 do
    begin
      ped_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBTableView2PED_CODIGO.Index];
      nordem :=  Controller.SelectedRecords[0].Values[cxgrd1DBTableView2IOP_NORDEM.Index];
      ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
      ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
      if ADetailDataController.FocusedRecordIndex = -1 then   // sem seleção
         raise Exception.Create('Nemhum apontamento selecionado');
      if ADetailDataController.Controller.SelectedRecords[0].IsData then
      begin
         app_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_CODIGO.index];
         status := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_STATUS.index];
         //VERIFICAR SE É A ULTIMO APONTAMENTO
         if BuscaUmDadoSqlAsInteger(
         ' SELECT FIRST 1 AP.APP_CODIGO FROM ITEM_ORDEMPRODUCAO IO                '+
         ' JOIN PROCESSOS_PRODUCAO PCP ON (PCP.IOP_CODIGO = IO.IOP_CODIGO)        '+
         ' JOIN APONTAMENTO_PROCESSO AP ON (AP.PCP_CODIGO = PCP.PCP_CODIGO        '+
         '  OR PCP.CAR_CODIGO = AP.CAR_CODIGO)                                    '+
         ' WHERE IOP_NORDEM = '+ QuotedStr(nordem)  +
         ' AND APP_CANCELADO IS NULL '+
         ' ORDER BY APP_DATAINI DESC ') <> app_codigo then
           raise Exception.Create('Não é possível excluir este apontamento pois já existe apontamento posterior a este nesta ordem');

         pcp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3pcp_CODIGO.index];
         if status = 'F' then
         Begin

            ExecSql('update PROCESSOS_PRODUCAO set pcp_status = ''E'', PCP_TEMPO_GASTO = NULL, PCP_DATAFIM = NULL WHERE PCP_CODIGO ='+ IntToStr(pcp_codigo));


             //SE O APONTAMENTO FOR FINALIZADO E JÁ TIVER CONCLUIDO a ordem,
             // dar saida do estoque e voltar a não concluido
              iop_codigo  :=BuscaUmDadoSqlAsInteger('SELECT IOP_CODIGO FROM ITEM_ORDEMPRODUCAO IOP  WHERE IOP_NORDEM = '+ QuotedStr(nordem)  ) ;
              EstornarUltimaOperacao(ped_codigo,iop_codigo);


         End
         else if status = 'E' then
         begin

            ExecSql('update PROCESSOS_PRODUCAO set pcp_status = ''C'',  PCP_TEMPO_GASTO = NULL, PCP_DATAFIM = NULL WHERE PCP_CODIGO ='+ IntToStr(pcp_codigo));

         end;


      // ShowMessage( ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3APP_STATUS.index]);
        motivo := InputBox('Cancelamento','Motivo','');
        ExecSql( ' update APONTAMENTO_PROCESSO ' +
               ' SET APP_CANCELADO = '+ QuotedStr('S')+
              iif(motivo<>'', '  ,APP_MOTIVOCANCELAMENTO = '+QuotedStr(motivo),'') +
              ' ,USU_CODIGO_CANCEL = ' + DBInicio.Usuario.CODIGO +
              ' WHERE APP_CODIGO = '+IntToStr(app_codigo)
              );
        btnPesquisa.Click;
        cdsBuscasemCarga.Open;
        filtroDetalhado;
        cdsBuscaDetalhes.open;
      end;
    end;


  end;
end;

procedure TfrmApontamentosCargas.MtbRelUnidoDATA_CARGAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    text:= FormatDateTime ('dd/mm/yyy',  Sender.AsDateTime);
end;

procedure TfrmApontamentosCargas.MtbRelUnidoCalcFields(DataSet: TDataSet);
var  hora, minuto, segundo , msec : word;
  segundosTotal , dias: Integer;
begin
  inherited;
  if MtbRelUnidoPCP_TEMPO_GASTO.AsFloat > 0 then
  begin
    dias := trunc( MtbRelUnidoPCP_TEMPO_GASTO.AsFloat);
    DecodeTime(MtbRelUnidoPCP_TEMPO_GASTO.AsFloat- dias,hora,minuto,segundo,msec);
    segundosTotal := (dias*24*3600) + hora*3600+minuto*60+segundo;
    MtbRelUnidopcp_tempo_seg.AsInteger := segundosTotal;


  end
  else
    MtbRelUnidopcp_tempo_seg.AsInteger := 0;
end;

procedure TfrmApontamentosCargas.MtbRelUnidoCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 0  then
    TEXT := 'CG'+ SENDER.AsString
  Else
    text:=MtbRelUnidoIOP_NORDEM.AsString;
end;

procedure TfrmApontamentosCargas.numCargaExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
  cdsBuscasemCarga.open;
end;

procedure TfrmApontamentosCargas.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
      PesqCliente.idRetorno := tcr.IDRetorno;
    Filtro;

  finally
       FreeAndNil(tcr);
  end;

end;

procedure TfrmApontamentosCargas.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;



procedure TfrmApontamentosCargas.PesqSetorSelect(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
