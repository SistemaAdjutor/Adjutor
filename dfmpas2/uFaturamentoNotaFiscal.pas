unit uFaturamentoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask,  rxToolEdit,  rxCurrEdit, DBCtrls,  BaseDBForm,
  ComboBoxRw, Grids, DBGrids, Data.DB, SgDbSeachComboUnit, uteis, Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, Data.DBXFirebird, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvgPage,
  Vcl.ExtCtrls, JvExComCtrls, JvComCtrls, InicioDB;

type
  TFrmFaturamentoNovoNotaFiscal = class(TfrmBaseDB)
    dspItemNota: TDataSetProvider;
    SqlItemNota: TSQLQuery;
    DsItemNota: TDataSource;
    CdsItemNota: TClientDataSet;
    CdsItemNotaPRD_REFER: TStringField;
    CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsItemNotaPRD_DESCRI: TStringField;
    CdsItemNotaSTB_TRIBUTACAO: TStringField;
    CdsItemNotaIPI_CODIGO: TStringField;
    CdsItemNotaNF_QTDE: TFMTBCDField;
    CdsItemNotaNF_PRECO: TFMTBCDField;
    CdsItemNotaNTP_CFOP: TIntegerField;
    CdsItemNotaNF_ICMSALIQ: TFMTBCDField;
    CdsItemNotaNF_IPIALIQ: TFMTBCDField;
    CdsItemNotaNF_VLSUBST: TFMTBCDField;
    CdsItemNotaNF_IFRETE: TFMTBCDField;
    CdsItemNotaNF_ISEGURO: TFMTBCDField;
    CdsItemNotaNF_IDESP_ACES: TFMTBCDField;
    CdsItemNotaNF_VLPIS: TFMTBCDField;
    CdsItemNotaNF_VLCOFINS: TFMTBCDField;
    CdsItemNotaNF_TOTAL_CC: TCurrencyField;
    CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField;
    CdsItemNotaNF_ICMSBASE: TFMTBCDField;
    CdsItemNotaNF_IPIBASE: TFMTBCDField;
    CdsItemNotaPRD_UND: TStringField;
    CdsItemNotaNF_SUBTRIBASE: TFMTBCDField;
    CdsItemNotaNF_ICMSVALOR: TFMTBCDField;
    CdsItemNotaNF_IDESCTO1: TFMTBCDField;
    CdsItemNotaNF_ALIQSUBTRIB: TFMTBCDField;
    CdsItemNotaNF_IPIVALOR: TFMTBCDField;
    pcPrincipal: TJvgPageControl;
    tsDados: TTabSheet;
    grpItens: TGroupBox;
    grpTotais: TGroupBox;
    TabSheet2: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    EdDestEmail: TDBEdit;
    EdDestFone: TDBEdit;
    EdDestCep: TDBEdit;
    EdDestEndereco: TDBEdit;
    EdDestFantasia: TDBEdit;
    EdDestRazao: TDBEdit;
    EdDestCodigo: TDBEdit;
    EdDestCnpjCpf: TDBEdit;
    EdDestIE: TDBEdit;
    EdDestBairro: TDBEdit;
    EdDestCidade: TDBEdit;
    EdDestEstado: TDBEdit;
    dspNota: TDataSetProvider;
    qNota: TSQLQuery;
    dsNota: TDataSource;
    cdsNota: TClientDataSet;
    cdsNotacli_razao: TStringField;
    cdsNotaPCL_CODIGO: TStringField;
    cdsNotaPCL_NOME: TStringField;
    cdsNotaNF_BASEICMS: TFMTBCDField;
    cdsNotaNF_VL_ICMS: TFMTBCDField;
    cdsNotaNF_VLBASESUBTRIB: TFMTBCDField;
    cdsNotaNF_VL_SUBTRIB: TFMTBCDField;
    cdsNotaNF_VALOR_COFINS: TFMTBCDField;
    cdsNotaNF_VL_IPI: TFMTBCDField;
    cdsNotaNF_VALORTOT_PIS: TFMTBCDField;
    cdsNotaNF_VLFRETE: TFMTBCDField;
    cdsNotaNF_VLSEGURO: TFMTBCDField;
    cdsNotaNF_DESP_ACES: TFMTBCDField;
    cdsNotaNF_VL_DESCTO: TFMTBCDField;
    cdsNotaNF_TOT_PROD: TFMTBCDField;
    cdsNotaCLI_CODIGO: TStringField;
    cdsNotaNF_TIPODOC: TStringField;
    cdsNotaNF_TIPO_FRETE: TStringField;
    cdsNotaOPE_NATUREZA: TStringField;
    cdsNotaOPE_DESCRI: TStringField;
    cdsNotaNF_NOTANUMBER: TStringField;
    cdsNotanf_entr_said: TStringField;
    cdsNotaNF_EMISSAO: TDateField;
    cdsNotaNF_SAIDA: TDateField;
    cdsNotaNF_MODELO_NF: TStringField;
    cdsNotaNF_SERIE: TStringField;
    cdsNotaNF_OBSERVACAO: TBlobField;
    cdsNotaNF_PLACAVE: TStringField;
    cdsNotaTRP_CODIGO: TStringField;
    cdsNotaTRP_RAZAO: TStringField;
    dspcliente: TDataSetProvider;
    qCliente: TSQLQuery;
    dsCliente: TDataSource;
    cdsCliente: TClientDataSet;
    cdsClienteCLI_CODIGO: TStringField;
    cdsClienteCLI_CGC: TStringField;
    cdsClienteCLI_RAZAO: TStringField;
    cdsClienteCLI_FANTASIA: TStringField;
    cdsClienteCLI_ENDERE: TStringField;
    cdsClienteCLI_BAIRRO: TStringField;
    cdsClienteCLI_CIDADE: TStringField;
    cdsClienteCLI_UF: TStringField;
    cdsClienteCLI_CEP: TStringField;
    cdsClienteCLI_FONE: TStringField;
    cdsClienteCLI_EMAIL: TStringField;
    cdsClienteCLI_INSC: TStringField;
    tsDuplicatas: TTabSheet;
    dspDuplicatas: TDataSetProvider;
    qDuplicatas: TSQLQuery;
    dsDuplicatas: TDataSource;
    cdsDuplicatas: TClientDataSet;
    cdsDuplicatasFAT_CODIGO: TStringField;
    cdsDuplicatasFPC_NUMER: TStringField;
    cdsDuplicatasFPC_VENCTO: TSQLTimeStampField;
    cdsDuplicatasFPC_VLPARC: TFMTBCDField;
    cdsDuplicatasFPC_COBTIPO: TStringField;
    cdsDuplicatasFPC_TIPODOC: TStringField;
    DBGrid2: TDBGrid;
    TsTransporte: TTabSheet;
    Label11: TLabel;
    EdTransporteRazao: TDBEdit;
    Label18: TLabel;
    EdTransportePlaca: TDBEdit;
    Label62: TLabel;
    EdTransporteCnpj: TDBEdit;
    Label63: TLabel;
    EdTransporteEndereco: TDBEdit;
    Label64: TLabel;
    EdTransporteTipoFrete: TDBEdit;
    Label65: TLabel;
    EdTransporteIE: TDBEdit;
    Label67: TLabel;
    EdTransporteEspecie: TDBEdit;
    Label68: TLabel;
    EdTransportePesoLiquido: TDBEdit;
    EdTransportePesoBruto: TDBEdit;
    Label69: TLabel;
    Label70: TLabel;
    EdTransporteUF: TDBEdit;
    EdTransporteMunicipio: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit41: TDBEdit;
    cdsNotaTRP_ENDERE: TStringField;
    cdsNotaTRP_CIDADE: TStringField;
    cdsNotaTRP_uf: TStringField;
    cdsNotaTRP_CEP: TStringField;
    cdsNotaTRP_CGC: TStringField;
    cdsNotaTRP_FONE: TStringField;
    cdsNotaTRP_INSC: TStringField;
    DBEdit42: TDBEdit;
    Label73: TLabel;
    cdsNotaNF_CHAVE_NFE: TStringField;
    cdsNotaNF_ESPECIE: TStringField;
    cdsNotaNF_MARCA: TStringField;
    cdsNotaNF_NUMERO: TStringField;
    cdsNotaNF_QTDE: TFMTBCDField;
    cdsNotaNF_PESOBRU: TFMTBCDField;
    cdsNotaNF_PESOLIQ: TFMTBCDField;
    cdsNotaNF_HORASAIDA: TTimeField;
    cdsNotaPED_CODIGO: TStringField;
    cdsNotaREP_CODIGO: TStringField;
    cdsNotaREP_NOME: TStringField;
    cdsNotaNF_TOT_NOTA: TFMTBCDField;
    cdsNotaNF_ALIQCREDSIMPLES: TFMTBCDField;
    cdsNotaNF_VLCREDSIMPLES: TFMTBCDField;
    CdsItemNotaNF_BASE_PIS: TFMTBCDField;
    CdsItemNotaNF_ALIQPIS: TFMTBCDField;
    CdsItemNotaCST_PIS: TStringField;
    CdsItemNotaCST_COFINS: TStringField;
    CdsItemNotaNF_BASE_COFINS: TFMTBCDField;
    CdsItemNotaNF_ALIQCOFINS: TFMTBCDField;
    tsInformacoesAdd: TTabSheet;
    grpDadosAdicionais: TGroupBox;
    DBMemo1: TDBMemo;
    pcabecalho: TPanel;
    grpCliente: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label3: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    grpTransportadora: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit20: TDBEdit;
    Label30: TLabel;
    DBEdit43: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label38: TLabel;
    PcItensNota: TJvPageControl;
    tsItens: TTabSheet;
    tsImpostosItens: TTabSheet;
    DBGrid1: TDBGrid;
    pDiminuir: TFlowPanel;
    spRedimecionarItem: TSpeedButton;
    tsHistorico: TTabSheet;
    qhistorico: TSQLQuery;
    dsHistorico: TDataSource;
    cdsHistorico: TClientDataSet;
    cdsHistoricoNFH_DATA: TSQLTimeStampField;
    cdsHistoricoNFM_REGISTRO: TIntegerField;
    cdsHistoricoNFH_DESCRICAO: TStringField;
    cdsHistoricoUSU_NOME: TStringField;
    dspHistorico: TDataSetProvider;
    DBGrid3: TDBGrid;
    cdsNotaNF_REGISTRO: TIntegerField;
    cdsNotaNF_DATA_AUTORIZACAO: TDateField;
    cdsNotaNF_PROTOCOLO_NFE: TStringField;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    tsTotais: TTabSheet;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label12: TLabel;
    DBEdit25: TDBEdit;
    Label31: TLabel;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBEdit53: TDBEdit;
    DBEdit62: TDBEdit;
    Label80: TLabel;
    DBEdit63: TDBEdit;
    Label81: TLabel;
    DBEdit64: TDBEdit;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    Label84: TLabel;
    DBEdit67: TDBEdit;
    cdsNotaNF_VALOR_TOTAL_FCP: TFMTBCDField;
    cdsNotaNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField;
    cdsNotaNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField;
    cdsNotaNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField;
    Label85: TLabel;
    DBEdit68: TDBEdit;
    cdsNotaIBPT_VLAPROXTRIBUTOS: TFMTBCDField;
    Label86: TLabel;
    cdsNotaNF_BASE_IPI: TFMTBCDField;
    GroupBox1: TGroupBox;
    Label40: TLabel;
    DBEdit1: TDBEdit;
    Label39: TLabel;
    DBEdit2: TDBEdit;
    Valor: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    Label41: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label43: TLabel;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    Label44: TLabel;
    DBEdit7: TDBEdit;
    Label45: TLabel;
    DBEdit8: TDBEdit;
    Label46: TLabel;
    edNF_IPIVALOR: TDBEdit;
    PIS: TGroupBox;
    GroupBox4: TGroupBox;
    Label59: TLabel;
    DBEdit51: TDBEdit;
    Label60: TLabel;
    DBEdit52: TDBEdit;
    Label61: TLabel;
    DBEdit54: TDBEdit;
    Label66: TLabel;
    DBEdit55: TDBEdit;
    Label74: TLabel;
    DBEdit56: TDBEdit;
    Label75: TLabel;
    DBEdit57: TDBEdit;
    Label76: TLabel;
    DBEdit58: TDBEdit;
    Label77: TLabel;
    DBEdit59: TDBEdit;
    DBGrid4: TDBGrid;
    CdsItemNotaNF_CSOSN: TStringField;
    cdsNotaNF_NUM_NFE: TIntegerField;
    cdsNotaNF_INTEGRADO: TStringField;
    cdsNotaNF_TIPONOTA: TStringField;
    CdsItemNotanf_totalitem: TFMTBCDField;
    cdsNotaNF_VL_DESCTO_FAT: TFMTBCDField;
    DBEdit69: TDBEdit;
    Label87: TLabel;
    CdsItemNotaNF_PRODUTO_AGREGADO: TStringField;
    procedure btnCancelarClick(Sender: tObject);
    procedure CdsItemNotaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsNotanf_entr_saidGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsNotaNF_TIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsNotaNF_TIPO_FRETEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDuplicatasFPC_COBTIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDuplicatasFPC_TIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsNotaTRP_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsClienteCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure spRedimecionarItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FRegistro : integer;
    FEmpCodigo : string;
    procedure SetRegistro (const aValues : integer) ;

  public
   procedure BuscaNotasItens;
   procedure BuscaNotas;
   procedure BuscaClientes(const CLI_CODIGO : string);
   procedure BuscaDuplicatas;
   procedure BuscaHistoricos;
   property Registro: Integer  read Fregistro write SetRegistro;
   property EmpCodigo : string read FempCodigo write FEmpCodigo;
  end;

