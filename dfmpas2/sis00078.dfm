object FrmBoletoCodBarras: TFrmBoletoCodBarras
  Left = 174
  Top = 101
  Width = 544
  Height = 89
  Caption = '[Boleto]'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CDSBoleto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COD_BANCO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_BANCO_DV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'ESPECIE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'QTDE_MOEDA'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_DOCUMENTO'
        DataType = ftCurrency
      end
      item
        Name = 'DESCONTO'
        DataType = ftCurrency
      end
      item
        Name = 'OUTRAS_DEDUCOES'
        DataType = ftCurrency
      end
      item
        Name = 'OUTROS_ACRESCIMOS'
        DataType = ftCurrency
      end
      item
        Name = 'MORA_JUROS'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_COBRADO'
        DataType = ftCurrency
      end
      item
        Name = 'NOSSO_NUMERO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO_DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_CENDENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DATA_DOCUMENTO'
        DataType = ftDate
      end
      item
        Name = 'DATA_PROCESSAMENTO'
        DataType = ftDate
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AGENCIA_DV'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CONTA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CONTA_DV'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CAMPO_LIVRE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGO_BARRAS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LINHA_CODIGO'
        DataType = ftString
        Size = 55
      end
      item
        Name = 'CEDENTE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'LOCAL_PAGAMENTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ESPECIE_DOC'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ACEITE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CARTEIRA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CODIGO_CARTEIRA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'INSTRUCAO1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INSTRUCAO10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SACADO'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'SACADO_CNPF_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'SACADO_ENDERECO'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'SACADO_BAIRRO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'SACADO_CIDADE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'SACADO_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SACADO_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'AVALISTA'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'ORDERNADO_DUPLICATA'
        Fields = 'NUMERO_DOCUMENTO'
      end>
    IndexName = 'ORDERNADO_DUPLICATA'
    Params = <>
    StoreDefs = True
    Left = 8
    object CDSBoletoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object CDSBoletoCOD_BANCO_DV: TStringField
      FieldName = 'COD_BANCO_DV'
      Size = 1
    end
    object CDSBoletoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object CDSBoletoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 4
    end
    object CDSBoletoQTDE_MOEDA: TCurrencyField
      FieldName = 'QTDE_MOEDA'
    end
    object CDSBoletoVALOR_DOCUMENTO: TCurrencyField
      FieldName = 'VALOR_DOCUMENTO'
    end
    object CDSBoletoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object CDSBoletoOUTRAS_DEDUCOES: TCurrencyField
      FieldName = 'OUTRAS_DEDUCOES'
    end
    object CDSBoletoOUTROS_ACRESCIMOS: TCurrencyField
      FieldName = 'OUTROS_ACRESCIMOS'
    end
    object CDSBoletoMORA_JUROS: TCurrencyField
      FieldName = 'MORA_JUROS'
    end
    object CDSBoletoVALOR_COBRADO: TCurrencyField
      FieldName = 'VALOR_COBRADO'
    end
    object CDSBoletoNOSSO_NUMERO: TStringField
      DisplayWidth = 20
      FieldName = 'NOSSO_NUMERO'
    end
    object CDSBoletoNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
    end
    object CDSBoletoCODIGO_CENDENTE: TStringField
      FieldName = 'CODIGO_CENDENTE'
      Size = 30
    end
    object CDSBoletoDATA_DOCUMENTO: TDateField
      FieldName = 'DATA_DOCUMENTO'
    end
    object CDSBoletoDATA_PROCESSAMENTO: TDateField
      FieldName = 'DATA_PROCESSAMENTO'
    end
    object CDSBoletoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object CDSBoletoAGENCIA_DV: TStringField
      FieldName = 'AGENCIA_DV'
      Size = 3
    end
    object CDSBoletoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object CDSBoletoCONTA_DV: TStringField
      FieldName = 'CONTA_DV'
      Size = 3
    end
    object CDSBoletoCAMPO_LIVRE: TStringField
      FieldName = 'CAMPO_LIVRE'
      Size = 30
    end
    object CDSBoletoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 50
    end
    object CDSBoletoLINHA_CODIGO: TStringField
      FieldName = 'LINHA_CODIGO'
      Size = 55
    end
    object CDSBoletoCEDENTE: TStringField
      FieldName = 'CEDENTE'
      Size = 45
    end
    object CDSBoletoLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 60
    end
    object CDSBoletoESPECIE_DOC: TStringField
      FieldName = 'ESPECIE_DOC'
      Size = 5
    end
    object CDSBoletoACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 4
    end
    object CDSBoletoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 10
    end
    object CDSBoletoCODIGO_CARTEIRA: TStringField
      FieldName = 'CODIGO_CARTEIRA'
      Size = 5
    end
    object CDSBoletoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 100
    end
    object CDSBoletoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 100
    end
    object CDSBoletoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 100
    end
    object CDSBoletoINSTRUCAO4: TStringField
      FieldName = 'INSTRUCAO4'
      Size = 100
    end
    object CDSBoletoINSTRUCAO5: TStringField
      FieldName = 'INSTRUCAO5'
      Size = 100
    end
    object CDSBoletoINSTRUCAO6: TStringField
      FieldName = 'INSTRUCAO6'
      Size = 100
    end
    object CDSBoletoINSTRUCAO7: TStringField
      FieldName = 'INSTRUCAO7'
      Size = 100
    end
    object CDSBoletoINSTRUCAO8: TStringField
      FieldName = 'INSTRUCAO8'
      Size = 100
    end
    object CDSBoletoINSTRUCAO9: TStringField
      FieldName = 'INSTRUCAO9'
      Size = 100
    end
    object CDSBoletoINSTRUCAO10: TStringField
      FieldName = 'INSTRUCAO10'
      Size = 100
    end
    object CDSBoletoSACADO: TStringField
      FieldName = 'SACADO'
      Size = 45
    end
    object CDSBoletoSACADO_CNPF_CNPJ: TStringField
      FieldName = 'SACADO_CNPF_CNPJ'
      Size = 14
    end
    object CDSBoletoSACADO_ENDERECO: TStringField
      FieldName = 'SACADO_ENDERECO'
      Size = 45
    end
    object CDSBoletoSACADO_BAIRRO: TStringField
      FieldName = 'SACADO_BAIRRO'
      Size = 25
    end
    object CDSBoletoSACADO_CIDADE: TStringField
      FieldName = 'SACADO_CIDADE'
      Size = 25
    end
    object CDSBoletoSACADO_UF: TStringField
      FieldName = 'SACADO_UF'
      Size = 2
    end
    object CDSBoletoSACADO_CEP: TStringField
      FieldName = 'SACADO_CEP'
      Size = 8
    end
    object CDSBoletoAVALISTA: TStringField
      FieldName = 'AVALISTA'
      Size = 60
    end
  end
  object DsBoletosBarras: TDataSource
    DataSet = CDSBoleto
    Left = 36
  end
  object ppDBPBoletoBarras: TppDBPipeline
    DataSource = DsBoletosBarras
    UserName = 'DBPBoletoBarras'
    Left = 64
    object ppDBPBoletoBarrasppField1: TppField
      FieldAlias = 'COD_BANCO'
      FieldName = 'COD_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField2: TppField
      FieldAlias = 'COD_BANCO_DV'
      FieldName = 'COD_BANCO_DV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField3: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField4: TppField
      FieldAlias = 'ESPECIE'
      FieldName = 'ESPECIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField5: TppField
      FieldAlias = 'QTDE_MOEDA'
      FieldName = 'QTDE_MOEDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField6: TppField
      FieldAlias = 'VALOR_DOCUMENTO'
      FieldName = 'VALOR_DOCUMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField7: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField8: TppField
      FieldAlias = 'OUTRAS_DEDUCOES'
      FieldName = 'OUTRAS_DEDUCOES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField9: TppField
      FieldAlias = 'OUTROS_ACRESCIMOS'
      FieldName = 'OUTROS_ACRESCIMOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField10: TppField
      FieldAlias = 'MORA_JUROS'
      FieldName = 'MORA_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField11: TppField
      FieldAlias = 'VALOR_COBRADO'
      FieldName = 'VALOR_COBRADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField12: TppField
      FieldAlias = 'NOSSO_NUMERO'
      FieldName = 'NOSSO_NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField13: TppField
      FieldAlias = 'NUMERO_DOCUMENTO'
      FieldName = 'NUMERO_DOCUMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField14: TppField
      FieldAlias = 'CODIGO_CENDENTE'
      FieldName = 'CODIGO_CENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField15: TppField
      FieldAlias = 'DATA_DOCUMENTO'
      FieldName = 'DATA_DOCUMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField16: TppField
      FieldAlias = 'DATA_PROCESSAMENTO'
      FieldName = 'DATA_PROCESSAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField17: TppField
      FieldAlias = 'AGENCIA'
      FieldName = 'AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField18: TppField
      FieldAlias = 'AGENCIA_DV'
      FieldName = 'AGENCIA_DV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField19: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField20: TppField
      FieldAlias = 'CONTA_DV'
      FieldName = 'CONTA_DV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField21: TppField
      FieldAlias = 'CAMPO_LIVRE'
      FieldName = 'CAMPO_LIVRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField22: TppField
      FieldAlias = 'CODIGO_BARRAS'
      FieldName = 'CODIGO_BARRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField23: TppField
      FieldAlias = 'LINHA_CODIGO'
      FieldName = 'LINHA_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField24: TppField
      FieldAlias = 'CEDENTE'
      FieldName = 'CEDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField25: TppField
      FieldAlias = 'LOCAL_PAGAMENTO'
      FieldName = 'LOCAL_PAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField26: TppField
      FieldAlias = 'ESPECIE_DOC'
      FieldName = 'ESPECIE_DOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField27: TppField
      FieldAlias = 'ACEITE'
      FieldName = 'ACEITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField28: TppField
      FieldAlias = 'CARTEIRA'
      FieldName = 'CARTEIRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField29: TppField
      FieldAlias = 'CODIGO_CARTEIRA'
      FieldName = 'CODIGO_CARTEIRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField30: TppField
      FieldAlias = 'INSTRUCAO1'
      FieldName = 'INSTRUCAO1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField31: TppField
      FieldAlias = 'INSTRUCAO2'
      FieldName = 'INSTRUCAO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField32: TppField
      FieldAlias = 'INSTRUCAO3'
      FieldName = 'INSTRUCAO3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField33: TppField
      FieldAlias = 'INSTRUCAO4'
      FieldName = 'INSTRUCAO4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField34: TppField
      FieldAlias = 'INSTRUCAO5'
      FieldName = 'INSTRUCAO5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField35: TppField
      FieldAlias = 'INSTRUCAO6'
      FieldName = 'INSTRUCAO6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField36: TppField
      FieldAlias = 'INSTRUCAO7'
      FieldName = 'INSTRUCAO7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField37: TppField
      FieldAlias = 'INSTRUCAO8'
      FieldName = 'INSTRUCAO8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField38: TppField
      FieldAlias = 'INSTRUCAO9'
      FieldName = 'INSTRUCAO9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField39: TppField
      FieldAlias = 'INSTRUCAO10'
      FieldName = 'INSTRUCAO10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField40: TppField
      FieldAlias = 'SACADO'
      FieldName = 'SACADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField41: TppField
      FieldAlias = 'SACADO_CNPF_CNPJ'
      FieldName = 'SACADO_CNPF_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField42: TppField
      FieldAlias = 'SACADO_ENDERECO'
      FieldName = 'SACADO_ENDERECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField43: TppField
      FieldAlias = 'SACADO_BAIRRO'
      FieldName = 'SACADO_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField44: TppField
      FieldAlias = 'SACADO_CIDADE'
      FieldName = 'SACADO_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField45: TppField
      FieldAlias = 'SACADO_UF'
      FieldName = 'SACADO_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField46: TppField
      FieldAlias = 'SACADO_CEP'
      FieldName = 'SACADO_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPBoletoBarrasppField47: TppField
      FieldAlias = 'AVALISTA'
      FieldName = 'AVALISTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
  end
  object RpBoleto: TppReport
    AutoStop = False
    DataPipeline = ppDBPBoletoBarras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1200
    PrinterSetup.mmMarginLeft = 6000
    PrinterSetup.mmMarginRight = 1350
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 305000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\JobProgram\CaptarePlus\Dfmpas\boleto399.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 92
    Version = '7.01'
    mmColumnWidth = 200650
    DataPipelineName = 'ppDBPBoletoBarras'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 145521
      mmPrintPosition = 0
      object ppImgBanco1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        mmHeight = 6350
        mmLeft = 4763
        mmTop = 2646
        mmWidth = 40217
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6615
        mmLeft = 45244
        mmTop = 2117
        mmWidth = 265
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12965
        mmLeft = 60325
        mmTop = 2381
        mmWidth = 265
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Recibo do Sacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 66940
        mmTop = 4498
        mmWidth = 26988
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Position = lpRight
        Weight = 0.75
        mmHeight = 37042
        mmLeft = 101071
        mmTop = 2381
        mmWidth = 1588
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 4763
        mmTop = 8996
        mmWidth = 96044
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 4763
        mmTop = 15081
        mmWidth = 96044
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label2'
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 9525
        mmWidth = 11642
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 23813
        mmTop = 9260
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Ag'#234'ncia / C'#243'digo Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 24871
        mmTop = 9525
        mmWidth = 25929
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5821
        mmLeft = 76465
        mmTop = 9260
        mmWidth = 529
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Esp'#233'cie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 61119
        mmTop = 9525
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 77523
        mmTop = 9525
        mmWidth = 11642
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 4763
        mmTop = 21431
        mmWidth = 96044
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = '(=) Valor do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 15610
        mmWidth = 23283
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12171
        mmLeft = 32544
        mmTop = 15346
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = '(-) Desconto / Abatimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 33867
        mmTop = 15610
        mmWidth = 24871
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12171
        mmLeft = 66940
        mmTop = 15346
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = '(+) Mora / Multa / Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 68263
        mmTop = 15610
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = '(=) Valor cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 21960
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 33867
        mmTop = 21960
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'N'#250'mero do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 68263
        mmTop = 21960
        mmWidth = 22754
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line101'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 4763
        mmTop = 27517
        mmWidth = 96044
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 4763
        mmTop = 33338
        mmWidth = 96044
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 27781
        mmWidth = 7673
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Autentica'#231#227'o mec'#226'nica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 39952
        mmTop = 33867
        mmWidth = 22754
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = '(=) Valor do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 104511
        mmTop = 15610
        mmWidth = 23283
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 133615
        mmTop = 15346
        mmWidth = 1588
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line102'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 103981
        mmTop = 21431
        mmWidth = 95515
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 135996
        mmTop = 15610
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 104511
        mmTop = 21960
        mmWidth = 7673
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 103981
        mmTop = 27517
        mmWidth = 95515
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Assinatura do Recebedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 104511
        mmTop = 27781
        mmWidth = 24871
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5821
        mmLeft = 172244
        mmTop = 27517
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Data de Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 176477
        mmTop = 27781
        mmWidth = 16404
        BandType = 4
      end
      object ppImgBanco2: TppImage
        UserName = 'ImgBanco1'
        MaintainAspectRatio = False
        mmHeight = 6350
        mmLeft = 103981
        mmTop = 2646
        mmWidth = 40217
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6615
        mmLeft = 144463
        mmTop = 2381
        mmWidth = 265
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12965
        mmLeft = 159544
        mmTop = 2381
        mmWidth = 265
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Recibo de Entrega'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 4763
        mmWidth = 27252
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 103981
        mmTop = 8996
        mmWidth = 95515
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 103981
        mmTop = 15081
        mmWidth = 95515
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 104511
        mmTop = 9525
        mmWidth = 11642
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5821
        mmLeft = 123031
        mmTop = 9260
        mmWidth = 2910
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Ag'#234'ncia / C'#243'digo Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 124090
        mmTop = 9525
        mmWidth = 25929
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5556
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 529
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Esp'#233'cie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 160338
        mmTop = 9525
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 176742
        mmTop = 9525
        mmWidth = 11642
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 103717
        mmTop = 33338
        mmWidth = 95515
        BandType = 4
      end
      object ppImgBanco3: TppImage
        UserName = 'ImgBanco2'
        MaintainAspectRatio = False
        mmHeight = 6615
        mmLeft = 4763
        mmTop = 42863
        mmWidth = 42069
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line21'
        Weight = 0.75
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 49477
        mmWidth = 194998
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7144
        mmLeft = 47361
        mmTop = 42333
        mmWidth = 3175
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7144
        mmLeft = 62177
        mmTop = 42333
        mmWidth = 3175
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 5027
        mmTop = 55827
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Local de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 50006
        mmWidth = 20638
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 55298
        mmLeft = 137584
        mmTop = 49477
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 50006
        mmWidth = 11642
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 62177
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 56356
        mmWidth = 8467
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Ag'#234'ncia / C'#243'digo Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 56356
        mmWidth = 25929
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line301'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 68527
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Data do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 62706
        mmWidth = 19579
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12965
        mmLeft = 34131
        mmTop = 62177
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'N'#186' do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 34925
        mmTop = 62706
        mmWidth = 17463
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12700
        mmLeft = 63765
        mmTop = 62177
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Esp'#233'cie Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 65088
        mmTop = 62706
        mmWidth = 12965
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6350
        mmLeft = 85196
        mmTop = 62442
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Aceite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 87577
        mmTop = 62706
        mmWidth = 6085
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 12435
        mmLeft = 97896
        mmTop = 62442
        mmWidth = 529
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Data do Processamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 99484
        mmTop = 62706
        mmWidth = 23813
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 62706
        mmWidth = 14288
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 74877
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Uso do Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2455
        mmLeft = 5292
        mmTop = 69056
        mmWidth = 13462
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Carteira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 34925
        mmTop = 69056
        mmWidth = 7673
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 51329
        mmTop = 68792
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Esp'#233'cie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 52652
        mmTop = 69056
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 65088
        mmTop = 69056
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label4'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 70908
        mmWidth = 3175
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = '(=) Valor do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 69056
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = '(-) Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 75142
        mmWidth = 11906
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 137584
        mmTop = 80433
        mmWidth = 61913
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = '(-) Outras dedu'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 80963
        mmWidth = 19579
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 137584
        mmTop = 86519
        mmWidth = 61913
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = '(+) Mora / Multa / Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 87048
        mmWidth = 22490
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 137848
        mmTop = 92604
        mmWidth = 61913
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = '(+) Outros Acr'#233'scimos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 93134
        mmWidth = 21431
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 137584
        mmTop = 98690
        mmWidth = 61913
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = '(=) Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 99219
        mmWidth = 17463
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line42'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 104775
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Sacado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 105569
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label501'
        Caption = 'CNPJ/CNPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 121973
        mmTop = 105569
        mmWidth = 12435
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 4763
        mmTop = 117740
        mmWidth = 194998
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label502'
        Caption = 'Sacador / Avalista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5292
        mmTop = 114565
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'C'#243'digo de Baixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 138907
        mmTop = 114300
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Autentica'#231#227'o Mec'#226'nica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 121179
        mmTop = 118269
        mmWidth = 22754
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Ficha de Compensa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 146315
        mmTop = 118269
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2469
        mmLeft = 99484
        mmTop = 69056
        mmWidth = 5080
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Instru'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2469
        mmLeft = 5292
        mmTop = 75142
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'VENCIMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 6615
        mmTop = 12171
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ESPECIE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 60854
        mmTop = 12171
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'QTDE_MOEDA'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 76994
        mmTop = 12171
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'VENCIMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 106098
        mmTop = 12171
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'ESPECIE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 160338
        mmTop = 12171
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'QTDE_MOEDA'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 176477
        mmTop = 12171
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'VALOR_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 5292
        mmTop = 18256
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'DESCONTO'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 33867
        mmTop = 18256
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'MORA_JUROS'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 68263
        mmTop = 18256
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'NOSSO_NUMERO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 33867
        mmTop = 24606
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'NUMERO_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 68263
        mmTop = 24606
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'VALOR_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 104511
        mmTop = 18256
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'NOSSO_NUMERO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 135996
        mmTop = 18256
        mmWidth = 61119
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'SACADO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 104511
        mmTop = 24606
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'SACADO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 5292
        mmTop = 30163
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'LOCAL_PAGAMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 6615
        mmTop = 52652
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CEDENTE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 6615
        mmTop = 59002
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'VENCIMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 52652
        mmWidth = 50536
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'NOSSO_NUMERO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 65352
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'DATA_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 6615
        mmTop = 65088
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'NUMERO_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 34925
        mmTop = 65352
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'ESPECIE_DOC'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 65352
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'ACEITE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 85725
        mmTop = 65352
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'DATA_PROCESSAMENTO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 99219
        mmTop = 65352
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'CARTEIRA'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 34925
        mmTop = 71702
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'ESPECIE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 52123
        mmTop = 71702
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'QTDE_MOEDA'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 71702
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 102659
        mmTop = 71702
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'VALOR_DOCUMENTO'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 71702
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'SACADO_CNPF_CNPJ'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '99.999.999/9999-99;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 105569
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'SACADO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 15346
        mmTop = 105569
        mmWidth = 103188
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'SACADO_ENDERECO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 15346
        mmTop = 108479
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'SACADO_BAIRRO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 87048
        mmTop = 108479
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'SACADO_CEP'
        DataPipeline = ppDBPBoletoBarras
        DisplayFormat = '99999\-999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 15346
        mmTop = 111390
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'SACADO_CIDADE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 30163
        mmTop = 111390
        mmWidth = 56092
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'SACADO_UF'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 87048
        mmTop = 111390
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'AVALISTA'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 24342
        mmTop = 114300
        mmWidth = 94192
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText28'
        DataField = 'LINHA_CODIGO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5588
        mmLeft = 62971
        mmTop = 43921
        mmWidth = 135202
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText50'
        DataField = 'COD_BANCO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5503
        mmLeft = 45508
        mmTop = 3440
        mmWidth = 8996
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label27'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5503
        mmLeft = 54240
        mmTop = 3440
        mmWidth = 1524
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText501'
        DataField = 'COD_BANCO_DV'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5503
        mmLeft = 55563
        mmTop = 3440
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText502'
        DataField = 'COD_BANCO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5588
        mmLeft = 144992
        mmTop = 3440
        mmWidth = 8996
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label41'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5503
        mmLeft = 153723
        mmTop = 3440
        mmWidth = 1524
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'COD_BANCO_DV'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5588
        mmLeft = 155046
        mmTop = 3440
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText503'
        DataField = 'COD_BANCO'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5588
        mmLeft = 47890
        mmTop = 43921
        mmWidth = 8996
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5503
        mmLeft = 56621
        mmTop = 43921
        mmWidth = 1524
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'COD_BANCO_DV'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 5588
        mmLeft = 57944
        mmTop = 43921
        mmWidth = 3969
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoSizeFont = False
        BarCodeType = bcInt2of5
        BarColor = clWindowText
        CalcCheckDigit = False
        DataField = 'CODIGO_BARRAS'
        DataPipeline = ppDBPBoletoBarras
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 11113
        mmLeft = 5027
        mmTop = 120650
        mmWidth = 105000
        BandType = 4
        mmBarWidth = 300
        mmWideBarRatio = 55880
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'INSTRUCAO1'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 6615
        mmTop = 78317
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        DataField = 'INSTRUCAO2'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 81492
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'INSTRUCAO3'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 84667
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'INSTRUCAO4'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 87842
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'INSTRUCAO5'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 91017
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'INSTRUCAO6'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 94192
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'INSTRUCAO7'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 97367
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        DataField = 'INSTRUCAO8'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2822
        mmLeft = 6615
        mmTop = 100542
        mmWidth = 129382
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CODIGO_CENDENTE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 24871
        mmTop = 12171
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CODIGO_CENDENTE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 124090
        mmTop = 12171
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CODIGO_CENDENTE'
        DataPipeline = ppDBPBoletoBarras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPBoletoBarras'
        mmHeight = 2910
        mmLeft = 138907
        mmTop = 59002
        mmWidth = 32015
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 4763
        mmTop = 40481
        mmWidth = 193940
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Pen.Style = psDot
        Weight = 0.75
        mmHeight = 265
        mmLeft = 265
        mmTop = 140229
        mmWidth = 199761
        BandType = 4
      end
      object ppTextoRespo: TppLabel
        UserName = 'TextoRespo'
        Caption = 'Texto de Responsabilidade do cedente.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 2540
        mmLeft = 17992
        mmTop = 75142
        mmWidth = 37761
        BandType = 4
      end
    end
    object daDataModule1: TdaDataModule
    end
  end
  object SQLCrcDuplicata: TSQLClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DadosBase0.SQLConnection
    Left = 120
  end
end
