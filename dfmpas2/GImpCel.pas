unit GImpCel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask,    DB,
  DBTables,Variants,RwFunc, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppModule, raCodMod, ppDesignLayer,
  ppParameter, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFormGImpCel = class(TForm)
    GroupData: TGroupBox;
    Lb_Inicio: TLabel;
    Lb_Fim: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Cb_Ano_Inicial: TComboBox;
    Cb_Ano_Final: TComboBox;
    PrintStp: TPrinterSetupDialog;
    GroupCelSelecao: TGroupBox;
    CbCelulas: TComboBox;
    Label1: TLabel;
    GroupPeriodo: TGroupBox;
    Lbl_De: TLabel;
    Lbl_Ate: TLabel;
    RadTodas: TRadioButton;
    RadConcluidas: TRadioButton;
    RadPendentes: TRadioButton;
    DsQReciboMov: TDataSource;
    Group00: TGroupBox;
    LTBoxCelulas: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Group06: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    EdtCel_codigo: TEdit;
    SqlCdsCelula: TSQLClientDataSet;
    SqlCdsCelulaCEL_CODIGO: TStringField;
    SqlCdsCelulaCEL_NOME: TStringField;
    Cb_MesInicial: TComboBox;
    Cb_MesFinal: TComboBox;
    SqlCdsMes: TSQLClientDataSet;
    SqlCdsMesMES_NUMERO: TStringField;
    SqlCdsMesMES_DESCRI: TStringField;
    SqlCdsMesEMP_CODIGO: TStringField;
    SQLClientDataSet1: TSQLClientDataSet;
    SqlCdsRel01: TSQLClientDataSet;
    DsRel01: TDataSource;
    ppRel01: TppReport;
    SqlCdsRel01CME_CODIGO: TStringField;
    SqlCdsRel01WREALIZADO: TFMTBCdField;
    SqlCdsRel01WFATURAMENTO: TFMTBCdField;
    SqlCdsRel01VCT_TUP: TFMTBCdField;
    SqlCdsRel01CEL_CODIGO: TStringField;
    SqlCdsRel01CEL_NOME: TStringField;
    SqlCdsRel01CME_TUPACRECENT: TFMTBCdField;
    SqlCdsRel01CME_TUPMETAMES: TFMTBCdField;
    SqlCdsRel01CME_TUPNEGATIVO: TFMTBCdField;
    SqlCdsRel01CME_PERCPATICIPA: TFMTBCdField;
    SqlCdsRel01CME_DIASUTEIS: TFMTBCdField;
    SqlCdsRel01CME_TOT_DIAS_COMP: TFMTBCdField;
    SqlCdsRel01CTP_REALIZADO_CC: TCurrencyField;
    SqlCdsRel01CTP_FATURAMENTO_CC: TCurrencyField;
    SqlCdsRel01CTP_PREVISTO_CC: TCurrencyField;
    SqlCdsRel01CTP_DIFERENCA_CC: TCurrencyField;
    SqlCdsRel01CTP_COMISSAO_CC: TCurrencyField;
    SqlCdsRel01CTP_TUPDIA_CC: TCurrencyField;
    SqlCdsRel01CTP_PER_REALI_CC: TCurrencyField;
    SqlCdsRel01CTP_TUPFATUR_CC: TCurrencyField;
    SqlCdsRel02: TSQLClientDataSet;
    DsRel02: TDataSource;
    SqlCdsRel02CME_CODIGO: TStringField;
    SqlCdsRel02CEL_CODIGO: TStringField;
    SqlCdsRel02CEL_NOME: TStringField;
    SqlCdsRel02WREALIZADO: TFMTBCdField;
    SqlCdsRel02WFATURAMENTO: TFMTBCdField;
    SqlCdsRel02VCT_TUP: TFMTBCdField;
    SqlCdsRel02CME_TUPACRECENT: TFMTBCdField;
    SqlCdsRel02CME_TUPMETAMES: TFMTBCdField;
    SqlCdsRel02CME_TUPNEGATIVO: TFMTBCdField;
    SqlCdsRel02CME_PERCPATICIPA: TFMTBCdField;
    SqlCdsRel02CME_DIASUTEIS: TFMTBCdField;
    SqlCdsRel02CME_TOT_DIAS_COMP: TFMTBCdField;
    SqlCdsRel02MEC_TUPDIARIO: TFMTBCdField;
    SqlCdsRel02MEC_DIAS: TFMTBCdField;
    SqlCdsRel02CCP_CODIGO: TStringField;
    SqlCdsRel02CCP_NOME: TStringField;
    SqlCdsRel02CCP_FUNCAO: TStringField;
    SqlCdsRel02CCP_TUPDIARIO: TFloatField;
    SqlCdsRel02CTP_REALIZADO_CC: TCurrencyField;
    SqlCdsRel02CTP_FATURAMENTO_CC: TCurrencyField;
    SqlCdsRel02CTP_PREVISTO_CC: TCurrencyField;
    SqlCdsRel02CTP_DIFERENCA_CC: TCurrencyField;
    SqlCdsRel02CTP_COMISSAO_CC: TCurrencyField;
    SqlCdsRel02CTP_TUPDIA_CC: TCurrencyField;
    SqlCdsRel02CTP_PER_REALI_CC: TCurrencyField;
    SqlCdsRel02CTP_TUPFATUR_CC: TCurrencyField;
    ppDBRel02: TppDBPipeline;
    ppRel02: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine4: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_LTITULO1: TppLabel;
    LBL_01_LTITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine6: TppLine;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine7: TppLine;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine8: TppLine;
    ppLabel49: TppLabel;
    ppLine9: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel50: TppLabel;
    SqlCdsRel02COMISSAOGRUPO_CC: TCurrencyField;
    SqlCdsRel02COMISSAO_AUX_CC: TCurrencyField;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    SqlCdsRel02COMISSAO_INTEG_CC: TCurrencyField;
    ppDBText23: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    SqlCdsRel02TOTAL_COMISSAO_CC: TCurrencyField;
    SqlCdsRel03: TSQLClientDataSet;
    DsRel03: TDataSource;
    SqlCdsRel03OSV_CODIGO: TStringField;
    SqlCdsRel03CEL_CODIGO: TStringField;
    SqlCdsRel03CEL_NOME: TStringField;
    SqlCdsRel03PRD_REFER: TStringField;
    SqlCdsRel03PRD_DESCRI: TStringField;
    SqlCdsRel03CME_CODIGO: TStringField;
    SqlCdsRel03OSV_EMISSAO: TDateField;
    SqlCdsRel03OSV_QTDE: TFMTBCdField;
    SqlCdsRel03PED_CODIGO: TStringField;
    SqlCdsRel03CEM_DTENTROU: TDateField;
    SqlCdsRel03CEM_DTCONCLUIU: TDateField;
    SqlCdsRel03CEM_PRECOUNIT: TFMTBCdField;
    SqlCdsRel03CEM_TUPUNIT: TFMTBCdField;
    SqlCdsRel03CEM_CELAUX: TStringField;
    SqlCdsRel03CEM_TRABALHO: TStringField;
    SqlCdsRel03CEM_TUPTRAB: TFMTBCdField;
    SqlCdsRel03VCT_TUP: TFMTBCdField;
    SqlCdsRel03CEM_SITUACAO: TStringField;
    SqlCdsRel03CME_DIASUTEIS: TFMTBCdField;
    SqlCdsRel03CME_TUPMETAMES: TFMTBCdField;
    SqlCdsRel03CME_TUPACRECENT: TFMTBCdField;
    SqlCdsRel03CME_TUPNEGATIVO: TFMTBCdField;
    SqlCdsRel03CME_TUPREALIZADO: TFMTBCdField;
    SqlCdsRel03CME_FATURAMENTO: TFMTBCdField;
    SqlCdsRel03CME_PERCPATICIPA: TFMTBCdField;
    ppDBRel03: TppDBPipeline;
    ppReL03: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLine10: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine11: TppLine;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel51: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine12: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine13: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel55: TppLabel;
    ppDBText29: TppDBText;
    ppLabel56: TppLabel;
    ppDBText30: TppDBText;
    ppLabel57: TppLabel;
    ppDBText31: TppDBText;
    ppLabel59: TppLabel;
    ppDBText33: TppDBText;
    ppLabel60: TppLabel;
    ppDBText34: TppDBText;
    ppLabel61: TppLabel;
    ppDBText35: TppDBText;
    ppLabel62: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel63: TppLabel;
    ppLine15: TppLine;
    SqlCdsRel03TUPTOTAL_CC: TCurrencyField;
    SqlCdsRel03PRECOTOTAL_CC: TCurrencyField;
    ppLabel64: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel58: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBRel01: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand2: TppDetailBand;
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
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel21: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule1: TraCodeModule;
    SqlCdsRel01AG_TOTAL_REALIZADO: TAggregateField;
    SqlCdsRel01AG_TOTAL_FAT: TAggregateField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure Cb_Ano_InicialClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure EditDataIEnter(Sender: tObject);
    procedure EditDataFEnter(Sender: tObject);
    procedure LTBoxCelulasClick(Sender: tObject);
    procedure EdtCel_codigoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure LTBoxCelulasDblClick(Sender: tObject);
    procedure Cb_MesInicialClick(Sender: tObject);
    procedure EdtCel_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCel_codigoClick(Sender: tObject);
    procedure CbCelulasExit(Sender: tObject);
    procedure CbCelulasClick(Sender: tObject);
    procedure Cb_MesFinalClick(Sender: tObject);
    procedure SqlCdsRel01CalcFields(DataSet: TDataSet);
    procedure SqlCdsRel02CalcFields(DataSet: TDataSet);
    procedure SqlCdsRel03CalcFields(DataSet: TDataSet);
    procedure Cb_Ano_InicialKeyPress(Sender: tObject; var Key: Char);
    procedure ppDBCalc8Print(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
PathNewRel :STRING;
    DataI,DataF,wMesI,wMesF,
    wSql1,wSql2,wSql3,wSql4,wSql5,wSql6,wSql7,wSql8,
    wMes,wAno,wCME,wSeleciona :String;
    {campos}
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoData    :TJvDateEdit;
    procedure CriaRelPosDia;
    procedure CriaRelComiss;
    Procedure CriaRelMetas;
    Procedure CriaRelEntregas;
    Procedure CriaRelRecibo;

    procedure PreencheCombo;
    Procedure LayOutRelCelulas;
    procedure PegaMetas(MesInicio,MesFim,AnoInicio,AnoFim:String);
  public
    { Public declarations }
  end;

var
  FormGImpCel: TFormGImpCel;

implementation

uses Uteis, CEL0008, Osv0001, Men0001, DataCad, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFormGImpCel.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TCampoBox}
    if Assigned(CampoBox) then
       begin
          CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
          CampoBox := nil;
       end;
    {CampoEdit :TEdit}
    if Assigned(CampoEdit) then
       begin
          CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
          if TEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TEdit(ActiveControl).color := $0080FFFF;
          CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
          CampoEdit := nil;
       end;
    {CampoData  :TDateEdit}
    if Assigned(CampoData) then
       begin
           CampoData.color := clWindow;
       end;
    if ActiveControl is TjvDateEdit then
       begin
           TjvDateEdit(ActiveControl).color := $0080FFFF;
           CampoData := TjvDateEdit(ActiveControl);
       end
    else
       begin
           CampoData := nil;
       end;
