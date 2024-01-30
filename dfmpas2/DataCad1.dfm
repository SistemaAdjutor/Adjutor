object DataCadastros1: TDataCadastros1
  OldCreateOrder = False
  Height = 967
  Width = 927
  object SqlICMS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ICM0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 18
    object SqlICMSICM_REGISTRO: TIntegerField
      FieldName = 'ICM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlICMSICM_ALIQ: TFMTBCDField
      FieldName = 'ICM_ALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlICMSICM_DESTINO: TStringField
      FieldName = 'ICM_DESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlICMSICMS_SUBS: TFMTBCDField
      FieldName = 'ICMS_SUBS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlICMSICM_IE_SUBTRIB: TStringField
      FieldName = 'ICM_IE_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqlICMSICM_UF_DESTINO: TStringField
      FieldName = 'ICM_UF_DESTINO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SqlICMSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlICMSICM_DESCR_UF: TStringField
      FieldName = 'ICM_DESCR_UF'
      Size = 50
    end
    object SqlICMSICM_COD_IBGE: TIntegerField
      FieldName = 'ICM_COD_IBGE'
      DisplayFormat = '00'
    end
    object SqlICMSICM_MVA: TFMTBCDField
      FieldName = 'ICM_MVA'
      Precision = 15
    end
    object SqlICMSICM_SUB_TRI_SN: TStringField
      FieldName = 'ICM_SUB_TRI_SN'
      FixedChar = True
      Size = 1
    end
    object SqlICMSSOMA_MVA_SN: TStringField
      FieldName = 'SOMA_MVA_SN'
      FixedChar = True
      Size = 1
    end
    object SqlICMSICMS_REDUZIDO: TFMTBCDField
      FieldName = 'ICMS_REDUZIDO'
      Precision = 15
    end
    object SqlICMSICMS_PROD_IMPORTADO: TFMTBCDField
      FieldName = 'ICMS_PROD_IMPORTADO'
      Precision = 15
      Size = 5
    end
    object SqlICMSFCP_PERC: TFMTBCDField
      FieldName = 'FCP_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlICMSICM_TIPO_CALCULO_DIFAL: TIntegerField
      FieldName = 'ICM_TIPO_CALCULO_DIFAL'
    end
  end
  object DspICMS: TDataSetProvider
    DataSet = SqlICMS
    Options = [poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 114
    Top = 16
  end
  object CdsICMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspICMS'
    BeforeEdit = CdsICMSBeforeEdit
    BeforePost = CdsICMSBeforePost
    Left = 200
    Top = 16
    object CdsICMSICM_REGISTRO: TIntegerField
      FieldName = 'ICM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsICMSICM_ALIQ: TFMTBCDField
      FieldName = 'ICM_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsICMSICM_DESTINO: TStringField
      FieldName = 'ICM_DESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsICMSICMS_SUBS: TFMTBCDField
      FieldName = 'ICMS_SUBS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsICMSICM_IE_SUBTRIB: TStringField
      FieldName = 'ICM_IE_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsICMSICM_UF_DESTINO: TStringField
      FieldName = 'ICM_UF_DESTINO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsICMSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsICMSICM_DESCR_UF: TStringField
      FieldName = 'ICM_DESCR_UF'
      Size = 50
    end
    object CdsICMSICM_COD_IBGE: TIntegerField
      FieldName = 'ICM_COD_IBGE'
    end
    object CdsICMSICM_MVA: TFMTBCDField
      FieldName = 'ICM_MVA'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
      Precision = 15
    end
    object CdsICMSICM_SUB_TRI_SN: TStringField
      FieldName = 'ICM_SUB_TRI_SN'
      FixedChar = True
      Size = 1
    end
    object CdsICMSSOMA_MVA_SN: TStringField
      FieldName = 'SOMA_MVA_SN'
      FixedChar = True
      Size = 1
    end
    object CdsICMSICMS_REDUZIDO: TFMTBCDField
      FieldName = 'ICMS_REDUZIDO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsICMSICMS_PROD_IMPORTADO: TFMTBCDField
      FieldName = 'ICMS_PROD_IMPORTADO'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
      Precision = 15
      Size = 5
    end
    object CdsICMSFCP_PERC: TFMTBCDField
      FieldName = 'FCP_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 18
      Size = 2
    end
    object CdsICMSICM_TIPO_CALCULO_DIFAL: TIntegerField
      FieldName = 'ICM_TIPO_CALCULO_DIFAL'
    end
  end
  object DsICMS: TDataSource
    DataSet = CdsICMS
    Left = 281
    Top = 14
  end
  object SqlCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEC_0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 63
    object SqlCentroCustoCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCentroCustoCEC_DESCRI: TStringField
      FieldName = 'CEC_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCentroCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCentroCustoCEC_PLANO: TStringField
      FieldName = 'CEC_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCentroCustoCEC_RATEIO: TStringField
      FieldName = 'CEC_RATEIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DpsCentroCusto: TDataSetProvider
    DataSet = SqlCentroCusto
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 63
  end
  object CdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsCentroCusto'
    BeforePost = CdsCentroCustoBeforePost
    Left = 200
    Top = 63
    object CdsCentroCustoCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsCentroCustoCEC_DESCRI: TStringField
      FieldName = 'CEC_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsCentroCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCentroCustoCEC_PLANO: TStringField
      FieldName = 'CEC_PLANO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCentroCustoCEC_RATEIO: TStringField
      FieldName = 'CEC_RATEIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DsCentroCusto: TDataSource
    DataSet = CdsCentroCusto
    Left = 281
    Top = 61
  end
  object SqlProCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select T1.*,(SELECT COALESCE(COUNT(T2.FIR_REGISTRO),0) FROM FIN_' +
        'RATEIO T2 WHERE T2.PCX_CODIGO = T1.PCX_CODIGO)+(SELECT COALESCE(' +
        'COUNT(T3.PCXPF_REGISTRO),0) FROM PCX0000_PLANO T3 WHERE T3.PCX_C' +
        'ODIGO = T1.PCX_CODIGO) as uso from PCX0000 T1')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 110
    object SqlProCaixaPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlProCaixaPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlProCaixaPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object SqlProCaixaPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object SqlProCaixaPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object SqlProCaixaPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object SqlProCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
    object SqlProCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField
      FieldName = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object DspProCaixa: TDataSetProvider
    DataSet = SqlProCaixa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 110
  end
  object CdsProCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProCaixa'
    AfterInsert = CdsProCaixaAfterInsert
    BeforeEdit = CdsProCaixaBeforeEdit
    Left = 200
    Top = 110
    object CdsProCaixaPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object CdsProCaixaPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsProCaixaPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object CdsProCaixaPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object CdsProCaixaPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object CdsProCaixaPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object CdsProCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
    object CdsProCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField
      FieldName = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object DsProCaixa: TDataSource
    DataSet = CdsProCaixa
    Left = 281
    Top = 108
  end
  object SqlParametros: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from PRMT0001 order by EMP_CODIGO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 157
    object SqlParametrosPMT_REGISTRO: TSmallintField
      FieldName = 'PMT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlParametrosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosPMT_NOSSOCODIGO: TStringField
      FieldName = 'PMT_NOSSOCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosPMT_COMIS_GRP: TStringField
      FieldName = 'PMT_COMIS_GRP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_COMIS_REP: TFMTBCDField
      FieldName = 'PMT_COMIS_REP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParametrosPMT_COMIS_SUP: TFMTBCDField
      FieldName = 'PMT_COMIS_SUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParametrosPMT_COMIS_GER: TFMTBCDField
      FieldName = 'PMT_COMIS_GER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParametrosPMT_NF_MARCA: TStringField
      DisplayWidth = 60
      FieldName = 'PMT_NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlParametrosPMT_PAGTO_COM_TP: TStringField
      FieldName = 'PMT_PAGTO_COM_TP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_COMIS_QUINZ: TStringField
      FieldName = 'PMT_COMIS_QUINZ'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_COMIS_PROD: TStringField
      FieldName = 'PMT_COMIS_PROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_1QZ_DIAS: TStringField
      FieldName = 'PMT_1QZ_DIAS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlParametrosPMT_2QZ_DIAS: TStringField
      FieldName = 'PMT_2QZ_DIAS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlParametrosPMT_BORDERO_COM: TStringField
      FieldName = 'PMT_BORDERO_COM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_NUMER_PEDIDO: TStringField
      FieldName = 'PMT_NUMER_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_DPL_IPI_NA1D: TStringField
      FieldName = 'PMT_DPL_IPI_NA1D'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_QTDE_DECIMAIS: TStringField
      FieldName = 'PMT_QTDE_DECIMAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PED_IMPORTANTE: TMemoField
      FieldName = 'PMT_PED_IMPORTANTE'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlParametrosPMT_CAB_TABPRECO: TStringField
      FieldName = 'PMT_CAB_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object SqlParametrosPMT_OBS_BLOQ1: TStringField
      FieldName = 'PMT_OBS_BLOQ1'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlParametrosPMT_OBS_BLOQ2: TStringField
      FieldName = 'PMT_OBS_BLOQ2'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlParametrosPMT_OBS_BLOQ3: TStringField
      FieldName = 'PMT_OBS_BLOQ3'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlParametrosPMT_LOC_PAGTO: TStringField
      FieldName = 'PMT_LOC_PAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object SqlParametrosPMT_IRRF: TFMTBCDField
      FieldName = 'PMT_IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParametrosPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosPMT_EANPAIS: TStringField
      FieldName = 'PMT_EANPAIS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosPMT_EANEMPRESA: TStringField
      FieldName = 'PMT_EANEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlParametrosPMT_PEDITEMDESC: TStringField
      FieldName = 'PMT_PEDITEMDESC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_DESCPRODRES: TStringField
      FieldName = 'PMT_DESCPRODRES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PRECOCOMIPI: TStringField
      FieldName = 'PMT_PRECOCOMIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_SITRIBUTARIA: TStringField
      FieldName = 'PMT_SITRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosPMT_ITENS_PEDIDO: TSmallintField
      FieldName = 'PMT_ITENS_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosSIN_COD_IDENTIF: TStringField
      FieldName = 'SIN_COD_IDENTIF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosSIN_COD_FINALID: TStringField
      FieldName = 'SIN_COD_FINALID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosSIN_MODE_NF: TStringField
      FieldName = 'SIN_MODE_NF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosSIN_SERIE_NF: TStringField
      FieldName = 'SIN_SERIE_NF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosSIN_SUBSERIE: TStringField
      FieldName = 'SIN_SUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosSIN_CONTATO: TStringField
      FieldName = 'SIN_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 28
    end
    object SqlParametrosPMT_DESCTO_ITEM: TStringField
      FieldName = 'PMT_DESCTO_ITEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_CELULAPROD: TStringField
      FieldName = 'PMT_CELULAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PROCESPROD: TStringField
      FieldName = 'PMT_PROCESPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PROJCX: TStringField
      FieldName = 'PMT_PROJCX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PATHFOTO: TStringField
      FieldName = 'PMT_PATHFOTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParametrosPMT_PATHFICHA: TStringField
      FieldName = 'PMT_PATHFICHA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParametrosPMT_PATHRELATORIO: TStringField
      FieldName = 'PMT_PATHRELATORIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParametrosPMT_ALMOX: TStringField
      FieldName = 'PMT_ALMOX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_COMPLTO_NF: TStringField
      FieldName = 'PMT_COMPLTO_NF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_MENSAGEM1: TStringField
      FieldName = 'PMT_MENSAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlParametrosPMT_MENSAGEM2: TStringField
      FieldName = 'PMT_MENSAGEM2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlParametrosPMT_TUPPEDIDO: TStringField
      FieldName = 'PMT_TUPPEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_KARDEX_PEDIDO: TStringField
      FieldName = 'PMT_KARDEX_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PI: TStringField
      FieldName = 'PMT_PI'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosPMT_PA: TStringField
      FieldName = 'PMT_PA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosPMT_OPSPRODUZIR: TStringField
      FieldName = 'PMT_OPSPRODUZIR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_BTN_ALT_REFER: TStringField
      FieldName = 'PMT_BTN_ALT_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_COD_CARTEIRA: TStringField
      FieldName = 'PMT_COD_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlParametrosSIN_ARQ_MAGNETICO: TStringField
      FieldName = 'SIN_ARQ_MAGNETICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_TP_COBRANCA: TStringField
      FieldName = 'PMT_TP_COBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosPMT_TP_DOCTO: TStringField
      FieldName = 'PMT_TP_DOCTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosPMT_BTN_EQUIV: TStringField
      FieldName = 'PMT_BTN_EQUIV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_PATH_LOGODUPL: TStringField
      FieldName = 'PMT_PATH_LOGODUPL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParametrosPMT_BTN_DUPLICA: TStringField
      FieldName = 'PMT_BTN_DUPLICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_BAIXA_EST_AXF: TStringField
      FieldName = 'PMT_BAIXA_EST_AXF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_QTDE_DEC_PED: TIntegerField
      FieldName = 'PMT_QTDE_DEC_PED'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosPMT_OPS_CONCLUIR: TStringField
      FieldName = 'PMT_OPS_CONCLUIR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_VAR_NOTA: TStringField
      FieldName = 'PMT_VAR_NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_FOR_DESCTO_CHEQ_PAG: TStringField
      FieldName = 'PMT_FOR_DESCTO_CHEQ_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlParametrosPMT_FOR_DESCTO_DUPL_PAG: TStringField
      FieldName = 'PMT_FOR_DESCTO_DUPL_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlParametrosPMT_ATULIZA_ESTOQUE: TStringField
      FieldName = 'PMT_ATULIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_QTDE_DEC_ENF: TIntegerField
      FieldName = 'PMT_QTDE_DEC_ENF'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosPMT_QTDE_DEC_OCP: TIntegerField
      FieldName = 'PMT_QTDE_DEC_OCP'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosPMT_BTN_ALT_IPI_ENF: TStringField
      FieldName = 'PMT_BTN_ALT_IPI_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosSIN_MODE_ENF: TStringField
      FieldName = 'SIN_MODE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosSIN_SERIE_ENF: TStringField
      FieldName = 'SIN_SERIE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlParametrosSIN_SUBSERIE_ENF: TStringField
      FieldName = 'SIN_SUBSERIE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosPMT_PRODUTO_AGREGADO: TStringField
      FieldName = 'PMT_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_PRESTACAO_SERVICO: TStringField
      FieldName = 'PMT_PRESTACAO_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_MSG_ETIQUETASISTEMA: TStringField
      FieldName = 'PMT_MSG_ETIQUETASISTEMA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParametrosPMT_GERAR_NUM_LOTE: TStringField
      FieldName = 'PMT_GERAR_NUM_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_RETIRA_VLR_ICMS_NF_E: TStringField
      FieldName = 'PMT_RETIRA_VLR_ICMS_NF_E'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_ESTOQUE_CONVERSAO: TStringField
      FieldName = 'PMT_ESTOQUE_CONVERSAO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_MENSAGEM3: TStringField
      FieldName = 'PMT_MENSAGEM3'
      Size = 80
    end
    object SqlParametrosPMT_MOD_BOLETO_BARRA: TIntegerField
      FieldName = 'PMT_MOD_BOLETO_BARRA'
    end
    object SqlParametrosPMT_CALCULARPM: TIntegerField
      FieldName = 'PMT_CALCULARPM'
    end
    object SqlParametrosPMT_COMIS_ESCALA: TStringField
      FieldName = 'PMT_COMIS_ESCALA'
      Size = 1
    end
    object SqlParametrosPMT_CALCULARPV: TIntegerField
      FieldName = 'PMT_CALCULARPV'
    end
    object SqlParametrosPMT_ATIVA_NFSE: TStringField
      FieldName = 'PMT_ATIVA_NFSE'
      Size = 1
    end
    object SqlParametrosPMT_AMX_ENTRADA: TStringField
      FieldName = 'PMT_AMX_ENTRADA'
      Size = 4
    end
    object SqlParametrosPMT_AMX_VENDA: TStringField
      FieldName = 'PMT_AMX_VENDA'
      Size = 4
    end
    object SqlParametrosPMT_AMX_FATURAMENTO: TStringField
      FieldName = 'PMT_AMX_FATURAMENTO'
      Size = 4
    end
    object SqlParametrosPMT_TABNOME1: TStringField
      FieldName = 'PMT_TABNOME1'
      Size = 30
    end
    object SqlParametrosPMT_TABNOME2: TStringField
      FieldName = 'PMT_TABNOME2'
      Size = 30
    end
    object SqlParametrosPMT_TABNOME3: TStringField
      FieldName = 'PMT_TABNOME3'
      Size = 30
    end
    object SqlParametrosPMT_TABNOME4: TStringField
      FieldName = 'PMT_TABNOME4'
      Size = 30
    end
    object SqlParametrosPMT_TABNOME5: TStringField
      FieldName = 'PMT_TABNOME5'
      Size = 30
    end
    object SqlParametrosPMT_TABNOME6: TStringField
      FieldName = 'PMT_TABNOME6'
      Size = 30
    end
    object SqlParametrosPMT_AMX_PRODUCAO_ENTRADA: TStringField
      FieldName = 'PMT_AMX_PRODUCAO_ENTRADA'
      Size = 4
    end
    object SqlParametrosPMT_AMX_PRODUCAO_SAIDA: TStringField
      FieldName = 'PMT_AMX_PRODUCAO_SAIDA'
      Size = 4
    end
    object SqlParametrosPMT_PIS_ALIQ_PRESUMIDO: TFMTBCDField
      FieldName = 'PMT_PIS_ALIQ_PRESUMIDO'
      Precision = 15
      Size = 4
    end
    object SqlParametrosPMT_PIS_ALIQ_REAL: TFMTBCDField
      FieldName = 'PMT_PIS_ALIQ_REAL'
      Precision = 15
      Size = 4
    end
    object SqlParametrosPMT_COFINS_ALIQ_PRESUMIDO: TFMTBCDField
      FieldName = 'PMT_COFINS_ALIQ_PRESUMIDO'
      Precision = 15
      Size = 4
    end
    object SqlParametrosPMT_COFINS_ALIQ_REAL: TFMTBCDField
      FieldName = 'PMT_COFINS_ALIQ_REAL'
      Precision = 15
      Size = 4
    end
    object SqlParametrosPMT_OPV_CODIGO_VENDA_PADRAO: TIntegerField
      FieldName = 'PMT_OPV_CODIGO_VENDA_PADRAO'
    end
    object SqlParametrosPMT_UTILIZA_ANALISE_CREDITO: TStringField
      FieldName = 'PMT_UTILIZA_ANALISE_CREDITO'
      Size = 1
    end
    object SqlParametrosPMT_UTILIZA_ANALISE_PRODUCAO: TStringField
      FieldName = 'PMT_UTILIZA_ANALISE_PRODUCAO'
      Size = 1
    end
    object SqlParametrosPMT_COMP_ITEM_PEDIDO_IT_NF: TStringField
      FieldName = 'PMT_COMP_ITEM_PEDIDO_IT_NF'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_PROD_PCP_ENDERECO: TStringField
      FieldName = 'PMT_PROD_PCP_ENDERECO'
      Size = 255
    end
    object SqlParametrosPMT_VENDA_LIBERADA_CAD_PRODUTO: TStringField
      FieldName = 'PMT_VENDA_LIBERADA_CAD_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_VENDA_CLI_SEM_CAD: TStringField
      FieldName = 'PMT_VENDA_CLI_SEM_CAD'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_VENDA_GRADE: TStringField
      FieldName = 'PMT_VENDA_GRADE'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_SEQUENCIA_UNICA_PEDIDO: TStringField
      FieldName = 'PMT_SEQUENCIA_UNICA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_PEDIDO_COMPRA_MSG: TMemoField
      FieldName = 'PMT_PEDIDO_COMPRA_MSG'
      BlobType = ftMemo
      Size = 1
    end
    object SqlParametrosPMT_MENSAGEM_PADRAO_ORCAMENTO: TMemoField
      FieldName = 'PMT_MENSAGEM_PADRAO_ORCAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object SqlParametrosPMT_VENDA_MSG_ATRASO_FIN: TStringField
      FieldName = 'PMT_VENDA_MSG_ATRASO_FIN'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_FAT_MSG_PEDIDO_VEND: TStringField
      FieldName = 'PMT_FAT_MSG_PEDIDO_VEND'
      Size = 1
    end
    object SqlParametrosPMT_BLOQ_VENDA_PCM: TStringField
      FieldName = 'PMT_BLOQ_VENDA_PCM'
      Size = 1
    end
    object SqlParametrosPMT_REFERENCIA_PROVISORIA: TStringField
      FieldName = 'PMT_REFERENCIA_PROVISORIA'
      Size = 25
    end
    object SqlParametrosPMT_COMP_ITEM_PEDIDO: TStringField
      FieldName = 'PMT_COMP_ITEM_PEDIDO'
      Size = 1
    end
    object SqlParametrosPMT_B2B: TStringField
      FieldName = 'PMT_B2B'
      Size = 1
    end
    object SqlParametrosPMT_CERTIFICADO_DIGITAL: TStringField
      FieldName = 'PMT_CERTIFICADO_DIGITAL'
      Size = 255
    end
    object SqlParametrosPMT_FIN_HABILITA_CENTRO_C_AVANC: TStringField
      FieldName = 'PMT_FIN_HABILITA_CENTRO_C_AVANC'
      Size = 1
    end
    object SqlParametrosPMT_CENTRO_CUSTO_OBRIGATORIO: TStringField
      FieldName = 'PMT_CENTRO_CUSTO_OBRIGATORIO'
      Size = 1
    end
    object SqlParametrosPMT_VALOR_APROX_TRIB: TStringField
      FieldName = 'PMT_VALOR_APROX_TRIB'
      Size = 1
    end
    object SqlParametrosPMT_OBRIGAR_GRADE_VENDA: TStringField
      FieldName = 'PMT_OBRIGAR_GRADE_VENDA'
      Size = 1
    end
    object SqlParametrosPMT_OBRIGAR_DIRETIVA_VENDA: TStringField
      FieldName = 'PMT_OBRIGAR_DIRETIVA_VENDA'
      Size = 1
    end
    object SqlParametrosPMT_EMPRESA_PADRAO_BOLETO: TStringField
      FieldName = 'PMT_EMPRESA_PADRAO_BOLETO'
      Size = 3
    end
    object SqlParametrosPMT_DPL_ST_NA1D: TStringField
      FieldName = 'PMT_DPL_ST_NA1D'
      Size = 1
    end
    object SqlParametrosPMT_HABILITA_TABELA_PRECOS: TStringField
      FieldName = 'PMT_HABILITA_TABELA_PRECOS'
      Size = 1
    end
    object SqlParametrosPMT_UTILIZA_CODIGO_ORIG_VD_NF: TStringField
      FieldName = 'PMT_UTILIZA_CODIGO_ORIG_VD_NF'
      Size = 1
    end
    object SqlParametrosPMT_CUSTO_BASE_PRODUCAO: TStringField
      FieldName = 'PMT_CUSTO_BASE_PRODUCAO'
      Size = 2
    end
    object SqlParametrosPMT_CONS_VENDA_PEDDO_STAT: TStringField
      FieldName = 'PMT_CONS_VENDA_PEDDO_STAT'
      Size = 1
    end
    object SqlParametrosPMT_FAT_CONFIRMA_PARCELA: TStringField
      FieldName = 'PMT_FAT_CONFIRMA_PARCELA'
      Size = 1
    end
    object SqlParametrosPMT_PADRAO_PESQUISA_PROD: TStringField
      FieldName = 'PMT_PADRAO_PESQUISA_PROD'
      Size = 1
    end
    object SqlParametrosPMT_PADRAO_EMP_CONSULTA: TStringField
      FieldName = 'PMT_PADRAO_EMP_CONSULTA'
      Size = 1
    end
    object SqlParametrosPMT_FORM_DANFE: TStringField
      FieldName = 'PMT_FORM_DANFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_MULTTAB: TStringField
      FieldName = 'PMT_MULTTAB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_OBRIGAR_DIRETIVA_VENDA_ABA: TStringField
      FieldName = 'PMT_OBRIGAR_DIRETIVA_VENDA_ABA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_USAR_SEQUENCIA_NFE_UNICA: TStringField
      FieldName = 'PMT_USAR_SEQUENCIA_NFE_UNICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_EXIBIRMESIMPOSTOSPARANA: TStringField
      FieldName = 'PMT_EXIBIRMESIMPOSTOSPARANA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_COPARTICIPACAO: TStringField
      FieldName = 'PMT_COPARTICIPACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_CSTPISCOFINS: TStringField
      FieldName = 'PMT_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlParametrosFMT_PAD_REFER: TStringField
      FieldName = 'FMT_PAD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParametrosPMT_CNPJ_CLIENTE_DUPLICADO: TStringField
      FieldName = 'PMT_CNPJ_CLIENTE_DUPLICADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParametrosPMT_VALOR_KIT: TStringField
      FieldName = 'PMT_VALOR_KIT'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_ITENS_KIT: TStringField
      FieldName = 'PMT_ITENS_KIT'
      Size = 1
    end
    object SqlParametrosPMT_TRIB_NF: TStringField
      FieldName = 'PMT_TRIB_NF'
      Size = 1
    end
    object SqlParametrosPMT_CONTROLA_KIT: TStringField
      FieldName = 'PMT_CONTROLA_KIT'
      Size = 1
    end
    object SqlParametrosPMT_PAGAR_COMISSAO_VERBA: TStringField
      FieldName = 'PMT_PAGAR_COMISSAO_VERBA'
      Size = 1
    end
    object SqlParametrosPMT_PERC_COMISSAO1: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO1'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA1: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA1'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO2'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA2: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA2'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO3'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA3: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA3'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO4'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA4: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA4'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO5'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA5: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA5'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO6'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_PERC_VENDA6: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA6'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_COMIS_SIMPLES: TStringField
      FieldName = 'PMT_COMIS_SIMPLES'
      Size = 1
    end
    object SqlParametrosPMT_MULTTAB_SCRIPT: TStringField
      FieldName = 'PMT_MULTTAB_SCRIPT'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_DIGITACAO_GRID_VENDAS: TStringField
      FieldName = 'PMT_DIGITACAO_GRID_VENDAS'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_PRODUZIR_MAIS_OP: TStringField
      FieldName = 'PMT_PRODUZIR_MAIS_OP'
      Size = 1
    end
    object SqlParametrosESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 40
    end
    object SqlParametrosESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 40
    end
    object SqlParametrosESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 40
    end
    object SqlParametrosESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 40
    end
    object SqlParametrosESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 40
    end
    object SqlParametrosESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 40
    end
    object SqlParametrosESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 40
    end
    object SqlParametrosESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 40
    end
    object SqlParametrosESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 40
    end
    object SqlParametrosPMT_VARPERC_MEDIDA_PRODUTO: TFMTBCDField
      FieldName = 'PMT_VARPERC_MEDIDA_PRODUTO'
      Precision = 10
    end
    object SqlParametrosPMT_HABILITA_MEDIDAPRD: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD'
      Size = 1
    end
    object SqlParametrosPMT_NCM_UND_ITEM_PROV: TStringField
      FieldName = 'PMT_NCM_UND_ITEM_PROV'
      Size = 1
    end
    object SqlParametrosPMT_NUMDIAS_ORC: TIntegerField
      FieldName = 'PMT_NUMDIAS_ORC'
    end
    object SqlParametrosPMT_HABILITAR_CODORIGINAL: TStringField
      FieldName = 'PMT_HABILITAR_CODORIGINAL'
      Size = 1
    end
    object SqlParametrosPMT_PRAZO_ITEM: TStringField
      FieldName = 'PMT_PRAZO_ITEM'
      Size = 1
    end
    object SqlParametrospmt_Pedido_Doacao: TStringField
      FieldName = 'pmt_Pedido_Doacao'
      Size = 1
    end
    object SqlParametrosEMP_HAB_NFCE: TStringField
      FieldName = 'EMP_HAB_NFCE'
      Size = 1
    end
    object SqlParametrosPMT_CALCULO_MARGEM: TIntegerField
      FieldName = 'PMT_CALCULO_MARGEM'
    end
    object SqlParametrosPMT_MEM_PESQPED: TStringField
      FieldName = 'PMT_MEM_PESQPED'
      Size = 1
    end
    object SqlParametrosPMT_FATURAR_PENDENCIAS: TStringField
      FieldName = 'PMT_FATURAR_PENDENCIAS'
      Size = 1
    end
    object SqlParametrosPMT_OP_SEMAPONTA: TStringField
      FieldName = 'PMT_OP_SEMAPONTA'
      Size = 1
    end
    object SqlParametrosPMT_NAO_AUTO_PVENDA: TStringField
      FieldName = 'PMT_NAO_AUTO_PVENDA'
      Size = 1
    end
    object SqlParametrosPMT_RESPONSAVEL_TECNICO: TStringField
      FieldName = 'PMT_RESPONSAVEL_TECNICO'
      Size = 1
    end
    object SqlParametrosPMT_NAO_ATUALIZAR_BANCO: TStringField
      FieldName = 'PMT_NAO_ATUALIZAR_BANCO'
      Size = 1
    end
    object SqlParametrosPMT_LIBERAR_EXPEDICAO: TStringField
      FieldName = 'PMT_LIBERAR_EXPEDICAO'
      Size = 1
    end
    object SqlParametrosPMT_LIBERAR_FATURA: TStringField
      FieldName = 'PMT_LIBERAR_FATURA'
      Size = 1
    end
    object SqlParametrosPMT_ORDEM_DESCFORN: TStringField
      FieldName = 'PMT_ORDEM_DESCFORN'
      Size = 1
    end
    object SqlParametrosPMT_ORDEM_CODFORN: TStringField
      FieldName = 'PMT_ORDEM_CODFORN'
      Size = 1
    end
    object SqlParametrosPMT_EXPEDICAO_MULTIEMPRESA: TStringField
      FieldName = 'PMT_EXPEDICAO_MULTIEMPRESA'
      Size = 1
    end
    object SqlParametrosPMT_FATURA_MULTIEMPRESA: TStringField
      FieldName = 'PMT_FATURA_MULTIEMPRESA'
      Size = 1
    end
    object SqlParametrosPMT_HAB_TERMICO: TStringField
      FieldName = 'PMT_HAB_TERMICO'
      Size = 1
    end
    object SqlParametrosPMT_ORC_GERAACORDO: TStringField
      FieldName = 'PMT_ORC_GERAACORDO'
      Size = 1
    end
    object SqlParametrosPMT_ORC_GERAPEDIDO: TStringField
      FieldName = 'PMT_ORC_GERAPEDIDO'
      Size = 1
    end
    object SqlParametrosPMT_RETIRAR_ICMS_BASECOFINSPIS: TStringField
      FieldName = 'PMT_RETIRAR_ICMS_BASECOFINSPIS'
      Size = 1
    end
    object SqlParametrosPMT_ATUALIZAR_CLIENTE: TStringField
      FieldName = 'PMT_ATUALIZAR_CLIENTE'
      Size = 1
    end
    object SqlParametrosPMT_ATIVAR_PPAC: TStringField
      FieldName = 'PMT_ATIVAR_PPAC'
      Size = 1
    end
    object SqlParametrosPMT_ICMS_CUSTOENTRADA: TStringField
      FieldName = 'PMT_ICMS_CUSTOENTRADA'
      Size = 1
    end
    object SqlParametrosPMT_PIS_CUSTOENTRADA: TStringField
      FieldName = 'PMT_PIS_CUSTOENTRADA'
      Size = 1
    end
    object SqlParametrosPMT_GERARSUBORDENS: TStringField
      FieldName = 'PMT_GERARSUBORDENS'
      Size = 1
    end
    object SqlParametrosPMT_INCLUIRRAPIDO: TStringField
      FieldName = 'PMT_INCLUIRRAPIDO'
      Size = 1
    end
    object SqlParametrospmt_CaminhoFoto: TStringField
      FieldName = 'pmt_CaminhoFoto'
      Size = 100
    end
    object SqlParametrosPMT_HABILITAR_MRP: TStringField
      FieldName = 'PMT_HABILITAR_MRP'
      Size = 1
    end
    object SqlParametrosPMT_CONTROLE_CONTASPAGAR: TStringField
      FieldName = 'PMT_CONTROLE_CONTASPAGAR'
      Size = 1
    end
    object SqlParametrosPMT_CAMINHO_PEDIN: TStringField
      FieldName = 'PMT_CAMINHO_PEDIN'
      Size = 100
    end
    object SqlParametrosPMT_COMPOSICAOORDEM: TStringField
      FieldName = 'PMT_COMPOSICAOORDEM'
      Size = 1
    end
    object SqlParametrosPMT_COMSUMIRINSUMO: TStringField
      FieldName = 'PMT_COMSUMIRINSUMO'
      Size = 1
    end
    object SqlParametrosPMT_CUSTO_MATERIAPRIMA: TStringField
      FieldName = 'PMT_CUSTO_MATERIAPRIMA'
      Size = 1
    end
    object SqlParametrosPMT_CUSTOOPERACAO: TStringField
      FieldName = 'PMT_CUSTOOPERACAO'
      Size = 1
    end
    object SqlParametrosPMT_CUSTOCOLABORADOR: TStringField
      FieldName = 'PMT_CUSTOCOLABORADOR'
      Size = 1
    end
    object SqlParametrosPMT_CUSTOEQUIPAMENTO: TStringField
      FieldName = 'PMT_CUSTOEQUIPAMENTO'
      Size = 1
    end
    object SqlParametrosPMT_VINCULAR_VENDEDOR: TStringField
      FieldName = 'PMT_VINCULAR_VENDEDOR'
      Size = 1
    end
    object SqlParametrosPMT_MULTIPLICADOR_P: TStringField
      FieldName = 'PMT_MULTIPLICADOR_P'
      Size = 1
    end
    object SqlParametrosPMT_ENVASE_SBAIXA: TStringField
      FieldName = 'PMT_ENVASE_SBAIXA'
      Size = 1
    end
    object SqlParametrosPMT_HABILITA_ENVASE: TStringField
      FieldName = 'PMT_HABILITA_ENVASE'
      Size = 1
    end
    object SqlParametrosPMT_REL_ORDEMPRODUCAO: TStringField
      FieldName = 'PMT_REL_ORDEMPRODUCAO'
      Size = 3
    end
    object SqlParametrosPMT_CLIENTE_PRODUCAO: TStringField
      FieldName = 'PMT_CLIENTE_PRODUCAO'
      Size = 5
    end
    object SqlParametrosPMT_HABILITAR_PRODU_ANTIGO: TStringField
      FieldName = 'PMT_HABILITAR_PRODU_ANTIGO'
      Size = 1
    end
    object SqlParametrosPMT_INTEGRAR_PRD_SERV: TStringField
      FieldName = 'PMT_INTEGRAR_PRD_SERV'
      Size = 1
    end
    object SqlParametrosPMT_CENTROCUSTO_REQUERIDO_PAGAR: TStringField
      FieldName = 'PMT_CENTROCUSTO_REQUERIDO_PAGAR'
      Size = 1
    end
    object SqlParametrosPMT_DESCOSIDERAR_FATURA: TStringField
      FieldName = 'PMT_DESCOSIDERAR_FATURA'
      Size = 1
    end
    object SqlParametrosPMT_VALOR_MINIMO_DO_SERVICO: TFMTBCDField
      FieldName = 'PMT_VALOR_MINIMO_DO_SERVICO'
      Precision = 18
      Size = 5
    end
    object SqlParametrosPMT_AUTORIZA_EMPENHO: TStringField
      FieldName = 'PMT_AUTORIZA_EMPENHO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_LOTE_AUTOMATICO: TStringField
      FieldName = 'PMT_LOTE_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_LOTE_PREFIXO: TStringField
      FieldName = 'PMT_LOTE_PREFIXO'
      Size = 10
    end
    object SqlParametrosPMT_LOTE_SEMENTE: TIntegerField
      FieldName = 'PMT_LOTE_SEMENTE'
    end
    object SqlParametrosPMT_PRD_REFER_SCO_REFER: TStringField
      FieldName = 'PMT_PRD_REFER_SCO_REFER'
    end
    object SqlParametrosPMT_REL_DATA_EXPEDICAO: TStringField
      FieldName = 'PMT_REL_DATA_EXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_LIMITE_CREDITO_INICIAL: TFMTBCDField
      FieldName = 'PMT_LIMITE_CREDITO_INICIAL'
      Precision = 18
      Size = 2
    end
    object SqlParametrosPMT_OS_CABECALHO: TStringField
      FieldName = 'PMT_OS_CABECALHO'
      Size = 50
    end
    object SqlParametrosPMT_OS_REV: TStringField
      FieldName = 'PMT_OS_REV'
      Size = 10
    end
    object SqlParametrosPMT_OS_DATA_EMISSAO: TDateField
      FieldName = 'PMT_OS_DATA_EMISSAO'
    end
    object SqlParametrosPMT_AMX_ENVASE_SAIDA: TStringField
      FieldName = 'PMT_AMX_ENVASE_SAIDA'
      FixedChar = True
      Size = 4
    end
    object SqlParametrosPMT_DESCRICAO_99_OUTROS: TStringField
      FieldName = 'PMT_DESCRICAO_99_OUTROS'
      Size = 100
    end
    object SqlParametrosPMT_MULTIPLAS_IE: TStringField
      FieldName = 'PMT_MULTIPLAS_IE'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_LOTE_RASTREABILIDADE: TStringField
      FieldName = 'PMT_LOTE_RASTREABILIDADE'
      FixedChar = True
      Size = 1
    end
    object SqlParametrosPMT_REVISAO_RELATORIO: TStringField
      FieldName = 'PMT_REVISAO_RELATORIO'
    end
    object SqlParametrosPMT_HABILITAR_DIFAL: TStringField
      FieldName = 'PMT_HABILITAR_DIFAL'
      Size = 1
    end
    object SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC1: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC1'
      Size = 15
    end
    object SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC2: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC2'
      Size = 15
    end
    object SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC3: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC3'
      Size = 15
    end
    object SqlParametrosPMT_HABILITA_MEDIDAPRD_DESC4: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC4'
      Size = 15
    end
    object SqlParametrosPMT_METODO_CALCULO_PRECO: TStringField
      FieldName = 'PMT_METODO_CALCULO_PRECO'
      Size = 1
    end
    object SqlParametrosPMT_CAMINHO_IMAGEM_OP: TStringField
      FieldName = 'PMT_CAMINHO_IMAGEM_OP'
      Size = 255
    end
    object SqlParametrosPMT_IMPORTA_ITENS_XML: TStringField
      FieldName = 'PMT_IMPORTA_ITENS_XML'
      Size = 1
    end
    object SqlParametrosPMT_NAT_OPER_PADRAO: TStringField
      FieldName = 'PMT_NAT_OPER_PADRAO'
      Size = 1
    end
    object SqlParametrosPMT_NAT_OPER_RETORNO: TStringField
      FieldName = 'PMT_NAT_OPER_RETORNO'
      Size = 1
    end
    object SqlParametrosPMT_DESC_ORIGINAL_INDUST: TStringField
      FieldName = 'PMT_DESC_ORIGINAL_INDUST'
      Size = 1
    end
    object SqlParametrosPMT_MSG_ORCAMENTO_INDUST: TStringField
      FieldName = 'PMT_MSG_ORCAMENTO_INDUST'
      Size = 255
    end
    object SqlParametrosPMT_CENTRO_CUSTO_ENF: TStringField
      FieldName = 'PMT_CENTRO_CUSTO_ENF'
      Size = 1
    end
    object SqlParametrosPMT_PEDIDO_IND_PLASTICA: TStringField
      FieldName = 'PMT_PEDIDO_IND_PLASTICA'
      Size = 1
    end
    object SqlParametrosPMT_GRADE_MEDIDA1: TStringField
      FieldName = 'PMT_GRADE_MEDIDA1'
      Size = 50
    end
    object SqlParametrosPMT_GRADE_MEDIDA2: TStringField
      FieldName = 'PMT_GRADE_MEDIDA2'
      Size = 50
    end
    object SqlParametrosPMT_GRADE_MEDIDA3: TStringField
      FieldName = 'PMT_GRADE_MEDIDA3'
      Size = 50
    end
    object SqlParametrosPMT_ENF_CHK_INDUSTRIALIZACAO: TStringField
      FieldName = 'PMT_ENF_CHK_INDUSTRIALIZACAO'
      Size = 1
    end
    object SqlParametrosPMT_NF_ESPECIE: TStringField
      FieldName = 'PMT_NF_ESPECIE'
      Size = 60
    end
    object SqlParametrosPMT_VINC_NF_ITEM_RETORNO: TStringField
      FieldName = 'PMT_VINC_NF_ITEM_RETORNO'
      Size = 1
    end
    object SqlParametrosPMT_FATURA_SEM_PESO: TStringField
      FieldName = 'PMT_FATURA_SEM_PESO'
      Size = 1
    end
    object SqlParametrosPMT_ATUALIZA_LOTE: TStringField
      FieldName = 'PMT_ATUALIZA_LOTE'
      Size = 1
    end
    object SqlParametrosPMT_LANCA_PERC_MATERIA_PRIMA: TStringField
      FieldName = 'PMT_LANCA_PERC_MATERIA_PRIMA'
      Size = 1
    end
    object SqlParametrosPMT_ALTERA_QUANT_ITEM_PED: TStringField
      FieldName = 'PMT_ALTERA_QUANT_ITEM_PED'
      Size = 1
    end
    object SqlParametrosPMT_RETORNO_POR_CORES: TStringField
      FieldName = 'PMT_RETORNO_POR_CORES'
      Size = 1
    end
    object SqlParametrosPMT_ENVIA_COPIA_PEDIDO_INDUST: TStringField
      FieldName = 'PMT_ENVIA_COPIA_PEDIDO_INDUST'
      Size = 1024
    end
    object SqlParametrosPMT_LANCA_CONTA_CORRENTE_VERBA: TStringField
      FieldName = 'PMT_LANCA_CONTA_CORRENTE_VERBA'
      Size = 1
    end
    object SqlParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO: TIntegerField
      FieldName = 'PMT_LANCA_CC_VERBA_FPG_REGISTRO'
    end
    object SqlParametrosPMT_VENDA_CLI_SEM_CAD_OBRIG: TStringField
      FieldName = 'PMT_VENDA_CLI_SEM_CAD_OBRIG'
      Size = 1
    end
    object SqlParametrosPMT_VALOR_DIFAL_PEDIDO: TStringField
      FieldName = 'PMT_VALOR_DIFAL_PEDIDO'
      Size = 1
    end
    object SqlParametrosPMT_UTILIZA_CODIGO_ORIG_VD_PD: TStringField
      FieldName = 'PMT_UTILIZA_CODIGO_ORIG_VD_PD'
      Size = 1
    end
    object SqlParametrosPMT_HABILITA_ICMS_PEDIDO: TStringField
      FieldName = 'PMT_HABILITA_ICMS_PEDIDO'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_VALOR_ORIGINAL: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_ORIGINAL'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_FRETE_SEGURO_DESP: TStringField
      FieldName = 'PMT_FAT_NF_FRETE_SEGURO_DESP'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_VALOR_LIQ_DESC: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_LIQ_DESC'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_VALOR_ANTECIPADO: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_ANTECIPADO'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_SEM_VALOR_COMERCIAL: TStringField
      FieldName = 'PMT_FAT_NF_SEM_VALOR_COMERCIAL'
      Size = 1
    end
    object SqlParametrosPMT_FAT_NF_VL_LIQ_VALOR_ANTECIP: TStringField
      FieldName = 'PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP'
      Size = 1
    end
    object SqlParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField
      FieldName = 'PMT_COMIS_SOBRE_DIF_VENDA_CUSTO'
      Size = 1
    end
    object SqlParametrosPMT_BAIXA_ESTOQUE_AVANCADO: TStringField
      FieldName = 'PMT_BAIXA_ESTOQUE_AVANCADO'
      Size = 1
    end
    object SqlParametrosPMT_GER_AVANC_ANTECIP_DESC: TStringField
      FieldName = 'PMT_GER_AVANC_ANTECIP_DESC'
      Size = 1
    end
    object SqlParametrosPMT_MENSAGEM_VENDAS: TStringField
      FieldName = 'PMT_MENSAGEM_VENDAS'
      Size = 80
    end
    object SqlParametrosPMT_INFORMA_LOTE_NOTA_ENTRADA: TStringField
      FieldName = 'PMT_INFORMA_LOTE_NOTA_ENTRADA'
      Size = 1
    end
    object SqlParametrosPMT_LAYOUT_BOLETO_FATURAMENTO: TStringField
      FieldName = 'PMT_LAYOUT_BOLETO_FATURAMENTO'
      Size = 2
    end
    object SqlParametrosPMT_RESP_TECNICO_QUALIDADE: TStringField
      FieldName = 'PMT_RESP_TECNICO_QUALIDADE'
      Size = 255
    end
    object SqlParametrosPMT_CRQ_RESP_TECNICO_QUALIDADE: TStringField
      FieldName = 'PMT_CRQ_RESP_TECNICO_QUALIDADE'
      Size = 255
    end
    object SqlParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO: TStringField
      FieldName = 'PMT_BLOQ_PED_VENDA_FAT_ATRASO'
      Size = 1
    end
    object SqlParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO_D: TIntegerField
      FieldName = 'PMT_BLOQ_PED_VENDA_FAT_ATRASO_D'
    end
  end
  object DspParametros: TDataSetProvider
    DataSet = SqlParametros
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 157
  end
  object CdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspParametros'
    AfterInsert = CdsParametrosAfterInsert
    BeforeEdit = CdsParametrosBeforeEdit
    Left = 200
    Top = 157
    object CdsParametrosPMT_REGISTRO: TSmallintField
      FieldName = 'PMT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsParametrosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosPMT_NOSSOCODIGO: TStringField
      FieldName = 'PMT_NOSSOCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosPMT_COMIS_GRP: TStringField
      FieldName = 'PMT_COMIS_GRP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_COMIS_REP: TFMTBCDField
      FieldName = 'PMT_COMIS_REP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsParametrosPMT_COMIS_SUP: TFMTBCDField
      FieldName = 'PMT_COMIS_SUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsParametrosPMT_COMIS_GER: TFMTBCDField
      FieldName = 'PMT_COMIS_GER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsParametrosPMT_NF_MARCA: TStringField
      FieldName = 'PMT_NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsParametrosPMT_PAGTO_COM_TP: TStringField
      FieldName = 'PMT_PAGTO_COM_TP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_COMIS_QUINZ: TStringField
      FieldName = 'PMT_COMIS_QUINZ'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_COMIS_PROD: TStringField
      FieldName = 'PMT_COMIS_PROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_1QZ_DIAS: TStringField
      FieldName = 'PMT_1QZ_DIAS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsParametrosPMT_2QZ_DIAS: TStringField
      FieldName = 'PMT_2QZ_DIAS'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsParametrosPMT_BORDERO_COM: TStringField
      FieldName = 'PMT_BORDERO_COM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_NUMER_PEDIDO: TStringField
      FieldName = 'PMT_NUMER_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_DPL_IPI_NA1D: TStringField
      FieldName = 'PMT_DPL_IPI_NA1D'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_QTDE_DECIMAIS: TStringField
      FieldName = 'PMT_QTDE_DECIMAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PED_IMPORTANTE: TMemoField
      FieldName = 'PMT_PED_IMPORTANTE'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsParametrosPMT_CAB_TABPRECO: TStringField
      FieldName = 'PMT_CAB_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object CdsParametrosPMT_OBS_BLOQ1: TStringField
      FieldName = 'PMT_OBS_BLOQ1'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsParametrosPMT_OBS_BLOQ2: TStringField
      FieldName = 'PMT_OBS_BLOQ2'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsParametrosPMT_OBS_BLOQ3: TStringField
      FieldName = 'PMT_OBS_BLOQ3'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsParametrosPMT_LOC_PAGTO: TStringField
      FieldName = 'PMT_LOC_PAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object CdsParametrosPMT_IRRF: TFMTBCDField
      FieldName = 'PMT_IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsParametrosPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosPMT_EANPAIS: TStringField
      FieldName = 'PMT_EANPAIS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosPMT_EANEMPRESA: TStringField
      FieldName = 'PMT_EANEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsParametrosPMT_PEDITEMDESC: TStringField
      FieldName = 'PMT_PEDITEMDESC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_DESCPRODRES: TStringField
      FieldName = 'PMT_DESCPRODRES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PRECOCOMIPI: TStringField
      FieldName = 'PMT_PRECOCOMIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_SITRIBUTARIA: TStringField
      FieldName = 'PMT_SITRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosPMT_ITENS_PEDIDO: TSmallintField
      FieldName = 'PMT_ITENS_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosSIN_COD_IDENTIF: TStringField
      FieldName = 'SIN_COD_IDENTIF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosSIN_COD_FINALID: TStringField
      FieldName = 'SIN_COD_FINALID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosSIN_MODE_NF: TStringField
      FieldName = 'SIN_MODE_NF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosSIN_SERIE_NF: TStringField
      FieldName = 'SIN_SERIE_NF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosSIN_SUBSERIE: TStringField
      FieldName = 'SIN_SUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosSIN_CONTATO: TStringField
      FieldName = 'SIN_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 28
    end
    object CdsParametrosPMT_DESCTO_ITEM: TStringField
      FieldName = 'PMT_DESCTO_ITEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_CELULAPROD: TStringField
      FieldName = 'PMT_CELULAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PROCESPROD: TStringField
      FieldName = 'PMT_PROCESPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PROJCX: TStringField
      FieldName = 'PMT_PROJCX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PATHFOTO: TStringField
      FieldName = 'PMT_PATHFOTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParametrosPMT_PATHFICHA: TStringField
      FieldName = 'PMT_PATHFICHA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParametrosPMT_PATHRELATORIO: TStringField
      FieldName = 'PMT_PATHRELATORIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParametrosPMT_ALMOX: TStringField
      FieldName = 'PMT_ALMOX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_COMPLTO_NF: TStringField
      FieldName = 'PMT_COMPLTO_NF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_MENSAGEM1: TStringField
      FieldName = 'PMT_MENSAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsParametrosPMT_MENSAGEM2: TStringField
      FieldName = 'PMT_MENSAGEM2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsParametrosPMT_TUPPEDIDO: TStringField
      FieldName = 'PMT_TUPPEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_KARDEX_PEDIDO: TStringField
      FieldName = 'PMT_KARDEX_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PI: TStringField
      FieldName = 'PMT_PI'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosPMT_PA: TStringField
      FieldName = 'PMT_PA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosPMT_OPSPRODUZIR: TStringField
      FieldName = 'PMT_OPSPRODUZIR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_BTN_ALT_REFER: TStringField
      FieldName = 'PMT_BTN_ALT_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_COD_CARTEIRA: TStringField
      FieldName = 'PMT_COD_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsParametrosSIN_ARQ_MAGNETICO: TStringField
      FieldName = 'SIN_ARQ_MAGNETICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_TP_COBRANCA: TStringField
      FieldName = 'PMT_TP_COBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosPMT_TP_DOCTO: TStringField
      FieldName = 'PMT_TP_DOCTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosPMT_BTN_EQUIV: TStringField
      FieldName = 'PMT_BTN_EQUIV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_PATH_LOGODUPL: TStringField
      FieldName = 'PMT_PATH_LOGODUPL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParametrosPMT_BTN_DUPLICA: TStringField
      FieldName = 'PMT_BTN_DUPLICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_BAIXA_EST_AXF: TStringField
      FieldName = 'PMT_BAIXA_EST_AXF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_QTDE_DEC_PED: TIntegerField
      FieldName = 'PMT_QTDE_DEC_PED'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosPMT_OPS_CONCLUIR: TStringField
      FieldName = 'PMT_OPS_CONCLUIR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_VAR_NOTA: TStringField
      FieldName = 'PMT_VAR_NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_FOR_DESCTO_CHEQ_PAG: TStringField
      FieldName = 'PMT_FOR_DESCTO_CHEQ_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsParametrosPMT_FOR_DESCTO_DUPL_PAG: TStringField
      FieldName = 'PMT_FOR_DESCTO_DUPL_PAG'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsParametrosPMT_ATULIZA_ESTOQUE: TStringField
      FieldName = 'PMT_ATULIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_QTDE_DEC_ENF: TIntegerField
      FieldName = 'PMT_QTDE_DEC_ENF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosPMT_QTDE_DEC_OCP: TIntegerField
      FieldName = 'PMT_QTDE_DEC_OCP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosPMT_BTN_ALT_IPI_ENF: TStringField
      FieldName = 'PMT_BTN_ALT_IPI_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosSIN_MODE_ENF: TStringField
      FieldName = 'SIN_MODE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosSIN_SERIE_ENF: TStringField
      FieldName = 'SIN_SERIE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsParametrosSIN_SUBSERIE_ENF: TStringField
      FieldName = 'SIN_SUBSERIE_ENF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosPMT_PRODUTO_AGREGADO: TStringField
      FieldName = 'PMT_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_PRESTACAO_SERVICO: TStringField
      FieldName = 'PMT_PRESTACAO_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_MSG_ETIQUETASISTEMA: TStringField
      FieldName = 'PMT_MSG_ETIQUETASISTEMA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParametrosPMT_GERAR_NUM_LOTE: TStringField
      FieldName = 'PMT_GERAR_NUM_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_RETIRA_VLR_ICMS_NF_E: TStringField
      FieldName = 'PMT_RETIRA_VLR_ICMS_NF_E'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_ESTOQUE_CONVERSAO: TStringField
      FieldName = 'PMT_ESTOQUE_CONVERSAO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_MENSAGEM3: TStringField
      FieldName = 'PMT_MENSAGEM3'
      Size = 80
    end
    object CdsParametrosPMT_MOD_BOLETO_BARRA: TIntegerField
      FieldName = 'PMT_MOD_BOLETO_BARRA'
    end
    object CdsParametrosPMT_CALCULARPM: TIntegerField
      FieldName = 'PMT_CALCULARPM'
    end
    object CdsParametrosPMT_COMIS_ESCALA: TStringField
      FieldName = 'PMT_COMIS_ESCALA'
      Size = 1
    end
    object CdsParametrosPMT_CALCULARPV: TIntegerField
      FieldName = 'PMT_CALCULARPV'
    end
    object CdsParametrosPMT_ATIVA_NFSE: TStringField
      FieldName = 'PMT_ATIVA_NFSE'
      Size = 1
    end
    object CdsParametrosPMT_AMX_ENTRADA: TStringField
      FieldName = 'PMT_AMX_ENTRADA'
      Size = 4
    end
    object CdsParametrosPMT_AMX_VENDA: TStringField
      FieldName = 'PMT_AMX_VENDA'
      Size = 4
    end
    object CdsParametrosPMT_AMX_FATURAMENTO: TStringField
      FieldName = 'PMT_AMX_FATURAMENTO'
      Size = 4
    end
    object CdsParametrosPMT_TABNOME1: TStringField
      FieldName = 'PMT_TABNOME1'
      Size = 30
    end
    object CdsParametrosPMT_TABNOME2: TStringField
      FieldName = 'PMT_TABNOME2'
      Size = 30
    end
    object CdsParametrosPMT_TABNOME3: TStringField
      FieldName = 'PMT_TABNOME3'
      Size = 30
    end
    object CdsParametrosPMT_TABNOME4: TStringField
      FieldName = 'PMT_TABNOME4'
      Size = 30
    end
    object CdsParametrosPMT_TABNOME5: TStringField
      FieldName = 'PMT_TABNOME5'
      Size = 30
    end
    object CdsParametrosPMT_TABNOME6: TStringField
      FieldName = 'PMT_TABNOME6'
      Size = 30
    end
    object CdsParametrosPMT_AMX_PRODUCAO_ENTRADA: TStringField
      FieldName = 'PMT_AMX_PRODUCAO_ENTRADA'
      Size = 4
    end
    object CdsParametrosPMT_AMX_PRODUCAO_SAIDA: TStringField
      FieldName = 'PMT_AMX_PRODUCAO_SAIDA'
      Size = 4
    end
    object CdsParametrosPMT_PIS_ALIQ_PRESUMIDO: TFMTBCDField
      FieldName = 'PMT_PIS_ALIQ_PRESUMIDO'
      Precision = 15
      Size = 4
    end
    object CdsParametrosPMT_PIS_ALIQ_REAL: TFMTBCDField
      FieldName = 'PMT_PIS_ALIQ_REAL'
      Precision = 15
      Size = 4
    end
    object CdsParametrosPMT_COFINS_ALIQ_PRESUMIDO: TFMTBCDField
      FieldName = 'PMT_COFINS_ALIQ_PRESUMIDO'
      Precision = 15
      Size = 4
    end
    object CdsParametrosPMT_COFINS_ALIQ_REAL: TFMTBCDField
      FieldName = 'PMT_COFINS_ALIQ_REAL'
      Precision = 15
      Size = 4
    end
    object CdsParametrosPMT_OPV_CODIGO_VENDA_PADRAO: TIntegerField
      FieldName = 'PMT_OPV_CODIGO_VENDA_PADRAO'
    end
    object CdsParametrosPMT_UTILIZA_ANALISE_CREDITO: TStringField
      FieldName = 'PMT_UTILIZA_ANALISE_CREDITO'
      Size = 1
    end
    object CdsParametrosPMT_UTILIZA_ANALISE_PRODUCAO: TStringField
      FieldName = 'PMT_UTILIZA_ANALISE_PRODUCAO'
      Size = 1
    end
    object CdsParametrosPMT_COMP_ITEM_PEDIDO_IT_NF: TStringField
      FieldName = 'PMT_COMP_ITEM_PEDIDO_IT_NF'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_PROD_PCP_ENDERECO: TStringField
      FieldName = 'PMT_PROD_PCP_ENDERECO'
      Size = 255
    end
    object CdsParametrosPMT_VENDA_LIBERADA_CAD_PRODUTO: TStringField
      FieldName = 'PMT_VENDA_LIBERADA_CAD_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_VENDA_CLI_SEM_CAD: TStringField
      FieldName = 'PMT_VENDA_CLI_SEM_CAD'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_VENDA_GRADE: TStringField
      FieldName = 'PMT_VENDA_GRADE'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_SEQUENCIA_UNICA_PEDIDO: TStringField
      FieldName = 'PMT_SEQUENCIA_UNICA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_PEDIDO_COMPRA_MSG: TMemoField
      FieldName = 'PMT_PEDIDO_COMPRA_MSG'
      BlobType = ftMemo
      Size = 1
    end
    object CdsParametrosPMT_MENSAGEM_PADRAO_ORCAMENTO: TMemoField
      FieldName = 'PMT_MENSAGEM_PADRAO_ORCAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object CdsParametrosPMT_VENDA_MSG_ATRASO_FIN: TStringField
      FieldName = 'PMT_VENDA_MSG_ATRASO_FIN'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_FAT_MSG_PEDIDO_VEND: TStringField
      FieldName = 'PMT_FAT_MSG_PEDIDO_VEND'
      Size = 1
    end
    object CdsParametrosPMT_BLOQ_VENDA_PCM: TStringField
      FieldName = 'PMT_BLOQ_VENDA_PCM'
      Size = 1
    end
    object CdsParametrosPMT_REFERENCIA_PROVISORIA: TStringField
      FieldName = 'PMT_REFERENCIA_PROVISORIA'
      Size = 25
    end
    object CdsParametrosPMT_COMP_ITEM_PEDIDO: TStringField
      FieldName = 'PMT_COMP_ITEM_PEDIDO'
      Size = 1
    end
    object CdsParametrosPMT_B2B: TStringField
      FieldName = 'PMT_B2B'
      Size = 1
    end
    object CdsParametrosPMT_CERTIFICADO_DIGITAL: TStringField
      FieldName = 'PMT_CERTIFICADO_DIGITAL'
      Size = 255
    end
    object CdsParametrosPMT_FIN_HABILITA_CENTRO_C_AVANC: TStringField
      FieldName = 'PMT_FIN_HABILITA_CENTRO_C_AVANC'
      Size = 1
    end
    object CdsParametrosPMT_CENTRO_CUSTO_OBRIGATORIO: TStringField
      FieldName = 'PMT_CENTRO_CUSTO_OBRIGATORIO'
      Size = 1
    end
    object CdsParametrosPMT_VALOR_APROX_TRIB: TStringField
      FieldName = 'PMT_VALOR_APROX_TRIB'
      Size = 1
    end
    object CdsParametrosPMT_OBRIGAR_GRADE_VENDA: TStringField
      FieldName = 'PMT_OBRIGAR_GRADE_VENDA'
      Size = 1
    end
    object CdsParametrosPMT_OBRIGAR_DIRETIVA_VENDA: TStringField
      FieldName = 'PMT_OBRIGAR_DIRETIVA_VENDA'
      Size = 1
    end
    object CdsParametrosPMT_EMPRESA_PADRAO_BOLETO: TStringField
      FieldName = 'PMT_EMPRESA_PADRAO_BOLETO'
      Size = 3
    end
    object CdsParametrosPMT_DPL_ST_NA1D: TStringField
      FieldName = 'PMT_DPL_ST_NA1D'
      Size = 1
    end
    object CdsParametrosPMT_HABILITA_TABELA_PRECOS: TStringField
      FieldName = 'PMT_HABILITA_TABELA_PRECOS'
      Size = 1
    end
    object CdsParametrosPMT_UTILIZA_CODIGO_ORIG_VD_NF: TStringField
      FieldName = 'PMT_UTILIZA_CODIGO_ORIG_VD_NF'
      Size = 1
    end
    object CdsParametrosPMT_CUSTO_BASE_PRODUCAO: TStringField
      FieldName = 'PMT_CUSTO_BASE_PRODUCAO'
      Size = 2
    end
    object CdsParametrosPMT_CONS_VENDA_PEDDO_STAT: TStringField
      FieldName = 'PMT_CONS_VENDA_PEDDO_STAT'
      Size = 1
    end
    object CdsParametrosPMT_FAT_CONFIRMA_PARCELA: TStringField
      FieldName = 'PMT_FAT_CONFIRMA_PARCELA'
      Size = 1
    end
    object CdsParametrosPMT_PADRAO_PESQUISA_PROD: TStringField
      FieldName = 'PMT_PADRAO_PESQUISA_PROD'
      Size = 1
    end
    object CdsParametrosPMT_PADRAO_EMP_CONSULTA: TStringField
      FieldName = 'PMT_PADRAO_EMP_CONSULTA'
      Size = 1
    end
    object CdsParametrosPMT_FORM_DANFE: TStringField
      FieldName = 'PMT_FORM_DANFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_MULTTAB: TStringField
      FieldName = 'PMT_MULTTAB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_OBRIGAR_DIRETIVA_VENDA_ABA: TStringField
      FieldName = 'PMT_OBRIGAR_DIRETIVA_VENDA_ABA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_USAR_SEQUENCIA_NFE_UNICA: TStringField
      FieldName = 'PMT_USAR_SEQUENCIA_NFE_UNICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_EXIBIRMESIMPOSTOSPARANA: TStringField
      FieldName = 'PMT_EXIBIRMESIMPOSTOSPARANA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_COPARTICIPACAO: TStringField
      FieldName = 'PMT_COPARTICIPACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_CSTPISCOFINS: TStringField
      FieldName = 'PMT_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsParametrosFMT_PAD_REFER: TStringField
      FieldName = 'FMT_PAD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParametrosPMT_CNPJ_CLIENTE_DUPLICADO: TStringField
      FieldName = 'PMT_CNPJ_CLIENTE_DUPLICADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParametrosPMT_VALOR_KIT: TStringField
      FieldName = 'PMT_VALOR_KIT'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_ITENS_KIT: TStringField
      FieldName = 'PMT_ITENS_KIT'
      Size = 1
    end
    object CdsParametrosPMT_TRIB_NF: TStringField
      FieldName = 'PMT_TRIB_NF'
      Size = 1
    end
    object CdsParametrosPMT_CONTROLA_KIT: TStringField
      FieldName = 'PMT_CONTROLA_KIT'
      Size = 1
    end
    object CdsParametrosPMT_PAGAR_COMISSAO_VERBA: TStringField
      FieldName = 'PMT_PAGAR_COMISSAO_VERBA'
      Size = 1
    end
    object CdsParametrosPMT_PERC_COMISSAO1: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO1'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA1: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA1'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO2'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA2: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA2'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO3'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA3: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA3'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO4'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA4: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA4'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO5'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA5: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA5'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PMT_PERC_COMISSAO6'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_PERC_VENDA6: TFMTBCDField
      FieldName = 'PMT_PERC_VENDA6'
      DisplayFormat = ',0.0000##;-,0.0000##'
      EditFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_COMIS_SIMPLES: TStringField
      FieldName = 'PMT_COMIS_SIMPLES'
      Size = 1
    end
    object CdsParametrosPMT_MULTTAB_SCRIPT: TStringField
      FieldName = 'PMT_MULTTAB_SCRIPT'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_DIGITACAO_GRID_VENDAS: TStringField
      FieldName = 'PMT_DIGITACAO_GRID_VENDAS'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_PRODUZIR_MAIS_OP: TStringField
      FieldName = 'PMT_PRODUZIR_MAIS_OP'
      Size = 1
    end
    object CdsParametrosESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 40
    end
    object CdsParametrosESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 40
    end
    object CdsParametrosESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 40
    end
    object CdsParametrosESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 40
    end
    object CdsParametrosESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 40
    end
    object CdsParametrosESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 40
    end
    object CdsParametrosESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 40
    end
    object CdsParametrosESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 40
    end
    object CdsParametrosESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 40
    end
    object CdsParametrosPMT_VARPERC_MEDIDA_PRODUTO: TFMTBCDField
      FieldName = 'PMT_VARPERC_MEDIDA_PRODUTO'
      Precision = 10
    end
    object CdsParametrosPMT_HABILITA_MEDIDAPRD: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD'
      Size = 1
    end
    object CdsParametrosPMT_NCM_UND_ITEM_PROV: TStringField
      FieldName = 'PMT_NCM_UND_ITEM_PROV'
      Size = 1
    end
    object CdsParametrosPMT_NUMDIAS_ORC: TIntegerField
      FieldName = 'PMT_NUMDIAS_ORC'
    end
    object CdsParametrosPMT_HABILITAR_CODORIGINAL: TStringField
      FieldName = 'PMT_HABILITAR_CODORIGINAL'
      Size = 1
    end
    object CdsParametrosPMT_PRAZO_ITEM: TStringField
      FieldName = 'PMT_PRAZO_ITEM'
      Size = 1
    end
    object CdsParametrospmt_Pedido_Doacao: TStringField
      FieldName = 'pmt_Pedido_Doacao'
      Size = 1
    end
    object CdsParametrosEMP_HAB_NFCE: TStringField
      FieldName = 'EMP_HAB_NFCE'
      Size = 1
    end
    object CdsParametrosPMT_CALCULO_MARGEM: TIntegerField
      FieldName = 'PMT_CALCULO_MARGEM'
    end
    object CdsParametrosPMT_MEM_PESQPED: TStringField
      FieldName = 'PMT_MEM_PESQPED'
      Size = 1
    end
    object CdsParametrosPMT_FATURAR_PENDENCIAS: TStringField
      FieldName = 'PMT_FATURAR_PENDENCIAS'
      Size = 1
    end
    object CdsParametrosPMT_OP_SEMAPONTA: TStringField
      FieldName = 'PMT_OP_SEMAPONTA'
      Size = 1
    end
    object CdsParametrosPMT_NAO_AUTO_PVENDA: TStringField
      FieldName = 'PMT_NAO_AUTO_PVENDA'
      Size = 1
    end
    object CdsParametrosPMT_RESPONSAVEL_TECNICO: TStringField
      FieldName = 'PMT_RESPONSAVEL_TECNICO'
      Size = 1
    end
    object CdsParametrosPMT_HAB_TERMICO: TStringField
      FieldName = 'PMT_HAB_TERMICO'
      Size = 1
    end
    object CdsParametrosPMT_ORC_GERAPEDIDO: TStringField
      FieldName = 'PMT_ORC_GERAPEDIDO'
      Size = 1
    end
    object CdsParametrosPMT_ORC_GERAACORDO: TStringField
      FieldName = 'PMT_ORC_GERAACORDO'
      Size = 1
    end
    object CdsParametrosPMT_NAO_ATUALIZAR_BANCO: TStringField
      FieldName = 'PMT_NAO_ATUALIZAR_BANCO'
      Size = 1
    end
    object CdsParametrosPMT_LIBERAR_FATURA: TStringField
      FieldName = 'PMT_LIBERAR_FATURA'
      Size = 1
    end
    object CdsParametrosPMT_LIBERAR_EXPEDICAO: TStringField
      FieldName = 'PMT_LIBERAR_EXPEDICAO'
      Size = 1
    end
    object CdsParametrosPMT_ORDEM_CODFORN: TStringField
      FieldName = 'PMT_ORDEM_CODFORN'
      Size = 1
    end
    object CdsParametrosPMT_ORDEM_DESCFORN: TStringField
      FieldName = 'PMT_ORDEM_DESCFORN'
      Size = 1
    end
    object CdsParametrosPMT_EXPEDICAO_MULTIEMPRESA: TStringField
      FieldName = 'PMT_EXPEDICAO_MULTIEMPRESA'
      Size = 1
    end
    object CdsParametrosPMT_FATURA_MULTIEMPRESA: TStringField
      FieldName = 'PMT_FATURA_MULTIEMPRESA'
      Size = 1
    end
    object CdsParametrosPMT_ATUALIZAR_CLIENTE: TStringField
      FieldName = 'PMT_ATUALIZAR_CLIENTE'
      Size = 1
    end
    object CdsParametrosPMT_RETIRAR_ICMS_BASECOFINSPIS: TStringField
      FieldName = 'PMT_RETIRAR_ICMS_BASECOFINSPIS'
      Size = 1
    end
    object CdsParametrosPMT_ATIVAR_PPAC: TStringField
      FieldName = 'PMT_ATIVAR_PPAC'
      Size = 1
    end
    object CdsParametrosPMT_ICMS_CUSTOENTRADA: TStringField
      FieldName = 'PMT_ICMS_CUSTOENTRADA'
      Size = 1
    end
    object CdsParametrosPMT_PIS_CUSTOENTRADA: TStringField
      FieldName = 'PMT_PIS_CUSTOENTRADA'
      Size = 1
    end
    object CdsParametrosPMT_INCLUIRRAPIDO: TStringField
      FieldName = 'PMT_INCLUIRRAPIDO'
      Size = 1
    end
    object CdsParametrospmt_CaminhoFoto: TStringField
      FieldName = 'pmt_CaminhoFoto'
      Size = 100
    end
    object CdsParametrosPMT_GERARSUBORDENS: TStringField
      FieldName = 'PMT_GERARSUBORDENS'
      Size = 1
    end
    object CdsParametrosPMT_CONTROLE_CONTASPAGAR: TStringField
      FieldName = 'PMT_CONTROLE_CONTASPAGAR'
      Size = 1
    end
    object CdsParametrosPMT_CAMINHO_PEDIN: TStringField
      FieldName = 'PMT_CAMINHO_PEDIN'
      Size = 100
    end
    object CdsParametrosPMT_HABILITAR_MRP: TStringField
      FieldName = 'PMT_HABILITAR_MRP'
      Size = 1
    end
    object CdsParametrosPMT_COMPOSICAOORDEM: TStringField
      FieldName = 'PMT_COMPOSICAOORDEM'
      Size = 1
    end
    object CdsParametrosPMT_COMSUMIRINSUMO: TStringField
      FieldName = 'PMT_COMSUMIRINSUMO'
      Size = 1
    end
    object CdsParametrosPMT_CUSTO_MATERIAPRIMA: TStringField
      FieldName = 'PMT_CUSTO_MATERIAPRIMA'
      Size = 1
    end
    object CdsParametrosPMT_CUSTOOPERACAO: TStringField
      FieldName = 'PMT_CUSTOOPERACAO'
      Size = 1
    end
    object CdsParametrosPMT_CUSTOCOLABORADOR: TStringField
      FieldName = 'PMT_CUSTOCOLABORADOR'
      Size = 1
    end
    object CdsParametrosPMT_CUSTOEQUIPAMENTO: TStringField
      FieldName = 'PMT_CUSTOEQUIPAMENTO'
      Size = 1
    end
    object CdsParametrosPMT_VINCULAR_VENDEDOR: TStringField
      FieldName = 'PMT_VINCULAR_VENDEDOR'
      Size = 1
    end
    object CdsParametrosPMT_MULTIPLICADOR_P: TStringField
      FieldName = 'PMT_MULTIPLICADOR_P'
      Size = 1
    end
    object CdsParametrosPMT_ENVASE_SBAIXA: TStringField
      FieldName = 'PMT_ENVASE_SBAIXA'
      Size = 1
    end
    object CdsParametrosPMT_HABILITA_ENVASE: TStringField
      FieldName = 'PMT_HABILITA_ENVASE'
      Size = 1
    end
    object CdsParametrosPMT_REL_ORDEMPRODUCAO: TStringField
      FieldName = 'PMT_REL_ORDEMPRODUCAO'
      OnGetText = CdsParametrosPMT_REL_ORDEMPRODUCAOGetText
      OnSetText = CdsParametrosPMT_REL_ORDEMPRODUCAOSetText
      Size = 3
    end
    object CdsParametrosPMT_CLIENTE_PRODUCAO: TStringField
      FieldName = 'PMT_CLIENTE_PRODUCAO'
      Size = 5
    end
    object CdsParametrosPMT_HABILITAR_PRODU_ANTIGO: TStringField
      FieldName = 'PMT_HABILITAR_PRODU_ANTIGO'
      Size = 1
    end
    object CdsParametrosPMT_INTEGRAR_PRD_SERV: TStringField
      FieldName = 'PMT_INTEGRAR_PRD_SERV'
      Size = 1
    end
    object CdsParametrosPMT_CENTROCUSTO_REQUERIDO_PAGAR: TStringField
      FieldName = 'PMT_CENTROCUSTO_REQUERIDO_PAGAR'
      Size = 1
    end
    object CdsParametrosPMT_DESCOSIDERAR_FATURA: TStringField
      FieldName = 'PMT_DESCOSIDERAR_FATURA'
      Size = 1
    end
    object CdsParametrosPMT_VALOR_MINIMO_DO_SERVICO: TFMTBCDField
      FieldName = 'PMT_VALOR_MINIMO_DO_SERVICO'
      Precision = 18
      Size = 5
    end
    object CdsParametrosPMT_AUTORIZA_EMPENHO: TStringField
      FieldName = 'PMT_AUTORIZA_EMPENHO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_LOTE_AUTOMATICO: TStringField
      FieldName = 'PMT_LOTE_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_LOTE_PREFIXO: TStringField
      FieldName = 'PMT_LOTE_PREFIXO'
      Size = 10
    end
    object CdsParametrosPMT_LOTE_SEMENTE: TIntegerField
      FieldName = 'PMT_LOTE_SEMENTE'
    end
    object CdsParametrosPMT_REL_DATA_EXPEDICAO: TStringField
      FieldName = 'PMT_REL_DATA_EXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_LIMITE_CREDITO_INICIAL: TFMTBCDField
      FieldName = 'PMT_LIMITE_CREDITO_INICIAL'
      DisplayFormat = '#,###,###,###.00'
      EditFormat = '#,###,###,###.00'
      Precision = 18
      Size = 2
    end
    object CdsParametrosPMT_OS_CABECALHO: TStringField
      FieldName = 'PMT_OS_CABECALHO'
      Size = 50
    end
    object CdsParametrosPMT_OS_REV: TStringField
      FieldName = 'PMT_OS_REV'
      Size = 10
    end
    object CdsParametrosPMT_OS_DATA_EMISSAO: TDateField
      FieldName = 'PMT_OS_DATA_EMISSAO'
    end
    object CdsParametrosPMT_AMX_ENVASE_SAIDA: TStringField
      FieldName = 'PMT_AMX_ENVASE_SAIDA'
      FixedChar = True
      Size = 4
    end
    object CdsParametrosPMT_DESCRICAO_99_OUTROS: TStringField
      FieldName = 'PMT_DESCRICAO_99_OUTROS'
      Size = 100
    end
    object CdsParametrosPMT_PRD_REFER_SCO_REFER: TStringField
      FieldName = 'PMT_PRD_REFER_SCO_REFER'
    end
    object CdsParametrosPMT_MULTIPLAS_IE: TStringField
      FieldName = 'PMT_MULTIPLAS_IE'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_LOTE_RASTREABILIDADE: TStringField
      FieldName = 'PMT_LOTE_RASTREABILIDADE'
      FixedChar = True
      Size = 1
    end
    object CdsParametrosPMT_REVISAO_RELATORIO: TStringField
      FieldName = 'PMT_REVISAO_RELATORIO'
    end
    object CdsParametrosPMT_HABILITAR_DIFAL: TStringField
      FieldName = 'PMT_HABILITAR_DIFAL'
      Size = 1
    end
    object CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC1: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC1'
      Size = 15
    end
    object CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC2: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC2'
      Size = 15
    end
    object CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC3: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC3'
      Size = 15
    end
    object CdsParametrosPMT_HABILITA_MEDIDAPRD_DESC4: TStringField
      FieldName = 'PMT_HABILITA_MEDIDAPRD_DESC4'
      Size = 15
    end
    object CdsParametrosPMT_METODO_CALCULO_PRECO: TStringField
      FieldName = 'PMT_METODO_CALCULO_PRECO'
      Size = 1
    end
    object CdsParametrosPMT_CAMINHO_IMAGEM_OP: TStringField
      FieldName = 'PMT_CAMINHO_IMAGEM_OP'
      Size = 255
    end
    object CdsParametrosPMT_IMPORTA_ITENS_XML: TStringField
      FieldName = 'PMT_IMPORTA_ITENS_XML'
      Size = 1
    end
    object CdsParametrosPMT_NAT_OPER_PADRAO: TStringField
      FieldName = 'PMT_NAT_OPER_PADRAO'
      Size = 1
    end
    object CdsParametrosPMT_NAT_OPER_RETORNO: TStringField
      FieldName = 'PMT_NAT_OPER_RETORNO'
      Size = 1
    end
    object CdsParametrosPMT_DESC_ORIGINAL_INDUST: TStringField
      FieldName = 'PMT_DESC_ORIGINAL_INDUST'
      Size = 1
    end
    object CdsParametrosPMT_MSG_ORCAMENTO_INDUST: TStringField
      FieldName = 'PMT_MSG_ORCAMENTO_INDUST'
      Size = 255
    end
    object CdsParametrosPMT_CENTRO_CUSTO_ENF: TStringField
      FieldName = 'PMT_CENTRO_CUSTO_ENF'
      Size = 1
    end
    object CdsParametrosPMT_PEDIDO_IND_PLASTICA: TStringField
      FieldName = 'PMT_PEDIDO_IND_PLASTICA'
      Size = 1
    end
    object CdsParametrosPMT_GRADE_MEDIDA1: TStringField
      FieldName = 'PMT_GRADE_MEDIDA1'
      Size = 50
    end
    object CdsParametrosPMT_GRADE_MEDIDA2: TStringField
      FieldName = 'PMT_GRADE_MEDIDA2'
      Size = 50
    end
    object CdsParametrosPMT_GRADE_MEDIDA3: TStringField
      FieldName = 'PMT_GRADE_MEDIDA3'
      Size = 50
    end
    object CdsParametrosPMT_ENF_CHK_INDUSTRIALIZACAO: TStringField
      FieldName = 'PMT_ENF_CHK_INDUSTRIALIZACAO'
      Size = 1
    end
    object CdsParametrosPMT_NF_ESPECIE: TStringField
      FieldName = 'PMT_NF_ESPECIE'
      Size = 60
    end
    object CdsParametrosPMT_VINC_NF_ITEM_RETORNO: TStringField
      FieldName = 'PMT_VINC_NF_ITEM_RETORNO'
      Size = 1
    end
    object CdsParametrosPMT_FATURA_SEM_PESO: TStringField
      FieldName = 'PMT_FATURA_SEM_PESO'
      Size = 1
    end
    object CdsParametrosPMT_ATUALIZA_LOTE: TStringField
      FieldName = 'PMT_ATUALIZA_LOTE'
      Size = 1
    end
    object CdsParametrosPMT_LANCA_PERC_MATERIA_PRIMA: TStringField
      FieldName = 'PMT_LANCA_PERC_MATERIA_PRIMA'
      Size = 1
    end
    object CdsParametrosPMT_ALTERA_QUANT_ITEM_PED: TStringField
      FieldName = 'PMT_ALTERA_QUANT_ITEM_PED'
      Size = 1
    end
    object CdsParametrosPMT_RETORNO_POR_CORES: TStringField
      FieldName = 'PMT_RETORNO_POR_CORES'
      Size = 1
    end
    object CdsParametrosPMT_ENVIA_COPIA_PEDIDO_INDUST: TStringField
      FieldName = 'PMT_ENVIA_COPIA_PEDIDO_INDUST'
      Size = 1024
    end
    object CdsParametrosPMT_LANCA_CONTA_CORRENTE_VERBA: TStringField
      FieldName = 'PMT_LANCA_CONTA_CORRENTE_VERBA'
      Size = 1
    end
    object CdsParametrosPMT_LANCA_CC_VERBA_FPG_REGISTRO: TIntegerField
      FieldName = 'PMT_LANCA_CC_VERBA_FPG_REGISTRO'
    end
    object CdsParametrosPMT_VENDA_CLI_SEM_CAD_OBRIG: TStringField
      FieldName = 'PMT_VENDA_CLI_SEM_CAD_OBRIG'
      Size = 1
    end
    object CdsParametrosPMT_VALOR_DIFAL_PEDIDO: TStringField
      FieldName = 'PMT_VALOR_DIFAL_PEDIDO'
      Size = 1
    end
    object CdsParametrosPMT_UTILIZA_CODIGO_ORIG_VD_PD: TStringField
      FieldName = 'PMT_UTILIZA_CODIGO_ORIG_VD_PD'
      Size = 1
    end
    object CdsParametrosPMT_HABILITA_ICMS_PEDIDO: TStringField
      FieldName = 'PMT_HABILITA_ICMS_PEDIDO'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_VALOR_ORIGINAL: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_ORIGINAL'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_FRETE_SEGURO_DESP: TStringField
      FieldName = 'PMT_FAT_NF_FRETE_SEGURO_DESP'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_VALOR_LIQ_DESC: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_LIQ_DESC'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_VALOR_ANTECIPADO: TStringField
      FieldName = 'PMT_FAT_NF_VALOR_ANTECIPADO'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_SEM_VALOR_COMERCIAL: TStringField
      FieldName = 'PMT_FAT_NF_SEM_VALOR_COMERCIAL'
      Size = 1
    end
    object CdsParametrosPMT_FAT_NF_VL_LIQ_VALOR_ANTECIP: TStringField
      FieldName = 'PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP'
      Size = 1
    end
    object CdsParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField
      FieldName = 'PMT_COMIS_SOBRE_DIF_VENDA_CUSTO'
      Size = 1
    end
    object CdsParametrosPMT_BAIXA_ESTOQUE_AVANCADO: TStringField
      FieldName = 'PMT_BAIXA_ESTOQUE_AVANCADO'
      Size = 1
    end
    object CdsParametrosPMT_GER_AVANC_ANTECIP_DESC: TStringField
      FieldName = 'PMT_GER_AVANC_ANTECIP_DESC'
      Size = 1
    end
    object CdsParametrosPMT_MENSAGEM_VENDAS: TStringField
      FieldName = 'PMT_MENSAGEM_VENDAS'
      Size = 80
    end
    object CdsParametrosPMT_INFORMA_LOTE_NOTA_ENTRADA: TStringField
      FieldName = 'PMT_INFORMA_LOTE_NOTA_ENTRADA'
      Size = 1
    end
    object CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTO: TStringField
      FieldName = 'PMT_LAYOUT_BOLETO_FATURAMENTO'
      OnGetText = CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOGetText
      OnSetText = CdsParametrosPMT_LAYOUT_BOLETO_FATURAMENTOSetText
      Size = 2
    end
    object CdsParametrosPMT_RESP_TECNICO_QUALIDADE: TStringField
      FieldName = 'PMT_RESP_TECNICO_QUALIDADE'
      Size = 255
    end
    object CdsParametrosPMT_CRQ_RESP_TECNICO_QUALIDADE: TStringField
      FieldName = 'PMT_CRQ_RESP_TECNICO_QUALIDADE'
      Size = 255
    end
    object CdsParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO: TStringField
      FieldName = 'PMT_BLOQ_PED_VENDA_FAT_ATRASO'
      Size = 1
    end
    object CdsParametrosPMT_BLOQ_PED_VENDA_FAT_ATRASO_D: TIntegerField
      FieldName = 'PMT_BLOQ_PED_VENDA_FAT_ATRASO_D'
    end
  end
  object DsParametros: TDataSource
    DataSet = CdsParametros
    Left = 281
    Top = 156
  end
  object SqlCheques: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CHQ0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 204
    object SqlChequesCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlChequesCHQ_TOTAL: TFMTBCDField
      FieldName = 'CHQ_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlChequesCHQ_NOMINAL: TStringField
      FieldName = 'CHQ_NOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlChequesCHQ_DATA: TSQLTimeStampField
      FieldName = 'CHQ_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesCHQ_FINALIZA: TStringField
      FieldName = 'CHQ_FINALIZA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlChequesBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlChequesCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspCheques: TDataSetProvider
    DataSet = SqlCheques
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 204
  end
  object CdsCheques: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCheques'
    AfterInsert = CdsChequesAfterInsert
    Left = 200
    Top = 204
    object CdsChequesCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsChequesCHQ_TOTAL: TFMTBCDField
      FieldName = 'CHQ_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsChequesCHQ_NOMINAL: TStringField
      FieldName = 'CHQ_NOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsChequesCHQ_DATA: TSQLTimeStampField
      FieldName = 'CHQ_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesCHQ_FINALIZA: TStringField
      FieldName = 'CHQ_FINALIZA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsChequesBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsChequesCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsCheques: TDataSource
    DataSet = CdsCheques
    Left = 281
    Top = 203
  end
  object SqlChequesItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CHQ_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 252
    object SqlChequesItensCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlChequesItensCHE_FAVORECIDO: TStringField
      FieldName = 'CHE_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlChequesItensCHE_NUMDOC: TStringField
      FieldName = 'CHE_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlChequesItensPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlChequesItensCHE_PARCELA: TStringField
      FieldName = 'CHE_PARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlChequesItensCHE_REMOVE: TStringField
      FieldName = 'CHE_REMOVE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlChequesItensCHE_OBS: TStringField
      FieldName = 'CHE_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlChequesItensCHE_VENCTO: TSQLTimeStampField
      FieldName = 'CHE_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequesItensCHE_VLPAGO: TFMTBCDField
      FieldName = 'CHE_VLPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlChequesItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspChequeItens: TDataSetProvider
    DataSet = SqlChequesItens
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 252
  end
  object CdsChequesItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspChequeItens'
    Left = 200
    Top = 252
    object CdsChequesItensCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsChequesItensCHE_FAVORECIDO: TStringField
      FieldName = 'CHE_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsChequesItensCHE_NUMDOC: TStringField
      FieldName = 'CHE_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsChequesItensPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsChequesItensCHE_PARCELA: TStringField
      FieldName = 'CHE_PARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsChequesItensCHE_REMOVE: TStringField
      FieldName = 'CHE_REMOVE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsChequesItensCHE_OBS: TStringField
      FieldName = 'CHE_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsChequesItensCHE_VENCTO: TSQLTimeStampField
      FieldName = 'CHE_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsChequesItensCHE_VLPAGO: TFMTBCDField
      FieldName = 'CHE_VLPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsChequesItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsChequeItens: TDataSource
    DataSet = CdsChequesItens
    Left = 281
    Top = 251
  end
  object SqlEmbalagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PED_EB02')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 299
    object SqlEmbalagemPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlEmbalagemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlEmbalagemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlEmbalagemPEB_PRECO: TFMTBCDField
      FieldName = 'PEB_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlEmbalagemPEB_QTDE: TFMTBCDField
      FieldName = 'PEB_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlEmbalagemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlEmbalagemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
  end
  object DspEmbalagem: TDataSetProvider
    DataSet = SqlEmbalagem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 299
  end
  object CdsEmbalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmbalagem'
    Left = 200
    Top = 299
    object CdsEmbalagemPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEmbalagemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsEmbalagemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsEmbalagemPEB_PRECO: TFMTBCDField
      FieldName = 'PEB_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEmbalagemPEB_QTDE: TFMTBCDField
      FieldName = 'PEB_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEmbalagemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEmbalagemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
  end
  object DsEmbalagem: TDataSource
    DataSet = CdsEmbalagem
    Left = 281
    Top = 298
  end
  object SqlNotaFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NF0001')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 346
    object SqlNotaFiscalNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlNotaFiscalNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SqlNotaFiscalNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlNotaFiscalNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlNotaFiscalNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlNotaFiscalPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNotaFiscalNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlNotaFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNotaFiscalOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlNotaFiscalOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlNotaFiscalREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNotaFiscalNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNotaFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNotaFiscalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlNotaFiscalNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlNotaFiscalNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlNotaFiscalNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlNotaFiscalNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlNotaFiscalNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNotaFiscalNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNotaFiscalNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlNotaFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNotaFiscalNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SqlNotaFiscalNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlNotaFiscalAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNotaFiscalNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlNotaFiscalNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNotaFiscalNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNotaFiscalOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object SqlNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
  end
  object DspNotaFiscal: TDataSetProvider
    DataSet = SqlNotaFiscal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 346
  end
  object CdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspNotaFiscal'
    AfterInsert = CdsNotaFiscalAfterInsert
    Left = 200
    Top = 346
    object CdsNotaFiscalNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsNotaFiscalNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsNotaFiscalNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsNotaFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsNotaFiscalOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsNotaFiscalREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsNotaFiscalNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsNotaFiscalNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsNotaFiscalNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsNotaFiscalNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsNotaFiscalNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsNotaFiscalNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNotaFiscalAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object CdsNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
  end
  object DsNotaFiscal: TDataSource
    DataSet = SqlNotaFiscal
    Left = 281
    Top = 345
  end
  object SqlPrdManut: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_ENSA')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 393
    object SqlPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      Required = True
    end
    object SqlPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspPrdManut: TDataSetProvider
    DataSet = SqlPrdManut
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 393
  end
  object CdsPrdManut: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdManut'
    Left = 200
    Top = 393
    object CdsPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsPrdManut: TDataSource
    DataSet = CdsPrdManut
    Left = 281
    Top = 393
  end
  object SqlNFitem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NF_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 440
    object SqlNFitemNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlNFitemNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SqlNFitemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlNFitemNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlNFitemNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlNFitemNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlNFitemNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlNFitemNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlNFitemNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      Precision = 15
    end
    object SqlNFitemNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      Precision = 15
    end
    object SqlNFitemNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      Precision = 15
    end
    object SqlNFitemNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      Precision = 15
    end
    object SqlNFitemNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      Precision = 15
    end
    object SqlNFitemNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
    end
    object SqlNFitemNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
    end
    object SqlNFitemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlNFitemNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlNFitemNF_HORA: TTimeField
      FieldName = 'NF_HORA'
    end
    object SqlNFitemNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object SqlNFitemNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      Precision = 15
      Size = 4
    end
    object SqlNFitemOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object SqlNFitemAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlNFitemAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object SqlNFitemUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlNFitemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object SqlNFitemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object SqlNFitemPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 500
    end
    object SqlNFitemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspNFitem: TDataSetProvider
    DataSet = SqlNFitem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 440
  end
  object CdsNFitem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspNFitem'
    Left = 200
    Top = 440
    object CdsNFitemNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsNFitemNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsNFitemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsNFitemNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsNFitemNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNFitemNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNFitemNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsNFitemNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNFitemNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      Precision = 15
    end
    object CdsNFitemNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      Precision = 15
    end
    object CdsNFitemNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      Precision = 15
    end
    object CdsNFitemNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      Precision = 15
    end
    object CdsNFitemNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      Precision = 15
    end
    object CdsNFitemNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
    end
    object CdsNFitemNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
    end
    object CdsNFitemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsNFitemNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
    object CdsNFitemNF_HORA: TTimeField
      FieldName = 'NF_HORA'
    end
    object CdsNFitemNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object CdsNFitemNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsNFitemOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsNFitemAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object CdsNFitemAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object CdsNFitemUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsNFitemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object CdsNFitemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object CdsNFitemPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 500
    end
    object CdsNFitemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsNFitem: TDataSource
    DataSet = CdsNFitem
    Left = 281
    Top = 440
  end
  object SqlEveRepr: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EVE_RP01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 488
    object SqlEveReprERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlEveReprERP_VALOR: TFMTBCDField
      FieldName = 'ERP_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlEveReprERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEveReprERP_DATA: TSQLTimeStampField
      FieldName = 'ERP_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEveReprERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEveReprERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEveReprEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEveReprREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlEveReprEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspEveRepr: TDataSetProvider
    DataSet = SqlEveRepr
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 488
  end
  object CdsEveRepr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEveRepr'
    AfterEdit = CdsEveReprAfterEdit
    BeforePost = CdsEveReprBeforePost
    Left = 200
    Top = 488
    object CdsEveReprERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsEveReprERP_VALOR: TFMTBCDField
      FieldName = 'ERP_VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEveReprERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEveReprERP_DATA: TSQLTimeStampField
      FieldName = 'ERP_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEveReprERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEveReprERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEveReprEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEveReprREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEveReprEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsEveRepr: TDataSource
    DataSet = CdsEveRepr
    Left = 281
    Top = 488
  end
  object SqlIss: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ISS0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 12
    object SqlIssISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlIssISS_MUNICIPIO: TStringField
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlIssISS_UF: TStringField
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlIssISS_PGRC_ISS: TFMTBCDField
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object SqlIssISS_PERC_RET: TFMTBCDField
      FieldName = 'ISS_PERC_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object SqlIssEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspIss: TDataSetProvider
    DataSet = SqlIss
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 509
    Top = 12
  end
  object CdsIss: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspIss'
    BeforePost = CdsIssBeforePost
    Left = 616
    Top = 12
    object CdsIssISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsIssISS_MUNICIPIO: TStringField
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsIssISS_UF: TStringField
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsIssISS_PGRC_ISS: TFMTBCDField
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object CdsIssISS_PERC_RET: TFMTBCDField
      FieldName = 'ISS_PERC_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object CdsIssEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsIss: TDataSource
    DataSet = CdsIss
    Left = 729
    Top = 12
  end
  object SqlTrib: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TRIB0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 59
    object SqlTribTRB_CODIGO: TStringField
      FieldName = 'TRB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlTribTRB_ATIVO: TStringField
      FieldName = 'TRB_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlTribTRB_SIMP_FED: TFMTBCDField
      FieldName = 'TRB_SIMP_FED'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_SIMP_EST: TFMTBCDField
      FieldName = 'TRB_SIMP_EST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_SIMP_FED_DE: TFMTBCDField
      FieldName = 'TRB_SIMP_FED_DE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_SIMP_FED_ATE: TFMTBCDField
      FieldName = 'TRB_SIMP_FED_ATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_SIMP_EST_DE: TFMTBCDField
      FieldName = 'TRB_SIMP_EST_DE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_SIMP_EST_ATE: TFMTBCDField
      FieldName = 'TRB_SIMP_EST_ATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_IRPJ: TFMTBCDField
      FieldName = 'TRB_IRPJ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_IRPJ_RET: TFMTBCDField
      FieldName = 'TRB_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_IRPF: TFMTBCDField
      FieldName = 'TRB_IRPF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_PIS: TFMTBCDField
      FieldName = 'TRB_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_PIS_RET: TFMTBCDField
      FieldName = 'TRB_PIS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_COFINS: TFMTBCDField
      FieldName = 'TRB_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_COFINS_RET: TFMTBCDField
      FieldName = 'TRB_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_CONTSOCIAL: TFMTBCDField
      FieldName = 'TRB_CONTSOCIAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'TRB_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_INSS: TFMTBCDField
      FieldName = 'TRB_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribTRB_INSS_RET: TFMTBCDField
      FieldName = 'TRB_INSS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlTribEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlTribTRB_ISS: TFMTBCDField
      FieldName = 'TRB_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlTribTRB_ISS_RET: TFMTBCDField
      FieldName = 'TRB_ISS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  object DspTrib: TDataSetProvider
    DataSet = SqlTrib
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 509
    Top = 59
  end
  object CdsTrib: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspTrib'
    BeforeEdit = CdsTribBeforeEdit
    BeforePost = CdsTribBeforePost
    Left = 616
    Top = 59
    object CdsTribTRB_CODIGO: TStringField
      FieldName = 'TRB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey, pfHidden]
      Required = True
      Size = 2
    end
    object CdsTribTRB_ATIVO: TStringField
      FieldName = 'TRB_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsTribTRB_SIMP_FED: TFMTBCDField
      FieldName = 'TRB_SIMP_FED'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_SIMP_EST: TFMTBCDField
      FieldName = 'TRB_SIMP_EST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_SIMP_FED_DE: TFMTBCDField
      FieldName = 'TRB_SIMP_FED_DE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_SIMP_FED_ATE: TFMTBCDField
      FieldName = 'TRB_SIMP_FED_ATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_SIMP_EST_DE: TFMTBCDField
      FieldName = 'TRB_SIMP_EST_DE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_SIMP_EST_ATE: TFMTBCDField
      FieldName = 'TRB_SIMP_EST_ATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_IRPJ: TFMTBCDField
      FieldName = 'TRB_IRPJ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_IRPJ_RET: TFMTBCDField
      FieldName = 'TRB_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_IRPF: TFMTBCDField
      FieldName = 'TRB_IRPF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_PIS: TFMTBCDField
      FieldName = 'TRB_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_PIS_RET: TFMTBCDField
      FieldName = 'TRB_PIS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_COFINS: TFMTBCDField
      FieldName = 'TRB_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_COFINS_RET: TFMTBCDField
      FieldName = 'TRB_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_CONTSOCIAL: TFMTBCDField
      FieldName = 'TRB_CONTSOCIAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'TRB_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_INSS: TFMTBCDField
      FieldName = 'TRB_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_INSS_RET: TFMTBCDField
      FieldName = 'TRB_INSS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsTribTRB_ISS: TFMTBCDField
      FieldName = 'TRB_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsTribTRB_ISS_RET: TFMTBCDField
      FieldName = 'TRB_ISS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
  end
  object DsTrib: TDataSource
    DataSet = CdsTrib
    Left = 729
    Top = 59
  end
  object SQLUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from USUARIO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 106
    object SQLUsuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLUsuarioUSU_DATA_CADASTRO: TDateField
      FieldName = 'USU_DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLUsuarioUSU_DATA_ATUALIZACAO: TDateField
      FieldName = 'USU_DATA_ATUALIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SQLUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLUsuarioUSU_TIPO_USUARIO: TStringField
      FieldName = 'USU_TIPO_USUARIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_LIBERA_CREDITO: TStringField
      FieldName = 'USU_LIBERA_CREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_LIBERA_PRECO: TStringField
      FieldName = 'USU_LIBERA_PRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_LIBERA_DESCONTO: TStringField
      FieldName = 'USU_LIBERA_DESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQLUsuarioUSU_ESTATISTICA: TStringField
      FieldName = 'USU_ESTATISTICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_REEMISSAO_PED: TStringField
      FieldName = 'USU_REEMISSAO_PED'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SQLUsuarioUSU_EMAIL_SENHA: TStringField
      FieldName = 'USU_EMAIL_SENHA'
    end
    object SQLUsuarioUSU_MENU01: TStringField
      FieldName = 'USU_MENU01'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU02: TStringField
      FieldName = 'USU_MENU02'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU03: TStringField
      FieldName = 'USU_MENU03'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU04: TStringField
      FieldName = 'USU_MENU04'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU05: TStringField
      FieldName = 'USU_MENU05'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU06: TStringField
      FieldName = 'USU_MENU06'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU07: TStringField
      FieldName = 'USU_MENU07'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU08: TStringField
      FieldName = 'USU_MENU08'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU09: TStringField
      FieldName = 'USU_MENU09'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU010: TStringField
      FieldName = 'USU_MENU010'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU011: TStringField
      FieldName = 'USU_MENU011'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU012: TStringField
      FieldName = 'USU_MENU012'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU013: TStringField
      FieldName = 'USU_MENU013'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU014: TStringField
      FieldName = 'USU_MENU014'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_MENU015: TStringField
      FieldName = 'USU_MENU015'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_INCLUSAO: TStringField
      FieldName = 'USU_INCLUSAO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_ALTERACAO: TStringField
      FieldName = 'USU_ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_EXCLUSAO: TStringField
      FieldName = 'USU_EXCLUSAO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_RELATORIO: TStringField
      FieldName = 'USU_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object SQLUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      Size = 1
    end
  end
  object DSPUsuario: TDataSetProvider
    DataSet = SQLUsuario
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 509
    Top = 106
  end
  object CDSUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUsuario'
    AfterInsert = CDSUsuarioAfterInsert
    AfterEdit = CDSUsuarioAfterEdit
    AfterScroll = CDSUsuarioAfterScroll
    OnCalcFields = CDSUsuarioCalcFields
    OnReconcileError = CDSUsuarioReconcileError
    Left = 616
    Top = 106
    object CDSUsuarioUSU_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object CDSUsuarioUSU_DATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'USU_DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1; '
    end
    object CDSUsuarioUSU_DATA_ATUALIZACAO: TDateField
      Alignment = taCenter
      FieldName = 'USU_DATA_ATUALIZACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1; '
    end
    object CDSUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CDSUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CDSUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CDSUsuarioUSU_TIPO_USUARIO: TStringField
      FieldName = 'USU_TIPO_USUARIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_LIBERA_CREDITO: TStringField
      FieldName = 'USU_LIBERA_CREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_LIBERA_PRECO: TStringField
      FieldName = 'USU_LIBERA_PRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_LIBERA_DESCONTO: TStringField
      FieldName = 'USU_LIBERA_DESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuariowTIPO_USUARIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'wTIPO_USUARIO'
      Size = 15
      Calculated = True
    end
    object CDSUsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CDSUsuarioUSU_ESTATISTICA: TStringField
      FieldName = 'USU_ESTATISTICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_REEMISSAO_PED: TStringField
      FieldName = 'USU_REEMISSAO_PED'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CDSUsuarioUSU_EMAIL_SENHA: TStringField
      FieldName = 'USU_EMAIL_SENHA'
    end
    object CDSUsuarioUSU_MENU01: TStringField
      FieldName = 'USU_MENU01'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU02: TStringField
      FieldName = 'USU_MENU02'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU03: TStringField
      FieldName = 'USU_MENU03'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU04: TStringField
      FieldName = 'USU_MENU04'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU05: TStringField
      FieldName = 'USU_MENU05'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU06: TStringField
      FieldName = 'USU_MENU06'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU07: TStringField
      FieldName = 'USU_MENU07'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU08: TStringField
      FieldName = 'USU_MENU08'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU09: TStringField
      FieldName = 'USU_MENU09'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU010: TStringField
      FieldName = 'USU_MENU010'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU011: TStringField
      FieldName = 'USU_MENU011'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU012: TStringField
      FieldName = 'USU_MENU012'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU013: TStringField
      FieldName = 'USU_MENU013'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU014: TStringField
      FieldName = 'USU_MENU014'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_MENU015: TStringField
      FieldName = 'USU_MENU015'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_INCLUSAO: TStringField
      FieldName = 'USU_INCLUSAO'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_ALTERACAO: TStringField
      FieldName = 'USU_ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_EXCLUSAO: TStringField
      FieldName = 'USU_EXCLUSAO'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_RELATORIO: TStringField
      FieldName = 'USU_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object CDSUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      Size = 1
    end
    object CDSUsuarioUSUARIO_ATIVO: TStringField
      FieldKind = fkCalculated
      FieldName = 'USUARIO_ATIVO'
      Size = 3
      Calculated = True
    end
  end
  object DsUsuario: TDataSource
    DataSet = CDSUsuario
    OnDataChange = DsUsuarioDataChange
    Left = 729
    Top = 106
  end
  object SQLAcessosUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from USUARIO_ACESSO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 155
    object SQLAcessosUsuarioUSA_REGISTRO: TIntegerField
      FieldName = 'USA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLAcessosUsuarioUSA_COD_USUARIO: TIntegerField
      FieldName = 'USA_COD_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLAcessosUsuarioUSA_MENU: TStringField
      DisplayWidth = 100
      FieldName = 'USA_MENU'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SQLAcessosUsuarioUSA_ACESSO: TIntegerField
      FieldName = 'USA_ACESSO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLAcessosUsuarioUSA_ALTERACAO: TStringField
      FieldName = 'USA_ALTERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLAcessosUsuarioUSA_INCLUSAO: TStringField
      FieldName = 'USA_INCLUSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLAcessosUsuarioUSA_EXCLUSAO: TStringField
      FieldName = 'USA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLAcessosUsuarioUSA_RELATORIO: TStringField
      FieldName = 'USA_RELATORIO'
      Size = 1
    end
  end
  object DSPAcessosUsuario: TDataSetProvider
    DataSet = SQLAcessosUsuario
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 509
    Top = 155
  end
  object CDSAcessosUsuario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USA_COD_USUARIO'
    MasterFields = 'USU_CODIGO'
    MasterSource = DsUsuario
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPAcessosUsuario'
    AfterInsert = CDSAcessosUsuarioAfterInsert
    Left = 616
    Top = 155
    object CDSAcessosUsuarioUSA_REGISTRO: TIntegerField
      FieldName = 'USA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAcessosUsuarioUSA_COD_USUARIO: TIntegerField
      FieldName = 'USA_COD_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSAcessosUsuarioUSA_MENU: TStringField
      FieldName = 'USA_MENU'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CDSAcessosUsuarioUSA_ACESSO: TIntegerField
      FieldName = 'USA_ACESSO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSAcessosUsuarioUSA_ALTERACAO: TStringField
      FieldName = 'USA_ALTERACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSAcessosUsuarioUSA_INCLUSAO: TStringField
      FieldName = 'USA_INCLUSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSAcessosUsuarioUSA_EXCLUSAO: TStringField
      FieldName = 'USA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSAcessosUsuarioUSA_RELATORIO: TStringField
      FieldName = 'USA_RELATORIO'
      Size = 1
    end
  end
  object DsAcessosUsuario: TDataSource
    DataSet = CDSAcessosUsuario
    Left = 729
    Top = 155
  end
  object SQLUsaParametro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from USUARIO_PARAMETRO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 211
    object SQLUsaParametroUSP_REGISTRO: TIntegerField
      FieldName = 'USP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLUsaParametroUSP_COD_USUARIO: TIntegerField
      FieldName = 'USP_COD_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLUsaParametroUSP_STAT_PRECO_BRUTO_P: TStringField
      FieldName = 'USP_STAT_PRECO_BRUTO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_PRECO_LIQUIDO_P: TStringField
      FieldName = 'USP_STAT_PRECO_LIQUIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_DESC_AUTOMATICO_P: TStringField
      FieldName = 'USP_STAT_DESC_AUTOMATICO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_DESCONTO_MAX_P: TFMTBCDField
      FieldName = 'USP_DESCONTO_MAX_P'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLUsaParametroUSP_REEMISSAO_PEDIDO_P: TStringField
      FieldName = 'USP_REEMISSAO_PEDIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_EXCLUSAO_PEDIDO_P: TStringField
      FieldName = 'USP_EXCLUSAO_PEDIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_PRECO_BRUTO_T: TStringField
      FieldName = 'USP_STAT_PRECO_BRUTO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_PRECO_LIQUIDO_T: TStringField
      FieldName = 'USP_STAT_PRECO_LIQUIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_DESC_AUTOMATICO_T: TStringField
      FieldName = 'USP_STAT_DESC_AUTOMATICO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_DESCONTO_MAX_T: TFMTBCDField
      FieldName = 'USP_DESCONTO_MAX_T'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLUsaParametroUSP_REEMISSAO_PEDIDO_T: TStringField
      FieldName = 'USP_REEMISSAO_PEDIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_EXCLUSAO_PEDIDO_T: TStringField
      FieldName = 'USP_EXCLUSAO_PEDIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_COMISSAO: TStringField
      FieldName = 'USP_STAT_COMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_CUSTO: TStringField
      FieldName = 'USP_STAT_CUSTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_MARGEM: TStringField
      FieldName = 'USP_STAT_MARGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_PRECO_VENDA: TStringField
      FieldName = 'USP_STAT_PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_MARGEM_MINIMA: TStringField
      FieldName = 'USP_STAT_MARGEM_MINIMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_PRECO_OFERTA: TStringField
      FieldName = 'USP_STAT_PRECO_OFERTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_DESCONTO_P: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_DESCONTO_T: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_DESCONTO_OFERTA_P: TStringField
      FieldName = 'USP_DESCONTO_OFERTA_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_DESCONTO_OFERTA_T: TStringField
      FieldName = 'USP_DESCONTO_OFERTA_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_NF_ENTRADA: TStringField
      FieldName = 'USP_ALTERA_NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_RELATORIOS_P: TStringField
      FieldName = 'USP_RELATORIOS_P'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_PEDIDOS_P: TStringField
      FieldName = 'USP_VISUALIZA_PEDIDOS_P'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_COMISSAO: TStringField
      FieldName = 'USP_ALTERA_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_KARDEX_LANC_ENTRADA: TStringField
      FieldName = 'USP_KARDEX_LANC_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_KARDEX_LANC_SAIDA: TStringField
      FieldName = 'USP_KARDEX_LANC_SAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_KARDEX_LANC_BALANCO: TStringField
      FieldName = 'USP_KARDEX_LANC_BALANCO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_LIBERA_ANALISE_CREDITO: TStringField
      FieldName = 'USP_LIBERA_ANALISE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_LIBERA_ANALISE_PRODUCAO: TStringField
      FieldName = 'USP_LIBERA_ANALISE_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VENDA_CADASTRO_PRODUTO: TStringField
      FieldName = 'USP_VENDA_CADASTRO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VENDA_REAJUSTE: TStringField
      FieldName = 'USP_VENDA_REAJUSTE'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_CLIENTES_P: TStringField
      FieldName = 'USP_VISUALIZA_CLIENTES_P'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_ANALISE_CREDITO_: TStringField
      FieldName = 'USP_VISUALIZA_ANALISE_CREDITO_'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_CUSTOS_PRODUTO: TStringField
      FieldName = 'USP_ALTERA_CUSTOS_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_MARKUP_PEDIDO: TStringField
      FieldName = 'USP_VISUALIZA_MARKUP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VENDA_TRANSFERENCIA: TStringField
      FieldName = 'USP_VENDA_TRANSFERENCIA'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_TABELA_PRECOS: TStringField
      FieldName = 'USP_ALTERA_TABELA_PRECOS'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_USAPRAZODESABILITADO: TStringField
      FieldName = 'USP_USAPRAZODESABILITADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLUsaParametroLIBERA_COLABORADOR: TStringField
      FieldName = 'LIBERA_COLABORADOR'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroPERMITE_VER_CUSTO: TStringField
      FieldName = 'PERMITE_VER_CUSTO'
      Size = 1
    end
    object SQLUsaParametroPERMITE_VENDA_ABAIXO_CUSTO: TStringField
      FieldName = 'PERMITE_VENDA_ABAIXO_CUSTO'
      Size = 1
    end
    object SQLUsaParametroUSP_VIZUALIZAR_COMISSOES: TStringField
      FieldName = 'USP_VIZUALIZAR_COMISSOES'
      Size = 1
    end
    object SQLUsaParametrousp_permite_excluir_itens: TStringField
      FieldName = 'usp_permite_excluir_itens'
      Size = 1
    end
    object SQLUsaParametroUSP_INCLUIR_CLIENTES: TStringField
      FieldName = 'USP_INCLUIR_CLIENTES'
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERAR_CLIENTES: TStringField
      FieldName = 'USP_ALTERAR_CLIENTES'
      Size = 1
    end
    object SQLUsaParametroUSP_USA_CREDITO_CC: TStringField
      FieldName = 'USP_USA_CREDITO_CC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLUsaParametroUSP_ESTORNAEXPEDICAO: TStringField
      FieldName = 'USP_ESTORNAEXPEDICAO'
      Size = 1
    end
    object SQLUsaParametroUSP_ABRICHAMADO: TStringField
      FieldName = 'USP_ABRICHAMADO'
      Size = 1
    end
    object SQLUsaParametroUSP_TRANSFERENCIATITULOS: TStringField
      FieldName = 'USP_TRANSFERENCIATITULOS'
      Size = 1
    end
    object SQLUsaParametroUSP_DASH_VENDAS: TStringField
      FieldName = 'USP_DASH_VENDAS'
      Size = 1
    end
    object SQLUsaParametroUSP_DASH_FINANCEIRO: TStringField
      FieldName = 'USP_DASH_FINANCEIRO'
      Size = 1
    end
    object SQLUsaParametroUSP_DASH_NAO_ABRIR: TStringField
      FieldName = 'USP_DASH_NAO_ABRIR'
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_FORMA_PAG_FAT: TStringField
      FieldName = 'USP_ALTERA_FORMA_PAG_FAT'
      Size = 1
    end
    object SQLUsaParametroUSP_APROVAR_PAG: TStringField
      FieldName = 'USP_APROVAR_PAG'
      Size = 1
    end
    object SQLUsaParametroUSP_REPROVAR_PAG: TStringField
      FieldName = 'USP_REPROVAR_PAG'
      Size = 1
    end
    object SQLUsaParametroUSP_APROVAR_EST: TStringField
      FieldName = 'USP_APROVAR_EST'
      Size = 1
    end
    object SQLUsaParametroUSP_REPROVAR_EST: TStringField
      FieldName = 'USP_REPROVAR_EST'
      Size = 1
    end
    object SQLUsaParametroUSP_APONTAR: TStringField
      FieldName = 'USP_APONTAR'
      Size = 1
    end
    object SQLUsaParametroUSP_APONTAR_EST: TStringField
      FieldName = 'USP_APONTAR_EST'
      Size = 1
    end
    object SQLUsaParametroUSP_LIMITE_CONSULTA_ORCA: TIntegerField
      FieldName = 'USP_LIMITE_CONSULTA_ORCA'
    end
    object SQLUsaParametroUSP_CUSTOPRODUCAO: TStringField
      FieldName = 'USP_CUSTOPRODUCAO'
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_VENDEDOR: TStringField
      FieldName = 'USP_ALTERA_VENDEDOR'
      Size = 1
    end
    object SQLUsaParametroUSP_OPV_CODIGO: TIntegerField
      FieldName = 'USP_OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLUsaParametroUSP_PERMITE_ALTER_TIPO: TStringField
      FieldName = 'USP_PERMITE_ALTER_TIPO'
      Size = 1
    end
    object SQLUsaParametroUSP_ALTERA_DESCONTO_NOTA: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_NOTA'
      Size = 1
    end
    object SQLUsaParametroUSP_STAT_CAMPO_TECNICO: TStringField
      FieldName = 'USP_STAT_CAMPO_TECNICO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_AUTORIZA_COTACAO_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_COTACAO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_AUTORIZA_COMPRA_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_COMPRA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_REALIZA_COTACAO_MATERIAL: TStringField
      FieldName = 'USP_REALIZA_COTACAO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_HABILITA_COLUNA_NF: TStringField
      FieldName = 'USP_HABILITA_COLUNA_NF'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_FATURARSEMCONCLUSAO: TStringField
      FieldName = 'USP_FATURARSEMCONCLUSAO'
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_ABA_VENDA: TStringField
      FieldName = 'USP_VISUALIZA_ABA_VENDA'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_DESABILITA_COPIAR_PEDIDO: TStringField
      FieldName = 'USP_DESABILITA_COPIAR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_VISUALIZA_PEDIDOS_CRM: TStringField
      FieldName = 'USP_VISUALIZA_PEDIDOS_CRM'
      Size = 1
    end
    object SQLUsaParametroUSP_PEDIDO_ABAIXO_PRAZO_MINIMO: TStringField
      FieldName = 'USP_PEDIDO_ABAIXO_PRAZO_MINIMO'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_PROD_SEM_ALMOX: TStringField
      FieldName = 'USP_PROD_SEM_ALMOX'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_AUTORIZA_RETIRADA_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_RETIRADA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_REALIZA_RETIRADA_MATERIAL: TStringField
      FieldName = 'USP_REALIZA_RETIRADA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_EXIBE_ABA_INFO_CLIENTE: TStringField
      FieldName = 'USP_EXIBE_ABA_INFO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUsaParametroUSP_INCLUI_ITEM_PED_OP_GERADA: TStringField
      FieldName = 'USP_INCLUI_ITEM_PED_OP_GERADA'
      Size = 1
    end
    object SQLUsaParametroUSP_DASH_INTELIGENCIA: TStringField
      FieldName = 'USP_DASH_INTELIGENCIA'
      Size = 1
    end
    object SQLUsaParametroUSP_PERMITE_VENDA_FATURA_ATRASO: TStringField
      FieldName = 'USP_PERMITE_VENDA_FATURA_ATRASO'
      Size = 1
    end
  end
  object DSPUsaParametro: TDataSetProvider
    DataSet = SQLUsaParametro
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 509
    Top = 211
  end
  object CDSUsaParametro: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPUsaParametro'
    AfterInsert = CDSUsaParametroAfterInsert
    Left = 616
    Top = 211
    object CDSUsaParametroUSP_REGISTRO: TIntegerField
      FieldName = 'USP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSUsaParametroUSP_COD_USUARIO: TIntegerField
      FieldName = 'USP_COD_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSUsaParametroUSP_STAT_PRECO_BRUTO_P: TStringField
      FieldName = 'USP_STAT_PRECO_BRUTO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_PRECO_LIQUIDO_P: TStringField
      FieldName = 'USP_STAT_PRECO_LIQUIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_DESC_AUTOMATICO_P: TStringField
      FieldName = 'USP_STAT_DESC_AUTOMATICO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_DESCONTO_MAX_P: TFMTBCDField
      FieldName = 'USP_DESCONTO_MAX_P'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSUsaParametroUSP_REEMISSAO_PEDIDO_P: TStringField
      FieldName = 'USP_REEMISSAO_PEDIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_EXCLUSAO_PEDIDO_P: TStringField
      FieldName = 'USP_EXCLUSAO_PEDIDO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_PRECO_BRUTO_T: TStringField
      FieldName = 'USP_STAT_PRECO_BRUTO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_PRECO_LIQUIDO_T: TStringField
      FieldName = 'USP_STAT_PRECO_LIQUIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_DESC_AUTOMATICO_T: TStringField
      FieldName = 'USP_STAT_DESC_AUTOMATICO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_DESCONTO_MAX_T: TFMTBCDField
      FieldName = 'USP_DESCONTO_MAX_T'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSUsaParametroUSP_REEMISSAO_PEDIDO_T: TStringField
      FieldName = 'USP_REEMISSAO_PEDIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_EXCLUSAO_PEDIDO_T: TStringField
      FieldName = 'USP_EXCLUSAO_PEDIDO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_COMISSAO: TStringField
      FieldName = 'USP_STAT_COMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_CUSTO: TStringField
      FieldName = 'USP_STAT_CUSTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_MARGEM: TStringField
      FieldName = 'USP_STAT_MARGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_PRECO_VENDA: TStringField
      FieldName = 'USP_STAT_PRECO_VENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_MARGEM_MINIMA: TStringField
      FieldName = 'USP_STAT_MARGEM_MINIMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_PRECO_OFERTA: TStringField
      FieldName = 'USP_STAT_PRECO_OFERTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_DESCONTO_P: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_DESCONTO_T: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_DESCONTO_OFERTA_P: TStringField
      FieldName = 'USP_DESCONTO_OFERTA_P'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_DESCONTO_OFERTA_T: TStringField
      FieldName = 'USP_DESCONTO_OFERTA_T'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_NF_ENTRADA: TStringField
      FieldName = 'USP_ALTERA_NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_RELATORIOS_P: TStringField
      FieldName = 'USP_RELATORIOS_P'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_PEDIDOS_P: TStringField
      FieldName = 'USP_VISUALIZA_PEDIDOS_P'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_COMISSAO: TStringField
      FieldName = 'USP_ALTERA_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_KARDEX_LANC_ENTRADA: TStringField
      FieldName = 'USP_KARDEX_LANC_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_KARDEX_LANC_SAIDA: TStringField
      FieldName = 'USP_KARDEX_LANC_SAIDA'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_KARDEX_LANC_BALANCO: TStringField
      FieldName = 'USP_KARDEX_LANC_BALANCO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_LIBERA_ANALISE_CREDITO: TStringField
      FieldName = 'USP_LIBERA_ANALISE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_LIBERA_ANALISE_PRODUCAO: TStringField
      FieldName = 'USP_LIBERA_ANALISE_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VENDA_CADASTRO_PRODUTO: TStringField
      FieldName = 'USP_VENDA_CADASTRO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VENDA_REAJUSTE: TStringField
      FieldName = 'USP_VENDA_REAJUSTE'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_CLIENTES_P: TStringField
      FieldName = 'USP_VISUALIZA_CLIENTES_P'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_ANALISE_CREDITO_: TStringField
      FieldName = 'USP_VISUALIZA_ANALISE_CREDITO_'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_CUSTOS_PRODUTO: TStringField
      FieldName = 'USP_ALTERA_CUSTOS_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_MARKUP_PEDIDO: TStringField
      FieldName = 'USP_VISUALIZA_MARKUP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VENDA_TRANSFERENCIA: TStringField
      FieldName = 'USP_VENDA_TRANSFERENCIA'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_TABELA_PRECOS: TStringField
      FieldName = 'USP_ALTERA_TABELA_PRECOS'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_USAPRAZODESABILITADO: TStringField
      FieldName = 'USP_USAPRAZODESABILITADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CDSUsaParametroLIBERA_COLABORADOR: TStringField
      FieldName = 'LIBERA_COLABORADOR'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroPERMITE_VER_CUSTO: TStringField
      FieldName = 'PERMITE_VER_CUSTO'
      Size = 1
    end
    object CDSUsaParametroPERMITE_VENDA_ABAIXO_CUSTO: TStringField
      FieldName = 'PERMITE_VENDA_ABAIXO_CUSTO'
      Size = 1
    end
    object CDSUsaParametroUSP_VIZUALIZAR_COMISSOES: TStringField
      FieldName = 'USP_VIZUALIZAR_COMISSOES'
      Size = 1
    end
    object CDSUsaParametrousp_permite_excluir_itens: TStringField
      FieldName = 'usp_permite_excluir_itens'
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERAR_CLIENTES: TStringField
      FieldName = 'USP_ALTERAR_CLIENTES'
      Size = 1
    end
    object CDSUsaParametroUSP_INCLUIR_CLIENTES: TStringField
      FieldName = 'USP_INCLUIR_CLIENTES'
      Size = 1
    end
    object CDSUsaParametroUSP_USA_CREDITO_CC: TStringField
      FieldName = 'USP_USA_CREDITO_CC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CDSUsaParametroUSP_ESTORNAEXPEDICAO: TStringField
      FieldName = 'USP_ESTORNAEXPEDICAO'
      Size = 1
    end
    object CDSUsaParametroUSP_TRANSFERENCIATITULOS: TStringField
      FieldName = 'USP_TRANSFERENCIATITULOS'
      Size = 1
    end
    object CDSUsaParametroUSP_ABRICHAMADO: TStringField
      FieldName = 'USP_ABRICHAMADO'
      Size = 1
    end
    object CDSUsaParametroUSP_DASH_VENDAS: TStringField
      FieldName = 'USP_DASH_VENDAS'
      Size = 1
    end
    object CDSUsaParametroUSP_DASH_FINANCEIRO: TStringField
      FieldName = 'USP_DASH_FINANCEIRO'
      Size = 1
    end
    object CDSUsaParametroUSP_DASH_NAO_ABRIR: TStringField
      FieldName = 'USP_DASH_NAO_ABRIR'
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_FORMA_PAG_FAT: TStringField
      FieldName = 'USP_ALTERA_FORMA_PAG_FAT'
      Size = 1
    end
    object CDSUsaParametroUSP_APROVAR_PAG: TStringField
      FieldName = 'USP_APROVAR_PAG'
      Size = 1
    end
    object CDSUsaParametroUSP_REPROVAR_PAG: TStringField
      FieldName = 'USP_REPROVAR_PAG'
      Size = 1
    end
    object CDSUsaParametroUSP_APROVAR_EST: TStringField
      FieldName = 'USP_APROVAR_EST'
      Size = 1
    end
    object CDSUsaParametroUSP_REPROVAR_EST: TStringField
      FieldName = 'USP_REPROVAR_EST'
      Size = 1
    end
    object CDSUsaParametroUSP_APONTAR: TStringField
      FieldName = 'USP_APONTAR'
      Size = 1
    end
    object CDSUsaParametroUSP_APONTAR_EST: TStringField
      FieldName = 'USP_APONTAR_EST'
      Size = 1
    end
    object CDSUsaParametroUSP_LIMITE_CONSULTA_ORCA: TIntegerField
      FieldName = 'USP_LIMITE_CONSULTA_ORCA'
    end
    object CDSUsaParametroUSP_CUSTOPRODUCAO: TStringField
      FieldName = 'USP_CUSTOPRODUCAO'
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_VENDEDOR: TStringField
      FieldName = 'USP_ALTERA_VENDEDOR'
      Size = 1
    end
    object CDSUsaParametroUSP_OPV_CODIGO: TIntegerField
      FieldName = 'USP_OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSUsaParametroUSP_PERMITE_ALTER_TIPO: TStringField
      FieldName = 'USP_PERMITE_ALTER_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CDSUsaParametroUSP_ALTERA_DESCONTO_NOTA: TStringField
      FieldName = 'USP_ALTERA_DESCONTO_NOTA'
      Size = 1
    end
    object CDSUsaParametroUSP_STAT_CAMPO_TECNICO: TStringField
      FieldName = 'USP_STAT_CAMPO_TECNICO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_AUTORIZA_COTACAO_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_COTACAO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_AUTORIZA_COMPRA_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_COMPRA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_REALIZA_COTACAO_MATERIAL: TStringField
      FieldName = 'USP_REALIZA_COTACAO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_HABILITA_COLUNA_NF: TStringField
      FieldName = 'USP_HABILITA_COLUNA_NF'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_FATURARSEMCONCLUSAO: TStringField
      FieldName = 'USP_FATURARSEMCONCLUSAO'
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_ABA_VENDA: TStringField
      FieldName = 'USP_VISUALIZA_ABA_VENDA'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_DESABILITA_COPIAR_PEDIDO: TStringField
      FieldName = 'USP_DESABILITA_COPIAR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_VISUALIZA_PEDIDOS_CRM: TStringField
      FieldName = 'USP_VISUALIZA_PEDIDOS_CRM'
      Size = 1
    end
    object CDSUsaParametroUSP_PEDIDO_ABAIXO_PRAZO_MINIMO: TStringField
      FieldName = 'USP_PEDIDO_ABAIXO_PRAZO_MINIMO'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_PROD_SEM_ALMOX: TStringField
      FieldName = 'USP_PROD_SEM_ALMOX'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_AUTORIZA_RETIRADA_MATERIAL: TStringField
      FieldName = 'USP_AUTORIZA_RETIRADA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_REALIZA_RETIRADA_MATERIAL: TStringField
      FieldName = 'USP_REALIZA_RETIRADA_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_EXIBE_ABA_INFO_CLIENTE: TStringField
      FieldName = 'USP_EXIBE_ABA_INFO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object CDSUsaParametroUSP_INCLUI_ITEM_PED_OP_GERADA: TStringField
      FieldName = 'USP_INCLUI_ITEM_PED_OP_GERADA'
      Size = 1
    end
    object CDSUsaParametroUSP_DASH_INTELIGENCIA: TStringField
      FieldName = 'USP_DASH_INTELIGENCIA'
      Size = 1
    end
    object CDSUsaParametroUSP_PERMITE_VENDA_FATURA_ATRASO: TStringField
      FieldName = 'USP_PERMITE_VENDA_FATURA_ATRASO'
      Size = 1
    end
  end
  object DSUsaParametro: TDataSource
    DataSet = CDSUsaParametro
    Left = 729
    Top = 211
  end
  object SQLArquivoCNAB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ARQUIVO_CNAB')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 259
    object SQLArquivoCNABCNAB_REGISTRO: TIntegerField
      FieldName = 'CNAB_REGISTRO'
      ProviderFlags = []
    end
    object SQLArquivoCNABCNAB_CODIGO: TIntegerField
      FieldName = 'CNAB_CODIGO'
    end
    object SQLArquivoCNABCNAB_COD_EMPESA: TIntegerField
      FieldName = 'CNAB_COD_EMPESA'
    end
    object SQLArquivoCNABCNAB_CODIGO_BANCO: TIntegerField
      FieldName = 'CNAB_CODIGO_BANCO'
    end
    object SQLArquivoCNABCNAB_COD_ARQUIVO: TStringField
      FieldName = 'CNAB_COD_ARQUIVO'
      FixedChar = True
      Size = 2
    end
    object SQLArquivoCNABCNAB_LITERAL_ARQUIVO: TStringField
      FieldName = 'CNAB_LITERAL_ARQUIVO'
      Size = 15
    end
    object SQLArquivoCNABCNAB_DATA: TDateField
      FieldName = 'CNAB_DATA'
    end
    object SQLArquivoCNABCNAB_HORA: TTimeField
      FieldName = 'CNAB_HORA'
    end
    object SQLArquivoCNABCNAB_COD_SERVICO: TStringField
      FieldName = 'CNAB_COD_SERVICO'
      FixedChar = True
      Size = 2
    end
    object SQLArquivoCNABCNAB_LITERA_SERVICO: TStringField
      FieldName = 'CNAB_LITERA_SERVICO'
      Size = 15
    end
    object SQLArquivoCNABCNAB_AGENCIA: TStringField
      FieldName = 'CNAB_AGENCIA'
      Size = 10
    end
    object SQLArquivoCNABCNAB_AGENCIA_DV: TStringField
      FieldName = 'CNAB_AGENCIA_DV'
      Size = 3
    end
    object SQLArquivoCNABCNAB_CONTA: TStringField
      FieldName = 'CNAB_CONTA'
      Size = 10
    end
    object SQLArquivoCNABCNAB_CONTA_DV: TStringField
      FieldName = 'CNAB_CONTA_DV'
      Size = 3
    end
    object SQLArquivoCNABCNAB_QTDE_DUPLICATA: TIntegerField
      FieldName = 'CNAB_QTDE_DUPLICATA'
    end
    object SQLArquivoCNABCNAB_NOME_ARQUIVO: TStringField
      FieldName = 'CNAB_NOME_ARQUIVO'
    end
    object SQLArquivoCNABCNAB_STATUS: TStringField
      FieldName = 'CNAB_STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLArquivoCNABCNAB_DATA_STATUS: TDateField
      FieldName = 'CNAB_DATA_STATUS'
    end
    object SQLArquivoCNABCNAB_HORA_STATUS: TTimeField
      FieldName = 'CNAB_HORA_STATUS'
    end
    object SQLArquivoCNABCNAB_STATUS_BAIXA: TStringField
      FieldName = 'CNAB_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLArquivoCNABCNAB_DATA_BAIXA: TDateField
      FieldName = 'CNAB_DATA_BAIXA'
    end
    object SQLArquivoCNABCNAB_HORA_BAIXA: TTimeField
      FieldName = 'CNAB_HORA_BAIXA'
    end
    object SQLArquivoCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object SQLDupliCNAB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from DUPLICAT_CNAB')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 315
    object SQLDupliCNABDCN_REGISTRO: TIntegerField
      FieldName = 'DCN_REGISTRO'
      Required = True
    end
    object SQLDupliCNABDCN_COD_REMESSA: TIntegerField
      FieldName = 'DCN_COD_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDupliCNABDCN_DUPLICATA: TStringField
      FieldName = 'DCN_DUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDupliCNABDCN_COD_OCORRENCIA: TStringField
      FieldName = 'DCN_COD_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField
      FieldName = 'DCN_DATA_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDupliCNABDCN_INSTRUCAO1: TStringField
      FieldName = 'DCN_INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDupliCNABDCN_INSTRUCAO2: TStringField
      FieldName = 'DCN_INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDupliCNABDCN_COD_REJEICAO: TStringField
      FieldName = 'DCN_COD_REJEICAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDupliCNABDCN_INDIC_CREDITO: TStringField
      FieldName = 'DCN_INDIC_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLDupliCNABDCN_NOSSO_NUMERO: TStringField
      FieldName = 'DCN_NOSSO_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SQLDupliCNABDCN_TARIFA: TFMTBCDField
      FieldName = 'DCN_TARIFA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'DCN_VALOR_ABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'DCN_VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_PAGO: TFMTBCDField
      FieldName = 'DCN_VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_JUROS_MORA: TFMTBCDField
      FieldName = 'DCN_JUROS_MORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_MULTA: TFMTBCDField
      FieldName = 'DCN_VALOR_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLDupliCNABDCN_STATUS_BAIXA: TStringField
      FieldName = 'DCN_STATUS_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField
      FieldName = 'DCN_IDENTIFICA_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDupliCNABDCN_PROTESTAR: TStringField
      FieldName = 'DCN_PROTESTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_DIAS_PROT: TIntegerField
      FieldName = 'DCN_DIAS_PROT'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDupliCNABDCN_DUP_PARCELA: TStringField
      FieldName = 'DCN_DUP_PARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SQLDupliCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CDSArquivoCNAB: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPArquivoCNAB'
    AfterInsert = CDSArquivoCNABAfterInsert
    AfterScroll = CDSArquivoCNABAfterScroll
    Left = 616
    Top = 259
    object CDSArquivoCNABCNAB_REGISTRO: TIntegerField
      FieldName = 'CNAB_REGISTRO'
      ProviderFlags = []
    end
    object CDSArquivoCNABCNAB_CODIGO: TIntegerField
      FieldName = 'CNAB_CODIGO'
    end
    object CDSArquivoCNABCNAB_COD_EMPESA: TIntegerField
      FieldName = 'CNAB_COD_EMPESA'
    end
    object CDSArquivoCNABCNAB_CODIGO_BANCO: TIntegerField
      FieldName = 'CNAB_CODIGO_BANCO'
    end
    object CDSArquivoCNABCNAB_COD_ARQUIVO: TStringField
      FieldName = 'CNAB_COD_ARQUIVO'
      FixedChar = True
      Size = 2
    end
    object CDSArquivoCNABCNAB_LITERAL_ARQUIVO: TStringField
      FieldName = 'CNAB_LITERAL_ARQUIVO'
      Size = 15
    end
    object CDSArquivoCNABCNAB_DATA: TDateField
      FieldName = 'CNAB_DATA'
    end
    object CDSArquivoCNABCNAB_HORA: TTimeField
      FieldName = 'CNAB_HORA'
    end
    object CDSArquivoCNABCNAB_COD_SERVICO: TStringField
      FieldName = 'CNAB_COD_SERVICO'
      FixedChar = True
      Size = 2
    end
    object CDSArquivoCNABCNAB_LITERA_SERVICO: TStringField
      FieldName = 'CNAB_LITERA_SERVICO'
      Size = 15
    end
    object CDSArquivoCNABCNAB_AGENCIA: TStringField
      FieldName = 'CNAB_AGENCIA'
      Size = 10
    end
    object CDSArquivoCNABCNAB_AGENCIA_DV: TStringField
      FieldName = 'CNAB_AGENCIA_DV'
      Size = 3
    end
    object CDSArquivoCNABCNAB_CONTA: TStringField
      FieldName = 'CNAB_CONTA'
      Size = 10
    end
    object CDSArquivoCNABCNAB_CONTA_DV: TStringField
      FieldName = 'CNAB_CONTA_DV'
      Size = 3
    end
    object CDSArquivoCNABCNAB_QTDE_DUPLICATA: TIntegerField
      FieldName = 'CNAB_QTDE_DUPLICATA'
    end
    object CDSArquivoCNABCNAB_NOME_ARQUIVO: TStringField
      FieldName = 'CNAB_NOME_ARQUIVO'
    end
    object CDSArquivoCNABCNAB_STATUS: TStringField
      FieldName = 'CNAB_STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSArquivoCNABCNAB_DATA_STATUS: TDateField
      FieldName = 'CNAB_DATA_STATUS'
    end
    object CDSArquivoCNABCNAB_HORA_STATUS: TTimeField
      FieldName = 'CNAB_HORA_STATUS'
    end
    object CDSArquivoCNABCNAB_STATUS_BAIXA: TStringField
      FieldName = 'CNAB_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object CDSArquivoCNABCNAB_DATA_BAIXA: TDateField
      FieldName = 'CNAB_DATA_BAIXA'
    end
    object CDSArquivoCNABCNAB_HORA_BAIXA: TTimeField
      FieldName = 'CNAB_HORA_BAIXA'
    end
    object CDSArquivoCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CDSDupliCNAB: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPDupliCNAB'
    Left = 616
    Top = 315
    object CDSDupliCNABDCN_REGISTRO: TIntegerField
      FieldName = 'DCN_REGISTRO'
      ProviderFlags = []
    end
    object CDSDupliCNABDCN_COD_REMESSA: TIntegerField
      FieldName = 'DCN_COD_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object CDSDupliCNABDCN_DUPLICATA: TStringField
      FieldName = 'DCN_DUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CDSDupliCNABDCN_COD_OCORRENCIA: TStringField
      FieldName = 'DCN_COD_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSDupliCNABDCN_DATA_OCORRENCIA: TDateField
      FieldName = 'DCN_DATA_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CDSDupliCNABDCN_INSTRUCAO1: TStringField
      FieldName = 'DCN_INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSDupliCNABDCN_INSTRUCAO2: TStringField
      FieldName = 'DCN_INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSDupliCNABDCN_COD_REJEICAO: TStringField
      FieldName = 'DCN_COD_REJEICAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSDupliCNABDCN_INDIC_CREDITO: TStringField
      FieldName = 'DCN_INDIC_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSDupliCNABDCN_NOSSO_NUMERO: TStringField
      FieldName = 'DCN_NOSSO_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CDSDupliCNABDCN_TARIFA: TFMTBCDField
      FieldName = 'DCN_TARIFA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'DCN_VALOR_ABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'DCN_VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_VALOR_PAGO: TFMTBCDField
      FieldName = 'DCN_VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_JUROS_MORA: TFMTBCDField
      FieldName = 'DCN_JUROS_MORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_VALOR_MULTA: TFMTBCDField
      FieldName = 'DCN_VALOR_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CDSDupliCNABDCN_STATUS_BAIXA: TStringField
      FieldName = 'DCN_STATUS_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSDupliCNABDCN_IDENTIFICA_TITULO: TStringField
      FieldName = 'DCN_IDENTIFICA_TITULO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSDupliCNABDCN_PROTESTAR: TStringField
      FieldName = 'DCN_PROTESTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSDupliCNABDCN_DIAS_PROT: TIntegerField
      FieldName = 'DCN_DIAS_PROT'
      ProviderFlags = [pfInUpdate]
    end
    object CDSDupliCNABDCN_DUP_PARCELA: TStringField
      FieldName = 'DCN_DUP_PARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CDSDupliCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DSPArquivoCNAB: TDataSetProvider
    DataSet = SQLArquivoCNAB
    Options = [poAllowCommandText]
    Left = 512
    Top = 259
  end
  object DSPDupliCNAB: TDataSetProvider
    DataSet = SQLDupliCNAB
    Options = [poAllowCommandText]
    Left = 512
    Top = 315
  end
  object DSArquivoCNAB: TDataSource
    DataSet = CDSArquivoCNAB
    Left = 728
    Top = 259
  end
  object DSDupliCNAB: TDataSource
    DataSet = CDSDupliCNAB
    Left = 720
    Top = 315
  end
  object CDSOcorrenciaCNAB: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPOcorrenciaCNAB'
    Left = 616
    Top = 363
    object CDSOcorrenciaCNABOCR_REGISTRO: TIntegerField
      FieldName = 'OCR_REGISTRO'
      Required = True
    end
    object CDSOcorrenciaCNABOCR_COD_BANCO: TIntegerField
      FieldName = 'OCR_COD_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object CDSOcorrenciaCNABOCR_COD_OCORRENCIA: TStringField
      FieldName = 'OCR_COD_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CDSOcorrenciaCNABOCR_DESCRICAO: TStringField
      FieldName = 'OCR_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CDSOcorrenciaCNABOCR_TIPO_OCORRENCIA: TStringField
      FieldName = 'OCR_TIPO_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CDSOcorrenciaCNABOCR_COMANDO: TStringField
      FieldName = 'OCR_COMANDO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DSPOcorrenciaCNAB: TDataSetProvider
    DataSet = SQLOcorrenciaCNAB
    Options = [poAllowCommandText]
    Left = 512
    Top = 363
  end
  object DSOcorrenciaCNAB: TDataSource
    DataSet = CDSOcorrenciaCNAB
    Left = 728
    Top = 363
  end
  object SQLOcorrenciaCNAB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from OCORRENCIA_CNAB')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 363
    object SQLOcorrenciaCNABOCR_REGISTRO: TIntegerField
      FieldName = 'OCR_REGISTRO'
      Required = True
    end
    object SQLOcorrenciaCNABOCR_COD_BANCO: TIntegerField
      FieldName = 'OCR_COD_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLOcorrenciaCNABOCR_COD_OCORRENCIA: TStringField
      FieldName = 'OCR_COD_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLOcorrenciaCNABOCR_DESCRICAO: TStringField
      FieldName = 'OCR_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQLOcorrenciaCNABOCR_TIPO_OCORRENCIA: TStringField
      FieldName = 'OCR_TIPO_OCORRENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQLOcorrenciaCNABOCR_COMANDO: TStringField
      FieldName = 'OCR_COMANDO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object SQLInstrucaoCNAB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from INSTRUCAO_CNAB')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 414
    object SQLInstrucaoCNABIST_REGISTRO: TIntegerField
      FieldName = 'IST_REGISTRO'
      Required = True
    end
    object SQLInstrucaoCNABIST_COD_BANCO: TIntegerField
      FieldName = 'IST_COD_BANCO'
    end
    object SQLInstrucaoCNABIST_CODIGO: TStringField
      FieldName = 'IST_CODIGO'
      Size = 3
    end
    object SQLInstrucaoCNABIST_DESCRICAO: TStringField
      FieldName = 'IST_DESCRICAO'
      Size = 80
    end
    object SQLInstrucaoCNABIST_COMANDO: TStringField
      FieldName = 'IST_COMANDO'
      Size = 3
    end
  end
  object CDSInstrucaoCNAB: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPInstrucaoCNAB'
    Left = 616
    Top = 411
    object CDSInstrucaoCNABIST_REGISTRO: TIntegerField
      FieldName = 'IST_REGISTRO'
      Required = True
    end
    object CDSInstrucaoCNABIST_COD_BANCO: TIntegerField
      FieldName = 'IST_COD_BANCO'
    end
    object CDSInstrucaoCNABIST_CODIGO: TStringField
      FieldName = 'IST_CODIGO'
      Size = 3
    end
    object CDSInstrucaoCNABIST_DESCRICAO: TStringField
      FieldName = 'IST_DESCRICAO'
      Size = 80
    end
    object CDSInstrucaoCNABIST_COMANDO: TStringField
      FieldName = 'IST_COMANDO'
      Size = 3
    end
  end
  object DSPInstrucaoCNAB: TDataSetProvider
    DataSet = SQLInstrucaoCNAB
    Options = [poAllowCommandText]
    Left = 512
    Top = 411
  end
  object DSInstrucaoCNAB: TDataSource
    DataSet = CDSInstrucaoCNAB
    Left = 728
    Top = 411
  end
  object SqlCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CID0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 462
    object SqlCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCidadeEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object SqlCidadeCID_COD_IBGE: TIntegerField
      FieldName = 'CID_COD_IBGE'
    end
    object SqlCidadeCID_CIDADE: TStringField
      FieldName = 'CID_CIDADE'
      Size = 50
    end
    object SqlCidadeCID_ESTADO: TStringField
      FieldName = 'CID_ESTADO'
      FixedChar = True
      Size = 2
    end
    object SqlCidadeCID_CEP_INICIO: TStringField
      FieldName = 'CID_CEP_INICIO'
      Size = 8
    end
    object SqlCidadeCID_CEP_FINAL: TStringField
      FieldName = 'CID_CEP_FINAL'
      Size = 8
    end
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCidade'
    BeforeEdit = CdsCidadeBeforeEdit
    Left = 616
    Top = 459
    object CdsCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsCidadeEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CdsCidadeCID_COD_IBGE: TIntegerField
      FieldName = 'CID_COD_IBGE'
    end
    object CdsCidadeCID_CIDADE: TStringField
      FieldName = 'CID_CIDADE'
      Size = 50
    end
    object CdsCidadeCID_ESTADO: TStringField
      FieldName = 'CID_ESTADO'
      FixedChar = True
      Size = 2
    end
    object CdsCidadeCID_CEP_INICIO: TStringField
      FieldName = 'CID_CEP_INICIO'
      Size = 8
    end
    object CdsCidadeCID_CEP_FINAL: TStringField
      FieldName = 'CID_CEP_FINAL'
      Size = 8
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SqlCidade
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 459
  end
  object DsCidade: TDataSource
    DataSet = CdsCidade
    Left = 728
    Top = 459
  end
  object SQLSitTributaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.*  FROM SITUACAO_TRIBUTARIA T1')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 520
    object SQLSitTributariaSTB_CODIGO: TIntegerField
      FieldName = 'STB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLSitTributariaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object SQLSitTributariaSTB_DATA_CADASTRO: TDateField
      FieldName = 'STB_DATA_CADASTRO'
    end
    object SQLSitTributariaSTB_DATA_ATUALIZA: TDateField
      FieldName = 'STB_DATA_ATUALIZA'
    end
    object SQLSitTributariaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SQLSitTributariaSTB_DESCRICAO: TStringField
      FieldName = 'STB_DESCRICAO'
      Size = 60
    end
    object SQLSitTributariaSTB_SUBSTITUICAO: TStringField
      FieldName = 'STB_SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
    object SQLSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField
      FieldName = 'STB_SUBSTITUICAO_DENTRO_UF'
      FixedChar = True
      Size = 1
    end
  end
  object CDSSitTributaria: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPSitTributaria'
    BeforeEdit = CDSSitTributariaBeforeEdit
    BeforePost = SITUACAO_TRIBUTARIArePost
    Left = 616
    Top = 516
    object CDSSitTributariaSTB_CODIGO: TIntegerField
      FieldName = 'STB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSitTributariaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CDSSitTributariaSTB_DATA_CADASTRO: TDateField
      FieldName = 'STB_DATA_CADASTRO'
    end
    object CDSSitTributariaSTB_DATA_ATUALIZA: TDateField
      FieldName = 'STB_DATA_ATUALIZA'
    end
    object CDSSitTributariaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CDSSitTributariaSTB_DESCRICAO: TStringField
      FieldName = 'STB_DESCRICAO'
      Size = 60
    end
    object CDSSitTributariaSTB_SUBSTITUICAO: TStringField
      FieldName = 'STB_SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
    object CDSSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField
      FieldName = 'STB_SUBSTITUICAO_DENTRO_UF'
      FixedChar = True
      Size = 1
    end
  end
  object DSPSitTributaria: TDataSetProvider
    DataSet = SQLSitTributaria
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 516
  end
  object DSSitTributaria: TDataSource
    DataSet = CDSSitTributaria
    Left = 728
    Top = 516
  end
  object SqlRegraCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.*  FROM OPE_REGRA T1')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 576
    object SqlRegraCFOPOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlRegraCFOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlRegraCFOPIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlRegraCFOPOPE_CODIGO_ORIGEM: TStringField
      FieldName = 'OPE_CODIGO_ORIGEM'
      Size = 3
    end
    object SqlRegraCFOPOPR_AC: TStringField
      FieldName = 'OPR_AC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AL: TStringField
      FieldName = 'OPR_AL'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AP: TStringField
      FieldName = 'OPR_AP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AM: TStringField
      FieldName = 'OPR_AM'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_BA: TStringField
      FieldName = 'OPR_BA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_CE: TStringField
      FieldName = 'OPR_CE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_DF: TStringField
      FieldName = 'OPR_DF'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_GO: TStringField
      FieldName = 'OPR_GO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_ES: TStringField
      FieldName = 'OPR_ES'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MA: TStringField
      FieldName = 'OPR_MA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MT: TStringField
      FieldName = 'OPR_MT'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MS: TStringField
      FieldName = 'OPR_MS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MG: TStringField
      FieldName = 'OPR_MG'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PA: TStringField
      FieldName = 'OPR_PA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PB: TStringField
      FieldName = 'OPR_PB'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PR: TStringField
      FieldName = 'OPR_PR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PE: TStringField
      FieldName = 'OPR_PE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PI: TStringField
      FieldName = 'OPR_PI'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RJ: TStringField
      FieldName = 'OPR_RJ'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RN: TStringField
      FieldName = 'OPR_RN'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RS: TStringField
      FieldName = 'OPR_RS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RO: TStringField
      FieldName = 'OPR_RO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RR: TStringField
      FieldName = 'OPR_RR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SP: TStringField
      FieldName = 'OPR_SP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SC: TStringField
      FieldName = 'OPR_SC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SE: TStringField
      FieldName = 'OPR_SE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_TO: TStringField
      FieldName = 'OPR_TO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPE_DESTINO: TStringField
      FieldName = 'OPE_DESTINO'
      Size = 3
    end
    object SqlRegraCFOPSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object SqlRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA'
      Precision = 15
      Size = 4
    end
    object SqlRegraCFOPDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SqlRegraCFOPDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SqlRegraCFOPOPR_ATIVO: TStringField
      FieldName = 'OPR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_EX: TStringField
      FieldName = 'OPR_EX'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_ALIQ_ST_UF: TFMTBCDField
      FieldName = 'OPR_ALIQ_ST_UF'
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCDField
      FieldName = 'OPR_REDUCAO_BASE_ST'
      Precision = 20
      Size = 5
    end
  end
  object CDSRegraCFOP: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPRegraCFOP'
    BeforeEdit = CDSSitTributariaBeforeEdit
    BeforePost = SITUACAO_TRIBUTARIArePost
    Left = 616
    Top = 572
    object CDSRegraCFOPOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRegraCFOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CDSRegraCFOPIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CDSRegraCFOPOPE_CODIGO_ORIGEM: TStringField
      FieldName = 'OPE_CODIGO_ORIGEM'
      Size = 3
    end
    object CDSRegraCFOPOPR_AC: TStringField
      FieldName = 'OPR_AC'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AL: TStringField
      FieldName = 'OPR_AL'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AP: TStringField
      FieldName = 'OPR_AP'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AM: TStringField
      FieldName = 'OPR_AM'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_BA: TStringField
      FieldName = 'OPR_BA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_CE: TStringField
      FieldName = 'OPR_CE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_DF: TStringField
      FieldName = 'OPR_DF'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_GO: TStringField
      FieldName = 'OPR_GO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_ES: TStringField
      FieldName = 'OPR_ES'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MA: TStringField
      FieldName = 'OPR_MA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MT: TStringField
      FieldName = 'OPR_MT'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MS: TStringField
      FieldName = 'OPR_MS'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MG: TStringField
      FieldName = 'OPR_MG'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PA: TStringField
      FieldName = 'OPR_PA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PB: TStringField
      FieldName = 'OPR_PB'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PR: TStringField
      FieldName = 'OPR_PR'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PE: TStringField
      FieldName = 'OPR_PE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PI: TStringField
      FieldName = 'OPR_PI'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RJ: TStringField
      FieldName = 'OPR_RJ'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RN: TStringField
      FieldName = 'OPR_RN'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RS: TStringField
      FieldName = 'OPR_RS'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RO: TStringField
      FieldName = 'OPR_RO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RR: TStringField
      FieldName = 'OPR_RR'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SP: TStringField
      FieldName = 'OPR_SP'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SC: TStringField
      FieldName = 'OPR_SC'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SE: TStringField
      FieldName = 'OPR_SE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_TO: TStringField
      FieldName = 'OPR_TO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPE_DESTINO: TStringField
      FieldName = 'OPE_DESTINO'
      Size = 3
    end
    object CDSRegraCFOPSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CDSRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA'
      DisplayFormat = '##0.00 %'
      currency = True
      Precision = 15
      Size = 4
    end
    object CDSRegraCFOPDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDSRegraCFOPDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object CDSRegraCFOPOPR_ATIVO: TStringField
      FieldName = 'OPR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_EX: TStringField
      FieldName = 'OPR_EX'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
      DisplayFormat = '##0.00 %'
      currency = True
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_ALIQ_ST_UF: TFMTBCDField
      FieldName = 'OPR_ALIQ_ST_UF'
      DisplayFormat = '##0.00 %'
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCDField
      FieldName = 'OPR_REDUCAO_BASE_ST'
      Precision = 20
      Size = 5
    end
  end
  object DSPRegraCFOP: TDataSetProvider
    DataSet = SqlRegraCFOP
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 572
  end
  object DSRegraCFOP: TDataSource
    DataSet = CDSRegraCFOP
    Left = 728
    Top = 572
  end
  object SQLMarkup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MKP0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 584
    object SQLMarkupMKP_CODIGO: TStringField
      FieldName = 'MKP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SQLMarkupMKP_PERC1: TFMTBCDField
      FieldName = 'MKP_PERC1'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_PERC2: TFMTBCDField
      FieldName = 'MKP_PERC2'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_PERC3: TFMTBCDField
      FieldName = 'MKP_PERC3'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_PERC4: TFMTBCDField
      FieldName = 'MKP_PERC4'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_PERC5: TFMTBCDField
      FieldName = 'MKP_PERC5'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_PERC6: TFMTBCDField
      FieldName = 'MKP_PERC6'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS1: TFMTBCDField
      FieldName = 'MKP_COMIS1'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS2: TFMTBCDField
      FieldName = 'MKP_COMIS2'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS3: TFMTBCDField
      FieldName = 'MKP_COMIS3'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS4: TFMTBCDField
      FieldName = 'MKP_COMIS4'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS5: TFMTBCDField
      FieldName = 'MKP_COMIS5'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_COMIS6: TFMTBCDField
      FieldName = 'MKP_COMIS6'
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object SQLMarkupMKP_TIPOCALCULO: TStringField
      FieldName = 'MKP_TIPOCALCULO'
      Size = 1
    end
    object SQLMarkupEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLMarkupLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object SQLMarkupMKP_AC_DC: TStringField
      FieldName = 'MKP_AC_DC'
      Size = 1
    end
  end
  object DspMarkup: TDataSetProvider
    DataSet = SQLMarkup
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 584
  end
  object CdsMarkup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMarkup'
    BeforeEdit = CdsMarkupBeforeEdit
    BeforePost = CdsMarkupBeforePost
    Left = 200
    Top = 584
    object CdsMarkupMKP_CODIGO: TStringField
      FieldName = 'MKP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsMarkupMKP_PERC1: TFMTBCDField
      FieldName = 'MKP_PERC1'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_PERC2: TFMTBCDField
      FieldName = 'MKP_PERC2'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_PERC3: TFMTBCDField
      FieldName = 'MKP_PERC3'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_PERC4: TFMTBCDField
      FieldName = 'MKP_PERC4'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_PERC5: TFMTBCDField
      FieldName = 'MKP_PERC5'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_PERC6: TFMTBCDField
      FieldName = 'MKP_PERC6'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS1: TFMTBCDField
      FieldName = 'MKP_COMIS1'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS2: TFMTBCDField
      FieldName = 'MKP_COMIS2'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS3: TFMTBCDField
      FieldName = 'MKP_COMIS3'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS4: TFMTBCDField
      FieldName = 'MKP_COMIS4'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS5: TFMTBCDField
      FieldName = 'MKP_COMIS5'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_COMIS6: TFMTBCDField
      FieldName = 'MKP_COMIS6'
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object CdsMarkupMKP_TIPOCALCULO: TStringField
      FieldName = 'MKP_TIPOCALCULO'
      Size = 1
    end
    object CdsMarkupEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsMarkupLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object CdsMarkupMKP_AC_DC: TStringField
      FieldName = 'MKP_AC_DC'
      Size = 1
    end
  end
  object DsMarkup: TDataSource
    DataSet = CdsMarkup
    Left = 273
    Top = 580
  end
  object SQLPerfilRateio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.*  FROM PCX0000_PERFIL T1')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 632
    object SQLPerfilRateioPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLPerfilRateioEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLPerfilRateioPCXPF_DATA_INICIAL: TDateField
      FieldName = 'PCXPF_DATA_INICIAL'
    end
    object SQLPerfilRateioPCXPF_DATA_FINAL: TDateField
      FieldName = 'PCXPF_DATA_FINAL'
    end
  end
  object CdsPerfilRateio: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPPerfilRateio'
    BeforeEdit = CdsPerfilRateioBeforeEdit
    BeforePost = CdsPerfilRateioBeforePost
    Left = 616
    Top = 628
    object CdsPerfilRateioPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPerfilRateioEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPerfilRateioPCXPF_DATA_INICIAL: TDateField
      FieldName = 'PCXPF_DATA_INICIAL'
    end
    object CdsPerfilRateioPCXPF_DATA_FINAL: TDateField
      FieldName = 'PCXPF_DATA_FINAL'
    end
  end
  object DSPPerfilRateio: TDataSetProvider
    DataSet = SQLPerfilRateio
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 628
  end
  object dsPerfilRateio: TDataSource
    DataSet = CdsPerfilRateio
    Left = 728
    Top = 628
  end
  object SQLChequeStatus: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CHEQUE_STATUS')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 28
    Top = 632
    object SQLChequeStatusCHS_REGISTRO: TIntegerField
      FieldName = 'CHS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLChequeStatusEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLChequeStatusCHS_DESCRICAO: TStringField
      FieldName = 'CHS_DESCRICAO'
      Size = 50
    end
    object SQLChequeStatusCHS_COR: TStringField
      FieldName = 'CHS_COR'
    end
  end
  object DSPChequeStatus: TDataSetProvider
    DataSet = SQLChequeStatus
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 632
  end
  object CdsChequeStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPChequeStatus'
    BeforeEdit = CdsChequeStatusBeforeEdit
    Left = 200
    Top = 632
    object CdsChequeStatusCHS_REGISTRO: TIntegerField
      FieldName = 'CHS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsChequeStatusEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsChequeStatusCHS_DESCRICAO: TStringField
      FieldName = 'CHS_DESCRICAO'
      Size = 50
    end
    object CdsChequeStatusCHS_COR: TStringField
      FieldName = 'CHS_COR'
    end
  end
  object dsChequeStatus: TDataSource
    DataSet = CdsChequeStatus
    Left = 273
    Top = 628
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 801
    Top = 21
  end
  object dsEmpUsu: TDataSource
    DataSet = cdsEmpUsu
    Left = 728
    Top = 692
  end
  object cdsEmpUsu: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspEmpUsu'
    BeforeEdit = CdsPerfilRateioBeforeEdit
    BeforePost = CdsPerfilRateioBeforePost
    Left = 616
    Top = 692
    object cdsEmpUsuEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object cdsEmpUsuusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspEmpUsu: TDataSetProvider
    DataSet = qEmpUsu
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 692
  end
  object qEmpUsu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from usuario_empresa')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 696
    object qEmpUsuEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object qEmpUsuusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsTipoPedido: TDataSource
    DataSet = cdsTipoPedido
    Left = 280
    Top = 720
  end
  object dspTipoPedido: TDataSetProvider
    DataSet = qTipoPedido
    Left = 112
    Top = 712
  end
  object cdsTipoPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPedido'
    Left = 192
    Top = 712
    object cdsTipoPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTipoPedidoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
  end
  object qTipoPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT OPV_CODIGO,OPV_DESCRICAO FROM OPV0000'
      'WHERE OPV_PEDIDOINTERNO = '#39'N'#39' OR OPV_PEDIDOINTERNO IS NULL')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 704
    object qTipoPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTipoPedidoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
  end
  object qAlmoxUsu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM USUARIO_ALMOXARIFADO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 392
    Top = 752
    object qAlmoxUsuUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object qAlmoxUsuAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object dspAlmoxUsu: TDataSetProvider
    DataSet = qAlmoxUsu
    Left = 512
    Top = 752
  end
  object cdsAlmoxUsu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAlmoxUsu'
    Left = 616
    Top = 752
    object cdsAlmoxUsuUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object cdsAlmoxUsuAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object dsAmoxUsu: TDataSource
    DataSet = cdsAlmoxUsu
    Left = 728
    Top = 752
  end
end
