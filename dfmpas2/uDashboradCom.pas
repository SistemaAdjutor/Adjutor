unit uDashboradCom;

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
  TfrmDashBoardComecialFin = class(TfrmBaseDBFDAC)
    presumo: TPanel;
    pvendas: TPanel;
    rgEmpresa: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lvendasperiodo: TLabel;
    lvendasperiodototal: TLabel;
    edTotalVendas: TJvValidateEdit;
    edVendasPeriodo: TJvValidateEdit;
    edAFaturar: TJvValidateEdit;
    edOrcamento: TJvValidateEdit;
    pfinanceiro: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    lttalreceber: TLabel;
    lrecebimentoefetivado: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    lrecebimentoaberto2: TLabel;
    lantecipacaorecebiveis: TLabel;
    edTotalFatura: TJvValidateEdit;
    edReceber: TJvValidateEdit;
    edEfetivado: TJvValidateEdit;
    edRecebiveis: TJvValidateEdit;
    edAberto: TJvValidateEdit;
    edTotalPagar: TJvValidateEdit;
    edPagamentoEfetivado: TJvValidateEdit;
    edPagamentoAberto: TJvValidateEdit;
    Panel3: TPanel;
    QVendas: TFDQuery;
    QVendasORCAMENTO: TFMTBCDField;
    QVendasVENDAS: TFMTBCDField;
    QVendasREP_NOME: TStringField;
    cxGraficoVendasLevel1: TcxGridLevel;
    cxGraficoVendas: TcxGrid;
    dsVendedores: TDataSource;
    cxPivotGridChartConnection1: TcxPivotGridChartConnection;
    Splitter1: TSplitter;
    Panel4: TPanel;
    cxGraficoVendasDBChartView1: TcxGridDBChartView;
    cxGraficoVendasDBChartView1Series1: TcxGridDBChartSeries;
    cxGraficoVendasDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartDataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    qFaturamento: TFDQuery;
    qFaturamentoNF_TOT_NOTA: TFMTBCDField;
    qFaturamentonumero: TIntegerField;
    cxGraficoFinanceiro: TcxGrid;
    cxGarficoReceberPagar: TcxGridDBChartView;
    cxGridDBChartDataGroup2: TcxGridDBChartDataGroup;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    dsFaturamento: TDataSource;
    Qfinanceiro: TFDQuery;
    IntegerField1: TIntegerField;
    dsfinanceiro: TDataSource;
    QfinanceiroRECEBE: TFMTBCDField;
    QfinanceiroPAGA: TFMTBCDField;
    cxGraficoFaturas: TcxGrid;
    GraficoFaturamento: TcxGridDBChartView;
    cxGridDBChartDataGroup3: TcxGridDBChartDataGroup;
    cxGridDBChartSeries3: TcxGridDBChartSeries;
    cxGridLevel3: TcxGridLevel;
    cxGarficoReceberPagarSeries1: TcxGridDBChartSeries;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    qFaturamentoSEMANA: TStringField;
    Qfinanceirosemana: TStringField;
    pmVendasVendedores: TPopupMenu;
    miGerarVendedores: TMenuItem;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxVendedoresVendas: TdxGridReportLink;
    dxGraficoVendas: TdxGridReportLink;
    pmGraficoVendas: TPopupMenu;
    miGerarGraficoVendas: TMenuItem;
    pmfaturamento: TPopupMenu;
    miGraficoFaturamento: TMenuItem;
    pmGraficoFinanceiro: TPopupMenu;
    miGraficoFinanceiro: TMenuItem;
    dxGraficoFaturas: TdxGridReportLink;
    dxGraficoFinanceiro: TdxGridReportLink;
    Exportarexcel1: TMenuItem;
    dxvendasresumo: TdxCustomContainerReportLink;
    pmVendaresumo: TPopupMenu;
    miResumoVendas: TMenuItem;
    dxResumoFinanceiro: TdxCustomContainerReportLink;
    Panel1: TPanel;
    preceber: TPanel;
    ppagar: TPanel;
    pdata: TPanel;
    ldata: TLabel;
    Panel2: TPanel;
    sbEmail: TSpeedButton;
    pmresumofinanceiro: TPopupMenu;
    migerarresumo: TMenuItem;
    rgFiltro: TRadioGroup;
    Image1: TImage;
    Label8: TLabel;
    edVendasForaPeriodo: TJvValidateEdit;
    cxStyle3: TcxStyle;
    cbMes: TComboBox;
    Label4: TLabel;
    edPrevReceber: TJvValidateEdit;
    cbAno: TComboBox;
    chkNaoAbrirMais: TCheckBox;
    Panel5: TPanel;
    LinkLabel1: TLinkLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGraficoVendasDBChartView1DblClick(Sender: TObject);
    procedure miGerarVendedoresClick(Sender: TObject);
    procedure miGerarGraficoVendasClick(Sender: TObject);
    procedure miGraficoFaturamentoClick(Sender: TObject);
    procedure miGraficoFinanceiroClick(Sender: TObject);
    procedure Exportarexcel1Click(Sender: TObject);
    procedure miResumoVendasClick(Sender: TObject);
    procedure sbEmailClick(Sender: TObject);
    procedure migerarresumoClick(Sender: TObject);
    procedure rgFiltroClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure rgEmpresaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAnoChange(Sender: TObject);
    procedure chkNaoAbrirMaisClick(Sender: TObject);
    procedure LinkLabel1LinkClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);
  private
    dia, ano, mes, sem : word;
    procedure Gera( const tipo: integer);

  public


  end;