end;

procedure TFormGImpCel.FormShow(Sender: tObject);
begin
    try
      {ativa o método ao evento OnActiveControlChange}
      Screen.OnActiveControlChange   := MudaCorCampos;
      {prenche ListBoxRel}
      screen.cursor := crHourglass;
      LTBoxCelulas.Items.Clear;
      LTBoxCelulas.Items.Add('Relatório Mensal das Metas de Produção');
      LTBoxCelulas.Items.Add('Relatório Mensal de Comissão Participativa');
      LTBoxCelulas.Items.Add('Relatório Analítico da Produção');
      LTBoxCelulas.Items.Add('Relatório da Situação das Entregas de Produção');
      LTBoxCelulas.Items.Add('Recibo de Pagamento das Entregas de Produção');
      LTBoxCelulas.ItemIndex := 0;  // seta no primeiro item }
      LayOutRelCelulas;
      FormGImpCel.AutoSize := True;
      PreencheCombo;
      screen.Cursor := Crdefault;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao carregar o relatório !'+e.message));
    end;
end;

procedure TFormGImpCel.LayOutRelCelulas;
begin
    // relatório mensal das metas de produção
    if LTBoxCelulas.ItemIndex = 0 then
       begin
           GroupPeriodo.Visible    := False;
           GroupData.Visible       := True;
           GroupData.Caption       := 'Concluídas em:';
           GroupData.Top           := 157;
           GroupData.Height        := 56;
           Lb_Inicio.Visible       := False;
           Lb_Fim.Visible          := False;
           Cb_Mesfinal.Visible     := False;
           Cb_Ano_Final.Visible    := False;
           GroupCelSelecao.Visible := True;
           Group06.Top             := 212;
       end;
    // relatório mensal de comissoes
    if LTBoxCelulas.ItemIndex = 1 then
       begin
           GroupPeriodo.Visible    := False;
           GroupData.Visible       := True;
           GroupData.Caption       := 'Concluídas em:';
           GroupData.Top           := 157;
           GroupData.Height        := 56;
           Lb_Inicio.Visible       := False;
           Lb_Fim.Visible          := False;
           // periodo final deve ser igual inicial
           Cb_Mesfinal.Text        := Cb_MesInicial.Text;
           Cb_Ano_Final.ItemIndex  := Cb_Ano_Inicial.ItemIndex;
           Cb_Mesfinal.Visible     := False;
           Cb_Ano_Final.Visible    := False;
           GroupCelSelecao.Visible := True;
           Group06.Top             := 212;
       end;
    // relatório analitico de producao por periodo (meses)
    if LTBoxCelulas.ItemIndex = 2 then
       begin
           GroupPeriodo.Visible    := False;
           GroupData.Visible       := True;
           GroupData.Caption       := 'Concluídas no Periodo:';
           GroupData.top           := 157;
           GroupData.Height        := 72;
           Lb_Inicio.Visible       := True;
           Lb_Fim.Visible          := True;
           Cb_Mesfinal.Visible     := True;
           Cb_Ano_Final.Visible    := True;
           GroupCelSelecao.Visible := True;
           Group06.Top             := 229;
       end;
    // relatório da situação da produção
    if LTBoxCelulas.ItemIndex = 3 then
       begin
           GroupPeriodo.Visible    := True;
           GroupPeriodo.Top        := 101;
           GroupPeriodo.Height     := 72;
           GroupData.Visible       := False;
           GroupCelSelecao.Visible := False;
           RadTodas.Visible        := True;
           RadConcluidas.Visible   := True;
           RadPendentes.Visible    := True;
           Lbl_De.Top              := 45;
           Lbl_Ate.Top             := 45;
           EditDataI.Top           := 41;
           EditDataF.Top           := 41;
           Group06.Top             := 172;
       end;
    // relatório Recibo de Produção
    if LTBoxCelulas.ItemIndex = 4 then
       begin
           GroupCelSelecao.Top     := 101;
           GroupCelSelecao.Visible := True;
           GroupPeriodo.Top        := 157;
           GroupPeriodo.Height     := 56;
           GroupPeriodo.Visible    := True;
           RadTodas.Visible        := False;
           RadConcluidas.Visible   := False;
           RadPendentes.Visible    := False;
           Lbl_De.Top              := 26;
           Lbl_Ate.Top             := 26;
           EditDataI.Top           := 23;
           EditDataF.Top           := 23;
           Group06.Top             := 212;
       end;