var
  FrmFaturamentoNovoNotaFiscal: TFrmFaturamentoNovoNotaFiscal;

implementation

{$R *.dfm}

USES RWFUNC;

procedure TFrmFaturamentoNovoNotaFiscal.btnCancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmFaturamentoNovoNotaFiscal.BuscaClientes(const CLI_CODIGO : string);
begin
 cdsCliente.Close;
 qcliente.CommandText := ' SELECT CLI_CODIGO, CLI_CGC, CLI_RAZAO,CLI_FANTASIA,  CLI_INSC,'+
                         ' CLI_ENDERE, CLI_CEP, CLI_BAIRRO, CLI_CIDADE,CLI_UF,CLI_FONE, CLI_EMAIL'+
                         ' FROM CLI0000 '+
                         ' WHERE CLI_CODIGO = ' +   QuotedStr(CLI_CODIGO);
 cdsCliente.Open;
end;

procedure TFrmFaturamentoNovoNotaFiscal.BuscaDuplicatas;
begin
 cdsDuplicatas.Close;
 qDuplicatas.CommandText :=
 ' SELECT FAT_CODIGO, FPC_NUMER ,FPC_VENCTO,FPC_VLPARC, FPC_COBTIPO, FPC_TIPODOC  FROM NF_PC01 np'+
 ' WHERE FAT_CODIGO = ' + QuotedStr(cdsNotaNF_NOTANUMBER.AsString);
 cdsDuplicatas.Open;
