unit GimpManutMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,Forms,
  Dialogs, StdCtrls, Buttons, Mask,  rxToolEdit, RwFunc, DB, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, MIDASLIB, ComCtrls, ExtCtrls, ppParameter, ppTxPipe,
  Data.DBXFirebird, ppDesignLayer, SimpleDS;

type
  TFormGimpManutMov = class(TForm)
    Group00: TGroupBox;
    LTBoxProdu: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Group02: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditDataI: TDateEdit;
    EditDataF: TDateEdit;
    Group03: TGroupBox;
    RadTodas: TRadioButton;
    RadSoSaidas: TRadioButton;
    RadSoEntradas: TRadioButton;
    Group04: TGroupBox;
    Label1: TLabel;
    CbxTipoMov: TComboBox;
    Label2: TLabel;
    CbxGrupoMov: TComboBox;
    Group06: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SqlCdsTipoMov: TSQLClientDataSet;
    SqlCdsTipoMovPTI_CODIGO: TStringField;
    SqlCdsTipoMovPTI_DESCRI: TStringField;
    SqlCdsTipoMovEMP_CODIGO: TStringField;
    SqlCdsGrupoMovi: TSQLClientDataSet;
    SqlCdsRelManutMov: TSQLClientDataSet;
    DsManutMov: TDataSource;
    ppRelManutMov00: TppReport;
    SqlCdsGrupoMoviPGR_CODIGO: TStringField;
    SqlCdsGrupoMoviPGR_DESCRI: TStringField;
    SqlCdsGrupoMoviPGR_COMISS: TStringField;
    SqlCdsGrupoMoviPGR_COM_PERC: TFMTBCdField;
    SqlCdsGrupoMoviEMP_CODIGO: TStringField;
    SqlCdsProduMov: TSQLClientDataSet;
    SqlCdsProduMovPRD_DESCRI: TStringField;
    SqlCdsProduMovEMP_CODIGO: TStringField;
    Group01: TGroupBox;
    RadInd: TRadioButton;
    RadGlobal: TRadioButton;
    SqlCdsRelManutMovPTI_CODIGO: TStringField;
    SqlCdsRelManutMovPTI_DESCRI: TStringField;
    SqlCdsRelManutMovPGR_DESCRI: TStringField;
    SqlCdsRelManutMovPGR_CODIGO: TStringField;
    SqlCdsRelManutMovPRD_REFER: TStringField;
    SqlCdsRelManutMovPRD_UND: TStringField;
    SqlCdsRelManutMovPES_DATA: TSQLTimeStampField;
    SqlCdsRelManutMovPES_QTDE: TFMTBCdField;
    SqlCdsRelManutMovPES_VALOR: TFMTBCdField;
    SqlCdsRelManutMovPES_TIPDOC: TStringField;
    SqlCdsRelManutMovPES_NUMDOC: TStringField;
    SqlCdsRelManutMovPES_TIPO: TStringField;
    SqlCdsRelManutMovEMP_CODIGO: TStringField;
    SqlCdsRelManutMovPES_ENTRADA_CC: TCurrencyField;
    SqlCdsRelManutMovPES_SAIDA_CC: TCurrencyField;
    ppDBManutMov: TppDBPipeline;
    ppRelManutMovIND: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine7: TppLine;
    LBL_01_EMPRESA: TppLabel;
    LBL_01_TITULO1: TppLabel;
    LBL_01_TITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine12: TppLine;
    ppLabel20: TppLabel;
    ppLabel19: TppLabel;
    ppLabel18: TppLabel;
    ppLine11: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBTextProduto: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine8: TppLine;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    SqlCdsProduMovPRD_REFER: TStringField;
    Group07: TGroupBox;
    Label6: TLabel;
    CbxAlmox: TComboBox;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsRelManutMovAMX_CODIGO: TStringField;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_TITULO1: TppLabel;
    LBL_00_TITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    pp00DetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    pp00SummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine22: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalcEntrada: TppDBCalc;
    ppDBCalcSaida: TppDBCalc;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    LBL_00_TITULO3: TppLabel;
    LBL_01_TITULO3: TppLabel;
    raCodeModule2: TraCodeModule;
    SqlCdsKardexSAlmox: TSQLClientDataSet;
    CdsKardex: TClientDataSet;
    CdsKardexAMX_CODIGO: TStringField;
    CdsKardexAMX_DESCRI: TStringField;
    CdsKardexPRD_REFER: TStringField;
    CdsKardexPRD_UND: TStringField;
    CdsKardexPRD_ENTRADA: TCurrencyField;
    CdsKardexPRD_SAIDA: TCurrencyField;
    CdsKardexPRD_ESTOQUE: TCurrencyField;
    DsKardex: TDataSource;
    ppRelKardex: TppReport;
    ppLabel32: TppLabel;
    ppDBText28: TppDBText;
    ppDBText31: TppDBText;
    SqlCdsKardexCAlmox: TSQLClientDataSet;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    Edt_Almox: TEdit;
    Edt_Tipo: TEdit;
    Edt_Grupo: TEdit;
    CdsKardexPRD_PMEDIO: TCurrencyField;
    CdsKardexTOTEST_CC: TCurrencyField;
    CdsKardexPRD_PMEDIOIPI: TCurrencyField;
    CdsKardexTOTPMEDIO_CC: TCurrencyField;
    ppDBKardex: TppDBPipeline;
    CdsKardexPRD_SALDO: TCurrencyField;
    SqlCdsSaldoCAlmox: TSQLClientDataSet;
    SqlCdsSaldoSAlmox: TSQLClientDataSet;
    Group05: TGroupBox;
    RadTodos: TRadioButton;
    RadPositivo: TRadioButton;
    RadNegativo: TRadioButton;
    SqlCdsEstoque: TSQLClientDataSet;
    SqlCdsKardexCAlmoxPRD_REFER: TStringField;
    SqlCdsKardexCAlmoxPRD_PMEDIO: TFMTBCdField;
    SqlCdsKardexCAlmoxPES_TIPO: TStringField;
    SqlCdsKardexCAlmoxAMX_CODIGO: TStringField;
    SqlCdsKardexCAlmoxPRD_UND: TStringField;
    SqlCdsKardexCAlmoxWQTDE: TFMTBCdField;
    Pan_Bar: TPanel;
    ProgressBar1: TProgressBar;
    SqlCdsSaldoCAlmoxPRD_REFER: TStringField;
    SqlCdsSaldoCAlmoxAMX_CODIGO: TStringField;
    SqlCdsSaldoCAlmoxPES_TIPO: TStringField;
    SqlCdsSaldoCAlmoxWQTDE: TFMTBCdField;
    SqlCdsSaldoSAlmoxPRD_REFER: TStringField;
    SqlCdsSaldoSAlmoxPES_TIPO: TStringField;
    SqlCdsSaldoSAlmoxWQTDE: TFMTBCdField;
    CdsKardexPRD_DESCRI: TStringField;
    ppDBKardexppField2: TppField;
    SqlCdsRelManutMovPRD_DESCRI: TStringField;
    SqlCdsRelManutMovAMX_DESCRI: TStringField;
    SqlCdsKardexCAlmoxPRD_DESCRI: TStringField;
    SqlCdsKardexCAlmoxAMX_DESCRI: TStringField;
    SqlCdsSaldoCAlmoxAMX_DESCRI: TStringField;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLine6: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine9: TppLine;
    ppLineGrupo00: TppLine;
    ppLblRef: TppLabel;
    ppLblDescri: TppLabel;
    LBL_02_LTITULO3: TppLabel;
    ppLblUnd: TppLabel;
    ppLblEntrada: TppLabel;
    ppLblSaida: TppLabel;
    ppLblEstoque: TppLabel;
    ppLblTotal: TppLabel;
    ppLabel36: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBPMEDIOIPI: TppDBText;
    ppDBText23: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalcTotal: TppDBCalc;
    ppLblTotal2: TppLabel;
    ppLine10: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderGrupo: TppGroupHeaderBand;
    ppLabel14: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLineGrupo01: TppLine;
    ppLineGrupo02: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppGroupFooterGrupo: TppGroupFooterBand;
    ppLineGrupo03: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLabel35: TppLabel;
    raCodeModule3: TraCodeModule;
    ppDBText33: TppDBText;
    SqlCdsSaldoSAlmoxPES_TIPDOC: TStringField;
    SqlCdsKardexCAlmoxPES_TIPDOC: TStringField;
    SqlCdsKardexCAlmoxPES_DATA: TSQLTimeStampField;
    SqlCdsEstoquePRD_REFER: TStringField;
    SqlCdsEstoquePRD_DESCRI: TStringField;
    SqlCdsEstoquePRD_UND: TStringField;
    SqlCdsEstoquePRD_PMEDIO: TFMTBCdField;
    SqlCdsEstoqueWSALDO: TFMTBCdField;
    EdtPrd_Refer: TEdit;
    labelrefer: TLabel;
    SqlCdsRelConsmCusto: TSQLClientDataSet;
    DsConsmCusto: TDataSource;
    ppRelConsmCusto: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine3: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    TITULO2: TppLabel;
    ppLine13: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    TITULO3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel41: TppLabel;
    ppDBText43: TppDBText;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine14: TppLine;
    ppDBText44: TppDBText;
    ppLine15: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine16: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine17: TppLine;
    ppLabel51: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine19: TppLine;
    ppLabel52: TppLabel;
    ppLine23: TppLine;
    ppDBConsmCusto: TppDBPipeline;
    ppParameterList2: TppParameterList;
    ppLabel49: TppLabel;
    ppDBText38: TppDBText;
    SqlCdsRelConsmCustoPTI_CODIGO: TStringField;
    SqlCdsRelConsmCustoPTI_DESCRI: TStringField;
    SqlCdsRelConsmCustoPGR_DESCRI: TStringField;
    SqlCdsRelConsmCustoPGR_CODIGO: TStringField;
    SqlCdsRelConsmCustoPRD_REFER: TStringField;
    SqlCdsRelConsmCustoPRD_DESCRI: TStringField;
    SqlCdsRelConsmCustoPRD_PMEDIO: TFMTBCdField;
    SqlCdsRelConsmCustoPRD_UND: TStringField;
    SqlCdsRelConsmCustoEMP_CODIGO: TStringField;
    SqlCdsRelConsmCustoPES_DATA: TSQLTimeStampField;
    SqlCdsRelConsmCustoPES_QTDE: TFMTBCdField;
    SqlCdsRelConsmCustoPES_VALOR: TFMTBCdField;
    SqlCdsRelConsmCustoPES_TIPDOC: TStringField;
    SqlCdsRelConsmCustoPES_NUMDOC: TStringField;
    SqlCdsRelConsmCustoAMX_CODIGO: TStringField;
    SqlCdsRelConsmCustoAMX_DESCRI: TStringField;
    SqlCdsRelConsmCustoPES_TIPO: TStringField;
    SqlCdsRelConsmCustoPES_ENTRADA_CC: TCurrencyField;
    SqlCdsRelConsmCustoPES_SAIDA_CC: TCurrencyField;
    SqlCdsRelConsmCustoPES_TOTACMEDIO_CC: TCurrencyField;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    SqlCdsEstoqueIPI_CODIGO: TStringField;
    SqlCdsEstoqueNCM_TEMCREDITO: TStringField;
    ppRelKardexNCM: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine24: TppLine;
    LBL_02_EMPRESANCM: TppLabel;
    LBL_02_LTITULO1NCM: TppLabel;
    LBL_02_LTITULO2NCM: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel50: TppLabel;
    LBL_02_LTITULO3NCM: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText54: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc12: TppDBCalc;
    ppLabel61: TppLabel;
    ppLine27: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine30: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLabel72: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList3: TppParameterList;
    ppDBKardexppField4: TppField;
    CdsKardexPRD_PCUSTO: TCurrencyField;
    CdsKardexIPI_CODIGO: TStringField;
    CdsKardexTOTPCUSTO_CC: TCurrencyField;
    ppLabel56: TppLabel;
    ppLabel60: TppLabel;
    ppDBText48: TppDBText;
    ppDBKardexppField14: TppField;
    ppDBKardexppField15: TppField;
    ppDBText53: TppDBText;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine31: TppLine;
    ppDBText47: TppDBText;
    procedure FormShow(Sender: tObject);
    procedure CbxTipoMovClick(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitConfigClick(Sender: tObject);
    procedure RadIndClick(Sender: tObject);
    procedure RadGlobalClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure RadTodasClick(Sender: tObject);
    procedure RadSoEntradasClick(Sender: tObject);
    procedure RadSoSaidasClick(Sender: tObject);
    procedure CbxGrupoMovClick(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure EditDataIEnter(Sender: tObject);
    procedure EditDataFEnter(Sender: tObject);
    procedure SqlCdsRelManutMovCalcFields(DataSet: TDataSet);
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
    procedure CbxAlmoxClick(Sender: tObject);
    procedure LTBoxProduClick(Sender: tObject);
    procedure SqlCdsKardexSAlmoxCalcFields(DataSet: TDataSet);
    procedure SqlCdsKardexCAlmoxCalcFields(DataSet: TDataSet);
    procedure Edt_AlmoxEnter(Sender: tObject);
    procedure Edt_AlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_AlmoxExit(Sender: tObject);
    procedure Edt_TipoExit(Sender: tObject);
    procedure Edt_GrupoExit(Sender: tObject);
    procedure CdsKardexCalcFields(DataSet: TDataSet);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure SqlCdsRelConsmCustoCalcFields(DataSet: TDataSet);
  private
    {campos}
    CampoBox   : TComboBox;
    CampoData  : TDateEdit;
    CampoEdit  : TEdit;
    { Private declarations }
    wSeleciona,
    wSeleciona2,
    wOrdem,
    wOrdem2,
    wRefer,
    wMovimento,
    wAlmoxarifado : String;
    wCodTipo   : String[3];
    wPMedio,
    wPMedioIPI,
    wSaldo     : Double;
    procedure LayOutSelecao;
    procedure LayOutRelatorio;
    procedure Busca_kardex_Inventario(pRefer:String);
  public
    { Public declarations }
  end;

var
  FormGimpManutMov: TFormGimpManutMov;

implementation

{$R *.dfm}

uses Uteis, DataCad, DataCad1, Men0001, Prd0008, FrmTemporario, ufrmpreviewrb, iniciodb;





procedure TFormGimpManutMov.FormShow(Sender: tObject);
begin
    screen.cursor:=CrHourglass;
    Left := 166;
    Top  := 82;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange := MudaCorCampos;
    if dbInicio.Empresa.wMultiAlmox = 'S' then
       begin
           {Carrega a Combo do Almoxarifado desde que o parametro esteja habilitado}
           try
             SqlCdsAlmox.Close;
             SqlCdsAlmox.CommandText  := SQLDEF('TABELAS','SELECT AMX_CODIGO,AMX_DESCRI FROM ALMOX0000','','AMX_DESCRI','');
             SqlCdsAlmox.Open;
             SqlCdsAlmox.First;
             While not SqlCdsAlmox.Eof do
               begin
                   CbxAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
                   SqlCdsAlmox.Next;
               end;
               CbxAlmox.ItemIndex := 0;
           except on E:EdataBaseError do
               uteis.erro  (pchar('Erro ao Abrir a Tabela ALMOX0000 !'+e.Message));
           end;
       end;
    {Carrega a Combo do Tipo}
    try
      SqlCdsTipoMov.Close;
      SqlCdsTipoMov.CommandText  := SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','PTI_DESCRI','');
      SqlCdsTipoMov.Open;
      SqlCdsTipoMov.First;
      While not SqlCdsTipoMov.Eof do
        begin
            CbxTipoMov.Items.Add(SqlCdsTipoMovPTI_DESCRI.AsString);
            SqlCdsTipoMov.Next;
        end;
        CbxTipoMov.ItemIndex := 0;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD_TIPO '+e.Message));
    end;
    {Carregando os Grupos}
    try
      SqlCdsGrupoMovi.Close;
      SqlCdsGrupoMovi.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_GRUPO','','PGR_DESCRI','');
      SqlCdsGrupoMovi.Open;
      SqlCdsGrupoMovi.First;
      While not SqlCdsGrupoMovi.Eof do
        begin
            CbxGrupoMov.Items.Add(SqlCdsGrupoMoviPGR_DESCRI.AsString);
            SqlCdsGrupoMovi.Next;
        end;
        CbxGrupoMov.ItemIndex := 0;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD_TIPO '+e.Message));
    end;
    {Carregando os Tipos de Relatorios}
    LTBoxProdu.Items.Add('Ficha de Movimentos dos Produtos');
    LTBoxProdu.Items.Add('--------------------------------');
    LTBoxProdu.Items.Add('Relatório do Inventario do Estoque');
    LTBoxProdu.Items.Add('Relatório de Consumo por Custo Médio');
    LTBoxProdu.Items.Add('Relatório do Inventario por NCM Diferenciada');
    LTBoxProdu.ItemIndex := 0;
    LayOutSelecao;
    if RadTodas.checked  then
       begin
           wMovimento := 'Entrada/Saída';
       end;
    // valores de datas pré-atribuido
    EditDataI.Date := now;      // data de hoje
    EditDataF.Date := now+15;  // hoje + 15 dias
    screen.cursor := crDefault;
end;

procedure TFormGimpManutMov.CbxTipoMovClick(Sender: tObject);
begin
    if (SqlCdsTipoMov.Locate('PTI_DESCRI',CbxTipoMov.Text,[])=true) then
       begin
           Edt_Tipo.Text := SqlCdsTipoMovPTI_CODIGO.AsString;
           CbxGrupoMov.Enabled := True;
       end
    else
       begin
           Edt_Tipo.Text     := '999';
           CbxTipoMov.Text      := 'TODOS OS TIPOS';
           CbxTipoMov.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.MudaCorCampos(Sender: tObject);
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
    {CampoData  :TDateEdit}
    if Assigned(CampoData) then
       begin
           CampoData.color := clWindow;
       end;
    if ActiveControl is TDateEdit then
       begin
           TDateEdit(ActiveControl).color := $0080FFFF;
           CampoData := TDateEdit(ActiveControl);
       end
    else
       begin
           CampoData := nil;
       end;
    {CampoEdit  : TEdit}
    if Assigned(CampoEdit) then
       begin
           CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
           TEdit(ActiveControl).color := $0080FFFF;
           CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
           CampoEdit := nil;
       end;
end;

procedure TFormGimpManutMov.BitCancelarClick(Sender: tObject);
begin
    if (CdsKardex.Active=true) then
       CdsKardex.Destroy;
    Close;
end;

procedure TFormGimpManutMov.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsTipoMov.Close;
      SqlCdsGrupoMovi.Close;
      SqlCdsRelManutMov.Close;
      SqlCdsProduMov.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Fechar as Tabelas !'+e.message));
    end;
end;

procedure TFormGimpManutMov.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormGimpManutMov.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGimpManutMov.RadIndClick(Sender: tObject);
begin
    LayOutSelecao;
    labelrefer.Visible   := true;
    EdtPrd_Refer.Visible := true;

end;

procedure TFormGimpManutMov.RadGlobalClick(Sender: tObject);
begin
    LayOutSelecao;
    labelrefer.Visible   := false;
    EdtPrd_Refer.Visible := false;
end;

procedure TFormGimpManutMov.BitOkClick(Sender: tObject);
var
wDataSqlCdsKardex : TdateTime;
wDataInventario,wDataInventarioFim: TdateTime;
begin
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 0) then
       begin
           {Aqui faz o Filtro}
           wSeleciona := 'WHERE Y4.PES_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND Y4.PES_FLAG_CONTA = ''S''';

           {Coloca os Cabeçalhos no Relatorio}
           LBL_00_TITULO1.Caption := 'FICHA DE MOVIMENTO DE PRODDUTOS (Kardex)';
           LBL_00_TITULO2.Caption := 'Movimento de: '+wMovimento+' - entre o Periodo: '+EditDataI.Text+' Até: '+EditDataF.Text;
           LBL_00_TITULO3.Caption := '';
           LBL_01_TITULO1.Caption := 'FICHA DE MOVIMENTO DE PRODUTOS (Kardex)';
           LBL_01_TITULO2.Caption := 'Movimento de: '+wMovimento+' - entre o Periodo: '+EditDataI.Text+' Até: '+EditDataF.Text;
           LBL_01_TITULO3.Caption := '';
           if RadSoEntradas.checked  then
              begin
                  wSeleciona := wSeleciona + 'AND Y4.PES_TIPO = ''E''';
              end;
           if RadSoSaidas.checked  then
              begin
                  wSeleciona := wSeleciona + 'AND Y4.PES_TIPO = ''S''';
              end;
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  if (Edt_Almox.Text<>'999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y4.AMX_CODIGO = '''+SqlCdsAlmoxAMX_CODIGO.AsString+'''';
                         LBL_00_TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                         LBL_01_TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                     end
                  else
                     begin
                         LBL_00_TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADOS';
                         LBL_01_TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADOS';
                     end;
              end;
           if (RadGlobal.checked ) then
              begin
                  if (Edt_Tipo.TEXT <> '999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y1.PTI_CODIGO = '''+SqlCdsTipoMovPTI_CODIGO.AsString+'''';
                         LBL_00_TITULO3.Caption := LBL_00_TITULO3.Caption +' '+SqlCdsTipoMovPTI_CODIGO.AsString+' '+SqlCdsTipoMovPTI_DESCRI.AsString;
                     end
                  else
                     begin
                         LBL_00_TITULO3.Caption := LBL_00_TITULO3.Caption + ' TODOS OS TIPOS';
                     end;
                  if (Edt_Grupo.Text <> '999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y1.PGR_CODIGO = '''+SqlCdsGrupoMoviPGR_CODIGO.AsString+'''';
                         LBL_00_TITULO3.Caption := LBL_00_TITULO3.Caption +' '+SqlCdsGrupoMoviPGR_CODIGO.AsString+' '+SqlCdsGrupoMoviPGR_DESCRI.AsString;
                     end
                  else
                     begin
                         LBL_00_TITULO3.Caption := LBL_00_TITULO3.Caption +' TODOS OS GRUPOS ';
                     end;
              end;
           if (RadInd.checked ) then
              begin
                  wSeleciona := wSeleciona + ' AND Y1.PRD_REFER = '''+EdtPrd_Refer.Text+'''';
                  if Length(LBL_01_TITULO3.Caption)>0 then
                     LBL_01_TITULO3.Caption := LBL_01_TITULO3.Caption +' Produto: '+EdtPrd_Refer.Text+' - '+FormPrdManut.SqlCdsProdutoPRD_DESCRI.AsString
                  else
                     LBL_01_TITULO3.Caption := LBL_01_TITULO3.Caption +'Produto: '+EdtPrd_Refer.Text+' - '+FormPrdManut.SqlCdsProdutoPRD_DESCRI.AsString;
              end;
           {Criar o SQL}
           try
             SqlCdsRelManutMov.Close;
             SqlCdsRelManutMov.CommandText := SQLDEF('PRODUTOS','SELECT Y1.PTI_CODIGO,Y2.PTI_DESCRI,Y3.PGR_DESCRI,Y1.PGR_CODIGO,Y1.PRD_REFER,Y1.PRD_DESCRI,Y1.PRD_UND,Y1.EMP_CODIGO,Y4.PES_DATA,Y4.PES_QTDE,Y4.PES_VALOR,'+
                                                     'Y4.PES_TIPDOC,Y4.PES_NUMDOC,Y4.PES_TIPO,Y4.AMX_CODIGO,A1.AMX_DESCRI FROM PRD_ENSA Y4 JOIN PRD0000 Y1 ON (Y4.PRD_REFER = Y1.PRD_REFER) LEFT JOIN PRD_TIPO Y2 ON (Y2.PTI_CODIGO = Y1.PTI_CODIGO) '+
                                                     'LEFT JOIN PRD_GRUPO Y3 ON (Y3.PGR_CODIGO = Y1.PGR_CODIGO) '+IIF(Edt_Almox.Text<>'999','','LEFT')+' JOIN ALMOX0000 A1 ON (Y4.AMX_CODIGO = A1.AMX_CODIGO)',wSeleciona,'Y1.PTI_CODIGO,Y1.PRD_DESCRI,Y4.PES_DATA','Y4.');
             SqlCdsRelManutMov.Open;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+e.message));
           end;
           {Chama o Relatorio}
           if RadGlobal.checked  then
              begin
                  if RadVideo.Checked then
                     begin
                         ppRelManutMov00.DeviceType := 'Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRelManutMov00.DeviceType := 'Printer';
                         ppRelManutMov00.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRelManutMov00);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppRelManutMovIND.DeviceType := 'Screen';
                     end;
                  if RadImpressora.Checked then
                     begin
                         ppRelManutMovIND.DeviceType := 'Printer';
                         ppRelManutMovInd.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRelManutMovIND);
              end;
       end;

//
if (LTBoxProdu.ItemIndex = 3) then
       begin
           {Aqui faz o Filtro}
           wSeleciona := 'WHERE Y4.PES_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND Y4.PES_FLAG_CONTA = ''S''';

           {Coloca os Cabeçalhos no Relatorio}
           LBL_03_EMPRESA.Caption  := dbInicio.Empresa.Razao;//insere a razao da empresa no cabeçalho do relatorio.
           LBL_00_LTITULO1.Caption := 'RELATÓRIO DE CONSUMO POR CUSTO (Kardex)';
           TITULO2.Caption := 'Movimento de: '+wMovimento+' - entre o Periodo: '+EditDataI.Text+' Até: '+EditDataF.Text;
           TITULO3.Caption := '';
           LBL_01_TITULO3.Caption := '';
           if RadSoEntradas.checked  then
              begin
                  wSeleciona := wSeleciona + 'AND Y4.PES_TIPO = ''E''';
              end;
           if RadSoSaidas.checked  then
              begin
                  wSeleciona := wSeleciona + 'AND Y4.PES_TIPO = ''S''';
              end;
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  if (Edt_Almox.Text<>'999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y4.AMX_CODIGO = '''+SqlCdsAlmoxAMX_CODIGO.AsString+'''';
                         TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                         TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                     end
                  else
                     begin
                         TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADOS';
                         TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADOS';
                     end;
              end;
           if (RadGlobal.checked ) then
              begin
                  if (Edt_Tipo.TEXT <> '999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y1.PTI_CODIGO = '''+SqlCdsTipoMovPTI_CODIGO.AsString+'''';
                         TITULO3.Caption := TITULO3.Caption +' '+SqlCdsTipoMovPTI_CODIGO.AsString+' '+SqlCdsTipoMovPTI_DESCRI.AsString;
                     end
                  else
                     begin
                         TITULO3.Caption := TITULO3.Caption + ' TODOS OS TIPOS';
                     end;
                  if (Edt_Grupo.Text <> '999') then
                     begin
                         wSeleciona := wSeleciona + ' AND Y1.PGR_CODIGO = '''+SqlCdsGrupoMoviPGR_CODIGO.AsString+'''';
                         TITULO3.Caption := TITULO3.Caption +' '+SqlCdsGrupoMoviPGR_CODIGO.AsString+' '+SqlCdsGrupoMoviPGR_DESCRI.AsString;
                     end
                  else
                     begin
                         TITULO3.Caption := TITULO3.Caption +' TODOS OS GRUPOS ';
                     end;
              end;
           if (RadInd.checked ) then
              begin
                  wSeleciona := wSeleciona + ' AND Y1.PRD_REFER = '''+EdtPrd_Refer.Text+'''';
                  if Length(TITULO3.Caption)>0 then
                     TITULO3.Caption := TITULO3.Caption +' Produto: '+EdtPrd_Refer.Text+' - '+FormPrdManut.SqlCdsProdutoPRD_DESCRI.AsString
                  else
                     TITULO3.Caption := TITULO3.Caption +'Produto: '+EdtPrd_Refer.Text+' - '+FormPrdManut.SqlCdsProdutoPRD_DESCRI.AsString;
              end;
           {Criar o SQL}
           try
             SqlCdsRelConsmCusto.Close;
             SqlCdsRelConsmCusto.CommandText := SQLDEF('PRODUTOS','SELECT Y1.PTI_CODIGO,Y2.PTI_DESCRI,Y3.PGR_DESCRI,Y1.PGR_CODIGO,Y1.PRD_REFER,Y1.PRD_DESCRI,Y1.PRD_UND,Y1.EMP_CODIGO,Y4.PES_DATA,Y4.PES_QTDE,Y4.PES_VALOR,'+
                                                     'Y4.PES_TIPDOC,Y4.PES_NUMDOC,Y4.PES_TIPO,Y4.AMX_CODIGO,A1.AMX_DESCRI,Y1.PRD_PMEDIO FROM PRD_ENSA Y4 JOIN PRD0000 Y1 ON (Y4.PRD_REFER = Y1.PRD_REFER) LEFT JOIN PRD_TIPO Y2 ON (Y2.PTI_CODIGO = Y1.PTI_CODIGO) '+
                                                     'LEFT JOIN PRD_GRUPO Y3 ON (Y3.PGR_CODIGO = Y1.PGR_CODIGO) '+IIF(Edt_Almox.Text<>'999','','LEFT')+' JOIN ALMOX0000 A1 ON (Y4.AMX_CODIGO = A1.AMX_CODIGO)',wSeleciona,'Y1.PTI_CODIGO,Y1.PRD_DESCRI,Y4.PES_DATA','Y4.');
             SqlCdsRelConsmCusto.Open;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+e.message));
           end;
           {Chama o Relatorio}
           if RadGlobal.checked  then
              begin
                  if RadVideo.Checked then
                     begin
                         ppRelConsmCusto.DeviceType := 'Screen';
                     end else
                  if RadImpressora.Checked then
                     begin
                         ppRelConsmCusto.DeviceType := 'Printer';
                         ppRelConsmCusto.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRelConsmCusto);
              end
           else
              begin
                  if RadVideo.Checked then
                     begin
                         ppRelConsmCusto.DeviceType := 'Screen';
                     end;
                  if RadImpressora.Checked then
                     begin
                         ppRelConsmCusto.DeviceType := 'Printer';
                         ppRelConsmCusto.ShowPrintDialog := true;
                     end;

                  RBuilderPreview(ppRelConsmCusto);
              end;
       end;
//

    if (LTBoxProdu.ItemIndex = 1) then   // Relatório do Estoque Atual(Movimento Kardex)
       begin

       { 27/05/2011 marcio desativou . mesmo relarotio do Inventario mas mostra somente os itens que tiveram movimento do periodo solicitaso.
         e mostra também todos e negativos.  Não é muito viável pois mostra o saldo geral nao é veridico pois não mostra saldo anterior  }
           {
               if (dbInicio.Empresa.wMultiAlmox = 'S') then
                  CdsKardex.IndexName := 'IndexCAlmox'
               else
                  CdsKardex.IndexName := 'IndexSAlmox';
               if (RadTodos.checked ) then
                  begin
                      CdsKardex.Filtered := False;
                      CdsKardex.Filter   := '';
                      CdsKardex.Filtered := True;
                  end;
               if (RadPositivo.checked ) then
                  begin
                      CdsKardex.Filtered := False;
                      CdsKardex.Filter   := 'PRD_ESTOQUE>0';
                      CdsKardex.Filtered := True;
                  end;
               if (RadNegativo.checked ) then
                  begin
                      CdsKardex.Filtered := False;
                      CdsKardex.Filter   := 'PRD_ESTOQUE<0';
                      CdsKardex.Filtered := True;
                  end;
               //
               if (RadVideo.checked ) then
                  ppRelKardex.DeviceType := 'Screen';
               if (RadImpressora.checked ) then
                  begin
                      ppRelKardex.DeviceType := 'Printer';
                      ppRelKardex.ShowPrintDialog := true;
                  end;
               if Radtext.checked  then
                  begin
                      ppRelKardex.ShowPrintDialog := False;
                      ppRelKardex.DeviceType      := 'ReportTextFile';
                      ppRelKardex.TextFileName    := FrmMenu.PathNewRel+'\MOVIKARDEX.TXT';
                      uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\MOVIKARDEX.TXT'));
                  end;

               ppRelKardex.Print;
               CdsKardex.EnableControls;             }

       end;

    if (LTBoxProdu.ItemIndex = 2) then  //Relatorio do Inventario do Estoque
       begin
           try
             wSeleciona := '';

             {Ativa a tabela temporaria}
             if not CdsKardex.Active then
               CdsKardex.CreateDataSet;
             {limpar arquivo}
             CdsKardex.EmptyDataSet;

             {Seleciona o Tipo de Produtos}
             if (Edt_Tipo.Text<>'999') then
                begin
                    LBL_02_LTITULO3.Caption := 'Tipo : '+Edt_Tipo.Text+' '+SqlCdsTipoMovPTI_DESCRI.AsString;
                    wSeleciona              := ' WHERE P1.PTI_CODIGO = '''+Edt_Tipo.Text+'''';
                end
             else
                begin
                    LBL_02_LTITULO3.Caption := 'Tipo : TODOS OS TIPOS';
                    wSeleciona := wSeleciona + '';
                end;
             {Seleciona o Grupo de Produto}
             if (Edt_Grupo.Text<>'999') then
                begin
                    LBL_02_LTITULO3.Caption := LBL_02_LTITULO3.Caption+' - Grupo : '+Edt_Grupo.Text+' '+SqlCdsGrupoMoviPGR_DESCRI.AsString;
                    if (Edt_Tipo.Text<>'999') then
                       wSeleciona := wSeleciona + ' AND P1.PGR_CODIGO = '''+Edt_Grupo.Text+''''
                    else
                       wSeleciona := ' WHERE P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''';
                end
             else
                begin
                    LBL_02_LTITULO3.Caption := LBL_02_LTITULO3.Caption +' - Grupo : TODOS OS GRUPOS';
                    wSeleciona := wSeleciona + '';
                end;

             // wSql1   := 'Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PMEDIO,P1.IPI_CODIGO,((P1.PRD_ESTOQUE+P1.PRD_ENTRADA) - (P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from PRD0000 P1 ';
             wSql1   := 'Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PMEDIO,P1.IPI_CODIGO,P2.NCM_TEMCREDITO,((P1.PRD_ESTOQUE+P1.PRD_ENTRADA) - (P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from PRD0000 P1 LEFT JOIN IPI0000 P2 ON (P1.ipi_codigo = P2.ipi_codigo)';
             wOrdem  := 'P1.PRD_REFER';

             SqlCdsEstoque.Close;
             SqlCdsEstoque.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'P1.');
             SqlCdsEstoque.Open;
             SqlCdsEstoque.DisableControls;
             SqlCdsEstoque.First;
             ProgressBar1.Position := 0;
             ProgressBar1.Max      := SqlCdsEstoque.RecordCount;
             while not SqlCdsEstoque.Eof do
              begin
                  Busca_kardex_Inventario(SqlCdsEstoquePRD_REFER.AsString);

                  ProgressBar1.Position := ProgressBar1.Position + 1;
                  SqlCdsEstoque.Next;
              end;
             SqlCdsEstoque.EnableControls;
             LBL_02_EMPRESA.Caption  := dbInicio.Empresa.Razao;
             LBL_02_LTITULO1.Caption := 'RELATÓRIO DO INVENTARIO DO ESTOQUE';
             LBL_02_LTITULO2.Caption := 'Período de : '+EditDataI.Text+' até '+EditDataF.Text;
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    ppGroupHeaderGrupo.Visible := True;
                    ppGroupFooterGrupo.Visible := True;
                    ppLblTotal2.Visible        := True;
                    ppDBCalcTotal.Visible      := True;
                    ppLineGrupo00.Visible      := False;
                    ppLblRef.Visible           := False;
                    ppLblDescri.Visible        := False;
                    ppLblUnd.Visible           := False;
                    ppLblEntrada.Visible       := False;
                    ppLblSaida.Visible         := False;
                    ppLblEstoque.Visible       := False;
                    ppLblTotal.Visible         := False;
                    ppLineGrupo01.Visible      := True;
                    ppLineGrupo02.Visible      := True;
                    ppLineGrupo03.Visible      := True;
                    if (Edt_Almox.Text <> '999') then
                       begin
                           wSeleciona := wSeleciona + ' AND E1.AMX_CODIGO = '''+Edt_Almox.Text+'''';
                           LBL_02_LTITULO2.Caption := LBL_02_LTITULO2.Caption + ' - Almoxarifado : '+Edt_Almox.Text+' - '+CbxAlmox.Text;
                       end
                    else
                       begin
                           LBL_02_LTITULO2.Caption := LBL_02_LTITULO2.Caption + ' - Almoxarifado : TODOS ';
                       end;
                end
             else
                begin
                    ppGroupHeaderGrupo.Visible := False;
                    ppGroupFooterGrupo.Visible := False;
                    ppLineGrupo00.Visible      := True;
                    ppLblRef.Visible           := True;
                    ppLblDescri.Visible        := True;
                    ppLblUnd.Visible           := True;
                    ppLblEntrada.Visible       := True;
                    ppLblSaida.Visible         := True;
                    ppLblEstoque.Visible       := True;
                    ppLblTotal.Visible         := True;
                    ppLblTotal2.Visible        := True;
                    ppDBCalcTotal.Visible      := True;
                    ppLineGrupo01.Visible      := False;
                    ppLineGrupo02.Visible      := False;
                    ppLineGrupo03.Visible      := False;
                end;
             {Chama a tabela Temporaria}
             try
               try
                 if (dbInicio.Empresa.wMultiAlmox = 'S') then
                    CdsKardex.IndexName := 'IndexCAlmox'
                 else
                    CdsKardex.IndexName := 'IndexSAlmox';
                 //
                 CdsKardex.DisableControls;
                 CdsKardex.First;
                 if (RadTodos.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := '';
                        CdsKardex.Filtered := True;
                    end;
                 if (RadPositivo.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := 'PRD_ESTOQUE > 0';
                        CdsKardex.Filtered := True;
                    end;
                 if (RadNegativo.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := 'PRD_ESTOQUE < 0';
                        CdsKardex.Filtered := True;
                    end;
                 //
                 if (RadVideo.checked ) then
                    ppRelKardex.DeviceType := 'Screen';

                 if (RadImpressora.checked ) then
                    begin
                        ppRelKardex.DeviceType := 'Printer';
                        ppRelKardex.ShowPrintDialog := true;
                    end;
                 RBuilderPreview(ppRelKardex);
               except on E:EDataBaseError do
                 uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
               end;
             finally
               begin
                   CdsKardex.EnableControls;
                   CdsKardex.EmptyDataSet;
                   CdsKardex.Close;
               end;
             end;
             //
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao Abrir a tabela do Estoque ! '+e.message));
           end;
       end;
    {
    //Screen.Cursor := crDefault;
    Edt_Almox.Text        := '999';
    CbxAlmox.ItemIndex    := 0;
    CbxAlmox.Text         := 'TODOS OS ALMOXARIFADOS';
    Edt_Tipo.Text         := '999';
    CbxTipoMov.ItemIndex  := 0;
    CbxTipoMov.Text       := 'TODOS OS TIPOS';
    Edt_Grupo.Text        := '999';
    CbxGrupoMov.ItemIndex := 0;
    CbxGrupoMov.Text      := 'TODOS OS GRUPOS';}
    if (Pan_Bar.Visible) then
       ProgressBar1.Position := 0;
    {Limpa Tabela Temporaria}
    EditDataI.SetFocus;
    EditDataI.SelectAll;


     if (LTBoxProdu.ItemIndex = 4) then  //Relatorio do Inventario POR NCM diferenciada
       begin
           try
             wSeleciona := '';

             {Ativa a tabela temporaria}
             if not CdsKardex.Active then
               CdsKardex.CreateDataSet;
             {limpar arquivo}
             CdsKardex.EmptyDataSet;

             {Seleciona o Tipo de Produtos}
             if (Edt_Tipo.Text<>'999') then
                begin
                    LBL_02_LTITULO3NCM.Caption := 'Tipo : '+Edt_Tipo.Text+' '+SqlCdsTipoMovPTI_DESCRI.AsString;
                    wSeleciona              := ' WHERE P1.PTI_CODIGO = '''+Edt_Tipo.Text+'''';
                end
             else
                begin
                    LBL_02_LTITULO3NCM.Caption := 'Tipo : TODOS OS TIPOS';
                    wSeleciona := wSeleciona + '';
                end;
             {Seleciona o Grupo de Produto}
             if (Edt_Grupo.Text<>'999') then
                begin
                    LBL_02_LTITULO3NCM.Caption := LBL_02_LTITULO3NCM.Caption+' - Grupo : '+Edt_Grupo.Text+' '+SqlCdsGrupoMoviPGR_DESCRI.AsString;
                    if (Edt_Tipo.Text<>'999') then
                       wSeleciona := wSeleciona + ' AND P1.PGR_CODIGO = '''+Edt_Grupo.Text+''''
                    else
                       wSeleciona := ' WHERE P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''';
                end
             else
                begin
                    LBL_02_LTITULO3NCM.Caption := LBL_02_LTITULO3NCM.Caption +' - Grupo : TODOS OS GRUPOS';
                    wSeleciona := wSeleciona + '';
                end;

             LBL_02_LTITULO3NCM.Caption := LBL_02_LTITULO3NCM.Caption + ' - NCM DIFERENCIADAS';
             wSeleciona := wSeleciona + ' AND P2.NCM_TEMCREDITO = ''S''';
             //wSql1   := 'Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PMEDIO,P1.IPI_CODIGO,((P1.PRD_ESTOQUE+P1.PRD_ENTRADA) - (P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from PRD0000 P1 ';
             wSql1   := 'Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_PMEDIO,P1.IPI_CODIGO,P2.NCM_TEMCREDITO,((P1.PRD_ESTOQUE+P1.PRD_ENTRADA) - (P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO from PRD0000 P1 left JOIN IPI0000 P2 ON (P1.ipi_codigo = P2.ipi_codigo)';
             wOrdem  := 'P1.IPI_CODIGO,P1.PRD_DESCRI';

             SqlCdsEstoque.Close;
             SqlCdsEstoque.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'P1.');
             SqlCdsEstoque.Open;
             SqlCdsEstoque.DisableControls;
             SqlCdsEstoque.First;
             ProgressBar1.Position := 0;
             ProgressBar1.Max      := SqlCdsEstoque.RecordCount;
             while not SqlCdsEstoque.Eof do
              begin
                  Busca_kardex_Inventario(SqlCdsEstoquePRD_REFER.AsString);

                  ProgressBar1.Position := ProgressBar1.Position + 1;
                  SqlCdsEstoque.Next;
              end;
             SqlCdsEstoque.EnableControls;
             LBL_02_EMPRESANCM.Caption  := dbInicio.Empresa.Razao;
             LBL_02_LTITULO1NCM.Caption := 'RELATÓRIO DO INVENTARIO DO ESTOQUE';
             LBL_02_LTITULO2NCM.Caption := 'Período de : '+EditDataI.Text+' até '+EditDataF.Text;
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    ppGroupHeaderGrupo.Visible := True;
                    ppGroupFooterGrupo.Visible := True;
                    ppLblTotal2.Visible        := True;
                    ppDBCalcTotal.Visible      := True;
                    ppLineGrupo00.Visible      := False;
                    ppLblRef.Visible           := False;
                    ppLblDescri.Visible        := False;
                    ppLblUnd.Visible           := False;
                    ppLblEntrada.Visible       := False;
                    ppLblSaida.Visible         := False;
                    ppLblEstoque.Visible       := False;
                    ppLblTotal.Visible         := False;
                    ppLineGrupo01.Visible      := True;
                    ppLineGrupo02.Visible      := True;
                    ppLineGrupo03.Visible      := True;
                    if (Edt_Almox.Text <> '999') then
                       begin
                           wSeleciona := wSeleciona + ' AND E1.AMX_CODIGO = '''+Edt_Almox.Text+'''';
                           LBL_02_LTITULO2NCM.Caption := LBL_02_LTITULO2.Caption + ' - Almoxarifado : '+Edt_Almox.Text+' - '+CbxAlmox.Text;
                       end
                    else
                       begin
                           LBL_02_LTITULO2NCM.Caption := LBL_02_LTITULO2.Caption + ' - Almoxarifado : TODOS ';
                       end;
                end
             else
                begin
                    ppGroupHeaderGrupo.Visible := False;
                    ppGroupFooterGrupo.Visible := False;
                    ppLineGrupo00.Visible      := True;
                    ppLblRef.Visible           := True;
                    ppLblDescri.Visible        := True;
                    ppLblUnd.Visible           := True;
                    ppLblEntrada.Visible       := True;
                    ppLblSaida.Visible         := True;
                    ppLblEstoque.Visible       := True;
                    ppLblTotal.Visible         := True;
                    ppLblTotal2.Visible        := True;
                    ppDBCalcTotal.Visible      := True;
                    ppLineGrupo01.Visible      := False;
                    ppLineGrupo02.Visible      := False;
                    ppLineGrupo03.Visible      := False;
                end;
             {Chama a tabela Temporaria}
             try
               try
                 if (dbInicio.Empresa.wMultiAlmox = 'S') then
                    CdsKardex.IndexName := 'IndexCAlmox'
                 else
                    //CdsKardex.IndexName := 'IndexSAlmox';
                    CdsKardex.IndexName := '';    // assim a tabela fica ordenada por IPI_codigo - 15/05/2012 Márcio
                 //
                 CdsKardex.DisableControls;
                 CdsKardex.First;
                 if (RadTodos.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := '';
                        CdsKardex.Filtered := True;
                    end;
                 if (RadPositivo.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := 'PRD_ESTOQUE > 0';
                        CdsKardex.Filtered := True;
                    end;
                 if (RadNegativo.checked ) then
                    begin
                        CdsKardex.Filtered := False;
                        CdsKardex.Filter   := 'PRD_ESTOQUE < 0';
                        CdsKardex.Filtered := True;
                    end;
                 //
                 if (RadVideo.checked ) then
                    ppRelKardexNCM.DeviceType := 'Screen';
                 if (RadImpressora.checked ) then
                    begin
                        ppRelKardexNCM.DeviceType := 'Printer';
                        ppRelKardexNCM.ShowPrintDialog := true;
                    end;

                 RBuilderPreview(ppRelKardexNCM);
               except on E:EDataBaseError do
                 uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
               end;
             finally
               begin
                   CdsKardex.EnableControls;
                   CdsKardex.EmptyDataSet;
                   CdsKardex.Close;
               end;
             end;
             //
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao Abrir a tabela do Estoque ! '+e.message));
           end;
       end;
    //Screen.Cursor := crDefault;
    Edt_Almox.Text        := '999';
    CbxAlmox.ItemIndex    := 0;
    CbxAlmox.Text         := 'TODOS OS ALMOXARIFADOS';
    Edt_Tipo.Text         := '999';
    CbxTipoMov.ItemIndex  := 0;
    CbxTipoMov.Text       := 'TODOS OS TIPOS';
    Edt_Grupo.Text        := '999';
    CbxGrupoMov.ItemIndex := 0;
    CbxGrupoMov.Text      := 'TODOS OS GRUPOS';
    if (Pan_Bar.Visible) then
       ProgressBar1.Position := 0;
    {Limpa Tabela Temporaria}
    EditDataI.SetFocus;
    EditDataI.SelectAll;



end;

procedure TFormGimpManutMov.RadTodasClick(Sender: tObject);
begin
    wSeleciona := '';
    wMovimento := 'Entrada/Saída';
end;

procedure TFormGimpManutMov.RadSoEntradasClick(Sender: tObject);
begin
    wMovimento := 'Entrada';
end;

procedure TFormGimpManutMov.RadSoSaidasClick(Sender: tObject);
begin
    wMovimento := 'Saída';
end;

procedure TFormGimpManutMov.CbxGrupoMovClick(Sender: tObject);
begin
    if (SqlCdsGrupoMovi.Locate('PGR_DESCRI',CbxGrupoMov.Text,[])=true) then
       begin
           Edt_Grupo.Text := SqlCdsGrupoMoviPGR_CODIGO.AsString;
       end
    else
       begin
           Edt_Grupo.Text        := '999';
           CbxGrupoMov.Text      := 'TODOS OS GRUPOS';
           CbxGrupoMov.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption:= dbInicio.Empresa.Razao;
end;

procedure TFormGimpManutMov.EditDataIEnter(Sender: tObject);
begin
    EditDataI.SelectAll;
end;

procedure TFormGimpManutMov.EditDataFEnter(Sender: tObject);
begin
    EditDataF.SelectAll;
end;

procedure TFormGimpManutMov.SqlCdsRelManutMovCalcFields(DataSet: TDataSet);
begin
    if SqlCdsRelManutMovPES_TIPO.AsString = 'E' then
       begin
           SqlCdsRelManutMovPES_ENTRADA_CC.AsCurrency := SqlCdsRelManutMovPES_QTDE.AsCurrency;
           SqlCdsRelManutMovPES_SAIDA_CC.AsCurrency   := 0;
       end
    else
       begin
           SqlCdsRelManutMovPES_SAIDA_CC.AsCurrency   := SqlCdsRelManutMovPES_QTDE.AsCurrency;
           SqlCdsRelManutMovPES_ENTRADA_CC.AsCurrency := 0;
       end;
end;

procedure TFormGimpManutMov.ppHeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_01_EMPRESA.Caption:= dbInicio.Empresa.Razao;
end;

procedure TFormGimpManutMov.CbxAlmoxClick(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',CbxAlmox.Text,[])=true) then
       begin
           Edt_Almox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           Edt_Almox.Text     := '999';
           CbxAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbxAlmox.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.LTBoxProduClick(Sender: tObject);
begin
    LayOutRelatorio;
end;

procedure TFormGimpManutMov.LayOutRelatorio;
begin
    if (LTBoxProdu.ItemIndex = 0) then
       begin
           Pan_Bar.Visible := False;
           LayOutSelecao;
       end;
    if (LTBoxProdu.ItemIndex = 1) OR (LTBoxProdu.ItemIndex = 2) OR (LTBoxProdu.ItemIndex = 4) then
       begin
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  {Desabilita}
                  Group01.Visible := False;
                  Group03.Visible := False;
                  {Habilita}
                  Group02.Visible := True;
                  Group05.Visible := True;
                  if (LTBoxProdu.ItemIndex = 1) then
                     begin
                         RadTodos.Enabled    := True;
                         RadTodos.Checked    := True;
                         RadPositivo.Enabled := True;
                         RadNegativo.Enabled := True;
                     end
                  else
                  if (LTBoxProdu.ItemIndex = 2) then
                     begin
                         RadTodos.Enabled    := False;
                         RadTodos.Checked    := False;
                         RadPositivo.Enabled := True;
                         RadPositivo.Checked := True;
                         RadNegativo.Enabled := False;
                     end;
                  Pan_Bar.Visible := True;
                  Pan_Bar.Top     := 332;
                  //
                  Group07.Visible := True;
                  Group04.Visible := True;
                  Group06.Visible := True;
                  {Posiciona}
                  Group02.Top     := 99;
                  Group05.Top     := 140;
                  Group07.Top     := 181;
                  Group04.Top     := 222;
                  Group06.Top     := 290;
              end
           else
              begin
                  {Desabilita}
                  Group01.Visible := False;
                  Group03.Visible := False;
                  Group07.Visible := False;
                  {Habilita}
                  Group02.Visible := True;
                  Group05.Visible := True;
                  Group04.Visible := True;
                  Group06.Visible := True;
                  {}
                  if (LTBoxProdu.ItemIndex = 1) then
                     begin
                         RadTodos.Enabled    := True;
                         RadTodos.Checked    := True;
                         RadPositivo.Enabled := True;
                         RadNegativo.Enabled := True;
                     end
                  else
                  if (LTBoxProdu.ItemIndex = 2) then
                     begin
                         RadTodos.Enabled    := False;
                         RadTodos.Checked    := False;
                         RadPositivo.Enabled := True;
                         RadPositivo.Checked := True;
                         RadNegativo.Enabled := False;
                     end;
                  Pan_Bar.Visible     := True;
                  Pan_Bar.Top         := 290;
                  //
                  {Posiciona}
                  Group02.Top     := 99;
                  Group05.Top     := 140;
                  Group04.Top     := 181;
                  Group06.Top     := 244;
              end;
       end;
end;

procedure TFormGimpManutMov.LayOutSelecao;
begin
    if RadInd.checked  then
       begin
           {habilitar group}
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  Group01.Visible := True;
                  Group02.Visible := True;
                  Group03.Visible := True;
                  Group07.Visible := true;
                  {Desabilitar group}
                  Group04.Visible := false;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group06.Top     := 263;
                  Group07.Top     := 222;
              end
           else
              begin
                  Group01.Visible := True;
                  Group02.Visible := True;
                  Group03.Visible := True;
                  {Desabilitar group}
                  Group04.Visible := false;
                  Group07.Visible := False;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group06.Top     := 222;
              end;
       end
    else
       begin
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  {habilita group}
                  Group01.Visible := True;
                  Group02.Visible := True;
                  Group03.Visible := True;
                  Group04.Visible := True;
                  Group05.Visible := True;
                  Group07.Visible := true;
                  {Desabilita Groups}
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group07.Top     := 222;
                  Group04.Top     := 263;
                  Group05.Top     := 140;
                  Group06.Top     := 330;
              end
           else
              begin
                  {habilita group}
                  Group01.Visible := True;
                  Group02.Visible := true;
                  Group03.Visible := True;
                  Group04.Visible := True;
                  {Desabilita Groups}
                  Group07.Visible := false;
                  Group05.Visible := False;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group04.Top     := 222;
                  Group06.Top     := 290;
              end;
       end;
    FormGimpManutMov.AutoSize := True;
end;

procedure TFormGimpManutMov.SqlCdsKardexSAlmoxCalcFields(DataSet: TDataSet);
begin
    if SqlCdsKardexSAlmox.FieldByName('PES_TIPO').AsString = 'E' then
       begin
           SqlCdsKardexSAlmox.FieldByName('ENTRADA_CC').AsCurrency := SqlCdsKardexSAlmox.FieldByName('WQTDE').AsCurrency;
           SqlCdsKardexSAlmox.FieldByName('SAIDA_CC').AsCurrency   := 0;
       end
    else
       begin
           SqlCdsKardexSAlmox.FieldByName('ENTRADA_CC').AsCurrency := 0;
           SqlCdsKardexSAlmox.FieldByName('SAIDA_CC').AsCurrency   := SqlCdsKardexSAlmox.FieldByName('WQTDE').AsCurrency;
       end;
    SqlCdsKardexSAlmox.FieldByName('ESTOQUE_CC').AsCurrency := (SqlCdsKardexSAlmox.FieldByName('ENTRADA_CC').AsCurrency - SqlCdsKardexSAlmox.FieldByName('SAIDA_CC').AsCurrency);
end;

procedure TFormGimpManutMov.SqlCdsKardexCAlmoxCalcFields(
  DataSet: TDataSet);
begin
    if SqlCdsKardexCAlmox.FieldByName('PES_TIPO').AsString = 'E' then
       begin
           SqlCdsKardexCAlmox.FieldByName('ENTRADA_CC').AsCurrency := SqlCdsKardexCAlmox.FieldByName('WQTDE').AsCurrency;
           SqlCdsKardexCAlmox.FieldByName('SAIDA_CC').AsCurrency   := 0;
       end
    else
       begin
           SqlCdsKardexCAlmox.FieldByName('ENTRADA_CC').AsCurrency := 0;
           SqlCdsKardexCAlmox.FieldByName('SAIDA_CC').AsCurrency   := SqlCdsKardexCAlmox.FieldByName('WQTDE').AsCurrency;
       end;
    SqlCdsKardexCAlmox.FieldByName('ESTOQUE_CC').AsCurrency := (SqlCdsKardexCAlmox.FieldByName('ENTRADA_CC').AsCurrency - SqlCdsKardexCAlmox.FieldByName('SAIDA_CC').AsCurrency);
end;

procedure TFormGimpManutMov.Edt_AlmoxEnter(Sender: tObject);
begin
    Edt_Almox.SelectAll;
end;

procedure TFormGimpManutMov.Edt_AlmoxKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGimpManutMov.Edt_AlmoxExit(Sender: tObject);
begin
    Edt_Almox.text := StrZero(Edt_Almox.Text,Edt_Almox.MaxLength);
    if (Edt_Almox.Text <> '999') then
       begin
           if (SqlCdsAlmox.Locate('AMX_CODIGO',Edt_Almox.Text,[])=true) then
              begin
                  CbxAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
              end
           else
              begin
                  Edt_Almox.Text := '999';
                  CbxAlmox.Text  := 'TODOS OS ALMOXARIFADOS';
                  CbxAlmox.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Almox.Text := '999';
           CbxAlmox.Text  := 'TODOS OS ALMOXARIFADOS';
           CbxAlmox.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.Edt_TipoExit(Sender: tObject);
begin
    Edt_Tipo.text := StrZero(Edt_Tipo.Text,Edt_Tipo.MaxLength);
    if (Edt_Tipo.Text <> '999') then
       begin
           if (SqlCdsTipoMov.Locate('PTI_CODIGO',Edt_Tipo.Text,[])=true) then
              begin
                  CbxTipoMov.Text := SqlCdsTipoMovPTI_DESCRI.AsString;
              end
           else
              begin
                  Edt_Tipo.Text        := '999';
                  CbxTipoMov.Text      := 'TODOS OS TIPOS';
                  CbxTipoMov.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Tipo.Text        := '999';
           CbxTipoMov.Text      := 'TODOS OS TIPOS';
           CbxTipoMov.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.Edt_GrupoExit(Sender: tObject);
begin
    Edt_Grupo.text := StrZero(Edt_Grupo.Text,Edt_Grupo.MaxLength);
    if (Edt_Grupo.Text <> '999') then
       begin
           if (SqlCdsGrupoMovi.Locate('PGR_CODIGO',Edt_Grupo.Text,[])=true) then
              begin
                  CbxGrupoMov.Text := SqlCdsGrupoMoviPGR_DESCRI.AsString;
              end
           else
              begin
                  Edt_Grupo.Text        := '999';
                  CbxGrupoMov.Text      := 'TODOS OS GRUPOS';
                  CbxGrupoMov.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Grupo.Text        := '999';
           CbxGrupoMov.Text      := 'TODOS OS GRUPOS';
           CbxGrupoMov.ItemIndex := 0;
       end;
end;

procedure TFormGimpManutMov.CdsKardexCalcFields(DataSet: TDataSet);
begin
    if (CdsKardexPRD_ESTOQUE.AsCurrency>0) then
       begin
           CdsKardexTOTEST_CC.AsCurrency    := (CdsKardexPRD_PMEDIOIPI.AsCurrency * CdsKardexPRD_ESTOQUE.AsCurrency);
           CdsKardexTOTPMEDIO_CC.AsCurrency := (CdsKardexPRD_PMEDIO.AsCurrency * CdsKardexPRD_ESTOQUE.AsCurrency);

           CdsKardexTOTPCUSTO_CC.AsCurrency := (CdsKardexPRD_PCUSTO.AsCurrency * CdsKardexPRD_ESTOQUE.AsCurrency);

       end
    else
       begin
           CdsKardexTOTEST_CC.AsCurrency    :=0;
           CdsKardexTOTPMEDIO_CC.AsCurrency :=0;

           CdsKardexTOTPCUSTO_CC.AsCurrency :=0;
       end;
end;

procedure TFormGimpManutMov.Busca_kardex_Inventario(pRefer: String);
var
wDataSqlCdsKardex : TdateTime;
wDataInventario,wDataInventarioFim: TdateTime;
begin
    try
       if (LTBoxProdu.ItemIndex = 1) then   //Relatorio do Estoque Atual Movimento Kardex
           wSeleciona      := ' WHERE E1.PES_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND E1.PES_FLAG_CONTA = ''S''';

       if (LTBoxProdu.ItemIndex = 2) then
         // buscar todos lançamentos menor que a data final
         wSeleciona      := ' WHERE E1.PES_DATA <= '''+DataAmericana(EditDataF.Text)+''' AND E1.PRD_REFER = '''+pRefer+''' and E1.PES_FLAG_CONTA = ''S''';

      if (LTBoxProdu.ItemIndex = 4) then
         // buscar alem da data as NCM diferenciada
         begin
           wSeleciona      := ' WHERE E1.PES_DATA <= '''+DataAmericana(EditDataF.Text)+''' AND E1.PRD_REFER = '''+pRefer+''' and E1.PES_FLAG_CONTA = ''S''';
           wSeleciona      := wSeleciona + ' AND P2.NCM_TEMCREDITO = ''S''';
         end;

      wPMedio         := 0;
      wPMedioIpi      := 0;
      wSaldo          := 0;
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         begin
             //wOrdem       := ' ORDER BY E1.AMX_CODIGO,E1.PRD_REFER';
             wOrdem       := ' ORDER BY E1.PES_DATA,E1.AMX_CODIGO,E1.PRD_REFER';
             if (Edt_Almox.Text <> '999') then
                begin
                    wSeleciona := wSeleciona + ' AND E1.AMX_CODIGO = '''+Edt_Almox.Text+'''';
                end;
             //
             if Share('PRODUTOS') = 'E' then
                begin
                    wSeleciona := wSeleciona + ' AND E1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                end;
             wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PMEDIO,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND,SUM(E1.PES_QTDE) AS WQTDE FROM PRD_ENSA E1 ';
             wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) LEFT JOIN almox0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
             wSql3 := ' GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PMEDIO,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND';
             //
             {Busca o Movimento no Kardex}
             SqlCdsKardexCAlmox.Close;
             SqlCdsKardexCAlmox.CommandText := wSql1+wSql2+wSeleciona+wSql3+wOrdem;
             SqlCdsKardexCAlmox.Open;
             if SqlCdsKardexCAlmox.IsEmpty = False then
                begin
                    SqlCdsKardexCAlmox.DisableControls;
                    SqlCdsKardexCAlmox.First;
                    while not SqlCdsKardexCAlmox.Eof do
                     begin
                         if CdsKardex.Locate('AMX_CODIGO;PRD_REFER',VarArrayOf([SqlCdsKardexCAlmox.FieldByName('AMX_CODIGO').AsString,SqlCdsKardexCAlmox.FieldByName('PRD_REFER').AsString]),[loPartialKey])=true then
                            CdsKardex.Edit
                         else
                            CdsKardex.Append;

                         CdsKardexAMX_CODIGO.AsString        := SqlCdsKardexCAlmox.FieldByName('AMX_CODIGO').AsString;
                         CdsKardexAMX_DESCRI.AsString        := SqlCdsKardexCAlmox.FieldByName('AMX_DESCRI').AsString;
                         CdsKardexPRD_REFER.AsString         := SqlCdsKardexCAlmox.FieldByName('PRD_REFER').AsString;
                         CdsKardexPRD_DESCRI.AsString        := SqlCdsKardexCAlmox.FieldByName('PRD_DESCRI').AsString;
                         CdsKardexPRD_UND.AsString           := SqlCdsKardexCAlmox.FieldByName('PRD_UND').AsString;
                         CdsKardexPRD_PMEDIOIPI.AsCurrency   := SqlCdsKardexCAlmox.FieldByName('PRD_PMEDIO').AsCurrency;
                         //
                         wAlmoxarifado                       := SqlCdsKardexCAlmox.FieldByName('AMX_CODIGO').AsString;
                         wRefer                              := SqlCdsKardexCAlmox.FieldByName('PRD_REFER').AsString;
                         //  gravar o total das Entradas e Saidas do Produto
                         while (wAlmoxarifado = SqlCdsKardexCAlmox.FieldByName('AMX_CODIGO').AsString) and (wRefer = SqlCdsKardexCAlmox.FieldByName('PRD_REFER').AsString) and not SqlCdsKardexCAlmox.eof  do
                          begin

                              if SqlCdsKardexCAlmox.FieldByName('PES_TIPO').AsString = 'E' then
                                 begin
                                     CdsKardexPRD_ENTRADA.AsCurrency  := SqlCdsKardexCAlmox.FieldByName('WQTDE').AsCurrency;
                                     CdsKardexPRD_SAIDA.AsCurrency    := 0;
                                 end
                              else
                                 begin
                                     CdsKardexPRD_SAIDA.AsCurrency    := SqlCdsKardexCAlmox.FieldByName('WQTDE').AsCurrency;
                                     if CdsKardexPRD_ENTRADA.AsCurrency = 0 then
                                        CdsKardexPRD_ENTRADA.AsCurrency := 0;
                                 end;
                             SqlCdsKardexCAlmox.Next;
                          end;
                         SqlCdsKardexCAlmox.EnableControls;

                         {Busca o saldo anterior da referente a referencia}
                         // MARCIO - wSeleciona2 := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+''' AND E1.PES_FLAG_CONTA = ''S''';
                         wSeleciona2 := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+'''';
                         wOrdem2     := ' ORDER BY E1.AMX_CODIGO,E1.PRD_REFER';
                         //
                         wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PMEDIO,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND,SUM(E1.PES_QTDE) AS WQTDE FROM PRD_ENSA E1 ';
                         wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) LEFT JOIN almox0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
                         wSql3 := ' GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PMEDIO,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND';
                         //
                         wSeleciona2:= wSeleciona2 + ' AND E1.AMX_CODIGO = '''+wAlmoxarifado+''' AND E1.PRD_REFER = '''+pRefer+'''';
                         if (Share('PRODUTOS')='E') then
                            wSeleciona2 := wSeleciona2 + ' AND E1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                         //
                         SqlCdsSaldoCAlmox.close;
                         SqlCdsSaldoCAlmox.CommandText := wSql1+wSql2+wSeleciona2+wSql3+wOrdem2;
                         SqlCdsSaldoCAlmox.Open;
                         SqlCdsSaldoCAlmox.DisableControls;
                         SqlCdsSaldoCAlmox.First;
                         wSaldo      := 0;
                         // Guardar o saldo do estoque = Inicial(Balanço) + Entradas - saidas
                         while not SqlCdsSaldoCAlmox.eof do
                          begin
                              if (SqlCdsSaldoCAlmoxPES_TIPO.AsString = 'E') or (SqlCdsSaldoCAlmoxPES_TIPO.AsString = 'B') then
                                 wSaldo := wSaldo + SqlCdsSaldoCAlmoxWQTDE.AsCurrency
                              else
                                 wSaldo := wSaldo - SqlCdsSaldoCAlmoxWQTDE.AsCurrency;
                              SqlCdsSaldoCAlmox.Next;
                          end;
                         SqlCdsSaldoCAlmox.EnableControls;
                         SqlCdsSaldoCAlmox.close;
                         CdsKardexPRD_SALDO.AsCurrency   := wSaldo;
                         CdsKardexPRD_ESTOQUE.AsCurrency := ((CdsKardexPRD_SALDO.AsCurrency+CdsKardexPRD_ENTRADA.AsCurrency)-CdsKardexPRD_SAIDA.AsCurrency);
                         CdsKardex.Post;
                     end;
                    SqlCdsKardexCAlmox.EnableControls;
                end
             else
                begin
                    {Busca o saldo anterior da referente a referencia}
                    // MARCIO - wSeleciona2 := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+''' AND E1.PES_FLAG_CONTA = ''S''';
                    wSeleciona2 := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+'''';
                    wOrdem2     := ' ORDER BY E1.PRD_REFER';
                    //
                    wSql1      := 'SELECT E1.PRD_REFER,E1.AMX_CODIGO,A1.AMX_DESCRI,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,SUM(E1.PES_QTDE) AS WQTDE ';
                    wSql2      := 'FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (E1.AMX_CODIGO = A1.AMX_CODIGO) ';
                    wSql3      := 'GROUP BY E1.PRD_REFER,E1.AMX_CODIGO,A1.AMX_DESCRI,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC ';
                    //
                    wSeleciona2:= wSeleciona2 + ' AND E1.PRD_REFER = '''+pRefer+'''';
                    if (Edt_Almox.Text <>'999') then
                       wSeleciona2 := wSeleciona2 + ' AND E1.AMX_CODIGO = '''+Edt_Almox.Text+'''';

                    if (Share('PRODUTOS')='E') then
                       wSeleciona2 := wSeleciona2 + ' AND E1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                    //
                    SqlCdsSaldoCAlmox.close;
                    SqlCdsSaldoCAlmox.CommandText := wSql1+wSql2+wSeleciona2+wSql3+wOrdem2;
                    SqlCdsSaldoCAlmox.Open;
                    SqlCdsSaldoCAlmox.DisableControls;
                    SqlCdsSaldoCAlmox.First;
                    while not SqlCdsSaldoCAlmox.eof do
                     begin
                         if CdsKardex.Locate('AMX_CODIGO;PRD_REFER',VarArrayOf([SqlCdsSaldoCAlmox.FieldByName('AMX_CODIGO').AsString,SqlCdsSaldoCAlmox.FieldByName('PRD_REFER').AsString]),[loPartialKey])=true then
                            CdsKardex.Edit
                         else
                            CdsKardex.Append;
                         //
                         CdsKardexAMX_CODIGO.AsString        := SqlCdsSaldoCAlmox.FieldByName('AMX_CODIGO').AsString;
                         CdsKardexAMX_DESCRI.AsString        := SqlCdsSaldoCAlmox.FieldByName('AMX_DESCRI').AsString;
                         CdsKardexPRD_REFER.AsString         := SqlCdsEstoque.FieldByName('PRD_REFER').AsString;
                         CdsKardexPRD_DESCRI.AsString        := SqlCdsEstoque.FieldByName('PRD_DESCRI').AsString;
                         CdsKardexPRD_UND.AsString           := SqlCdsEstoque.FieldByName('PRD_UND').AsString;
                         CdsKardexPRD_PMEDIOIPI.AsCurrency   := SqlCdsEstoque.FieldByName('PRD_PMEDIO').AsCurrency;
                         wAlmoxarifado                       := SqlCdsSaldoCAlmoxAMX_CODIGO.AsString;
                         {Busca Somente o produto do almoxarifado especificado}
                         wSql1       := 'SELECT E1.PRD_REFER,E1.AMX_CODIGO,A1.AMX_DESCRI,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,SUM(E1.PES_QTDE) AS WQTDE ';
                         wSql2       := 'FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (E1.AMX_CODIGO = A1.AMX_CODIGO) ';
                         wSql3       := 'GROUP BY E1.PRD_REFER,E1.AMX_CODIGO,A1.AMX_DESCRI,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC ';
                         wSeleciona := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+''' AND E1.PRD_REFER = '''+pRefer+''' AND E1.AMX_CODIGO = '''+wAlmoxarifado+''' AND E1.PES_FLAG_CONTA = ''S''';
                         wOrdem     := ' ORDER BY E1.AMX_CODIGO,E1.PRD_REFER';
                         //
                         DataCadastros.sqlUpdate.Close;
                         DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2+wSeleciona+wSql3+wOrdem;
                         DataCadastros.sqlUpdate.Open;
                         DataCadastros.sqlUpdate.DisableControls;
                         DataCadastros.sqlUpdate.First;
                         wSaldo     := 0;
                         // Guardar o saldo do estoque = Inicial(Balanço) + Entradas - saidas
                         while not DataCadastros.sqlUpdate.Eof do
                          begin
                              if (DataCadastros.sqlUpdate.FieldByName('PES_TIPO').AsString = 'E')OR (SqlCdsSaldoCAlmoxPES_TIPO.AsString = 'B') then
                                 wSaldo := wSaldo + DataCadastros.sqlUpdate.FieldByName('WQTDE').AsCurrency
                              else
                                 wSaldo := wSaldo - DataCadastros.sqlUpdate.FieldByName('WQTDE').AsCurrency;
                              DataCadastros.sqlUpdate.Next;
                          end;
                         DataCadastros.sqlUpdate.EnableControls;
                         CdsKardexPRD_SALDO.AsCurrency       := wSaldo;
                         CdsKardexPRD_ENTRADA.AsCurrency     := 0;
                         CdsKardexPRD_SAIDA.AsCurrency       := 0;
                         CdsKardexPRD_ESTOQUE.AsCurrency     := ((CdsKardexPRD_SALDO.AsCurrency+CdsKardexPRD_ENTRADA.AsCurrency)-CdsKardexPRD_SAIDA.AsCurrency);
                         CdsKardex.Post;
                         SqlCdsSaldoCAlmox.Next;
                     end;
                    SqlCdsSaldoCAlmox.EnableControls;

                    SqlCdsSaldoCAlmox.close;
                end;
         end
      else      // Sem almoxarifado : não é Multi_Almoxarifado
                          { REVISAO E CONFERIDO POR MARCIO EM 27/05/2011 - falta ajustar acima da mesma forma p Multi Almox }
         begin
             wOrdem := ' ORDER BY E1.PES_DATA';
             // marcio - 27/05/11 tirou o SUM E GROUB BY  DA QTDE
             wSql1 := 'SELECT E1.PES_DATA,E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PMEDIO,P1.PRD_PCUSTO,P1.IPI_CODIGO,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,P1.PRD_UND,E1.PES_QTDE FROM PRD_ENSA E1 ';
             // se 4 = Inventario por NCM
             if (LTBoxProdu.ItemIndex = 4) then
                 wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) LEFT JOIN IPI0000 P2 ON (P1.IPI_CODIGO = P2.IPI_CODIGO)'
             else
                 wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';

             //
             SqlCdsKardexSAlmox.Close;
             SqlCdsKardexSAlmox.CommandText := wSql1+wSql2+wSeleciona+wOrdem;
             SqlCdsKardexSAlmox.Open;
             if SqlCdsKardexSAlmox.IsEmpty = False then
                begin
                    SqlCdsKardexSAlmox.DisableControls;
                    SqlCdsKardexSAlmox.First;
                    while not SqlCdsKardexSAlmox.Eof do
                     begin
                         if CdsKardex.Locate('PRD_REFER',SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString,[])=true then
                            CdsKardex.Edit
                         else
                            CdsKardex.Append;
                         // criando os campos
                         CdsKardexPRD_REFER.AsString         := SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString;
                         CdsKardexPRD_DESCRI.AsString        := SqlCdsKardexSAlmox.FieldByName('PRD_DESCRI').AsString;
                         CdsKardexPRD_UND.AsString           := SqlCdsKardexSAlmox.FieldByName('PRD_UND').AsString;
                         CdsKardexPRD_PMEDIO.AsCurrency      := SqlCdsKardexSAlmox.FieldByName('PRD_PMEDIO').AsCurrency;
                         CdsKardexPRD_PMEDIOIPI.AsCurrency   := SqlCdsKardexSAlmox.FieldByName('PRD_PMEDIO').AsCurrency;
                         if (LTBoxProdu.ItemIndex = 4) then
                            begin
                             CdsKardexPRD_PCUSTO.AsCurrency      := SqlCdsKardexSAlmox.FieldByName('PRD_PCUSTO').AsCurrency;
                             CdsKardexIPI_CODIGO.AsCurrency      := SqlCdsKardexSAlmox.FieldByName('IPI_CODIGO').AsCurrency;
                            end;
                         wRefer                              := SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString;
                         //
                         SqlCdsKardexSAlmox.DisableControls;
                         //  Gravar todas as Entrada e saidas do produto
                         while (wRefer = SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString) and not SqlCdsKardexSAlmox.Eof do
                           begin
                              // datas para poder fazer comparação entre as datas
                              wDataSqlCdsKardex  := StrtoDate(SqlCdsKardexSAlmox.FieldByName('PES_DATA').AsString);
                              wDataInventario    := StrtoDate(EditDataI.text);
                              wDataInventarioFim := StrtoDate(EditDataF.text);

                             //Entrada e Entradas
                              if (SqlCdsKardexSAlmox.FieldByName('PES_TIPO').AsString = 'E') and (SqlCdsKardexSAlmox.FieldByName('PES_TIPDOC').AsString <> 'AC') then
                                 begin
                                 //  grava somente se a data é maior que o inicio do inventario do contratio vai gravar mais abaixo como saldo anterior
                                 if (wDataSqlCdsKardex >= wDataInventario) and (wDataSqlCdsKardex <= wDataInventarioFim)then
                                    begin
                                     CdsKardexPRD_ENTRADA.AsCurrency  := CdsKardexPRD_ENTRADA.AsCurrency + SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency;
                                    if CdsKardexPRD_SAIDA.AsCurrency = 0 then
                                        CdsKardexPRD_SAIDA.AsCurrency := 0;
                                    end;
                                 end;

                              if (SqlCdsKardexSAlmox.FieldByName('PES_TIPO').AsString = 'S') and (SqlCdsKardexSAlmox.FieldByName('PES_TIPDOC').AsString <> 'AC') then
                                 begin
                                 //  grava somente se a data é maior que o inicio do inventario do contratio vai gravar baixa abaixo como saldo anterior
                                 if (wDataSqlCdsKardex >= wDataInventario) and (wDataSqlCdsKardex <= wDataInventarioFim)then
                                     begin
                                     CdsKardexPRD_SAIDA.AsCurrency    := CdsKardexPRD_SAIDA.AsCurrency + SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency;
                                     if CdsKardexPRD_ENTRADA.AsCurrency = 0 then
                                        CdsKardexPRD_ENTRADA.AsCurrency := 0;
                                     end;
                                 end;
                              // Balanço Manual de Acerto  - então não considerar as Entradas e Saidas anteriores a este lançamento
                               if SqlCdsKardexSAlmox.FieldByName('PES_TIPDOC').AsString = 'AC' then
                                 begin
                                  CdsKardexPRD_ENTRADA.AsCurrency  := SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency;
                                  CdsKardexPRD_SAIDA.AsCurrency    := 0;
                                 end;


                              SqlCdsKardexSAlmox.Next;
                           end;

                         //Busca saldo anterior a data inicial solicitada
                         wSeleciona2 := ' WHERE E1.PES_DATA < '''+DataAmericana(EditDataI.Text)+''' and E1.PES_FLAG_CONTA = ''S''';
                         wOrdem2     := ' ORDER BY E1.PES_DATA,E1.PRD_REFER';

                         wSql1       := 'SELECT E1.PES_DATA,E1.PRD_REFER,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC,SUM(E1.PES_QTDE) AS WQTDE FROM PRD_ENSA E1 ';
                         wSql2       := 'GROUP BY E1.PES_DATA,E1.PRD_REFER,E1.PES_TIPO,E1.PES_DATA,E1.PES_TIPDOC ';

                         wSeleciona2 := wSeleciona2 + ' AND E1.PRD_REFER = '''+pRefer+'''';

                         if (Share('PRODUTOS')='E')  then
                            wSeleciona2 := wSeleciona2 + ' AND E1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';

                         SqlCdsSaldoSAlmox.close;
                         SqlCdsSaldoSAlmox.CommandText := wSql1+wSeleciona2+wSql2+wOrdem2;
                         SqlCdsSaldoSAlmox.Open;
                         SqlCdsSaldoSAlmox.DisableControls;
                         SqlCdsSaldoSAlmox.First;
                         wSaldo := 0;
                         // Guardar o saldo do estoque = Inicial(Balanço) + Entradas - saidas
                         while not SqlCdsSaldoSAlmox.eof do
                           begin
                              { Se a data da Entrada ou Saida é maior que a data inicial do inventario não precisa gravar como saldo
                              anterior(inicial) porque já foi gravado acima como Entrada ou Saida normal }
                              if (SqlCdsSaldoSAlmoxPES_TIPO.AsString = 'E') and (SqlCdsKardexSAlmox.FieldByName('PES_TIPDOC').AsString <> 'AC') then
                                   wSaldo := wSaldo + SqlCdsSaldoSAlmoxWQTDE.AsCurrency;
                              //
                              if (SqlCdsSaldoSAlmoxPES_TIPO.AsString = 'S') and (SqlCdsKardexSAlmox.FieldByName('PES_TIPDOC').AsString <> 'AC') then
                                   wSaldo := wSaldo - SqlCdsSaldoSAlmoxWQTDE.AsCurrency;

                              // lançamento de BALANÇO manual
                              if (SqlCdsSaldoSAlmoxPES_TIPDOC.AsString = 'AC') then
                                    wSaldo := SqlCdsSaldoSAlmoxWQTDE.AsCurrency;

                              SqlCdsSaldoSAlmox.Next;
                          end;

                         //
                         CdsKardexPRD_SALDO.AsCurrency   := wSaldo;
                         CdsKardexPRD_ESTOQUE.AsCurrency := ((CdsKardexPRD_SALDO.AsCurrency+CdsKardexPRD_ENTRADA.AsCurrency)-CdsKardexPRD_SAIDA.AsCurrency);
                         SqlCdsSaldoSAlmox.close;
                         CdsKardex.Post;
                     end;
                    SqlCdsKardexSAlmox.EnableControls;
                end;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao buscar o produto no Kardex ! '+e.message));
    end;
end;

procedure TFormGimpManutMov.EditDataIExit(Sender: tObject);
begin
    if (EditDataI.Text <> '  /  /    ') then
       begin
           EditDataI.Text := PreenchaData(EditDataI.Text);
           if (not TestaDataStr(EditDataI.Text)) then
              EditDataI.SetFocus;
       end;
end;

procedure TFormGimpManutMov.EditDataFExit(Sender: tObject);
begin
    if (EditDataF.Text <> '  /  /    ') then
       begin
           EditDataF.Text := PreenchaData(EditDataF.Text);
           if (not TestaDataStr(EditDataF.Text)) then
              EditDataF.SetFocus;
       end;
    if (EditDataF.Date < EditDataI.Date) then
       begin
           uteis.aviso('Data Final menor que a Data Inicial !');
           EditDataF.SetFocus;
       end;
end;

procedure TFormGimpManutMov.SqlCdsRelConsmCustoCalcFields(
  DataSet: TDataSet);
begin

 if SqlCdsRelConsmCustoPES_TIPO.AsString = 'E' then
       begin
           SqlCdsRelConsmCustoPES_ENTRADA_CC.AsCurrency := SqlCdsRelConsmCustoPES_QTDE.AsCurrency;
           SqlCdsRelConsmCustoPES_SAIDA_CC.AsCurrency   := 0;
       end
    else
       begin
           SqlCdsRelConsmCustoPES_SAIDA_CC.AsCurrency   := SqlCdsRelConsmCustoPES_QTDE.AsCurrency;
           SqlCdsRelConsmCustoPES_ENTRADA_CC.AsCurrency := 0;
       end;

  SqlCdsRelConsmCustoPES_TOTACMEDIO_CC.AsCurrency := SqlCdsRelConsmCustoPES_QTDE.AsCurrency * SqlCdsRelConsmCustoPRD_PMEDIO.AsCurrency;
end;

end.
