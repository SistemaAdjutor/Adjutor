inherited frmBaseDbFaturamento: TfrmBaseDbFaturamento
  Caption = 'frmBaseDbFaturamento'
  ClientWidth = 955
  ExplicitWidth = 971
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  object qRecParce: TSQLQuery [4]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *  from FAT_PC01  WHERE FAT_CODIGO = '#39'-009999'#39)
    SQLConnection = DBConn
    Left = 634
    Top = 76
    object qRecParceFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object qRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 15
    end
    object qRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object qRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object qRecParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object qRecParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object qRecParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object qRecParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object qRecParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object qRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object qRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object qRecParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object qRecParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object qRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object qRecParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 18
      Size = 5
    end
    object qRecParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object qRecParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object qRecParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object qRecParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 18
      Size = 5
    end
    object qRecParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 18
      Size = 5
    end
    object qRecParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 500
    end
    object qRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object qRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object qRecParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 18
      Size = 5
    end
    object qRecParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 18
      Size = 5
    end
    object qRecParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 18
      Size = 5
    end
    object qRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qRecParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object qRecParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object qRecParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object qRecParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object qRecParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object qRecParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object qRecParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object qRecParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object qRecParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object qRecParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object qRecParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object qRecParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object qRecParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object qRecParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 18
      Size = 5
    end
    object qRecParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object qRecParceFPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object qRecParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object qRecParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object qRecParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object qRecParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object qRecParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object qRecParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object qRecParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object qRecParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object qRecParceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object qRecParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object qRecParcePCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object qRecParceFPC_REEMBOLSO: TStringField
      FieldName = 'FPC_REEMBOLSO'
      Size = 1
    end
    object qRecParceFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
  end
  object dspRecParce: TDataSetProvider [5]
    DataSet = qRecParce
    Left = 682
    Top = 88
  end
  object CdsRecParce: TClientDataSet [6]
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspRecParce'
    AfterInsert = CdsRecParceAfterInsert
    Left = 738
    Top = 72
    object CdsRecParceFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object CdsRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 15
    end
    object CdsRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object CdsRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsRecParceFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 3
    end
    object CdsRecParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CdsRecParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsRecParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsRecParceFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object CdsRecParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object CdsRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object CdsRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object CdsRecParceFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object CdsRecParceFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object CdsRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsRecParceFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 18
      Size = 5
    end
    object CdsRecParceFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object CdsRecParceFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CdsRecParceFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object CdsRecParceFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 18
      Size = 5
    end
    object CdsRecParceFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 18
      Size = 5
    end
    object CdsRecParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 500
    end
    object CdsRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object CdsRecParceFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 18
      Size = 5
    end
    object CdsRecParceFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 18
      Size = 5
    end
    object CdsRecParceFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 18
      Size = 5
    end
    object CdsRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsRecParceCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object CdsRecParceFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object CdsRecParceFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object CdsRecParceFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object CdsRecParceBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object CdsRecParceFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object CdsRecParceFPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object CdsRecParceFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object CdsRecParceFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object CdsRecParceFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object CdsRecParceFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object CdsRecParceFPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object CdsRecParceFPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object CdsRecParceFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 18
      Size = 5
    end
    object CdsRecParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object CdsRecParceFPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object CdsRecParceFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object CdsRecParceFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object CdsRecParceFPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object CdsRecParceFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object CdsRecParceFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object CdsRecParceFPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object CdsRecParceFPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object CdsRecParceFPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object CdsRecParceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsRecParceUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object CdsRecParcePCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object CdsRecParceFPC_REEMBOLSO: TStringField
      FieldName = 'FPC_REEMBOLSO'
      Size = 1
    end
    object CdsRecParceFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsRecParceBAN_APELIDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'BAN_APELIDO'
      ProviderFlags = []
      Size = 25
    end
    object CdsRecParceFPG_DESCRICAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FPG_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object CdsRecParceBOTAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'BOTAO'
      ProviderFlags = []
      Size = 1
    end
    object CdsRecParceTotalParc: TAggregateField
      FieldName = 'TotalParc'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,##0.00'
      Expression = 'sum( FPC_VLPARC )'
    end
  end
end