var
  frmDashBoardComecialFin: TfrmDashBoardComecialFin;

implementation

{$R *.dfm}
uses uteis, InicioDB, UFuncoes, EMAIL0001;

procedure TfrmDashBoardComecialFin.cbAnoChange(Sender: TObject);
begin
  inherited;
  ano := StrToInt( cbAno.Text);
  Gera(rgFiltro.ItemIndex);
end;

procedure TfrmDashBoardComecialFin.cbMesChange(Sender: TObject);
begin
  inherited;
  mes:= cbMes.ItemIndex+1;
  Gera(2);
end;

procedure TfrmDashBoardComecialFin.chkNaoAbrirMaisClick(Sender: TObject);
begin
  inherited;
  ExecSql('UPDATE USUARIO_PARAMETRO '+
         ' SET USP_DASH_NAO_ABRIR = '+ QuotedStr(IIF(chkNaoAbrirMais.Checked,'S','N')) +
         ' WHERE USP_COD_USUARIO = '+ DBInicio.Usuario.CODIGO);
  DBInicio.NaoAbrirDash :=chkNaoAbrirMais.Checked;
end;

procedure TfrmDashBoardComecialFin.cxGraficoVendasDBChartView1DblClick(Sender: TObject);
//var i: integer;
begin
  inherited;
//  if FrmMenu.miInformaesExecutivas.Enabled then
//  begin
//    if not assigned(FrmSie) then
//    begin
//      FrmSie := TFrmSie.Create(Application);
//      // try
//      if (MDIChildCount > 1) then
//        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//      else
//        FrmSie.Top := 5;
//
//    end;
//    FrmSie.Show;
//    for I := 0 to FrmSie.tvMenu.Items.Count-1 do
//    begin
//     if FrmSie.tvMenu.Items[i].Text = 'ABC vendedor' then
//     begin
//       FrmSie.tvMenu.ItemIndex := i;
//       FrmSie.rbEmpresa.Checked := rgEmpresa.ItemIndex =1;
//       frmsie.RbMultiEmpresa.Checked := rgEmpresa.ItemIndex =0;
//       break;
//
//     end;
//
//    end;
//
//    FrmSie.btnAtualizar.Click;
//    close;
//  end;
end;

procedure TfrmDashBoardComecialFin.Exportarexcel1Click(Sender: TObject);
begin
  inherited;
  if not(qvendas.active) or
    (qvendas.RecordCount <= 0) then
    GeraException('Não Existem Registros!');

  SaveDialog1.Filter := 'pdf |*.xlsx ';    //'Text file|*.txt|Word file|*.doc';
  SaveDialog1.title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.xlsx';

  if SaveDialog1.Execute then
  begin
   ExportGridToXLSX(SaveDialog1.FileName, cxGrid2, False, True, True, 'xlsx');
  end;
end;

procedure TfrmDashBoardComecialFin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmDashBoardComecialFin.FormCreate(Sender: TObject);
begin
  inherited;

  DecodeDate(date,ano,mes,dia);
  sem:= WeekOfTheYear(date);
  chkNaoAbrirMais.Checked := DBInicio.Empresa.bNaoAbrirDash;
  LinkLabel1.Caption := 'Clique <a href="https://novisistemas.freshdesk.com/support/solutions/42000066014">aqui</a> para entender como funcionam os dashboards';
end;

procedure TfrmDashBoardComecialFin.FormDestroy(Sender: TObject);
begin
  inherited;
  frmDashBoardComecialFin := nil;
end;

procedure TfrmDashBoardComecialFin.FormShow(Sender: TObject);
begin
  inherited;
  cbMes.OnChange := nil;
  rgEmpresa.OnClick := nil;
  cbMes.ItemIndex := mes-1;
  cbAno.Text := IntToStr( ano);

  rgEmpresa.ItemIndex:=0;
  rgFiltro.ItemIndex := 2;
  cbMes.OnChange := cbMesChange;
  rgEmpresa.OnClick := rgEmpresaClick;

  pvendas.Visible := DBInicio.Empresa.bUSP_DASH_VENDAS;
  pfinanceiro.Visible := DBInicio.Empresa.bUSP_DASH_FINANCEIRO;
  cxGrid2.Visible :=DBInicio.Empresa.bUSP_DASH_VENDAS;
  cxGraficoVendas.Visible :=DBInicio.Empresa.bUSP_DASH_VENDAS;
  cxGraficoFaturas.Visible := DBInicio.Empresa.bUSP_DASH_FINANCEIRO;
  cxGraficoFinanceiro.Visible := DBInicio.Empresa.bUSP_DASH_FINANCEIRO;

end;

procedure TfrmDashBoardComecialFin.Gera(const tipo: integer);
var sql :string;
 i : integer;
 empresa, empaux :string;
