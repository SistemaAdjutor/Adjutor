unit UPesqOrcamentoPRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxLocalization, frxClass, QExport4, Vcl.Menus, JvExControls, JvArrowButton,  SgDbSeachComboUnit,
  Data.FMTBcd, Data.SqlExpr, uEditOrcamentoPRO, Vcl.Mask, JvExMask, JvToolEdit, cxCustomData, cxFilter, cxData, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.FBDef, cxMemo, frxDBSet,
  ACBrCalculadora, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, frxExportImage, frxExportRTF, frxExportPDF, RWFunc;


type
  TPesqOrcamentoProducao = class(TfrmBaseDBPesquisaFDAC)
    cxgrd1DBTableView1ORC_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxgrd1DBTableView1FPG_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_FONE: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_EMAIL: TcxGridDBColumn;
    cxgrd1DBTableView1ORC_DIAS_ENTREGA: TcxGridDBColumn;
    cxgrd1DBTableView1ORC_DATAAQUISICAO: TcxGridDBColumn;
    cxgrd1DBTableView1ORC_DIAS_VALIDADE: TcxGridDBColumn;
    cxgrd1DBTableView1ORC_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1ORC_VLR_TOTAL: TcxGridDBColumn;
    Label1: TLabel;
    PesqCliente: TSgDbSearchCombo;
    qCli: TSQLQuery;
    edPesquisaLivre: TLabeledEdit;
    cdsBuscaORC_DESCRICAO: TStringField;
    cxgrd1DBTableView1ORC_DESCRICAO: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    DataInclusaoIni: TJvDateEdit;
    Label2: TLabel;
    DataInclusaoFim: TJvDateEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DataProximoIni: TJvDateEdit;
    DataProximoFim: TJvDateEdit;
    cdsBuscaORC_DATA_PROX_CONCAT: TDateField;
    cdsBuscaDATAVALIDADE: TSQLTimeStampField;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DataValidadeIni: TJvDateEdit;
    DataValidadeFim: TJvDateEdit;
    chkNaoAprovados: TCheckBox;
    chkCancelados: TCheckBox;
    cdsBuscaORC_CODIGO: TIntegerField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaORC_DIAS_ENTREGA: TIntegerField;
    cdsBuscaORC_DATAAQUISICAO: TSQLTimeStampField;
    cdsBuscaORC_DIAS_VALIDADE: TIntegerField;
    cdsBuscaORC_VLR_TOTAL: TBCDField;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cdsBuscaDetalhesOIP_CODIGO: TIntegerField;
    cdsBuscaDetalhesORC_CODIGO: TIntegerField;
    cdsBuscaDetalhesPRO_CODIGO: TIntegerField;
    cdsBuscaDetalhesPRD_REFER: TStringField;
    cdsBuscaDetalhesPRD_CODIGO: TStringField;
    cdsBuscaDetalhesOIP_UND: TStringField;
    cdsBuscaDetalhesOIP_SEQ: TIntegerField;
    cdsBuscaDetalhesOIP_DESCRICAO: TStringField;
    cdsBuscaDetalhesSRV_CODIGO: TIntegerField;
    cdsBuscaDetalhesOIP_TIPOPECA_TERM: TStringField;
    cdsBuscaDetalhesOIP_MATERIAL_TERM: TStringField;
    cdsBuscaDetalhesOIP_PESO: TFMTBCDField;
    cdsBuscaDetalhesOIP_PROFUNDIDADE_TERM: TStringField;
    cdsBuscaDetalhesOIP_DUREZASUPERFICIAL_TERM: TStringField;
    cdsBuscaDetalhesOIP_DUREZANUCLEO_TERM: TStringField;
    cdsBuscaDetalhesPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsBuscaDetalhesOIP_TAMANHOGRAO_TERM: TStringField;
    cdsBuscaDetalhesOIP_EHT_TERM: TStringField;
    cdsBuscaDetalhesOIP_DESENHO_TERM: TStringField;
    cdsBuscaDetalhesOIP_QDE: TFMTBCDField;
    cdsBuscaDetalhesOIP_PRECO: TFMTBCDField;
    cdsBuscaDetalhesOIP_TOTAL: TFMTBCDField;
    cdsBuscaDetalhesOIP_PESOTOTAL: TFMTBCDField;
    cdsBuscaDetalhesOIP_PRAZOENTREGA: TIntegerField;
    cdsBuscaDetalhesOIP_IMAGEM: TBlobField;
    cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_TIPOPECA_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_MATERIAL_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_PROFUNDIDADE_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_DUREZASUPERFICIAL_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_DUREZANUCLEO_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_TAMANHOGRAO_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_EHT_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_DESENHO_TERM: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_QDE: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_PRECO: TcxGridDBColumn;
    cxgrd1DBTableView2OIP_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView2PRO_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView2SRV_NOME: TcxGridDBColumn;
    cdsBuscaFollow: TFDQuery;
    dsBuscaFollow: TDataSource;
    cdsBuscaFollowTAH_DATA_REGISTRO: TSQLTimeStampField;
    cdsBuscaFollowTAH_ASSUNTO: TBlobField;
    cxgrd1Level2: TcxGridLevel;
    cxgrd1DBTableView3: TcxGridDBTableView;
    cdsBuscaFollowTRF_REGISTRO: TIntegerField;
    cdsBuscaTRF_REGISTRO: TIntegerField;
    cxgrd1DBTableView3TAH_DATA_REGISTRO: TcxGridDBColumn;
    cxgrd1DBTableView3TAH_ASSUNTO: TcxGridDBColumn;
    cdsBuscaORC_SITUACAO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaFPG_DESCRICAO: TStringField;
    cdsBuscaCLI_FONE: TStringField;
    cdsBuscaCLI_EMAIL: TStringField;
    cdsBuscaDetalhesPRD_DESCRI: TStringField;
    cdsBuscaDetalhesPRO_DESCRICAO: TStringField;
    cdsBuscaDetalhesSRV_NOME: TStringField;
    frxOrcamento: TfrxReport;
    Button1: TButton;
    edOrcamento: TLabeledEdit;
    frxDataOrcamento: TfrxDBDataset;
    frxDataItens: TfrxDBDataset;
    cdsOrcamento: TFDQuery;
    cdsOrcamentoORC_CODIGO: TIntegerField;
    cdsOrcamentoEMP_CODIGO: TStringField;
    cdsOrcamentoORC_DESCRICAO: TStringField;
    cdsOrcamentoORC_DATAAQUISICAO: TSQLTimeStampField;
    cdsOrcamentoCLI_CODIGO: TStringField;
    cdsOrcamentoORC_CLIENTE: TStringField;
    cdsOrcamentoORC_ENDERECO: TStringField;
    cdsOrcamentoORC_CEP: TStringField;
    cdsOrcamentoORC_BAIRRO: TStringField;
    cdsOrcamentoORC_CIDADE: TStringField;
    cdsOrcamentoORC_UF: TStringField;
    cdsOrcamentoORC_CONTATO: TStringField;
    cdsOrcamentoORC_EMAIL: TStringField;
    cdsOrcamentoORC_FONE: TStringField;
    cdsOrcamentoORC_FAX: TStringField;
    cdsOrcamentoORC_DIAS_ENTREGA: TIntegerField;
    cdsOrcamentoORC_DIAS_VALIDADE: TIntegerField;
    cdsOrcamentoORC_SITUACAO: TStringField;
    cdsOrcamentoORC_VLR_TOTAL: TBCDField;
    cdsOrcamentoORC_OBSERVACAO: TBlobField;
    cdsOrcamentoORC_OBS_TRANSP: TBlobField;
    cdsOrcamentoORC_DATA_PROX_CONCAT: TDateField;
    cdsOrcamentoTRF_REGISTRO: TIntegerField;
    cdsOrcamentoORC_CGCCPF: TStringField;
    cdsItens: TFDQuery;
    cdsItensOIP_CODIGO: TIntegerField;
    cdsItensORC_CODIGO: TIntegerField;
    cdsItensPRO_CODIGO: TIntegerField;
    cdsItensPRD_REFER: TStringField;
    cdsItensPRD_CODIGO: TStringField;
    cdsItensOIP_UND: TStringField;
    cdsItensOIP_SEQ: TIntegerField;
    cdsItensOIP_DESCRICAO: TStringField;
    cdsItensOIP_TIPOPECA_TERM: TStringField;
    cdsItensOIP_MATERIAL_TERM: TStringField;
    cdsItensOIP_PESO: TFMTBCDField;
    cdsItensOIP_PROFUNDIDADE_TERM: TStringField;
    cdsItensOIP_DUREZASUPERFICIAL_TERM: TStringField;
    cdsItensOIP_DUREZANUCLEO_TERM: TStringField;
    cdsItensPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsItensOIP_TAMANHOGRAO_TERM: TStringField;
    cdsItensOIP_EHT_TERM: TStringField;
    cdsItensOIP_DESENHO_TERM: TStringField;
    cdsItensOIP_QDE: TFMTBCDField;
    cdsItensOIP_PRECO: TFMTBCDField;
    cdsItensOIP_TOTAL: TFMTBCDField;
    cdsItensOIP_PRAZOENTREGA: TIntegerField;
    cdsItensOIP_IMAGEM: TBlobField;
    cdsItensOIP_PESOTOTAL: TFMTBCDField;
    cdsItensSRV_CODIGO: TIntegerField;
    cdsItensPRD_DESCRI: TStringField;
    cdsItensPRO_DESCRICAO: TStringField;
    cdsItensSRV_NOME: TStringField;
    cdsItensTOTALORC: TAggregateField;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    cxgrd1DBTableView1ORC_REVISAO: TcxGridDBColumn;
    cdsBuscaORC_REVISAO: TIntegerField;
    cdsBuscaPED_CODIGO: TStringField;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    btnEmail: TSpeedButton;
    cdsOrcamentoCLI_FANTASIA: TStringField;
    cdsOrcamentoCLI_INSC: TStringField;
    cdsOrcamentoREP_NOME: TStringField;
    cdsOrcamentoREP_RAZAO: TStringField;
    cdsOrcamentoREP_FAX: TStringField;
    cdsOrcamentoREP_FONE: TStringField;
    cdsOrcamentoREP_EMAIL: TStringField;
    cdsOrcamentoREP_OBS: TBlobField;
    cdsOrcamentoPCL_NOME: TStringField;
    cdsOrcamentoCLI_FRETE: TStringField;
    cdsBuscaORC_CONTATO: TStringField;
    cdsOrcamentoPMT_VALOR_MINIMO_DO_SERVICO: TFMTBCDField;
    
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBuscaCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaORC_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cxgrd1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure edPesquisaLivreChange(Sender: TObject);
    procedure chkNaoAprovadosClick(Sender: TObject);
    procedure cdsBuscaAfterOpen(DataSet: TDataSet);
    procedure cxgrd1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure edOrcamentoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure frxOrcamentoGetValue(const VarName: string; var Value: Variant);
    procedure btnEmailClick(Sender: TObject);
    procedure cdsOrcamentoORC_CGCCPFGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOrcamentoORC_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOrcamentoORC_FAXGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOrcamentoORC_CEPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOrcamentoREP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    procedure GerarFollowUp ( const trf_registro : integer; const assunto: string);
  public
    procedure Pesquisa ;
    procedure filtroDetalhe;

  end;

