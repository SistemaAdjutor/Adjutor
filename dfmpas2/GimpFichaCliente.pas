unit GimpFichaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, ppModule, raCodMod, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DB, DBClient, DBLocal, DBLocalS, StdCtrls, Buttons, RwFunc,
  ppStrtch, ppSubRpt, Data.DBXFirebird, ppParameter, ppDesignLayer, SimpleDS;

type
  TFormGimpFichas = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitConfig: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadArqTexto: TRadioButton;
    Bit_Sair: TBitBtn;
    SqlCdsRel05: TSQLClientDataSet;
    DsRel05: TDataSource;
    ppRepRel05: TppReport;
    ppRepRel06: TppReport;
    DsRel06: TDataSource;
    SqlCdsRel06: TSQLClientDataSet;
    ppDBRel06: TppDBPipeline;
    SqlCdsRel06NF_NOTANUMBER: TStringField;
    SqlCdsRel06NF_EMISSAO: TDateField;
    SqlCdsRel06NF_CANCELADA: TStringField;
    SqlCdsRel06CLI_CODIGO: TStringField;
    SqlCdsRel06PRD_REFER: TStringField;
    SqlCdsRel06PRD_DESCRI: TStringField;
    SqlCdsRel06NF_QTDE: TFMTBCdField;
    SqlCdsRel06NF_PRECO: TFMTBCdField;
    SqlCdsRel06NF_IPIALIQ: TFMTBCdField;
    pp06HeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    LBL_06_EMPRESA: TppLabel;
    LBL_06_TITULO1: TppLabel;
    LBL_06_TITULO2: TppLabel;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel39: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel40: TppLabel;
    ppDBText38: TppDBText;
    ppLabel41: TppLabel;
    ppDBText39: TppDBText;
    ppLabel42: TppLabel;
    ppDBText40: TppDBText;
    ppLabel43: TppLabel;
    ppDBText41: TppDBText;
    ppLine6: TppLine;
    ppLabel44: TppLabel;
    ppDBText42: TppDBText;
    ppLabel45: TppLabel;
    ppDBText43: TppDBText;
    ppLabel46: TppLabel;
    ppDBText44: TppDBText;
    ppLabel47: TppLabel;
    ppDBText45: TppDBText;
    ppLabel48: TppLabel;
    ppDBText46: TppDBText;
    ppLabel49: TppLabel;
    ppDBText47: TppDBText;
    ppLabel50: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel51: TppLabel;
    ppDBText50: TppDBText;
    ppLabel52: TppLabel;
    ppDBText51: TppDBText;
    ppLabel53: TppLabel;
    ppDBText52: TppDBText;
    ppLabel54: TppLabel;
    ppDBText53: TppDBText;
    ppLabel55: TppLabel;
    ppDBText54: TppDBText;
    ppLine7: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    pp06DetailBand1: TppDetailBand;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel60: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    raCodeModule2: TraCodeModule;
    SqlCdsRel051: TSQLClientDataSet;
    DsRel051: TDataSource;
    ppDBRel051: TppDBPipeline;
    SqlCdsRel05CLI_CODIGO: TStringField;
    SqlCdsRel05CLI_RAZAO: TStringField;
    SqlCdsRel05CLI_CGC: TStringField;
    SqlCdsRel05CLI_ENDERE: TStringField;
    SqlCdsRel05CLI_BAIRRO: TStringField;
    SqlCdsRel05CLI_CIDADE: TStringField;
    SqlCdsRel05CLI_UF: TStringField;
    SqlCdsRel05CLI_CEP: TStringField;
    SqlCdsRel05CLI_CXPOST: TStringField;
    SqlCdsRel05CLI_INSC: TStringField;
    SqlCdsRel05CLI_FONE: TStringField;
    SqlCdsRel05CLI_FAX: TStringField;
    SqlCdsRel05CLI_DTULTCOM: TSQLTimeStampField;
    SqlCdsRel05CLI_CONTATO: TStringField;
    SqlCdsRel05CLI_FUNCONT: TStringField;
    SqlCdsRel05CLI_EMAIL: TStringField;
    SqlCdsRel05CLI_HOME: TStringField;
    SqlCdsRel05CLI_ENDFAT: TStringField;
    SqlCdsRel05CLI_CIDFAT: TStringField;
    SqlCdsRel05CLI_UFFAT: TStringField;
    SqlCdsRel05CLI_CEPFAT: TStringField;
    SqlCdsRel05CLI_ENDENTR: TStringField;
    SqlCdsRel05CLI_FONENTR: TStringField;
    SqlCdsRel05CLI_CIDENTR: TStringField;
    SqlCdsRel05CLI_CEPENTR: TStringField;
    SqlCdsRel05CLI_UFENTR: TStringField;
    SqlCdsRel05REP_CODIGO: TStringField;
    SqlCdsRel05REP_NOME: TStringField;
    ppDBRel05: TppDBPipeline;
    SqlCdsRel051ATRASO_CC: TStringField;
    SqlCdsRel051FAT_CODIGO: TStringField;
    SqlCdsRel051FPC_NUMER: TStringField;
    SqlCdsRel051FPC_DTEMIS: TSQLTimeStampField;
    SqlCdsRel051FPC_VENCTO: TSQLTimeStampField;
    SqlCdsRel051FPC_PAGTO: TSQLTimeStampField;
    SqlCdsRel051FPC_VLPARC: TFMTBCdField;
    SqlCdsRel051FPC_VLPAGO: TFMTBCdField;
    SqlCdsRel051CLI_CODIGO: TStringField;
    SqlCdsRel051FPC_STATUS: TStringField;
    SqlCdsRel051FAT_CANCELADA: TStringField;
    pp05HeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    LBL_05_EMPRESA: TppLabel;
    LBL_05_TITULO1: TppLabel;
    LBL_05_TITULO2: TppLabel;
    ppLine12: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    pp05DetailBand1: TppDetailBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppLabel14: TppLabel;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    ppLine13: TppLine;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    SubRepFinanc: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine11: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine9: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine10: TppLine;
    ppLabel61: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    nomeCPFCNPJ: TppLabel;
    CPFCNPJ: TppLabel;
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure pp05HeaderBand1BeforePrint(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure pp06HeaderBand1BeforePrint(Sender: tObject);
    procedure SpeedButton3Click(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SqlCdsRel051CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure CPFCNPJGetText(Sender: TObject; var Text: string);
  private
        wSql1,wSql2,wSql3,wSeleciona,wOrdem :String;
        //fwclicodigo : string;

  public
       // Property wclicodigo : string Read fwclicodigo Write fwclicodigo ;
  end;

var
  FormGimpFichas: TFormGimpFichas;

implementation

uses DataCad, uteis, ufrmpreviewrb, iniciodb, PesquisaClientesForm;

{$R *.dfm}

procedure TFormGimpFichas.SpeedButton1Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CGC,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_CEP,C1.CLI_CXPOST,C1.CLI_INSC,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_DTULTCOM,C1.CLI_CONTATO,C1.CLI_FUNCONT,C1.CLI_EMAIL,C1.CLI_HOME,';
      wSql2      := 'C1.CLI_ENDFAT,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_UFFAT,C1.CLI_CEPFAT,C1.CLI_ENDENTR,C1.CLI_FONENTR,C1.CLI_CIDENTR,C1.CLI_CEPENTR,C1.CLI_UFENTR,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 ';
      wSql3      := 'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO) ';
      wSeleciona := 'WHERE C1.CLI_CODIGO = '''+wclicodigo+'''';
      wOrdem     := 'C1.CLI_CODIGO';
      SqlCdsRel05.Close;
      SqlCdsRel05.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'C1.');
      SqlCdsRel05.Open;
      wSql1      := 'SELECT F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_DTEMIS,F1.FPC_VENCTO,F1.FPC_PAGTO,F1.FPC_VLPARC,F1.FPC_VLPAGO,F1.CLI_CODIGO,F1.FPC_STATUS,F2.FAT_CANCELADA FROM FAT_PC01 F1 ';
      wSql2      := 'JOIN FAT0000 F2 ON (F2.FAT_CODIGO = F1.FAT_CODIGO) AND (F1.EMP_CODIGO = F2.EMP_CODIGO)';
      wSeleciona := 'WHERE F1.FPC_EXCLUSAO = ''N'' AND F1.CLI_CODIGO = '''+wclicodigo+'''';
      wOrdem     := 'F1.CLI_CODIGO,F1.FPC_DTEMIS,F1.FPC_NUMER';
      SqlCdsRel051.Close;
      SqlCdsRel051.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
      SqlCdsRel051.Open;
      if SqlCdsRel051.IsEmpty = True then
         begin
             SubRepFinanc.Visible := False;
         end
      else
         begin
             SubRepFinanc.Visible := True;
         end;
      // imprimir
      LBL_05_TITULO1.Caption := 'FICHA CADASTRO/FINANCEIRA DO CLIENTE';
      LBL_05_TITULO2.Caption := '';
      if RadVideo.Checked then
         begin
             ppRepRel05.DeviceType := 'Screen';
         end else
      if RadImpressora.Checked then
         begin
             ppRepRel05.DeviceType := 'Printer';
             ppRepRel05.ShowPrintDialog := true;
         end;

      RBuilderPreview(ppRepRel05);
    except on E:EdataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpFichas.Bit_SairClick(Sender: TObject);
begin
     modalresult := mrCancel;
end;

procedure TFormGimpFichas.CPFCNPJGetText(Sender: TObject; var Text: string);
begin
  CPFCNPJ.Text := MascaraCNPJ_CPF(SqlCdsRel05CLI_CGC.AsString);
  if(Length(SqlCdsRel05CLI_CGC.AsString) = 11) then
    nomeCPFCNPJ.Text := 'CPF:'
  else
    nomeCPFCNPJ.Text := 'CNPJ:';
end;

procedure TFormGimpFichas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRel05.Close;
      SqlCdsRel051.Close;
      SqlCdsRel06.Close;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Fechar as Tabelas !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpFichas.FormCreate(Sender: TObject);
begin
     wclicodigo := '';
end;

procedure TFormGimpFichas.pp05HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_05_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGimpFichas.SpeedButton2Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CGC,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_CEP,C1.CLI_CXPOST,C1.CLI_INSC,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_DTULTCOM,C1.CLI_CONTATO,C1.CLI_FUNCONT,C1.CLI_EMAIL,C1.CLI_HOME,';
      wSql2      := 'C1.CLI_ENDFAT,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_UFFAT,C1.CLI_CEPFAT,C1.CLI_ENDENTR,C1.CLI_FONENTR,C1.CLI_CIDENTR,C1.CLI_CEPENTR,C1.CLI_UFENTR,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 ';
      wSql3      := 'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO) ';
      wSeleciona := 'WHERE C1.CLI_CODIGO = '''+wclicodigo+'''';
      wOrdem     := 'C1.CLI_CODIGO';
      SqlCdsRel05.Close;
      SqlCdsRel05.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'C1.');
      SqlCdsRel05.Open;
      wSql1      := 'SELECT Y1.NF_NOTANUMBER,Y1.NF_EMISSAO,Y1.NF_CANCELADA,Y1.CLI_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI,P1.NF_QTDE,P1.NF_PRECO,P1.NF_IPIALIQ FROM NF_IT01 P1 ';
      wSql2      := 'JOIN NF0001 Y1 ON Y1.NF_NOTANUMBER = P1.NF_IT_NOTANUMER ';
      wSeleciona := 'WHERE Y1.NF_CANCELADA=''N'' AND Y1.CLI_CODIGO='''+wclicodigo+'''';
      wOrdem     := 'Y1.CLI_CODIGO,Y1.NF_EMISSAO';
      SqlCdsRel06.Close;
      SqlCdsRel06.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      SqlCdsRel06.Open;
    except on E:EdataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas '+e.message));
    end;
    // imprimir
    LBL_06_TITULO1.Caption := 'PRODUTOS VENDIDOS PARA O CLIENTE';
    LBL_06_TITULO2.Caption := '';
    if RadVideo.Checked then
       begin
           ppRepRel06.DeviceType := 'Screen';
       end else
    if RadImpressora.Checked then
       begin
           ppRepRel06.DeviceType := 'Printer';
           ppRepRel06.ShowPrintDialog := true;
       end;

    RBuilderPreview(ppRepRel06);
    Screen.Cursor := crDefault;
end;

procedure TFormGimpFichas.pp06HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_06_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGimpFichas.SpeedButton3Click(Sender: tObject);
begin
    {Ficha Cadastros/Financeira}
    Screen.Cursor := crHourGlass;
    try
      wSql1      := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CGC,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_CEP,C1.CLI_CXPOST,C1.CLI_INSC,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_DTULTCOM,C1.CLI_CONTATO,C1.CLI_FUNCONT,C1.CLI_EMAIL,C1.CLI_HOME,';
      wSql2      := 'C1.CLI_ENDFAT,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_UFFAT,C1.CLI_CEPFAT,C1.CLI_ENDENTR,C1.CLI_FONENTR,C1.CLI_CIDENTR,C1.CLI_CEPENTR,C1.CLI_UFENTR,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 ';
      wSql3      := 'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO) ';
      wSeleciona := 'WHERE C1.CLI_CODIGO = '''+wclicodigo+'''';
      wOrdem     := 'C1.CLI_CODIGO';
      SqlCdsRel05.Close;
      SqlCdsRel05.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'C1.');
      SqlCdsRel05.Open;
      wSql1      := 'SELECT F1.FAT_CODIGO,F1.FPC_NUMER,F1.FPC_DTEMIS,F1.FPC_VENCTO,F1.FPC_PAGTO,F1.FPC_VLPARC,F1.FPC_VLPAGO,F1.CLI_CODIGO,F1.FPC_STATUS,F2.FAT_CANCELADA FROM FAT_PC01 F1 ';
      wSql2      := 'JOIN FAT0000 F2 ON (F2.FAT_CODIGO = F1.FAT_CODIGO) AND (F1.EMP_CODIGO = F2.EMP_CODIGO)';
      wSeleciona := 'Where F1.FPC_EXCLUSAO = ''N'' AND F1.CLI_CODIGO='''+wclicodigo+'''';
      wOrdem     := 'F1.CLI_CODIGO,F1.FPC_DTEMIS,F1.FPC_NUMER';
      SqlCdsRel051.Close;
      SqlCdsRel051.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
      SqlCdsRel051.Open;
    except on E:EdataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas '+e.message));
    end;
    // imprimir
    LBL_05_TITULO1.Caption := 'FICHA CADASTRO/FINANCEIRA DO CLIENTE';
    LBL_05_TITULO2.Caption := '';
    if RadVideo.Checked then
       begin
           ppRepRel05.DeviceType := 'Screen';
       end else
    if RadImpressora.Checked then
       begin
           ppRepRel05.DeviceType := 'Printer';
           ppRepRel05.ShowPrintDialog := true;
       end;

    RBuilderPreview(ppRepRel05);
    {Ficha do Produto Vendidos}
    try
      wSql1      := 'SELECT C1.CLI_CODIGO,C1.CLI_RAZAO,C1.CLI_CGC,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_CEP,C1.CLI_CXPOST,C1.CLI_INSC,C1.CLI_FONE,C1.CLI_FAX,C1.CLI_DTULTCOM,C1.CLI_CONTATO,C1.CLI_FUNCONT,C1.CLI_EMAIL,C1.CLI_HOME,';
      wSql2      := 'C1.CLI_ENDFAT,C1.CLI_EMAIL,C1.CLI_HOME,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_UFFAT,C1.CLI_CEPFAT,C1.CLI_ENDENTR,C1.CLI_FONENTR,C1.CLI_CIDENTR,C1.CLI_CEPENTR,C1.CLI_UFENTR,C1.REP_CODIGO,R1.REP_NOME FROM CLI0000 C1 ';
      wSql3      := 'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO) ';
      wSeleciona := 'WHERE C1.CLI_CODIGO = '''+wclicodigo+'''';
      wOrdem     := 'C1.CLI_CODIGO';
      SqlCdsRel05.Close;
      SqlCdsRel05.CommandText := SQLDEF('CLIENTES',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'C1.');
      SqlCdsRel05.Open;
      wSql1      := 'SELECT Y1.NF_NOTANUMBER,Y1.NF_EMISSAO,Y1.NF_CANCELADA,Y1.CLI_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI,P1.NF_QTDE,P1.NF_PRECO,P1.NF_IPIALIQ FROM NF_IT01 P1 ';
      wSql2      := 'JOIN NF0001 Y1 ON Y1.NF_NOTANUMBER = P1.NF_IT_NOTANUMER ';
      wSeleciona := 'WHERE Y1.NF_CANCELADA=''N'' AND Y1.CLI_CODIGO='''+wclicodigo+'''';
      wOrdem     := 'Y1.CLI_CODIGO,Y1.NF_EMISSAO';
      SqlCdsRel06.Close;
      SqlCdsRel06.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      SqlCdsRel06.Open;
    except on E:EdataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas '+e.message));
    end;
    // imprimir
    LBL_06_TITULO1.Caption := 'PRODUTOS VENDIDOS PARA O CLIENTE';
    LBL_06_TITULO2.Caption := '';
    if RadVideo.Checked then
       begin
           ppRepRel06.DeviceType := 'Screen';
       end else
    if RadImpressora.Checked then
       begin
           ppRepRel06.DeviceType := 'Printer';
       end;
    RBuilderPreview(ppRepRel06);
    Screen.Cursor := crDefault;
end;

procedure TFormGimpFichas.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGimpFichas.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    FormGimpFichas.AutoSize := true;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpFichas.SqlCdsRel051CalcFields(DataSet: TDataSet);
Var
  wAux : real;
begin
    if (SqlCdsRel051FPC_PAGTO.IsNull) then
       begin
           // se data de pagto nao foi preenchida diminuo pela data de hoje
           wAux :=Date - SqlCdsRel051FPC_VENCTO.AsDateTime;
       end
    else
       begin
           wAux :=SqlCdsRel051FPC_PAGTO.AsDateTime - SqlCdsRel051FPC_VENCTO.AsDateTime;
       end;
    // se pagou em dia ou adiantado
    if wAux <= 2 then     // até 2 dias nao considero atraso(final de semana)
       wAux := 0;
    SqlCdsRel051ATRASO_CC.AsString := IIF(wAux=0,'',FloatToStr(wAux));
end;

end.