begin

  case tipo of
    0: ldata.Caption := FormatDateTime('dd/mm/yyyy',date);

    1: ldata.Caption := 'Semana ' + IntToStr( WeekOfTheMonth(date)) +
            ' ('+DateToStr(StartOfAWeek(ano,sem,1))+' a '+DateToStr(EndOfAWeek(ano,sem,7)) + ')' ;
    2: ldata.Caption := '';
  end;
  //orcamento
  if rgEmpresa.ItemIndex = 1  then
     empresa := ConcatSe(' and ped.',DBInicio.ExclusivoSql('PEDIDOS') )
  else
    empresa := '';

  sql:=' SELECT SUM(COALESCE(PED_VLTOTAL_BRUTO,0)) total '+
            ' FROM PED0000 ped JOIN OPV0000 op ON (op.OPV_CODIGO = ped.OPV_CODIGO AND OPV_ORCAMENTO = ''S'' ) '+
          ' WHERE PED_SITUACAO NOT IN (''C'',''A'') '+empresa;

  case tipo of
    0: sql:= sql + ' AND PED_DTENTRADA = '+DateToSQL(DATE);

    1: sql:= sql + ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM PED_DTENTRADA  ) = '+IntToStr(sem);

    2: sql:= sql + ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM PED_DTENTRADA  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edOrcamento.Value := qAux.FieldByName('total').AsFloat;

  // vendas meses anteriores
  SQL:= 'SELECT  SUM(PED_VLTOTAL_BRUTO-PED_VLFATURADO) VENDAS_TOTAFATURAR   '+
       ' FROM PED0000 ped JOIN OPV0000 op ON (op.OPV_CODIGO = ped.OPV_CODIGO AND OPV_VENDA = ''S'' ) '+
       ' WHERE PED_SITUACAO NOT IN (''C'',''A'') '+empresa+
       ' and PED_DTENTRADA < '+   DateToSQL(StartOfAMonth(ano,mes));
  OpenAux(sql);
  edVendasForaPeriodo.Value:=  qAux.FieldByName('VENDAS_TOTAFATURAR').AsFloat;

  //VENDAS  no periodo
  sql:='SELECT SUM(PED_VLTOTAL_BRUTO)  TOTAL_VENDAS, SUM(PED_VLFATURADO) AS TOTAL_FATURADO, SUM(PED_VLTOTAL_BRUTO-PED_VLFATURADO) VENDAS_AFATURAR'+
       ' FROM PED0000 ped JOIN OPV0000 op ON (op.OPV_CODIGO = ped.OPV_CODIGO AND OPV_VENDA = ''S'' ) '+
       ' WHERE PED_SITUACAO NOT IN (''C'',''A'') '+empresa;

  case tipo of
    0: begin
         sql:= sql + ' AND PED_DTENTRADA = '+DateToSQL(DATE);
         lvendasperiodototal.Hint:= 'Vendas do dia '+ldata.Caption;
         edTotalVendas.Hint      := lvendasperiodototal.Caption;
          edVendasPeriodo.Hint :=  lvendasperiodototal.Hint+' a faturar';
          lvendasperiodo.Hint :=    lvendasperiodototal.Hint+' a faturar';

       end;

    1: begin
         sql:= sql + ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM PED_DTENTRADA  ) = '+IntToStr(sem);
          lvendasperiodototal.Hint:= 'Vendas da semana '+ldata.Caption;
          edTotalVendas.Hint      := 'Vendas da semana '+ldata.Caption;
          edVendasPeriodo.Hint :=edTotalVendas.Hint+' a faturar';
          lvendasperiodo.Hint := edTotalVendas.Hint+' a faturar';


       end;

    2: begin
        sql:= sql + ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM PED_DTENTRADA  ) = '+IntToStr(mes);
          lvendasperiodototal.Hint:= 'Vendas de '+meses[mes]+'/'+ IntToStr(ano);
          edTotalVendas.Hint      := 'Vendas de '+meses[mes]+'/'+IntToStr(ano);
          edVendasPeriodo.Hint :=lvendasperiodototal.Hint+' a faturar';;
          lvendasperiodo.Hint := lvendasperiodototal.Hint+' a faturar';;
       end;
  end;
  OpenAux(sql);
  edVendasPeriodo.Value :=   qAux.FieldByName('VENDAS_AFATURAR').AsFloat;

  edAFaturar.Value:= edVendasForaPeriodo.Value +   edVendasPeriodo.Value;

  edTotalVendas.Value := qAux.FieldByName('TOTAL_VENDAS').AsFloat;

   if rgEmpresa.ItemIndex = 1  then
     empresa :=  ConcatSe(' and NF.',DBInicio.ExclusivoSql('PEDIDOS') )
  else
    empresa := '';

  //faturado
  if DBInicio.Empresa.PMT_DESCOSIDERAR_FATURA then
    SQL := ' SELECT SUM(NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS NF_TOT_NOTA FROM NF0001 NF '+
           ' JOIN OPE0000 OPE ON (OPE.OPE_CODIGO = NF.OPE_CODIGO AND OPE_TIPO_OPERACAO = ''V'') '+
           '  WHERE NF_CANCELADA = ''N''  '+ empresa

  else
    SQL := ' SELECT SUM(NF_TOT_NOTA-COALESCE(NF_VL_DESCTO_FAT,0) ) AS NF_TOT_NOTA FROM NF0001 NF '+
           '  WHERE NF_CANCELADA = ''N'' '+ empresa+
           '  AND EXISTS (SELECT 1 FROM FAT0000 fat WHERE NF_NOTANUMBER = fat.FAT_CODIGO AND nf.EMP_CODIGO = fat.EMP_CODIGO) ';



  case tipo of
    0: sql:= sql + ' AND NF_EMISSAO = '+DateToSQL(DATE);

    1: sql:= sql + ' AND EXTRACT (YEAR FROM NF_EMISSAO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM NF_EMISSAO  ) = '+IntToStr(sem);

    2: sql:= sql + ' AND EXTRACT (YEAR FROM NF_EMISSAO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM NF_EMISSAO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edTotalFatura.Value := qAux.FieldByName('NF_TOT_NOTA').AsFloat;