end;

procedure TFrmFaturamentoNovoNotaFiscal.BuscaHistoricos;
begin
 if CdsNota.FieldByName('NF_REGISTRO').AsInteger <> 0 then
 begin
  cdsHistorico.Close;
  qhistorico.CommandText := 'SELECT (nfh_data+nfh_hora) AS NFH_DATA,  u.USU_NOME, NFM_REGISTRO,  nfh_descricao  '+
                           ' FROM NF0001_HISTORICO hi LEFT JOIN usuario u ON (u.USU_CODIGO = hi.USU_CODIGO) '+
                           ' WHERE NF_REGITRO = ' + IntToStr(CdsNota.FieldByName('NF_REGISTRO').AsInteger)+
                           ' order by 1 desc';



  cdsHistorico.Open;
 end;
end;

procedure TFrmFaturamentoNovoNotaFiscal.BuscaNotas;
begin
 cdsNota.Close;
 qNota.CommandText := 'SELECT nf.NF_NOTANUMBER, nf.CLI_CODIGO,cl.CLI_RAZAO, nf.PCL_CODIGO, PC.PCL_NOME , NF_BASEICMS, NF_VL_ICMS, NF_VLBASESUBTRIB, NF_VL_SUBTRIB, NF_VALOR_COFINS, NF_VLFRETE, '+
                      ' NF_VLSEGURO, NF_DESP_ACES, NF_VL_DESCTO, NF_VL_DESCTO_FAT, '+
                      ' NF_TOT_PROD, NF_TOT_NOTA , NF_VL_IPI, NF_BASE_IPI, NF_VALORTOT_PIS, NF_EMISSAO,NF_SAIDA,NF_HORASAIDA, nf_entr_said, '+
                      ' nf.OPE_NATUREZA, nf.OPE_CODIGO, OPE_DESCRI, NF_NOTANUMBER,NF_TIPODOC,  '+
                      ' NF_MODELO_NF, NF_SERIE, NF_TIPO_FRETE,nf_observacao, NF_CHAVE_NFE,  '+
                      ' NF_PLACAVE, ped.TRP_CODIGO, tr.TRP_RAZAO, trp_cep, '+
                      ' Tr.TRP_UF , TRP_INSC , TRP_CGC ,TRP_ENDERE,TRP_CIDADE, TRP_FONE, '+
                      ' NF_MARCA, NF_QTDE, NF_PESOBRU, NF_PESOLIQ, NF_ESPECIE, NF_NUMERO, '+
                      ' nf.PED_CODIGO, rp.REP_CODIGO, rp.REP_NOME, NF_TOT_NOTA, '+
                      ' NF_ALIQCREDSIMPLES, NF_VLCREDSIMPLES, nf.NF_REGISTRO, NF.NF_PROTOCOLO_NFE, NF.NF_DATA_AUTORIZACAO, '+
                      ' NF_VALOR_TOTAL_FCP, NF_VALOR_TOTAL_PARTILHA_DEST, NF_VALOR_TOTAL_PARTILHA_ORIG, NF_NFSE_VLR_BASE_CALCULO, '+
                      ' IBPT_VLAPROXTRIBUTOS, nf.NF_NUM_NFE,  NF_INTEGRADO , NF_TIPONOTA  '+
                      ' FROM NF0001 nf JOIN CLI0000 cl ON (cl.CLI_CODIGO = nf.CLI_CODIGO) '+
                      ' join ped0000 ped on (ped.ped_codigo = nf.ped_codigo and nf.emp_codigo = ped.emp_codigo )'+
                      ' LEFT JOIN PCL0000 PC ON (PC.PCL_CODIGO = NF.PCL_CODIGO) '+
                      ' LEFT JOIN FAT0000 FT ON (FT.fat_codigo = NF.NF_NOTANUMBER AND  ft.EMP_CODIGO = nf.emp_codigo ) '+
                      ' LEFT JOIN OPE0000 OP ON (OP.OPE_CODIGO  = NF.OPE_CODIGO AND OP.OPE_NATUREZA = NF.OPE_NATUREZA ) '+
                      ' LEFT JOIN TRP0000 Tr ON (Tr.trp_codigo = ped.trp_codigo) '+
                      ' LEFT JOIN REP0000 RP ON (rp.REP_CODIGO = nf.REP_CODIGO) '+
                      ' WHERE NF_REGISTRO = '+  IntToStr(Registro);


 cdsNota.Open;
 if cdsNota.FieldByName('NF_NUM_NFE').AsInteger <> 0   then
   Self.Caption := 'Nota Fiscal nº: '+ IntToStr(cdsNota.FieldByName('NF_NUM_NFE').AsInteger) + ' de ' +  cdsNota.FieldByName('CLI_RAZAO').AsString
 else
   Self.Caption := 'Pedido nº: '+cdsNota.FieldByName('PED_CODIGO').AsString     + ' de ' +  cdsNota.FieldByName('CLI_RAZAO').AsString;
