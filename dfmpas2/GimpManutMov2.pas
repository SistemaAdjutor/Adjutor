unit GimpManutMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,  rxToolEdit, RwFunc, DB, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS;

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
    Group05: TGroupBox;
    Label5: TLabel;
    CbxProduMov: TComboBox;
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
    SqlCdsRelManutMovPRD_DESCRI: TStringField;
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
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
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
    ppDBCalc5: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalcEntrada: TppDBCalc;
    ppDBCalcSaida: TppDBCalc;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppVarSaldo: TppVariable;
    raCodeModule1: TraCodeModule;
    LBL_00_TITULO3: TppLabel;
    LBL_01_TITULO3: TppLabel;
    raCodeModule2: TraCodeModule;
    SqlCdsKardexSAlmox: TSQLClientDataSet;
    CdsKardex: TClientDataSet;
    CdsKardexAMX_CODIGO: TStringField;
    CdsKardexAMX_DESCRI: TStringField;
    CdsKardexPRD_REFER: TStringField;
    CdsKardexPRD_DESCRI: TStringField;
    CdsKardexPRD_UND: TStringField;
    CdsKardexPRD_ENTRADA: TCurrencyField;
    CdsKardexPRD_SAIDA: TCurrencyField;
    CdsKardexPRD_ESTOQUE: TCurrencyField;
    DsKardex: TDataSource;
    ppRelKardex: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLine6: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine9: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBTextDescri: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
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
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLineGrupo03: TppLine;
    ppLabel32: TppLabel;
    ppDBText28: TppDBText;
    ppDBText31: TppDBText;
    SqlCdsRelManutMovAMX_DESCRI: TStringField;
    ppLineGrupo00: TppLine;
    ppLblRef: TppLabel;
    ppLblDescri: TppLabel;
    SqlCdsKardexCAlmox: TSQLClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FMTBCdField1: TFMTBCdField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    LBL_02_LTITULO3: TppLabel;
    Edt_Almox: TEdit;
    Edt_Tipo: TEdit;
    Edt_Grupo: TEdit;
    Edt_Refer: TEdit;
    CdsKardexPRD_PMEDIO: TCurrencyField;
    ppLabel33: TppLabel;
    ppDBText32: TppDBText;
    ppDBKardex: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule3: TraCodeModule;
    ppLabel34: TppLabel;
    ppVarTotal: TppVariable;
    ppLblUnd: TppLabel;
    ppLblEntrada: TppLabel;
    ppLblSaida: TppLabel;
    ppLblEstoque: TppLabel;
    ppLblPmedio: TppLabel;
    ppLblTotal: TppLabel;
    ppVariable: TppVariable;
    SqlCdsKardexCAlmoxWPRECOMEDIO: TFloatField;
    SqlCdsKardexSAlmoxPRD_REFER: TStringField;
    SqlCdsKardexSAlmoxPRD_DESCRI: TStringField;
    SqlCdsKardexSAlmoxPES_TIPO: TStringField;
    SqlCdsKardexSAlmoxWQTDE: TFMTBCdField;
    SqlCdsKardexSAlmoxWPRECOMEDIO: TFloatField;
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
    procedure CbxProduMovClick(Sender: tObject);
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
    procedure Edt_ReferEnter(Sender: tObject);
    procedure Edt_ReferExit(Sender: tObject);
  private
    {campos}
    CampoBox   : TComboBox;
    CampoData  : TDateEdit;
    CampoEdit  : TEdit;
    { Private declarations }
    wSql1,wSql2,wSql3,wSeleciona,wOrdem,wDataI,wDataF,wMovimento : String;
    wCodTipo   : String[3];
    wPmedio,
    wQtdeE,
    wQtdeS,
    wTotPreco : Currency;

    procedure LayOutSelecao;
    procedure LayOutRelatorio;
  public
    { Public declarations }
  end;

var
  FormGimpManutMov: TFormGimpManutMov;

implementation

{$R *.dfm}