//  //total receber
//  sql:= 'Select  sum(COALESCE(FPC_VLPARC,0)) total,  sum(FPC_VLPAGO) AS FPC_VLPAGO '+
//        ' from FAT_PC01 FT '+
//        ' where FPC_EXCLUSAO = ''N''  and FPC_DESCONTADO = ''N'' '+
//        ' AND FPC_SITPAG <> ''X'' '+  empresa;
//  case tipo of
//    0: sql:= sql + ' AND FPC_VENCTO = '+DateToSQL(DATE);
//
//    1: sql:= sql + ' AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)  +
//                   ' AND EXTRACT (WEEK FROM FPC_VENCTO  ) = '+IntToStr(sem);
//
//    2: sql:= sql + ' AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)  +
//                   ' AND EXTRACT (month FROM FPC_VENCTO  ) = '+IntToStr(mes);
//  end;
//  OpenAux(sql);
//  edReceber.Value := qAux.FieldByName('total').AsFloat;
//  //edEfetivado.Value :=  qAux.FieldByName('FPC_VLPAGO').AsFloat;
//
//


  // **** PREV RECEBER AINDA NÃO LIQUIDADO ****
  if rgEmpresa.ItemIndex = 1 then
   empresa :=  ConcatSe(' and FT.',DBInicio.ExclusivoSql('RECEBER') )
  else
    empresa := '';

  sql:= 'Select  sum(COALESCE(FPC_VLPARC,0)) total,  sum(FPC_VLPAGO) AS FPC_VLPAGO '+
        ' from FAT_PC01 FT '+
        ' where FPC_EXCLUSAO = ''N''  and FPC_DESCONTADO = ''N'' '+
        ' AND FPC_SITPAG NOT IN (''X'',''L'') '+  empresa;
  case tipo of
    0: sql:= sql + ' AND FPC_VENCTO = '+DateToSQL(DATE);

    1: sql:= sql + ' AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM FPC_VENCTO  ) = '+IntToStr(sem);

    2: sql:= sql + ' AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM FPC_VENCTO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edAberto.Value := qAux.FieldByName('total').AsFloat - qAux.FieldByName('FPC_VLPAGO').AsFloat;


  //****  ANTECIPADO DE RECEBIVEIS ******/
  if rgEmpresa.ItemIndex = 1 then
   empresa :=  ConcatSe(' and re.',DBInicio.ExclusivoSql('RECEBER') )
  else
    empresa := '';
  SQL:= 'Select SUM(FRE_RECEBIDO)  AS FPC_VLPAGO     '+
        ' from FAT_RECEBIMENTO re '+
        ' JOIN FAT_PC01 T5 ON (T5.FAT_REGISTRO = RE.FAT_REGISTRO  AND t5.EMP_CODIGO = RE.EMP_CODIGO) '+
        ' WHERE EXISTS (SELECT * FROM fat0000 t7 where t7.fat_codigo = t5.fat_codigo  AND  t5.EMP_CODIGO = t7.emp_codigo )  '+
         empresa+
        '  AND FRE_DATA_RECEBIMENTO+3  < FPC_VENCTO '+
        ' AND FPC_EXCLUSAO = ''N'' ';
// sql := ' Select sum(COALESCE(FPC_VLPARC,0)) total, sum(COALESCE(FPC_VLPAGO,0)) AS FPC_VLPAGO '+
//        ' from FAT_PC01 re where FPC_EXCLUSAO = ''N''  '+  empresa+
//        ' AND EXISTS (SELECT 1 FROM FAT0000 fat WHERE RE.FAT_CODIGO = fat.FAT_CODIGO AND RE.EMP_CODIGO = fat.EMP_CODIGO) '+
//        ' and FPC_PAGTO+3 < FPC_VENCTO '  ;
  case tipo of
    0: sql:= sql + ' AND FRE_DATA_RECEBIMENTO = '+DateToSQL(DATE);

    1: sql:= sql + ' AND EXTRACT (YEAR FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(sem);

    2: sql:= sql + ' AND EXTRACT (YEAR FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edRecebiveis.Value :=  qAux.FieldByName('FPC_VLPAGO').AsFloat;