end;

procedure TFrmFaturamentoNovoNotaFiscal.BuscaNotasItens;
begin
  CdsItemNota.Close;
  SqlItemNota.SQL.Clear;
  SqlItemNota.SQL.Add( 'SELECT  it.PRD_REFER,PRDCO_CODIGO_ORIGINAL, it.PRD_DESCRI, it.NF_QTDE,pr.PRD_UND, it.nf_preco,it.nf_totalitem, it.ipi_codigo, it.ntp_cfop, it.NF_ICMSBASE,NF_ICMSVALOR, NF_ICMSALIQ, '+
                       ' it.STB_TRIBUTACAO,it.NF_SUBTRIBASE, NF_VLSUBST, NF_IPIBASE,NF_IPIALIQ, NF_IPIVALOR, NF_IDESCTO1, NF_IDESCTO2, NF_IFRETE, NF_ISEGURO, NF_IDESP_ACES, NF_ALIQSUBTRIB,  '+
                       '  it.NF_VLCOFINS,NF_ICMSVALOR,  NF_BASE_PIS, NF_ALIQPIS , CST_PIS,it.NF_VLPIS, NF_CSOSN, '+
                       ' CST_COFINS, NF_BASE_COFINS, NF_ALIQCOFINS, NF_PRODUTO_AGREGADO ' +
                       ' FROM NF_IT01 it JOIN PRD0000 pr ON (pr.PRD_codigo = it.PRD_CODIGO)                                                  '+
                       ' WHERE NF_IT_NOTANUMER = '+ QuotedStr(cdsnota.FieldByName('NF_NOTANUMBER').AsString)  +
                       ' and it.emp_codigo = ' + QuotedStr(EmpCodigo) ) ;
   if (cdsNota.FieldByName('NF_INTEGRADO').AsString = 'S') then
      SqlItemNota.SQL.add( ' AND PR.PRD_PRODSERV = '+ QuotedStr(cdsNota.FieldByName('NF_TIPONOTA').AsString));

 CdsItemNota.Open;
