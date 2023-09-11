unit PrevC002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,  rxToolEdit,
   rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, RwFunc,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppCache, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, SimpleDS, Data.DBXFirebird;

type
  TFormPrevConsGrid = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    GrpProduto: TGroupBox;
    DBGridProdutos: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    SqlCdsItensConsumo: TSQLClientDataSet;
    DsItensConsumo: TDataSource;
    SqlCdsProdutos: TSQLClientDataSet;
    DsProdutos: TDataSource;
    SqlCdsProdutosPRD_REFER: TStringField;
    SqlCdsProdutosPRD_DESCRI: TStringField;
    SqlCdsProdutosPSV_MODE1: TStringField;
    SqlCdsProdutosPSV_QUANT1: TFMTBCdField;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    grb05: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    Bit_Sair: TBitBtn;
    ppDBProdutos: TppDBPipeline;
    ppRelPrevConsumo: TppReport;
    ppDBItens: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppLine18: TppLine;
    ppLine30: TppLine;
    SqlCdsItensGrade: TSQLClientDataSet;
    DsItensGrade: TDataSource;
    GrpGrade: TGroupBox;
    Label1: TLabel;
    DBGRIDGRADE: TDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    NumEdit1: TCurrencyEdit;
    SqlCdsItensConsumoPRD_REFER: TStringField;
    SqlCdsItensConsumoPSI_CUSTO: TFMTBCdField;
    SqlCdsItensConsumoPSI_ESTFISICO: TFMTBCdField;
    SqlCdsItensConsumoPSI_ESTANTEC: TFMTBCdField;
    SqlCdsItensConsumoPSI_CONSUMO: TFMTBCdField;
    SqlCdsItensConsumoPSI_FALTA: TFMTBCdField;
    SqlCdsItensConsumoEMP_CODIGO: TStringField;
    SqlCdsItensConsumoPSI_REGISTRO: TIntegerField;
    SqlCdsItensConsumoPSI_ESTRESERVA: TFMTBCdField;
    SqlCdsItensConsumoPSI_STATUS: TStringField;
    SqlCdsItensConsumoPED_CODIGO: TStringField;
    SqlCdsItensConsumoPSI_DISPONIVEL: TFMTBCdField;
    SqlCdsItensConsumoPRD_REFER_ITENS: TStringField;
    SqlCdsItensConsumoPRD_DESCRI: TStringField;
    SqlCdsItensConsumoPRD_UND: TStringField;
    SqlCdsItensGradePRD_REFER: TStringField;
    SqlCdsItensGradePSI_CUSTO: TFMTBCdField;
    SqlCdsItensGradePSI_ESTFISICO: TFMTBCdField;
    SqlCdsItensGradePSI_ESTANTEC: TFMTBCdField;
    SqlCdsItensGradePSI_CONSUMO: TFMTBCdField;
    SqlCdsItensGradePSI_FALTA: TFMTBCdField;
    SqlCdsItensGradeEMP_CODIGO: TStringField;
    SqlCdsItensGradePSI_REGISTRO: TIntegerField;
    SqlCdsItensGradePSI_ESTRESERVA: TFMTBCdField;
    SqlCdsItensGradePSI_STATUS: TStringField;
    SqlCdsItensGradePED_CODIGO: TStringField;
    SqlCdsItensGradePSI_DISPONIVEL: TFMTBCdField;
    SqlCdsItensGradePRD_REFER_ITENS: TStringField;
    SqlCdsItensGradePRD_DESCRI: TStringField;
    SqlCdsItensGradePRD_UND: TStringField;
    SqlCdsItensConsumoPSI_CUSTO_CC: TCurrencyField;
    SqlCdsItensGradePSI_CUSTO_CC: TCurrencyField;
    SqlCdsItensConsumoPSI_CONSUMO_SEMI: TFMTBCdField;
    SqlCdsItensConsumoPSI_UND: TStringField;
    SqlCdsItensGradePSI_CONSUMO_SEMI: TFMTBCdField;
    SqlCdsItensGradePSI_UND: TStringField;
    SqlCdsItensConsumoFALTA_CC: TCurrencyField;
    SqlCdsItensConsumoPTI_CODIGO: TStringField;
    SqlCdsItensConsumoPTI_SIGLA: TStringField;
    SqlCdsItensGradePTI_CODIGO: TStringField;
    SqlCdsItensGradePTI_SIGLA: TStringField;
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure CalculaCusto;
    procedure Bit_SairClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure SqlCdsItensConsumoAfterScroll(DataSet: TDataSet);
    procedure DBGridProdutosKeyPress(Sender: tObject; var Key: Char);
    procedure DBGRIDGRADEKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsItensConsumoCalcFields(DataSet: TDataSet);
    procedure SqlCdsItensGradeCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
  private
