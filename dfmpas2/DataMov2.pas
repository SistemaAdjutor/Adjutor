unit DataMov2;

interface

uses
  SysUtils, Classes, FMTBCd, DB, DBClient, Provider, SqlExpr;

type
  TDataMovimento2 = class(TDataModule)
    SQLAux: tsqlquery;
    SqlAux2: tsqlquery;
    SqlDepartamento: tsqlquery;
    DspDepartamento: TDataSetProvider;
    CdsDepartamento: TClientDataSet;
    SqlDepartamentoDEP_CODIGO: TIntegerField;
    SqlDepartamentoDEP_NOME: TStringField;
    SqlDepartamentoDEP_QTDE_FUNC: TIntegerField;
    SqlDepartamentoDEP_HORA_MES: TIntegerField;
    CdsDepartamentoDEP_NOME: TStringField;
    CdsDepartamentoDEP_QTDE_FUNC: TIntegerField;
    CdsDepartamentoDEP_CODIGO: TIntegerField;
    CdsDepartamentoDEP_HORA_MES: TIntegerField;
    DsDepartamento: TDataSource;
    SqlDirCusto: tsqlquery;
    DspDirCusto: TDataSetProvider;
    CdsDirCusto: TClientDataSet;
    DsDirCusto: TDataSource;
    SqlReqCompra: tsqlquery;
    DspReqCompra: TDataSetProvider;
    CdsReqCompra: TClientDataSet;
    DsReqCompra: TDataSource;
    SqlReqItens: tsqlquery;
    DspReqItens: TDataSetProvider;
    CdsReqItens: TClientDataSet;
    DsReqItens: TDataSource;
    SqlReqCompraREQ_CODIGO: TIntegerField;
    SqlReqCompraEMP_CODIGO: TStringField;
    SqlReqCompraREQ_EMISSAO: TDateField;
    SqlReqCompraREQ_HORA: TTimeField;
    SqlReqCompraDEP_CODIGO: TIntegerField;
    SqlReqCompraREQ_PRIORIDADE: TStringField;
    SqlReqCompraREQ_STATUS: TStringField;
    CdsReqCompraREQ_CODIGO: TIntegerField;
    CdsReqCompraEMP_CODIGO: TStringField;
    CdsReqCompraREQ_EMISSAO: TDateField;
    CdsReqCompraREQ_HORA: TTimeField;
    CdsReqCompraDEP_CODIGO: TIntegerField;
    CdsReqCompraREQ_PRIORIDADE: TStringField;
    CdsReqCompraREQ_STATUS: TStringField;
    SqlReqItensRQI_REGISTRO: TIntegerField;
    SqlReqItensEMP_CODIGO: TStringField;
    SqlReqItensREQ_CODIGO: TIntegerField;
    SqlReqItensRQI_SOLICITADA: TFMTBCdField;
    SqlReqItensRQI_STATUS: TStringField;
    CdsReqItensRQI_REGISTRO: TIntegerField;
    CdsReqItensEMP_CODIGO: TStringField;
    CdsReqItensREQ_CODIGO: TIntegerField;
    CdsReqItensRQI_SOLICITADA: TFMTBCdField;
    CdsReqItensRQI_STATUS: TStringField;
    SqlReqCompraREQ_SOLICITANTE: TStringField;
    CdsReqCompraREQ_SOLICITANTE: TStringField;
    SqlReqItensOSI_REGISTRO: TIntegerField;
    SqlReqItensOSV_CODIGO: TStringField;
    CdsReqItensOSI_REGISTRO: TIntegerField;
    CdsReqItensOSV_CODIGO: TStringField;
    SqlReqItensRQI_ORIGEM: TStringField;
    CdsReqItensRQI_ORIGEM: TStringField;
    SqlReqItensRQI_SOLICITOU_COMPRA: TStringField;
    CdsReqItensRQI_SOLICITOU_COMPRA: TStringField;
    SqlCheques: tsqlquery;
    DspCheques: TDataSetProvider;
    CdsCheques: TClientDataSet;
    DsCheques: TDataSource;
    SqlChequesCHQ_REGISTRO: TIntegerField;
    SqlChequesEMP_CODIGO: TStringField;
    SqlChequesBAN_CODIGO: TStringField;
    SqlChequesCHQ_EMISSAO: TDateField;
    SqlChequesCHQ_BOMPARA: TDateField;
    SqlChequesCHQ_NUMERO: TStringField;
    SqlChequesCHQ_NUMERO_DV: TStringField;
    SqlChequesCHQ_VALOR: TFMTBCdField;
    SqlChequesCHQ_SITUACAO: TStringField;
    SqlChequesCHQ_IMP: TStringField;
    SqlChequesCHQ_TIPO_FAVORECIDO: TStringField;
    SqlChequesCHQ_CODIGO_FAVORECIDO: TStringField;
    SqlChequesCHQ_NOME_FAVORECIDO: TStringField;
    CdsChequesCHQ_REGISTRO: TIntegerField;
    CdsChequesEMP_CODIGO: TStringField;
    CdsChequesBAN_CODIGO: TStringField;
    CdsChequesCHQ_EMISSAO: TDateField;
    CdsChequesCHQ_BOMPARA: TDateField;
    CdsChequesCHQ_NUMERO: TStringField;
    CdsChequesCHQ_NUMERO_DV: TStringField;
    CdsChequesCHQ_VALOR: TFMTBCdField;
    CdsChequesCHQ_SITUACAO: TStringField;
    CdsChequesCHQ_IMP: TStringField;
    CdsChequesCHQ_TIPO_FAVORECIDO: TStringField;
    CdsChequesCHQ_CODIGO_FAVORECIDO: TStringField;
    CdsChequesCHQ_NOME_FAVORECIDO: TStringField;
    SqlChequesCHQ_LIQUIDAR: TStringField;
    SqlChequesUSU_CODIGO: TIntegerField;
    SqlChequesUSU_LOGIN: TStringField;
    CdsChequesCHQ_LIQUIDAR: TStringField;
    CdsChequesUSU_CODIGO: TIntegerField;
    CdsChequesUSU_LOGIN: TStringField;
    SqlChequesCHQ_OBSERVACAO: TStringField;
    SqlChequesCHQ_PAG_REGISTRO: TIntegerField;
    CdsChequesCHQ_OBSERVACAO: TStringField;
    CdsChequesCHQ_PAG_REGISTRO: TIntegerField;
    SqlChequesCHQ_EXCLUSAO: TStringField;
    CdsChequesCHQ_EXCLUSAO: TStringField;
    SqlChequesCHQ_MOTIVO_EXCLUSAO: TStringField;
    CdsChequesCHQ_MOTIVO_EXCLUSAO: TStringField;
    SqlChequesCHQ_DATA_EXCLUSAO: TDateField;
    SqlChequesCHQ_HORA_EXCLUSAO: TTimeField;
    CdsChequesCHQ_DATA_EXCLUSAO: TDateField;
    CdsChequesCHQ_HORA_EXCLUSAO: TTimeField;
    SqlChequesUSU_CODIGO_EXCLUSAO: TIntegerField;
    SqlChequesUSU_LOGIN_EXCLUSAO: TStringField;
    CdsChequesUSU_CODIGO_EXCLUSAO: TIntegerField;
    CdsChequesUSU_LOGIN_EXCLUSAO: TStringField;
    SqlServico: tsqlquery;
    DspServico: TDataSetProvider;
    CdsServico: TClientDataSet;
    DsServico: TDataSource;
    CdsServicoCLI_SERVICO: TIntegerField;
    SqlServicoCLI_SERVICO: TIntegerField;
    SqlServicoEMP_CODIGO: TStringField;
    SqlServicoCLI_CODIGO: TStringField;
    SqlServicoCLI_SV_DATA_VENDA: TDateField;
    SqlServicoCLI_SV_INICIO_IMPLANTACAO: TDateField;
    SqlServicoCLI_SV_TIPO: TStringField;
    SqlServicoCLI_SV_CONSULTOR: TStringField;
    SqlServicoCLI_SV_OBSIP: TMemoField;
    SqlServicoCLI_SV_RESPONSA: TStringField;
    SqlServicoCLI_SV_CARGO: TStringField;
    SqlServicoCLI_SV_CONCLUSAOIP: TDateField;
    SqlServicoCLI_SV_AUTORIZADAS: TIntegerField;
    SqlServicoCLI_SV_PRAZOLIBERA: TIntegerField;
    SqlServicoCLI_SV_VALIDADE_ATUAL: TDateField;
    SqlServicoCLI_SV_TIPO_SERVICO: TStringField;
    SqlServicoCLI_SV_VALOR_CONTRATO: TFMTBCdField;
    SqlServicoCLI_SV_INICIOCT: TDateField;
    SqlServicoCLI_SV_MESCONTRATO: TStringField;
    SqlServicoCLI_SV_ATUALIZAINDICE: TStringField;
    SqlServicoCLI_SV_ULTIMA_ATUALIZACAO: TDateField;
    SqlServicoCLI_SV_TIPO_CONTRATO: TStringField;
    SqlServicoCLI_SV_OBSCT: TMemoField;
    SqlServicoCLI_SV_ALTERACAOPM: TDateField;
    SqlServicoCLI_SV_LOGONUSER: TStringField;
    SqlServicoCLI_SV_INFOALT: TStringField;
    CdsServicoEMP_CODIGO: TStringField;
    CdsServicoCLI_CODIGO: TStringField;
    CdsServicoCLI_SV_DATA_VENDA: TDateField;
    CdsServicoCLI_SV_INICIO_IMPLANTACAO: TDateField;
    CdsServicoCLI_SV_TIPO: TStringField;
    CdsServicoCLI_SV_CONSULTOR: TStringField;
    CdsServicoCLI_SV_OBSIP: TMemoField;
    CdsServicoCLI_SV_RESPONSA: TStringField;
    CdsServicoCLI_SV_CARGO: TStringField;
    CdsServicoCLI_SV_CONCLUSAOIP: TDateField;
    CdsServicoCLI_SV_AUTORIZADAS: TIntegerField;
    CdsServicoCLI_SV_PRAZOLIBERA: TIntegerField;
    CdsServicoCLI_SV_VALIDADE_ATUAL: TDateField;
    CdsServicoCLI_SV_TIPO_SERVICO: TStringField;
    CdsServicoCLI_SV_VALOR_CONTRATO: TFMTBCdField;
    CdsServicoCLI_SV_INICIOCT: TDateField;
    CdsServicoCLI_SV_MESCONTRATO: TStringField;
    CdsServicoCLI_SV_ATUALIZAINDICE: TStringField;
    CdsServicoCLI_SV_ULTIMA_ATUALIZACAO: TDateField;
    CdsServicoCLI_SV_TIPO_CONTRATO: TStringField;
    CdsServicoCLI_SV_OBSCT: TMemoField;
    CdsServicoCLI_SV_ALTERACAOPM: TDateField;
    CdsServicoCLI_SV_LOGONUSER: TStringField;
    CdsServicoCLI_SV_INFOALT: TStringField;
    SqlServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField;
    SqlServicoCLI_SV_HORAIP: TStringField;
    CdsServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField;
    CdsServicoCLI_SV_HORAIP: TStringField;
    SqlCdsConsultaClie: tsqlquery;
    DspConsultaClie: TDataSetProvider;
    CdsConsultaClie: TClientDataSet;
    DsConsultaClie: TDataSource;
    SqlCdsConsultaClieREP_CODIGO: TStringField;
    SqlCdsConsultaClieTRP_CODIGO: TStringField;
    SqlCdsConsultaClieCLI_RAZAO: TStringField;
    SqlCdsConsultaClieCLI_CODIGO: TStringField;
    SqlCdsConsultaClieCLI_INATIVO: TStringField;
    SqlCdsConsultaClieCLI_MOTIVO: TStringField;
    SqlCdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField;
    SqlCdsConsultaClieCLI_CGC: TStringField;
    SqlCdsConsultaClieCLI_UF: TStringField;
    SqlCdsConsultaClieCLI_CIDADE: TStringField;
    SqlCdsConsultaClieCLI_ENDERE: TStringField;
    CdsConsultaClieREP_CODIGO: TStringField;
    CdsConsultaClieTRP_CODIGO: TStringField;
    CdsConsultaClieCLI_RAZAO: TStringField;
    CdsConsultaClieCLI_CODIGO: TStringField;
    CdsConsultaClieCLI_INATIVO: TStringField;
    CdsConsultaClieCLI_MOTIVO: TStringField;
    CdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField;
    CdsConsultaClieCLI_CGC: TStringField;
    CdsConsultaClieCLI_UF: TStringField;
    CdsConsultaClieCLI_CIDADE: TStringField;
    CdsConsultaClieCLI_ENDERE: TStringField;
    SqlCdsConsultaCliePCL_CODIGO: TStringField;
    SqlCdsConsultaClieCLI_DESC1: TFMTBCdField;
    SqlCdsConsultaClieCLI_DESC2: TFMTBCdField;
    CdsConsultaCliePCL_CODIGO: TStringField;
    CdsConsultaClieCLI_DESC1: TFMTBCdField;
    CdsConsultaClieCLI_DESC2: TFMTBCdField;
    SqlReqItensPRD_REFER_ITENS: TStringField;
    CdsReqItensPRD_REFER_ITENS: TStringField;
    procedure CdsDepartamentoAfterInsert(DataSet: TDataSet);
    procedure CdsDepartamentoBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMovimento2: TDataMovimento2;

implementation

uses DataCad, Dep0001;

{$R *.dfm}

procedure TDataMovimento2.CdsDepartamentoAfterInsert(DataSet: TDataSet);
begin
    DataCadastros.IncrementaRegistro('DEP0000',CdsDepartamentoDEP_CODIGO);
end;

procedure TDataMovimento2.CdsDepartamentoBeforeEdit(DataSet: TDataSet);
begin
     if Assigned(formDepartamento) then
       FormDepartamento.DesabilitaBotoes;

end;

end.