var
  PesqOrcamentoProducao: TPesqOrcamentoProducao;

implementation

uses InicioDB, Uteis, PesquisaClientesForm, EMAIL0001 ;
{$R *.dfm}

{ TPesqOrcamentoProducao }

procedure TPesqOrcamentoProducao.FormDestroy(Sender: TObject);
begin
  inherited;
  PesqOrcamentoProducao := nil;
end;

procedure TPesqOrcamentoProducao.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TPesqOrcamentoProducao.frxOrcamentoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'FONE') then
     Value := MascaraFone(dbInicio.Empresa.FONE)
  else
  if (VarName  = 'BAIRRO') then
     Value := dbInicio.Empresa.BAIRRO
  else
  if (VarName  = 'FAX') then
     Value := dbInicio.Empresa.FAX
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ') then
     Value := MascaraCNPJ_CPF(dbInicio.Empresa.CNPJ_CNPF)
  else
  if (VarName  = 'INSCR') then
    Value := dbInicio.Empresa.INSC_EST
  else if (VarName = 'SITE') then
    Value := dbinicio.empresa.HOME_PAGE
  else if (VarName = 'RAZAO_SOC') then
    Value := dbinicio.Empresa.RAZAO
  else if (VarName = 'CLICNPJ') then
    value := MascaraCNPJ_CPF(cdsOrcamentoORC_CGCCPF.AsString)
  else if (VarName = 'CLIFONE') then
    value := MascaraFone(cdsOrcamentoORC_FONE.AsString)
  else if (VarName = 'CLIFAX') then
    value := MascaraFone(cdsOrcamentoORC_FAX.AsString)
  else if (VarName = 'REPFONE') then
    value := MascaraFone(cdsOrcamentoREP_FONE.AsString)
  else if (VarName = 'REPFAX') then
    value := MascaraFone(cdsOrcamentoREP_FAX.AsString)
  else if (VarName = 'CLICEP') then
    value := MascaraCep (cdsOrcamentoORC_CEP.AsString)
  else if VarName = 'PMT_REVISAO_RELATORIO' then
    Value := DBInicio.GetParametroSistema('PMT_REVISAO_RELATORIO')
  else if VarName = 'PMT_MSG_ORCAMENTO_INDUST' then
    Value := DBInicio.GetParametroSistema('PMT_MSG_ORCAMENTO_INDUST')
    ;




