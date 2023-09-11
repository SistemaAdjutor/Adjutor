object FormRPrintPedido: TFormRPrintPedido
  Left = 436
  Top = 123
  Width = 177
  Height = 138
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Pedido '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitPedidoRp: TBitBtn
    Left = 42
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Pedido'
    TabOrder = 0
    OnClick = BitPedidoRpClick
  end
  object TbPedidoRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PED_CODIGO'
    TableName = 'PED0000'
    Left = 56
    object TbPedidoRPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbPedidoRPCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbPedidoRPREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbPedidoRPPED_DTENTRADA: TDateTimeField
      FieldName = 'PED_DTENTRADA'
    end
    object TbPedidoRPPED_COMIS1: TFloatField
      FieldName = 'PED_COMIS1'
    end
    object TbPedidoRPPED_COMIS2: TFloatField
      FieldName = 'PED_COMIS2'
    end
    object TbPedidoRPPED_COMIS3: TFloatField
      FieldName = 'PED_COMIS3'
    end
    object TbPedidoRPPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbPedidoRPPED_DESCTOVL: TFloatField
      FieldName = 'PED_DESCTOVL'
    end
    object TbPedidoRPPED_DESCTOPC: TFloatField
      FieldName = 'PED_DESCTOPC'
    end
    object TbPedidoRPTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbPedidoRPPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object TbPedidoRPTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object TbPedidoRPPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object TbPedidoRPPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      Size = 10
    end
    object TbPedidoRPPED_VLTOTAL: TFloatField
      FieldName = 'PED_VLTOTAL'
    end
    object TbPedidoRPPED_VLFATURADO: TFloatField
      FieldName = 'PED_VLFATURADO'
    end
    object TbPedidoRPPED_FATURAS: TStringField
      FieldName = 'PED_FATURAS'
    end
    object TbPedidoRPPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object TbPedidoRPPED_OBSGERAL: TMemoField
      FieldName = 'PED_OBSGERAL'
      BlobType = ftMemo
    end
    object TbPedidoRPPED_DTMIN_ATD: TDateTimeField
      FieldName = 'PED_DTMIN_ATD'
    end
    object TbPedidoRPPED_DTLIM_ATD: TDateTimeField
      FieldName = 'PED_DTLIM_ATD'
    end
    object TbPedidoRPPED_DTSAIDA: TDateTimeField
      FieldName = 'PED_DTSAIDA'
    end
    object TbPedidoRPPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object TbPedidoRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsPedidoRP: TDataSource
    DataSet = TbPedidoRP
    Left = 84
  end
  object TbClienteRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_CODIGO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DsPedidoRP
    TableName = 'CLI0000'
    Left = 112
    object TbClienteRPCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object TbClienteRPCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object TbClienteRPREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbClienteRPCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 2
    end
    object TbClienteRPCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object TbClienteRPCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 40
    end
    object TbClienteRPCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object TbClienteRPCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object TbClienteRPCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object TbClienteRPCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      Size = 6
    end
    object TbClienteRPCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object TbClienteRPCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object TbClienteRPCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object TbClienteRPCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object TbClienteRPTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbClienteRPCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 14
    end
    object TbClienteRPCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object TbClienteRPCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object TbClienteRPCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object TbClienteRPCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object TbClienteRPREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbClienteRPCLI_DTINICIO: TDateTimeField
      FieldName = 'CLI_DTINICIO'
    end
    object TbClienteRPCLI_DTULTCOM: TDateTimeField
      FieldName = 'CLI_DTULTCOM'
    end
    object TbClienteRPCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 40
    end
    object TbClienteRPCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object TbClienteRPCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object TbClienteRPCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 40
    end
    object TbClienteRPCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object TbClienteRPCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object TbClienteRPCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 200
    end
    object TbClienteRPCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object TbClienteRPCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object TbClienteRPCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object TbClienteRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsclienteRP: TDataSource
    DataSet = TbClienteRP
    Left = 140
  end
  object TbRepresRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'REP_CODIGO'
    MasterFields = 'REP_CODIGO'
    MasterSource = DsPedidoRP
    TableName = 'REP0000'
    Top = 28
    object TbRepresRPREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object TbRepresRPREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object TbRepresRPREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbRepresRPREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object TbRepresRPREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object TbRepresRPREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object TbRepresRPREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object TbRepresRPREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object TbRepresRPREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object TbRepresRPREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object TbRepresRPREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 8
    end
    object TbRepresRPREP_FONE: TStringField
      FieldName = 'REP_FONE'
      Size = 11
    end
    object TbRepresRPREP_FAX: TStringField
      FieldName = 'REP_FAX'
      Size = 11
    end
    object TbRepresRPREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object TbRepresRPREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object TbRepresRPREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object TbRepresRPREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
    end
    object TbRepresRPREP_QUOTA: TFloatField
      FieldName = 'REP_QUOTA'
    end
    object TbRepresRPREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object TbRepresRPREP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
    end
    object TbRepresRPREP_INSC: TStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object TbRepresRPREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object TbRepresRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRepresRp: TDataSource
    DataSet = TbRepresRP
    Left = 28
    Top = 28
  end
  object TbTranspRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XTRP_CODI'
    TableName = 'TRP0000'
    Left = 13
    Top = 81
    object TbTranspRPTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object TbTranspRPTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object TbTranspRPTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object TbTranspRPTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object TbTranspRPTRP_UF: TStringField
      FieldName = 'TRP_UF'
      Size = 2
    end
    object TbTranspRPTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object TbTranspRPTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      Size = 14
    end
    object TbTranspRPTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object TbTranspRPTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object TbTranspRPTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      Size = 11
    end
    object TbTranspRPTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      Size = 35
    end
    object TbTranspRPTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object TbTranspRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbTranspRPTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      Size = 35
    end
  end
  object DsTRanspRP: TDataSource
    DataSet = TbTranspRP
    Left = 41
    Top = 81
  end
  object TbProdutoRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PRD_CODIGO'
    TableName = 'PRD0000'
    Left = 56
    Top = 28
    object TbProdutoRPPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object TbProdutoRPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProdutoRPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbProdutoRPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object TbProdutoRPPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object TbProdutoRPPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object TbProdutoRPPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object TbProdutoRPIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object TbProdutoRPPRD_ALIQICM: TFloatField
      FieldName = 'PRD_ALIQICM'
    end
    object TbProdutoRPLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object TbProdutoRPPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object TbProdutoRPPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
    end
    object TbProdutoRPPRD_MINIMO: TFloatField
      FieldName = 'PRD_MINIMO'
    end
    object TbProdutoRPPRD_PCUSTO: TFloatField
      FieldName = 'PRD_PCUSTO'
    end
    object TbProdutoRPPRD_PVENDA: TFloatField
      FieldName = 'PRD_PVENDA'
    end
    object TbProdutoRPPRD_PMEDIO: TFloatField
      FieldName = 'PRD_PMEDIO'
    end
    object TbProdutoRPPRD_ESTOQUE: TFloatField
      FieldName = 'PRD_ESTOQUE'
    end
    object TbProdutoRPPRD_SAIDA: TFloatField
      FieldName = 'PRD_SAIDA'
    end
    object TbProdutoRPPRD_PENDENTE: TFloatField
      FieldName = 'PRD_PENDENTE'
    end
    object TbProdutoRPFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbProdutoRPPRD_ENTRADA: TFloatField
      FieldName = 'PRD_ENTRADA'
    end
    object TbProdutoRPPRD_MAXIMO: TFloatField
      FieldName = 'PRD_MAXIMO'
    end
    object TbProdutoRPPRD_ICMSUBS: TFloatField
      FieldName = 'PRD_ICMSUBS'
    end
    object TbProdutoRPPRD_UTILCONV: TBooleanField
      FieldName = 'PRD_UTILCONV'
    end
    object TbProdutoRPPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object TbProdutoRPPRD_PESOKg: TFloatField
      FieldName = 'PRD_PESOKg'
    end
    object TbProdutoRPPRD_FATORC: TFloatField
      FieldName = 'PRD_FATORC'
    end
    object TbProdutoRPPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object TbProdutoRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbProdutoRPPRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
    end
  end
  object DsProdutoRP: TDataSource
    DataSet = TbProdutoRP
    Left = 84
    Top = 28
  end
  object PrinterPedido: TPrinterSetupDialog
    Left = 28
  end
  object TbItenPedidoRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PED_CODIGO'
    MasterFields = 'PED_CODIGO'
    MasterSource = DsPedidoRP
    TableName = 'PED_IT01'
    Left = 112
    Top = 28
    object TbItenPedidoRPREG: TAutoIncField
      FieldName = 'REG'
    end
    object TbItenPedidoRPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbItenPedidoRPPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbItenPedidoRPPRF_QTDE: TFloatField
      FieldName = 'PRF_QTDE'
    end
    object TbItenPedidoRPPRF_PRECO: TFloatField
      FieldName = 'PRF_PRECO'
    end
    object TbItenPedidoRPPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object TbItenPedidoRPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbItenPedidoRPFATURA_CI: TBooleanField
      FieldName = 'FATURA_CI'
    end
    object TbItenPedidoRPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbItenPedidoRPPRF_IPIALIQ: TFloatField
      FieldName = 'PRF_IPIALIQ'
    end
  end
  object DsItenPedidoRP: TDataSource
    DataSet = TbItenPedidoRP
    Left = 140
    Top = 28
  end
  object TbParcelaRP: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XPCL_NOME'
    TableName = 'PCL0000'
    Left = 69
    Top = 81
    object TbParcelaRPPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbParcelaRPPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object TbParcelaRPPCL_DESCTO: TFloatField
      FieldName = 'PCL_DESCTO'
    end
    object TbParcelaRPPCL_MULTA: TFloatField
      FieldName = 'PCL_MULTA'
    end
    object TbParcelaRPPCL_JUROS: TFloatField
      FieldName = 'PCL_JUROS'
    end
    object TbParcelaRPPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
    end
    object TbParcelaRPPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object TbParcelaRPPCL_MANTERDIA: TBooleanField
      FieldName = 'PCL_MANTERDIA'
    end
    object TbParcelaRPPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object TbParcelaRPPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      Size = 50
    end
    object TbParcelaRPPCL_DISPONIVEL: TBooleanField
      FieldName = 'PCL_DISPONIVEL'
    end
  end
  object DataSource1: TDataSource
    Left = 97
    Top = 81
  end
  object TbParametroRP: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'PRMT0001'
    Left = 125
    Top = 81
    object TbParametroRPPMT_COMIS_GRP: TBooleanField
      FieldName = 'PMT_COMIS_GRP'
    end
    object TbParametroRPPMT_COMIS_REP: TFloatField
      FieldName = 'PMT_COMIS_REP'
    end
    object TbParametroRPPMT_COMIS_SUP: TFloatField
      FieldName = 'PMT_COMIS_SUP'
    end
    object TbParametroRPPMT_COMIS_GER: TFloatField
      FieldName = 'PMT_COMIS_GER'
    end
    object TbParametroRPPMT_PAGTO_COM_TP: TStringField
      FieldName = 'PMT_PAGTO_COM_TP'
      Size = 1
    end
    object TbParametroRPPMT_COMIS_QUINZ: TBooleanField
      FieldName = 'PMT_COMIS_QUINZ'
    end
    object TbParametroRPPMT_1QZ_DIAS: TStringField
      FieldName = 'PMT_1QZ_DIAS'
      Size = 4
    end
    object TbParametroRPPMT_2QZ_DIAS: TStringField
      FieldName = 'PMT_2QZ_DIAS'
      Size = 4
    end
    object TbParametroRPPMT_BORDERO_COM: TStringField
      FieldName = 'PMT_BORDERO_COM'
      Size = 1
    end
    object TbParametroRPPMT_NUMER_PEDIDO: TStringField
      FieldName = 'PMT_NUMER_PEDIDO'
      Size = 1
    end
    object TbParametroRPPMT_DPL_IPI_NA1D: TBooleanField
      FieldName = 'PMT_DPL_IPI_NA1D'
    end
    object TbParametroRPPMT_ATUALIZ_ESTONF: TBooleanField
      FieldName = 'PMT_ATUALIZ_ESTONF'
    end
    object TbParametroRPPMT_QTDE_DECIMAIS: TStringField
      FieldName = 'PMT_QTDE_DECIMAIS'
      Required = True
      Size = 1
    end
    object TbParametroRPPMT_PED_IMPORTANTE: TMemoField
      FieldName = 'PMT_PED_IMPORTANTE'
      BlobType = ftMemo
    end
  end
end