uses DataCad,DataCad1, ADJ0001, Men0001;





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
    {Carregar os Produtos na Combo}
    try
      SqlCdsProduMov.Close;
      SqlCdsProduMov.CommandText := SQLDEF('PRODUTOS','SELECT PRD_REFER, PRD_DESCRI, EMP_CODIGO FROM PRD0000','','PRD_DESCRI','');
      SqlCdsProduMov.Open;
      SqlCdsProduMov.First;
      while not SqlCdsProduMov.Eof do
        begin
            CbxProduMov.Items.Add(SqlCdsProduMovPRD_DESCRI.AsString);
            SqlCdsProduMov.Next;
        end;
      CbxProduMov.ItemIndex := 0;
      SqlCdsProduMov.First;
      Edt_Refer.Text := SqlCdsProduMovPRD_REFER.AsString;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela de Produtos PRD0000 !'+E.MESSAGE))
    end;
    {Carregando os Tipos de Relatorios}
    LTBoxProdu.Items.Add('Ficha de Movimento de Produtos');
    LTBoxProdu.Items.Add('Relatório do Estoque Atual (Movimento Kardex)');
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
end;


procedure TFormGimpManutMov.RadGlobalClick(Sender: tObject);
begin
    LayOutSelecao;
end;

procedure TFormGimpManutMov.BitOkClick(Sender: tObject);
Var
  wPrd_Refer : String;
