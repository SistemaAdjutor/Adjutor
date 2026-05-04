unit uDashboradInteligencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, JvExStdCtrls, JvEdit, JvValidateEdit,
  System.DateUtils, System.StrUtils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxPivotGridChartConnection, cxGridChartView, cxGridDBChartView, SIE0000, Men0001, Vcl.Menus,
  cxGridExportLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, dxPSContainerLnk,
  Vcl.Buttons, Vcl.ComCtrls, dxGDIPlusClasses, ShellAPI, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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

 Const
  meses : array[1..12] of string = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');

type
  TfrmDashBoardInteligencia = class(TfrmBaseDBFDAC)
    presumo: TPanel;
    pfinanceiro: TPanel;
    pdata: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    cbMes: TComboBox;
    cbAno: TComboBox;
    chkNaoAbrirMais: TCheckBox;
    Panel5: TPanel;
    LinkLabel1: TLinkLabel;
    Label1: TLabel;
    Faturamento: TJvValidateEdit;
    Label2: TLabel;
    Faturamento2: TJvValidateEdit;
    Label4: TLabel;
    FKG: TJvValidateEdit;
    Label5: TLabel;
    kilosVendidos: TJvValidateEdit;
    Label8: TLabel;
    MetaKilosVendidos: TJvValidateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAnoChange(Sender: TObject);
    procedure chkNaoAbrirMaisClick(Sender: TObject);
    procedure LinkLabel1LinkClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);
  private
    procedure Gera( );

  public


  end;

var
  frmDashBoardInteligencia: TfrmDashBoardInteligencia;

implementation

{$R *.dfm}
uses uteis, InicioDB, UFuncoes, EMAIL0001;

procedure TfrmDashBoardInteligencia.cbAnoChange(Sender: TObject);
begin
  inherited;
  Gera();
end;

procedure TfrmDashBoardInteligencia.cbMesChange(Sender: TObject);
begin
  inherited;
  Gera();
end;

procedure TfrmDashBoardInteligencia.chkNaoAbrirMaisClick(Sender: TObject);
begin
  inherited;
  ExecSql('UPDATE USUARIO_PARAMETRO ' +
         ' SET USP_DASH_INTELIGENCIA = ' + QuotedStr(IIF(chkNaoAbrirMais.Checked, 'N', 'S')) +
         ' WHERE USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO);
end;

procedure TfrmDashBoardInteligencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmDashBoardInteligencia.FormCreate(Sender: TObject);
begin
  inherited;
  LinkLabel1.Caption := 'Clique <a href="https://novisistemas.freshdesk.com/support/solutions/42000066014">aqui</a> para entender como funcionam os dashboards';
end;

procedure TfrmDashBoardInteligencia.FormDestroy(Sender: TObject);
begin
  inherited;
  frmDashBoardInteligencia := nil;
end;

procedure TfrmDashBoardInteligencia.FormShow(Sender: TObject);
begin
  inherited;
  cbMes.ItemIndex := MonthOf(now) - 1;
  cbAno.Text := IntToStr(YearOf(now));
  Gera();
end;


procedure TfrmDashBoardInteligencia.LinkLabel1LinkClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);
begin
  inherited;
   ShellExecute(Handle, 'open', PChar(Link), '', '', SW_SHOWNORMAL)
end;


procedure TfrmDashBoardInteligencia.Gera();
var
  ultimoDia, diaAtual, mesAtual: integer;
  dia, mes, ano: Word;
  totalKilosVendidos, totalVendasFaturadas,
  v220000, v240000, v35000,
  PercentualAtingimentoMetaKilos: double;
  whereEmissao: string;
