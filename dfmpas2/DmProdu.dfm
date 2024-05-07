object DmProducao: TDmProducao
  OldCreateOrder = False
  Height = 665
  Width = 984
  object SqlCelula: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEL0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 1
    object SqlCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCelulaCEL_RAZAO: TStringField
      FieldName = 'CEL_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlCelulaCEL_ENDE: TStringField
      FieldName = 'CEL_ENDE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlCelulaCEL_BAIRRO: TStringField
      FieldName = 'CEL_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCelulaCEL_CIDADE: TStringField
      FieldName = 'CEL_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlCelulaCEL_CNPJ: TStringField
      FieldName = 'CEL_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqlCelulaCEL_INSC: TStringField
      FieldName = 'CEL_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqlCelulaCEL_FONE1: TStringField
      FieldName = 'CEL_FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCelulaCEL_CELULAR: TStringField
      FieldName = 'CEL_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCelulaCEL_FAX: TStringField
      FieldName = 'CEL_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCelulaCEL_OBS: TStringField
      FieldName = 'CEL_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlCelulaCEL_CEP: TStringField
      FieldName = 'CEL_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object SqlCelulaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspCelula: TDataSetProvider
    DataSet = SqlCelula
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 1
  end
  object CdsCelula: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCelula'
    BeforeEdit = CdsCelulaBeforeEdit
    BeforePost = CdsCelulaBeforePost
    Left = 630
    Top = 1
    object CdsCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsCelulaCEL_RAZAO: TStringField
      FieldName = 'CEL_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsCelulaCEL_ENDE: TStringField
      FieldName = 'CEL_ENDE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsCelulaCEL_BAIRRO: TStringField
      FieldName = 'CEL_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCelulaCEL_CIDADE: TStringField
      FieldName = 'CEL_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsCelulaCEL_CNPJ: TStringField
      FieldName = 'CEL_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsCelulaCEL_INSC: TStringField
      FieldName = 'CEL_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsCelulaCEL_FONE1: TStringField
      FieldName = 'CEL_FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsCelulaCEL_CELULAR: TStringField
      FieldName = 'CEL_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsCelulaCEL_FAX: TStringField
      FieldName = 'CEL_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsCelulaCEL_OBS: TStringField
      FieldName = 'CEL_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsCelulaCEL_CEP: TStringField
      FieldName = 'CEL_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsCelulaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsCelula: TDataSource
    DataSet = CdsCelula
    Left = 726
    Top = 1
  end
  object SqlComponentes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEL_CP01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 49
    object SqlComponentesCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlComponentesCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlComponentesCCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqlComponentesCCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlComponentesCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlComponentesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspComponentes: TDataSetProvider
    DataSet = SqlComponentes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 49
  end
  object CdsComponentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspComponentes'
    BeforeEdit = CdsComponentesBeforeEdit
    BeforePost = CdsComponentesBeforePost
    Left = 630
    Top = 49
    object CdsComponentesCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsComponentesCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsComponentesCCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsComponentesCCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsComponentesCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsComponentesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsComponentes: TDataSource
    DataSet = CdsComponentes
    Left = 726
    Top = 49
  end
  object SqlMetas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEL_ME02')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 95
    object SqlMetasCME_REGISTRO: TIntegerField
      FieldName = 'CME_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlMetasCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object SqlMetasCME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlMetasCME_TUPREALIZADO: TFMTBCDField
      FieldName = 'CME_TUPREALIZADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_FATURAMENTO: TFMTBCDField
      FieldName = 'CME_FATURAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasCME_TOT_DIAS_COMP: TFMTBCDField
      FieldName = 'CME_TOT_DIAS_COMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMetasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspMetas: TDataSetProvider
    DataSet = SqlMetas
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 95
  end
  object CdsMetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMetas'
    BeforeEdit = CdsMetasBeforeEdit
    BeforePost = CdsMetasBeforePost
    OnCalcFields = CdsMetasCalcFields
    Left = 630
    Top = 93
    object CdsMetasCME_REGISTRO: TIntegerField
      FieldName = 'CME_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMetasCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsMetasCME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMetasCME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasCME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasCME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMetasCME_TUPREALIZADO: TFMTBCDField
      FieldName = 'CME_TUPREALIZADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasCME_FATURAMENTO: TFMTBCDField
      FieldName = 'CME_FATURAMENTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasCME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#.##%'
      Precision = 15
    end
    object CdsMetasTUP_AREALIZAR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TUP_AREALIZAR_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Calculated = True
    end
    object CdsMetasCME_TOT_DIAS_COMP: TFMTBCDField
      FieldName = 'CME_TOT_DIAS_COMP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object CdsMetasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsMetas: TDataSource
    DataSet = CdsMetas
    Left = 726
    Top = 95
  end
  object SqlCompMeta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEL_MTC04')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 140
    object SqlCompMetaCME_REGISTRO: TIntegerField
      FieldName = 'CME_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCompMetaCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object SqlCompMetaCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCompMetaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCompMetaMEC_TUPDIARIO: TFMTBCDField
      FieldName = 'MEC_TUPDIARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCompMetaMEC_DIAS: TFMTBCDField
      FieldName = 'MEC_DIAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCompMetaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspCompMeta: TDataSetProvider
    DataSet = SqlCompMeta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 140
  end
  object CdsCompMeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCompMeta'
    AfterInsert = CdsCompMetaAfterInsert
    OnCalcFields = CdsCompMetaCalcFields
    Left = 630
    Top = 140
    object CdsCompMetaCME_REGISTRO: TIntegerField
      FieldName = 'CME_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCompMetaCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsCompMetaCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsCompMetaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCompMetaMEC_TUPDIARIO: TFMTBCDField
      FieldName = 'MEC_TUPDIARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsCompMetaMEC_DIAS: TFMTBCDField
      FieldName = 'MEC_DIAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsCompMetaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsCompMeta: TDataSource
    DataSet = CdsCompMeta
    Left = 726
    Top = 140
  end
  object SqlFatorCustos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from VCT0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 1
    object SqlFatorCustosVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlFatorCustosVCT_TMAQ: TFMTBCDField
      FieldName = 'VCT_TMAQ'
      Precision = 15
    end
    object SqlFatorCustosVCT_DF: TFMTBCDField
      FieldName = 'VCT_DF'
      Precision = 15
    end
    object SqlFatorCustosVCT_DV: TFMTBCDField
      FieldName = 'VCT_DV'
      Precision = 15
    end
    object SqlFatorCustosVCT_ICMS: TFMTBCDField
      FieldName = 'VCT_ICMS'
      Precision = 15
    end
    object SqlFatorCustosVCT_FED: TFMTBCDField
      FieldName = 'VCT_FED'
      Precision = 15
    end
    object SqlFatorCustosVCT_DPG: TFMTBCDField
      FieldName = 'VCT_DPG'
      Precision = 15
    end
    object SqlFatorCustosVCT_LV: TFMTBCDField
      FieldName = 'VCT_LV'
      Precision = 15
    end
    object SqlFatorCustosVCT_FIN: TFMTBCDField
      FieldName = 'VCT_FIN'
      Precision = 15
    end
    object SqlFatorCustosVCT_COMRP: TFMTBCDField
      FieldName = 'VCT_COMRP'
      Precision = 15
    end
    object SqlFatorCustosVCT_COMSP: TFMTBCDField
      FieldName = 'VCT_COMSP'
      Precision = 15
    end
    object SqlFatorCustosVCT_COMGE: TFMTBCDField
      FieldName = 'VCT_COMGE'
      Precision = 15
    end
    object SqlFatorCustosVCT_DESC: TFMTBCDField
      FieldName = 'VCT_DESC'
      Precision = 15
    end
    object SqlFatorCustosVCT_CLASSE: TStringField
      FieldName = 'VCT_CLASSE'
      Size = 1
    end
    object SqlFatorCustosVCT_FIXO: TFMTBCDField
      FieldName = 'VCT_FIXO'
      Precision = 15
    end
    object SqlFatorCustosVCT_COMPLE: TFMTBCDField
      FieldName = 'VCT_COMPLE'
      Precision = 15
    end
    object SqlFatorCustosVCT_INDIRETA: TFMTBCDField
      FieldName = 'VCT_INDIRETA'
      Precision = 15
    end
    object SqlFatorCustosVCT_LUCROUNID: TFMTBCDField
      FieldName = 'VCT_LUCROUNID'
      Precision = 15
    end
    object SqlFatorCustosVCT_PERDA: TFMTBCDField
      FieldName = 'VCT_PERDA'
      Precision = 15
    end
    object SqlFatorCustosVCT_VISTA: TFMTBCDField
      FieldName = 'VCT_VISTA'
      Precision = 15
    end
    object SqlFatorCustosVCT_30D: TFMTBCDField
      FieldName = 'VCT_30D'
      Precision = 15
    end
    object SqlFatorCustosVCT_45D: TFMTBCDField
      FieldName = 'VCT_45D'
      Precision = 15
    end
    object SqlFatorCustosVCT_60D: TFMTBCDField
      FieldName = 'VCT_60D'
      Precision = 15
    end
    object SqlFatorCustosVCT_75D: TFMTBCDField
      FieldName = 'VCT_75D'
      Precision = 15
    end
    object SqlFatorCustosVCT_90D: TFMTBCDField
      FieldName = 'VCT_90D'
      Precision = 15
    end
    object SqlFatorCustosVCT_TXTCOND1: TStringField
      FieldName = 'VCT_TXTCOND1'
      Size = 7
    end
    object SqlFatorCustosVCT_TXTCOND2: TStringField
      FieldName = 'VCT_TXTCOND2'
      Size = 7
    end
    object SqlFatorCustosVCT_TXTCOND3: TStringField
      FieldName = 'VCT_TXTCOND3'
      Size = 7
    end
    object SqlFatorCustosVCT_TXTCOND4: TStringField
      FieldName = 'VCT_TXTCOND4'
      Size = 7
    end
    object SqlFatorCustosVCT_TXTCOND5: TStringField
      FieldName = 'VCT_TXTCOND5'
      Size = 7
    end
    object SqlFatorCustosVCT_TXTCOND6: TStringField
      FieldName = 'VCT_TXTCOND6'
      Size = 7
    end
    object SqlFatorCustosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DspFatorCustos: TDataSetProvider
    DataSet = SqlFatorCustos
    Options = [poAllowCommandText]
    Left = 120
    Top = 1
  end
  object CdsFatorCustos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFatorCustos'
    BeforeEdit = CdsFatorCustosBeforeEdit
    Left = 208
    Top = 1
    object CdsFatorCustosVCT_CLASSE: TStringField
      FieldName = 'VCT_CLASSE'
      Size = 1
    end
    object CdsFatorCustosVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_TMAQ: TFMTBCDField
      FieldName = 'VCT_TMAQ'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_DF: TFMTBCDField
      FieldName = 'VCT_DF'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_DV: TFMTBCDField
      FieldName = 'VCT_DV'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_ICMS: TFMTBCDField
      FieldName = 'VCT_ICMS'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_FED: TFMTBCDField
      FieldName = 'VCT_FED'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_DPG: TFMTBCDField
      FieldName = 'VCT_DPG'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_LV: TFMTBCDField
      FieldName = 'VCT_LV'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_FIN: TFMTBCDField
      FieldName = 'VCT_FIN'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_COMRP: TFMTBCDField
      FieldName = 'VCT_COMRP'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_COMSP: TFMTBCDField
      FieldName = 'VCT_COMSP'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_COMGE: TFMTBCDField
      FieldName = 'VCT_COMGE'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_DESC: TFMTBCDField
      FieldName = 'VCT_DESC'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_FIXO: TFMTBCDField
      FieldName = 'VCT_FIXO'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_COMPLE: TFMTBCDField
      FieldName = 'VCT_COMPLE'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_INDIRETA: TFMTBCDField
      FieldName = 'VCT_INDIRETA'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_LUCROUNID: TFMTBCDField
      FieldName = 'VCT_LUCROUNID'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_PERDA: TFMTBCDField
      FieldName = 'VCT_PERDA'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_VISTA: TFMTBCDField
      FieldName = 'VCT_VISTA'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_30D: TFMTBCDField
      FieldName = 'VCT_30D'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_45D: TFMTBCDField
      FieldName = 'VCT_45D'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_60D: TFMTBCDField
      FieldName = 'VCT_60D'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_75D: TFMTBCDField
      FieldName = 'VCT_75D'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_90D: TFMTBCDField
      FieldName = 'VCT_90D'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsFatorCustosVCT_TXTCOND1: TStringField
      FieldName = 'VCT_TXTCOND1'
      Size = 7
    end
    object CdsFatorCustosVCT_TXTCOND2: TStringField
      FieldName = 'VCT_TXTCOND2'
      Size = 7
    end
    object CdsFatorCustosVCT_TXTCOND3: TStringField
      FieldName = 'VCT_TXTCOND3'
      Size = 7
    end
    object CdsFatorCustosVCT_TXTCOND4: TStringField
      FieldName = 'VCT_TXTCOND4'
      Size = 7
    end
    object CdsFatorCustosVCT_TXTCOND5: TStringField
      FieldName = 'VCT_TXTCOND5'
      Size = 7
    end
    object CdsFatorCustosVCT_TXTCOND6: TStringField
      FieldName = 'VCT_TXTCOND6'
      Size = 7
    end
    object CdsFatorCustosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsFatorCustos: TDataSource
    DataSet = CdsFatorCustos
    Left = 304
    Top = 1
  end
  object DspMovCel: TDataSetProvider
    DataSet = SqlMovCel
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 324
  end
  object CdsMovCel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMovCel'
    BeforeEdit = CdsMovCelBeforeEdit
    BeforePost = CdsMovCelBeforePost
    Left = 632
    Top = 324
    object CdsMovCelCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMovCelCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMovCelOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovCelOSV_QTDECONC: TFMTBCDField
      FieldName = 'OSV_QTDECONC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 15
    end
    object CdsMovCelOSV_QTDEDEFE: TFMTBCDField
      FieldName = 'OSV_QTDEDEFE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 15
    end
    object CdsMovCelOSV_VALORPECA: TFMTBCDField
      FieldName = 'OSV_VALORPECA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsMovCelOSV_VALORDEFE: TFMTBCDField
      FieldName = 'OSV_VALORDEFE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsMovCelPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsMovCelCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsMovCelCEM_PRECOUNIT: TFMTBCDField
      FieldName = 'CEM_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovCelCEM_TUPUNIT: TFMTBCDField
      FieldName = 'CEM_TUPUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovCelCEM_CELAUX: TStringField
      FieldName = 'CEM_CELAUX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsMovCelCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsMovCelCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovCelVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovCelCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsMovCelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMovCelOSV_EMISSAO: TDateField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMovCelCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMovCelCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMovCelCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = []
      Size = 35
    end
    object CdsMovCelOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object CdsMovCelPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsMovCel: TDataSource
    DataSet = CdsMovCel
    Left = 726
    Top = 324
  end
  object SqlMovCel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select C3.*,C1.CEL_NOME from CEL_MOV03 C3 LEFT JOIN CEL0000 C1 O' +
        'N (C1.CEL_CODIGO = C3.CEL_CODIGO)')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 324
    object SqlMovCelCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlMovCelCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlMovCelOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelOSV_QTDECONC: TFMTBCDField
      FieldName = 'OSV_QTDECONC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelOSV_QTDEDEFE: TFMTBCDField
      FieldName = 'OSV_QTDEDEFE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelOSV_VALORPECA: TFMTBCDField
      FieldName = 'OSV_VALORPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelOSV_VALORDEFE: TFMTBCDField
      FieldName = 'OSV_VALORDEFE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlMovCelCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object SqlMovCelCEM_PRECOUNIT: TFMTBCDField
      FieldName = 'CEM_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelCEM_TUPUNIT: TFMTBCDField
      FieldName = 'CEM_TUPUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelCEM_CELAUX: TStringField
      FieldName = 'CEM_CELAUX'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlMovCelCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlMovCelCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMovCelCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlMovCelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlMovCelOSV_EMISSAO: TDateField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlMovCelCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
      ProviderFlags = [pfInUpdate]
    end
    object SqlMovCelCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
      ProviderFlags = [pfInUpdate]
    end
    object SqlMovCelCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = []
      Size = 35
    end
    object SqlMovCelOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object SqlMovCelPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object SqlCdsAlmox: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ALMOX0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 185
    object SqlCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object SqlCdsAlmoxAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object SqlCdsAlmoxAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object SqlCdsAlmoxAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
    object SqlCdsAlmoxAMX_ATIVO: TStringField
      FieldName = 'AMX_ATIVO'
      Size = 1
    end
    object SqlCdsAlmoxAMX_CNPJ_PART: TStringField
      FieldName = 'AMX_CNPJ_PART'
      Size = 14
    end
    object SqlCdsAlmoxEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlCdsAlmoxEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object SqlCdsAlmoxAMX_NUM_ATO_DECLARATORIO: TStringField
      FieldName = 'AMX_NUM_ATO_DECLARATORIO'
    end
    object SqlCdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO: TDateField
      FieldName = 'AMX_VALIDADE_ATO_DECLARATORIO'
    end
  end
  object DspAlmox: TDataSetProvider
    DataSet = SqlCdsAlmox
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 185
  end
  object CdsAlmox: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAlmox'
    BeforeOpen = CdsAlmoxBeforeOpen
    BeforeEdit = CdsAlmoxBeforeEdit
    BeforePost = CdsAlmoxBeforePost
    Left = 208
    Top = 185
    object CdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object CdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object CdsAlmoxAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object CdsAlmoxAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object CdsAlmoxAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object CdsAlmoxAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object CdsAlmoxAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
    object CdsAlmoxAMX_ATIVO: TStringField
      FieldName = 'AMX_ATIVO'
      Size = 1
    end
    object CdsAlmoxAMX_CNPJ_PART: TStringField
      FieldName = 'AMX_CNPJ_PART'
      Size = 14
    end
    object CdsAlmoxEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object CdsAlmoxEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object CdsAlmoxAMX_NUM_ATO_DECLARATORIO: TStringField
      FieldName = 'AMX_NUM_ATO_DECLARATORIO'
    end
    object CdsAlmoxAMX_VALIDADE_ATO_DECLARATORIO: TDateField
      FieldName = 'AMX_VALIDADE_ATO_DECLARATORIO'
    end
  end
  object DsAlmox: TDataSource
    DataSet = CdsAlmox
    Left = 304
    Top = 185
  end
  object SqlPcp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PCP_SECAO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 184
    object SqlPcpSEC_CODIGO: TStringField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlPcpSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlPcpSEC_QTDE: TSmallintField
      FieldName = 'SEC_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPcpSEC_CUSTO_UNIT: TFMTBCDField
      FieldName = 'SEC_CUSTO_UNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPcpSEC_TMP_CUSTO: TStringField
      FieldName = 'SEC_TMP_CUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPcpEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspPcp: TDataSetProvider
    DataSet = SqlPcp
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 184
  end
  object CdsPcp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPcp'
    BeforeEdit = CdsPcpBeforeEdit
    BeforePost = CdsPcpBeforePost
    Left = 630
    Top = 184
    object CdsPcpSEC_CODIGO: TStringField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsPcpSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPcpSEC_QTDE: TSmallintField
      FieldName = 'SEC_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPcpSEC_CUSTO_UNIT: TFMTBCDField
      FieldName = 'SEC_CUSTO_UNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPcpSEC_TMP_CUSTO: TStringField
      FieldName = 'SEC_TMP_CUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPcpEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsPcp: TDataSource
    DataSet = CdsPcp
    Left = 726
    Top = 184
  end
  object SqlCdsMes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from Mes0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 46
    object SqlCdsMesMES_NUMERO: TStringField
      FieldName = 'MES_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsMesMES_DESCRI: TStringField
      FieldName = 'MES_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object SqlCdsMesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspMes: TDataSetProvider
    DataSet = SqlCdsMes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 46
  end
  object CdsMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMes'
    BeforeEdit = CdsFatorCustosBeforeEdit
    BeforePost = CdsAlmoxBeforePost
    Left = 208
    Top = 46
    object CdsMesMES_NUMERO: TStringField
      FieldName = 'MES_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsMesMES_DESCRI: TStringField
      FieldName = 'MES_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object CdsMesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsMes: TDataSource
    DataSet = CdsMes
    Left = 304
    Top = 46
  end
  object SqlCdsFichaTec: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'F1.*,'
      'P1.PRD_DESCRI,'
      'P1.PRD_DCVAR1,'
      'P1.PRD_DCVAR2,'
      'P1.PRD_DCVAR3,'
      'P1.PRD_DCVAR4,'
      'P1.PRD_DCVAR5,'
      'P1.PRD_DCVAR6,'
      'P1.PRD_DCVAR7,'
      'P1.PRD_DCVAR8,'
      'T1.PTI_SIGLA'
      'FROM FTC0000 F1'
      'LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER)'
      'LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO)')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 94
    object SqlCdsFichaTecFTC_REGISTRO: TSmallintField
      FieldName = 'FTC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCdsFichaTecFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsFichaTecFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsFichaTecFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsFichaTecFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsFichaTecFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsFichaTecFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsFichaTecPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 50
    end
    object SqlCdsFichaTecPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsFichaTecPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsFichaTecFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 100
    end
    object SqlCdsFichaTecFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 100
    end
    object SqlCdsFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsFichaTecFTC_BASEFORMULA: TIntegerField
      FieldName = 'FTC_BASEFORMULA'
    end
    object SqlCdsFichaTecFTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      Size = 1
    end
    object SqlCdsFichaTecAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object DspFichaTec: TDataSetProvider
    DataSet = SqlCdsFichaTec
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 94
  end
  object DsFichaTec: TDataSource
    AutoEdit = False
    DataSet = CdsFichaTec
    Left = 304
    Top = 94
  end
  object SqlCdsAlmoxItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ALMOX_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 233
    object SqlCdsAlmoxItemAMX_REGISTRO: TIntegerField
      FieldName = 'AMX_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsAlmoxItemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxItemAMX_ESTOQUE: TFMTBCDField
      FieldName = 'AMX_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsAlmoxItemAMX_ENTRADA: TFMTBCDField
      FieldName = 'AMX_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsAlmoxItemAMX_SAIDA: TFMTBCDField
      FieldName = 'AMX_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsAlmoxItemAMX_PENDENTE: TFMTBCDField
      FieldName = 'AMX_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsAlmoxItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsAlmoxItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspAlmoxItem: TDataSetProvider
    DataSet = SqlCdsAlmoxItem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 233
  end
  object CdsAlmoxItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAlmoxItem'
    AfterInsert = CdsAlmoxItemAfterInsert
    Left = 208
    Top = 233
    object CdsAlmoxItemAMX_REGISTRO: TIntegerField
      FieldName = 'AMX_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAlmoxItemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsAlmoxItemAMX_ESTOQUE: TFMTBCDField
      FieldName = 'AMX_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsAlmoxItemAMX_ENTRADA: TFMTBCDField
      FieldName = 'AMX_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsAlmoxItemAMX_SAIDA: TFMTBCDField
      FieldName = 'AMX_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsAlmoxItemAMX_PENDENTE: TFMTBCDField
      FieldName = 'AMX_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsAlmoxItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsAlmoxItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsAlmoxItem: TDataSource
    DataSet = CdsAlmoxItem
    Left = 304
    Top = 233
  end
  object SqlPrevConsumo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PSV0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 278
    object SqlPrevConsumoPSV_REGISTRO: TIntegerField
      FieldName = 'PSV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPrevConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlPrevConsumoPSV_QUANT1: TFMTBCDField
      FieldName = 'PSV_QUANT1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT2: TFMTBCDField
      FieldName = 'PSV_QUANT2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT3: TFMTBCDField
      FieldName = 'PSV_QUANT3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT4: TFMTBCDField
      FieldName = 'PSV_QUANT4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT5: TFMTBCDField
      FieldName = 'PSV_QUANT5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT6: TFMTBCDField
      FieldName = 'PSV_QUANT6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT7: TFMTBCDField
      FieldName = 'PSV_QUANT7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_QUANT8: TFMTBCDField
      FieldName = 'PSV_QUANT8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_MODE1: TStringField
      FieldName = 'PSV_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE2: TStringField
      FieldName = 'PSV_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE3: TStringField
      FieldName = 'PSV_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE4: TStringField
      FieldName = 'PSV_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE5: TStringField
      FieldName = 'PSV_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE6: TStringField
      FieldName = 'PSV_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE7: TStringField
      FieldName = 'PSV_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_MODE8: TStringField
      FieldName = 'PSV_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPrevConsumoPSV_QUALMOD: TStringField
      FieldName = 'PSV_QUALMOD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlPrevConsumoPSV_FLAG: TStringField
      FieldName = 'PSV_FLAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevConsumoPSV_CUSTO: TFMTBCDField
      FieldName = 'PSV_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_ESTFISICO: TFMTBCDField
      FieldName = 'PSV_ESTFISICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_ESTANTEC: TFMTBCDField
      FieldName = 'PSV_ESTANTEC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevConsumoPSV_UND: TStringField
      FieldName = 'PSV_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrevConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrevConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrevConsumoPSV_REQ_COMPRA: TStringField
      FieldName = 'PSV_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspPrevConsumo: TDataSetProvider
    DataSet = SqlPrevConsumo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 278
  end
  object CdsPrevConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrevConsumo'
    BeforeEdit = CdsPrevConsumoBeforeEdit
    Left = 208
    Top = 278
    object CdsPrevConsumoPSV_REGISTRO: TIntegerField
      FieldName = 'PSV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPrevConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsPrevConsumoPSV_QUANT1: TFMTBCDField
      FieldName = 'PSV_QUANT1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT2: TFMTBCDField
      FieldName = 'PSV_QUANT2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT3: TFMTBCDField
      FieldName = 'PSV_QUANT3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT4: TFMTBCDField
      FieldName = 'PSV_QUANT4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT5: TFMTBCDField
      FieldName = 'PSV_QUANT5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT6: TFMTBCDField
      FieldName = 'PSV_QUANT6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT7: TFMTBCDField
      FieldName = 'PSV_QUANT7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_QUANT8: TFMTBCDField
      FieldName = 'PSV_QUANT8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_MODE1: TStringField
      FieldName = 'PSV_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE2: TStringField
      FieldName = 'PSV_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE3: TStringField
      FieldName = 'PSV_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE4: TStringField
      FieldName = 'PSV_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE5: TStringField
      FieldName = 'PSV_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE6: TStringField
      FieldName = 'PSV_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE7: TStringField
      FieldName = 'PSV_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_MODE8: TStringField
      FieldName = 'PSV_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPrevConsumoPSV_QUALMOD: TStringField
      FieldName = 'PSV_QUALMOD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsPrevConsumoPSV_FLAG: TStringField
      FieldName = 'PSV_FLAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevConsumoPSV_CUSTO: TFMTBCDField
      FieldName = 'PSV_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_ESTFISICO: TFMTBCDField
      FieldName = 'PSV_ESTFISICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_ESTANTEC: TFMTBCDField
      FieldName = 'PSV_ESTANTEC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevConsumoPSV_UND: TStringField
      FieldName = 'PSV_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrevConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrevConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrevConsumoPSV_REQ_COMPRA: TStringField
      FieldName = 'PSV_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsPrevConsumo: TDataSource
    DataSet = CdsPrevConsumo
    Left = 304
    Top = 278
  end
  object SqlPrevItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PSV_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 321
    object SqlPrevItensPSI_REGISTRO: TIntegerField
      FieldName = 'PSI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlPrevItensPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_CONSUMO: TFMTBCDField
      FieldName = 'PSI_CONSUMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object SqlPrevItensPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_STATUS: TStringField
      FieldName = 'PSI_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlPrevItensPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlPrevItensPSI_CONSUMO_SEMI: TFMTBCDField
      FieldName = 'PSI_CONSUMO_SEMI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrevItensPSI_UND: TStringField
      FieldName = 'PSI_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrevItensPSI_PAI: TStringField
      FieldName = 'PSI_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevItensPSI_SIGLA: TStringField
      FieldName = 'PSI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrevItensPSI_REQ_COMPRA: TStringField
      FieldName = 'PSI_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrevItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspPrevItens: TDataSetProvider
    DataSet = SqlPrevItens
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 321
  end
  object CdsPrevItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrevItens'
    BeforePost = CdsPrevItensBeforePost
    Left = 208
    Top = 321
    object CdsPrevItensPSI_REGISTRO: TIntegerField
      FieldName = 'PSI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPrevItensPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_CONSUMO: TFMTBCDField
      FieldName = 'PSI_CONSUMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsPrevItensPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_STATUS: TStringField
      FieldName = 'PSI_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPrevItensPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsPrevItensPSI_CONSUMO_SEMI: TFMTBCDField
      FieldName = 'PSI_CONSUMO_SEMI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrevItensPSI_UND: TStringField
      FieldName = 'PSI_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrevItensPSI_PAI: TStringField
      FieldName = 'PSI_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevItensPSI_SIGLA: TStringField
      FieldName = 'PSI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrevItensPSI_REQ_COMPRA: TStringField
      FieldName = 'PSI_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrevItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsPrevItens: TDataSource
    DataSet = CdsPrevItens
    Left = 304
    Top = 321
  end
  object SqlCdsItemFicha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from FTC_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 142
    object SqlCdsItemFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsItemFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItemFichaFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItemFichaFTI_UCMODIFIC: TFloatField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItemFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlCdsItemFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlCdsItemFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsItemFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsItemFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItemFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItemFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCdsItemFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsItemFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsItemFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
    object SqlCdsItemFichaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
  end
  object DspItemFicha: TDataSetProvider
    DataSet = SqlCdsItemFicha
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 142
  end
  object CdsItemFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspItemFicha'
    BeforePost = CdsItemFichaBeforePost
    Left = 208
    Top = 142
    object CdsItemFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemFichaFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemFichaFTI_UCMODIFIC: TFloatField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsItemFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsItemFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsItemFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsItemFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
    object CdsItemFichaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
  end
  object DsItemFicha: TDataSource
    DataSet = CdsItemFicha
    Left = 304
    Top = 142
  end
  object SqlOsv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from OSV0001')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 456
    Top = 230
    object SqlOsvOSV_REGISTRO: TIntegerField
      FieldName = 'OSV_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object SqlOsvCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOsvFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlOsvOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOsvOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object SqlOsvOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlOsvOSV_MOTIVOESTORNO: TStringField
      FieldName = 'OSV_MOTIVOESTORNO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlOsvOSV_VALIDADE: TSQLTimeStampField
      FieldName = 'OSV_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvOSV_OBS1: TStringField
      FieldName = 'OSV_OBS1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS2: TStringField
      FieldName = 'OSV_OBS2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS3: TStringField
      FieldName = 'OSV_OBS3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS4: TStringField
      FieldName = 'OSV_OBS4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS5: TStringField
      FieldName = 'OSV_OBS5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS6: TStringField
      FieldName = 'OSV_OBS6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_OBS7: TStringField
      FieldName = 'OSV_OBS7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlOsvOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlOsvOSV_ORIGEM_PAI: TStringField
      FieldName = 'OSV_ORIGEM_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlOsvOSV_ORIGEM_ARVORE: TStringField
      FieldName = 'OSV_ORIGEM_ARVORE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlOsvOSV_STATUS_SITUACAO: TStringField
      FieldName = 'OSV_STATUS_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvOSV_QTDE_SOLICITADA: TFMTBCDField
      FieldName = 'OSV_QTDE_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvOSV_ESTOQUE: TFMTBCDField
      FieldName = 'OSV_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvOSV_PAI: TStringField
      FieldName = 'OSV_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvOSV_VARIACAO: TStringField
      FieldName = 'OSV_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlOsvOSV_CODIGO_PAI: TStringField
      FieldName = 'OSV_CODIGO_PAI'
      Size = 8
    end
    object SqlOsvOSV_LOTE: TStringField
      FieldName = 'OSV_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SqlOsvPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspOsv: TDataSetProvider
    DataSet = SqlOsv
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 230
  end
  object CdsOsv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOsv'
    BeforeEdit = CdsOsvBeforeEdit
    Left = 630
    Top = 230
    object CdsOsvOSV_REGISTRO: TIntegerField
      FieldName = 'OSV_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CdsOsvCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOsvFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsOsvOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOsvOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsOsvOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsOsvOSV_MOTIVOESTORNO: TStringField
      FieldName = 'OSV_MOTIVOESTORNO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsOsvOSV_VALIDADE: TSQLTimeStampField
      FieldName = 'OSV_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvOSV_OBS1: TStringField
      FieldName = 'OSV_OBS1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS2: TStringField
      FieldName = 'OSV_OBS2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS3: TStringField
      FieldName = 'OSV_OBS3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS4: TStringField
      FieldName = 'OSV_OBS4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS5: TStringField
      FieldName = 'OSV_OBS5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS6: TStringField
      FieldName = 'OSV_OBS6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_OBS7: TStringField
      FieldName = 'OSV_OBS7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsOsvOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsOsvOSV_ORIGEM_PAI: TStringField
      FieldName = 'OSV_ORIGEM_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvOSV_ORIGEM_ARVORE: TStringField
      FieldName = 'OSV_ORIGEM_ARVORE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvOSV_STATUS_SITUACAO: TStringField
      FieldName = 'OSV_STATUS_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvOSV_QTDE_SOLICITADA: TFMTBCDField
      FieldName = 'OSV_QTDE_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvOSV_ESTOQUE: TFMTBCDField
      FieldName = 'OSV_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvOSV_PAI: TStringField
      FieldName = 'OSV_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvOSV_VARIACAO: TStringField
      FieldName = 'OSV_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsOsvOSV_CODIGO_PAI: TStringField
      FieldName = 'OSV_CODIGO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvOSV_LOTE: TStringField
      FieldName = 'OSV_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object CdsOsvPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsOsv: TDataSource
    DataSet = CdsOsv
    Left = 726
    Top = 230
  end
  object SqlOsvIt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from OSV_IT02')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 278
    object SqlOsvItOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlOsvItOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlOsvItOSI_MODIFICADA: TSQLTimeStampField
      FieldName = 'OSI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOsvItEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOsvItOSI_SITUACAO: TStringField
      FieldName = 'OSI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvItOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvItOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvItOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvItOSI_EMP_PENDENTE: TFMTBCDField
      FieldName = 'OSI_EMP_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOsvItOSI_REQ_COMPRA: TStringField
      FieldName = 'OSI_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvItOSI_ORIGEM: TStringField
      FieldName = 'OSI_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvItOSI_CODIGO_ORIGEM: TStringField
      FieldName = 'OSI_CODIGO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlOsvItOSI_CODIGO_ARVORE: TStringField
      FieldName = 'OSI_CODIGO_ARVORE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlOsvItOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOsvItOSI_UC: TFloatField
      FieldName = 'OSI_UC'
    end
    object SqlOsvItOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      Precision = 15
    end
    object SqlOsvItOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      Precision = 15
    end
    object SqlOsvItPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlOsvItPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DspOsvIt: TDataSetProvider
    DataSet = SqlOsvIt
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 278
  end
  object CdsOsvIt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOsvIt'
    BeforeOpen = CdsOsvItBeforeOpen
    OnCalcFields = CdsOsvItCalcFields
    Left = 630
    Top = 278
    object CdsOsvItOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object CdsOsvItOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvItOSI_MODIFICADA: TSQLTimeStampField
      FieldName = 'OSI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOsvItEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOsvItOSI_SITUACAO: TStringField
      FieldName = 'OSI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvItOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvItOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvItOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvItOSI_EMP_PENDENTE: TFMTBCDField
      FieldName = 'OSI_EMP_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOsvItOSI_REQ_COMPRA: TStringField
      FieldName = 'OSI_REQ_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvItOSI_ORIGEM: TStringField
      FieldName = 'OSI_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvItOSI_CODIGO_ORIGEM: TStringField
      FieldName = 'OSI_CODIGO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvItOSI_CODIGO_ARVORE: TStringField
      FieldName = 'OSI_CODIGO_ARVORE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsOsvItOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOsvItQTDE8_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE8_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE7_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE7_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE6_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE6_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE5_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE5_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE4_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE4_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE3_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE3_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE2_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE2_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItQTDE1_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE1_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsOsvItOSI_UC: TFloatField
      FieldName = 'OSI_UC'
    end
    object CdsOsvItOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      Precision = 15
    end
    object CdsOsvItOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      Precision = 15
    end
    object CdsOsvItPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsOsvItPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DsOsvIt: TDataSource
    DataSet = CdsOsvIt
    Left = 726
    Top = 278
  end
  object DspMovProduz: TDataSetProvider
    DataSet = SqlCdsMovProduz
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 372
  end
  object CdsMovProduz: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMovProduz'
    BeforePost = CdsMovProduzBeforePost
    Left = 630
    Top = 372
    object CdsMovProduzCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMovProduzCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMovProduzCEM_QTDE: TFMTBCDField
      FieldName = 'CEM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovProduzCEM_DEFEITO: TFMTBCDField
      FieldName = 'CEM_DEFEITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsMovProduzEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMovProduzCEM_DTPRODUZ: TDateField
      FieldName = 'CEM_DTPRODUZ'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMovProduzOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object DsProduz: TDataSource
    DataSet = CdsMovProduz
    Left = 726
    Top = 372
  end
  object SqlCdsMovProduz: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CEL_MOV04')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 372
    object SqlCdsMovProduzCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsMovProduzCEM_QTDE: TFMTBCDField
      FieldName = 'CEM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsMovProduzCEM_DEFEITO: TFMTBCDField
      FieldName = 'CEM_DEFEITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsMovProduzEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsMovProduzCEM_DTPRODUZ: TDateField
      FieldName = 'CEM_DTPRODUZ'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsMovProduzOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlCdsMovProduzCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CdsFichaTec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFichaTec'
    BeforeEdit = CdsFichaTecBeforeEdit
    Left = 208
    Top = 94
    object CdsFichaTecFTC_REGISTRO: TSmallintField
      FieldName = 'FTC_REGISTRO'
    end
    object CdsFichaTecFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsFichaTecFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsFichaTecFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsFichaTecFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsFichaTecFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsFichaTecFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsFichaTecPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 50
    end
    object CdsFichaTecPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = []
      Size = 12
    end
    object CdsFichaTecPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object CdsFichaTecFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 100
    end
    object CdsFichaTecFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 100
    end
    object CdsFichaTecFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 100
    end
    object CdsFichaTecFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 100
    end
    object CdsFichaTecFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 100
    end
    object CdsFichaTecFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 100
    end
    object CdsFichaTecFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 100
    end
    object CdsFichaTecFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 100
    end
    object CdsFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsFichaTecFTC_BASEFORMULA: TIntegerField
      FieldName = 'FTC_BASEFORMULA'
    end
    object CdsFichaTecFTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      Size = 2000
    end
    object CdsFichaTecAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object SqlCdsPsvGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PSV_GRUPO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 368
    object SqlCdsPsvGrupoPSG_REGISTRO: TIntegerField
      FieldName = 'PSG_REGISTRO'
      Required = True
    end
    object SqlCdsPsvGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsPsvGrupoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlCdsPsvGrupoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  object DspPsvGrupo: TDataSetProvider
    DataSet = SqlCdsPsvGrupo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 368
  end
  object CdsPsvGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPsvGrupo'
    BeforePost = CdsPrevItensBeforePost
    Left = 208
    Top = 368
    object CdsPsvGrupoPSG_REGISTRO: TIntegerField
      FieldName = 'PSG_REGISTRO'
      Required = True
    end
    object CdsPsvGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPsvGrupoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsPsvGrupoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  object DsPsvGrupo: TDataSource
    DataSet = CdsPsvGrupo
    Left = 304
    Top = 368
  end
  object SqlCdsPs2Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PSV_IT02')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 414
    object SqlCdsPs2ItensPS2_REGISTRO: TIntegerField
      FieldName = 'PS2_REGISTRO'
      Required = True
    end
    object SqlCdsPs2ItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsPs2ItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlCdsPs2ItensPS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPs2ItensPS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsPs2ItensCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlCdsPs2ItensPS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SqlCdsPs2ItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspPs2Itens: TDataSetProvider
    DataSet = SqlCdsPs2Itens
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 414
  end
  object CdsPs2Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPs2Itens'
    BeforePost = CdsPrevItensBeforePost
    Left = 208
    Top = 414
    object CdsPs2ItensPS2_REGISTRO: TIntegerField
      FieldName = 'PS2_REGISTRO'
      Required = True
    end
    object CdsPs2ItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPs2ItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsPs2ItensPS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPs2ItensPS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPs2ItensCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsPs2ItensPS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object CdsPs2ItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsPs2Itens: TDataSource
    DataSet = CdsPs2Itens
    Left = 304
    Top = 414
  end
  object DspAponta: TDataSetProvider
    DataSet = SqlAponta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 416
  end
  object CdsAponta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAponta'
    BeforePost = CdsMovProduzBeforePost
    Left = 630
    Top = 416
    object CdsApontaAPM_CODIGO: TIntegerField
      FieldName = 'APM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsApontaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsApontaAPM_QTDE: TFMTBCDField
      FieldName = 'APM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsApontaAPM_DATAAPONT: TDateField
      FieldName = 'APM_DATAAPONT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsApontaAPM_TIPOAPONT: TStringField
      FieldName = 'APM_TIPOAPONT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsApontaAPM_NUMDOC: TStringField
      FieldName = 'APM_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsApontaAPM_ORIGEM: TStringField
      FieldName = 'APM_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsApontaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsApontaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DsAponta: TDataSource
    DataSet = CdsAponta
    Left = 726
    Top = 416
  end
  object SqlAponta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from APONTAMENTOS')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 416
    object SqlApontaAPM_CODIGO: TIntegerField
      FieldName = 'APM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlApontaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlApontaAPM_QTDE: TFMTBCDField
      FieldName = 'APM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlApontaAPM_DATAAPONT: TDateField
      FieldName = 'APM_DATAAPONT'
      ProviderFlags = [pfInUpdate]
    end
    object SqlApontaAPM_TIPOAPONT: TStringField
      FieldName = 'APM_TIPOAPONT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlApontaAPM_NUMDOC: TStringField
      FieldName = 'APM_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlApontaAPM_ORIGEM: TStringField
      FieldName = 'APM_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlApontaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlApontaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DspEmpenho: TDataSetProvider
    DataSet = SQLEmpenho
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 542
    Top = 461
  end
  object CdsEmpenho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmpenho'
    BeforePost = CdsMovProduzBeforePost
    Left = 630
    Top = 461
    object CdsEmpenhoEPM_CODIGO: TIntegerField
      FieldName = 'EPM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEmpenhoOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsEmpenhoEPM_QTDE: TFMTBCDField
      FieldName = 'EPM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEmpenhoEPM_DATAEMPENHO: TDateField
      FieldName = 'EPM_DATAEMPENHO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpenhoEPM_TIPOEMPENHO: TStringField
      FieldName = 'EPM_TIPOEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpenhoEPM_NUMDOC: TStringField
      FieldName = 'EPM_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpenhoEPM_ORIGEM: TStringField
      FieldName = 'EPM_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpenhoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEmpenhoEPM_STATUS: TStringField
      FieldName = 'EPM_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpenhoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DsEmpenho: TDataSource
    DataSet = CdsEmpenho
    Left = 726
    Top = 461
  end
  object SQLEmpenho: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EPM_0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 454
    Top = 461
    object SQLEmpenhoEPM_CODIGO: TIntegerField
      FieldName = 'EPM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLEmpenhoOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SQLEmpenhoEPM_QTDE: TFMTBCDField
      FieldName = 'EPM_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLEmpenhoEPM_DATAEMPENHO: TDateField
      FieldName = 'EPM_DATAEMPENHO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLEmpenhoEPM_TIPOEMPENHO: TStringField
      FieldName = 'EPM_TIPOEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLEmpenhoEPM_NUMDOC: TStringField
      FieldName = 'EPM_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SQLEmpenhoEPM_ORIGEM: TStringField
      FieldName = 'EPM_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SQLEmpenhoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLEmpenhoEPM_STATUS: TStringField
      FieldName = 'EPM_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLEmpenhoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object SqlcdsAlmoxTemp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select  TP.* , PRD_DESCRI, PRD_DCVAR1, PRD_DCVAR2, PRD_DCVAR3, P' +
        'RD_DCVAR4, PRD_DCVAR5, PRD_DCVAR6, PRD_DCVAR7, PRD_DCVAR8 from A' +
        'MX_TEMP TP'
      'left join PRD0000 on  PRD_REFER = AMX_REFER')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 32
    Top = 464
    object SqlcdsAlmoxTempAMX_REGISTRO: TIntegerField
      FieldName = 'AMX_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlcdsAlmoxTempAMX_DATA: TDateField
      FieldName = 'AMX_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlcdsAlmoxTempAMX_QTDE: TIntegerField
      FieldName = 'AMX_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlcdsAlmoxTempPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlcdsAlmoxTempAMX_NUM_OP: TStringField
      FieldName = 'AMX_NUM_OP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlcdsAlmoxTempEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlcdsAlmoxTempAMX_STATUS: TStringField
      FieldName = 'AMX_STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlcdsAlmoxTempAMX_STAT_UPD: TStringField
      FieldName = 'AMX_STAT_UPD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlcdsAlmoxTempAMX_OP_PAI: TStringField
      FieldName = 'AMX_OP_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlcdsAlmoxTempPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlcdsAlmoxTempAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlcdsAlmoxTempAMX_REFER: TStringField
      FieldName = 'AMX_REFER'
    end
  end
  object DspAlmoxTemp: TDataSetProvider
    DataSet = SqlcdsAlmoxTemp
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 464
  end
  object CdsAlmoxTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAlmoxTemp'
    OnCalcFields = CdsAlmoxTempCalcFields
    Left = 216
    Top = 464
    object CdsAlmoxTempAMX_REGISTRO: TIntegerField
      FieldName = 'AMX_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAlmoxTempAMX_DATA: TDateField
      FieldName = 'AMX_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAlmoxTempAMX_QTDE: TIntegerField
      FieldName = 'AMX_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
    end
    object CdsAlmoxTempPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsAlmoxTempAMX_NUM_OP: TStringField
      FieldName = 'AMX_NUM_OP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsAlmoxTempEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsAlmoxTempAMX_STATUS: TStringField
      FieldName = 'AMX_STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsAlmoxTempAMX_STAT_UPD: TStringField
      FieldName = 'AMX_STAT_UPD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsAlmoxTempAMX_OP_PAI: TStringField
      FieldName = 'AMX_OP_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsAlmoxTempPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsAlmoxTempAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsAlmoxTempCC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_TIPO'
      Calculated = True
    end
    object CdsAlmoxTempAMX_REFER: TStringField
      FieldName = 'AMX_REFER'
    end
  end
  object DsAlmoxTemp: TDataSource
    DataSet = CdsAlmoxTemp
    Left = 304
    Top = 464
  end
  object StpOSV0001: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_REG'
        ParamType = ptOutput
        Size = 4
        Value = 0
      end>
    SQLConnection = DataCadastros.SQLConnection1
    StoredProcName = 'RETORNA_NUM_ORDEN'
    Left = 384
    Top = 144
  end
  object sqlPrd_lote: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 384
    Top = 240
    object sqlPrd_loteprdl_registro: TIntegerField
      FieldName = 'prdl_registro'
    end
    object sqlPrd_lotePRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object SqlCdsOsvItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      'O2.EMP_CODIGO,'
      'O2.OSI_REGISTRO,'
      'O2.OSV_CODIGO,'
      'O2.PRD_REFER_ITENS,'
      'P2.PTI_SIGLA,'
      
        'O2.OSI_STATUSEMPENHO,Cast((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde' +
        '3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtd' +
        'e8)-(O2.osi_reservado + O2.osi_empenho) AS NUMERIC(15,4)) AS FAL' +
        'TA_APONTAR,'
      
        '((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1' +
        '.PRD_EMPENHO)) AS WSALDO'
      'from OSV_IT02 O2'
      'left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'
      'left join PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 448
    Top = 544
    object SqlCdsOsvItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsOsvItemOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlCdsOsvItemOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsOsvItemPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsOsvItemPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsOsvItemFALTA_APONTAR: TFMTBCDField
      FieldName = 'FALTA_APONTAR'
      Precision = 15
    end
    object SqlCdsOsvItemWSALDO: TFMTBCDField
      FieldName = 'WSALDO'
      Precision = 15
    end
    object SqlCdsOsvItemOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      Size = 1
    end
    object SqlCdsOsvItemPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
  end
  object dspCdsOsvItem: TDataSetProvider
    DataSet = SqlCdsOsvItem
    Left = 512
    Top = 544
  end
  object CdsOsvItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCdsOsvItem'
    Left = 568
    Top = 544
  end
end