begin
    Screen.Cursor := crHourGlass;
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if (LTBoxProdu.ItemIndex = 0) then
       begin
           {Aqui faz o Filtro}
           wSeleciona := 'WHERE Y4.PES_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''';
           {Coloca os Cabeçalhos no Relatorio}
           LBL_00_TITULO1.Caption := 'RELATÓRIO DE ESTOQUE - MOVIMENTO KARDEX';
           LBL_00_TITULO2.Caption := 'Movimento de: '+wMovimento+' - entre o Periodo: '+EditDataI.Text+' Até: '+EditDataF.Text;
           LBL_01_TITULO1.Caption := 'FICHA DE MOVIMENTO DE PRODUTOS (Kardex)';
           LBL_01_TITULO2.Caption := 'Movimento de: '+wMovimento+' - entre o Periodo: '+EditDataI.Text+' Até: '+EditDataF.Text;
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
                  if (CbxAlmox.ItemIndex <> 0) then
                     begin
                         wSeleciona := wSeleciona + ' AND Y4.AMX_CODIGO = '''+SqlCdsAlmoxAMX_CODIGO.AsString+'''';
                         LBL_00_TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                         LBL_01_TITULO3.Caption := 'Almoxarifado: '+SqlCdsAlmoxAMX_CODIGO.AsString+' - '+SqlCdsAlmoxAMX_DESCRI.AsString;
                     end
                  else
                     begin
                         LBL_00_TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADO';
                         LBL_01_TITULO3.Caption := 'Almoxarifado: TODOS OS ALMOXARIFADO';
                     end;
              end;
           if CbxTipoMov.TEXT <> 'TODOS OS TIPOS' then
              begin
                  wSeleciona := wSeleciona + ' AND Y1.PTI_CODIGO = '''+SqlCdsTipoMovPTI_CODIGO.AsString+'''';
              end;
           if CbxGrupoMov.Text <> 'TODOS OS GRUPOS' then
              begin
                  wSeleciona := wSeleciona + ' AND Y1.PGR_CODIGO = '''+SqlCdsGrupoMoviPGR_CODIGO.AsString+'''';
              end;
           if (RadInd.checked ) then
              begin
                  wSeleciona := wSeleciona + ' AND Y1.PRD_REFER = '''+SqlCdsProduMovPRD_REFER.AsString+'''';
              end;
           {Criar o SQL}
           try
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    SqlCdsRelManutMov.Close;
                    SqlCdsRelManutMov.CommandText := SQLDEF('PRODUTOS','SELECT Y1.PTI_CODIGO,Y2.PTI_DESCRI,Y3.PGR_DESCRI,Y1.PGR_CODIGO,Y1.PRD_REFER,Y1.PRD_DESCRI,Y1.PRD_UND,Y1.EMP_CODIGO,Y4.PES_DATA,Y4.PES_QTDE,Y4.PES_VALOR,'+
                                                            'Y4.PES_TIPDOC,Y4.PES_NUMDOC,Y4.PES_TIPO,Y4.AMX_CODIGO,A1.AMX_DESCRI FROM PRD_ENSA Y4 JOIN PRD0000 Y1 ON (Y4.PRD_REFER = Y1.PRD_REFER) LEFT JOIN PRD_TIPO Y2 ON (Y2.PTI_CODIGO = Y1.PTI_CODIGO) '+
                                                            'LEFT JOIN PRD_GRUPO Y3 ON (Y3.PGR_CODIGO = Y1.PGR_CODIGO) LEFT JOIN ALMOX0000 A1 ON (Y4.AMX_CODIGO = A1.AMX_CODIGO)',wSeleciona,'Y1.PTI_CODIGO,Y1.PRD_DESCRI,Y4.PES_DATA','Y4.');
                    SqlCdsRelManutMov.Open;
                end
             else
                begin
                    SqlCdsRelManutMov.Close;
                    SqlCdsRelManutMov.CommandText := SQLDEF('PRODUTOS','SELECT Y1.PTI_CODIGO,Y2.PTI_DESCRI,Y3.PGR_DESCRI,Y1.PGR_CODIGO,Y1.PRD_REFER,Y1.PRD_DESCRI,Y1.PRD_UND,Y1.EMP_CODIGO,Y4.PES_DATA,Y4.PES_QTDE,Y4.PES_VALOR,'+
                                                            'Y4.PES_TIPDOC,Y4.PES_NUMDOC,Y4.PES_TIPO FROM PRD_ENSA Y4 JOIN PRD0000 Y1 ON (Y4.PRD_REFER = Y1.PRD_REFER) LEFT JOIN PRD_TIPO Y2 ON (Y2.PTI_CODIGO = Y1.PTI_CODIGO) '+
                                                            'LEFT JOIN PRD_GRUPO Y3 ON (Y3.PGR_CODIGO = Y1.PGR_CODIGO) ',wSeleciona,'Y1.PTI_CODIGO,Y1.PRD_DESCRI,Y4.PES_DATA','Y4.');
                    SqlCdsRelManutMov.Open;
                end;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+e.message));
           end;
           {Chama o Relatorio}
           if RadGlobal.checked  then
              begin
                  if RadVideo.checked  then
                     begin
                         ppRelManutMov00.DeviceType := 'Screen';
                     end;
                  if RadImpressora.checked  then
                     begin
                         ppRelManutMov00.DeviceType := 'Printer';
                         ppRelManutMov00.ShowPrintDialog := true;
                     end;
                  if RadText.checked  then
                     begin
                         ppRelManutMov00.ShowPrintDialog := False;
                         ppRelManutMov00.DeviceType   := 'ReportTextFile';
                         ppRelManutMov00.TextFileName := 'C:\Adjutor\Relatorios\ppRelManutMov00.TXT';
                     end;
                  ppRelManutMov00.Print;
              end
           else
              begin
                  if RadVideo.checked  then
                     begin
                         ppRelManutMovIND.DeviceType := 'Screen';
                     end;
                  if RadImpressora.checked  then
                     begin
                         ppRelManutMovIND.DeviceType := 'Printer';
                         ppRelManutMovInd.ShowPrintDialog := true;
                     end;
                  if RadText.checked  then
                     begin
                         ppRelManutMovIND.ShowPrintDialog := False;
                         ppRelManutMovIND.DeviceType   := 'ReportTextFile';
                         ppRelManutMovIND.TextFileName := 'C:\Adjutor\Relatorios\ppRelManutMov00.TXT';
                     end;
                  ppRelManutMovIND.Print;
              end;
       end;
    if (LTBoxProdu.ItemIndex = 1) then
       begin
           FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
           wDataI          := DateToStr(EditDataI.Date);
           wDataF          := DateToStr(EditDataF.Date);
           FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
           wSeleciona      := ' WHERE E1.PES_DATA BETWEEN '''+wDataI+''' AND '''+wDataF+'''';


           if (dbInicio.Empresa.wMultiAlmox = 'S') then
              begin
                  wOrdem       := ' ORDER BY A1.AMX_DESCRI,P1.PRD_DESCRI';
              end
           else
              begin
//                  wOrdem       := ' ORDER BY P1.PRD_DESCRI';
                  wOrdem       := ' ORDER BY E1.PRD_REFER,E1.PES_TIPO';
              end;
           {Seleciona o Tipo de Produtos}
           if (Edt_Tipo.Text<>'999') then
              begin
                  LBL_02_LTITULO3.Caption := 'Tipo : '+Edt_Tipo.Text+' '+SqlCdsTipoMovPTI_DESCRI.AsString;
                  wSeleciona := wSeleciona + ' AND P1.PTI_CODIGO = '''+Edt_Tipo.Text+'''';
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
                  wSeleciona := wSeleciona + ' AND P1.PGR_CODIGO = '''+Edt_Grupo.Text+'''';
              end
           else
              begin
                  LBL_02_LTITULO3.Caption := LBL_02_LTITULO3.Caption +' - Grupo : TODOS OS GRUPOS';
                  wSeleciona := wSeleciona + '';
              end;
           LBL_02_EMPRESA.Caption  := dbInicio.Empresa.Razao;
           LBL_02_LTITULO1.Caption := 'RELATÓRIO DO ESTOQUE ATUAL (MOVIMENTO KARDEX)';
           LBL_02_LTITULO2.Caption := 'Movimento do Kardex no período de : '+EditDataI.Text+' até '+EditDataF.Text;
           if (dbInicio.Empresa.wMultiAlmox = 'S') then
              begin
                  ppGroupHeaderGrupo.Visible := True;
                  ppLineGrupo00.Visible      := False;
                  ppLblRef.Visible           := False;
                  ppLblDescri.Visible        := False;
                  ppLblUnd.Visible           := False;
                  ppLblEntrada.Visible       := False;
                  ppLblSaida.Visible         := False;
                  ppLblEstoque.Visible       := False;
                  ppLblPmedio.Visible        := False;
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
                  ppLineGrupo00.Visible      := True;
                  ppLblRef.Visible           := True;
                  ppLblDescri.Visible        := True;
                  ppLblUnd.Visible           := True;
                  ppLblEntrada.Visible       := True;
                  ppLblSaida.Visible         := True;
                  ppLblEstoque.Visible       := True;
                  ppLblPmedio.Visible        := True;
                  ppLblTotal.Visible         := True;
                  ppLineGrupo01.Visible      := False;
                  ppLineGrupo02.Visible      := False;
                  ppLineGrupo03.Visible      := False;
              end;
           try
             if Share('PRODUTOS') = 'E' then
                begin
                    wSeleciona := wSeleciona + ' AND E1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
                end;
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND,SUM(E1.PES_QTDE) AS WQTDE CAST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI)/100) *E1.PES_QTDE) AS FLOAT) AS WPRECOMEDIO ';
                    wSql2 := 'FROM PRD_ENSA E1 LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) LEFT JOIN almox0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
                    wSql3 := 'GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND ';

//                    wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND,SUM(E1.PES_QTDE) AS WQTDE FROM PRD_ENSA E1 ';
//                    wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) LEFT JOIN almox0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ';
//                    wSql3 := 'GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,E1.AMX_CODIGO,A1.AMX_DESCRI,P1.PRD_UND ';
                    SqlCdsKardexCAlmox.Close;
                    SqlCdsKardexCAlmox.CommandText := wSql1+wSql2+wSeleciona+wSql3+wOrdem;
                    SqlCdsKardexCAlmox.Open;
                    if not CdsKardex.Active then
                       CdsKardex.CreateDataSet;
                    if SqlCdsKardexCAlmox.IsEmpty = False then
                       begin
                           {limpar arquivo}
                           CdsKardex.EmptyDataSet;
                           SqlCdsKardexCAlmox.First;
                           SqlCdsKardexCAlmox.DisableControls;
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
                                CdsKardexPRD_ESTOQUE.AsCurrency     := (CdsKardexPRD_ENTRADA.AsCurrency-CdsKardexPRD_SAIDA.AsCurrency);
                                CdsKardex.Post;
                                SqlCdsKardexCAlmox.Next;
                            end;
                           SqlCdsKardexCAlmox.EnableControls;
                       end;
                end
             else
                begin
//                    wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,E1.PES_DATA,E1.PES_TIPO,E1.PES_QTDE,E1.PES_VALOR,E1.PES_IPI FROM PRD_ENSA E1 ';
//                    wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';

                    wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,SUM(E1.PES_QTDE) AS WQTDE,CAST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI)/100) *E1.PES_QTDE) AS FLOAT) AS WPRECOMEDIO FROM PRD_ENSA E1 ';
                    wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';
                    wSql3 := 'GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO ';

//                    wSql1 := 'SELECT E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,P1.PRD_UND,SUM(E1.PES_QTDE) AS WQTDE FROM PRD_ENSA E1 ';
//                    wSql2 := 'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';
//                    wSql3 := 'GROUP BY E1.PRD_REFER,P1.PRD_DESCRI,E1.PES_TIPO,P1.PRD_UND ';
                    SqlCdsKardexSAlmox.Close;
                    SqlCdsKardexSAlmox.CommandText := wSql1+wSql2+wSeleciona+wOrdem;
                    SqlCdsKardexSAlmox.Open;
                    if not CdsKardex.Active then
                       CdsKardex.CreateDataSet;
                    if SqlCdsKardexSAlmox.IsEmpty = False then
                       begin
                           {limpar arquivo}
                           CdsKardex.EmptyDataSet;
                           SqlCdsKardexSAlmox.First;
                           SqlCdsKardexSAlmox.DisableControls;
                           while not SqlCdsKardexSAlmox.Eof do
                            begin
                                if CdsKardex.Locate('PRD_REFER',SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString,[])=true then
                                   CdsKardex.Edit
                                else
                                   CdsKardex.Append;
                                CdsKardexPRD_REFER.AsString         := SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString;
                                CdsKardexPRD_DESCRI.AsString        := SqlCdsKardexSAlmox.FieldByName('PRD_DESCRI').AsString;
                                CdsKardexPRD_UND.AsString           := SqlCdsKardexSAlmox.FieldByName('PRD_UND').AsString;
                                wPmedio:=0;wQtdeE:=0;wQtdeS:=0;wTotPreco:=0;
                                wPrd_Refer := SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString;
                                while (wPrd_Refer=SqlCdsKardexSAlmox.FieldByName('PRD_REFER').AsString) and not SqlCdsKardexSAlmox.eof do
                                 begin
                                     if SqlCdsKardexSAlmox.FieldByName('PES_TIPO').AsString = 'E' then
                                        begin
                                            wQtdeE    := wQtdeE    + SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency;
                                            wTotPreco := wTotPreco + (((SqlCdsKardexSAlmox.FieldByName('PES_VALOR').AsCurrency)+(SqlCdsKardexSAlmox.FieldByName('PES_VALOR').AsCurrency*SqlCdsKardexSAlmox.FieldByName('PES_IPI').AsCurrency)/100)*SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency);
                                            //CdsKardexPRD_ENTRADA.AsCurrency  := SqlCdsKardexSAlmox.FieldByName('WQTDE').AsCurrency;
                                            //CdsKardexPRD_SAIDA.AsCurrency    := 0;
                                        end
                                     else
                                        begin
                                            wQtdeS    := wQtdeS    + SqlCdsKardexSAlmox.FieldByName('PES_QTDE').AsCurrency;
//                                            CdsKardexPRD_SAIDA.AsCurrency      := SqlCdsKardexSAlmox.FieldByName('WQTDE').AsCurrency;
//                                            if CdsKardexPRD_ENTRADA.AsCurrency = 0 then
//                                               CdsKardexPRD_ENTRADA.AsCurrency := 0;
                                        end;
//                                       CdsKardexPRD_ESTOQUE.AsCurrency     := (CdsKardexPRD_ENTRADA.AsCurrency-CdsKardexPRD_SAIDA.AsCurrency);
                                       CdsKardexPRD_ENTRADA.AsCurrency     := wQtdeE;
                                       CdsKardexPRD_SAIDA.AsCurrency       := wQtdeS;
                                       CdsKardexPRD_ESTOQUE.AsCurrency     := (wQtdeE-wQtdeS);
                                       wPmedio := wTotPreco;
                                       SqlCdsKardexSAlmox.Next;
                                   end;
                                if (wQtdeE>0) and (wPmedio>0) then
                                   CdsKardexPRD_PMEDIO.AsCurrency      := (wPmedio/wQtdeE)
                                else
                                   CdsKardexPRD_PMEDIO.AsCurrency      := 0;
                                CdsKardex.Post;
//                                SqlCdsKardexSAlmox.Next;
                            end;
                           SqlCdsKardexSAlmox.EnableControls;
                       end;
                end;
             CdsKardex.DisableControls;
             CdsKardex.First;
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
                    ppRelKardex.TextFileName    := FrmMenu.PathNewRel+'\KARDEX.TXT';
                    uteis.aviso(pchar('Relatório salvo na pasta : '+trim(FrmMenu.PathNewRel)+'\KARDEX.TXT'));
                end;
             ppRelKardex.Print;
             CdsKardex.EnableControls;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
           end;
       end;
    Screen.Cursor := crDefault;
    CbxAlmox.ItemIndex    := 0;
    CbxAlmox.Text         := 'TODOS OS ALMOXARIFADOS';
    CbxTipoMov.ItemIndex  := 0;
    CbxTipoMov.Text       := 'TODOS OS TIPOS';
    CbxGrupoMov.ItemIndex := 0;
    CbxGrupoMov.Text      := 'TODOS OS GRUPOS';
    CbxProduMov.ItemIndex := 0;
    EditDataI.SetFocus;
    EditDataI.SelectAll;
    exit;
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

procedure TFormGimpManutMov.CbxProduMovClick(Sender: tObject);
begin
    if (SqlCdsProduMov.Locate('PRD_DESCRI',CbxProduMov.Text,[])=true) then
       begin
           Edt_Refer.Text := SqlCdsProduMovPRD_REFER.AsString;
       end
    else
       begin
           Edt_Refer.Text        := '';
           CbxProduMov.ItemIndex := 0;
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
           LayOutSelecao;
       end;
    if (LTBoxProdu.ItemIndex = 1) then
       begin
           if dbInicio.Empresa.wMultiAlmox = 'S' then
              begin
                  {Desabilita}
                  Group01.Visible := False;
                  Group03.Visible := False;
                  Group05.Visible := False;
                  {Habilita}
                  Group02.Visible := True;
                  Group07.Visible := True;
                  Group04.Visible := True;
                  Group06.Visible := True;
                  {Posiciona}
                  Group02.Top     := 99;
                  Group07.Top     := 140;
                  Group04.Top     := 182;
                  Group06.Top     := 252;
              end
           else
              begin
                  {Desabilita}
                  Group01.Visible := False;
                  Group03.Visible := False;
                  Group05.Visible := False;
                  Group07.Visible := False;
                  {Habilita}
                  Group02.Visible := True;
                  Group04.Visible := True;
                  Group06.Visible := True;
                  {Posiciona}
                  Group02.Top     := 99;
                  Group04.Top     := 140;
                  Group06.Top     := 210;
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
                  Group05.Visible := True;
                  Group07.Visible := true;
                  {Desabilitar group}
                  Group04.Visible := false;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group05.Top     := 263;
                  Group06.Top     := 302;
                  Group07.Top     := 222;
              end
           else
              begin
                  Group01.Visible := True;
                  Group02.Visible := True;
                  Group03.Visible := True;
                  Group05.Visible := True;
                  {Desabilitar group}
                  Group04.Visible := false;
                  Group07.Visible := False;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group05.Top     := 222;
                  Group06.Top     := 263;
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
                  Group07.Visible := true;
                  {Desabilita Groups}
                  Group05.Visible := False;
                  {posiciona}
                  Group01.Top     := 99;
                  Group02.Top     := 140;
                  Group03.Top     := 182;
                  Group07.Top     := 222;
                  Group04.Top     := 263;
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
                  Group05.Visible := False;
                  Group07.Visible := false;
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
{
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
}    
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

procedure TFormGimpManutMov.Edt_ReferEnter(Sender: tObject);
begin
    Edt_Refer.SelectAll;
end;

procedure TFormGimpManutMov.Edt_ReferExit(Sender: tObject);
begin
    if (Edt_Refer.Text <>'') then
       begin
           if (SqlCdsProduMov.Locate('PRD_REFER',Edt_Refer.Text,[])=True) then
              begin
                  CbxProduMov.Text := SqlCdsProduMovPRD_DESCRI.AsString;
              end
           else
              begin
                  Edt_Refer.Text := '';
                  CbxProduMov.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Refer.Text := '';
           CbxProduMov.ItemIndex := 0;
       end;
end;

end.