end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsClienteCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := MascaraFone(Sender.AsString) ;
end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsDuplicatasFPC_COBTIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
     if  Sender.AsString  = 'CT' then
       text := 'CARTEIRA'
     Else if  Sender.AsString  = 'CS' then
       text := 'COBRANÇA SIMPLES'
     Else if  Sender.AsString  = 'CC' then
       text := 'COBRANÇA CAUCIONADA'
     Else if  Sender.AsString  = 'CD' then
       text := 'COBRANÇA DESCONTADA'
     Else if  Sender.AsString  = 'SR' then
       text := 'COBRANÇA SEM REGISTRO'
     else if  Sender.AsString  = 'CR' then
       text := 'COBRANÇA RAPIDA'
     else  if  Sender.AsString  = 'CQ' then
       Text := 'CUSTODIA DE CHEQUE'
     else if  Sender.AsString  = 'CH' then
       Text:=  'CHEQUE DESCONTADO'


end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsDuplicatasFPC_TIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if  Sender.AsString = 'DP' then text:= 'DUPLICATA'
  else if Sender.AsString ='BL' then text:= 'BOLETO'
  else if Sender.AsString ='RC' then text:= 'RECIBO'
  else if Sender.AsString ='CH' then text:= 'CHEQUE'
  else if Sender.AsString ='DN' then text:= 'DINHEIRO'
  else if Sender.AsString ='OU' then text:= 'OUTROS'
  else if Sender.AsString ='CC' then text:= 'CREDITO CONTA';
