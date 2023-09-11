object DataMovimento2: TDataMovimento2
  OldCreateOrder = False
  Height = 410
  Width = 671
  object SQLAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 8
    Top = 2
  end
  object SqlAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 8
    Top = 50
  end
  object SqlDepartamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from DEP0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 2
    object SqlDepartamentoDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlDepartamentoDEP_NOME: TStringField
      FieldName = 'DEP_NOME'
      ProviderFlags = [pfInUpdate]
    end
    object SqlDepartamentoDEP_QTDE_FUNC: TIntegerField
      FieldName = 'DEP_QTDE_FUNC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlDepartamentoDEP_HORA_MES: TIntegerField
      FieldName = 'DEP_HORA_MES'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspDepartamento: TDataSetProvider
    DataSet = SqlDepartamento
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 419
    Top = 2
  end
  object CdsDepartamento: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspDepartamento'
    AfterInsert = CdsDepartamentoAfterInsert
    BeforeEdit = CdsDepartamentoBeforeEdit
    Left = 510
    Top = 2
    object CdsDepartamentoDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
    end
    object CdsDepartamentoDEP_NOME: TStringField
      FieldName = 'DEP_NOME'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDepartamentoDEP_QTDE_FUNC: TIntegerField
      FieldName = 'DEP_QTDE_FUNC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDepartamentoDEP_HORA_MES: TIntegerField
      FieldName = 'DEP_HORA_MES'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DsDepartamento: TDataSource
    DataSet = CdsDepartamento
    Left = 598
    Top = 2
  end
  object SqlDirCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 50
  end
  object DspDirCusto: TDataSetProvider
    DataSet = SqlDirCusto
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 50
  end
  object CdsDirCusto: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspDirCusto'
    Left = 510
    Top = 50
  end
  object DsDirCusto: TDataSource
    DataSet = CdsDirCusto
    Left = 598
    Top = 50
  end
  object SqlReqCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from REQUISICAO_COMPRA')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 98
    object SqlReqCompraREQ_CODIGO: TIntegerField
      FieldName = 'REQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlReqCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReqCompraREQ_EMISSAO: TDateField
      FieldName = 'REQ_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReqCompraREQ_HORA: TTimeField
      FieldName = 'REQ_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReqCompraDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReqCompraREQ_PRIORIDADE: TStringField
      FieldName = 'REQ_PRIORIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlReqCompraREQ_STATUS: TStringField
      FieldName = 'REQ_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReqCompraREQ_SOLICITANTE: TStringField
      FieldName = 'REQ_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspReqCompra: TDataSetProvider
    DataSet = SqlReqCompra
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 98
  end
  object CdsReqCompra: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspReqCompra'
    Left = 510
    Top = 98
    object CdsReqCompraREQ_CODIGO: TIntegerField
      FieldName = 'REQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsReqCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReqCompraREQ_EMISSAO: TDateField
      FieldName = 'REQ_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReqCompraREQ_HORA: TTimeField
      FieldName = 'REQ_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReqCompraDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReqCompraREQ_PRIORIDADE: TStringField
      FieldName = 'REQ_PRIORIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsReqCompraREQ_STATUS: TStringField
      FieldName = 'REQ_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReqCompraREQ_SOLICITANTE: TStringField
      FieldName = 'REQ_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DsReqCompra: TDataSource
    DataSet = CdsReqCompra
    Left = 598
    Top = 98
  end
  object SqlReqItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from REQUISICAO_COMPRA_ITENS')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 146
    object SqlReqItensRQI_REGISTRO: TIntegerField
      FieldName = 'RQI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlReqItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReqItensREQ_CODIGO: TIntegerField
      FieldName = 'REQ_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReqItensRQI_SOLICITADA: TFMTBCDField
      FieldName = 'RQI_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReqItensRQI_STATUS: TStringField
      FieldName = 'RQI_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReqItensOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReqItensOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlReqItensRQI_ORIGEM: TStringField
      FieldName = 'RQI_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReqItensRQI_SOLICITOU_COMPRA: TStringField
      FieldName = 'RQI_SOLICITOU_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReqItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DspReqItens: TDataSetProvider
    DataSet = SqlReqItens
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 146
  end
  object CdsReqItens: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspReqItens'
    Left = 510
    Top = 146
    object CdsReqItensRQI_REGISTRO: TIntegerField
      FieldName = 'RQI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsReqItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReqItensREQ_CODIGO: TIntegerField
      FieldName = 'REQ_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReqItensRQI_SOLICITADA: TFMTBCDField
      FieldName = 'RQI_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsReqItensRQI_STATUS: TStringField
      FieldName = 'RQI_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReqItensOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReqItensOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsReqItensRQI_ORIGEM: TStringField
      FieldName = 'RQI_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReqItensRQI_SOLICITOU_COMPRA: TStringField
      FieldName = 'RQI_SOLICITOU_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReqItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DsReqItens: TDataSource
    DataSet = CdsReqItens
    Left = 598
    Top = 146
  end
  object SqlCheques: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CHQ0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 192
    object SqlChequesCHQ_REGISTRO: TIntegerField
      FieldName = 'CHQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlChequesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlChequesCHQ_EMISSAO: TDateField
      FieldName = 'CHQ_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesCHQ_BOMPARA: TDateField
      FieldName = 'CHQ_BOMPARA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlChequesCHQ_NUMERO_DV: TStringField
      FieldName = 'CHQ_NUMERO_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesCHQ_VALOR: TFMTBCDField
      FieldName = 'CHQ_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object SqlChequesCHQ_SITUACAO: TStringField
      FieldName = 'CHQ_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesCHQ_TIPO_FAVORECIDO: TStringField
      FieldName = 'CHQ_TIPO_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesCHQ_CODIGO_FAVORECIDO: TStringField
      FieldName = 'CHQ_CODIGO_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlChequesCHQ_NOME_FAVORECIDO: TStringField
      FieldName = 'CHQ_NOME_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlChequesCHQ_LIQUIDAR: TStringField
      FieldName = 'CHQ_LIQUIDAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlChequesCHQ_OBSERVACAO: TStringField
      FieldName = 'CHQ_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlChequesCHQ_PAG_REGISTRO: TIntegerField
      FieldName = 'CHQ_PAG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesCHQ_EXCLUSAO: TStringField
      FieldName = 'CHQ_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesCHQ_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'CHQ_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlChequesCHQ_DATA_EXCLUSAO: TDateField
      FieldName = 'CHQ_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesCHQ_HORA_EXCLUSAO: TTimeField
      FieldName = 'CHQ_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesUSU_CODIGO_EXCLUSAO: TIntegerField
      FieldName = 'USU_CODIGO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesUSU_LOGIN_EXCLUSAO: TStringField
      FieldName = 'USU_LOGIN_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DspCheques: TDataSetProvider
    DataSet = SqlCheques
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 192
  end
  object CdsCheques: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCheques'
    Left = 510
    Top = 192
    object CdsChequesCHQ_REGISTRO: TIntegerField
      FieldName = 'CHQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsChequesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsChequesCHQ_EMISSAO: TDateField
      FieldName = 'CHQ_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCHQ_BOMPARA: TDateField
      FieldName = 'CHQ_BOMPARA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsChequesCHQ_NUMERO_DV: TStringField
      FieldName = 'CHQ_NUMERO_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesCHQ_VALOR: TFMTBCDField
      FieldName = 'CHQ_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object CdsChequesCHQ_SITUACAO: TStringField
      FieldName = 'CHQ_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesCHQ_TIPO_FAVORECIDO: TStringField
      FieldName = 'CHQ_TIPO_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesCHQ_CODIGO_FAVORECIDO: TStringField
      FieldName = 'CHQ_CODIGO_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsChequesCHQ_NOME_FAVORECIDO: TStringField
      FieldName = 'CHQ_NOME_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsChequesCHQ_LIQUIDAR: TStringField
      FieldName = 'CHQ_LIQUIDAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsChequesCHQ_OBSERVACAO: TStringField
      FieldName = 'CHQ_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsChequesCHQ_PAG_REGISTRO: TIntegerField
      FieldName = 'CHQ_PAG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCHQ_EXCLUSAO: TStringField
      FieldName = 'CHQ_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesCHQ_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'CHQ_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsChequesCHQ_DATA_EXCLUSAO: TDateField
      FieldName = 'CHQ_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCHQ_HORA_EXCLUSAO: TTimeField
      FieldName = 'CHQ_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesUSU_CODIGO_EXCLUSAO: TIntegerField
      FieldName = 'USU_CODIGO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesUSU_LOGIN_EXCLUSAO: TStringField
      FieldName = 'USU_LOGIN_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object DsCheques: TDataSource
    DataSet = CdsCheques
    Left = 598
    Top = 192
  end
  object SqlServico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.* FROM CLI_SV00 T1')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 237
    object SqlServicoCLI_SERVICO: TIntegerField
      FieldName = 'CLI_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlServicoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlServicoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object SqlServicoCLI_SV_DATA_VENDA: TDateField
      FieldName = 'CLI_SV_DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_INICIO_IMPLANTACAO: TDateField
      FieldName = 'CLI_SV_INICIO_IMPLANTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_TIPO: TStringField
      FieldName = 'CLI_SV_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlServicoCLI_SV_CONSULTOR: TStringField
      FieldName = 'CLI_SV_CONSULTOR'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_OBSIP: TMemoField
      FieldName = 'CLI_SV_OBSIP'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlServicoCLI_SV_RESPONSA: TStringField
      FieldName = 'CLI_SV_RESPONSA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlServicoCLI_SV_CARGO: TStringField
      FieldName = 'CLI_SV_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_CONCLUSAOIP: TDateField
      FieldName = 'CLI_SV_CONCLUSAOIP'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_AUTORIZADAS: TIntegerField
      FieldName = 'CLI_SV_AUTORIZADAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_PRAZOLIBERA: TIntegerField
      FieldName = 'CLI_SV_PRAZOLIBERA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_VALIDADE_ATUAL: TDateField
      FieldName = 'CLI_SV_VALIDADE_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_TIPO_SERVICO: TStringField
      FieldName = 'CLI_SV_TIPO_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlServicoCLI_SV_VALOR_CONTRATO: TFMTBCDField
      FieldName = 'CLI_SV_VALOR_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object SqlServicoCLI_SV_INICIOCT: TDateField
      FieldName = 'CLI_SV_INICIOCT'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_MESCONTRATO: TStringField
      FieldName = 'CLI_SV_MESCONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlServicoCLI_SV_ATUALIZAINDICE: TStringField
      FieldName = 'CLI_SV_ATUALIZAINDICE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlServicoCLI_SV_ULTIMA_ATUALIZACAO: TDateField
      FieldName = 'CLI_SV_ULTIMA_ATUALIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_TIPO_CONTRATO: TStringField
      FieldName = 'CLI_SV_TIPO_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlServicoCLI_SV_OBSCT: TMemoField
      FieldName = 'CLI_SV_OBSCT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlServicoCLI_SV_ALTERACAOPM: TDateField
      FieldName = 'CLI_SV_ALTERACAOPM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_LOGONUSER: TStringField
      FieldName = 'CLI_SV_LOGONUSER'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlServicoCLI_SV_INFOALT: TStringField
      FieldName = 'CLI_SV_INFOALT'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField
      FieldName = 'CLI_SV_DATA_CANCEL_CONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlServicoCLI_SV_HORAIP: TStringField
      FieldName = 'CLI_SV_HORAIP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
  end
  object DspServico: TDataSetProvider
    DataSet = SqlServico
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 237
  end
  object CdsServico: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspServico'
    Left = 510
    Top = 237
    object CdsServicoCLI_SERVICO: TIntegerField
      FieldName = 'CLI_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsServicoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsServicoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object CdsServicoCLI_SV_DATA_VENDA: TDateField
      FieldName = 'CLI_SV_DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_INICIO_IMPLANTACAO: TDateField
      FieldName = 'CLI_SV_INICIO_IMPLANTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_TIPO: TStringField
      FieldName = 'CLI_SV_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsServicoCLI_SV_CONSULTOR: TStringField
      FieldName = 'CLI_SV_CONSULTOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_OBSIP: TMemoField
      FieldName = 'CLI_SV_OBSIP'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsServicoCLI_SV_RESPONSA: TStringField
      FieldName = 'CLI_SV_RESPONSA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsServicoCLI_SV_CARGO: TStringField
      FieldName = 'CLI_SV_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_CONCLUSAOIP: TDateField
      FieldName = 'CLI_SV_CONCLUSAOIP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_AUTORIZADAS: TIntegerField
      FieldName = 'CLI_SV_AUTORIZADAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_PRAZOLIBERA: TIntegerField
      FieldName = 'CLI_SV_PRAZOLIBERA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_VALIDADE_ATUAL: TDateField
      FieldName = 'CLI_SV_VALIDADE_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_TIPO_SERVICO: TStringField
      FieldName = 'CLI_SV_TIPO_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsServicoCLI_SV_VALOR_CONTRATO: TFMTBCDField
      FieldName = 'CLI_SV_VALOR_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object CdsServicoCLI_SV_INICIOCT: TDateField
      FieldName = 'CLI_SV_INICIOCT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_MESCONTRATO: TStringField
      FieldName = 'CLI_SV_MESCONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsServicoCLI_SV_ATUALIZAINDICE: TStringField
      FieldName = 'CLI_SV_ATUALIZAINDICE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsServicoCLI_SV_ULTIMA_ATUALIZACAO: TDateField
      FieldName = 'CLI_SV_ULTIMA_ATUALIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_TIPO_CONTRATO: TStringField
      FieldName = 'CLI_SV_TIPO_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsServicoCLI_SV_OBSCT: TMemoField
      FieldName = 'CLI_SV_OBSCT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsServicoCLI_SV_ALTERACAOPM: TDateField
      FieldName = 'CLI_SV_ALTERACAOPM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_LOGONUSER: TStringField
      FieldName = 'CLI_SV_LOGONUSER'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsServicoCLI_SV_INFOALT: TStringField
      FieldName = 'CLI_SV_INFOALT'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField
      FieldName = 'CLI_SV_DATA_CANCEL_CONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsServicoCLI_SV_HORAIP: TStringField
      FieldName = 'CLI_SV_HORAIP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
  end
  object DsServico: TDataSource
    DataSet = CdsServico
    Left = 598
    Top = 237
  end
  object SqlCdsConsultaClie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select REP_CODIGO,TRP_CODIGO,CLI_RAZAO,CLI_CODIGO,CLI_INATIVO,CL' +
        'I_MOTIVO,CLI_DTINATIVO,CLI_CGC,CLI_UF, CLI_CIDADE, CLI_ENDERE,PC' +
        'L_CODIGO,CLI_DESC1,CLI_DESC2 from CLI0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 281
    object SqlCdsConsultaClieREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsConsultaClieTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsConsultaClieCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsConsultaClieCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsConsultaClieCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object SqlCdsConsultaClieCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      Size = 35
    end
    object SqlCdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
    end
    object SqlCdsConsultaClieCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object SqlCdsConsultaClieCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsConsultaClieCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsConsultaClieCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsConsultaCliePCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsConsultaClieCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      Precision = 15
      Size = 5
    end
    object SqlCdsConsultaClieCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      Precision = 15
      Size = 5
    end
  end
  object DspConsultaClie: TDataSetProvider
    DataSet = SqlCdsConsultaClie
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 414
    Top = 281
  end
  object CdsConsultaClie: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspConsultaClie'
    Left = 510
    Top = 281
    object CdsConsultaClieREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsConsultaClieTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsConsultaClieCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsConsultaClieCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object CdsConsultaClieCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object CdsConsultaClieCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      Size = 35
    end
    object CdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
    end
    object CdsConsultaClieCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsConsultaClieCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsConsultaClieCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CdsConsultaClieCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object CdsConsultaCliePCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsConsultaClieCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      Precision = 15
      Size = 5
    end
    object CdsConsultaClieCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      Precision = 15
      Size = 5
    end
  end
  object DsConsultaClie: TDataSource
    DataSet = CdsConsultaClie
    Left = 598
    Top = 281
  end
end
