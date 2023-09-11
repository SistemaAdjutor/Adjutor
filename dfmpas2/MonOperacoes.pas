unit MonOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Data.DBXFirebird, BaseDBForm, uteis, RWFUNC, Vcl.Mask, RxToolEdit, ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, iniciodb, ppCtrls, ppPrnabl, ppStrtch, ppSubRpt, dxGDIPlusClasses, ppVar;

type
  TfrmMonitorOperacoes = class(TfrmBaseDB)
    pFiltro: TPanel;
    Label1: TLabel;
    EdOperacaoCodigo: TEdit;
    edOperacao: TSgDbSearchCombo;
    BtnSair: TBitBtn;
    dsEngenharia: TDataSource;
    dspEngenharia: TDataSetProvider;
    cdsEngenharia: TClientDataSet;
    cdsEngenhariaOSV_CODIGO: TStringField;
    cdsEngenhariaOSV_QTDE: TFMTBCDField;
    cdsEngenhariaOSV_DTENTREGA: TSQLTimeStampField;
    cdsEngenhariaFAB_PRODUZINDO: TFMTBCDField;
    cdsEngenhariaFAB_PRODUZIDA: TFMTBCDField;
    cdsEngenhariaFAB_REFUGADA: TFMTBCDField;
    cdsEngenhariaPRD_DESCRI: TStringField;
    cdsEngenhariaRestantes: TLargeintField;
    cdsEngenhariaFAB_CODIGO: TIntegerField;
    cdsEngenhariaDATA_CONCLUSAO: TSQLTimeStampField;
    qEngenharia: TSQLQuery;
    cdsEngenhariaOPE_DESCRICAO: TStringField;
    cdsEngenhariaPRD_REFER: TStringField;
    cdsEngenhariaOSV_EMISSAO: TSQLTimeStampField;
    cdsEngenhariaOSV_CONCLUSAO: TSQLTimeStampField;
    qOperacoes: TSQLQuery;
    Label2: TLabel;
    dbgEngenharia: TDBGrid;
    Splitter1: TSplitter;
    qOcorrencia: TSQLQuery;
    dspOcorrencia: TDataSetProvider;
    dsOcorrencia: TDataSource;
    cdsOcorrencia: TClientDataSet;
    Edt_Nome: TEdit;
    OP: TLabel;
    cdsOcorrenciaOCE_CODIGO: TIntegerField;
    cdsOcorrenciaOCO_DESCRICAO: TStringField;
    cdsOcorrenciaTIPO: TStringField;
    cdsOcorrenciaRegistrado_COL: TStringField;
    cdsOcorrenciaOCE_MOTIVO: TStringField;
    cdsOcorrenciaOCE_DATAOCORRENCIA: TSQLTimeStampField;
    cdsOcorrenciaOCE_DATAPREVISAO: TSQLTimeStampField;
    cdsOcorrenciaOCE_DATAFIM: TSQLTimeStampField;
    cdsOcorrenciaAPF_INICIADA: TFMTBCDField;
    cdsOcorrenciaAPF_FINALIZADAS: TFMTBCDField;
    cdsOcorrenciaAPF_REFUGADO: TFMTBCDField;
    cdsOcorrenciaoce_comentario: TStringField;
    cdsOcorrenciaApontamento_COL: TStringField;
    cdsOcorrenciaEQP_DESCRICAO: TStringField;
    BitBtn1: TBitBtn;
    pOcorrencias: TPanel;
    dbgOcorrencias: TDBGrid;
    Label3: TLabel;
    cdsOcorrenciaOSV_CODIGO: TStringField;
    cdsEngenhariaOPE_CODIGO: TIntegerField;
    Gentrega: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    RxDataInicial: TDateEdit;
    RxDataFinal: TDateEdit;
    gConclusao: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    RxDataIniConclusao: TDateEdit;
    RxDataFinConclusao: TDateEdit;
    btnLimpar: TBitBtn;
    btnLimparConclusao: TBitBtn;
    btnPesquisar: TBitBtn;
    cdsOcorrenciaOPE_DESCRICAO: TStringField;
    cdsOcorrenciaPRD_REFER: TStringField;
    cdsOcorrenciaOPE_CODIGO: TIntegerField;
    cdsOcorrenciaPRD_DESCRI: TStringField;
    chkResolvidas: TCheckBox;
    btnLimparTudo: TBitBtn;
    cbReferencia: TSgDbSearchCombo;
    edProdutoCodigo: TEdit;
    cdsEngenhariasequencia: TIntegerField;
    pipCabecalho: TppDBPipeline;
    pRFolhaProcesso: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qcabecalho: TSQLQuery;
    cdscabecalho: TClientDataSet;
    Bit_Imprimir: TBitBtn;
    cdscabecalhoOP: TStringField;
    cdscabecalhoOPE_DESCRICAO: TStringField;
    cdscabecalhoPRD_REFER: TStringField;
    cdscabecalhoPRD_DESCRI: TStringField;
    cdscabecalhoDATA_INCIO: TSQLTimeStampField;
    cdscabecalhoOSV_DTENTREGA: TSQLTimeStampField;
    cdscabecalhoOSV_QTDE: TFMTBCDField;
    cdscabecalhoFAB_CODIGO: TIntegerField;
    cdscabecalhoOPE_CODIGO: TIntegerField;
    cdscabecalhosequencia: TIntegerField;
    cdscabecalhoEQP_DESCRICAO: TStringField;
    qParamOP: TSQLQuery;
    cdsParamOP: TClientDataSet;
    qParamEsp: TSQLQuery;
    dspParamEsp: TDataSetProvider;
    dspParamOP: TDataSetProvider;
    dspcabecalho: TDataSetProvider;
    dsCabecalho: TDataSource;
    dsParamOP: TDataSource;
    dsParamEsp: TDataSource;
    cdsParamEsp: TClientDataSet;
    cdsParamEspESP_NOME: TStringField;
    cdsParamEspESP_PADROES: TStringField;
    cdsParamEspESP_COL1: TStringField;
    cdsParamEspESP_COL2: TStringField;
    cdsParamEspESP_COL3: TStringField;
    cdsParamEspESP_COL4: TStringField;
    cdsParamEspESP_COL5: TStringField;
    cdsParamEspESP_COL6: TStringField;
    cdsParamEspESP_COL7: TStringField;
    cdsParamOPESR_NOME: TStringField;
    cdsParamOPESR_PADROES: TStringField;
    cdsParamOPESR_COL1: TStringField;
    cdsParamOPESR_COL2: TStringField;
    cdsParamOPESR_COL3: TStringField;
    cdsParamOPESR_COL4: TStringField;
    cdsParamOPESR_COL5: TStringField;
    cdsParamOPESR_COL6: TStringField;
    cdsParamOPESR_COL7: TStringField;
    pipParamOp: TppDBPipeline;
    pipParamEsp: TppDBPipeline;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    cdsParamOPFAB_CODIGO: TIntegerField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    bandBrancoReg3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    subparametros: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel10: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
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
    ppLabel33: TppLabel;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppDBImage1: TppDBImage;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    cdsParamEspEMP_LOGO: TBlobField;
    numregistro: TppVariable;
    ppDBText17: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine4: TppLine;
    ppLabel32: TppLabel;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel34: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    regdim: TppVariable;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    lNumero3: TppLabel;
    ppLine18: TppLine;
    lregistro: TppLabel;
    Lnumero2: TppLabel;
    iqualidade: TppImage;
    iespecifica2: TppImage;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppLabel11: TppLabel;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel35: TppLabel;
    cdscabecalhoESP_ESBOCO: TBlobField;
    ppDBImage2: TppDBImage;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel36: TppLabel;
    ldescricaope: TppDBText;
    procedure BtnSairClick(Sender: TObject);
    procedure cdsEngenhariaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Edt_NomeExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdOperacaoCodigoExit(Sender: TObject);
    procedure dbgEngenhariaDblClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnLimparConclusaoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsOcorrenciaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdOperacaoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkResolvidasClick(Sender: TObject);
    procedure edOperacaoSelect(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure btnLimparTudoClick(Sender: TObject);
    procedure Bit_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure numregistroCalc(Sender: TObject; var Value: Variant);
    procedure numregistroReset(Sender: TObject; var Value: Variant);
    procedure regdimCalc(Sender: TObject; var Value: Variant);
    procedure regdimReset(Sender: TObject; var Value: Variant);
    procedure lNumero3Print(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure Lnumero2Print(Sender: TObject);
    procedure iqualidadePrint(Sender: TObject);
    procedure iespecifica2Print(Sender: TObject);
    procedure lregistroPrint(Sender: TObject);
    procedure ldescricaopePrint(Sender: TObject);
  private
   procedure buscaOcorrencias;
   procedure BuscaTarefas;
   procedure Imprimir (const TipoRelatorio : integer);
  public

  end;

var
  frmMonitorOperacoes: TfrmMonitorOperacoes;
  nreg, nredim, regmeio : integer;
implementation

Uses frmApontamentoFab, prd0006;

{$R *.dfm}

procedure TfrmMonitorOperacoes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  cdsEngenharia.Filtered:=False;
  cdsOcorrencia.Filtered := False;
  cdsEngenharia.Filtered:=True;
  cdsOcorrencia.Filtered := True;
end;

procedure TfrmMonitorOperacoes.Bit_ImprimirClick(Sender: TObject);
begin
 Imprimir(0);
end;

procedure TfrmMonitorOperacoes.btnLimparClick(Sender: TObject);
begin
  inherited;
  RxDataInicial.Date := 0;
  RxDataFinal.Date := 0;
end;

procedure TfrmMonitorOperacoes.btnLimparConclusaoClick(Sender: TObject);
begin
  inherited;
  RxDataIniConclusao.Date := 0;
  RxDataFinConclusao.Date := 0;
end;

procedure TfrmMonitorOperacoes.btnLimparTudoClick(Sender: TObject);
begin
  inherited;
  //RxDataInicial.Clear;
  //RxDataFinal.Clear;
  RxDataInicial.Date := Date-90;
  RxDataFinal.Date := Date+180;
  RxDataIniConclusao.Clear;
  RxDataFinConclusao.Clear;
  Edt_Nome.Clear;
  cbReferencia.idRetorno := '';
  edOperacao.idRetorno := '';
  edProdutoCodigo.Clear;
  BuscaTarefas;
  buscaOcorrencias;

end;

procedure TfrmMonitorOperacoes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  BuscaTarefas;
  buscaOcorrencias;
end;

procedure TfrmMonitorOperacoes.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmMonitorOperacoes.buscaOcorrencias;
var sql,condicao1 : string;
begin
 cdsOcorrencia.Close;
 qOcorrencia.SQL.Clear;
 sql :=   ' SELECT  OSV_CODIGO, OE.OCE_CODIGO, CASE oc.OCO_TIPO                                   ' +
          '                         WHEN 1 THEN ''INFORMATIVA''                                    '+
          '                         WHEN 2 THEN ''CRITICA''                                        '+
          '                         END AS TIPO ,   OCE_MOTIVO, OCE_DATAOCORRENCIA,    '+
          '   OCE_DATAPREVISAO, OCE_DATAFIM, OCO_DESCRICAO, COL.COL_NOME AS Registrado_COL,        '+
          '   OCE_COMENTARIO, APF.APF_INICIADA,                                                    '+
          '   APF.APF_REFUGADO, APF.APF_FINALIZADAS, CAP.COL_NOME Apontamento_COL,                 '+
          '   EQ.EQP_DESCRICAO ,  OPE.OPE_CODIGO,OPE.OPE_DESCRICAO,PR.PRD_REFER, PR.PRD_DESCRI     '+
          '   FROM OCORRENCIA_EVENTO OE                                                            '+
          '   INNER JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)                          '+
          '   INNER JOIN FABRICACAO FB ON (FB.FAB_CODIGO = OE.FAB_CODIGO)                          '+
          '   INNER JOIN PRD0000 PR ON (FB.PRD_CODIGO = PR.PRD_CODIGO)                             '+
          '   INNER JOIN OPERACOES OPE ON (FB.OPE_CODIGO = OPE.OPE_CODIGO)                         '+
          '   LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = OE.COL_CODIGO)                        '+
          '   LEFT JOIN APONTAMENTO_FAB APF ON (APF.APF_CODIGO = OE.APF_CODIGO)                    '+
          '   LEFT JOIN COLABORADOR CAP ON (CAP.COL_CODIGO = APF.COL_CODIGO)                       '+
          '   LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO)                         ';
  if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
     condicao1:= 'OCE_DATAOCORRENCIA  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date)
  else if  (RxDataInicial.Date > 0)  then
    condicao1:= 'OCE_DATAOCORRENCIA  >= ' + DateToSQL(RxDataInicial.Date)
  else if RxDataFinal.Date > 0 then
    condicao1:= 'OCE_DATAOCORRENCIA <= ' + DateToSQL(RxDataFinal.Date);
 if condicao1 <> '' then
   sql:= sql +' WHERE ' + condicao1;
 qOcorrencia.SQL.Text:= sql;
 cdsOcorrencia.Filtered := False;
 cdsOcorrencia.Open;
// cdsOcorrencia.Filtered := true;

end;

procedure TfrmMonitorOperacoes.BuscaTarefas;
var sql,condicao1,condicao2 : string;

begin
  cdsEngenharia.close;

  sql:=     ' SELECT OS.OSV_CODIGO AS OP,OP.OPE_DESCRICAO, P1.PRD_REFER, P1.PRD_DESCRI,  FB.DATA_INCIO ,  OS.OSV_DTENTREGA, OS. OSV_QTDE, FAB_PRODUZINDO,                   '+
            ' FAB_REFUGADA, FAB_PRODUZIDA, OS.OSV_CONCLUSAO, FB.DATA_CONCLUSAO, DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES , FB.FAB_CODIGO ,  OP.OPE_CODIGO     '+
            ' , FB.SEQUENCIA                                                                                                                                                '+
            ' FROM FABRICACAO fb                                                                                                                                            '+
            '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO)                                                                                                     '+
            '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)                                                                                                     '+
            '  INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)                                                                                                   ';

  if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
     condicao1:= 'OS.OSV_DTENTREGA  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date)
  else if  (RxDataInicial.Date > 0)  then
    condicao1:= 'OS.OSV_DTENTREGA  >= ' + DateToSQL(RxDataInicial.Date)
  else if RxDataFinal.Date > 0 then
    condicao1:= 'OS.OSV_DTENTREGA <= ' + DateToSQL(RxDataFinal.Date);

  if (RxDataIniConclusao.Date > 0) and (RxDataFinConclusao.Date > 0)  then
    condicao2 := 'OS.OSV_CONCLUSAO  between ' + DateToSQL(RxDataIniConclusao.Date)+' and '+ DateToSQL(RxDataFinConclusao.Date)
  else if  (RxDataIniConclusao.Date > 0)  then
    condicao2 := 'OS.OSV_CONCLUSAO  >= ' + DateToSQL(RxDataIniConclusao.Date)
  else if RxDataFinConclusao.Date > 0 then
    condicao2 := 'OS.OSV_CONCLUSAO <= ' + DateToSQL(RxDataFinConclusao.Date);

  if (condicao1 <> '') and (condicao2 <> '' ) then
    sql:= sql + ' WHERE '+ condicao1 + ' AND ' + condicao2
  else if condicao1 <> '' then
    sql:= sql + ' WHERE '+ condicao1
  else if condicao2 <> '' then
    sql:= sql + ' WHERE '+  condicao2;


  qEngenharia.SQL.Text := sql;
  cdsEngenharia.Filtered := False;
  cdsEngenharia.open;
  //cdsEngenharia.Filtered := True;
end;

procedure TfrmMonitorOperacoes.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.TAG := 4;
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.idRetorno := FormProdutoGrid.ReferRetorno;
    cdsEngenharia.Filtered:=False;
    cdsOcorrencia.Filtered := False;
    cdsEngenharia.Filtered := True;
    cdsOcorrencia.Filtered := True;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmMonitorOperacoes.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.IdRetorno <> ''  then
  begin
    edProdutoCodigo.Text := cbReferencia.IdRetorno;
    cdsEngenharia.Filtered:=False;
    cdsEngenharia.Filtered := True;
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;


end;

procedure TfrmMonitorOperacoes.cdsEngenhariaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var   filtrar : boolean;
begin
  inherited;
  filtrar := True;
  if edOperacao.idRetorno <> '' then
    filtrar := (DataSet.FieldByName('OPE_CODIGO').AsInteger = StrToInt(edOperacao.idRetorno));
  if (cbReferencia.idRetorno <> '') and filtrar then
    filtrar :=  (DataSet.FieldByName('PRD_REFER').AsString = cbReferencia.idRetorno) and filtrar ;
  if (Edt_Nome.Text <> '') and (Edt_Nome.Text <> '000000') and filtrar then
    filtrar :=  (DataSet.FieldByName('OP').AsString = Edt_Nome.Text) and filtrar;
  Accept := filtrar;

end;

procedure TfrmMonitorOperacoes.cdsOcorrenciaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var   filtrar : boolean;
begin
  inherited;
  filtrar := True;
  if (edOperacao.idRetorno <> '') then
    filtrar := (DataSet.FieldByName('OPE_CODIGO').AsInteger = StrToInt(edOperacao.idRetorno));
  if (cbReferencia.idRetorno <> '') and filtrar then
    filtrar :=  (DataSet.FieldByName('PRD_REFER').AsString = cbReferencia.idRetorno) and filtrar ;
  if (Edt_Nome.Text <> '') and (Edt_Nome.Text <> '000000') and filtrar then
    filtrar := (DataSet.FieldByName('OSV_CODIGO').AsString = Edt_Nome.Text) and filtrar;

  if chkResolvidas.Checked and filtrar then
     filtrar :=  not  (DataSet.FieldByName('oce_datafim').IsNull and DataSet.FieldByName('oce_comentario').IsNull) and filtrar;
  Accept := filtrar;

end;

procedure TfrmMonitorOperacoes.chkResolvidasClick(Sender: TObject);
begin
  inherited;
  cdsOcorrencia.Filtered := False;
  cdsOcorrencia.Filtered:= True;
end;

procedure TfrmMonitorOperacoes.dbgEngenhariaDblClick(Sender: TObject);
begin
  inherited;
  if not cdsEngenharia.IsEmpty then
  begin
    if not assigned(frmApontamento) then
    begin
      frmApontamento := TFrmApontamento.Create(Application);
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);

    end;
    frmApontamento.edOperacao.idRetorno := intToStr(cdsEngenhariaOPE_CODIGO.AsInteger);
    frmApontamento.cdsEngenharia.Locate('OSV_CODIGO',cdsEngenhariaOSV_CODIGO.AsString,[]);
    frmApontamento.Show;
  end;
end;

procedure TfrmMonitorOperacoes.EdOperacaoCodigoExit(Sender: TObject);
begin
  inherited;
  if EdOperacaoCodigo.Text<>'' then
  begin
      edOperacao.idRetorno:=EdOperacaoCodigo.Text;
      if edOperacao.idRetorno='' then
         GeraException('Operação não existente');

  end
  Else
  begin
      EdOperacaoCodigo.clear;
      edOperacao.Clear;
  end;
end;

procedure TfrmMonitorOperacoes.EdOperacaoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    edOperacao.Button.Click;
end;

procedure TfrmMonitorOperacoes.edOperacaoSelect(Sender: TObject);
begin
  inherited;
  if edOperacao.idRetorno <> '' then
     begin
       EdOperacaoCodigo.Text :=  edOperacao.idRetorno  ;
      cdsEngenharia.Filtered:=False;
      cdsOcorrencia.Filtered := False;
      cdsEngenharia.Filtered:= true;
      cdsOcorrencia.Filtered:= true;
     end

  else
     EdOperacaoCodigo.Clear;
end;

procedure TfrmMonitorOperacoes.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')  ;

  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TfrmMonitorOperacoes.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

procedure TfrmMonitorOperacoes.Edt_NomeExit(Sender: TObject);
Var
  pLetra : String[1];
begin
  pLetra := ExtrairLetra(Edt_Nome.Text);
  if (pLetra = '') then
      Edt_Nome.Text := StrZero(Edt_Nome.Text,6)
  else
      Edt_Nome.Text := StrZero(Edt_Nome.Text,7);


end;

procedure TfrmMonitorOperacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  btnLimparTudo.Click;
end;

procedure TfrmMonitorOperacoes.FormCreate(Sender: TObject);
begin
  inherited;
  RxDataInicial.Date := Date-90;
  RxDataFinal.Date := Date+180;
  SalvaStatusGrid:= False;
  BuscaTarefas;
  buscaOcorrencias;


end;

procedure TfrmMonitorOperacoes.iespecifica2Print(Sender: TObject);
begin
  inherited;
  iespecifica2.Visible := (nreg = regmeio)
end;

procedure TfrmMonitorOperacoes.Imprimir(const TipoRelatorio: integer);
var sql :string;
begin

  cdscabecalho.Close;
  sql:=
      'SELECT OS.OSV_CODIGO AS OP,OP.OPE_DESCRICAO, P1.PRD_REFER, P1.PRD_DESCRI,  FB.DATA_INCIO ,  '+
      ' eq.EQP_DESCRICAO,  OS.OSV_DTENTREGA, OS. OSV_QTDE,                                         '+
      ' FB.FAB_CODIGO ,  OP.OPE_CODIGO,  ep.ESP_ESBOCO                                            '+
      ', FB.SEQUENCIA                                                                              '+
      'FROM FABRICACAO fb                                                                          '+
      ' INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO)                                   '+
      ' INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)                                   '+
      ' INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)                                 '+
      ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO)                                '+
      ' LEFT JOIN ENGENHARIA_PROCESSO ep ON  (ep.ENG_CODIGO = fb.ENG_CODIGO)                       '+
      ' where os.osv_codigo =    '+ QuotedStr(cdsEngenhariaOSV_CODIGO.AsString)  ;
      if TipoRelatorio = 1 then
       sql:= sql + ' and   OP.OPE_CODIGO = '+ IntToStr(cdsEngenhariaOPE_CODIGO.AsInteger)  ;
  sql := sql + 'ORDER BY SEQUENCIA';
  qcabecalho.CommandText := sql;
  cdscabecalho.Open;
  if not cdscabecalho.IsEmpty then
  begin
   cdsParamOP.Close;
   qParamOP.CommandText:=
      'SELECT fab_codigo, ESR_nome,ESR_PADROES, ESR_COL1,ESR_COL2,ESR_COL3,ESR_COL4,ESR_COL5,ESR_COL6,ESR_COL7  '+
      ' FROM ESPECIFICACOES_REALIZADAS                                                                          '+
      ' WHERE FAB_CODIGO in (select fab_codigo from FABRICACAO where osv_codigo =  ' + QuotedStr(cdsEngenhariaOSV_CODIGO.AsString)  +')'+
      ' order by fab_codigo';
   cdsParamOP.Open;

   qParamEsp.Close;
   qParamEsp.CommandText := 'SELECT  ESP_NOME, ESP_PADROES,ESP_COL1,ESP_COL2,ESP_COL3,ESP_COL4,ESP_COL5,ESP_COL6,ESP_COL7, EMP_LOGO '+
                            ' FROM PRMT0001 P , EMP0000 EP WHERE P.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                            ' AND EP.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
   qParamEsp.Open;
  end;
  pRFolhaProcesso.DeviceType := 'Screen';
  pRFolhaProcesso.Print;