end;

procedure TFrmFaturamentoNovoNotaFiscal.CdsItemNotaCalcFields(DataSet: TDataSet);
begin
   CdsItemNotaNF_TOTAL_CC.AsCurrency     := Uteis.RoundTo( CdsItemNotaNF_QTDE.AsCurrency * CdsItemNotaNF_PRECO.AsFloat, -2 );
   CdsItemNotaNF_TOTAL_IPI_CC.AsCurrency := Uteis.RoundTo( ( CdsItemNotaNF_TOTAL_CC.AsCurrency * CdsItemNotaNF_IPIALIQ.AsCurrency) / 100 + CdsItemNotaNF_TOTAL_CC.AsCurrency, -2 );
end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsNotanf_entr_saidGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  If TField(Sender).AsString = 'E' then
    Text := 'Entrada'
  else
   Text :=  'Saída';

end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsNotaNF_TIPODOCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if  Sender.AsString = 'DP' then text:= 'DUPLICATA'
  else if Sender.AsString ='BL' then text:= 'BOLETO'
  else if Sender.AsString ='RC' then text:= 'RECIBO'
  else if Sender.AsString ='CH' then text:= 'CHEQUE'
  else if Sender.AsString ='DN' then text:= 'DINHEIRO'
  else if Sender.AsString ='OU' then text:= 'OUTROS'
  else if Sender.AsString ='CC' then text:= 'CREDITO CONTA';