PathNewRel :STRING;
    wSql1,wSql2,wSql3 : String;
  public
    { Public declarations }
  end;

var
  wCustTotal:Double;
  FormPrevConsGrid: TFormPrevConsGrid;

implementation

uses PrevC001, DmProdu, DataCad, Men0001, Uteis, ufrmpreviewrb, iniciodb;

{$R *.DFM}



procedure TFormPrevConsGrid.CalculaCusto;
begin
    NumEdit1.Value := 0;
    SqlCdsItensConsumo.First;
    while not SqlCdsItensConsumo.Eof do
     begin
         NumEdit1.Value := NumEdit1.Value + SqlCdsItensConsumoPSI_CUSTO_CC.AsCurrency;
         SqlCdsItensConsumo.Next;
     end;
    SqlCdsItensConsumo.First;
end;

procedure TFormPrevConsGrid.FormCreate(Sender: tObject);
begin
    PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormPrevConsGrid.FormShow(Sender: tObject);
begin
    try
      Left := 0;
      Top  := 0;
      SqlCdsProdutos.Close;
      SqlCdsProdutos.CommandText := SQLDEF('PRODUTOS','select R1.PRD_REFER,R1.PRD_DESCRI,R1.PSV_MODE1,R1.PSV_QUANT1 from PSV0000 R1',
                                           'where R1.PSV_FLAG = ''P''','R1.PRD_REFER','R1.');
      SqlCdsProdutos.Open;
      {Abrir a tabela da materia prima consumida}
      wSql1  := 'Select C1.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PTI_CODIGO,P2.PTI_SIGLA from PSV_IT01 C1 LEFT JOIN PRD0000 P1 ON (C1.prd_refer = P1.prd_refer) LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo) ';
      wOrdem := 'P1.PRD_DESCRI ';
      SqlCdsItensConsumo.Close;
      SqlCdsItensConsumo.CommandText := SQLDEF('PRODUTOS',wSql1,'',wOrdem,'C1.');
      SqlCdsItensConsumo.Open;
      CalculaCusto;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
end;

procedure TFormPrevConsGrid.SpeedButton1Click(Sender: tObject);
begin
    Close;
end;

procedure TFormPrevConsGrid.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormPrevConsGrid.BitOkClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    LBL_00_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
    LBL_00_LTITULO1.Caption := 'PREVISÃO DE CONSUMO DE MATERIAL';
    if RadVideo.Checked then
       begin
           ppRelPrevConsumo.DeviceType := 'Screen';
       end else
    if RadImpressora.Checked then
       begin
           ppRelPrevConsumo.DeviceType := 'Printer';
           ppRelPrevConsumo.ShowPrintDialog := true;
       end;
    RBuilderPreview(ppRelPrevConsumo);
    Screen.Cursor := crDefault;
end;

