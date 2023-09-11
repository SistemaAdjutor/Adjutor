object DmCfg: TDmCfg
  OldCreateOrder = False
  Height = 580
  Width = 808
  object SqlCdsNF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 8
    object SqlCdsNFCNF_CODIGO: TStringField
      FieldName = 'CNF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsNFCNF_DTCADA: TDateField
      FieldName = 'CNF_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsNFCNF_ATIVO: TStringField
      FieldName = 'CNF_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsNFCNF_FONTE: TStringField
      FieldName = 'CNF_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCdsNFCNF_SERIE: TStringField
      FieldName = 'CNF_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsNFCNF_XSAIDA: TStringField
      FieldName = 'CNF_XSAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_XENTRADA: TStringField
      FieldName = 'CNF_XENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_NUMERONF: TStringField
      FieldName = 'CNF_NUMERONF'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_NATUREZA: TStringField
      FieldName = 'CNF_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CFOP: TStringField
      FieldName = 'CNF_CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_INSCSUBT: TStringField
      FieldName = 'CNF_INSCSUBT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_RAZAO: TStringField
      FieldName = 'CNF_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CNPJ: TStringField
      FieldName = 'CNF_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DTEMISSAO: TStringField
      FieldName = 'CNF_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ENDERECO: TStringField
      FieldName = 'CNF_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_BAIRRO: TStringField
      FieldName = 'CNF_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CEP: TStringField
      FieldName = 'CNF_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DTSAIDA: TStringField
      FieldName = 'CNF_DTSAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CIDADE: TStringField
      FieldName = 'CNF_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FONE: TStringField
      FieldName = 'CNF_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ESTADO: TStringField
      FieldName = 'CNF_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_INSCRESTADUAL: TStringField
      FieldName = 'CNF_INSCRESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_HORASAIDA: TStringField
      FieldName = 'CNF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA1: TStringField
      FieldName = 'CNF_FATURA1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO1: TStringField
      FieldName = 'CNF_VENCTO1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR1: TStringField
      FieldName = 'CNF_VALOR1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA2: TStringField
      FieldName = 'CNF_FATURA2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO2: TStringField
      FieldName = 'CNF_VENCTO2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR2: TStringField
      FieldName = 'CNF_VALOR2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA3: TStringField
      FieldName = 'CNF_FATURA3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO3: TStringField
      FieldName = 'CNF_VENCTO3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR3: TStringField
      FieldName = 'CNF_VALOR3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA4: TStringField
      FieldName = 'CNF_FATURA4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO4: TStringField
      FieldName = 'CNF_VENCTO4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR4: TStringField
      FieldName = 'CNF_VALOR4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA5: TStringField
      FieldName = 'CNF_FATURA5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO5: TStringField
      FieldName = 'CNF_VENCTO5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR5: TStringField
      FieldName = 'CNF_VALOR5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FATURA6: TStringField
      FieldName = 'CNF_FATURA6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VENCTO6: TStringField
      FieldName = 'CNF_VENCTO6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALOR6: TStringField
      FieldName = 'CNF_VALOR6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CODPRODUTO: TStringField
      FieldName = 'CNF_CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DESPRODUTO: TStringField
      FieldName = 'CNF_DESPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CFCOD: TStringField
      FieldName = 'CNF_CFCOD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CFAPEL: TStringField
      FieldName = 'CNF_CFAPEL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ST: TStringField
      FieldName = 'CNF_ST'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_UNIDADE: TStringField
      FieldName = 'CNF_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_QTDE: TStringField
      FieldName = 'CNF_QTDE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PRECOUNIT: TStringField
      FieldName = 'CNF_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PRECOTOTAL: TStringField
      FieldName = 'CNF_PRECOTOTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ALIQIPI: TStringField
      FieldName = 'CNF_ALIQIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VALORIPI: TStringField
      FieldName = 'CNF_VALORIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_MENSAGE1: TStringField
      FieldName = 'CNF_MENSAGE1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_MENSAGE2: TStringField
      FieldName = 'CNF_MENSAGE2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_BASEICMS: TStringField
      FieldName = 'CNF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLICMS: TStringField
      FieldName = 'CNF_VLICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_BASESUBTRI: TStringField
      FieldName = 'CNF_BASESUBTRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLBASESUBTRI: TStringField
      FieldName = 'CNF_VLBASESUBTRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLTOTPRODU: TStringField
      FieldName = 'CNF_VLTOTPRODU'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLFRETE: TStringField
      FieldName = 'CNF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLSEGURO: TStringField
      FieldName = 'CNF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DESPACESSO: TStringField
      FieldName = 'CNF_DESPACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLTOTIPI: TStringField
      FieldName = 'CNF_VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_VLTOTNOTA: TStringField
      FieldName = 'CNF_VLTOTNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_TRANSP: TStringField
      FieldName = 'CNF_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_FRETEPORCONTA: TStringField
      FieldName = 'CNF_FRETEPORCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PLACAVEICULO: TStringField
      FieldName = 'CNF_PLACAVEICULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PLACAESTADO: TStringField
      FieldName = 'CNF_PLACAESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CNPJTRANSP: TStringField
      FieldName = 'CNF_CNPJTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ENDERETRANSP: TStringField
      FieldName = 'CNF_ENDERETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_CIDADETRANSP: TStringField
      FieldName = 'CNF_CIDADETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ESTADOTRANSP: TStringField
      FieldName = 'CNF_ESTADOTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_INSCESTRANSP: TStringField
      FieldName = 'CNF_INSCESTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_QTDEVOTRANSP: TStringField
      FieldName = 'CNF_QTDEVOTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ESPECIETRANSP: TStringField
      FieldName = 'CNF_ESPECIETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlCdsNFCNF_MARCA: TStringField
      FieldName = 'CNF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlCdsNFCNF_NUMERO: TStringField
      FieldName = 'CNF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PESOBRUTO: TStringField
      FieldName = 'CNF_PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_PESOLIQUIDO: TStringField
      FieldName = 'CNF_PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_REDESPTITULO: TStringField
      FieldName = 'CNF_REDESPTITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_TRANSPRED: TStringField
      FieldName = 'CNF_TRANSPRED'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_REDESPRUA: TStringField
      FieldName = 'CNF_REDESPRUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_REDESPCID: TStringField
      FieldName = 'CNF_REDESPCID'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ENTREGATITULO: TStringField
      FieldName = 'CNF_ENTREGATITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ENTREGARUA: TStringField
      FieldName = 'CNF_ENTREGARUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ENTREGACIDA: TStringField
      FieldName = 'CNF_ENTREGACIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_COBRANCATITULO: TStringField
      FieldName = 'CNF_COBRANCATITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_COBRANCARUA: TStringField
      FieldName = 'CNF_COBRANCARUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_COBRANCACIDA: TStringField
      FieldName = 'CNF_COBRANCACIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD1: TStringField
      FieldName = 'CNF_DADOAD1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD2: TStringField
      FieldName = 'CNF_DADOAD2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD3: TStringField
      FieldName = 'CNF_DADOAD3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD4: TStringField
      FieldName = 'CNF_DADOAD4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD5: TStringField
      FieldName = 'CNF_DADOAD5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD6: TStringField
      FieldName = 'CNF_DADOAD6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD7: TStringField
      FieldName = 'CNF_DADOAD7'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD8: TStringField
      FieldName = 'CNF_DADOAD8'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD9: TStringField
      FieldName = 'CNF_DADOAD9'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD10: TStringField
      FieldName = 'CNF_DADOAD10'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD11: TStringField
      FieldName = 'CNF_DADOAD11'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DADOAD12: TStringField
      FieldName = 'CNF_DADOAD12'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_NOTAFATURA: TStringField
      FieldName = 'CNF_NOTAFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_ASSINTURA: TStringField
      FieldName = 'CNF_ASSINTURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_DATAREC: TStringField
      FieldName = 'CNF_DATAREC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_LINHANOTA: TStringField
      FieldName = 'CNF_LINHANOTA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsNFCNF_ALIQICMS: TStringField
      FieldName = 'CNF_ALIQICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_COMPDESCRI: TStringField
      FieldName = 'CNF_COMPDESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_MENSAPADRAO1: TStringField
      FieldName = 'CNF_MENSAPADRAO1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsNFCNF_NFCONTINUA: TStringField
      FieldName = 'CNF_NFCONTINUA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlCdsNFCNF_QTDE_ITENS: TIntegerField
      FieldName = 'CNF_QTDE_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsNFCNF_DEMOCALC: TStringField
      FieldName = 'CNF_DEMOCALC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DspNF: TDataSetProvider
    DataSet = SqlCdsNF
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 8
  end
  object CdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspNF'
    Left = 184
    Top = 8
    object CdsNFCNF_CODIGO: TStringField
      FieldName = 'CNF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsNFCNF_DTCADA: TDateField
      FieldName = 'CNF_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFCNF_ATIVO: TStringField
      FieldName = 'CNF_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNFCNF_FONTE: TStringField
      FieldName = 'CNF_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsNFCNF_SERIE: TStringField
      FieldName = 'CNF_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNFCNF_XSAIDA: TStringField
      FieldName = 'CNF_XSAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_XENTRADA: TStringField
      FieldName = 'CNF_XENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_NUMERONF: TStringField
      FieldName = 'CNF_NUMERONF'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_NATUREZA: TStringField
      FieldName = 'CNF_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CFOP: TStringField
      FieldName = 'CNF_CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_INSCSUBT: TStringField
      FieldName = 'CNF_INSCSUBT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_RAZAO: TStringField
      FieldName = 'CNF_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CNPJ: TStringField
      FieldName = 'CNF_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DTEMISSAO: TStringField
      FieldName = 'CNF_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ENDERECO: TStringField
      FieldName = 'CNF_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_BAIRRO: TStringField
      FieldName = 'CNF_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CEP: TStringField
      FieldName = 'CNF_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DTSAIDA: TStringField
      FieldName = 'CNF_DTSAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CIDADE: TStringField
      FieldName = 'CNF_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FONE: TStringField
      FieldName = 'CNF_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ESTADO: TStringField
      FieldName = 'CNF_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_INSCRESTADUAL: TStringField
      FieldName = 'CNF_INSCRESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_HORASAIDA: TStringField
      FieldName = 'CNF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA1: TStringField
      FieldName = 'CNF_FATURA1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO1: TStringField
      FieldName = 'CNF_VENCTO1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR1: TStringField
      FieldName = 'CNF_VALOR1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA2: TStringField
      FieldName = 'CNF_FATURA2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO2: TStringField
      FieldName = 'CNF_VENCTO2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR2: TStringField
      FieldName = 'CNF_VALOR2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA3: TStringField
      FieldName = 'CNF_FATURA3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO3: TStringField
      FieldName = 'CNF_VENCTO3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR3: TStringField
      FieldName = 'CNF_VALOR3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA4: TStringField
      FieldName = 'CNF_FATURA4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO4: TStringField
      FieldName = 'CNF_VENCTO4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR4: TStringField
      FieldName = 'CNF_VALOR4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA5: TStringField
      FieldName = 'CNF_FATURA5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO5: TStringField
      FieldName = 'CNF_VENCTO5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR5: TStringField
      FieldName = 'CNF_VALOR5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FATURA6: TStringField
      FieldName = 'CNF_FATURA6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VENCTO6: TStringField
      FieldName = 'CNF_VENCTO6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALOR6: TStringField
      FieldName = 'CNF_VALOR6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CODPRODUTO: TStringField
      FieldName = 'CNF_CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DESPRODUTO: TStringField
      FieldName = 'CNF_DESPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CFCOD: TStringField
      FieldName = 'CNF_CFCOD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CFAPEL: TStringField
      FieldName = 'CNF_CFAPEL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ST: TStringField
      FieldName = 'CNF_ST'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_UNIDADE: TStringField
      FieldName = 'CNF_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_QTDE: TStringField
      FieldName = 'CNF_QTDE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PRECOUNIT: TStringField
      FieldName = 'CNF_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PRECOTOTAL: TStringField
      FieldName = 'CNF_PRECOTOTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ALIQIPI: TStringField
      FieldName = 'CNF_ALIQIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VALORIPI: TStringField
      FieldName = 'CNF_VALORIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_MENSAGE1: TStringField
      FieldName = 'CNF_MENSAGE1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_MENSAGE2: TStringField
      FieldName = 'CNF_MENSAGE2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_BASEICMS: TStringField
      FieldName = 'CNF_BASEICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLICMS: TStringField
      FieldName = 'CNF_VLICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_BASESUBTRI: TStringField
      FieldName = 'CNF_BASESUBTRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLBASESUBTRI: TStringField
      FieldName = 'CNF_VLBASESUBTRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLTOTPRODU: TStringField
      FieldName = 'CNF_VLTOTPRODU'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLFRETE: TStringField
      FieldName = 'CNF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLSEGURO: TStringField
      FieldName = 'CNF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DESPACESSO: TStringField
      FieldName = 'CNF_DESPACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLTOTIPI: TStringField
      FieldName = 'CNF_VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_VLTOTNOTA: TStringField
      FieldName = 'CNF_VLTOTNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_TRANSP: TStringField
      FieldName = 'CNF_TRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_FRETEPORCONTA: TStringField
      FieldName = 'CNF_FRETEPORCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PLACAVEICULO: TStringField
      FieldName = 'CNF_PLACAVEICULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PLACAESTADO: TStringField
      FieldName = 'CNF_PLACAESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CNPJTRANSP: TStringField
      FieldName = 'CNF_CNPJTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ENDERETRANSP: TStringField
      FieldName = 'CNF_ENDERETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_CIDADETRANSP: TStringField
      FieldName = 'CNF_CIDADETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ESTADOTRANSP: TStringField
      FieldName = 'CNF_ESTADOTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_INSCESTRANSP: TStringField
      FieldName = 'CNF_INSCESTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_QTDEVOTRANSP: TStringField
      FieldName = 'CNF_QTDEVOTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ESPECIETRANSP: TStringField
      FieldName = 'CNF_ESPECIETRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_MARCA: TStringField
      FieldName = 'CNF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_NUMERO: TStringField
      FieldName = 'CNF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PESOBRUTO: TStringField
      FieldName = 'CNF_PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_PESOLIQUIDO: TStringField
      FieldName = 'CNF_PESOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_REDESPTITULO: TStringField
      FieldName = 'CNF_REDESPTITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_TRANSPRED: TStringField
      FieldName = 'CNF_TRANSPRED'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_REDESPRUA: TStringField
      FieldName = 'CNF_REDESPRUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_REDESPCID: TStringField
      FieldName = 'CNF_REDESPCID'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ENTREGATITULO: TStringField
      FieldName = 'CNF_ENTREGATITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ENTREGARUA: TStringField
      FieldName = 'CNF_ENTREGARUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ENTREGACIDA: TStringField
      FieldName = 'CNF_ENTREGACIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_COBRANCATITULO: TStringField
      FieldName = 'CNF_COBRANCATITULO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_COBRANCARUA: TStringField
      FieldName = 'CNF_COBRANCARUA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_COBRANCACIDA: TStringField
      FieldName = 'CNF_COBRANCACIDA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD1: TStringField
      FieldName = 'CNF_DADOAD1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD2: TStringField
      FieldName = 'CNF_DADOAD2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD3: TStringField
      FieldName = 'CNF_DADOAD3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD4: TStringField
      FieldName = 'CNF_DADOAD4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD5: TStringField
      FieldName = 'CNF_DADOAD5'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD6: TStringField
      FieldName = 'CNF_DADOAD6'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD7: TStringField
      FieldName = 'CNF_DADOAD7'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD8: TStringField
      FieldName = 'CNF_DADOAD8'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD9: TStringField
      FieldName = 'CNF_DADOAD9'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD10: TStringField
      FieldName = 'CNF_DADOAD10'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD11: TStringField
      FieldName = 'CNF_DADOAD11'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DADOAD12: TStringField
      FieldName = 'CNF_DADOAD12'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_NOTAFATURA: TStringField
      FieldName = 'CNF_NOTAFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_ASSINTURA: TStringField
      FieldName = 'CNF_ASSINTURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_DATAREC: TStringField
      FieldName = 'CNF_DATAREC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_LINHANOTA: TStringField
      FieldName = 'CNF_LINHANOTA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNFCNF_ALIQICMS: TStringField
      FieldName = 'CNF_ALIQICMS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_COMPDESCRI: TStringField
      FieldName = 'CNF_COMPDESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_MENSAPADRAO1: TStringField
      FieldName = 'CNF_MENSAPADRAO1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNFCNF_NFCONTINUA: TStringField
      FieldName = 'CNF_NFCONTINUA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFCNF_QTDE_ITENS: TIntegerField
      FieldName = 'CNF_QTDE_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFCNF_DEMOCALC: TStringField
      FieldName = 'CNF_DEMOCALC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DsNF: TDataSource
    DataSet = CdsNF
    Left = 256
    Top = 8
  end
  object SqlCdsDupl: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 68
    object SqlCdsDuplCDU_CODIGO: TStringField
      FieldName = 'CDU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsDuplCDU_DTCADA: TDateField
      FieldName = 'CDU_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsDuplCDU_ATIVO: TStringField
      FieldName = 'CDU_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsDuplCDU_FONTE: TStringField
      FieldName = 'CDU_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCdsDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsDuplCDU_NATUREZA: TStringField
      FieldName = 'CDU_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_DTEMISSAO: TStringField
      FieldName = 'CDU_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_FATURA: TStringField
      FieldName = 'CDU_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_VALORD: TStringField
      FieldName = 'CDU_VALORD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_NORDEM: TStringField
      FieldName = 'CDU_NORDEM'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_VENCTO: TStringField
      FieldName = 'CDU_VENCTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_DESCTODE: TStringField
      FieldName = 'CDU_DESCTODE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_DESCTOATE: TStringField
      FieldName = 'CDU_DESCTOATE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_DESCTOS: TStringField
      FieldName = 'CDU_DESCTOS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_CONDESPECIAL: TStringField
      FieldName = 'CDU_CONDESPECIAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_NOMESACADO: TStringField
      FieldName = 'CDU_NOMESACADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_ENDERECO: TStringField
      FieldName = 'CDU_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_BAIRRO: TStringField
      FieldName = 'CDU_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_CIDADE: TStringField
      FieldName = 'CDU_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_ESTADO: TStringField
      FieldName = 'CDU_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_CEP: TStringField
      FieldName = 'CDU_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_FONE: TStringField
      FieldName = 'CDU_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_PRACA: TStringField
      FieldName = 'CDU_PRACA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_ENDECOBRA: TStringField
      FieldName = 'CDU_ENDECOBRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_CEPCOBRA: TStringField
      FieldName = 'CDU_CEPCOBRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_CNPJ: TStringField
      FieldName = 'CDU_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_INSCRESTADUAL: TStringField
      FieldName = 'CDU_INSCRESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_DATACEITE: TStringField
      FieldName = 'CDU_DATACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_VLEXTENSO: TStringField
      FieldName = 'CDU_VLEXTENSO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsDuplCDU_LINHAS: TStringField
      FieldName = 'CDU_LINHAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsDuplCDU_OBS: TStringField
      FieldName = 'CDU_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object SqlCdsEtiq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 128
    object SqlCdsEtiqCET_CODIGO: TStringField
      FieldName = 'CET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsEtiqCET_DTCADA: TDateField
      FieldName = 'CET_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsEtiqCET_ATIVO: TStringField
      FieldName = 'CET_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEtiqCET_TPIMP: TStringField
      FieldName = 'CET_TPIMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEtiqCET_QTDETIQ: TStringField
      FieldName = 'CET_QTDETIQ'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsEtiqCET_INICOL1: TStringField
      FieldName = 'CET_INICOL1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEtiqCET_INICOL2: TStringField
      FieldName = 'CET_INICOL2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEtiqCET_INICOL3: TStringField
      FieldName = 'CET_INICOL3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEtiqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEtiqCET_CLIENTE: TStringField
      FieldName = 'CET_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_ENDERECO: TStringField
      FieldName = 'CET_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_CIDADE: TStringField
      FieldName = 'CET_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_ESTADO: TStringField
      FieldName = 'CET_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_CEP: TStringField
      FieldName = 'CET_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_NFISCAL: TStringField
      FieldName = 'CET_NFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_QTDE: TStringField
      FieldName = 'CET_QTDE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_PESO: TStringField
      FieldName = 'CET_PESO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_CODPRODUTO: TStringField
      FieldName = 'CET_CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_PRODUTO: TStringField
      FieldName = 'CET_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_TRANSPORT: TStringField
      FieldName = 'CET_TRANSPORT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_ENDTRANSP: TStringField
      FieldName = 'CET_ENDTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_CIDTRANSP: TStringField
      FieldName = 'CET_CIDTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_CEPTRANSP: TStringField
      FieldName = 'CET_CEPTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsEtiqCET_LINHAS: TStringField
      FieldName = 'CET_LINHAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsEtiqCET_DESCRIETIQ: TStringField
      FieldName = 'CET_DESCRIETIQ'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlCdsEtiqCET_ROTULO: TStringField
      FieldName = 'CET_ROTULO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DspDupl: TDataSetProvider
    DataSet = SqlCdsDupl
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 68
  end
  object DspEtiq: TDataSetProvider
    DataSet = SqlCdsEtiq
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 128
  end
  object CdsDupl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDupl'
    Left = 184
    Top = 68
    object CdsDuplCDU_CODIGO: TStringField
      FieldName = 'CDU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsDuplCDU_DTCADA: TDateField
      FieldName = 'CDU_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDuplCDU_ATIVO: TStringField
      FieldName = 'CDU_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsDuplCDU_FONTE: TStringField
      FieldName = 'CDU_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsDuplCDU_NATUREZA: TStringField
      FieldName = 'CDU_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_DTEMISSAO: TStringField
      FieldName = 'CDU_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_FATURA: TStringField
      FieldName = 'CDU_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_VALORD: TStringField
      FieldName = 'CDU_VALORD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_NORDEM: TStringField
      FieldName = 'CDU_NORDEM'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_VENCTO: TStringField
      FieldName = 'CDU_VENCTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_DESCTODE: TStringField
      FieldName = 'CDU_DESCTODE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_DESCTOATE: TStringField
      FieldName = 'CDU_DESCTOATE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_DESCTOS: TStringField
      FieldName = 'CDU_DESCTOS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_CONDESPECIAL: TStringField
      FieldName = 'CDU_CONDESPECIAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_NOMESACADO: TStringField
      FieldName = 'CDU_NOMESACADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_ENDERECO: TStringField
      FieldName = 'CDU_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_BAIRRO: TStringField
      FieldName = 'CDU_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_CIDADE: TStringField
      FieldName = 'CDU_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_ESTADO: TStringField
      FieldName = 'CDU_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_CEP: TStringField
      FieldName = 'CDU_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_FONE: TStringField
      FieldName = 'CDU_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_PRACA: TStringField
      FieldName = 'CDU_PRACA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_ENDECOBRA: TStringField
      FieldName = 'CDU_ENDECOBRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_CEPCOBRA: TStringField
      FieldName = 'CDU_CEPCOBRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_CNPJ: TStringField
      FieldName = 'CDU_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_INSCRESTADUAL: TStringField
      FieldName = 'CDU_INSCRESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_DATACEITE: TStringField
      FieldName = 'CDU_DATACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_VLEXTENSO: TStringField
      FieldName = 'CDU_VLEXTENSO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsDuplCDU_LINHAS: TStringField
      FieldName = 'CDU_LINHAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsDuplCDU_OBS: TStringField
      FieldName = 'CDU_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object CdsEtiq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEtiq'
    Left = 184
    Top = 128
    object CdsEtiqCET_CODIGO: TStringField
      FieldName = 'CET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsEtiqCET_DTCADA: TDateField
      FieldName = 'CET_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEtiqCET_ATIVO: TStringField
      FieldName = 'CET_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEtiqCET_TPIMP: TStringField
      FieldName = 'CET_TPIMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEtiqCET_QTDETIQ: TStringField
      FieldName = 'CET_QTDETIQ'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEtiqCET_INICOL1: TStringField
      FieldName = 'CET_INICOL1'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEtiqCET_INICOL2: TStringField
      FieldName = 'CET_INICOL2'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEtiqCET_INICOL3: TStringField
      FieldName = 'CET_INICOL3'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEtiqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEtiqCET_CLIENTE: TStringField
      FieldName = 'CET_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_ENDERECO: TStringField
      FieldName = 'CET_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_CIDADE: TStringField
      FieldName = 'CET_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_ESTADO: TStringField
      FieldName = 'CET_ESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_CEP: TStringField
      FieldName = 'CET_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_NFISCAL: TStringField
      FieldName = 'CET_NFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_QTDE: TStringField
      FieldName = 'CET_QTDE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_PESO: TStringField
      FieldName = 'CET_PESO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_CODPRODUTO: TStringField
      FieldName = 'CET_CODPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_PRODUTO: TStringField
      FieldName = 'CET_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_TRANSPORT: TStringField
      FieldName = 'CET_TRANSPORT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_ENDTRANSP: TStringField
      FieldName = 'CET_ENDTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_CIDTRANSP: TStringField
      FieldName = 'CET_CIDTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_CEPTRANSP: TStringField
      FieldName = 'CET_CEPTRANSP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEtiqCET_LINHAS: TStringField
      FieldName = 'CET_LINHAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEtiqCET_DESCRIETIQ: TStringField
      FieldName = 'CET_DESCRIETIQ'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEtiqCET_ROTULO: TStringField
      FieldName = 'CET_ROTULO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DsDupl: TDataSource
    DataSet = CdsDupl
    Left = 256
    Top = 68
  end
  object DsEtiq: TDataSource
    DataSet = CdsEtiq
    Left = 256
    Top = 128
  end
  object SqlCdsBloq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 176
    object SqlCdsBloqBOL_CODBOL: TStringField
      FieldName = 'BOL_CODBOL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsBloqBOL_ATIVO: TStringField
      FieldName = 'BOL_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCdsBloqBOL_CODBAN: TStringField
      FieldName = 'BOL_CODBAN'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCdsBloqBOL_NRLINHA: TStringField
      FieldName = 'BOL_NRLINHA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCdsBloqBOL_LOCAL: TStringField
      FieldName = 'BOL_LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_VENCTO: TStringField
      FieldName = 'BOL_VENCTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DTEMIS: TStringField
      FieldName = 'BOL_DTEMIS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_CODFAT: TStringField
      FieldName = 'BOL_CODFAT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_ESPDOC: TStringField
      FieldName = 'BOL_ESPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DESESPDOC: TStringField
      FieldName = 'BOL_DESESPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DESACEITE: TStringField
      FieldName = 'BOL_DESACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DTPROCE: TStringField
      FieldName = 'BOL_DTPROCE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_USOBCO: TStringField
      FieldName = 'BOL_USOBCO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DESCARTEIRA: TStringField
      FieldName = 'BOL_DESCARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_VLPARC: TStringField
      FieldName = 'BOL_VLPARC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_ESPECIE: TStringField
      FieldName = 'BOL_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DESPECIE: TStringField
      FieldName = 'BOL_DESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_QUANTIDADE: TStringField
      FieldName = 'BOL_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_VALOR: TStringField
      FieldName = 'BOL_VALOR'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_VLDOC: TStringField
      FieldName = 'BOL_VLDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_JUROMES: TStringField
      FieldName = 'BOL_JUROMES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_DESCABAT: TStringField
      FieldName = 'BOL_DESCABAT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OBSBOL1: TStringField
      FieldName = 'BOL_OBSBOL1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OUTDEDU: TStringField
      FieldName = 'BOL_OUTDEDU'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OBSBOL2: TStringField
      FieldName = 'BOL_OBSBOL2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_MORAMULTA: TStringField
      FieldName = 'BOL_MORAMULTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OBSBOL3: TStringField
      FieldName = 'BOL_OBSBOL3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OUTACRES: TStringField
      FieldName = 'BOL_OUTACRES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_OBSBOL4: TStringField
      FieldName = 'BOL_OBSBOL4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_VLCOBRADO: TStringField
      FieldName = 'BOL_VLCOBRADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_RAZAO: TStringField
      FieldName = 'BOL_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_END: TStringField
      FieldName = 'BOL_END'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_CEP: TStringField
      FieldName = 'BOL_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_CID: TStringField
      FieldName = 'BOL_CID'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_EST: TStringField
      FieldName = 'BOL_EST'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_CNPJ: TStringField
      FieldName = 'BOL_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlCdsBloqBOL_LOCPGTO: TStringField
      FieldName = 'BOL_LOCPGTO'
      Size = 45
    end
    object SqlCdsBloqBOL_OBS1: TStringField
      FieldName = 'BOL_OBS1'
      Size = 45
    end
    object SqlCdsBloqBOL_OBS2: TStringField
      FieldName = 'BOL_OBS2'
      Size = 45
    end
    object SqlCdsBloqBOL_OBS3: TStringField
      FieldName = 'BOL_OBS3'
      Size = 45
    end
    object SqlCdsBloqBOL_OBS4: TStringField
      FieldName = 'BOL_OBS4'
      Size = 45
    end
    object SqlCdsBloqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspBloq: TDataSetProvider
    DataSet = SqlCdsBloq
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 176
  end
  object CdsBloq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBloq'
    Left = 184
    Top = 176
    object CdsBloqBOL_CODBOL: TStringField
      FieldName = 'BOL_CODBOL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsBloqBOL_ATIVO: TStringField
      FieldName = 'BOL_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsBloqBOL_CODBAN: TStringField
      FieldName = 'BOL_CODBAN'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsBloqBOL_NRLINHA: TStringField
      FieldName = 'BOL_NRLINHA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsBloqBOL_LOCAL: TStringField
      FieldName = 'BOL_LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_VENCTO: TStringField
      FieldName = 'BOL_VENCTO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DTEMIS: TStringField
      FieldName = 'BOL_DTEMIS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_CODFAT: TStringField
      FieldName = 'BOL_CODFAT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_ESPDOC: TStringField
      FieldName = 'BOL_ESPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DESESPDOC: TStringField
      FieldName = 'BOL_DESESPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DESACEITE: TStringField
      FieldName = 'BOL_DESACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DTPROCE: TStringField
      FieldName = 'BOL_DTPROCE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_USOBCO: TStringField
      FieldName = 'BOL_USOBCO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DESCARTEIRA: TStringField
      FieldName = 'BOL_DESCARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_VLPARC: TStringField
      FieldName = 'BOL_VLPARC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_ESPECIE: TStringField
      FieldName = 'BOL_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DESPECIE: TStringField
      FieldName = 'BOL_DESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_QUANTIDADE: TStringField
      FieldName = 'BOL_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_VALOR: TStringField
      FieldName = 'BOL_VALOR'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_VLDOC: TStringField
      FieldName = 'BOL_VLDOC'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_JUROMES: TStringField
      FieldName = 'BOL_JUROMES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_DESCABAT: TStringField
      FieldName = 'BOL_DESCABAT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OBSBOL1: TStringField
      FieldName = 'BOL_OBSBOL1'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OUTDEDU: TStringField
      FieldName = 'BOL_OUTDEDU'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OBSBOL2: TStringField
      FieldName = 'BOL_OBSBOL2'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_MORAMULTA: TStringField
      FieldName = 'BOL_MORAMULTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OBSBOL3: TStringField
      FieldName = 'BOL_OBSBOL3'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OUTACRES: TStringField
      FieldName = 'BOL_OUTACRES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_OBSBOL4: TStringField
      FieldName = 'BOL_OBSBOL4'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_VLCOBRADO: TStringField
      FieldName = 'BOL_VLCOBRADO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_RAZAO: TStringField
      FieldName = 'BOL_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_END: TStringField
      FieldName = 'BOL_END'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_CEP: TStringField
      FieldName = 'BOL_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_CID: TStringField
      FieldName = 'BOL_CID'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_EST: TStringField
      FieldName = 'BOL_EST'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_CNPJ: TStringField
      FieldName = 'BOL_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBloqBOL_LOCPGTO: TStringField
      FieldName = 'BOL_LOCPGTO'
      Size = 45
    end
    object CdsBloqBOL_OBS1: TStringField
      FieldName = 'BOL_OBS1'
      Size = 45
    end
    object CdsBloqBOL_OBS2: TStringField
      FieldName = 'BOL_OBS2'
      Size = 45
    end
    object CdsBloqBOL_OBS3: TStringField
      FieldName = 'BOL_OBS3'
      Size = 45
    end
    object CdsBloqBOL_OBS4: TStringField
      FieldName = 'BOL_OBS4'
      Size = 45
    end
    object CdsBloqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsBloq: TDataSource
    DataSet = CdsBloq
    Left = 256
    Top = 176
  end
  object SqlSeq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 221
    object SqlSeqSEQUENCIA_REGISTRO: TIntegerField
      FieldName = 'SEQUENCIA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlSeqSEQUENCIA_EMPRESA: TStringField
      FieldName = 'SEQUENCIA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SqlSeqSEQUENCIA_TABELA: TStringField
      FieldName = 'SEQUENCIA_TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 100
    end
    object SqlSeqSEQUENCIA_CAMPO: TStringField
      FieldName = 'SEQUENCIA_CAMPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 30
    end
    object SqlSeqSEQUENCIA_VALOR: TIntegerField
      FieldName = 'SEQUENCIA_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspSeq: TDataSetProvider
    DataSet = SqlSeq
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 221
  end
  object CdsSeq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSeq'
    AfterEdit = CdsSeqAfterEdit
    AfterScroll = CdsSeqAfterScroll
    Left = 184
    Top = 221
    object CdsSeqSEQUENCIA_REGISTRO: TIntegerField
      FieldName = 'SEQUENCIA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsSeqSEQUENCIA_EMPRESA: TStringField
      FieldName = 'SEQUENCIA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsSeqSEQUENCIA_TABELA: TStringField
      FieldName = 'SEQUENCIA_TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 100
    end
    object CdsSeqSEQUENCIA_CAMPO: TStringField
      FieldName = 'SEQUENCIA_CAMPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 30
    end
    object CdsSeqSEQUENCIA_VALOR: TIntegerField
      FieldName = 'SEQUENCIA_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
  end
  object DsSeq: TDataSource
    DataSet = CdsSeq
    Left = 256
    Top = 221
  end
  object SqlSeqPed: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 266
    object SqlSeqPedSEQUENCIA_REGISTRO: TIntegerField
      FieldName = 'SEQUENCIA_REGISTRO'
      ProviderFlags = []
    end
    object SqlSeqPedSEQUENCIA_EMPRESA: TStringField
      FieldName = 'SEQUENCIA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SqlSeqPedSEQUENCIA_TABELA: TStringField
      FieldName = 'SEQUENCIA_TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 100
    end
    object SqlSeqPedSEQUENCIA_CAMPO: TStringField
      FieldName = 'SEQUENCIA_CAMPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 30
    end
    object SqlSeqPedPENDENCIA_VALOR: TIntegerField
      FieldName = 'PENDENCIA_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspSeqPed: TDataSetProvider
    DataSet = SqlSeqPed
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 266
  end
  object CdsSeqPed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSeqPed'
    Left = 184
    Top = 266
    object CdsSeqPedSEQUENCIA_REGISTRO: TIntegerField
      FieldName = 'SEQUENCIA_REGISTRO'
      ProviderFlags = []
    end
    object CdsSeqPedSEQUENCIA_EMPRESA: TStringField
      FieldName = 'SEQUENCIA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsSeqPedSEQUENCIA_TABELA: TStringField
      FieldName = 'SEQUENCIA_TABELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 100
    end
    object CdsSeqPedSEQUENCIA_CAMPO: TStringField
      FieldName = 'SEQUENCIA_CAMPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 30
    end
    object CdsSeqPedPENDENCIA_VALOR: TIntegerField
      FieldName = 'PENDENCIA_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DsSeqPed: TDataSource
    DataSet = CdsSeqPed
    Left = 256
    Top = 266
  end
  object SqlCheque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 312
    object SqlChequeSCH_REGISTRO: TIntegerField
      FieldName = 'SCH_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlChequeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlChequeBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlChequeSCH_FONTE: TIntegerField
      FieldName = 'SCH_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequeSCH_ENTRE_LINHAS: TIntegerField
      FieldName = 'SCH_ENTRE_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequeSCH_QTDE_LINHAS: TIntegerField
      FieldName = 'SCH_QTDE_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequeSCH_VALOR: TStringField
      FieldName = 'SCH_VALOR'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_LINHA1_EXT: TStringField
      FieldName = 'SCH_LINHA1_EXT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_LINHA2_EXT: TStringField
      FieldName = 'SCH_LINHA2_EXT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_QTDE_CARACTERES: TIntegerField
      FieldName = 'SCH_QTDE_CARACTERES'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequeSCH_FAVORECIDO: TStringField
      FieldName = 'SCH_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_CIDADE: TStringField
      FieldName = 'SCH_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_DIA: TStringField
      FieldName = 'SCH_DIA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_MES: TStringField
      FieldName = 'SCH_MES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_ANO: TStringField
      FieldName = 'SCH_ANO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlChequeSCH_TAM_ANO: TIntegerField
      FieldName = 'SCH_TAM_ANO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlChequeSCH_BOM_PARA: TStringField
      FieldName = 'SCH_BOM_PARA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DspCheque: TDataSetProvider
    DataSet = SqlCheque
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 312
  end
  object CdsSysCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCheque'
    BeforePost = CdsSysChequeBeforePost
    Left = 184
    Top = 312
    object CdsSysChequeSCH_REGISTRO: TIntegerField
      FieldName = 'SCH_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsSysChequeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsSysChequeBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsSysChequeSCH_FONTE: TIntegerField
      FieldName = 'SCH_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysChequeSCH_ENTRE_LINHAS: TIntegerField
      FieldName = 'SCH_ENTRE_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysChequeSCH_QTDE_LINHAS: TIntegerField
      FieldName = 'SCH_QTDE_LINHAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysChequeSCH_VALOR: TStringField
      FieldName = 'SCH_VALOR'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_LINHA1_EXT: TStringField
      FieldName = 'SCH_LINHA1_EXT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_LINHA2_EXT: TStringField
      FieldName = 'SCH_LINHA2_EXT'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_QTDE_CARACTERES: TIntegerField
      FieldName = 'SCH_QTDE_CARACTERES'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysChequeSCH_FAVORECIDO: TStringField
      FieldName = 'SCH_FAVORECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_CIDADE: TStringField
      FieldName = 'SCH_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_DIA: TStringField
      FieldName = 'SCH_DIA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_MES: TStringField
      FieldName = 'SCH_MES'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_ANO: TStringField
      FieldName = 'SCH_ANO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsSysChequeSCH_TAM_ANO: TIntegerField
      FieldName = 'SCH_TAM_ANO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysChequeSCH_BOM_PARA: TStringField
      FieldName = 'SCH_BOM_PARA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object DsSysCheque: TDataSource
    DataSet = CdsSysCheque
    Left = 256
    Top = 312
  end
end