end;

procedure TFormGImpCel.LTBoxCelulasDblClick(Sender: tObject);
begin
    if (LTBoxCelulas.ItemIndex = 0) or (LTBoxCelulas.ItemIndex = 1) or (LTBoxCelulas.ItemIndex = 2) or (LTBoxCelulas.ItemIndex = 4) then
       begin
           EdtCel_codigo.SetFocus;
           EdtCel_Codigo.SelectAll;
       end;
    if (LTBoxCelulas.ItemIndex = 3) then
       begin
           EditDataI.SetFocus;
           EditDataI.SelectAll;
       end;
end;

procedure TFormGImpCel.LTBoxCelulasClick(Sender: tObject);
begin
    LayOutRelCelulas;
end;

procedure TFormGImpCel.BitOkClick(Sender: tObject);
begin
    FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
    DataI := DatetoStr(EditDataI.Date);
    DataF := DatetoStr(EditDataF.date);
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    if LTBoxCelulas.ItemIndex = 0 then //Relatorio Mensal das Metas de Producao
       CriaRelMetas;
    if LTBoxCelulas.ItemIndex = 1 then //Relatorio Mensal de Comissao Participativa
       CriaRelComiss;
    if LTBoxCelulas.ItemIndex = 2 then //Relatorio Analitico de Producao
       CriaRelPosDia;
    if LTBoxCelulas.ItemIndex = 3 then //
//       CriaRelEntregas;
    if LTBoxCelulas.ItemIndex = 4 then //
//       CriaRelRecibo;
end;
//
Procedure TFormGImpCel.CriaRelMetas;
begin
    if(Cb_MesInicial.Text = '')or(Cb_Ano_Inicial.Text = '')or(Cb_MesFinal.Text = '') or (Cb_Ano_Final.Text='')then
       begin
           uteis.aviso('Defina um período válido!');
           Cb_MesInicial.SetFocus;
           Exit;
       end;
    if StrToDate('01/'+wMesI+'/'+Cb_Ano_Inicial.Text)>StrToDate('01/'+wMesF+'/'+Cb_Ano_Final.Text)then
       begin
           uteis.aviso('Defina um período válido!');
           Cb_MesInicial.SetFocus;
           Exit;
       end;
    {Monta}
    wMes := wMesI;
    wAno := Cb_Ano_Inicial.Text;
    if (EdtCel_codigo.Text <> '999') then
       begin
           wCme := wAno+wMesI+EdtCel_codigo.Text;
           wSeleciona := ' WHERE C3.CME_CODIGO = '''+wCME+'''';
           LBL_00_LTITULO2.Caption := 'CÉLULA: '+EdtCel_codigo.Text+' - '+CbCelulas.Text;
       end
    else
       begin
           wCme := wAno+wMesI;
           wSeleciona := ' WHERE C3.CME_CODIGO LIKE '''+wCME+'%''';
           LBL_00_LTITULO2.Caption := 'CÉLULA: TODAS';
       end;
    try
{
      wSql1 := 'SELECT C3.cme_codigo,SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) AS WREALIZADO,SUM(C3.OSV_QTDE * C3.CEM_PRECOUNIT) AS WFATURAMENTO,C3.VCT_TUP,C3.CEL_CODIGO,C1.CEL_NOME,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,';
      wSql2 := 'C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP FROM CEL_MOV03 C3 JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO) JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) ';
      wSql3 := 'GROUP BY C3.CME_CODIGO,C3.VCT_TUP,C3.CEL_CODIGO,C1.CEL_NOME,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP ';
}
      wSQL1 := 'SELECT C3.CME_CODIGO,Cast(SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) AS Numeric(15,4)) AS WREALIZADO,Cast(SUM(C3.OSV_QTDE * C3.CEM_PRECOUNIT) AS Numeric(15,4)) AS WFATURAMENTO,C3.VCT_TUP,C3.CEL_CODIGO,C1.CEL_NOME,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,';
      wSQL2 := 'C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS, C2.CME_TOT_DIAS_COMP FROM CEL_MOV03 C3 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO)LEFT JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) ';
      wSQL3 := 'GROUP BY C3.CME_CODIGO,C3.VCT_TUP,C3.CEL_CODIGO,C1.CEL_NOME,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP ';
      //
      if share('ORDEMPRODUCAO') = 'E' then
         wSeleciona := wSeleciona + ' AND C3.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';

      SqlCdsRel01.Close;
      SqlCdsRel01.CommandText := wSql1+wSql2+wSeleciona+wSql3+' ORDER BY C3.CME_CODIGO';
      SqlCdsRel01.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
      LBL_00_LTITULO1.Caption := 'Relatório Mensal das Metas de Produção';
      LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' - MÊS: '+Cb_MesInicial.Text+' de '+Cb_Ano_Inicial.Text;
      if RadVideo.checked  then
         begin
             ppRel01.DeviceType := 'Screen';
         end;
      if RadImpressora.checked  then
         begin
            ppRel01.ShowPrintDialog := true;
            ppRel01.DeviceType      := 'Printer';
         end;

      RBuilderPreview(ppRel01);
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
    end;