begin
  DecodeDate(Now, ano, mes, dia);

  mesAtual := cbMes.ItemIndex + 1;
  ano := StrToInt(cbAno.Text);

  if mesAtual <> mes then
    diaAtual := UltimoDiaDoMes(mesAtual, ano)
  else
    diaAtual := dia;

  ultimoDia := UltimoDiaDoMes(mesAtual, ano);

  v220000 := 220000;
  v240000 := 240000;
  v35000  := 35000;

  whereEmissao := ' WHERE n.NF_EMISSAO BETWEEN ' +
                  QuotedStr(IntToStr(ano) + '-' + IntToStr(mesAtual) + '-01') +
                  ' AND ' +
                  QuotedStr(IntToStr(ano) + '-' + IntToStr(mesAtual) + '-' + IntToStr(diaAtual));

  // ✅ Kilos Vendidos corrigido
  totalKilosVendidos := BuscaUmDadoSqlAsFloat(
        'SELECT SUM(COALESCE(pi2.PRF_PESO, 0)) ' +
        ' FROM PED0000 p' +
        ' JOIN PED_IT01 pi2 ON (pi2.PED_CODIGO = p.PED_CODIGO AND pi2.EMP_CODIGO = p.EMP_CODIGO)' +
        ' JOIN NF0001 n ON (n.PED_CODIGO = p.PED_CODIGO AND n.EMP_CODIGO = p.EMP_CODIGO)' +
          whereEmissao +
        ' AND P.PED_SITUACAO NOT IN (''A'', ''F'', ''C'') ' +
        ' AND n.NF_STATUS_NFE NOT IN (''C'', ''R'') ' +
        ' AND p.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)
  );

  totalVendasFaturadas := BuscaUmDadoSqlAsFloat(
        'SELECT SUM(n.NF_TOT_NOTA)' +
        ' FROM PED0000 p' +
        ' JOIN NF0001 n ON (n.PED_CODIGO = p.PED_CODIGO AND n.EMP_CODIGO = p.EMP_CODIGO AND n.NF_STATUS_NFE NOT IN (''C'', ''R'') ) ' +
        ' JOIN FAT0000 fat ON (NF_CANCELADA = ''N'' AND n.NF_NOTANUMBER = fat.FAT_CODIGO AND n.EMP_CODIGO = fat.EMP_CODIGO) ' +
          whereEmissao +
        ' AND P.PED_SITUACAO NOT IN (''A'', ''F'', ''C'') ' +
        ' AND p.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  +
        ' AND n.NF_STATUS_NFE NOT IN (''C'', ''R'') '
  );

  kilosVendidos.Value := totalKilosVendidos;
  Faturamento.Value := totalVendasFaturadas;

  // proteção divisão
  if totalKilosVendidos > 0 then
    FKG.Value := totalVendasFaturadas / totalKilosVendidos
  else
    FKG.Value := 0;

  // cálculo percentual
  if (FKG.Value > 0) and (diaAtual > 0) then
  begin
    if mesAtual <> mes then
      PercentualAtingimentoMetaKilos := (totalKilosVendidos / diaAtual) /
                 ((v220000 / FKG.Value) / ultimoDia) * 100
    else
      PercentualAtingimentoMetaKilos := (totalKilosVendidos / diaAtual) /
                 ((v240000 / FKG.Value) / ultimoDia) * 100;
  end
  else
    PercentualAtingimentoMetaKilos := 0;

  // faturamento projetado
  if mesAtual <> mes then
  begin
    // mês fechado → projetado = realizado
    Faturamento2.Value := totalVendasFaturadas;
  end
  else
  begin
    // mês atual → projeção
    if PercentualAtingimentoMetaKilos > 0 then
      Faturamento2.Value := v240000 / (PercentualAtingimentoMetaKilos / 100)
    else
      Faturamento2.Value := 0;
  end;

  // meta kilos
  if mesAtual <> mes then
    MetaKilosVendidos.Value := totalKilosVendidos
  else if diaAtual > 0 then
    MetaKilosVendidos.Value := (totalKilosVendidos / diaAtual) * ultimoDia
  else
    MetaKilosVendidos.Value := 0;

end;

end.