//  efetivado   = LIQUIDADO NO MES MENOS ANTECIPADO
  if rgEmpresa.ItemIndex = 1 then
   empresa := ConcatSe(' and re.',DBInicio.ExclusivoSql('RECEBER') )
  else
    empresa := '';
  sql:= 'Select COALESCE(sum(FRE_RECEBIDO),0) FRE_RECEBIDO from FAT_RECEBIMENTO re '+
        ' WHERE EXISTS (SELECT * FROM FAT_PC01 ft      '+
        '                 join fat0000 t7 on(t7.fat_codigo = ft.fat_codigo AND  ft.EMP_CODIGO = t7.emp_codigo)' +
        '                WHERE ft.FAT_REGISTRO = re.FAT_REGISTRO  AND ft.EMP_CODIGO = re.EMP_CODIGO AND FPC_EXCLUSAO = ''N'') '+

         empresa ;

  case tipo of
    0: sql:= sql + ' and FRE_DATA_RECEBIMENTO = '+DateToSQL(DATE);

    1: sql:= sql + ' and EXTRACT (YEAR FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(sem);

    2: sql:= sql + '  and EXTRACT (YEAR FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM FRE_DATA_RECEBIMENTO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edEfetivado.Value :=  qAux.FieldByName('FRE_RECEBIDO').AsFloat -edRecebiveis.Value;

  // previsto a receber = valor liquidado e valor não liquidado
  edPrevReceber.value:=     edEfetivado.Value + edaberto.value;

  edreceber.Value :=  edPrevReceber.value +  edRecebiveis.Value ;

  //*pagamentos aberto ou não liquidados*/
  if rgEmpresa.ItemIndex = 1 then
   empresa :=  ConcatSe(' and PP.',DBInicio.ExclusivoSql('PAGAR') )
  else
    empresa := '';

 SQL := 'Select sum(COALESCE(PPC_VLPARC,0)) TOTAL, SUM(COALESCE(PPC_VLPAGO,0)) AS PAGO '+
        '  from PAG_PC01 PP where PPC_EXCLUSAO = ''N'' '+
        ' AND PPC_SITPAG NOT IN (''X'',''L'') ' + EMPRESA;
  case tipo of
    0: sql:= sql + ' AND PPC_VENCTO = '+DateToSQL(DATE);

    1: sql:= sql + ' AND EXTRACT (YEAR FROM PPC_VENCTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM PPC_VENCTO  ) = '+IntToStr(sem);

    2: sql:= sql + ' AND EXTRACT (YEAR FROM PPC_VENCTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM PPC_VENCTO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edPagamentoAberto.Value := qAux.FieldByName('total').AsFloat - qAux.FieldByName('PAGO').AsFloat;


  // PAGO
  if rgEmpresa.ItemIndex = 1 then
   empresa :=  ConcatSe(' and PAG.',DBInicio.ExclusivoSql('PAGAR') )
  else
    empresa := '';
  SQL := 'Select COALESCE(sum(PAG_PAGO),0) TOTAL ' +
        ' from PAG_PAGAMENTO PAG '+
         ConcatSe(' WHERE PAG.',DBInicio.ExclusivoSql('PAGAR') );

  if POS('WHERE',UpperCase( sql))= 0 then
    SQL:= SQL + 'WHERE '
  Else
    sql := sql+ ' AND ';

  case tipo of
    0: sql:= sql + '  PAG_DATA_PAGAMENTO = '+DateToSQL(DATE);

    1: sql:= sql + '  EXTRACT (YEAR FROM PAG_DATA_PAGAMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (WEEK FROM PAG_DATA_PAGAMENTO  ) = '+IntToStr(sem);

    2: sql:= sql + '  EXTRACT (YEAR FROM PAG_DATA_PAGAMENTO  ) = '+IntToStr(ano)  +
                   ' AND EXTRACT (month FROM PAG_DATA_PAGAMENTO  ) = '+IntToStr(mes);
  end;
  OpenAux(sql);
  edPagamentoEfetivado.Value :=  qAux.FieldByName('total').AsFloat;
  edTotalPagar.Value :=  edPagamentoEfetivado.Value  +  edPagamentoAberto.Value ;

  //VENDAS POR VENDEDORES
  // PAGO
  if rgEmpresa.ItemIndex = 1 then
   empresa :=    ConcatSe(' and ped.',DBInicio.ExclusivoSql('PEDIDOS') )
  else
    empresa := '';
  case tipo of
    0: begin
         sql:=  ' AND PED_DTENTRADA = '+DateToSQL(DATE);
         cxGraficoVendasDBChartView1Series1.DisplayText := 'Vendas de hoje';
       end;

    1: begin
        sql:=  ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
             ' AND EXTRACT (WEEK FROM PED_DTENTRADA  ) = '+IntToStr(sem);
        cxGraficoVendasDBChartView1Series1.DisplayText := 'Vendas na '+ ldata.Caption;
       end;
    2: begin
         sql:=  ' AND EXTRACT (YEAR FROM PED_DTENTRADA  ) = '+IntToStr(ano)  +
              ' AND EXTRACT (month FROM PED_DTENTRADA  ) = '+IntToStr(mes);
         cxGraficoVendasDBChartView1Series1.DisplayText :='Vendas de '+meses[mes]+'/'+ IntToStr(ano);
       end;
  end;

  sql := ' SELECT * FROM ( SELECT (SELECT SUM(COALESCE(PED_VLTOTAL_BRUTO,0)) ORCAMENTO  '+
                 '   FROM PED0000 ped JOIN OPV0000 op ON (op.OPV_CODIGO = ped.OPV_CODIGO AND OPV_ORCAMENTO = ''S'' )   '+
                 '   WHERE PED_SITUACAO <> ''C'' '+
                    empresa+
                 '   AND REP.REP_CODIGO = PED.REP_CODIGO     '+
                  SQL+
                  '  ) ORCAMENTO, '+
                  '  (SELECT SUM(PED_VLTOTAL_BRUTO)  TOTAL_VENDAS '+
                  '  FROM PED0000 ped JOIN OPV0000 op ON (op.OPV_CODIGO = ped.OPV_CODIGO AND OPV_VENDA = ''S'' ) '+
                  '  WHERE PED_SITUACAO <> ''C'' '+
                   empresa+
                  '  AND REP.REP_CODIGO = PED.REP_CODIGO '+
                  SQL+
                 '   ) VENDAS,   REP_NOME '+
                 '  FROM REP0000 REP '+
                 ' WHERE REP_SITUACAO = ''A'')'+
                 ' WHERE  ORCAMENTO IS NOT NULL OR VENDAS IS NOT NULL   ';
  QVendas.Open(sql);
  //faturamento
    if rgEmpresa.ItemIndex = 1 then
     empresa :=    ConcatSe(' and NF.',DBInicio.ExclusivoSql('PEDIDOS') )
    else
      empresa := '';
  if tipo IN [ 0,2] then //de hoje ou mes, aparece mensal
  begin
    sql := '    SELECT SUM(NF_TOT_NOTA) NF_TOT_NOTA, CAST(EXTRACT (WEEK FROM NF_EMISSAO  ) AS VARCHAR(20)) AS  semana FROM NF0001 nf'+
           '   WHERE NF_CANCELADA = ''N'' '+empresa+
           ' AND  EXISTS (SELECT 1 FROM FAT0000 fat WHERE NF_NOTANUMBER = fat.FAT_CODIGO AND nf.EMP_CODIGO = fat.EMP_CODIGO) '+
           '   AND EXTRACT (YEAR FROM NF_EMISSAO  ) = '+IntToStr(ano)+
           '   AND EXTRACT (month FROM NF_EMISSAO  ) = '+IntToStr(mes)+
           '   GROUP BY EXTRACT (WEEK FROM NF_EMISSAO  ) '+
           '   ORDER BY EXTRACT (WEEK FROM NF_EMISSAO  ) ';
     qFaturamento.Open(sql);
     qFaturamento.First;
     while not qFaturamento.Eof do
     begin
       qFaturamento.Edit;
       qFaturamento.FieldByName('numero').AsInteger:= WeekOfTheMonth( StartOfAWeek(ano,StrToInt( qFaturamentoSEMANA.AsString) ,1));
       qFaturamento.Post;
       qFaturamento.Next;
     end;
    cxGridDBChartDataGroup3.DataBinding.FieldName := 'NUMERO';
    cxGridDBChartDataGroup3.DisplayText := 'Semanas ';
    GraficoFaturamento.Title.Text  :=  'Faturamento semanal do mês de '+  meses[mes]+'/'+IntToStr(ano);
  end
  Else
  begin

    sql := '    SELECT SUM(NF_TOT_NOTA) NF_TOT_NOTA,   EXTRACT (DAY FROM NF_EMISSAO  )|| ''/''|| EXTRACT (MONTH FROM NF_EMISSAO  ) SEMANA FROM NF0001 nf '+
           '   WHERE NF_CANCELADA = ''N'' '+empresa+
           ' AND EXISTS (SELECT 1 FROM FAT0000 fat WHERE NF_NOTANUMBER = fat.FAT_CODIGO AND nf.EMP_CODIGO = fat.EMP_CODIGO) '+
           '   AND EXTRACT (YEAR FROM NF_EMISSAO  ) = '+IntToStr(ano)+
           '   AND EXTRACT (WEEK FROM NF_EMISSAO  ) =  '+IntToStr(SEM)+
           '   GROUP BY EXTRACT (DAY FROM NF_EMISSAO  )||''/''|| EXTRACT (MONTH FROM NF_EMISSAO  )  ,NF_EMISSAO '+
           '   ORDER BY NF_EMISSAO ';
     qFaturamento.Open(sql);
    cxGridDBChartDataGroup3.DataBinding.FieldName := 'SEMANA';
     cxGridDBChartDataGroup3.DisplayText := 'Dias ';
     GraficoFaturamento.Title.Text  :='Faturamento diário da semana';
  end;
    cxGraficoFaturas.Refresh;

   //FINANCEIRO COMPARATIVO ENTRE RECEBER E PAGAR
   if rgEmpresa.ItemIndex = 1 then
     empresa :=    ConcatSe(' AND FT.',DBInicio.ExclusivoSql('RECEBER') )
    else
      empresa := '';
   if rgEmpresa.ItemIndex = 1 then
     empaux :=   ConcatSe(' AND PAG.',DBInicio.ExclusivoSql('PAGAR') )
    else
      empaux := '';


  if tipo IN [ 0,2] then //de hoje ou mes, aparece mensal
  begin
   sql:= 'SELECT  SUM(RECEBER) AS RECEBE, SUM(PAGAR) AS PAGA,  cast(EXTRACT (WEEK FROM DATA_OPERACAO  )as varchar(20)) AS SEMANA '+
         ' FROM ( '+
         ' Select  (COALESCE(FPC_VLPARC,0)) RECEBER, 0 PAGAR , ( FPC_VENCTO  ) DATA_OPERACAO     '+
         '  from FAT_PC01 FT                                                                     '+
         '  where FPC_EXCLUSAO = ''N'' ' +  empresa   +
         '     AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)+
         '     AND EXTRACT (month FROM FPC_VENCTO  ) = '+ IntToStr(mes)+
         ' UNION ALL '+
         ' Select 0, (COALESCE(PPC_VLPARC,0)),  ( PPC_VENCTO  ) '+
         '   from PAG_PC01 PAG '+
         '  where PPC_EXCLUSAO = ''N''  '+ empaux           +
         ' AND EXTRACT (YEAR FROM PPC_VENCTO  ) ='+IntToStr(ano)+
         ' AND EXTRACT (month FROM PPC_VENCTO  ) = '+IntToStr(mes)+
         '  ) AS TUDO'+
         '  GROUP BY  EXTRACT (WEEK FROM DATA_OPERACAO  ) '+
         ' ORDER BY SEMANA ';

   Qfinanceiro.Open(SQL);

    Qfinanceiro.First;
   while not Qfinanceiro.Eof do
   begin
     Qfinanceiro.Edit;
   //se o mês é janeiro ele pode ter pegado alguma pedaço da contagem da semana do ano passado por exemplo semana 52 ou 53, do ano passado
     if mes=1 then
     begin
       if MatchStr( Qfinanceirosemana.AsString,['52','53'])  then
         Qfinanceirosemana.AsString := '1'
       else
         Qfinanceirosemana.AsString := IntToStr(StrToInt( Qfinanceirosemana.AsString) + 1);
       Qfinanceiro.FieldByName('numero').AsInteger:=   StrToInt( Qfinanceirosemana.AsString);
     end
     else
       Qfinanceiro.FieldByName('numero').AsInteger:= WeekOfTheMonth( StartOfAWeek(ano,StrToInt( Qfinanceirosemana.AsString) ,1));


     Qfinanceiro.Post;
     Qfinanceiro.Next;
   end;
    cxGridDBChartDataGroup2.DataBinding.FieldName := 'numero';
   cxGridDBChartDataGroup2.DisplayText := 'Semanas ';
   cxGarficoReceberPagar.Title.Text  :='Financeiro semanal';
  end
  else
  begin
   sql:= 'SELECT  SUM(RECEBER) AS RECEBE, SUM(PAGAR) AS PAGA,  EXTRACT (DAY FROM DATA_OPERACAO  )||''/''||  EXTRACT (month FROM DATA_OPERACAO  )  AS SEMANA , DATA_OPERACAO'+
         ' FROM ( '+
         ' Select  (COALESCE(FPC_VLPARC,0)) RECEBER, 0 PAGAR , ( FPC_VENCTO  ) DATA_OPERACAO     '+
         '  from FAT_PC01 FT                                                                     '+
         '  where FPC_EXCLUSAO = ''N'' ' +       empresa+
         '     AND EXTRACT (YEAR FROM FPC_VENCTO  ) = '+IntToStr(ano)+
         '     AND EXTRACT (week FROM FPC_VENCTO  ) = '+ IntToStr(sem)+
         ' UNION ALL '+
         ' Select 0, (COALESCE(PPC_VLPARC,0)),  ( PPC_VENCTO  ) '+
         '   from PAG_PC01 PAG '+
         '  where PPC_EXCLUSAO = ''N''  '+empaux+
         ' AND EXTRACT (YEAR FROM PPC_VENCTO  ) ='+IntToStr(ano)+
         ' AND EXTRACT (week FROM PPC_VENCTO  ) = '+IntToStr(sem)+
         '  ) AS TUDO'+
         '  GROUP BY  EXTRACT (DAY FROM DATA_OPERACAO  )||''/''||  EXTRACT (month FROM DATA_OPERACAO  ), DATA_OPERACAO  '+
         ' ORDER BY DATA_OPERACAO ';

   Qfinanceiro.Open(SQL);
    cxGridDBChartDataGroup2.DataBinding.FieldName := 'semana';
   cxGridDBChartDataGroup2.DisplayText := 'Dias ';
   cxGarficoReceberPagar.Title.Text  :='Financeiro diário do ' +meses[mes] +'/'+IntToStr(ano);
  end;
    cxGraficoFinanceiro.Refresh;
