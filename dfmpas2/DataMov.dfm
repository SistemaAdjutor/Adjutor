object DataMovimento: TDataMovimento
  OldCreateOrder = False
  Height = 644
  Width = 993
  object SqlReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FAT0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 8
    object SqlReceberFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 6
    end
    object SqlReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlReceberFAT_CANCELADA: TStringField
      FieldName = 'FAT_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberFAT_PREVISAO: TStringField
      FieldName = 'FAT_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReceberFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_VLNCOMIS: TFMTBCDField
      FieldName = 'FAT_VLNCOMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberFAT_COMIS1: TFMTBCDField
      FieldName = 'FAT_COMIS1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_COMIS2: TFMTBCDField
      FieldName = 'FAT_COMIS2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_COMIS3: TFMTBCDField
      FieldName = 'FAT_COMIS3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_COMISSAO_VEN: TFMTBCDField
      FieldName = 'FAT_COMISSAO_VEN'
      Precision = 15
      Size = 3
    end
    object SqlReceberFAT_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'FAT_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SqlReceberFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlReceberFAT_BASESUB: TFMTBCDField
      FieldName = 'FAT_BASESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_DESP_ACES: TFMTBCDField
      FieldName = 'FAT_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_BASEICMS: TFMTBCDField
      FieldName = 'FAT_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_ALIQUOTA: TFMTBCDField
      FieldName = 'FAT_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlReceberFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlReceberFAT_LIVRO: TStringField
      FieldName = 'FAT_LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReceberFAT_VL_RET: TFMTBCDField
      FieldName = 'FAT_VL_RET'
      Precision = 15
    end
    object SqlReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberFAT_IRPJ_RET: TFMTBCDField
      FieldName = 'FAT_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_PIS_RET: TFMTBCDField
      FieldName = 'FAT_PIS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_COFINS_RET: TFMTBCDField
      FieldName = 'FAT_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_INSS_RET: TFMTBCDField
      FieldName = 'FAT_INSS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_BASE_ISS: TFMTBCDField
      FieldName = 'FAT_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_BASE_INSS: TFMTBCDField
      FieldName = 'FAT_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_IRPJ_PERC: TFMTBCDField
      FieldName = 'FAT_IRPJ_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_PIS_PERC: TFMTBCDField
      FieldName = 'FAT_PIS_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_COFINS_PERC: TFMTBCDField
      FieldName = 'FAT_COFINS_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_INSS_PERC: TFMTBCDField
      FieldName = 'FAT_INSS_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_CONTSOCIAL_PERC: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_ISS_RET: TFMTBCDField
      FieldName = 'FAT_ISS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberFAT_ISS_PERC: TFMTBCDField
      FieldName = 'FAT_ISS_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlReceberOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlReceberFAT_EXCLUSAO: TStringField
      FieldName = 'FAT_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlReceberFAT_DATA_EXCLUSAO: TDateField
      FieldName = 'FAT_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlReceberFAT_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FAT_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberFAT_HORA_EXCLUSAO: TTimeField
      FieldName = 'FAT_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlReceberNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlReceberFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 20
      Size = 5
    end
    object SqlReceberFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 20
      Size = 5
    end
    object SqlReceberFAT_REEMBOLSO: TStringField
      FieldName = 'FAT_REEMBOLSO'
      Size = 1
    end
    object SqlReceberFAT_LOTE: TStringField
      FieldName = 'FAT_LOTE'
      Size = 50
    end
    object SqlReceberFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 3
    end
    object SqlReceberFAT_CID_CODIGO_PRESTACAO: TIntegerField
      FieldName = 'FAT_CID_CODIGO_PRESTACAO'
    end
    object SqlReceberREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      Size = 3
    end
  end
  object DspReceber: TDataSetProvider
    DataSet = SqlReceber
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 9
  end
  object CdsReceber: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FAT_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FAT_CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FAT_CANCELADA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PCX_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCT_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FAT_PREVISAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FAT_QTDITEM'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_VLNCOMIS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_DTEMIS'
        DataType = ftTimeStamp
      end
      item
        Name = 'FAT_COMIS1'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_COMIS2'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_COMIS3'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_OBS'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'FAT_OPERACAO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'FAT_BASESUB'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_ICMSRET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_DESP_ACES'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_BASEICMS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_VL_IPI'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_ALIQUOTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_OBSLIVRO'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FAT_OPERUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FAT_LIVRO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FAT_VL_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PCL_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FAT_IRPJ_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_PIS_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_COFINS_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_INSS_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_CONTSOCIAL_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_BASE_ISS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_BASE_INSS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_IRPJ_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_PIS_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_COFINS_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_INSS_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_CONTSOCIAL_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_ISS_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FAT_ISS_PERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'OPV_CODIGO'
        DataType = ftSmallint
      end
      item
        Name = 'CCT_NOVO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OPE_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PED_CODIGO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'FAT_EXCLUSAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FAT_DATA_EXCLUSAO'
        DataType = ftDate
      end
      item
        Name = 'USU_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'USU_LOGIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAT_MOTIVO_EXCLUSAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FAT_HORA_EXCLUSAO'
        DataType = ftTime
      end
      item
        Name = 'NF_NUM_NFE'
        DataType = ftInteger
      end
      item
        Name = 'FAT_VL_LIQ'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end
      item
        Name = 'FAT_VLFAT'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end
      item
        Name = 'FAT_REEMBOLSO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FAT_LOTE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspReceber'
    StoreDefs = True
    AfterEdit = CdsReceberAfterEdit
    BeforePost = CdsReceberBeforePost
    Left = 196
    Top = 9
    object CdsReceberFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 6
    end
    object CdsReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsReceberFAT_CANCELADA: TStringField
      FieldName = 'FAT_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberFAT_PREVISAO: TStringField
      FieldName = 'FAT_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReceberFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsReceberFAT_VLNCOMIS: TFMTBCDField
      FieldName = 'FAT_VLNCOMIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsReceberFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReceberFAT_COMIS1: TFMTBCDField
      FieldName = 'FAT_COMIS1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.000%;-,0.000%'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_COMIS2: TFMTBCDField
      FieldName = 'FAT_COMIS2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.000%;-,0.000%'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_COMIS3: TFMTBCDField
      FieldName = 'FAT_COMIS3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',0.000%;-,0.000%'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'FAT_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsReceberFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsReceberFAT_BASESUB: TFMTBCDField
      FieldName = 'FAT_BASESUB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsReceberFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_DESP_ACES: TFMTBCDField
      FieldName = 'FAT_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_BASEICMS: TFMTBCDField
      FieldName = 'FAT_BASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_ALIQUOTA: TFMTBCDField
      FieldName = 'FAT_ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsReceberFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsReceberFAT_LIVRO: TStringField
      FieldName = 'FAT_LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReceberPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberFAT_VL_RET: TFMTBCDField
      FieldName = 'FAT_VL_RET'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_IRPJ_RET: TFMTBCDField
      FieldName = 'FAT_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_PIS_RET: TFMTBCDField
      FieldName = 'FAT_PIS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_COFINS_RET: TFMTBCDField
      FieldName = 'FAT_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_INSS_RET: TFMTBCDField
      FieldName = 'FAT_INSS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_BASE_ISS: TFMTBCDField
      FieldName = 'FAT_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_BASE_INSS: TFMTBCDField
      FieldName = 'FAT_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_IRPJ_PERC: TFMTBCDField
      FieldName = 'FAT_IRPJ_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_PIS_PERC: TFMTBCDField
      FieldName = 'FAT_PIS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_COFINS_PERC: TFMTBCDField
      FieldName = 'FAT_COFINS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_INSS_PERC: TFMTBCDField
      FieldName = 'FAT_INSS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_CONTSOCIAL_PERC: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_ISS_RET: TFMTBCDField
      FieldName = 'FAT_ISS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_ISS_PERC: TFMTBCDField
      FieldName = 'FAT_ISS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReceberCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsReceberFAT_EXCLUSAO: TStringField
      FieldName = 'FAT_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsReceberFAT_DATA_EXCLUSAO: TDateField
      FieldName = 'FAT_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReceberUSU_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object CdsReceberUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsReceberFAT_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FAT_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReceberFAT_HORA_EXCLUSAO: TTimeField
      FieldName = 'FAT_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsReceberNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsReceberFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsReceberFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsReceberFAT_REEMBOLSO: TStringField
      FieldName = 'FAT_REEMBOLSO'
      Size = 1
    end
    object CdsReceberFAT_LOTE: TStringField
      FieldName = 'FAT_LOTE'
      Size = 50
    end
    object CdsReceberFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 3
    end
    object CdsReceberFAT_COMISSAO_VEN: TFMTBCDField
      FieldName = 'FAT_COMISSAO_VEN'
      DisplayFormat = ',0.000%;-,0.000%'
      Precision = 15
      Size = 3
    end
    object CdsReceberREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      Size = 3
    end
    object CdsReceberFAT_CID_CODIGO_PRESTACAO: TIntegerField
      FieldName = 'FAT_CID_CODIGO_PRESTACAO'
    end
  end
  object DsReceber: TDataSource
    DataSet = CdsReceber
    Left = 281
    Top = 9
  end
  object CdsRecParce: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FAT_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FPC_NUMER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FAT_CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'REP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'BAN_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CCT_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PCX_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FPC_DTEMIS'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_NPARCELAS'
        DataType = ftSmallint
      end
      item
        Name = 'FPC_COBTIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_STATUS'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FPC_DESCTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_DTDESC'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_VENCTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_PAGTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_OBS'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'FPC_SITPAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FPC_IMPDUP'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_TIPODOC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_JUROS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_MULTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_VL_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCT_NOVO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FPC_PREVISAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_STATUS_REMESSA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATA_REMESSA'
        DataType = ftDate
      end
      item
        Name = 'BAN_COD_APELIDO'
        DataType = ftInteger
      end
      item
        Name = 'FPC_STATUS_BAIXA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_FORMAPAGTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_DESCONTADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATADESCTO'
        DataType = ftDate
      end
      item
        Name = 'FPC_CONFIRMADESCTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_CONFIRMADEVOLUCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATADEVOLUCAO'
        DataType = ftDate
      end
      item
        Name = 'FPC_OBS_DESCTO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'FPC_JUROS_DESCTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PAG_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FPC_BANCO_CHEQUE'
        DataType = ftInteger
      end
      item
        Name = 'FPC_NUM_CHEQUE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FPC_NUM_CHEQUE_DV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_CHEQUE_DATA'
        DataType = ftDate
      end
      item
        Name = 'FPC_SACADO_CHEQUE'
        DataType = ftString
        Size = 55
      end
      item
        Name = 'FPC_EXCLUSAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATA_EXCLUSAO'
        DataType = ftDate
      end
      item
        Name = 'USU_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'USU_LOGIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FPC_MOTIVO_EXCLUSAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FPC_HORA_EXCLUSAO'
        DataType = ftTime
      end
      item
        Name = 'FPC_COBNUM'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'FPC_VLPARC'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end
      item
        Name = 'FPC_VLPAGO'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end
      item
        Name = 'PCXPF_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'FPC_REEMBOLSO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'CdsRecParceIndex1'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspRecParce'
    StoreDefs = True
    AfterInsert = CdsRecParceAfterInsert
    AfterEdit = CdsRecParceAfterEdit
    OnCalcFields = CdsRecParceCalcFields
    Left = 196
    Top = 56
    object CdsRecParceFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecParceBAN_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsRecParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsRecParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsRecParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'FPC_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsRecParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FPC_SITUACAO_CC'
      Calculated = True
    end
    object CdsRecParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRecParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsRecParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsRecParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsRecParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsRecParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRecParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsRecParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsRecParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsRecParceN_PARC_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'N_PARC_CC'
      Size = 5
      Calculated = True
    end
    object CdsRecParceFPC_BANCO_CHEQUE: TIntegerField
      Alignment = taCenter
      FieldName = 'FPC_BANCO_CHEQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object CdsRecParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsRecParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object CdsRecParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRecParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceUSU_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object CdsRecParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsRecParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsRecParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object CdsRecParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsRecParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsRecParcePCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object CdsRecParceFPC_REEMBOLSO: TStringField
      FieldName = 'FPC_REEMBOLSO'
      Size = 1
    end
    object CdsRecParceFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 5
    end
    object CdsRecParceFPC_DATABOLETO: TSQLTimeStampField
      FieldName = 'FPC_DATABOLETO'
    end
    object CdsRecParcefpg_registro: TIntegerField
      FieldName = 'fpg_registro'
    end
    object CdsRecParceFPC_ANTECIPACAO_CONCLUIDA: TStringField
      FieldName = 'FPC_ANTECIPACAO_CONCLUIDA'
      Size = 1
    end
    object CdsRecParceFPC_USU_CODIGO_ANTECIPACAO: TIntegerField
      FieldName = 'FPC_USU_CODIGO_ANTECIPACAO'
      OnGetText = CdsRecParceFPC_USU_CODIGO_ANTECIPACAOGetText
    end
    object CdsRecParceFPC_DATA_ANTECIPACAO: TSQLTimeStampField
      FieldName = 'FPC_DATA_ANTECIPACAO'
    end
  end
  object DspRecParce: TDataSetProvider
    DataSet = SqlRecParce
    Options = [poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 110
    Top = 55
  end
  object SqlRecParce: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      'F1.*,'
      'BAN_APELIDO'
      'from FAT_PC01 F1'
      'left join BAN0000 B1 on B1.BAN_CODIGO = F1.BAN_CODIGO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 55
    object SqlRecParceFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRecParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlRecParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRecParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRecParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlRecParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlRecParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'FPC_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SqlRecParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRecParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 15
    end
    object SqlRecParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 15
    end
    object SqlRecParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRecParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRecParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlRecParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlRecParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRecParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlRecParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlRecParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlRecParceFPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlRecParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object SqlRecParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRecParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlRecParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlRecParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object SqlRecParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 20
      Size = 5
    end
    object SqlRecParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 20
      Size = 5
    end
    object SqlRecParcePCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object SqlRecParceFPC_REEMBOLSO: TStringField
      FieldName = 'FPC_REEMBOLSO'
      Size = 1
    end
    object SqlRecParceFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlRecParceFPC_DATABOLETO: TSQLTimeStampField
      FieldName = 'FPC_DATABOLETO'
    end
    object SqlRecParcefpg_registro: TIntegerField
      FieldName = 'fpg_registro'
    end
    object SqlRecParceFPC_ANTECIPACAO_CONCLUIDA: TStringField
      FieldName = 'FPC_ANTECIPACAO_CONCLUIDA'
      Size = 1
    end
    object SqlRecParceFPC_USU_CODIGO_ANTECIPACAO: TIntegerField
      FieldName = 'FPC_USU_CODIGO_ANTECIPACAO'
    end
    object SqlRecParceFPC_DATA_ANTECIPACAO: TSQLTimeStampField
      FieldName = 'FPC_DATA_ANTECIPACAO'
    end
  end
  object DsrecParc: TDataSource
    DataSet = CdsRecParce
    Left = 281
    Top = 56
  end
  object SqlPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PAG0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 449
    Top = 9
    object SqlPagarPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
      Size = 5
    end
    object SqlPagarFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPagarPAG_TIPO: TStringField
      FieldName = 'PAG_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPagarPAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarPAG_PREVISAO: TStringField
      FieldName = 'PAG_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarPAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_SERIE: TStringField
      FieldName = 'PAG_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarPAG_BASEICMS: TFMTBCDField
      FieldName = 'PAG_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_ALIQICMS: TFMTBCDField
      FieldName = 'PAG_ALIQICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_BASEIPI: TFMTBCDField
      FieldName = 'PAG_BASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_VL_IPI: TFMTBCDField
      FieldName = 'PAG_VL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'PAG_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SqlPagarPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlPagarPAG_LIVRO: TStringField
      FieldName = 'PAG_LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarPAG_OPERACAO: TStringField
      FieldName = 'PAG_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPagarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarPAG_IRPJ_RET: TFMTBCDField
      FieldName = 'PAG_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_PIS_RET: TFMTBCDField
      FieldName = 'PAG_PIS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_COFINS_RET: TFMTBCDField
      FieldName = 'PAG_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_INSS_RET: TFMTBCDField
      FieldName = 'PAG_INSS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_BASE_ISS: TFMTBCDField
      FieldName = 'PAG_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_BASE_INSS: TFMTBCDField
      FieldName = 'PAG_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_IRPJ_PERC: TFMTBCDField
      FieldName = 'PAG_IRPJ_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_PIS_PERC: TFMTBCDField
      FieldName = 'PAG_PIS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_COFINS_PERC: TFMTBCDField
      FieldName = 'PAG_COFINS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_INSS_PERC: TFMTBCDField
      FieldName = 'PAG_INSS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_CONTSOCIAL_PERC: TFMTBCDField
      FieldName = 'PAG_CONTSOCIAL_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarPAG_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'PAG_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_VL_RET: TFMTBCDField
      FieldName = 'PAG_VL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlPagarOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarPAG_ISS_RET: TFMTBCDField
      FieldName = 'PAG_ISS_RET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_ISS_PERC: TFMTBCDField
      FieldName = 'PAG_ISS_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarPAG_EXCLUSAO: TStringField
      FieldName = 'PAG_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarPAG_DATA_EXCLUSAO: TDateField
      FieldName = 'PAG_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlPagarPAG_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'PAG_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarPAG_HORA_EXCLUSAO: TTimeField
      FieldName = 'PAG_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarPAG_REEMBOLSO: TStringField
      FieldName = 'PAG_REEMBOLSO'
      Size = 1
    end
    object SqlPagarPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object SqlPagarPAG_VALOR_N_RATEIA: TFMTBCDField
      FieldName = 'PAG_VALOR_N_RATEIA'
      Precision = 20
      Size = 5
    end
  end
  object DspPagar: TDataSetProvider
    DataSet = SqlPagar
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 9
  end
  object CdsPagar: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPagar'
    BeforeEdit = CdsPagarBeforeEdit
    AfterEdit = CdsPagarAfterEdit
    BeforePost = CdsPagarBeforePost
    Left = 630
    Top = 8
    object CdsPagarPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsPagarFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPagarPAG_TIPO: TStringField
      FieldName = 'PAG_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPagarPAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarPAG_PREVISAO: TStringField
      FieldName = 'PAG_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarPAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsPagarPAG_SERIE: TStringField
      FieldName = 'PAG_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarPAG_BASEICMS: TFMTBCDField
      FieldName = 'PAG_BASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_ALIQICMS: TFMTBCDField
      FieldName = 'PAG_ALIQICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_BASEIPI: TFMTBCDField
      FieldName = 'PAG_BASEIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_VL_IPI: TFMTBCDField
      FieldName = 'PAG_VL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'PAG_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsPagarPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsPagarPAG_LIVRO: TStringField
      FieldName = 'PAG_LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarPAG_OPERACAO: TStringField
      FieldName = 'PAG_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPagarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarPAG_IRPJ_RET: TFMTBCDField
      FieldName = 'PAG_IRPJ_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_PIS_RET: TFMTBCDField
      FieldName = 'PAG_PIS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_COFINS_RET: TFMTBCDField
      FieldName = 'PAG_COFINS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_INSS_RET: TFMTBCDField
      FieldName = 'PAG_INSS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_BASE_ISS: TFMTBCDField
      FieldName = 'PAG_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_BASE_INSS: TFMTBCDField
      FieldName = 'PAG_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_IRPJ_PERC: TFMTBCDField
      FieldName = 'PAG_IRPJ_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_PIS_PERC: TFMTBCDField
      FieldName = 'PAG_PIS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_COFINS_PERC: TFMTBCDField
      FieldName = 'PAG_COFINS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_INSS_PERC: TFMTBCDField
      FieldName = 'PAG_INSS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_CONTSOCIAL_PERC: TFMTBCDField
      FieldName = 'PAG_CONTSOCIAL_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'PAG_CONTSOCIAL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_VL_RET: TFMTBCDField
      FieldName = 'PAG_VL_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarPAG_ISS_RET: TFMTBCDField
      FieldName = 'PAG_ISS_RET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_ISS_PERC: TFMTBCDField
      FieldName = 'PAG_ISS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarPAG_EXCLUSAO: TStringField
      FieldName = 'PAG_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarPAG_DATA_EXCLUSAO: TDateField
      FieldName = 'PAG_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarUSU_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object CdsPagarUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsPagarPAG_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'PAG_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarPAG_HORA_EXCLUSAO: TTimeField
      FieldName = 'PAG_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarPAG_REEMBOLSO: TStringField
      FieldName = 'PAG_REEMBOLSO'
      Size = 1
    end
    object CdsPagarPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object CdsPagarPAG_VALOR_N_RATEIA: TFMTBCDField
      FieldName = 'PAG_VALOR_N_RATEIA'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 20
      Size = 5
    end
  end
  object DsPagar: TDataSource
    DataSet = CdsPagar
    Left = 709
    Top = 9
  end
  object SqlSaldoBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from SALDOBCO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 449
    Top = 105
    object SqlSaldoBancoSAB_CODIGO: TStringField
      FieldName = 'SAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlSaldoBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlSaldoBancoSAB_DIA: TSQLTimeStampField
      FieldName = 'SAB_DIA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSaldoBancoSAB_SALDO: TFMTBCDField
      FieldName = 'SAB_SALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlSaldoBancoSAB_BLOQUEADO: TFMTBCDField
      FieldName = 'SAB_BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlSaldoBancoSAB_APLICADO: TFMTBCDField
      FieldName = 'SAB_APLICADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlSaldoBancoSAB_TIPOAPL: TStringField
      FieldName = 'SAB_TIPOAPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlSaldoBancoSAB_OBS: TStringField
      FieldName = 'SAB_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlSaldoBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspSaldoBanco: TDataSetProvider
    DataSet = SqlSaldoBanco
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 105
  end
  object CdsSaldoBanco: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldoBanco'
    BeforeEdit = CdsSaldoBancoBeforeEdit
    BeforePost = CdsSaldoBancoBeforePost
    Left = 630
    Top = 104
    object CdsSaldoBancoSAB_CODIGO: TStringField
      FieldName = 'SAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsSaldoBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsSaldoBancoSAB_DIA: TSQLTimeStampField
      FieldName = 'SAB_DIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSaldoBancoSAB_SALDO: TFMTBCDField
      FieldName = 'SAB_SALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoBancoSAB_BLOQUEADO: TFMTBCDField
      FieldName = 'SAB_BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoBancoSAB_APLICADO: TFMTBCDField
      FieldName = 'SAB_APLICADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoBancoSAB_TIPOAPL: TStringField
      FieldName = 'SAB_TIPOAPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsSaldoBancoSAB_OBS: TStringField
      FieldName = 'SAB_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsSaldoBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsSaldoBanco: TDataSource
    DataSet = CdsSaldoBanco
    Left = 709
    Top = 104
  end
  object SqlFluxoCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FLUXOCX')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 449
    Top = 153
    object SqlFluxoCaixaFLU_DIA: TSQLTimeStampField
      FieldName = 'FLU_DIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SqlFluxoCaixaFLU_RECEBE: TFMTBCDField
      FieldName = 'FLU_RECEBE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlFluxoCaixaFLU_PAGAR: TFMTBCDField
      FieldName = 'FLU_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlFluxoCaixaFLU_BANCO: TFMTBCDField
      FieldName = 'FLU_BANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlFluxoCaixaFLU_SALDO: TFMTBCDField
      FieldName = 'FLU_SALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlFluxoCaixaFLU_ACUMULO: TFMTBCDField
      FieldName = 'FLU_ACUMULO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlFluxoCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CdsFluxoCaixa: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DpsFluxoCaixa'
    Left = 630
    Top = 152
    object CdsFluxoCaixaFLU_DIA: TSQLTimeStampField
      FieldName = 'FLU_DIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsFluxoCaixaFLU_RECEBE: TFMTBCDField
      FieldName = 'FLU_RECEBE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFluxoCaixaFLU_PAGAR: TFMTBCDField
      FieldName = 'FLU_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFluxoCaixaFLU_BANCO: TFMTBCDField
      FieldName = 'FLU_BANCO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFluxoCaixaFLU_SALDO: TFMTBCDField
      FieldName = 'FLU_SALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFluxoCaixaFLU_ACUMULO: TFMTBCDField
      FieldName = 'FLU_ACUMULO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFluxoCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DpsFluxoCaixa: TDataSetProvider
    DataSet = SqlFluxoCaixa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 153
  end
  object DsFluxoCaixa: TDataSource
    DataSet = CdsFluxoCaixa
    Left = 709
    Top = 152
  end
  object SqlPedidos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from PED0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 160
    object SqlPedidosPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlPedidosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlPedidosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_COMIS2: TFMTBCDField
      FieldName = 'PED_COMIS2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_COMIS3: TFMTBCDField
      FieldName = 'PED_COMIS3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_DESCTONF: TStringField
      FieldName = 'PED_DESCTONF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlPedidosPED_TPDESCTO: TStringField
      FieldName = 'PED_TPDESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedidosPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_DESCTOPC1: TFMTBCDField
      FieldName = 'PED_DESCTOPC1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_DESCTOPC2: TFMTBCDField
      FieldName = 'PED_DESCTOPC2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedidosPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedidosTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlPedidosPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlPedidosPED_DTEMBARQUE: TSQLTimeStampField
      FieldName = 'PED_DTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosPED_DTLIM_ATD: TSQLTimeStampField
      FieldName = 'PED_DTLIM_ATD'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlPedidosPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlPedidosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlPedidosPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosPED_VLTOTAL_IPI: TFMTBCDField
      FieldName = 'PED_VLTOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_OBSG1: TStringField
      FieldName = 'PED_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG2: TStringField
      FieldName = 'PED_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG3: TStringField
      FieldName = 'PED_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG4: TStringField
      FieldName = 'PED_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG5: TStringField
      FieldName = 'PED_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG6: TStringField
      FieldName = 'PED_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSG7: TStringField
      FieldName = 'PED_OBSG7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPedidosPED_OBSGERAL: TMemoField
      FieldName = 'PED_OBSGERAL'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlPedidosPED_TOTUPS: TFMTBCDField
      FieldName = 'PED_TOTUPS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_VLTUPS: TFMTBCDField
      FieldName = 'PED_VLTUPS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 7
    end
    object SqlPedidosPED_PRODUCAO: TStringField
      FieldName = 'PED_PRODUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedidosPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_DESP_ACES: TFMTBCDField
      FieldName = 'PED_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_VLSEGURO: TFMTBCDField
      FieldName = 'PED_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedidosPED_FLAG_PED_DUPL: TStringField
      FieldName = 'PED_FLAG_PED_DUPL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedidosPED_DESP_IMPOR: TFMTBCDField
      FieldName = 'PED_DESP_IMPOR'
      Precision = 15
    end
    object SqlPedidosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlPedidosPED_OS: TStringField
      FieldName = 'PED_OS'
      Size = 1
    end
    object SqlPedidosREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedidosPED_COMISSAO_VEN: TFMTBCDField
      FieldName = 'PED_COMISSAO_VEN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object SqlPedidosENDERECO_ENTREGA: TIntegerField
      FieldName = 'ENDERECO_ENTREGA'
    end
    object SqlPedidosPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object SqlPedidosPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
    object SqlPedidosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object SqlPedidosCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object SqlPedidosPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlPedidosEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlPedidosEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
  end
  object CdsPedidos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPedidos'
    BeforeEdit = CdsPedidosBeforeEdit
    BeforePost = CdsPedidosBeforePost
    Left = 197
    Top = 161
    object CdsPedidosPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedidosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosPED_DTENTRADA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_COMIS2: TFMTBCDField
      FieldName = 'PED_COMIS2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_COMIS3: TFMTBCDField
      FieldName = 'PED_COMIS3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsPedidosPED_DESCTONF: TStringField
      FieldName = 'PED_DESCTONF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosPED_TPDESCTO: TStringField
      FieldName = 'PED_TPDESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_DESCTOPC1: TFMTBCDField
      FieldName = 'PED_DESCTOPC1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_DESCTOPC2: TFMTBCDField
      FieldName = 'PED_DESCTOPC2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsPedidosPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosPED_DTEMBARQUE: TSQLTimeStampField
      FieldName = 'PED_DTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosPED_DTLIM_ATD: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTLIM_ATD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPedidosPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPedidosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosCLI_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Calculated = True
    end
    object CdsPedidosCLI_CIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Calculated = True
    end
    object CdsPedidosCLI_UF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_UF'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 2
      Calculated = True
    end
    object CdsPedidosOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsPedidosPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosPED_VLTOTAL_IPI: TFMTBCDField
      FieldName = 'PED_VLTOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPED_OBSG1: TStringField
      FieldName = 'PED_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG2: TStringField
      FieldName = 'PED_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG3: TStringField
      FieldName = 'PED_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG4: TStringField
      FieldName = 'PED_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG5: TStringField
      FieldName = 'PED_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG6: TStringField
      FieldName = 'PED_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSG7: TStringField
      FieldName = 'PED_OBSG7'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPedidosPED_OBSGERAL: TMemoField
      FieldName = 'PED_OBSGERAL'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsPedidosPED_TOTUPS: TFMTBCDField
      FieldName = 'PED_TOTUPS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPED_VLTUPS: TFMTBCDField
      FieldName = 'PED_VLTUPS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 7
    end
    object CdsPedidosPED_PRODUCAO: TStringField
      FieldName = 'PED_PRODUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_DESP_ACES: TFMTBCDField
      FieldName = 'PED_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_VLSEGURO: TFMTBCDField
      FieldName = 'PED_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosPED_FLAG_PED_DUPL: TStringField
      FieldName = 'PED_FLAG_PED_DUPL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedidosPED_DESP_IMPOR: TFMTBCDField
      FieldName = 'PED_DESP_IMPOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedidosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object CdsPedidosPED_OS: TStringField
      FieldName = 'PED_OS'
      Size = 1
    end
    object CdsPedidosREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedidosPED_COMISSAO_VEN: TFMTBCDField
      FieldName = 'PED_COMISSAO_VEN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object CdsPedidosENDERECO_ENTREGA: TIntegerField
      FieldName = 'ENDERECO_ENTREGA'
    end
    object CdsPedidosPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object CdsPedidosPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
    object CdsPedidosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsPedidosCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object CdsPedidosPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsPedidosEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object CdsPedidosEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
  end
  object DspPedidos: TDataSetProvider
    DataSet = SqlPedidos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 161
  end
  object DsPedidos: TDataSource
    DataSet = CdsPedidos
    Left = 281
    Top = 161
  end
  object SqlPedItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      'P1.*,'
      
        'CASE WHEN P1.PRD_UND IS NULL THEN p2.PRD_UND ELSE p1.PRD_UND END' +
        ' AS Unidade, '
      'p1.PRF_PESO AS PRF_PESO_COPIA,'
      'P2.PRD_CODIGO,'
      'P2.PTI_CODIGO,'
      'P2.PRD_DCVAR1,'
      'P2.PRD_DCVAR2,'
      'P2.PRD_DCVAR3,'
      'P2.PRD_DCVAR4,'
      'P2.PRD_DCVAR5,'
      'P2.PRD_DCVAR6,'
      'P2.PRD_DCVAR7,'
      'P2.PRD_DCVAR8,'
      'P2.PRD_PESOLIQ,'
      'P2.PRD_PESOKG,'
      'P3.PTI_SIGLA'
      'from PED_IT01 P1'
      'LEFT JOIN PRD0000 P2 on (P1.PRD_REFER = P2.PRD_REFER)'
      'LEFT JOIN PRD_TIPO P3 ON (P2.PTI_CODIGO = P3.PTI_CODIGO)')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 210
    object SqlPedItemPRF_PESOKG: TFMTBCDField
      FieldName = 'PRF_PESOKG'
      Precision = 15
    end
    object SqlPedItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlPedItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedItemPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedItemPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedItemPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_OP: TStringField
      FieldName = 'PRF_OP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedItemPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPedItemPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = []
      Size = 12
    end
    object SqlPedItemPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlPedItemPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object SqlPedItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlPedItemPRF_QTDE_FAT_VAR1: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR2: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR3: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR4: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR5: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR6: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR7: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_QTDE_FAT_VAR8: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPedItemPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedItemPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedItemPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPedItemPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = []
      Precision = 15
    end
    object SqlPedItemPRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Precision = 15
    end
    object SqlPedItemPRD_PESOLIQ2: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 15
    end
    object SqlPedItemAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlPedItemAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object SqlPedItemUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlPedItemPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object SqlPedItemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
    object SqlPedItemPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Size = 500
    end
    object SqlPedItemPRD_REFER: TStringField
      DisplayWidth = 20
      FieldName = 'PRD_REFER'
    end
    object SqlPedItemPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object SqlPedItemPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 20
      Size = 5
    end
    object SqlPedItemPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 20
      Size = 5
    end
    object SqlPedItemPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
    end
    object SqlPedItemID_DIRETIVAS: TIntegerField
      FieldName = 'ID_DIRETIVAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPedItemPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlPedItemPRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
    end
    object SqlPedItemPRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object SqlPedItemPRF_PRAZO_ENTREGA: TDateField
      FieldName = 'PRF_PRAZO_ENTREGA'
    end
    object SqlPedItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SqlPedItemPRF_PESO_COPIA: TFMTBCDField
      FieldName = 'PRF_PESO_COPIA'
      Precision = 18
      Size = 5
    end
    object SqlPedItemCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
    end
    object SqlPedItemACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
    end
    object SqlPedItemPRF_VALOR_ST: TFMTBCDField
      FieldName = 'PRF_VALOR_ST'
      Precision = 18
      Size = 5
    end
  end
  object DspPedItem: TDataSetProvider
    DataSet = SqlPedItem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 210
  end
  object CdsPedItem: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DspPedItem'
    AfterInsert = CdsPedItemAfterInsert
    AfterPost = CdsPedItemAfterPost
    AfterScroll = CdsPedItemAfterScroll
    OnCalcFields = CdsPedItemCalcFields
    Left = 196
    Top = 207
    object CdsPedItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPedItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedItemPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedItemPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedItemPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00 %'
      Precision = 15
    end
    object CdsPedItemPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedItemPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPedItemPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object CdsPedItemPRF_OP: TStringField
      FieldName = 'PRF_OP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPedItemPRF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRF_TOTAL_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00000'
      currency = False
      Calculated = True
    end
    object CdsPedItemPRF_TOTAL_BRUTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRF_TOTAL_BRUTO_CC'
      DisplayFormat = '#,##0.00000'
      Calculated = True
    end
    object CdsPedItemPED_QTDE_PEND_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PED_QTDE_PEND_CC'
      ProviderFlags = []
      Calculated = True
    end
    object CdsPedItemPRF_QTDE_FATURAR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRF_QTDE_FATURAR_CC'
      OnChange = CdsPedItemPRF_QTDE_FATURAR_CCChange
      DisplayFormat = '#,###0.000'
      currency = False
      Calculated = True
    end
    object CdsPedItemPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = []
      Size = 12
    end
    object CdsPedItemPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object CdsPedItemPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object CdsPedItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPedItemCC_RECNO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_RECNO'
      DisplayFormat = '00'
      Calculated = True
    end
    object CdsPedItemPRF_QTDE_FAT_VAR1: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR2: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR3: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR4: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR5: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR6: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR7: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_QTDE_FAT_VAR8: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPedItemPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedItemPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedItemPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPedItemPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object CdsPedItemPRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Precision = 15
    end
    object CdsPedItemPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object CdsPedItemAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 5
    end
    object CdsPedItemAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 5
    end
    object CdsPedItemUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsPedItemPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object CdsPedItemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
    object CdsPedItemPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Size = 500
    end
    object CdsPedItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsPedItemPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object CdsPedItemPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 20
      Size = 5
    end
    object CdsPedItemPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 20
      Size = 5
    end
    object CdsPedItemPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
    end
    object CdsPedItemID_DIRETIVAS: TIntegerField
      FieldName = 'ID_DIRETIVAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedItemPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsPedItemPRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
    end
    object CdsPedItemPRF_PESOKG: TFMTBCDField
      FieldName = 'PRF_PESOKG'
      Precision = 15
    end
    object CdsPedItemPRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object CdsPedItemPRF_PRAZO_ENTREGA: TDateField
      FieldName = 'PRF_PRAZO_ENTREGA'
    end
    object CdsPedItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object CdsPedItemPRF_PESO_COPIA: TFMTBCDField
      FieldName = 'PRF_PESO_COPIA'
      Precision = 18
      Size = 5
    end
    object CdsPedItemCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
    end
    object CdsPedItemACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
    end
    object CdsPedItemPRF_VALOR_ST: TFMTBCDField
      FieldName = 'PRF_VALOR_ST'
      Precision = 18
      Size = 5
    end
    object CdsPedItemPRF_QTDE_ITENS: TAggregateField
      FieldName = 'PRF_QTDE_ITENS'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '000000'
      Expression = 'count(PRF_REGISTRO)'
    end
    object CdsPedItemPRF_TOTAL_PRODUTOS: TAggregateField
      FieldName = 'PRF_TOTAL_PRODUTOS'
      Active = True
      DisplayName = ''
      Expression = 'SUM(PRF_PRECO_BRUTO * PRF_QTDE)'
    end
  end
  object DsPedItem: TDataSource
    DataSet = CdsPedItem
    Left = 281
    Top = 211
  end
  object SQLRecItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FAT_IT02')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 25
    Top = 113
    object SQLRecItemREG: TIntegerField
      FieldName = 'REG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLRecItemFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SQLRecItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SQLRecItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SQLRecItemFIT_QTDE: TFMTBCDField
      FieldName = 'FIT_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemFIT_IPIALIQ: TFMTBCDField
      FieldName = 'FIT_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemFIT_PRECO: TFMTBCDField
      FieldName = 'FIT_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemFIT_COMIS: TFMTBCDField
      FieldName = 'FIT_COMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemFIT_DESCTO: TFMTBCDField
      FieldName = 'FIT_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemFIT_SUBSTIT: TFMTBCDField
      FieldName = 'FIT_SUBSTIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQLRecItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQLRecItemFIT_ICMALIQ: TFMTBCDField
      FieldName = 'FIT_ICMALIQ'
      Precision = 15
    end
    object SQLRecItemCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DspRecItem: TDataSetProvider
    DataSet = SQLRecItem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 114
    Top = 113
  end
  object CdsRecItem: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspRecItem'
    BeforePost = CdsRecItemBeforePost
    Left = 206
    Top = 112
    object CdsRecItemREG: TIntegerField
      FieldName = 'REG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsRecItemFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsRecItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsRecItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRecItemFIT_QTDE: TFMTBCDField
      FieldName = 'FIT_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemFIT_IPIALIQ: TFMTBCDField
      FieldName = 'FIT_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemFIT_PRECO: TFMTBCDField
      FieldName = 'FIT_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemFIT_COMIS: TFMTBCDField
      FieldName = 'FIT_COMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemFIT_DESCTO: TFMTBCDField
      FieldName = 'FIT_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemFIT_SUBSTIT: TFMTBCDField
      FieldName = 'FIT_SUBSTIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRecItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRecItemFIT_ICMALIQ: TFMTBCDField
      FieldName = 'FIT_ICMALIQ'
      Precision = 15
    end
    object CdsRecItemCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DsRecItem: TDataSource
    DataSet = CdsRecItem
    Left = 285
    Top = 112
  end
  object DspFechaCaixa: TDataSetProvider
    DataSet = SqlFechaCaixa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 209
  end
  object DspCaixaFixo: TDataSetProvider
    DataSet = SqlCaixaFixo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 260
  end
  object CdsCaixaFixo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CXA_LANCTO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CXA_DATA'
        DataType = ftTimeStamp
      end
      item
        Name = 'CCT_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CXA_HISTORICO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CXA_DOCUMENTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CXA_TIPODOC'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CXA_SAIDA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'CXA_ENTRADA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'CXA_SITUACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCT_NOVO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'CdsCaixaFixoIndex1'
        DescFields = 'CXA_DATA;CXA_LANCTO'
        Fields = 'CXA_DATA;CXA_LANCTO'
        Options = [ixDescending]
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCaixaFixo'
    StoreDefs = True
    BeforeEdit = CdsCaixaFixoBeforeEdit
    BeforePost = CdsCaixaFixoBeforePost
    AfterScroll = CdsCaixaFixoAfterScroll
    Left = 196
    Top = 259
    object CdsCaixaFixoCXA_LANCTO: TStringField
      FieldName = 'CXA_LANCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CdsCaixaFixoCXA_DATA: TSQLTimeStampField
      FieldName = 'CXA_DATA'
    end
    object CdsCaixaFixoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsCaixaFixoCXA_HISTORICO: TStringField
      FieldName = 'CXA_HISTORICO'
      Size = 50
    end
    object CdsCaixaFixoCXA_DOCUMENTO: TStringField
      FieldName = 'CXA_DOCUMENTO'
      Size = 12
    end
    object CdsCaixaFixoCXA_TIPODOC: TStringField
      FieldName = 'CXA_TIPODOC'
      Required = True
      Size = 1
    end
    object CdsCaixaFixoCXA_SAIDA: TFMTBCDField
      FieldName = 'CXA_SAIDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsCaixaFixoCXA_ENTRADA: TFMTBCDField
      FieldName = 'CXA_ENTRADA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsCaixaFixoCXA_SITUACAO: TStringField
      FieldName = 'CXA_SITUACAO'
      Size = 1
    end
    object CdsCaixaFixoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsCaixaFixoCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CdsFechaCaixa: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspFechaCaixa'
    OnCalcFields = CdsFechaCaixaCalcFields
    Left = 630
    Top = 208
    object CdsFechaCaixaCXF_CODIGO: TStringField
      FieldName = 'CXF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CdsFechaCaixaCXF_ANTERIOR: TFMTBCDField
      FieldName = 'CXF_ANTERIOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_DATAFECHA: TSQLTimeStampField
      FieldName = 'CXF_DATAFECHA'
    end
    object CdsFechaCaixaCXF_ENTRADAS: TFMTBCDField
      FieldName = 'CXF_ENTRADAS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_SAIDAS: TFMTBCDField
      FieldName = 'CXF_SAIDAS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_DINICIO: TSQLTimeStampField
      FieldName = 'CXF_DINICIO'
    end
    object CdsFechaCaixaCXF_DFIM: TSQLTimeStampField
      FieldName = 'CXF_DFIM'
    end
    object CdsFechaCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsFechaCaixaCC_SALDOCAIXA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_SALDOCAIXA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsFechaCaixa: TDataSource
    DataSet = CdsFechaCaixa
    Left = 709
    Top = 208
  end
  object DsCaixaFixo: TDataSource
    DataSet = CdsCaixaFixo
    Left = 281
    Top = 261
  end
  object SqlCaixaFixo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CAIXA001')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 21
    Top = 260
    object SqlCaixaFixoCXA_LANCTO: TStringField
      FieldName = 'CXA_LANCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object SqlCaixaFixoCXA_DATA: TSQLTimeStampField
      FieldName = 'CXA_DATA'
    end
    object SqlCaixaFixoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCaixaFixoCXA_HISTORICO: TStringField
      FieldName = 'CXA_HISTORICO'
      Size = 50
    end
    object SqlCaixaFixoCXA_DOCUMENTO: TStringField
      FieldName = 'CXA_DOCUMENTO'
      Size = 12
    end
    object SqlCaixaFixoCXA_TIPODOC: TStringField
      FieldName = 'CXA_TIPODOC'
      Required = True
      Size = 1
    end
    object SqlCaixaFixoCXA_SAIDA: TFMTBCDField
      FieldName = 'CXA_SAIDA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCaixaFixoCXA_ENTRADA: TFMTBCDField
      FieldName = 'CXA_ENTRADA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCaixaFixoCXA_SITUACAO: TStringField
      FieldName = 'CXA_SITUACAO'
      Size = 1
    end
    object SqlCaixaFixoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCaixaFixoCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object SqlFechaCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CAIXA002')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 449
    Top = 208
    object SqlFechaCaixaCXF_CODIGO: TStringField
      FieldName = 'CXF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object SqlFechaCaixaCXF_ANTERIOR: TFMTBCDField
      FieldName = 'CXF_ANTERIOR'
      Precision = 15
    end
    object SqlFechaCaixaCXF_DATAFECHA: TSQLTimeStampField
      FieldName = 'CXF_DATAFECHA'
    end
    object SqlFechaCaixaCXF_ENTRADAS: TFMTBCDField
      FieldName = 'CXF_ENTRADAS'
      Precision = 15
    end
    object SqlFechaCaixaCXF_SAIDAS: TFMTBCDField
      FieldName = 'CXF_SAIDAS'
      Precision = 15
    end
    object SqlFechaCaixaCXF_DINICIO: TSQLTimeStampField
      FieldName = 'CXF_DINICIO'
    end
    object SqlFechaCaixaCXF_DFIM: TSQLTimeStampField
      FieldName = 'CXF_DFIM'
    end
    object SqlFechaCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SQlNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NF0001')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 21
    Top = 308
    object SQlNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object SQlNotaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SQlNotaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQlNotaNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQlNotaNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object SQlNotaNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SQlNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQlNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SQlNotaOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SQlNotaREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQlNotaNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SQlNotaNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SQlNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQlNotaNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQlNotaNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQlNotaNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SQlNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQlNotaNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SQlNotaNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQlNotaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SQlNotaNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SQlNotaNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SQlNotaNF_ESPECIE: TStringField
      DisplayWidth = 60
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQlNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SQlNotaOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SQlNotaNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SQlNotaOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQlNotaNF_TIPODOC: TStringField
      FieldName = 'NF_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SQlNotaNF_MODELO_NF: TStringField
      FieldName = 'NF_MODELO_NF'
      Size = 2
    end
    object SQlNotaNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 3
    end
    object SQlNotaNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object SQlNotaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SQlNotaNF_DESP_IMPORT: TFMTBCDField
      FieldName = 'NF_DESP_IMPORT'
      Precision = 15
    end
    object SQlNotaNF_STATUS_NFE: TStringField
      FieldName = 'NF_STATUS_NFE'
      FixedChar = True
      Size = 1
    end
    object SQlNotaNF_ENVIADO_NFE_EMAIL: TStringField
      FieldName = 'NF_ENVIADO_NFE_EMAIL'
      FixedChar = True
      Size = 1
    end
    object SQlNotaNF_EMAIL_ENVIO_NFE: TStringField
      FieldName = 'NF_EMAIL_ENVIO_NFE'
      Size = 60
    end
    object SQlNotaNF_LOTE_NFE: TIntegerField
      FieldName = 'NF_LOTE_NFE'
    end
    object SQlNotaNF_PROTOCOLO_NFE: TStringField
      FieldName = 'NF_PROTOCOLO_NFE'
    end
    object SQlNotaNF_PROTOCOLO_NFE_CANC: TStringField
      FieldName = 'NF_PROTOCOLO_NFE_CANC'
    end
    object SQlNotaNF_PROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'NF_PROTOCOLO_AUTORIZACAO'
      Size = 60
    end
    object SQlNotaNF_DATA_AUTORIZACAO: TDateField
      FieldName = 'NF_DATA_AUTORIZACAO'
    end
    object SQlNotaNF_HORA_AUTORIZACAO: TTimeField
      FieldName = 'NF_HORA_AUTORIZACAO'
    end
    object SQlNotaNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object SQlNotaNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
    object SQlNotaNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object SQlNotaNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object SQlNotaSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object SQlNotaNF_NFSE_VLR_IR: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_IR'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_CSLL: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_CSLL'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_INSS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_INSS'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_COFINS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_COFINS'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_PIS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_PIS'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_DEDUCOES: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_DEDUCOES'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_ISS'
      Precision = 15
    end
    object SQlNotaNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_BASE_CALCULO'
      Precision = 15
    end
    object SQlNotaNF_NFSE_DESCRICAO: TBlobField
      FieldName = 'NF_NFSE_DESCRICAO'
    end
    object SQlNotaNF_STATUS_NFSE: TStringField
      FieldName = 'NF_STATUS_NFSE'
      Size = 1
    end
    object SQlNotaNF_NFSE_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_ALIQUOTA_ISS'
      Precision = 15
    end
    object SQlNotaNF_EXPORT_UF_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_UF_EMBARQUE'
      Size = 2
    end
    object SQlNotaNF_EXPORT_LOCAL_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_LOCAL_EMBARQUE'
      Size = 60
    end
    object SQlNotaNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      Precision = 15
      Size = 4
    end
    object SQlNotaNF_VALORTOT_COFINS: TFMTBCDField
      FieldName = 'NF_VALORTOT_COFINS'
      Precision = 15
      Size = 4
    end
    object SQlNotaNF_COMPLEMENTAR: TStringField
      FieldName = 'NF_COMPLEMENTAR'
      FixedChar = True
      Size = 1
    end
    object SQlNotaNFE_STATUS_PRODUCAO: TStringField
      FieldName = 'NFE_STATUS_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object SQlNotaNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
    end
    object SQlNotaNF_TIPO_FRETE: TStringField
      FieldName = 'NF_TIPO_FRETE'
      Size = 1
    end
    object SQlNotaNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 20
      Size = 5
    end
    object SQlNotaNF_VENDA_FATURADA: TStringField
      FieldName = 'NF_VENDA_FATURADA'
      Size = 1
    end
    object SQlNotaNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object SQlNotaNF_VALOR_TOTAL_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SQlNotaNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_DEST'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SQlNotaNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SQlNotaIBPT_VLAPROXTRIBUTOS: TFMTBCDField
      FieldName = 'IBPT_VLAPROXTRIBUTOS'
      Precision = 20
      Size = 2
    end
    object SQlNotaNF_UFVEICULO: TStringField
      FieldName = 'NF_UFVEICULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object DspNota: TDataSetProvider
    DataSet = SQlNota
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 109
    Top = 308
  end
  object CdsNotaFiscal: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspNota'
    BeforePost = CdsNotaFiscalBeforePost
    AfterScroll = CdsNotaFiscalAfterScroll
    OnCalcFields = CdsNotaFiscalCalcFields
    Left = 199
    Top = 307
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsNotaFiscalNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
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
    object CdsNotaFiscalPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
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
    object CdsNotaFiscalNF_TIPO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'NF_TIPO_CC'
      Calculated = True
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'NF_STATUS_CC'
      Size = 3
      Calculated = True
    end
    object CdsNotaFiscalOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNotaFiscalOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsNotaFiscalOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_TIPODOC: TStringField
      FieldName = 'NF_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsNotaFiscalNF_MODELO_NF: TStringField
      FieldName = 'NF_MODELO_NF'
      Size = 2
    end
    object CdsNotaFiscalNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 3
    end
    object CdsNotaFiscalNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object CdsNotaFiscalNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsNotaFiscalNF_DESP_IMPORT: TFMTBCDField
      FieldName = 'NF_DESP_IMPORT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_STATUS_NFE: TStringField
      FieldName = 'NF_STATUS_NFE'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_ENVIADO_NFE_EMAIL: TStringField
      FieldName = 'NF_ENVIADO_NFE_EMAIL'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_EMAIL_ENVIO_NFE: TStringField
      FieldName = 'NF_EMAIL_ENVIO_NFE'
      Size = 60
    end
    object CdsNotaFiscalNF_LOTE_NFE: TIntegerField
      FieldName = 'NF_LOTE_NFE'
    end
    object CdsNotaFiscalNF_PROTOCOLO_NFE: TStringField
      FieldName = 'NF_PROTOCOLO_NFE'
    end
    object CdsNotaFiscalNF_PROTOCOLO_NFE_CANC: TStringField
      FieldName = 'NF_PROTOCOLO_NFE_CANC'
    end
    object CdsNotaFiscalNF_PROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'NF_PROTOCOLO_AUTORIZACAO'
      Size = 60
    end
    object CdsNotaFiscalNF_DATA_AUTORIZACAO: TDateField
      FieldName = 'NF_DATA_AUTORIZACAO'
    end
    object CdsNotaFiscalNF_HORA_AUTORIZACAO: TTimeField
      FieldName = 'NF_HORA_AUTORIZACAO'
    end
    object CdsNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object CdsNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object CdsNotaFiscalSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object CdsNotaFiscalNF_NFSE_VLR_IR: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_IR'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_CSLL: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_CSLL'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_INSS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_INSS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_COFINS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_COFINS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_PIS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_PIS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_DEDUCOES: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_DEDUCOES'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_ISS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_BASE_CALCULO'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_DESCRICAO: TBlobField
      FieldName = 'NF_NFSE_DESCRICAO'
      Size = 1
    end
    object CdsNotaFiscalNF_STATUS_NFSE: TStringField
      FieldName = 'NF_STATUS_NFSE'
      Size = 1
    end
    object CdsNotaFiscalNF_NFSE_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_ALIQUOTA_ISS'
      Precision = 15
    end
    object CdsNotaFiscalNF_EXPORT_UF_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_UF_EMBARQUE'
      Size = 2
    end
    object CdsNotaFiscalNF_EXPORT_LOCAL_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_LOCAL_EMBARQUE'
      Size = 60
    end
    object CdsNotaFiscalNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_VALORTOT_COFINS: TFMTBCDField
      FieldName = 'NF_VALORTOT_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_COMPLEMENTAR: TStringField
      FieldName = 'NF_COMPLEMENTAR'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNFE_STATUS_PRODUCAO: TStringField
      FieldName = 'NFE_STATUS_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
      Size = 1
    end
    object CdsNotaFiscalNF_TIPO_FRETE: TStringField
      FieldName = 'NF_TIPO_FRETE'
      Size = 1
    end
    object CdsNotaFiscalNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VENDA_FATURADA: TStringField
      FieldName = 'NF_VENDA_FATURADA'
      Size = 1
    end
    object CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_DEST'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalIBPT_VLAPROXTRIBUTOS: TFMTBCDField
      FieldName = 'IBPT_VLAPROXTRIBUTOS'
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_UFVEICULO: TStringField
      FieldName = 'NF_UFVEICULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object DsNotaFiscal: TDataSource
    DataSet = CdsNotaFiscal
    Left = 281
    Top = 308
  end
  object SqlItemNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NF_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 21
    Top = 360
    object SqlItemNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlItemNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlItemNotaNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlItemNotaNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlItemNotaNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemNotaNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlItemNotaNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlItemNotaNF_HORA: TTimeField
      FieldName = 'NF_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlItemNotaNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      Precision = 15
    end
    object SqlItemNotaNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      Precision = 15
    end
    object SqlItemNotaNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object SqlItemNotaNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      Precision = 15
    end
    object SqlItemNotaNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      Precision = 15
    end
    object SqlItemNotaNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      Precision = 15
    end
    object SqlItemNotaNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
    end
    object SqlItemNotaNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
    end
    object SqlItemNotaNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      Precision = 15
    end
    object SqlItemNotaNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
    end
    object SqlItemNotaNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
    end
    object SqlItemNotaNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      Precision = 15
    end
    object SqlItemNotaNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      Precision = 15
    end
    object SqlItemNotaNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      Precision = 15
    end
    object SqlItemNotaNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
    end
    object SqlItemNotaNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
    end
    object SqlItemNotaNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
    end
    object SqlItemNotaNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
    end
    object SqlItemNotaNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
    end
    object SqlItemNotaNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object SqlItemNotaNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      Precision = 15
    end
    object SqlItemNotaNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
    end
    object SqlItemNotaNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
    end
    object SqlItemNotaNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object SqlItemNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object SqlItemNotaNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      Precision = 15
    end
    object SqlItemNotaAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlItemNotaAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object SqlItemNotaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlItemNotaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object SqlItemNotaPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object SqlItemNotaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlItemNotaPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 500
    end
    object SqlItemNotaIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlItemNotaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SqlItemNotaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object SqlItemNotaNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
      Size = 6
    end
    object SqlItemNotaNF_CUSTO: TFMTBCDField
      FieldName = 'NF_CUSTO'
      Precision = 15
      Size = 5
    end
    object SqlItemNotaNF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'NF_MARGEM_PRODUTO'
      Precision = 15
      Size = 5
    end
    object SqlItemNotaPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object SqlItemNotaNF_LEI_TRANSPARENCIA: TStringField
      FieldName = 'NF_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object SqlItemNotaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlItemNotaNF_IPI_POR_UNIDADE: TStringField
      FieldName = 'NF_IPI_POR_UNIDADE'
      FixedChar = True
      Size = 1
    end
    object SqlItemNotaPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object SqlItemNotaNF_VALOR_BCICMS_DESTINO: TFMTBCDField
      FieldName = 'NF_VALOR_BCICMS_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SqlItemNotaNF_VALOR_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SqlItemNotaNF_VALOR_PARTILHA_DESTINO: TFMTBCDField
      FieldName = 'NF_VALOR_PARTILHA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SqlItemNotaNF_VALOR_PARTILHA_ORIGEM: TFMTBCDField
      FieldName = 'NF_VALOR_PARTILHA_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SqlItemNotaCEST_COD: TStringField
      FieldName = 'CEST_COD'
      FixedChar = True
      Size = 7
    end
    object SqlItemNotaIBPT_VLAP: TFMTBCDField
      FieldName = 'IBPT_VLAP'
      Precision = 20
      Size = 2
    end
    object SqlItemNotaNF_PERC_FCP: TFMTBCDField
      FieldName = 'NF_PERC_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlItemNotaNF_ALIQ_ICMS_INTERNA_DESTINO: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS_INTERNA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlItemNotaNF_CSOSN: TStringField
      FieldName = 'NF_CSOSN'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlItemNotaNF_ALIQ_ICMS_INTERESTADUAL: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS_INTERESTADUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlItemNotaNF_PERC_PARTILHA_DESTINO: TFMTBCDField
      FieldName = 'NF_PERC_PARTILHA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlItemNotaIBPT_ALIQFED: TFMTBCDField
      FieldName = 'IBPT_ALIQFED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SqlItemNotaIBPT_ALIQEST: TFMTBCDField
      FieldName = 'IBPT_ALIQEST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object DspItemNota: TDataSetProvider
    DataSet = SqlItemNota
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 356
  end
  object CdsItemNota: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'NF_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NF_QTDE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IPIALIQ'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_VLSUBST'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IDESCTO1'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IDESCTO2'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IT_NOTANUMER'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NF_ICMSALIQ'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NF_PMATPRIMA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PED_CODIGO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NF_COMISSAO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR1'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR2'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR3'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR4'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR5'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR6'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR7'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_QTDE_VAR8'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_FLAG_ATUALIZA_ESTOQUE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NF_PRODUTO_AGREGADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NF_HORA'
        DataType = ftTime
      end
      item
        Name = 'NF_IPIVALOR'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ICMSVALOR'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NTP_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'NF_IPIBASE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ICMSBASE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_SUBTRIBASE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ALIQSUBTRIB'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_MVAPERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ICMSREDUCAOPERC'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ALIQDOSIMPLES'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_CREDICMSDOSIMPLES'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IFRETE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ISEGURO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IDESP_ACES'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IBASEISSQN'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IALIQISSQN'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_IVLISSQN'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_CST_PIS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_BASE_PIS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ALIQPIS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_VLPIS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_CST_COFINS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_BASE_COFINS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'NF_ALIQCOFINS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'OPE_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NF_VLCOFINS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'AMX_CODIGO_DESTINO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_CODIGO_ORIGEM'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'USU_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'PRD_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRF_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'PRD_DESCRI'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRD_COMPL_DESCRI'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'IPI_CODIGO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'STB_TRIBUTACAO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PRG_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'NF_PRECO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 6
      end
      item
        Name = 'NF_CUSTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end
      item
        Name = 'NF_MARGEM_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end
      item
        Name = 'PRDL_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'NF_LEI_TRANSPARENCIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NF_IPI_POR_UNIDADE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRDCO_CODIGO_ORIGINAL'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspItemNota'
    StoreDefs = True
    BeforePost = CdsItemNotaBeforePost
    OnCalcFields = CdsItemNotaCalcFields
    Left = 200
    Top = 356
    object CdsItemNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemNotaNF_IT_NOTANUMER: TStringField
      DisplayWidth = 10
      FieldName = 'NF_IT_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsItemNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemNotaNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsItemNotaNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_IPI_CC'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      currency = False
      Calculated = True
    end
    object CdsItemNotaNF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_CC'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      currency = False
      Calculated = True
    end
    object CdsItemNotaNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsItemNotaNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemNotaNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemNotaNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemNotaNF_HORA: TTimeField
      FieldName = 'NF_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemNotaNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      Precision = 15
    end
    object CdsItemNotaNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      Precision = 15
    end
    object CdsItemNotaNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object CdsItemNotaNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      Precision = 15
    end
    object CdsItemNotaNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      Precision = 15
    end
    object CdsItemNotaNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      Precision = 15
    end
    object CdsItemNotaNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
    end
    object CdsItemNotaNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
    end
    object CdsItemNotaNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      Precision = 15
    end
    object CdsItemNotaNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
    end
    object CdsItemNotaNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
    end
    object CdsItemNotaNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      Precision = 15
    end
    object CdsItemNotaNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      Precision = 15
    end
    object CdsItemNotaNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      Precision = 15
    end
    object CdsItemNotaNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
    end
    object CdsItemNotaNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
    end
    object CdsItemNotaNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
    end
    object CdsItemNotaNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
    end
    object CdsItemNotaNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
    end
    object CdsItemNotaNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object CdsItemNotaNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      Precision = 15
    end
    object CdsItemNotaNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
    end
    object CdsItemNotaNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
    end
    object CdsItemNotaNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object CdsItemNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsItemNotaNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      Precision = 15
    end
    object CdsItemNotaAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 5
    end
    object CdsItemNotaAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 5
    end
    object CdsItemNotaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsItemNotaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object CdsItemNotaPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object CdsItemNotaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsItemNotaPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 500
    end
    object CdsItemNotaIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsItemNotaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CdsItemNotaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object CdsItemNotaNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
      Size = 6
    end
    object CdsItemNotaNF_CUSTO: TFMTBCDField
      FieldName = 'NF_CUSTO'
      Precision = 15
      Size = 5
    end
    object CdsItemNotaNF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'NF_MARGEM_PRODUTO'
      Precision = 15
      Size = 5
    end
    object CdsItemNotaPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object CdsItemNotaNF_LEI_TRANSPARENCIA: TStringField
      FieldName = 'NF_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object CdsItemNotaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsItemNotaNF_IPI_POR_UNIDADE: TStringField
      FieldName = 'NF_IPI_POR_UNIDADE'
      FixedChar = True
      Size = 1
    end
    object CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object CdsItemNotaNF_VALOR_BCICMS_DESTINO: TFMTBCDField
      FieldName = 'NF_VALOR_BCICMS_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsItemNotaNF_VALOR_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsItemNotaNF_VALOR_PARTILHA_DESTINO: TFMTBCDField
      FieldName = 'NF_VALOR_PARTILHA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsItemNotaNF_VALOR_PARTILHA_ORIGEM: TFMTBCDField
      FieldName = 'NF_VALOR_PARTILHA_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsItemNotaNF_CSOSN: TStringField
      FieldName = 'NF_CSOSN'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemNotaNF_ALIQ_ICMS_INTERESTADUAL: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS_INTERESTADUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaNF_PERC_PARTILHA_DESTINO: TFMTBCDField
      FieldName = 'NF_PERC_PARTILHA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaIBPT_ALIQFED: TFMTBCDField
      FieldName = 'IBPT_ALIQFED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaIBPT_ALIQEST: TFMTBCDField
      FieldName = 'IBPT_ALIQEST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaCEST_COD: TStringField
      FieldName = 'CEST_COD'
      FixedChar = True
      Size = 7
    end
    object CdsItemNotaIBPT_VLAP: TFMTBCDField
      FieldName = 'IBPT_VLAP'
      Precision = 20
      Size = 2
    end
    object CdsItemNotaNF_PERC_FCP: TFMTBCDField
      FieldName = 'NF_PERC_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaNF_ALIQ_ICMS_INTERNA_DESTINO: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS_INTERNA_DESTINO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object CdsItemNotaNF_TOTAL_PROD_CC: TAggregateField
      DefaultExpression = 'SUM(PRF_PRECO * PRF_QTDE)'
      FieldName = 'NF_TOTAL_PROD_CC'
      Active = True
      DisplayName = ''
    end
  end
  object DsItemNota: TDataSource
    DataSet = CdsItemNota
    Left = 281
    Top = 358
  end
  object SqlEmbalagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select EB.* , PRD_DESCRI from PED_EB02 EB left join PRD0000 on P' +
        'RD0000.PRD_REFER = PED_EB02.PRD_REFER')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 451
    Top = 256
    object SqlEmbalagemPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object SqlEmbalagemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlEmbalagemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DspEmbalagem: TDataSetProvider
    DataSet = SqlEmbalagem
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 539
    Top = 256
  end
  object CdsEmbalagem: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspEmbalagem'
    BeforePost = CdsEmbalagemBeforePost
    Left = 630
    Top = 256
    object CdsEmbalagemPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object CdsEmbalagemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ReadOnly = True
      Size = 50
    end
    object CdsEmbalagemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DsEmbalagem: TDataSource
    DataSet = CdsEmbalagem
    Left = 709
    Top = 257
  end
  object SqlItemEmb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select P1.* ,P2.PRD_DESCRI from PED_EB03 P1 '#39'#13#10'#39'left join PR' +
        'D0000 P2 on (P1.PRD_CODIGO = P2.PRD_CODIGO)')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 447
    Top = 304
    object SqlItemEmbEBI_REGISTRO: TIntegerField
      FieldName = 'EBI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlItemEmbPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlItemEmbPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlItemEmbEBI_QTDE: TIntegerField
      FieldName = 'EBI_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlItemEmbEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlItemEmbPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlItemEmbPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspItemEmb: TDataSetProvider
    DataSet = SqlItemEmb
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 543
    Top = 304
  end
  object CdsItemEmb: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspItemEmb'
    BeforePost = CdsItemEmbBeforePost
    Left = 630
    Top = 304
    object CdsItemEmbEBI_REGISTRO: TIntegerField
      FieldName = 'EBI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemEmbPEB_REGISTRO: TIntegerField
      FieldName = 'PEB_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemEmbPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsItemEmbEBI_QTDE: TIntegerField
      FieldName = 'EBI_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemEmbEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemEmbPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsItemEmbPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsItemEmb: TDataSource
    DataSet = CdsItemEmb
    Left = 709
    Top = 304
  end
  object SqlNF_PED: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NF_PED')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 22
    Top = 404
    object SqlNF_PEDNP_REGISTRO: TIntegerField
      FieldName = 'NP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlNF_PEDNP_NOTANUMER: TStringField
      FieldName = 'NP_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
    object SqlNF_PEDNP_PED_CODIGO: TStringField
      FieldName = 'NP_PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object SqlNF_PEDEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CdsNfPed: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspNf_PED'
    BeforePost = CdsNfPedBeforePost
    Left = 198
    Top = 402
    object CdsNfPedNP_REGISTRO: TIntegerField
      FieldName = 'NP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsNfPedNP_NOTANUMER: TStringField
      FieldName = 'NP_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
    object CdsNfPedNP_PED_CODIGO: TStringField
      FieldName = 'NP_PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object CdsNfPedEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspNf_PED: TDataSetProvider
    DataSet = SqlNF_PED
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 109
    Top = 404
  end
  object DsNF_PED: TDataSource
    DataSet = CdsNfPed
    Left = 281
    Top = 404
  end
  object SqlOrdCompra: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from OCP0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 452
    object SqlOrdCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object SqlOrdCompraCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlOrdCompraOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOrdCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlOrdCompraOCP_DTEMIS: TSQLTimeStampField
      FieldName = 'OCP_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOrdCompraOCP_DTENTREGA: TSQLTimeStampField
      FieldName = 'OCP_DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOrdCompraOCP_REQUERENTE: TStringField
      FieldName = 'OCP_REQUERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOrdCompraOCP_FRETE: TFMTBCDField
      FieldName = 'OCP_FRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraOCP_DESPESAS: TFMTBCDField
      FieldName = 'OCP_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraOCP_ICMS: TFMTBCDField
      FieldName = 'OCP_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraOCP_IPI: TFMTBCDField
      FieldName = 'OCP_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOrdCompraOCP_TPPAGTO: TStringField
      FieldName = 'OCP_TPPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOrdCompraOCP_OBS: TMemoField
      FieldName = 'OCP_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlOrdCompraOCP_TOTAL: TFMTBCDField
      FieldName = 'OCP_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOrdCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOrdCompraOCP_PRAZO: TStringField
      FieldName = 'OCP_PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlOrdCompraOCP_ICMSST: TFMTBCDField
      FieldName = 'OCP_ICMSST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOrdCompraEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlOrdCompraEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
  end
  object DspOrdCompra: TDataSetProvider
    DataSet = SqlOrdCompra
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 452
  end
  object CdsOrdCompra: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspOrdCompra'
    AfterEdit = CdsOrdCompraAfterEdit
    Left = 200
    Top = 452
    object CdsOrdCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CdsOrdCompraCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsOrdCompraOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOrdCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsOrdCompraOCP_DTEMIS: TSQLTimeStampField
      FieldName = 'OCP_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOrdCompraOCP_DTENTREGA: TSQLTimeStampField
      FieldName = 'OCP_DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOrdCompraOCP_REQUERENTE: TStringField
      FieldName = 'OCP_REQUERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOrdCompraOCP_FRETE: TFMTBCDField
      FieldName = 'OCP_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsOrdCompraOCP_DESPESAS: TFMTBCDField
      FieldName = 'OCP_DESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsOrdCompraOCP_ICMS: TFMTBCDField
      FieldName = 'OCP_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsOrdCompraOCP_IPI: TFMTBCDField
      FieldName = 'OCP_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsOrdCompraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOrdCompraOCP_TPPAGTO: TStringField
      FieldName = 'OCP_TPPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOrdCompraOCP_OBS: TMemoField
      FieldName = 'OCP_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsOrdCompraOCP_TOTAL: TFMTBCDField
      FieldName = 'OCP_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsOrdCompraOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOrdCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOrdCompraOCP_PRAZO: TStringField
      FieldName = 'OCP_PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsOrdCompraOCP_ICMSST: TFMTBCDField
      FieldName = 'OCP_ICMSST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOrdCompraEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object CdsOrdCompraEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
  end
  object DsOrdCompra: TDataSource
    DataSet = CdsOrdCompra
    Left = 281
    Top = 452
  end
  object SqlItemCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from OCP_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 447
    Top = 360
    object SqlItemCompraOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlItemCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlItemCompraOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemCompraOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemCompraOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlItemCompraOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlItemCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlItemCompraOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlItemCompraPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspItemCompra: TDataSetProvider
    DataSet = SqlItemCompra
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 543
    Top = 360
  end
  object CdsItemCompra: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspItemCompra'
    Left = 630
    Top = 360
    object CdsItemCompraOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsItemCompraOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemCompraOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemCompraOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemCompraOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemCompraOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsItemCompraPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsItemCompra: TDataSource
    DataSet = CdsItemCompra
    Left = 709
    Top = 360
  end
  object SqlCdsEnf: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from ENF0001')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 500
    object SqlCdsEnfENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsEnfENF_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlCdsEnfENF_SERIE: TStringField
      FieldName = 'ENF_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsEnfENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsEnfENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsEnfPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCdsEnfOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlCdsEnfAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfENF_VLFRETE: TFMTBCDField
      FieldName = 'ENF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_DESP_ACES: TFMTBCDField
      FieldName = 'ENF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'ENF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_BASEICMS: TFMTBCDField
      FieldName = 'ENF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VL_ICMS: TFMTBCDField
      FieldName = 'ENF_VL_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_VLBASESUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'ENF_VL_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_TOT_CSUB: TFMTBCDField
      FieldName = 'ENF_TOT_CSUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VL_IPI: TFMTBCDField
      FieldName = 'ENF_VL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_BASE_IPI: TFMTBCDField
      FieldName = 'ENF_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VL_DESCTO: TFMTBCDField
      FieldName = 'ENF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_OBS_NOTA: TStringField
      FieldName = 'ENF_OBS_NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object SqlCdsEnfENF_INTERNO: TStringField
      FieldName = 'ENF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEnfENF_CANCELADA: TStringField
      FieldName = 'ENF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEnfEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCdsEnfENF_TIPO_FRETE: TIntegerField
      FieldName = 'ENF_TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsEnfOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEnfENF_TIPO_NF_ENTRADA: TStringField
      FieldName = 'ENF_TIPO_NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEnfENF_MODELO_NF: TStringField
      FieldName = 'ENF_MODELO_NF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCdsEnfENF_CHAVE_NFE: TStringField
      FieldName = 'ENF_CHAVE_NFE'
      EditMask = '99.99.99.99.99.999.999/9999-99-999.999.999-999-999.999.999-9;0;_'
      Size = 60
    end
    object SqlCdsEnfENF_VLPIS: TFMTBCDField
      FieldName = 'ENF_VLPIS'
      Precision = 15
    end
    object SqlCdsEnfENF_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_VLCOFINS'
      Precision = 15
    end
    object SqlCdsEnfENF_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_ALIQPIS'
      Precision = 15
    end
    object SqlCdsEnfENF_CHAVE_NFESE: TStringField
      FieldName = 'ENF_CHAVE_NFESE'
      FixedChar = True
      Size = 60
    end
    object SqlCdsEnfENF_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object SqlCdsEnfENF_DADOS_ADICIONAIS: TMemoField
      FieldName = 'ENF_DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsEnfENF_FECHADO_PROJETO_OBRA: TStringField
      FieldName = 'ENF_FECHADO_PROJETO_OBRA'
      FixedChar = True
      Size = 1
    end
    object SqlCdsEnfENF_FRETEPARTICIPATOT: TStringField
      FieldName = 'ENF_FRETEPARTICIPATOT'
      Size = 1
    end
    object SqlCdsEnfENF_XML: TBlobField
      FieldName = 'ENF_XML'
      Size = 1
    end
    object SqlCdsEnfPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsEnfENF_INDUSTRIALIZACAO: TStringField
      FieldName = 'ENF_INDUSTRIALIZACAO'
      Size = 1
    end
    object SqlCdsEnfENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEnfENF_MODALIDADE: TStringField
      FieldName = 'ENF_MODALIDADE'
      Size = 1
    end
    object SqlCdsEnfENF_MODALIDADE_DESCR: TStringField
      FieldKind = fkCalculated
      FieldName = 'ENF_MODALIDADE_DESCR'
      Calculated = True
    end
    object SqlCdsEnfENF_VLFRETEPORFORA: TFMTBCDField
      FieldName = 'ENF_VLFRETEPORFORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VLRDIFICMS: TFMTBCDField
      FieldName = 'ENF_VLRDIFICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_VLOUTROS: TFMTBCDField
      FieldName = 'ENF_VLOUTROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsEnfENF_DADOS_ADICIONAIS_FISCO: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS_FISCO'
      Size = 1
    end
    object SqlCdsEnfEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlCdsEnfEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object SqlCdsEnfENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      Precision = 18
      Size = 5
    end
    object SqlCdsEnfENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      Precision = 18
      Size = 5
    end
    object SqlCdsEnfENF_PESO_L: TFMTBCDField
      FieldName = 'ENF_PESO_L'
      Precision = 18
      Size = 5
    end
  end
  object DspEnf: TDataSetProvider
    DataSet = SqlCdsEnf
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 500
  end
  object CdsEnf: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspEnf'
    BeforeEdit = CdsEnfBeforeEdit
    BeforePost = CdsEnfBeforePost
    BeforeCancel = CdsEnfBeforeCancel
    Left = 200
    Top = 500
    object CdsEnfENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEnfENF_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEnfENF_SERIE: TStringField
      FieldName = 'ENF_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEnfENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEnfENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEnfPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsEnfOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsEnfAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfENF_VLFRETE: TFMTBCDField
      FieldName = 'ENF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_DESP_ACES: TFMTBCDField
      FieldName = 'ENF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'ENF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_BASEICMS: TFMTBCDField
      FieldName = 'ENF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsEnfENF_VL_ICMS: TFMTBCDField
      FieldName = 'ENF_VL_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsEnfENF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_VLBASESUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'ENF_VL_SUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_TOT_CSUB: TFMTBCDField
      FieldName = 'ENF_TOT_CSUB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_VL_IPI: TFMTBCDField
      FieldName = 'ENF_VL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_BASE_IPI: TFMTBCDField
      FieldName = 'ENF_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_VL_DESCTO: TFMTBCDField
      FieldName = 'ENF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsEnfENF_OBS_NOTA: TStringField
      FieldName = 'ENF_OBS_NOTA'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object CdsEnfENF_INTERNO: TStringField
      FieldName = 'ENF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEnfENF_CANCELADA: TStringField
      FieldName = 'ENF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEnfEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsEnfENF_TIPO_FRETE: TIntegerField
      FieldName = 'ENF_TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEnfOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEnfENF_TIPO_NF_ENTRADA: TStringField
      FieldName = 'ENF_TIPO_NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEnfENF_MODELO_NF: TStringField
      FieldName = 'ENF_MODELO_NF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEnfENF_CHAVE_NFE: TStringField
      FieldName = 'ENF_CHAVE_NFE'
      EditMask = '99.99.99.99.99.999.999/9999-99-999.999.999-999-999.999.999-9;0;_'
      Size = 60
    end
    object CdsEnfENF_VLPIS: TFMTBCDField
      FieldName = 'ENF_VLPIS'
      Precision = 15
    end
    object CdsEnfENF_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_VLCOFINS'
      Precision = 15
    end
    object CdsEnfENF_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_ALIQPIS'
      Precision = 15
    end
    object CdsEnfENF_CHAVE_NFESE: TStringField
      FieldName = 'ENF_CHAVE_NFESE'
      FixedChar = True
      Size = 60
    end
    object CdsEnfENF_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsEnfENF_DADOS_ADICIONAIS: TMemoField
      FieldName = 'ENF_DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object CdsEnfENF_FECHADO_PROJETO_OBRA: TStringField
      FieldName = 'ENF_FECHADO_PROJETO_OBRA'
      FixedChar = True
      Size = 1
    end
    object CdsEnfENF_FRETEPARTICIPATOT: TStringField
      FieldName = 'ENF_FRETEPARTICIPATOT'
      Size = 1
    end
    object CdsEnfENF_XML: TBlobField
      FieldName = 'ENF_XML'
      Size = 1
    end
    object CdsEnfPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsEnfENF_INDUSTRIALIZACAO: TStringField
      FieldName = 'ENF_INDUSTRIALIZACAO'
      Size = 1
    end
    object CdsEnfENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEnfENF_MODALIDADE: TStringField
      FieldName = 'ENF_MODALIDADE'
      Size = 1
    end
    object CdsEnfENF_MODALIDADE_DESCR: TStringField
      FieldKind = fkCalculated
      FieldName = 'ENF_MODALIDADE_DESCR'
      Calculated = True
    end
    object CdsEnfENF_VLFRETEPORFORA: TFMTBCDField
      FieldName = 'ENF_VLFRETEPORFORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEnfENF_VLRDIFICMS: TFMTBCDField
      FieldName = 'ENF_VLRDIFICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEnfENF_VLOUTROS: TFMTBCDField
      FieldName = 'ENF_VLOUTROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsEnfENF_DADOS_ADICIONAIS_FISCO: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS_FISCO'
      Size = 1
    end
    object CdsEnfEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object CdsEnfEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object CdsEnfENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsEnfENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsEnfENF_PESO_L: TFMTBCDField
      FieldName = 'ENF_PESO_L'
      Precision = 18
      Size = 5
    end
  end
  object DsEnf: TDataSource
    DataSet = CdsEnf
    Left = 281
    Top = 500
  end
  object SqlCdsEnfComp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ENF_COMP')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 447
    Top = 408
    object SqlCdsEnfCompENP_REGISTRO: TIntegerField
      FieldName = 'ENP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsEnfCompENF_NOTANUMER: TStringField
      FieldName = 'ENF_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SqlCdsEnfCompOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SqlCdsEnfCompFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCdsEnfCompEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspEnfComp: TDataSetProvider
    DataSet = SqlCdsEnfComp
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 543
    Top = 408
  end
  object CdsEnfComp: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspEnfComp'
    Left = 630
    Top = 408
    object CdsEnfCompENP_REGISTRO: TIntegerField
      FieldName = 'ENP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEnfCompENF_NOTANUMER: TStringField
      FieldName = 'ENF_NOTANUMER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsEnfCompOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsEnfCompFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsEnfCompEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsEnfComp: TDataSource
    DataSet = CdsEnfComp
    Left = 709
    Top = 408
  end
  object SqlCdsItemEnf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ENF_IT01')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 39
    Top = 548
    object SqlCdsItemEnfENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsItemEnfENF_IT_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_IT_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object SqlCdsItemEnfOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object SqlCdsItemEnfENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsItemEnfENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsItemEnfENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsItemEnfENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsItemEnfFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCdsItemEnfAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsItemEnfEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsItemEnfPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsItemEnfENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      Precision = 15
    end
    object SqlCdsItemEnfENF_UNIDADE_TRABALHO: TFMTBCDField
      FieldName = 'ENF_UNIDADE_TRABALHO'
      Precision = 15
    end
    object SqlCdsItemEnfENF_LOTE: TStringField
      FieldName = 'ENF_LOTE'
      Size = 15
    end
    object SqlCdsItemEnfENF_ICMS: TFMTBCDField
      FieldName = 'ENF_ICMS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsItemEnfENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_BASEIPI: TFMTBCDField
      FieldName = 'ENF_IT_BASEIPI'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_NUM_DI: TFMTBCDField
      FieldName = 'ENF_IT_NUM_DI'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_NCM: TIntegerField
      FieldName = 'ENF_IT_NCM'
    end
    object SqlCdsItemEnfENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_BASEICMS: TFMTBCDField
      FieldName = 'ENF_IT_BASEICMS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_BASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_BASESUBTRIB'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_VLSUBTRIB'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_ALIQSUBTRIB'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_ISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ISSQN'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_ALIQISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ALIQISSQN'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLISSQN: TFMTBCDField
      FieldName = 'ENF_IT_VLISSQN'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQPIS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLPIS: TFMTBCDField
      FieldName = 'ENF_IT_VLPIS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQCOFINS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_IT_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_VLCOFINS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_CST_PIS: TFMTBCDField
      FieldName = 'ENF_CST_PIS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_BASEPIS: TFMTBCDField
      FieldName = 'ENF_BASEPIS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_CST_COFINS: TFMTBCDField
      FieldName = 'ENF_CST_COFINS'
      Precision = 15
    end
    object SqlCdsItemEnfENF_BASECOFINS: TFMTBCDField
      FieldName = 'ENF_BASECOFINS'
      Precision = 15
    end
    object SqlCdsItemEnfREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
    object SqlCdsItemEnfPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspItemEnf: TDataSetProvider
    DataSet = SqlCdsItemEnf
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 548
  end
  object CdsItemEnf: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspItemEnf'
    BeforeEdit = CdsEnfBeforeEdit
    BeforeCancel = CdsEnfBeforeCancel
    Left = 207
    Top = 548
    object CdsItemEnfENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemEnfENF_IT_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_IT_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object CdsItemEnfOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsItemEnfENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemEnfENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemEnfENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemEnfENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemEnfFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsItemEnfAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemEnfEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemEnfPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object CdsItemEnfENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      Precision = 15
    end
    object CdsItemEnfENF_UNIDADE_TRABALHO: TFMTBCDField
      FieldName = 'ENF_UNIDADE_TRABALHO'
      Precision = 15
    end
    object CdsItemEnfENF_LOTE: TStringField
      FieldName = 'ENF_LOTE'
      Size = 15
    end
    object CdsItemEnfENF_ICMS: TFMTBCDField
      FieldName = 'ENF_ICMS'
      Precision = 15
    end
    object CdsItemEnfENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object CdsItemEnfENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      Precision = 15
    end
    object CdsItemEnfENF_IT_BASEIPI: TFMTBCDField
      FieldName = 'ENF_IT_BASEIPI'
      Precision = 15
    end
    object CdsItemEnfENF_IT_NUM_DI: TFMTBCDField
      FieldName = 'ENF_IT_NUM_DI'
      Precision = 15
    end
    object CdsItemEnfENF_IT_NCM: TIntegerField
      FieldName = 'ENF_IT_NCM'
    end
    object CdsItemEnfENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 15
    end
    object CdsItemEnfENF_IT_BASEICMS: TFMTBCDField
      FieldName = 'ENF_IT_BASEICMS'
      Precision = 15
    end
    object CdsItemEnfENF_IT_BASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_BASESUBTRIB'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_VLSUBTRIB'
      Precision = 15
    end
    object CdsItemEnfENF_IT_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_ALIQSUBTRIB'
      Precision = 15
    end
    object CdsItemEnfENF_IT_ISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ISSQN'
      Precision = 15
    end
    object CdsItemEnfENF_IT_ALIQISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ALIQISSQN'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLISSQN: TFMTBCDField
      FieldName = 'ENF_IT_VLISSQN'
      Precision = 15
    end
    object CdsItemEnfENF_IT_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQPIS'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLPIS: TFMTBCDField
      FieldName = 'ENF_IT_VLPIS'
      Precision = 15
    end
    object CdsItemEnfENF_IT_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQCOFINS'
      Precision = 15
    end
    object CdsItemEnfENF_IT_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_VLCOFINS'
      Precision = 15
    end
    object CdsItemEnfENF_CST_PIS: TFMTBCDField
      FieldName = 'ENF_CST_PIS'
      Precision = 15
    end
    object CdsItemEnfENF_BASEPIS: TFMTBCDField
      FieldName = 'ENF_BASEPIS'
      Precision = 15
    end
    object CdsItemEnfENF_CST_COFINS: TFMTBCDField
      FieldName = 'ENF_CST_COFINS'
      Precision = 15
    end
    object CdsItemEnfENF_BASECOFINS: TFMTBCDField
      FieldName = 'ENF_BASECOFINS'
      Precision = 15
    end
    object CdsItemEnfREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
    object CdsItemEnfPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsItemEnf: TDataSource
    DataSet = CdsItemEnf
    Left = 280
    Top = 550
  end
  object SqlPagarParc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select P1.*,BAN_APELIDO from PAG_PC01 P1 EFT JOIN BAN0000 B1 ON ' +
        'P1.BAN_CODIGO = B1.BAN_CODIGO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 449
    Top = 57
    object SqlPagarParcPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPagarParcPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlPagarParcPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPagarParcBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPagarParcPPC_BANCO: TStringField
      FieldName = 'PPC_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPagarParcCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarParcPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarParcPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcPPC_STATUS: TStringField
      FieldName = 'PPC_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlPagarParcPPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarParcPPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarParcPPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarParcPPC_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'PPC_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SqlPagarParcPPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarParcPPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPagarParcEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarParcPPC_NOSSONUM: TStringField
      FieldName = 'PPC_NOSSONUM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlPagarParcFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPagarParcPPC_FORMA: TStringField
      FieldName = 'PPC_FORMA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPagarParcBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = []
      Size = 14
    end
    object SqlPagarParcPPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcPPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_EXCLUSAO: TStringField
      FieldName = 'PPC_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcPPC_DATA_EXCLUSAO: TDateField
      FieldName = 'PPC_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlPagarParcPPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'PPC_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'PPC_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPagarParcPPC_NUM_CHEQUE: TStringField
      FieldName = 'PPC_NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlPagarParcPPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'PPC_NUM_CHEQUE_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcPPC_IMP_CHEQUE: TStringField
      FieldName = 'PPC_IMP_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPagarParcPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object SqlPagarParcPPC_REEMBOLSO: TStringField
      FieldName = 'PPC_REEMBOLSO'
      Size = 1
    end
    object SqlPagarParcPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object SqlPagarParcfpg_registro: TIntegerField
      FieldName = 'fpg_registro'
    end
  end
  object DspPagarParc: TDataSetProvider
    DataSet = SqlPagarParc
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 538
    Top = 57
  end
  object CdsPagarParc: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPagarParc'
    BeforeEdit = CdsPagarParcBeforeEdit
    AfterEdit = CdsPagarParcAfterEdit
    BeforePost = CdsPagarParcBeforePost
    OnCalcFields = CdsPagarParcCalcFields
    Left = 630
    Top = 56
    object CdsPagarParcPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPagarParcPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsPagarParcPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPagarParcBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPagarParcPPC_BANCO: TStringField
      FieldName = 'PPC_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPagarParcCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarParcPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarParcPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcPPC_STATUS: TStringField
      FieldName = 'PPC_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsPagarParcPPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsPagarParcPPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsPagarParcPPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsPagarParcPPC_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'PPC_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsPagarParcPPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsPagarParcPPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
      Precision = 15
    end
    object CdsPagarParcEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarParcPPC_NOSSONUM: TStringField
      FieldName = 'PPC_NOSSONUM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsPagarParcFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPagarParcPPC_FORMA: TStringField
      FieldName = 'PPC_FORMA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPagarParcBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = []
      Size = 14
    end
    object CdsPagarParcPPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcPPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcN_PARC_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'N_PARC_CC'
      Size = 5
      Calculated = True
    end
    object CdsPagarParcPPC_EXCLUSAO: TStringField
      FieldName = 'PPC_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcPPC_DATA_EXCLUSAO: TDateField
      FieldName = 'PPC_DATA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcUSU_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000'
    end
    object CdsPagarParcUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsPagarParcPPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'PPC_MOTIVO_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcPPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'PPC_HORA_EXCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPagarParcPPC_NUM_CHEQUE: TStringField
      FieldName = 'PPC_NUM_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPagarParcPPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'PPC_NUM_CHEQUE_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcPPC_IMP_CHEQUE: TStringField
      FieldName = 'PPC_IMP_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPagarParcPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object CdsPagarParcPPC_REEMBOLSO: TStringField
      FieldName = 'PPC_REEMBOLSO'
      Size = 1
    end
    object CdsPagarParcPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object CdsPagarParcfpg_registro: TIntegerField
      FieldName = 'fpg_registro'
    end
  end
  object DsPagarParc: TDataSource
    DataSet = CdsPagarParc
    Left = 709
    Top = 57
  end
  object StpPedido: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_REG_PEDIDO'
        ParamType = ptOutput
        Size = 4
        Value = 0
      end>
    SQLConnection = DataCadastros.SQLConnection1
    StoredProcName = 'RETORNA_PEDIDO'
    Left = 353
    Top = 157
  end
  object StpPedItem: TSQLStoredProc
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
    StoredProcName = 'RETORNA_ITEM_PEDIDO'
    Left = 354
    Top = 208
  end
  object CdsNfeParce: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FAT_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FPC_NUMER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'BAN_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CCT_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PCX_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FPC_DTEMIS'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_NPARCELAS'
        DataType = ftSmallint
      end
      item
        Name = 'FPC_COBNUM'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'FPC_COBTIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_TIPODOC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_SITPAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_STATUS'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FPC_DESCTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_DTDESC'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_VENCTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_PAGTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FPC_IMPDUP'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_JUROS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_MULTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'FPC_VL_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCT_NOVO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FPC_PREVISAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_STATUS_REMESSA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATA_REMESSA'
        DataType = ftDate
      end
      item
        Name = 'BAN_COD_APELIDO'
        DataType = ftInteger
      end
      item
        Name = 'FPC_STATUS_BAIXA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_FORMAPAGTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FPC_DESCONTADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATADESCTO'
        DataType = ftDate
      end
      item
        Name = 'FPC_CONFIRMADESCTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_CONFIRMADEVOLUCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATADEVOLUCAO'
        DataType = ftDate
      end
      item
        Name = 'FPC_OBS_DESCTO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'FPC_JUROS_DESCTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PAG_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FPC_BANCO_CHEQUE'
        DataType = ftInteger
      end
      item
        Name = 'FPC_NUM_CHEQUE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FPC_NUM_CHEQUE_DV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_CHEQUE_DATA'
        DataType = ftDate
      end
      item
        Name = 'FPC_SACADO_CHEQUE'
        DataType = ftString
        Size = 55
      end
      item
        Name = 'FPC_EXCLUSAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FPC_DATA_EXCLUSAO'
        DataType = ftDate
      end
      item
        Name = 'FPC_HORA_EXCLUSAO'
        DataType = ftTime
      end
      item
        Name = 'FPC_MOTIVO_EXCLUSAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USU_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'USU_LOGIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FPC_VLPARC'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end
      item
        Name = 'FPC_VLPAGO'
        DataType = ftFMTBcd
        Precision = 20
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'CdsNfeParceIndex1'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspNfeParce'
    StoreDefs = True
    AfterEdit = CdsRecParceAfterEdit
    OnCalcFields = CdsRecParceCalcFields
    Left = 620
    Top = 456
    object CdsNfeParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object CdsNfeParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object CdsNfeParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsNfeParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CdsNfeParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsNfeParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsNfeParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object CdsNfeParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object CdsNfeParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 16
    end
    object CdsNfeParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object CdsNfeParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object CdsNfeParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object CdsNfeParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsNfeParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsNfeParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object CdsNfeParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CdsNfeParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object CdsNfeParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsNfeParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object CdsNfeParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNfeParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsNfeParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
    end
    object CdsNfeParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsNfeParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object CdsNfeParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object CdsNfeParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object CdsNfeParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object CdsNfeParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object CdsNfeParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object CdsNfeParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object CdsNfeParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object CdsNfeParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object CdsNfeParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object CdsNfeParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object CdsNfeParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object CdsNfeParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object CdsNfeParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object CdsNfeParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object CdsNfeParceFPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object CdsNfeParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object CdsNfeParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object CdsNfeParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object CdsNfeParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object CdsNfeParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object CdsNfeParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object CdsNfeParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object CdsNfeParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object CdsNfeParceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsNfeParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object CdsNfeParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object CdsNfeParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNfeParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
  end
  object DspNfeParce: TDataSetProvider
    DataSet = SqlNFeParce
    Options = [poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 534
    Top = 455
  end
  object SqlNFeParce: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'selectF1.*,BAN_APELIDOfrom NF_PC01 F1left join BAN0000 B1 on B1.' +
        'BAN_CODIGO = F1.BAN_CODIGO order by FAT_CODIGO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 448
    Top = 455
    object SqlNFeParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlNFeParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlNFeParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlNFeParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlNFeParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlNFeParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlNFeParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlNFeParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlNFeParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 16
    end
    object SqlNFeParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlNFeParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SqlNFeParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlNFeParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlNFeParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object SqlNFeParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlNFeParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlNFeParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlNFeParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlNFeParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlNFeParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlNFeParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 15
    end
    object SqlNFeParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 15
    end
    object SqlNFeParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
    end
    object SqlNFeParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlNFeParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object SqlNFeParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object SqlNFeParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object SqlNFeParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object SqlNFeParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SqlNFeParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SqlNFeParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object SqlNFeParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlNFeParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object SqlNFeParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object SqlNFeParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object SqlNFeParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object SqlNFeParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object SqlNFeParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object SqlNFeParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object SqlNFeParceFPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object SqlNFeParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object SqlNFeParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object SqlNFeParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object SqlNFeParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object SqlNFeParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object SqlNFeParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object SqlNFeParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object SqlNFeParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object SqlNFeParceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlNFeParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object SqlNFeParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 20
      Size = 5
    end
    object SqlNFeParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 20
      Size = 5
    end
  end
  object DsNfeParce: TDataSource
    DataSet = CdsNfeParce
    Left = 705
    Top = 456
  end
end