end;

procedure TfrmMonitorOperacoes.iqualidadePrint(Sender: TObject);
begin
  inherited;
  iqualidade.Visible := (nredim = regmeio);
end;

procedure TfrmMonitorOperacoes.ldescricaopePrint(Sender: TObject);
begin
  inherited;
  ldescricaope.Visible   := (nreg = regmeio);
end;

procedure TfrmMonitorOperacoes.Lnumero2Print(Sender: TObject);
begin
  inherited;
  lNumero2.Visible := (nreg = regmeio);
end;

procedure TfrmMonitorOperacoes.numregistroCalc(Sender: TObject; var Value: Variant);
begin
  inherited;
  inc(nreg, 1);
  value:= nreg  ;
end;

procedure TfrmMonitorOperacoes.numregistroReset(Sender: TObject; var Value: Variant);
begin
  inherited;
  nreg := -1 ;
end;

procedure TfrmMonitorOperacoes.ppDetailBand1BeforePrint(Sender: TObject);
var temp : integer;
begin
  inherited;
   OPENAUX ('SELECT  count(1) as num '+
      ' FROM ESPECIFICACOES_REALIZADAS                                                                          '+
      ' WHERE FAB_CODIGO  = ' + inttostr(cdscabecalhoFAB_CODIGO.AsInteger)  );
   qaux.Open;
  if (not qaux.IsEmpty) and (qaux.FieldByName('num').AsInteger> 1) then
  begin
     temp := (qaux.FieldByName('num').AsInteger mod 2 );
     if temp = 0  then
      regmeio := qaux.FieldByName('num').AsInteger div 2
     else
      regmeio := (qaux.FieldByName('num').AsInteger div 2)+1
  end
  else
    regmeio :=  1;
end;

procedure TfrmMonitorOperacoes.lregistroPrint(Sender: TObject);
begin
  inherited;
  lregistro.Visible := (nredim = regmeio);
end;

procedure TfrmMonitorOperacoes.lNumero3Print(Sender: TObject);
begin
  inherited;
  lNumero3.Visible := (nredim = regmeio);
end;

procedure TfrmMonitorOperacoes.regdimCalc(Sender: TObject; var Value: Variant);
begin
  inherited;
  inc(nredim, 1);
  if nredim = 0  then
     value := 'Item'
  else
    value := nredim  ;
end;

procedure TfrmMonitorOperacoes.regdimReset(Sender: TObject; var Value: Variant);
begin
  inherited;
  nredim := -1 ;
end;

end.