end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsNotaNF_TIPO_FRETEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '0' then text := '0-Remetente-CIF'
  else if Sender.AsString = '1' then text :=  '1-Destinatário-FOB'
  else if Sender.AsString =  '2' then text := '2-Terceiros'
  else if Sender.AsString = '9' then text :=  '9-Sem frete'

end;

procedure TFrmFaturamentoNovoNotaFiscal.cdsNotaTRP_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    text:= MascaraCNPJ_CPF(Sender.Value)
end;

procedure TFrmFaturamentoNovoNotaFiscal.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
   if (CdsItemNotaNF_PRODUTO_AGREGADO.AsString = 'S') then
   begin
          TDBGrid(sender).Canvas.Font.Color := clGreen;
          TDBGrid(sender).Canvas.FillRect(rect);
          TDBGrid(sender).DefaultDrawDataCell(Rect,column.Field,state);
   end
   else
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;

end;

procedure TFrmFaturamentoNovoNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  PcItensNota.ActivePageIndex := 0 ;
  pcPrincipal.ActivePageIndex := 0 ;

end;

procedure TFrmFaturamentoNovoNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  if EmpCodigo = '' then
     EmpCodigo := DBInicio.Empresa.EMP_CODIGO;
  CdsItemNotaNF_QTDE.DisplayFormat := QtdeCasaDecimal(EmpCodigo,'N');
  BuscaNotas;
  BuscaNotasItens;
  BuscaClientes(cdsNota.FieldByName('cli_codigo').AsString);
  BuscaDuplicatas;
  BuscaHistoricos;
end;

procedure TFrmFaturamentoNovoNotaFiscal.SetRegistro(const aValues: integer);
begin
 FRegistro := avalues;
end;

procedure TFrmFaturamentoNovoNotaFiscal.spRedimecionarItemClick(Sender: TObject);
begin
  inherited;
  if not pcabecalho.Visible then
    spRedimecionarItem.Hint := 'Aumentar visualização dos itens'
  else
   spRedimecionarItem.Hint := 'Voltar ao tamanho normal';

  pcabecalho.Visible := not pcabecalho.Visible;
end;

end.