end;
//
procedure TFormGImpCel.CriaRelComiss;
begin
    if(Cb_MesInicial.Text = '')or(Cb_Ano_Inicial.Text = '') then
       begin
           uteis.aviso('Defina um período valido!');
           Cb_MesInicial.SetFocus;
           Exit;
       end;
    {Monta}
    wMes := wMesI;
    wAno := Cb_Ano_Inicial.Text;
    if (EdtCel_codigo.Text <> '999') then
       begin
           wCme := wAno+wMesI+EdtCel_codigo.Text;
           wSeleciona := ' WHERE C3.CME_CODIGO = '''+wCME+'''';
           LBL_01_LTITULO2.Caption := 'CÉLULA: '+EdtCel_codigo.Text+' - '+CbCelulas.Text;
       end
    else
       begin
           wCme := wAno+wMesI;
           wSeleciona := ' WHERE C3.CME_CODIGO LIKE '''+wCME+'%''';
           LBL_01_LTITULO2.Caption := 'CÉLULA: TODAS';
       end;
    try
{
      wSql1 := 'SELECT C3.CME_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) AS WREALIZADO,SUM(C3.OSV_QTDE * C3.CEM_PRECOUNIT) AS WFATURAMENTO,';
      wSql2 := 'C3.VCT_TUP,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP,C4.MEC_TUPDIARIO,C4.MEC_DIAS,C4.CCP_CODIGO,';
      wSql3 := 'C5.CCP_NOME,C5.CCP_FUNCAO,C5.CCP_TUPDIARIO FROM CEL_MOV03 C3 JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO) AND (C3.EMP_CODIGO = C1.EMP_CODIGO) ';
      wSql4 := 'JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO) JOIN CEL_MTC04 C4 ON (C4.CME_CODIGO = C3.CME_CODIGO) AND (C3.EMP_CODIGO = C4.EMP_CODIGO) ';
      wSql5 := 'JOIN CEL_CP01 C5 ON (C5.CCP_CODIGO = C4.CCP_CODIGO) AND (C3.EMP_CODIGO = C5.EMP_CODIGO) ';
      wSql6 := 'GROUP BY C3.CME_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,C3.VCT_TUP,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP,C4.MEC_TUPDIARIO,';
      wSql7 := 'C4.MEC_DIAS,C4.CCP_CODIGO,C5.CCP_NOME,C5.CCP_FUNCAO,C5.CCP_TUPDIARIO ';
}
      wSQL1 := 'SELECT C3.CME_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,Cast(SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) as Numeric(15,4)) AS WREALIZADO,Cast(SUM(C3.OSV_QTDE * C3.CEM_PRECOUNIT) as Numeric(15,4)) AS WFATURAMENTO,';
      wSQL2 := 'C3.VCT_TUP,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP,C4.MEC_TUPDIARIO,C4.MEC_DIAS,C4.CCP_CODIGO,';
      wSQL3 := 'C5.CCP_NOME,C5.CCP_FUNCAO,C5.CCP_TUPDIARIO FROM CEL_MOV03 C3 LEFT JOIN CEL0000 C1 ON (C3.CEL_CODIGO = C1.CEL_CODIGO) AND (C3.EMP_CODIGO = C1.EMP_CODIGO) LEFT JOIN CEL_ME02 C2 ON (C3.CME_CODIGO = C2.CME_CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO) ';
      wSQL4 := 'LEFT JOIN CEL_MTC04 C4 ON (C3.CME_CODIGO = C4.CME_CODIGO) AND (C3.EMP_CODIGO = C4.EMP_CODIGO) LEFT JOIN CEL_CP01 C5 ON (C4.CCP_CODIGO = C5.CCP_CODIGO) AND (C3.EMP_CODIGO = C5.EMP_CODIGO) ';
      wSQL5 := 'GROUP BY C3.CME_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,C3.VCT_TUP,C2.CME_TUPACRECENT,C2.CME_TUPMETAMES,C2.CME_TUPNEGATIVO,C2.CME_PERCPATICIPA,C2.CME_DIASUTEIS,C2.CME_TOT_DIAS_COMP,C4.MEC_TUPDIARIO,C4.MEC_DIAS,C4.CCP_CODIGO,';
      wSQL6 := 'C5.CCP_NOME,C5.CCP_FUNCAO,C5.CCP_TUPDIARIO ';

      if share('ORDEMPRODUCAO') = 'E' then
         wSeleciona := wSeleciona + ' AND C3.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
      SqlCdsRel02.Close;
      SqlCdsRel02.CommandText := wSql1+wSql2+wSql3+wSql4+wSeleciona+wSql5+wSql6+' ORDER BY C3.CEL_CODIGO, C5.CCP_NOME';
      SqlCdsRel02.Open;
      LBL_01_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
      LBL_01_LTITULO1.Caption := 'Relatório Mensal de Comissão Participativa';
      LBL_01_LTITULO2.Caption := LBL_01_LTITULO2.Caption + ' - MÊS: '+Cb_MesInicial.Text+' de '+Cb_Ano_Inicial.Text;
      if RadVideo.checked  then
         begin
             ppRel02.DeviceType := 'Screen';
         end;
      if RadImpressora.checked  then
         begin
            ppRel02.ShowPrintDialog := true;
            ppRel02.DeviceType      := 'Printer';
         end;

      RBuilderPreview(ppRel02);
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
    end;
