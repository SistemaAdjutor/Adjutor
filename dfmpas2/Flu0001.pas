{****************************************************************
| Programa...: FLU0001   - Nome formulario = FormFluxoCaixa
| Objetivo...: Browse do Fluxo de Caixa
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
| Comentários:
|
| Criação..........: fev/99
| Ultima Alteração.: Mai/01
| Alterado por.....: Márcio
|
*****************************************************************}
unit Flu0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseForm,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, RwFunc,Db, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppModule, raCodMod,
  ppBands, ppVar, ppPrnabl, ppCache, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
  DBLocalS, TeEngine, Series, TeeProcs, Chart, Mask,  rxToolEdit,
  JvExControls, JvAnimatedImage, JvGIFCtrl, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF,  rxCurrEdit, ComCtrls, VclTee.TeeGDIPlus,
  Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Data.FMTBCd, JvExMask, JvToolEdit, JvDBGridFooter, Vcl.Menus, JvExStdCtrls, JvEdit, JvValidateEdit, JvDialogs, JvArrowButton, JvDBGridExport, JvComponentBase,
  frxExportBaseDialog;

type
  TFormFluxoCaixa = class(TfrmBase)
    ppDBFluxoCx: TppDBPipeline;
    ppRelFluxoCx: TppReport;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand1: TppSummaryBand;
    ppLine22: TppLine;
    raCodeModule3: TraCodeModule;
    SqlCdsFluxo: TSQLClientDataSet;
    DsFluxo: TDataSource;
    SqlCdsFluxoDATA_MOVIMENTO: TDateField;
    SqlCdsFluxoVALOR_PREVISAO_RECEBER: TFMTBCdField;
    SqlCdsFluxoVALOR_RECEBIDO: TFMTBCdField;
    SqlCdsFluxoVALOR_RECEBER: TFMTBCdField;
    SqlCdsFluxoVALOR_DESCONTADO: TFMTBCdField;
    SqlCdsFluxoVALOR_PREVISAO_PAGAR: TFMTBCdField;
    SqlCdsFluxoVALOR_PAGO: TFMTBCdField;
    SqlCdsFluxoVALOR_PAGAR: TFMTBCdField;
    SqlCdsFluxoSALDO_DO_DIA_PREV: TFMTBCdField;
    SqlCdsFluxoSALDO_DO_DIA_REAL: TFMTBCdField;
    SqlCdsFluxoSALDO_ACUMULADO_PREV: TFMTBCdField;
    SqlCdsFluxoSALDO_ACUMULADO_REAL: TFMTBCdField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    PanelAguarde: TPanel;
    JvGIFAnimator2: TJvGIFAnimator;
    Panel1: TPanel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    chkMultiEmpresa: TCheckBox;
    pnlFinal: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Relatorio: TBitBtn;
    GroupBox3: TGroupBox;
    chkPrevistoReceber: TCheckBox;
    chkRecebido: TCheckBox;
    chkPrevistoPagar: TCheckBox;
    chkPago: TCheckBox;
    chkSaldoPrevisto: TCheckBox;
    chkSaldoRealizado: TCheckBox;
    Dt_Inicio: TJvDateEdit;
    Dt_final: TJvDateEdit;
    chkIntegrar: TCheckBox;
    SqlCdsFluxoSALDO_INICIAL_REAL: TFMTBCDField;
    SqlCdsFluxoSALDO_INICIAL_PREV: TFMTBCDField;
    PopupMenu1: TPopupMenu;
    Detalhesaldoinicialprevisto1: TMenuItem;
    Detalhe1: TMenuItem;
    Fluxomensal1: TMenuItem;
    btnMensal: TBitBtn;
    chkSimular: TCheckBox;
    JvDBGridWordExport1: TJvDBGridWordExport;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    btnExpotar: TJvArrowButton;
    puExportar: TPopupMenu;
    miExcel: TMenuItem;
    miWord: TMenuItem;
    JvSaveDialog1: TJvSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DbGridFluxoCaixa: TDBGrid;
    GroupBox4: TGroupBox;
    edtTotalPrevReceber: TCurrencyEdit;
    edtTotalPrevPagar: TCurrencyEdit;
    edtTotalRecebido: TCurrencyEdit;
    edtTotalDesconto: TCurrencyEdit;
    edtTotalPago: TCurrencyEdit;
    CurrSaldoAcumuladoPrev: TJvValidateEdit;
    CurSaldoAcumuladoReal: TJvValidateEdit;
    Panel2: TPanel;
    pPrevisto: TPanel;
    Panel3: TPanel;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    chtFluxo: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnPizza: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SaveDialog1: TSaveDialog;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    chtTotais: TChart;
    Panel5: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Series7: TLineSeries;
    procedure Bit_MdSdoBancoClick(Sender: tObject);
    procedure Bit_AtualizaFluxoClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure MostraFluxo;
    procedure Dt_InicioEnter(Sender: tObject);
    procedure Dt_finalEnter(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure frxReport1GetValue(const VarName: String;   var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DbGridFluxoCaixaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Detalhe1Click(Sender: TObject);
    procedure Detalhesaldoinicialprevisto1Click(Sender: TObject);
    procedure Fluxomensal1Click(Sender: TObject);
    procedure SqlCdsFluxoDATA_MOVIMENTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SqlCdsFluxoVALOR_PREVISAO_RECEBERChange(Sender: TField);
    procedure SqlCdsFluxoVALOR_PREVISAO_PAGARChange(Sender: TField);
    procedure btnMensalClick(Sender: TObject);
    procedure chkSimularClick(Sender: TObject);
    procedure miExcelClick(Sender: TObject);
    procedure miWordClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Clck(Sender: TObject);
    procedure btnPizzaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
  private
    sFiltro:String;
    fMostraMes: boolean;
    procedure AtualizaGraficoValores;
    procedure AtivaPanelAguarde(pAtivar: boolean);
    procedure Filtro(const MostrarMes: boolean);
    procedure CalcularSaldoAcumulado;
  public
    procedure BotoesAcesso;

  end;

var
  FormFluxoCaixa: TFormFluxoCaixa;

implementation

{$R *.DFM}

uses iniciodb, Uteis, Sab0001, Flu0002, ufrmpreviewrb, udetalhefluxo, uDetSaldoFluxo;

procedure TFormFluxoCaixa.Bit_MdSdoBancoClick(Sender: tObject);
begin
    FormSaldoBanco :=TFormSaldoBanco.Create(Application);
    try
       FormSaldoBanco.ShowModal;
    finally
           FreeAndNil(FormSaldoBanco);
    end;
end;

procedure TFormFluxoCaixa.Bit_AtualizaFluxoClick(Sender: tObject);
begin
    FormFluxoInterv := TFormFluxoInterv.Create(Application);
    try
      FormFluxoInterv.ShowModal;
    finally
      freeAndNil(FormFluxoInterv);
    end;
end;

procedure TFormFluxoCaixa.Bit_SairClick(Sender: tObject);
begin
     close;
end;

procedure TFormFluxoCaixa.BotoesAcesso;
begin
     if assigned(FormFluxoCaixa) then
     begin
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroFluxo de Caixa/Previsão',DBInicio.Usuario.CODIGO,FormFluxoCaixa).Relatorio;
     end;
end;

procedure TFormFluxoCaixa.btnMensalClick(Sender: TObject);
begin
  inherited;
  Filtro(True);
end;

procedure TFormFluxoCaixa.btnPizzaClick(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, TAreaSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, TAreaSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, TAreaSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, TAreaSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, TAreaSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, TAreaSeries);
      Filtro(False);
end;

procedure TFormFluxoCaixa.CalcularSaldoAcumulado;
var book: TBookmark;
  saldoInicial : Currency;
begin
 if chkSimular.Checked then
 begin
  try
    book:= SqlCdsFluxo.GetBookmark;
    SqlCdsFluxo.DisableControls;
    saldoInicial:= SqlCdsFluxo.FieldByName('SALDO_INICIAL_PREV').AsCurrency ;
    while not SqlCdsFluxo.Eof do
    begin
      SqlCdsFluxo.Edit;
      SqlCdsFluxo.FieldByName('SALDO_INICIAL_PREV').AsCurrency := saldoInicial;
      SqlCdsFluxo.FieldByName('SALDO_ACUMULADO_PREV').AsCurrency :=
          SqlCdsFluxo.FieldByName('SALDO_DO_DIA_PREV').AsCurrency + SqlCdsFluxo.FieldByName('SALDO_INICIAL_PREV').AsCurrency;
      SqlCdsFluxo.Post;
      saldoInicial :=  SqlCdsFluxo.FieldByName('SALDO_ACUMULADO_PREV').AsCurrency;
      SqlCdsFluxo.Next;
    end;
    SqlCdsFluxo.GotoBookmark(book);
  finally
    SqlCdsFluxo.FreeBookMark (book);
    SqlCdsFluxo.EnableControls;
  end;
 end;
end;

procedure TFormFluxoCaixa.chkSimularClick(Sender: TObject);
begin
  inherited;
  if chkSimular.Checked then
   DbGridFluxoCaixa.Options := [dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit]
  else
   DbGridFluxoCaixa.Options := [dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];

end;

procedure TFormFluxoCaixa.Filtro(const MostrarMes: boolean);
begin

   if (Dt_Inicio.date=0) then
     begin
          uteis.aviso('Informe a Data Inicial');
          Dt_Inicio.SetFocus;
     end
     else
     if (Dt_final.date=0) then
     begin
         uteis.aviso('Informe a Data Final');
         Dt_final.SetFocus;
     end
     else
     if (Dt_Inicio.Date > Dt_final.Date) then
     begin
          uteis.aviso('A data inicial não pode ser maior que a data final');
          Dt_Inicio.SetFocus;
     end
     else
     begin
        try
         if chkSimular.Checked then
          DbGridFluxoCaixa.Options := [dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit]
         else
          DbGridFluxoCaixa.Options := [dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];

         fMostraMes := MostrarMes;
         Screen.cursor := crHourGlass;
         SqlCdsFluxo.DisableControls;
         AtivaPanelAguarde(true);
         Application.ProcessMessages;
         SqlCdsFluxo.Close;

         if MostrarMes then
          SqlCdsFluxo.CommandText := ' select cast(( EXTRACT(YEAR FROM DATA_MOVIMENTO) || ''-'' || EXTRACT(MONTH FROM DATA_MOVIMENTO)|| ''-01'') as date) data_movimento ,    '+
               ' SUM(VALOR_PREVISAO_RECEBER) VALOR_PREVISAO_RECEBER,    '+
               ' SUM(VALOR_RECEBIDO) VALOR_RECEBIDO,                    '+
               ' SUM(VALOR_RECEBER) VALOR_RECEBER,                      '+
               ' SUM(VALOR_DESCONTADO) VALOR_DESCONTADO,                '+
               ' SUM(VALOR_PREVISAO_PAGAR)  VALOR_PREVISAO_PAGAR,       '+
               ' SUM(VALOR_PAGO) VALOR_PAGO,                            '+
               ' SUM(VALOR_PAGAR) VALOR_PAGAR,                          '+
               ' SUM(SALDO_DO_DIA_PREV) SALDO_DO_DIA_PREV,              '+
               ' SUM(SALDO_DO_DIA_REAL) SALDO_DO_DIA_REAL,              '+
               ' SUM(SALDO_DO_DIA_PREV)+SUM(SALDO_INICIAL_PREV) SALDO_ACUMULADO_PREV,        '+
               ' SUM(SALDO_DO_DIA_REAL)+SUM(SALDO_INICIAL_REAL) SALDO_ACUMULADO_REAL,        '+
               ' sum(SALDO_INICIAL_PREV) SALDO_INICIAL_PREV,            '+
               ' SUM(SALDO_INICIAL_REAL) SALDO_INICIAL_REAL             '+
               ' from PCd_FLUXO_CAIXA('+QuotedStr(DataAmericana(Dt_Inicio.Text))+','+
                      QuotedStr(DataAmericana(Dt_final.Text))+','+QuotedStr(iif(chkMultiEmpresa.Checked,'999',dbInicio.EMPRESA.EMP_CODIGO))+','+
                      QuotedStr(iif(chkIntegrar.Checked,'S','N'))+  ','+QuotedStr('S')+
                      ') GROUP BY 1'
         else
         SqlCdsFluxo.CommandText := 'select * from PCd_FLUXO_CAIXA('+QuotedStr(DataAmericana(Dt_Inicio.Text))+','+
                      QuotedStr(DataAmericana(Dt_final.Text))+','+QuotedStr(iif(chkMultiEmpresa.Checked,'999',dbInicio.EMPRESA.EMP_CODIGO))+','+
                      QuotedStr(iif(chkIntegrar.Checked,'S','N'))+ ','+QuotedStr('N')+
                      ')';
         if dbInicio.IsDesenvolvimento then
          copyToClipboard(SqlCdsFluxo.CommandText);
         SqlCdsFluxo.Open;

         DbGridFluxoCaixa.Columns[1].Visible := chkIntegrar.Checked;
         DbGridFluxoCaixa.Columns[6].Visible := chkIntegrar.Checked;
         if chkIntegrar.Checked then
         begin
           edtTotalPrevReceber.Left := 164;
           edtTotalPrevPagar.Left := 264;
           edtTotalRecebido.Left := 618;
           edtTotalDesconto.Left := 718;
           edtTotalPago.Left := 820;
           pPrevisto.Width :=  544;
           CurrSaldoAcumuladoPrev.Left := 432;
           CurSaldoAcumuladoReal.Left  := 994;
         end
         else
         begin
           edtTotalPrevReceber.Left := 90;
           edtTotalPrevPagar.Left := 192;
           edtTotalRecebido.Left := 460;
           edtTotalDesconto.Left := 561;
           edtTotalPago.Left := 657;
           pPrevisto.Width :=  472;
           CurrSaldoAcumuladoPrev.Left := 357;
           CurSaldoAcumuladoReal.Left := 831;
         end;

         Application.ProcessMessages;
         AtualizaGraficoValores;

        finally
          Screen.cursor := crDefault;
          AtivaPanelAguarde(false);
          SqlCdsFluxo.EnableControls;
        end;
     end;
end;

procedure TFormFluxoCaixa.Fluxomensal1Click(Sender: TObject);
begin
  inherited;
  Filtro(True);
end;

procedure TFormFluxoCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormFluxoCaixa.FormCreate(Sender: TObject);
begin
 inherited;
 SalvaStatusGrid := False;
 ZebrarGrade := False;
 fMostraMes := False;
 if DBInicio.Usuario.USERNAME = 'NOVI' then
   DbGridFluxoCaixa.PopupMenu := PopupMenu1
 ELSE
   DbGridFluxoCaixa.PopupMenu := NIL;
end;

procedure TFormFluxoCaixa.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFluxoCaixa := Nil;
end;

procedure TFormFluxoCaixa.FormShow(Sender: tObject);
begin
  inherited;
  Dt_Inicio.Date := Date - 15;
  Dt_final.Date := Date + 15;
  SpeedButton3.Click;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFormFluxoCaixa.Bit_RelatorioClick(Sender: tObject);
begin
  if not SqlCdsFluxo.IsEmpty  then
     begin
         sFiltro := 'Periodo de: '+Dt_Inicio.Text+' até '+Dt_final.Text;
         frxReport1.ShowReport();
     end
  else
     begin
         uteis.aviso('Atualiza o fluxo para gerar o relatório !');
     end;
end;

procedure TFormFluxoCaixa.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbinicio.EMPRESA.Razao;
end;

procedure TFormFluxoCaixa.SpeedButton11Click(Sender: TObject);
var
  cs0: TChartSeries;
begin
  inherited;
  cs0 := chtTotais.Series[0];
  ChangeSeriesType(cs0, TLineSeries);
end;
procedure TFormFluxoCaixa.SpeedButton12Click(Sender: TObject);
var
  cs0: TChartSeries;
begin
  inherited;
  cs0 := chtTotais.Series[0];
  ChangeSeriesType(cs0, TBarSeries);
end;

procedure TFormFluxoCaixa.SpeedButton13Click(Sender: TObject);
var
  cs0: TChartSeries;
begin
  inherited;
  cs0 := chtTotais.Series[0];
  ChangeSeriesType(cs0, TPieSeries);
end;

procedure TFormFluxoCaixa.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtTotais.Print;
    finally
      Free;
    end;
end;

procedure TFormFluxoCaixa.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  inherited;
  SaveDialog1.Filter := 'BMP (*.bmp)';
  SaveDialog1.DefaultExt := 'bmp';
  if SaveDialog1.Execute then
  begin
    chtTotais.SaveToBitmapFile(SaveDialog1.Filename);
  end;
end;

procedure TFormFluxoCaixa.SpeedButton1Click(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, TPieSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, TPieSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, TPieSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, TPieSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, TPieSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, TPieSeries);
      Filtro(False);
end;

procedure TFormFluxoCaixa.SpeedButton2Clck(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, TBarSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, TBarSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, TBarSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, TBarSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, TBarSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, TBarSeries);
      Filtro(False);
end;
procedure TFormFluxoCaixa.SpeedButton3Click(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, TLineSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, TLineSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, TLineSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, TLineSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, TLineSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, TLineSeries);
      Filtro(False);
end;

procedure TFormFluxoCaixa.SpeedButton4Click(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, THorizLineSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, THorizLineSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, THorizLineSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, THorizLineSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, THorizLineSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, THorizLineSeries);
      Filtro(False);
end;

procedure TFormFluxoCaixa.SpeedButton5Click(Sender: TObject);
var
  cs0: TChartSeries;
  cs1: TChartSeries;
  cs2: TChartSeries;
  cs3: TChartSeries;
  cs4: TChartSeries;
  cs5: TChartSeries;
begin
  inherited;
      cs0 := chtFluxo.Series[0];
      ChangeSeriesType(cs0, TPointSeries);
      cs1 := chtFluxo.Series[1];
      ChangeSeriesType(cs1, TPointSeries);
      cs2 := chtFluxo.Series[2];
      ChangeSeriesType(cs2, TPointSeries);
      cs3 := chtFluxo.Series[3];
      ChangeSeriesType(cs3, TPointSeries);
      cs4 := chtFluxo.Series[4];
      ChangeSeriesType(cs4, TPointSeries);
      cs5 := chtFluxo.Series[5];
      ChangeSeriesType(cs5, TPointSeries);
      Filtro(False);
end;

procedure TFormFluxoCaixa.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtFluxo.Print;
    finally
      Free;
    end;
end;

procedure TFormFluxoCaixa.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  SaveDialog1.Filter := 'BMP (*.bmp)';
  SaveDialog1.DefaultExt := 'bmp';
  if SaveDialog1.Execute then
  begin
    chtFluxo.SaveToBitmapFile(SaveDialog1.Filename);
  end;
end;

procedure TFormFluxoCaixa.SpeedButton9Click(Sender: TObject);
var
  cs0: TChartSeries;
begin
  inherited;
  cs0 := chtTotais.Series[0];
  ChangeSeriesType(cs0, THorizBarSeries);
end;
procedure TFormFluxoCaixa.SqlCdsFluxoDATA_MOVIMENTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
 Const  AMes: Array[1..12] of String = ('Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');
var  ano, mes , dia : word;
begin
  inherited;
  if fMostraMes then
  begin
    DecodeDate(sender.AsDateTime,ano,mes,dia );
    text := AMes[mes] +'/'+ ano.ToString;
  end
  else
    Text :=  formatdatetime('dd/mm/yyyy', Sender.AsDateTime);
end;

procedure TFormFluxoCaixa.SqlCdsFluxoVALOR_PREVISAO_PAGARChange(Sender: TField);
begin
  inherited;
  if chkSimular.Checked then
  begin
    SqlCdsFluxoSALDO_DO_DIA_PREV.AsCurrency := SqlCdsFluxoVALOR_RECEBER.AsCurrency - Sender.AsCurrency;
    CalcularSaldoAcumulado;
  end;
end;

procedure TFormFluxoCaixa.SqlCdsFluxoVALOR_PREVISAO_RECEBERChange(Sender: TField);
begin
  inherited;
  if chkSimular.Checked then
  begin
    SqlCdsFluxoSALDO_DO_DIA_PREV.AsCurrency := Sender.AsCurrency - SqlCdsFluxoVALOR_PREVISAO_PAGAR.AsCurrency;
    CalcularSaldoAcumulado;
  end;
end;

procedure TFormFluxoCaixa.MostraFluxo;
begin
    try
      SqlCdsFluxo.Close;
      SqlCdsFluxo.CommandText := SqlDef('TABELAS','Select * from FLUXOCX','','FLU_DIA','');
      SqlCdsFluxo.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela FLUXO DE CAIXA !'+e.message));
    end;
end;

procedure TFormFluxoCaixa.AtualizaGraficoValores;

begin
   try
      //Limpa
      edtTotalPrevReceber.Clear;
      edtTotalPrevPagar.Clear;
      edtTotalRecebido.Clear;
      edtTotalDesconto.Clear;
      edtTotalPago.Clear;

      //Atualiza Grafico
      chtFluxo.Series[0].Clear;
      chtFluxo.Series[1].Clear;
      chtFluxo.Series[2].Clear;
      chtFluxo.Series[3].Clear;
      chtFluxo.Series[4].Clear;
      chtFluxo.Series[5].Clear;



      //Chart1.Series[1].Clear;
      if (not SqlCdsFluxo.IsEmpty) then
         begin
            if (SqlCdsFluxo.RecordCount > 1) then
               begin
                  SqlCdsFluxo.First;
                  while (not SqlCdsFluxo.Eof) do
                  begin
                      //Prev Receber
                      if chkPrevistoReceber.Checked then
                        chtFluxo.Series[0].Add(iif(chkPrevistoReceber.Checked,SqlCdsFluxoVALOR_PREVISAO_RECEBER.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);
                      if chkRecebido.Checked then
                        chtFluxo.Series[1].Add(iif(chkRecebido.Checked,SqlCdsFluxoVALOR_RECEBIDO.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);
                      if chkPrevistoPagar.Checked then
                        chtFluxo.Series[2].Add(iif(chkPrevistoPagar.Checked,SqlCdsFluxoVALOR_PREVISAO_PAGAR.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);
                      if chkPago.Checked then
                        chtFluxo.Series[3].Add(iif(chkPago.Checked,SqlCdsFluxoVALOR_PAGO.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);
                      if chkSaldoPrevisto.Checked then
                        chtFluxo.Series[4].Add(iif(chkSaldoPrevisto.Checked,SqlCdsFluxoSALDO_ACUMULADO_PREV.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);
                      if chkSaldoRealizado.Checked then
                        chtFluxo.Series[5].Add(iif(chkSaldoRealizado.Checked,SqlCdsFluxoSALDO_ACUMULADO_REAL.AsCurrency,0),SqlCdsFluxoDATA_MOVIMENTO.AsString);

                      edtTotalPrevReceber.Value := edtTotalPrevReceber.Value + SqlCdsFluxoVALOR_PREVISAO_RECEBER.AsFloat;
                      edtTotalPrevPagar.Value := edtTotalPrevPagar.Value + SqlCdsFluxoVALOR_PREVISAO_PAGAR.AsFloat;
                      edtTotalRecebido.Value := edtTotalRecebido.Value + SqlCdsFluxoVALOR_RECEBIDO.AsFloat;
                      edtTotalDesconto.Value := edtTotalDesconto.Value + SqlCdsFluxoVALOR_DESCONTADO.AsFloat;
                      edtTotalPago.Value := edtTotalPago.Value + SqlCdsFluxoVALOR_PAGO.AsFloat;



                      SqlCdsFluxo.Next;
                  end;
                  CurSaldoAcumuladoReal.AsCurrency := SqlCdsFluxoSALDO_ACUMULADO_REAL.AsCurrency;
                  CurrSaldoAcumuladoPrev.AsCurrency := SqlCdsFluxoSALDO_ACUMULADO_PREV.AsCurrency;
                  SqlCdsFluxo.First;
               end;
               chtTotais.Series[0].Clear;

               // chtTotais.Series[0].add(edtTotalPrevReceber.Value,    edtTotalPrevReceber.Hint);
               // chtTotais.Series[0].add(edtTotalPrevPagar.Value,      edtTotalPrevPagar.Hint);
               // chtTotais.Series[0].add(CurrSaldoAcumuladoPrev.Value, CurrSaldoAcumuladoPrev.Hint);
               chtTotais.Series[0].add(edtTotalRecebido.Value,       edtTotalRecebido.Hint);
               // chtTotais.Series[0].add(edtTotalDesconto.Value,       edtTotalDesconto.Hint);
               chtTotais.Series[0].add(edtTotalPago.Value,           edtTotalPago.Hint);
               chtTotais.Series[0].add(CurSaldoAcumuladoReal.Value,  CurSaldoAcumuladoReal.Hint);
         end;
//  end;

   except


   end;
end;

procedure TFormFluxoCaixa.Dt_InicioEnter(Sender: tObject);
begin
   SqlCdsFluxo.Close;
   AtualizaGraficoValores;
end;

procedure TFormFluxoCaixa.DbGridFluxoCaixaDblClick(Sender: TObject);
begin
  inherited;
  if not SqlCdsFluxo.IsEmpty then
  begin
    if not  Assigned(frmDetalheFluxo) then
      frmDetalheFluxo:= TfrmDetalheFluxo.Create(Application);
      frmDetalheFluxo.WindowState := wsMaximized;
      frmDetalheFluxo.RxDataInicial.Date :=  SqlCdsFluxoDATA_MOVIMENTO.AsDateTime;
      frmDetalheFluxo.RxDataFinal.Date :=  SqlCdsFluxoDATA_MOVIMENTO.AsDateTime;
      frmDetalheFluxo.MultiEmpresa := chkMultiEmpresa.Checked;
      frmDetalheFluxo.Show;
      frmDetalheFluxo.filtro;


  end;
end;

procedure TFormFluxoCaixa.Detalhe1Click(Sender: TObject);
begin
  inherited;
 if not SqlCdsFluxo.IsEmpty then
  begin
    if not  Assigned(frmDetalheFluxo) then
      frmDetalheFluxo:= TfrmDetalheFluxo.Create(Application);
    frmDetalheFluxo.WindowState := wsMaximized;
    frmDetalheFluxo.RxDataInicial.Date :=  SqlCdsFluxoDATA_MOVIMENTO.AsDateTime;
    frmDetalheFluxo.RxDataFinal.Date :=  SqlCdsFluxoDATA_MOVIMENTO.AsDateTime;
    frmDetalheFluxo.MultiEmpresa := chkMultiEmpresa.Checked;
    frmDetalheFluxo.Show;


  end;
end;

procedure TFormFluxoCaixa.Detalhesaldoinicialprevisto1Click(Sender: TObject);
begin
  inherited;
  if not SqlCdsFluxo.IsEmpty then
  begin
     frmDetSaldoFluxo := TfrmDetSaldoFluxo.Create(Application);
    try
//      uDetSaldoFluxo.aCaption := 'títulos inandimplentes de '+cdsBuscoCLI_RAZAO.AsString;
      frmDetSaldoFluxo.DiaSaldo :=  SqlCdsFluxoDATA_MOVIMENTO.AsDateTime;
      frmDetSaldoFluxo.MultiEmpresa := chkMultiEmpresa.Checked;
      frmDetSaldoFluxo.ShowModal;
    finally
      FreeAndNil(frmDetSaldoFluxo);
    end;

  end;
end;

procedure TFormFluxoCaixa.Dt_finalEnter(Sender: tObject);
begin
   SqlCdsFluxo.Close;
   AtualizaGraficoValores;
end;

procedure TFormFluxoCaixa.BitBtn1Click(Sender: tObject);
begin
  Filtro(False);
end;

procedure TFormFluxoCaixa.AtivaPanelAguarde(pAtivar:boolean);
begin
   PanelAguarde.Visible:=pAtivar;
   JvGifAnimator2.Animate:=pAtivar;
end;

procedure TFormFluxoCaixa.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName  = 'empresa') then
      Value := dbInicio.EMPRESA.RAZAO
   else
   if (VarName  = 'filtro') then
      Value := sFiltro;
end;

procedure TFormFluxoCaixa.miExcelClick(Sender: TObject);
begin
  inherited;
 if not(SqlCdsFluxo.Active) or
    (SqlCdsFluxo.IsEmpty ) then
    GeraException('Não Existem Registros!');

  jvSaveDialog1.Filter := 'Planilha Excel |*.xls ';    //'Text file|*.txt|Word file|*.doc';
  jvSaveDialog1.title := 'Exportar Dados';
  jvSaveDialog1.DefaultExt := '.xls';
  if jvSaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    try
      JvDBGridExcelExport1.Grid := DbGridFluxoCaixa;
      JvDBGridExcelExport1.FileName := jvSaveDialog1.Filename;
      JvDBGridExcelExport1.AutoFit := False;

      try
        JvDBGridExcelExport1.ExportGrid;
      except
        //

      end;
      ShowMessage('Salvo com sucesso');
    finally
      Cursor := crDefault
    end;
  end;
end;

procedure TFormFluxoCaixa.miWordClick(Sender: TObject);
begin
  inherited;
 if not(SqlCdsFluxo.Active) or
    (SqlCdsFluxo.IsEmpty ) then
    GeraException('Não Existem Registros!');

  jvSaveDialog1.Filter := 'Documento word |*.doc ';    //'Text file|*.txt|Word file|*.doc';
  jvSaveDialog1.title := 'Exportar Dados';
  jvSaveDialog1.DefaultExt := '.doc';
  if jvSaveDialog1.Execute then
  begin
    Cursor := crHourGlass;
    try
      JvDBGridWordExport1.Grid := DbGridFluxoCaixa;
      JvDBGridWordExport1.FileName := jvSaveDialog1.Filename;

      try
        JvDBGridExcelExport1.ExportGrid;
      except
        //

      end;
      ShowMessage('Salvo com sucesso');
    finally
      Cursor := crDefault
    end;
  end;
end;

end.