procedure TFormPrevConsGrid.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormPrevConsGrid.SqlCdsItensConsumoAfterScroll(DataSet: TDataSet);
begin
    if (SqlCdsItensConsumoPTI_SIGLA.AsString = 'PA') or (SqlCdsItensConsumoPTI_SIGLA.AsString = 'PI') then
       begin
           try
             wSql1  := 'Select C1.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PTI_CODIGO,P2.PTI_SIGLA from PSV_IT01 C1 LEFT JOIN PRD0000 P1 ON (C1.prd_refer = P1.prd_refer) LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo) ';
             wOrdem := 'P1.PRD_DESCRI ';
             SqlCdsItensGrade.close;
             SqlCdsItensGrade.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE C1.PRD_REFER = '''+SqlCdsItensConsumoPRD_REFER.AsString+''' AND P1.PRD_GRADE<>''X''','P1.PRD_DESCRI','C1.');
             SqlCdsItensGrade.Open;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao localizar o(s) iten(s) da grade ! '+e.message));
           end;
       end
    else
       begin
           SqlCdsItensGrade.Close;
       end;
end;

procedure TFormPrevConsGrid.DBGridProdutosKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key =#13 then
       begin
           DBGRIDGRADE.SetFocus;
           Key :=#0;
       end;
end;

procedure TFormPrevConsGrid.DBGRIDGRADEKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key =#13 then
       begin
           DBGridProdutos.SetFocus;
           Key :=#0;
       end;
end;

procedure TFormPrevConsGrid.SqlCdsItensConsumoCalcFields(
  DataSet: TDataSet);
begin
    if SqlCdsItensConsumoPSI_FALTA.AsCurrency < 0 then
       SqlCdsItensConsumoPSI_CUSTO_CC.AsCurrency := (SqlCdsItensConsumoPSI_ESTANTEC.AsCurrency-SqlCdsItensConsumoPSI_CONSUMO.AsCurrency)*SqlCdsItensConsumoPSI_CUSTO.AsCurrency
    else
       SqlCdsItensConsumoPSI_CUSTO_CC.AsCurrency := ((SqlCdsItensConsumoPSI_CONSUMO.AsCurrency))*SqlCdsItensConsumoPSI_CUSTO.AsCurrency;

    if SqlCdsItensConsumoPSI_FALTA.AsCurrency < 0 then
       SqlCdsItensConsumoPSI_CUSTO_CC.AsCurrency := ((SqlCdsItensConsumoPSI_CONSUMO.AsCurrency+SqlCdsItensConsumoPSI_CONSUMO_SEMI.AsCurrency)-SqlCdsItensConsumoPSI_ESTANTEC.AsCurrency)*SqlCdsItensConsumoPSI_CUSTO.AsCurrency
    else
       SqlCdsItensConsumoPSI_CUSTO_CC.AsCurrency := ((SqlCdsItensConsumoPSI_CONSUMO.AsCurrency+SqlCdsItensConsumoPSI_CONSUMO_SEMI.AsCurrency))*SqlCdsItensConsumoPSI_CUSTO.AsCurrency;
end;

procedure TFormPrevConsGrid.SqlCdsItensGradeCalcFields(DataSet: TDataSet);
begin
    if SqlCdsItensGradePSI_FALTA.AsCurrency < 0 then
       SqlCdsItensGradePSI_CUSTO_CC.AsCurrency := (SqlCdsItensGradePSI_ESTANTEC.AsCurrency-SqlCdsItensGradePSI_CONSUMO.AsCurrency)*SqlCdsItensGradePSI_CUSTO.AsCurrency
    else
       SqlCdsItensGradePSI_CUSTO_CC.AsCurrency := ((SqlCdsItensGradePSI_CONSUMO.AsCurrency))*SqlCdsItensGradePSI_CUSTO.AsCurrency;
    if SqlCdsItensGradePSI_FALTA.AsCurrency < 0 then
       SqlCdsItensGradePSI_CUSTO_CC.AsCurrency := ((SqlCdsItensGradePSI_CONSUMO.AsCurrency+SqlCdsItensGradePSI_CONSUMO_SEMI.AsCurrency)-SqlCdsItensGradePSI_ESTANTEC.AsCurrency)*SqlCdsItensGradePSI_CUSTO.AsCurrency
    else
       SqlCdsItensGradePSI_CUSTO_CC.AsCurrency := ((SqlCdsItensGradePSI_CONSUMO.AsCurrency+SqlCdsItensGradePSI_CONSUMO_SEMI.AsCurrency))*SqlCdsItensGradePSI_CUSTO.AsCurrency;
end;

end.
