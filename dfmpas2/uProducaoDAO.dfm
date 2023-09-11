inherited ProducaoDao: TProducaoDao
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  object qLote: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      ' SELECT * from PRD_LOTE '
      'where PRD_CODIGO =:prd_codigo '
      'AND prdl_saldo >0 '
      'ORDER BY PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE')
    Left = 427
    ParamData = <
      item
        Name = 'PRD_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qLotePRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLoteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object qLotePRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
    end
    object qLotePRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      Origin = 'PRDL_DATA_VALIDADE'
    end
    object qLotePRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object qLotePRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Origin = 'PRDL_PRECO_MAXIMO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Origin = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
    object qLotePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 10
    end
    object qLotePRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      Origin = 'PRDL_CADASTRO'
    end
    object qLotePRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      Origin = 'PRDL_DESCRICAO'
      Size = 100
    end
    object qLotePRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      Origin = 'PRDL_CUSTO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_NFE: TStringField
      FieldName = 'PRDL_NFE'
      Origin = 'PRDL_NFE'
      Size = 10
    end
    object qLoteFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 4
    end
    object qLotePRDL_QTDELOTE: TFMTBCDField
      FieldName = 'PRDL_QTDELOTE'
      Origin = 'PRDL_QTDELOTE'
      Precision = 18
      Size = 5
    end
  end
end