end;

procedure TPesqOrcamentoProducao.GerarFollowUp(const trf_registro: integer; const assunto: string);
var sql : string;
begin
  //OpenAux('SELECT * FROM TAREFAS_CRM WHERE TRF_REGISTRO =  '+IntToStr(trf_registro));
  SQL:= ' update TAREFAS_CRM '+
        ' SET TRF_ASSUNTO = ''' +(( assunto))   +''''+
       '  WHERE TRF_REGISTRO = '+ IntToStr(TRF_REGISTRO);
    ExecSql(SQL);

  SQL:=  'INSERT INTO TAREFAS_HISTORICO      '+
         ' (TAH_REGISTRO, TRF_REGISTRO, TAH_DATA_REGISTRO, TAH_ASSUNTO) '+
         ' VALUES('+IntToStr(GetNextSequence('GEN_TAH_HISTORICO')) +','+
          IntToStr(TRF_REGISTRO)+ ','+
          DateTimeToSQL(now)  +','+
          QuotedStr (assunto)   + ')';

  ExecSql(SQL);

end;

procedure TPesqOrcamentoProducao.PesqClienteButtonClick(Sender: TObject);
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

procedure TPesqOrcamentoProducao.Pesquisa;
var sqltext : string;
begin
  with cdsBusca,sql do
  begin

    sqltext := 'SELECT ORC_DATAAQUISICAO, ORC_DATA_PROX_CONCAT, (ORC_DATAAQUISICAO + ORC_DIAS_VALIDADE) dataValidade ,  ORC_CODIGO, ORC_DESCRICAO,  '+
    ' ORC.CLI_CODIGO,COALESCE(CLI_RAZAO,ORC_CLIENTE) CLI_RAZAO, FPG_DESCRICAO, CLI_FONE, COALESCE(ORC_EMAIL, CLI_EMAIL ) CLI_EMAIL,' +
    ' ORC_DIAS_ENTREGA, ORC_CONTATO, ' +
    ' ORC_DIAS_VALIDADE, ORC_SITUACAO, ORC_VLR_TOTAL, trf_registro, ORC_REVISAO, '+
    ' (SELECT FIRST 1 PED_CODIGO FROM  PED0000 P WHERE P.ORC_CODIGO = ORC.ORC_CODIGO AND PED_SITUACAO <> ''C'') AS PED_CODIGO '+
    ' FROM ORCAMENTO_PROD ORC ';
     if PesqCliente.idRetorno <> '' then
      sqltext := sqltext + '  JOIN CLI0000 CL ON (CL.CLI_CODIGO = ORC.CLI_CODIGO '  +
              ' and ORC.CLI_CODIGO = '+ QuotedStr(PesqCliente.idRetorno) +')'
     else
      sqltext := sqltext + ' LEFT JOIN CLI0000 CL ON (CL.CLI_CODIGO = ORC.CLI_CODIGO) ';
    sqltext := sqltext +' LEFT JOIN FORMA_PAGAMENTO FPG ON FPG.FPG_REGISTRO = ORC.FPG_REGISTRO        ';

    cdsBusca.SQL.Text := sqltext;
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
       SqlAdd(' ORC.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if chkNaoAprovados.Checked then
      SqlAdd(' ORC_SITUACAO <> ''A'' ');
    if chkCancelados.Checked  then
      SqlAdd(' ORC_SITUACAO <> ''C'' ');
    if edOrcamento.Text <> '' then
    begin
       SqlAdd(' orc.ORC_CODIGO =  '+ edOrcamento.Text);
    end
    else
    begin
      if edPesquisaLivre.Text <> '' then
      begin
        SqlAdd(' (  COALESCE(CLI_RAZAO,ORC_CLIENTE) CONTAINING '+ QuotedStr(edPesquisaLivre.Text)+
               ' OR ORC_DESCRICAO  CONTAINING '+ QuotedStr(edPesquisaLivre.Text)+
               ' OR COALESCE(ORC_EMAIL, CLI_EMAIL ) CONTAINING '+ QuotedStr(edPesquisaLivre.Text) +')' );

      end;
      if (DataInclusaoFim.Date > 0) and  (DataInclusaoIni.Date > 0) then
        SqlAdd('ORC_DATAAQUISICAO between  '+DateToSQL(DataInclusaoIni.Date)+ ' and '+ DateToSQL(DataInclusaoFim.Date))
      else
      if DataInclusaoFim.Date > 0  then
        SqlAdd('ORC_DATAAQUISICAO <= ' +DateToSQL(DataInclusaoFim.Date))
      else
      if DataInclusaoIni.Date > 0  then
       SqlAdd('ORC_DATAAQUISICAO >= ' +DateToSQL(DataInclusaoIni.Date))  ;

      if (DataProximoIni.Date > 0) and  (DataProximoFim.Date > 0) then
        SqlAdd('ORC_DATA_PROX_CONCAT between  '+DateToSQL(DataProximoIni.Date)+ ' and '+ DateToSQL(DataProximoFim.Date))
      else
      if DataProximoFim.Date > 0  then
        SqlAdd('ORC_DATA_PROX_CONCAT <= ' +DateToSQL(DataProximoFim.Date))
      else
      if DataProximoIni.Date > 0  then
       SqlAdd('ORC_DATA_PROX_CONCAT >= ' +DateToSQL(DataProximoIni.Date));

      if (DataValidadeIni.Date > 0) and  (DataValidadeFim.Date > 0) then
        SqlAdd('(ORC_DATA_PROX_CONCAT + ORC_DIAS_VALIDADE) between  '+DateToSQL(DataValidadeIni.Date)+ ' and '+ DateToSQL(DataValidadeFim.Date))
      else
      if DataValidadeFim.Date > 0  then
        SqlAdd('(ORC_DATA_PROX_CONCAT + ORC_DIAS_VALIDADE) <= ' +DateToSQL(DataValidadeFim.Date))
      else
      if DataValidadeIni.Date > 0  then
       SqlAdd('(ORC_DATA_PROX_CONCAT + ORC_DIAS_VALIDADE) >= ' +DateToSQL(DataValidadeIni.Date))

    end;


  end;
end;

procedure TPesqOrcamentoProducao.btnEmailClick(Sender: TObject);
var
 email : string;
 msg: String;
 tcr : TfrmEMAIL0001;
begin
  inherited;
  TfrxPictureView(frxOrcamento.FindObject('LogoEmpresa')).Picture.Bitmap.Assign(DbInicio.empresa.LOGO);
  try
    TfrxPictureView(frxOrcamento.FindObject('logorodape')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
  except
  end;
  cdsOrcamento.close;
  cdsItens.Close;
  // cdsOrcamento.SQL.CommaText O SQL TA NO OBJETO
  cdsOrcamento.Params[0].Value := cdsBuscaORC_CODIGO.AsInteger;
  cdsItens.Params[0].Value := cdsBuscaORC_CODIGO.AsInteger;
  cdsOrcamento.Open;
  cdsItens.Open;
  try
    CreateDirectory(PWideChar(dbInicio.SistemaLocal+'orcamento'), nil);
  except
  end;

  frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'orcamento';
  frxPDFExport1.FileName    := IntToStr(cdsBuscaORC_CODIGO.AsInteger) + '.pdf';
  frxPDFExport1.ShowDialog  := False;
  frxOrcamento.PrepareReport();
  frxOrcamento.Export(frxPDFExport1);
  tcr := TfrmEmail0001.Create(Nil);
  try

    tcr.modulo := 'Orçamento de Processo de Produção';
    tcr.titulo := ' Nº ' +  cdsBuscaORC_CODIGO.AsString + ' - R$ ' +  FormatFloat('##0.00', cdsBuscaORC_VLR_TOTAL.AsFloat) ;

    tcr.sClienteCodigo :=  cdsBusca.FieldByName('cli_codigo').AsString;
    tcr.sCaminhoArquivo :=dbInicio.SistemaLocal+'orcamento\'+IntToStr(cdsBuscaORC_CODIGO.AsInteger) + '.pdf';
   // tcr.email_de_enviado := dbInicio.Empresa.EmailUserName;
    tcr.ssenha := Trim(dbInicio.Empresa.EmailPassworld);
    tcr.nome_envio := DBInicio.Empresa.RAZAO;
    tcr.sEmailCliente   := cdsBusca.FieldByName('CLI_EMAIL').AsString+';'+DBInicio.Empresa.EmailInterno;
    tcr.sAssunto        := 'Orçamento  de '+dbInicio.Empresa.FANTASIA + ' para ' +cdsBusca.FieldByName('CLI_RAZAO').asstring   ;

    tcr.MMsg.Lines.Add('');
    tcr.MMsg.Lines.Add('Prezado cliente, ');
    tcr.MMsg.Lines.Add('');
    tcr.MMsg.Lines.Add(' Segue em anexo o Orçamento de '+dbInicio.Empresa.FANTASIA+'.');
    tcr.MMsg.Lines.Add('');
    tcr.MMsg.Lines.Add(' Atenciosamente, ');
    tcr.MMsg.Lines.Add('');
    tcr.MMsg.Lines.Add(' '+DBInicio.Usuario.NOME);
    tcr.ProcessarInformacoes;
    if tcr.ssucesso  then
    begin
      email:=  tcr.EdMail.Text;
      msg := 'Email com orçamento enviado a '+email+' com sucesso';
      GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text,  tcr.titulo, 'C', cdsBuscaCLI_CODIGO.AsString, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);
    end;
   finally
     FreeAndNil(tcr);
   end;
  if cdsBuscaTRF_REGISTRO.AsInteger > 0 then
  begin
    GerarFollowUp(cdsBuscaTRF_REGISTRO.AsInteger, msg);
    cdsBuscaFollow.close;
    cdsBuscaFollow.Open;
  end;

end;

procedure TPesqOrcamentoProducao.btnNovoClick(Sender: TObject);
var mtag,i: integer;
   	flg: boolean;

begin
	inherited;
	mtag := (sender as tComponent).Tag;
  FrmEditOrcamentoPRO := tFrmEditOrcamentoPRO.create( self );
	try

		 case mtag of
		 1: flg:=FrmEditOrcamentoPRO.novo('Novo orçamento') ;
		 2: flg:=FrmEditOrcamentoPRO.BotaoAprovar(cdsBusca.FieldByName('ORC_CODIGO').asString,'Aprovação do orçamento nº '+cdsBusca.FieldByName('ORC_CODIGO').asString);
     3: flg:=FrmEditOrcamentoPRO.edita(cdsBusca.FieldByName('ORC_CODIGO').asString,'Edição do orçamento nº '+cdsBusca.FieldByName('ORC_CODIGO').asString);
		 4: begin
         if (MessageDlg('Deseja excluir o orçamento ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
            flg:=FrmEditOrcamentoPRO.exclui(cdsBusca.FieldByName('ORC_CODIGO').asString,'Exclusão de Registro');
        end;
     5: begin
          If cdsBusca.FieldByName('ORC_SITUACAO').asString = 'A' then
          begin
             FrmEditOrcamentoPRO.AberturaAprovado := True;
             flg:=FrmEditOrcamentoPRO.edita(cdsBusca.FieldByName('ORC_CODIGO').asString,'Revisão do orçamento nº '+cdsBusca.FieldByName('ORC_CODIGO').asString);
             if cdsBuscaTRF_REGISTRO.AsInteger > 0 then
             begin
               i:= cdsBuscaORC_REVISAO.AsInteger+1;
              //GerarFollowUp(cdsBuscaTRF_REGISTRO.AsInteger, 'Revisão nº '+IntToStr(i ));
              cdsBuscaFollow.Refresh;
             end;
          end
          else
          begin
            GeraException('Orçamento não aprovado');
          end;
        end;
		 end;
     if FrmEditOrcamentoPRO.ModalResult=mrOk then
     begin
          if CdSBUSCa.Active then
          BEGIN
            btnPesquisa.Click;
            if trim(FrmEditOrcamentoPRO.idretorno) <> Trim(cdsBusca.FieldByName('ORC_CODIGO').asstring) then
            begin
                 CdsBusca.Locate( CampoID, FrmEditOrcamentoPRO.IDRetorno, [loCaseInsensitive] ) ;
            end;
          END;
     end;
	finally
    if assigned(FrmEditOrcamentoPRO) then
    begin
  		FrmEditOrcamentoPRO.close;
	  	freeandnil(FrmEditOrcamentoPRO);
    end;
    cdsBusca.Refresh;
    cdsBuscaDetalhes.Refresh;
	end;

end;



procedure TPesqOrcamentoProducao.btnrelatoriosClick(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOrcamento.FindObject('LogoEmpresa')).Picture.Bitmap.Assign(DbInicio.empresa.LOGO);
//  TfrxPictureView(frxOrcamento.FindObject('logorodape')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
  cdsOrcamento.close;
  cdsItens.Close;
  cdsOrcamento.Params[0].Value := cdsBuscaORC_CODIGO.AsInteger;
  cdsItens.Params[0].Value := cdsBuscaORC_CODIGO.AsInteger;
  cdsOrcamento.Open;
  cdsItens.Open;
  frxOrcamento.ShowReport(True);
end;

procedure TPesqOrcamentoProducao.cdsBuscaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBuscaFollow.Open; // query está no componente
end;

procedure TPesqOrcamentoProducao.cdsBuscaCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  If Sender.IsNull then
    Text :=  MascaraFone(Sender.AsString);
end;

procedure TPesqOrcamentoProducao.cdsBuscaORC_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull or (sender.AsString <> '') then
  begin
    if Sender.AsString = 'P' then
      Text := 'Pendente'
    else if Sender.AsString = 'E' then
      Text := 'Em Andamento'
    else if Sender.AsString = 'A' then
      Text := 'Aprovado'
    else if Sender.AsString =  'R' then
     text := 'Recusado'
    else if Sender.AsString = 'C' then
      Text := 'Cancelado'
    else if Sender.AsString = 'V' then
      Text := 'Em Revisão';


  end;
end;

procedure TPesqOrcamentoProducao.cdsOrcamentoORC_CEPGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  //Text:= MascaraCEP(Sender.Text);
end;

procedure TPesqOrcamentoProducao.cdsOrcamentoORC_CGCCPFGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  //if Sender.AsString then
  Text:= MascaraCNPJ_CPF(Sender.Text);
end;

procedure TPesqOrcamentoProducao.cdsOrcamentoORC_FAXGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= MascaraFone(Sender.AsString);
end;

procedure TPesqOrcamentoProducao.cdsOrcamentoORC_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= MascaraFone(Sender.AsString);
end;

procedure TPesqOrcamentoProducao.cdsOrcamentoREP_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= MascaraFone (sender.AsString);
end;

procedure TPesqOrcamentoProducao.chkNaoAprovadosClick(Sender: TObject);
begin
  inherited;
  Filtro;
end;

procedure TPesqOrcamentoProducao.cxgrd1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if  AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clHighlight
  else
  if cxgrd1DBTableView1.DataController.DataSet.FieldByName('ORC_SITUACAO').AsString = 'C' then
     ACanvas.Font.Color := clRed

  else
  If AViewInfo.GridRecord.RecordIndex mod 2 = 0 Then
       ACanvas.Brush.Color := $FFFAFA  // --->  Quero trocar aqui por STYLES
    Else
       ACanvas.Brush.Color := $CDC9C9; // --->  Quero trocar aqui por STYLES
end;

procedure TPesqOrcamentoProducao.cxgrd1DBTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  //select está no componente
//  cdsBuscaDetalhes.Params[0].AsInteger := cdsBuscaORC_CODIGO.AsInteger;
//  cdsBuscaDetalhes.Open;
//  cdsBuscaFollow.close;
//  cdsBuscaFollow.Params[0].AsInteger := cdsBuscaTRF_REGISTRO.AsInteger  ;
//  cdsBuscaFollow.Open;// query está no componente
end;

procedure TPesqOrcamentoProducao.edOrcamentoExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TPesqOrcamentoProducao.edPesquisaLivreChange(Sender: TObject);
begin
  inherited;
  if Length(edPesquisaLivre.Text)>2 then
    filtro;

end;

procedure TPesqOrcamentoProducao.filtroDetalhe;
begin
  //select está no componente
//  cdsBuscaDetalhes.Params[0].AsInteger := cdsBuscaORC_CODIGO.AsInteger;
  cdsBuscaDetalhes.Open;
end;

procedure TPesqOrcamentoProducao.FormCreate(Sender: TObject);
begin
  inherited;


  Self.ProcedureFiltro := Pesquisa;
  self.ProcedureFiltroDetalhe := filtroDetalhe;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  Menu := 'ProduçãoOrçamento Industrial';
  filtro;
  self.CampoID := 'ORC_CODIGO';

end;

end.