end;


procedure TfrmDashBoardComecialFin.LinkLabel1LinkClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);
begin
  inherited;
   ShellExecute(Handle, 'open', PChar(Link), '',
    '', SW_SHOWNORMAL)
//  ShellExecute(0, nil, PChar(Link), nil, nil, 1);
end;

procedure TfrmDashBoardComecialFin.miResumoVendasClick(Sender: TObject);
begin
  inherited;
  dxvendasresumo.ExportToPDF;

end;

procedure TfrmDashBoardComecialFin.miGerarGraficoVendasClick(Sender: TObject);
begin
  inherited;
    if not(qvendas.active) or
    (qvendas.RecordCount <= 0) then
    GeraException('Não Existem Registros!');

   dxGraficoVendas.ExportToPDF;

end;

procedure TfrmDashBoardComecialFin.migerarresumoClick(Sender: TObject);
begin
  inherited;
  dxResumoFinanceiro.ExportToPDF;
end;

procedure TfrmDashBoardComecialFin.miGerarVendedoresClick(Sender: TObject);
begin
  inherited;
  if not(qvendas.active) or
    (qvendas.RecordCount <= 0) then
    GeraException('Não Existem Registros!');

   dxVendedoresVendas.ExportToPDF;

end;

procedure TfrmDashBoardComecialFin.miGraficoFaturamentoClick(Sender: TObject);
begin
  inherited;
   if not(qFaturamento.active) or
    (qFaturamento.RecordCount <= 0) then
    GeraException('Não Existem Registros!');


   dxGraficoFaturas.ExportToPDF;