end;
//
procedure TFormGImpCel.CriaRelPosDia;
begin
    if(Cb_MesInicial.Text = '')or(Cb_Ano_Inicial.Text = '')or(Cb_MesFinal.Text = '')or(Cb_Ano_Final.Text = '') then
       begin
           uteis.aviso('Defina um período valido!');
           Cb_MesInicial.SetFocus;
           Exit;
       end;
    if StrToDate('01/'+wMesI+'/'+Cb_Ano_Inicial.Text)>StrToDate('01/'+wMesF+'/'+Cb_Ano_Final.Text)then
       begin
           uteis.aviso('Defina um período valido!');
           Cb_MesInicial.SetFocus;
           Exit;
       end;
    DataI := wMesI+'/01/'+Cb_Ano_Inicial.Text;
    {data final}
    if wMesF = '12'then
       DataF := DataAmericana(DateToStr(StrToDate('01/01/'+IntToStr(StrToInt(Cb_Ano_Final.Text)+1))-1))
    else
       DataF := DataAmericana(DateToStr(StrToDate('01/'+Justifica('e',IntToStr(StrToInt(wMesF)+1),2,'0')+'/'+Cb_Ano_Final.Text)-1));
    //
    wSeleciona := ' WHERE C3.CEM_DTCONCLUIU BETWEEN '''+DataI+''' AND '''+DataF+'''';
    if (EdtCel_codigo.Text <> '999') then
       begin
           wSeleciona := wSeleciona +' AND C3.CEL_CODIGO = '''+EdtCel_codigo.Text+'''';
       end;
    try
      wSql1 :='SELECT C3.OSV_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,C3.PRD_REFER,P1.PRD_DESCRI,C3.CME_CODIGO,C3.OSV_EMISSAO,C3.OSV_QTDE,C3.PED_CODIGO,C3.CEM_DTENTROU,C3.CEM_DTCONCLUIU,';
      wSql2 :='C3.CEM_PRECOUNIT,C3.CEM_TUPUNIT,C3.CEM_CELAUX,C3.CEM_TRABALHO,C3.CEM_TUPTRAB,C3.VCT_TUP,C3.CEM_SITUACAO,C2.CME_DIASUTEIS,C2.CME_TUPMETAMES,C2.CME_TUPACRECENT,';
      wSql3 :='C2.CME_TUPNEGATIVO,C2.CME_TUPREALIZADO,C2.CME_FATURAMENTO,C2.CME_PERCPATICIPA FROM CEL_MOV03 C3 ';
      wSql4 :='LEFT JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO) ';
      wSql5 :='LEFT JOIN PRD0000  P1 ON (P1.PRD_REFER = C3.PRD_REFER) ';
      SqlCdsRel03.Close;
      SqlCdsRel03.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4+wSql5,wSeleciona,'C3.CEL_CODIGO,C3.CEM_DTCONCLUIU','C3.');
      SqlCdsRel03.Open;
      LBL_03_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
      LBL_03_LTITULO1.Caption := 'Relatório Análitico de Produção';
      LBL_03_LTITULO2.Caption := 'PERÍODO : '+Cb_MesInicial.Text+' de '+Cb_Ano_Inicial.Text+' à '+Cb_MesFinal.Text+' de '+Cb_Ano_Final.Text;
      if RadVideo.checked  then
         begin
             ppRel03.DeviceType := 'Screen';
         end;
      if RadImpressora.checked  then
         begin
            ppRel03.ShowPrintDialog := true;
            ppRel03.DeviceType      := 'Printer';
         end;

      RBuilderPreview(ppRel03);
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
    end;
end;
//
Procedure TFormGImpCel.CriaRelEntregas;
begin
{
  Try

    RelCelEntrega := TRelCelEntrega.Create(Application);
    //
    RelCelEntrega.TQMovEntrega.DatabaseName := Preopen('Ordemproducao');
    RelCelEntrega.TQMovEntrega.SQL.Clear;
    RelCelEntrega.TQMovEntrega.SQL.Add('SELECT Cel_mov03.PRD_REFER, Cel_mov03.OSV_QTDE, Cel_mov03.OSV_QTDECONC, Cel_mov03.OSV_QTDEDEFE, Cel_mov03.OSV_VALORPECA, Cel_mov03.OSV_VALORDEFE, Cel_mov03.CEM_DTENTROU,'+
    'Cel_mov03.CEM_DTCONCLUIU, Cel_mov03.OSV_CODIGO, Osv0001.OSV_CODIGO, Cel_mov03.CEL_CODIGO, Osv0001.OSV_PRDDESCRI, Cel0000.CEL_CODIGO, Cel0000.CEL_NOME');
    RelCelEntrega.TQMovEntrega.SQL.Add('FROM CEL_MOV03 , CEL0000 , OSV0001');
    if RadTodas.checked  then
       begin
       RelCelEntrega.TQMovEntrega.SQL.Add('WHERE Cel0000.CEL_CODIGO=Cel_mov03.CEL_CODIGO AND Cel_mov03.OSV_CODIGO=Osv0001.OSV_CODIGO AND Cel_mov03.CEM_DTENTROU>=#'+DataI+'#AND Cel_mov03.CEM_DTENTROU<=#'+DataF+'#');
       RelCelEntrega.QRLabelTitu2.Caption:=EditDataI.Text+' a '+EditDataF.Text+' - Todas que entraram neste período'
       end;
    if RadConcluidas.checked  then
       begin
       RelCelEntrega.TQMovEntrega.SQL.Add('WHERE Cel0000.CEL_CODIGO=Cel_mov03.CEL_CODIGO AND Cel_mov03.OSV_CODIGO=Osv0001.OSV_CODIGO AND Cel_mov03.CEM_DTCONCLUIU>=#'+DataI+'#AND Cel_mov03.CEM_DTCONCLUIU<=#'+DataF+'#');
       RelCelEntrega.QRLabelTitu2.Caption:=EditDataI.Text+' a '+EditDataF.Text+' - Todas concluídas neste período'
       end;
    if RadPendentes.checked  then
       begin
       RelCelEntrega.TQMovEntrega.SQL.Add('WHERE Cel0000.CEL_CODIGO=Cel_mov03.CEL_CODIGO AND Cel_mov03.CEM_DTCONCLUIU IS NULL AND Cel_mov03.OSV_CODIGO=Osv0001.OSV_CODIGO AND Cel_mov03.CEM_DTENTROU>=#'+DataI+'#AND Cel_mov03.CEM_DTENTROU<=#'+DataF+'#');
       RelCelEntrega.QRLabelTitu2.Caption:=EditDataI.Text+' a '+EditDataF.Text+' - Todas que estão pendentes neste período'
       end;


    RelCelEntrega.TQMovEntrega.SQL.Add('ORDER BY Cel_mov03.CEL_CODIGO');
    RelCelEntrega.TQMovEntrega.Open;
    //
    if RadVideo.checked  then
       RelCelEntrega.Preview
    else
       RelCelEntrega.Print;
  Finally
      RelCelEntrega.TQMovEntrega.Close;
      RelCelEntrega.Destroy;
      RelCelEntrega := nil;
  End;
}  
end;
//
Procedure TFormGImpCel.CriaRelRecibo;
begin
{
    Try
      TQReciboProd.DatabaseName := Preopen('Ordemproducao');
      TQReciboProd.SQL.Clear;
      TQReciboProd.SQL.Add('SELECT Osv0001.OSV_CODIGO,Osv0001.OSV_PRDDESCRI,Cel0000.CEL_CODIGO,Cel0000.CEL_NOME,Cel0000.CEL_RAZAO,Cel0000.CEL_FONE1,Cel_mov04.OSV_CODIGO,Cel_mov04.CEL_CODIGO,Cel_mov04.CEM_DTPRODUZ,Cel_mov04.CEM_QTDE,'+
      'Cel_mov04.CEM_DEFEITO,Osv0001.PRD_REFER,Cel0000.CEL_CNPJ');
      TQReciboProd.SQL.Add('FROM CEL0000, CEL_MOV04, OSV0001');
      if (CbCelulas.Text = 'TODAS') then
         TQReciboProd.SQL.Add('WHERE Cel0000.CEL_CODIGO=Cel_mov04.CEL_CODIGO AND Cel_mov04.OSV_CODIGO = Osv0001.OSV_CODIGO AND Cel_mov04.CEM_DTPRODUZ>=#'+DataI+'#AND Cel_mov04.CEM_DTPRODUZ<=#'+DataF+'#')
      else
        TQReciboProd.SQL.Add('WHERE Cel0000.CEL_CODIGO=Cel_mov04.CEL_CODIGO AND Cel_mov04.OSV_CODIGO = Osv0001.OSV_CODIGO AND Cel0000.CEL_CODIGO='''+Copy(CbCelulas.Text,1,3)+'''AND Cel_mov04.CEM_DTPRODUZ>=#'+DataI+'#AND Cel_mov04.CEM_DTPRODUZ<=#'+DataF+'#');
      //
      TQReciboProd.SQL.Add('ORDER BY Cel0000.CEL_CODIGO,Cel_mov04.CEM_DTPRODUZ');
      TQReciboProd.Open;

      TQReciboMov.DatabaseName := Preopen('Ordemproducao');
      TQReciboMov.SQL.Clear;
      TQReciboMov.SQL.Add('SELECT * FROM CEL_MOV03 ORDER BY OSV_CODIGO,CEL_CODIGO');
      TQReciboMov.Open;
    except
       uteis.erro  ('Não foi possível abrir tabela para "TQReciboMov"');
    end;
    ImprimeCelRecibo;
}    
end;

procedure TFormGImpCel.PreencheCombo;
begin
    try
      {Preenche a combo da Celula}
      SqlCdsCelula.Close;
      SqlCdsCelula.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT C1.CEL_CODIGO,C1.CEL_NOME FROM CEL0000 C1 ','','C1.CEL_NOME','C1.');
      SqlCdsCelula.Open;
      SqlCdsCelula.First;
      CbCelulas.Items.Clear;
      CbCelulas.Items.Add('TODAS');
      while not SqlCdsCelula.Eof do
       begin
           CbCelulas.Items.Add(SqlCdsCelulaCEL_NOME.AsString);
           SqlCdsCelula.Next;
       end;
      CbCelulas.ItemIndex := 0;
      {Preenche as combos Mes_Inicial e Mes_Final}
      SqlCdsMes.Close;
      SqlCdsMes.CommandText := SQLDEF('TABELAS','Select M1.* from MES0000 M1 ','','M1.MES_NUMERO','M1.');
      SqlCdsMes.Open;
      SqlCdsMes.First;
      Cb_MesInicial.Items.Clear;
      Cb_MesFinal.Items.Clear;
      Cb_MesInicial.Items.Add('');
      Cb_MesFinal.Items.Add('');
      while not SqlCdsMes.Eof do
       begin
           Cb_MesInicial.Items.Add(SqlCdsMesMES_DESCRI.AsString);
           Cb_MesFinal.Items.Add(SqlCdsMesMES_DESCRI.AsString);
           SqlCdsMes.Next;
       end;
      Cb_MesInicial.ItemIndex;
      Cb_MesFinal.ItemIndex;
      {Preenche combo Ano Inicial}
      Cb_Ano_Inicial.Items.Clear;
      if Length(DateToStr(Date)) = 10 then
         begin
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))-2));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))-1));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+0));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+1));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+2));
         end
      else
         begin
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))-2));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))-1));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+0));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+1));
             Cb_Ano_Inicial.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+2));
         end;
      {Preenche combo Ano Final}
      Cb_Ano_Final.Items.Clear;
      if Length(DateToStr(Date)) = 10 then
         begin
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))-2));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))-1));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+0));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+1));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt(copy(DateToStr(Date),7,4))+2));
         end
      else
         begin
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))-2));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))-1));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+0));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+1));
             Cb_Ano_Final.Items.Add(IntToStr(StrToInt('20'+copy(DateToStr(Date),7,2))+2));
         end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao preencher as combos ! '+e.message));
      end;
end;

procedure TFormGImpCel.Cb_Ano_InicialClick(Sender: tObject);
begin
    Cb_Ano_Final.ItemIndex := Cb_Ano_Inicial.ItemIndex;
end;

procedure TFormGImpCel.BitCancelarClick(Sender: tObject);
begin
    close;
end;

procedure TFormGImpCel.BitConfigClick(Sender: tObject);
begin
    PrintStp.Execute;
end;

procedure TFormGImpCel.EditDataIEnter(Sender: tObject);
begin
    EditDataI.SelectAll;
end;

procedure TFormGImpCel.EditDataFEnter(Sender: tObject);
begin
    EditDataF.SelectAll;
end;

procedure TFormGImpCel.EdtCel_codigoExit(Sender: tObject);
begin
    EdtCel_codigo.Text := StrZero(EdtCel_Codigo.Text,EdtCel_codigo.MaxLength);
end;

procedure TFormGImpCel.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    CLOSE;
end;

procedure TFormGImpCel.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      Screen.Cursor := crHourGlass;
      SqlCdsCelula.close;
      SqlCdsMes.Close;
      Screen.Cursor := crDefault;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
end;

procedure TFormGImpCel.FormCreate(Sender: tObject);
begin
    PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGImpCel.Cb_MesInicialClick(Sender: tObject);
begin
    if (Cb_MesInicial.Text <> '') then
       begin
           if SqlCdsMes.Locate('MES_DESCRI',Cb_MesInicial.Text,[]) = true then
              begin
                  wMesI := SqlCdsMesMES_NUMERO.AsString;
                  wMesF := wMesI;
                 // if LTBoxCelulas.ItemIndex = 2 then
                     Cb_MesFinal.Text := Cb_MesInicial.Text;
              end
           else
              begin
                  wMesI := '';
                  wMesF := '';
              end;
       end;
end;


procedure TFormGImpCel.EdtCel_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if Key =#13 then
       begin
           if (EdtCel_Codigo.Text <> '999') then
              begin
                  if SqlCdsCelula.Locate('CEL_CODIGO',EdtCel_Codigo.Text,[]) = True then
                     begin
                         CbCelulas.Text := SqlCdsCelulaCEL_NOME.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Célula não encontrada !');
                         EdtCel_codigo.Text := '999';
                         EdtCel_codigo.SetFocus;
                         EdtCel_codigo.SelectAll;
                     end;
              end
           else
              begin
                  CbCelulas.Text := 'TODAS';
              end;
           Key := #0;
       end;
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGImpCel.EdtCel_codigoClick(Sender: tObject);
begin
    EdtCel_codigo.SelectAll;
end;

procedure TFormGImpCel.CbCelulasExit(Sender: tObject);
begin
    if (CbCelulas.Text <> 'TODAS') then
       begin
           if (SqlCdsCelula.Locate('CEL_NOME',CbCelulas.Text,[]) = true) then
              begin
                  EdtCel_codigo.Text := SqlCdsCelulaCEL_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Célula não encontrada !');
                  EdtCel_codigo.Text := '999';
                  CbCelulas.Text     := '';
                  CbCelulas.SetFocus;
                  CbCelulas.SelectAll;
              end;
       end
    else
       begin
           EdtCel_codigo.Text := '999';
       end;
end;

procedure TFormGImpCel.CbCelulasClick(Sender: tObject);
begin
    if (CbCelulas.Text <> 'TODAS') then
       begin
           if (SqlCdsCelula.Locate('CEL_NOME',CbCelulas.Text,[]) = true) then
              begin
                  EdtCel_codigo.Text := SqlCdsCelulaCEL_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Célula não encontrada !');
                  EdtCel_codigo.Text := '999';
                  CbCelulas.Text     := '';
                  CbCelulas.SetFocus;
                  CbCelulas.SelectAll;
              end;
       end
    else
       begin
           EdtCel_codigo.Text := '999';
       end;
end;

procedure TFormGImpCel.Cb_MesFinalClick(Sender: tObject);
begin
    if (Cb_MesFinal.Text <> '') then
       begin
           if SqlCdsMes.Locate('MES_DESCRI',Cb_MesFinal.Text,[]) = true then
              begin
                  wMesF := SqlCdsMesMES_NUMERO.AsString;
              end
           else
              begin
                  wMesF := '';
              end;
       end;
end;

procedure TFormGImpCel.SqlCdsRel01CalcFields(DataSet: TDataSet);
begin
    {Fazer os Calculos do Relatorio}
    SqlCdsRel01CTP_REALIZADO_CC.AsCurrency   := SqlCdsRel01WREALIZADO.AsCurrency;

    SqlCdsRel01CTP_FATURAMENTO_CC.AsCurrency := SqlCdsRel01WFATURAMENTO.AsCurrency;

    SqlCdsRel01CTP_REALIZADO_CC.AsCurrency   := (SqlCdsRel01CTP_REALIZADO_CC.AsCurrency + SqlCdsRel01CME_TUPACRECENT.AsCurrency);

    SqlCdsRel01CTP_PREVISTO_CC.AsCurrency    := (SqlCdsRel01CME_TUPMETAMES.AsCurrency + SqlCdsRel01CME_TUPNEGATIVO.AsCurrency);

    SqlCdsRel01CTP_DIFERENCA_CC.AsCurrency   := (SqlCdsRel01CTP_REALIZADO_CC.AsCurrency - SqlCdsRel01CTP_PREVISTO_CC.AsCurrency);

    SqlCdsRel01CTP_COMISSAO_CC.AsCurrency    := ((SqlCdsRel01CTP_DIFERENCA_CC.AsCurrency * SqlCdsRel01CME_PERCPATICIPA.AsCurrency)/100)*SqlCdsRel01VCT_TUP.AsCurrency;

    if SqlCdsRel01CTP_COMISSAO_CC.AsCurrency < 0 then
       SqlCdsRel01CTP_COMISSAO_CC.AsCurrency := 0;
    if (SqlCdsRel01CTP_PREVISTO_CC.AsCurrency > 0) and (SqlCdsRel01CME_DIASUTEIS.AsCurrency > 0) then
       SqlCdsRel01CTP_TUPDIA_CC.AsCurrency   := (SqlCdsRel01CTP_PREVISTO_CC.AsCurrency/SqlCdsRel01CME_DIASUTEIS.AsCurrency);
    if (SqlCdsRel01CTP_REALIZADO_CC.AsCurrency > 0) and (SqlCdsRel01CTP_PREVISTO_CC.AsCurrency > 0) then
       SqlCdsRel01CTP_PER_REALI_CC.AsCurrency   := (SqlCdsRel01CTP_REALIZADO_CC.AsCurrency/SqlCdsRel01CTP_PREVISTO_CC.AsCurrency)*100;
    if (SqlCdsRel01CTP_FATURAMENTO_CC.AsCurrency > 0) and (SqlCdsRel01CTP_REALIZADO_CC.AsCurrency > 0) then
       SqlCdsRel01CTP_TUPFATUR_CC.AsCurrency    := (SqlCdsRel01CTP_FATURAMENTO_CC.AsCurrency / SqlCdsRel01CTP_REALIZADO_CC.AsCurrency);
end;

procedure TFormGImpCel.PegaMetas(MesInicio, MesFim, AnoInicio,AnoFim: String);
{Calcular e gravar dados de comissoes e suas metas }
var wMes,wAno, wCME:String;
begin
{
wMes := DbLk_MesInicial.keyValue;
wAno := Cb_Ano_Inicial.Text;
DataModulo.TbCelula.IndexName := 'XCEL_CODI';
DataModulo.TbMetas.IndexName := 'XCME_CODI';
FormMovCelulas.TbMov.IndexName := 'XCME_CODIGO';
{limpando FormMovCelulas.TbTemp
FormMovCelulas.TbTemp.First;
While not FormMovCelulas.TbTemp.IsEmpty do
  FormMovCelulas.TbTemp.Delete;
//
{Calcula e grava p/ todas a celulas juntas
if Cb_Celulas.Text = 'TODAS'then
   begin
   Screen.Cursor := crHourGlass;
   while StrToDate('01/'+wMes+'/'+wAno) <= StrToDate('01/'+DbLk_MesFinal.KeyValue+'/'+Cb_Ano_Final.Text)do
     begin
     DataModulo.TbCelula.first;
     wCME := wAno+wMes+DataModulo.TbCelulaCEL_CODIGO.Value;
     While not DataModulo.TbCelula.Eof do
       begin
       if FormMovCelulas.TbMov.FindKey([wCME]) then
          begin
          FormMovCelulas.TbTemp.Insert;
          FormMovCelulas.TbTempCME_CODIGO.Value := wCME;
          FormMovCelulas.TbTempCEL_CODIGO.Value := DataModulo.TbCelulaCEL_CODIGO.Value;
          FormMovCelulas.TbTempCEL_NOME.Value   := DataModulo.TbCelulaCEL_NOME.Value;
          while (FormMovCelulas.TbMovCME_CODIGO.Value = wCME)and not(FormMovCelulas.TbMov.Eof)do
            begin
            {TUP Realizado
            FormMovCelulas.TbTempCTP_REALIZADO.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value+(FormMovCelulas.TbMovOSV_QTDE.Value*FormMovCelulas.TbMovCEM_TUPTRAB.Value);
            {Faturamento
            FormMovCelulas.TbTempCTP_FATURAMENTO.Value := FormMovCelulas.TbTempCTP_FATURAMENTO.Value+(FormMovCelulas.TbMovOSV_QTDE.Value*FormMovCelulas.TbMovCEM_PRECOUNIT.Value);
            FormMovCelulas.TbMov.Next;
            end;
          if DataModulo.TbMetas.FindKey([wCME])then
             begin
             {realizado + Acrecentado
             FormMovCelulas.TbTempCTP_REALIZADO.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value + DataModulo.TbMetasCME_TUPACRECENT.Value;
             {TUP Previsto
             FormMovCelulas.TbTempCTP_PREVISTO.Value := DataModulo.TbMetasCME_TUPMETAMES.Value+DataModulo.TbMetasCME_TUPNEGATIVO.Value;
             {Diferença
             FormMovCelulas.TbTempCTP_DIFERENCA.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value-FormMovCelulas.TbTempCTP_PREVISTO.Value;
             {comissão
             FormMovCelulas.TbTempCTP_COMISSAO.Value := FormMovCelulas.TbTempCTP_DIFERENCA.Value*DataModulo.TbMetasCME_PERCPATICIPA.Value/100*FormMovCelulas.TbMovVCT_TUP.Value;
             if FormMovCelulas.TbTempCTP_COMISSAO.Value < 0 then
                FormMovCelulas.TbTempCTP_COMISSAO.Value := 0;
             {% realizado
             FormMovCelulas.TbTempCTP_PERC_REALI.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value/FormMovCelulas.TbTempCTP_PREVISTO.Value*100;
             {TUP Faturamento
             FormMovCelulas.TbTempCTP_TUPFATUR.Value := FormMovCelulas.TbTempCTP_FATURAMENTO.Value/FormMovCelulas.TbTempCTP_REALIZADO.Value;
             {TUP dia
             FormMovCelulas.TbTempCTP_TUPDIA.Value := FormMovCelulas.TbTempCTP_PREVISTO.Value/DataModulo.TbMetasCME_DIASUTEIS.Value;
             {Dias Uteis
             FormMovCelulas.TbTempCTP_DIASUTEIS.Value := DataModulo.TbMetasCME_DIASUTEIS.Value;
             {Total dos dias dos Integrantes
             FormMovCelulas.TbTempCME_TOT_DIAS_COMP.Value := DataModulo.TbMetasCME_TOT_DIAS_COMP.Value;
             end;
          FormMovCelulas.TbTemp.Post;
          end;
       DataModulo.TbCelula.Next;
       wCME := wAno+wMes+DataModulo.TbCelulaCEL_CODIGO.Value;
       end;
     {incrementa data Inicial
     if wMes='12'then
       begin
       wMes:='01';
       wAno:=IntToStr(StrToInt(wAno)+1);
       end
     else
       begin
       wMes:=Justifica('e',IntToStr(StrToInt(wMes)+1),2,'0');
       end;
     end;
   Screen.Cursor := crDefault;
   end
else
   begin
   {calcula e grava somente uma célula
   Screen.Cursor := crHourGlass;
   while StrToDate('01/'+wMes+'/'+wAno) <= StrToDate('01/'+DbLk_MesFinal.KeyValue+'/'+Cb_Ano_Final.Text)do
     begin
     if DataModulo.TbCelula.FindKey([Copy(Cb_Celulas.Text,1,3)])then
        begin
        wCME := wAno+wMes+DataModulo.TbCelulaCEL_CODIGO.Value;
        if FormMovCelulas.TbMov.FindKey([wCME]) then
           begin
           FormMovCelulas.TbTemp.Insert;
           FormMovCelulas.TbTempCME_CODIGO.Value := wCME;
           FormMovCelulas.TbTempCEL_CODIGO.Value := DataModulo.TbCelulaCEL_CODIGO.Value;
           FormMovCelulas.TbTempCEL_NOME.Value   := DataModulo.TbCelulaCEL_NOME.Value;
           while (FormMovCelulas.TbMovCME_CODIGO.Value = wCME)and not(FormMovCelulas.TbMov.Eof)do
             begin
             {TUP Realizado
             FormMovCelulas.TbTempCTP_REALIZADO.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value+(FormMovCelulas.TbMovOSV_QTDE.Value*FormMovCelulas.TbMovCEM_TUPTRAB.Value);
             {Faturamento
             FormMovCelulas.TbTempCTP_FATURAMENTO.Value := FormMovCelulas.TbTempCTP_FATURAMENTO.Value+(FormMovCelulas.TbMovOSV_QTDE.Value*FormMovCelulas.TbMovCEM_PRECOUNIT.Value);
             FormMovCelulas.TbMov.Next;
             end;
           if DataModulo.TbMetas.FindKey([wCME])then
              begin
              {realizado + Acrecentado
              FormMovCelulas.TbTempCTP_REALIZADO.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value + DataModulo.TbMetasCME_TUPACRECENT.Value;
              {TUP Previsto
              FormMovCelulas.TbTempCTP_PREVISTO.Value := DataModulo.TbMetasCME_TUPMETAMES.Value+DataModulo.TbMetasCME_TUPNEGATIVO.Value;
              {Diferença
              FormMovCelulas.TbTempCTP_DIFERENCA.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value-FormMovCelulas.TbTempCTP_PREVISTO.Value;
              {comissão
              FormMovCelulas.TbTempCTP_COMISSAO.Value := FormMovCelulas.TbTempCTP_DIFERENCA.Value*DataModulo.TbMetasCME_PERCPATICIPA.Value/100*FormMovCelulas.TbMovVCT_TUP.Value;
              if FormMovCelulas.TbTempCTP_COMISSAO.Value < 0 then
                 FormMovCelulas.TbTempCTP_COMISSAO.Value := 0;
              {% realizado
              FormMovCelulas.TbTempCTP_PERC_REALI.Value := FormMovCelulas.TbTempCTP_REALIZADO.Value/FormMovCelulas.TbTempCTP_PREVISTO.Value*100;
              {TUP Faturamento
              FormMovCelulas.TbTempCTP_TUPFATUR.Value := FormMovCelulas.TbTempCTP_FATURAMENTO.Value/FormMovCelulas.TbTempCTP_REALIZADO.Value;
              {TUP dia
              FormMovCelulas.TbTempCTP_TUPDIA.Value := FormMovCelulas.TbTempCTP_PREVISTO.Value/DataModulo.TbMetasCME_DIASUTEIS.Value;
              {Dias Uteis
              FormMovCelulas.TbTempCTP_DIASUTEIS.Value := DataModulo.TbMetasCME_DIASUTEIS.Value;
              {total dos dias de Todos os Integrantes Juntos
              FormMovCelulas.TbTempCME_TOT_DIAS_COMP.Value := DataModulo.TbMetasCME_TOT_DIAS_COMP.Value;
              end;
           FormMovCelulas.TbTemp.Post;
           end;
        end;
     {incrementa data Inicial
     if wMes='12'then
        begin
        wMes:='01';
        wAno:=IntToStr(StrToInt(wAno)+1);
        end
     else
        begin
        wMes:=Justifica('e',IntToStr(StrToInt(wMes)+1),2,'0');
        end;
     end;
   Screen.Cursor := crDefault;
   end;
}
end;

procedure TFormGImpCel.SqlCdsRel02CalcFields(DataSet: TDataSet);
begin
    {Fazer os Calculos do Relatorio}
    SqlCdsRel02CTP_REALIZADO_CC.AsCurrency   := SqlCdsRel02WREALIZADO.AsCurrency;
    SqlCdsRel02CTP_FATURAMENTO_CC.AsCurrency := SqlCdsRel02WFATURAMENTO.AsCurrency;
    SqlCdsRel02CTP_REALIZADO_CC.AsCurrency   := (SqlCdsRel02CTP_REALIZADO_CC.AsCurrency + SqlCdsRel02CME_TUPACRECENT.AsCurrency);
    SqlCdsRel02CTP_PREVISTO_CC.AsCurrency    := (SqlCdsRel02CME_TUPMETAMES.AsCurrency + SqlCdsRel02CME_TUPNEGATIVO.AsCurrency);
    SqlCdsRel02CTP_DIFERENCA_CC.AsCurrency   := (SqlCdsRel02CTP_REALIZADO_CC.AsCurrency - SqlCdsRel02CTP_PREVISTO_CC.AsCurrency);

    SqlCdsRel02CTP_COMISSAO_CC.AsCurrency    := ((SqlCdsRel02CTP_DIFERENCA_CC.AsCurrency * SqlCdsRel02CME_PERCPATICIPA.AsCurrency)/100)*SqlCdsRel02VCT_TUP.AsCurrency;
    if (SqlCdsRel02CTP_PREVISTO_CC.AsCurrency > 0) and (SqlCdsRel02CME_DIASUTEIS.AsCurrency > 0) then
       SqlCdsRel02CTP_TUPDIA_CC.AsCurrency      := (SqlCdsRel02CTP_PREVISTO_CC.AsCurrency/SqlCdsRel02CME_DIASUTEIS.AsCurrency);
    if (SqlCdsRel02CTP_REALIZADO_CC.AsCurrency > 0) and (SqlCdsRel02CTP_PREVISTO_CC.AsCurrency > 0) then
       SqlCdsRel02CTP_PER_REALI_CC.AsCurrency   := (SqlCdsRel02CTP_REALIZADO_CC.AsCurrency/SqlCdsRel02CTP_PREVISTO_CC.AsCurrency)*100;
    if (SqlCdsRel02CTP_FATURAMENTO_CC.AsCurrency > 0) and (SqlCdsRel02CTP_REALIZADO_CC.AsCurrency > 0) then
       SqlCdsRel02CTP_TUPFATUR_CC.AsCurrency    := (SqlCdsRel02CTP_FATURAMENTO_CC.AsCurrency / SqlCdsRel02CTP_REALIZADO_CC.AsCurrency);
    if SqlCdsRel02CTP_COMISSAO_CC.AsCurrency < 0 then
       SqlCdsRel02CTP_COMISSAO_CC.AsCurrency := 0;
    SqlCdsRel02COMISSAOGRUPO_CC.AsCurrency   := (SqlCdsRel02CTP_COMISSAO_CC.AsCurrency*80)/100;
    SqlCdsRel02COMISSAO_AUX_CC.AsCurrency    := (SqlCdsRel02CTP_COMISSAO_CC.AsCurrency*20)/100;
    //
    if (SqlCdsRel02COMISSAOGRUPO_CC.AsCurrency > 0) and (SqlCdsRel02CME_TOT_DIAS_COMP.AsCurrency >0) then
       SqlCdsRel02COMISSAO_INTEG_CC.AsCurrency  := (SqlCdsRel02COMISSAOGRUPO_CC.AsCurrency/SqlCdsRel02CME_TOT_DIAS_COMP.AsCurrency)*SqlCdsRel02MEC_DIAS.AsCurrency;
    if (SqlCdsRel02COMISSAO_AUX_CC.AsCurrency > 0) and (SqlCdsRel02CME_TOT_DIAS_COMP.AsCurrency > 0) then
    SqlCdsRel02TOTAL_COMISSAO_CC.AsCurrency  := (SqlCdsRel02COMISSAO_AUX_CC.AsCurrency/SqlCdsRel02CME_TOT_DIAS_COMP.AsCurrency)*SqlCdsRel02MEC_DIAS.AsCurrency;
end;

procedure TFormGImpCel.SqlCdsRel03CalcFields(DataSet: TDataSet);
begin
    SqlCdsRel03TUPTOTAL_CC.AsCurrency   := (SqlCdsRel03OSV_QTDE.AsCurrency * SqlCdsRel03CEM_TUPTRAB.AsCurrency);
    SqlCdsRel03PRECOTOTAL_CC.AsCurrency := (SqlCdsRel03CEM_PRECOUNIT.AsCurrency * SqlCdsRel03OSV_QTDE.AsCurrency);
end;

procedure TFormGImpCel.Cb_Ano_InicialKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
           //beep;
           Key := #0;
       end;
end;

procedure TFormGImpCel.ppDBCalc8Print(Sender: tObject);
begin
   ppdbcalc8.Value := (SqlCdsRel01AG_TOTAL_FAT.value / SqlCdsRel01AG_TOTAL_REALIZADO.value);
end;

end.