end;

procedure TfrmDashBoardComecialFin.miGraficoFinanceiroClick(Sender: TObject);
begin
  inherited;
   if not(Qfinanceiro.active) or
    (Qfinanceiro.RecordCount <= 0) then
    GeraException('Não Existem Registros!');
  dxGraficoFinanceiro.ExportToPDF;

end;

procedure TfrmDashBoardComecialFin.rgEmpresaClick(Sender: TObject);
begin
  inherited;
   Gera (rgFiltro.ItemIndex);
end;

procedure TfrmDashBoardComecialFin.rgFiltroClick(Sender: TObject);
begin
  inherited;
  if rgFiltro.ItemIndex <> -1 then
    Gera (rgFiltro.ItemIndex);
  cbMes.Visible :=  rgFiltro.ItemIndex = 2;
  cbAno.Visible := rgFiltro.ItemIndex = 2;
end;

procedure TfrmDashBoardComecialFin.sbEmailClick(Sender: TObject);
var
  ASettings: TdxPSPDFReportExportOptions;
  Filename: String;
  ComponentPrinter: TdxComponentPrinter;
 email : string;
 msg: String;
 tcr : TfrmEMAIL0001;
 path : string;
begin
  inherited;
  Path := ExtractFilePath(Application.ExeName);
   if ((qvendas.active) or
    (qvendas.RecordCount > 0)) and (pvendas.Visible) then
  begin
    ASettings := TdxPSPDFReportExportOptions.Create;
    try

      Filename := 'dashboard.pdf';
      dxvendasresumo.ExportToPDF(Filename, False,ASettings);
      filename := 'vendasvendedores.pdf';
      dxVendedoresVendas.ExportToPDF(Filename, False,ASettings);
      filename := 'graficovendas.pdf';
      dxGraficoVendas.ExportToPDF(Filename,false, ASettings);

    finally
    ASettings.Free;
    end;


  end;
  if DBInicio.Empresa.bUSP_DASH_FINANCEIRO then
  begin
    Filename := 'resumofinanceiro.pdf';
    dxResumoFinanceiro.ExportToPDF(Filename,false,ASettings);

    if (qFaturamento.active) and
    (qFaturamento.RecordCount > 0) then
    begin
      Filename:= 'graficofatura.pdf';
      dxGraficoFaturas.ExportToPDF(Filename,false,asettings);
    end;
   if (Qfinanceiro.active) or
    (Qfinanceiro.RecordCount> 0) then
    begin
      Filename := 'graficofinanceiro.pdf';
      dxGraficoFinanceiro.ExportToPDF(Filename,false,ASettings);
    end;






  end;

  tcr := TfrmEmail0001.Create(Nil);
  try
    Screen.Cursor := crHourGlass;
    tcr.email_de_enviado := dbInicio.Empresa.EmailUserNameFinanceiro;
    tcr.ssenha := Trim(dbInicio.Empresa.EmailPassworldFinanceiro);
    tcr.nome_envio := DBInicio.Empresa.RAZAO;
    //tcr.sEmailCliente   := clone.FieldByName('EMAIL').AsString+';'+DBInicio.Empresa.EmailInterno;
//    tcr.sAssunto        := 'Boleto  de '+dbInicio.Empresa.FANTASIA + ' para ' +clone.FieldByName('CLI_RAZAO').asstring + ' - Vcto '+ DateToStr(clone.FieldByName('FPC_VENCTO').AsDateTime)  ;


    tcr.ProcessarInformacoes;
    if tcr.ssucesso  then
    begin
      email:=  tcr.EdMail.Text;
      msg := 'Email enviado a '+email+' com sucesso';



    end;
  finally
   FreeAndNil(tcr);
   Screen.Cursor := crDefault;
  end;
end;

end.
