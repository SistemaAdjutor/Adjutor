object DataModulo: TDataModulo
  OldCreateOrder = True
  OnDestroy = DataModuloDestroy
  Left = 1
  Top = 1
  Height = 570
  Width = 798
  object DTBAdjutor: TDatabase
    AliasName = 'Adjutor'
    DatabaseName = 'RwDbAdm'
    KeepConnection = False
    SessionName = 'Default'
    OnLogin = DTBAdjutorLogin
    Left = 331
    Top = 485
  end
  object DsTransport: TDataSource
    DataSet = TbTransport
    Left = 452
    Top = 332
  end
  object TbTransport: TTable
    AutoCalcFields = False
    BeforeEdit = TbTransportBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'TRP0000'
    Left = 452
    Top = 289
    object TbTransportTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object TbTransportTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object TbTransportTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object TbTransportTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object TbTransportTRP_UF: TStringField
      FieldName = 'TRP_UF'
      Size = 2
    end
    object TbTransportTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object TbTransportTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TbTransportTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object TbTransportTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbTransportTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbTransportTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      Size = 35
    end
    object TbTransportTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object TbTransportEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbTransportTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      Size = 35
    end
  end
  object TbBanco: TTable
    AutoCalcFields = False
    BeforeEdit = TbBancoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'BAN0000'
    Left = 307
    Top = 96
    object TbBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object TbBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object TbBancoBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object TbBancoBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object TbBancoBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object TbBancoBAN_UF: TStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object TbBancoBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbBancoBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbBancoBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbBancoBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object TbBancoBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object TbBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbBancoBAN_DNAS_CONT: TDateTimeField
      FieldName = 'BAN_DNAS_CONT'
      EditMask = '99/99/9999;1;_'
    end
    object TbBancoBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object TbBancoBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
    object TbBancoBAN_JUROMES: TFloatField
      FieldName = 'BAN_JUROMES'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbBancoTESTE_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TESTE_CC'
      Calculated = True
    end
    object TbBancoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 7
    end
    object TbBancoBAN_INSTRUCAO1: TStringField
      FieldName = 'BAN_INSTRUCAO1'
      Size = 2
    end
    object TbBancoBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      Size = 2
    end
    object TbBancoBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 12
    end
    object TbBancoBAN_TAM_NONUM: TStringField
      FieldName = 'BAN_TAM_NONUM'
      Size = 2
    end
    object TbBancoBAN_N_CARTEIRA: TStringField
      FieldName = 'BAN_N_CARTEIRA'
      Size = 3
    end
    object TbBancoBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
    object TbBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object TbBancoBAN_COD_CART: TStringField
      FieldName = 'BAN_COD_CART'
      Size = 2
    end
    object TbBancoBAN_PROTPRAZO: TStringField
      FieldName = 'BAN_PROTPRAZO'
      Size = 2
    end
  end
  object Dsbanco: TDataSource
    DataSet = TbBanco
    Left = 307
    Top = 139
  end
  object TbCtAnalise: TTable
    AutoCalcFields = False
    BeforeEdit = TbCtAnaliseBeforeEdit
    AfterCancel = TbCtAnaliseAfterCancel
    DatabaseName = 'RwDbAdm'
    SessionName = 'Default'
    TableName = 'CCT_0000'
    Left = 595
    Top = 96
    object TbCtAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbCtAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object TbCtAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 1
    end
    object TbCtAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object TbCtAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbCtAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object TbCtAnaliseCCT_PROVISAO: TFloatField
      FieldName = 'CCT_PROVISAO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsCtAnalise: TDataSource
    DataSet = TbCtAnalise
    Left = 595
    Top = 139
  end
  object TbRepres: TTable
    AutoCalcFields = False
    BeforeEdit = TbRepresBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'REP0000'
    Left = 235
    Top = 289
    object TbRepresREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object TbRepresREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object TbRepresREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbRepresREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object TbRepresREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object TbRepresREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object TbRepresREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object TbRepresREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object TbRepresREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object TbRepresREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object TbRepresREP_CEP: TStringField
      FieldName = 'REP_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbRepresREP_FONE: TStringField
      FieldName = 'REP_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbRepresREP_FAX: TStringField
      FieldName = 'REP_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbRepresREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object TbRepresREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object TbRepresREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object TbRepresREP_QUOTA: TFloatField
      FieldName = 'REP_QUOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbRepresREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object TbRepresREP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
      EditMask = '99/99/9999;1;_'
    end
    object TbRepresREP_INSC: TStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object TbRepresREP_CGC: TStringField
      FieldName = 'REP_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TbRepresEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbRepresREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
    end
    object TbRepresREP_CELULAR: TStringField
      FieldName = 'REP_CELULAR'
      Size = 11
    end
    object TbRepresREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object TbRepresREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object TbRepresREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object TbRepresREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object TbRepresREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      Size = 3
    end
  end
  object TbCliente: TTable
    AutoCalcFields = False
    BeforeEdit = TbClienteBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'CLI0000'
    Left = 379
    Top = 289
    object TbClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object TbClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object TbClienteREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 2
    end
    object TbClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object TbClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbClienteCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      Size = 6
    end
    object TbClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object TbClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbClienteTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TbClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object TbClienteCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object TbClienteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbClienteCLI_DTULTCOM: TDateTimeField
      FieldName = 'CLI_DTULTCOM'
      EditMask = '99/99/9999;1;_'
    end
    object TbClienteCLI_DTINICIO: TDateTimeField
      FieldName = 'CLI_DTINICIO'
      EditMask = '99/99/9999;1;_'
    end
    object TbClienteCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object TbClienteCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbClienteCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object TbClienteCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbClienteCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object TbClienteCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object TbClienteCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object TbClienteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbClienteCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object TbClienteCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object TbClienteCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object TbClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object TbClienteCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object TbClienteCLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbClienteCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 45
    end
    object TbClienteCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 45
    end
    object TbClienteCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 45
    end
    object TbClienteCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 160
    end
    object TbClienteCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object TbClienteCLI_DTINATIVO: TDateTimeField
      FieldName = 'CLI_DTINATIVO'
    end
    object TbClienteCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      Size = 35
    end
  end
  object TbRegiao: TTable
    AutoCalcFields = False
    BeforeEdit = TbRegiaoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'REG0000'
    Left = 736
    object TbRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
    object TbRegiaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRegiao: TDataSource
    DataSet = TbRegiao
    Left = 736
    Top = 43
  end
  object DsCliente: TDataSource
    DataSet = TbCliente
    Left = 379
    Top = 332
  end
  object DsRepres: TDataSource
    DataSet = TbRepres
    Left = 235
    Top = 332
  end
  object DsIRRF: TDataSource
    DataSet = TbIRRF
    Left = 667
    Top = 139
  end
  object TbIRRF: TTable
    AutoCalcFields = False
    BeforeEdit = TbIRRFBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'IRRF'
    Left = 667
    Top = 96
    object TbIRRFIR_MES: TStringField
      FieldName = 'IR_MES'
      Required = True
      EditMask = '99/9999;1;_'
      Size = 7
    end
    object TbIRRFIR_TETO1: TFloatField
      FieldName = 'IR_TETO1'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_TETO2: TFloatField
      FieldName = 'IR_TETO2'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_TETO3: TFloatField
      FieldName = 'IR_TETO3'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_ALIQ1: TFloatField
      FieldName = 'IR_ALIQ1'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbIRRFIR_ALIQ2: TFloatField
      FieldName = 'IR_ALIQ2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbIRRFIR_ALIQ3: TFloatField
      FieldName = 'IR_ALIQ3'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbIRRFIR_DEDU1: TFloatField
      FieldName = 'IR_DEDU1'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_DEDU2: TFloatField
      FieldName = 'IR_DEDU2'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_DEDU3: TFloatField
      FieldName = 'IR_DEDU3'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFIR_JURIDI: TFloatField
      FieldName = 'IR_JURIDI'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbIRRFIR_DEPEND: TFloatField
      FieldName = 'IR_DEPEND'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbIRRFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRecParce: TDataSource
    DataSet = TbRecParce
    Left = 91
    Top = 139
  end
  object DsReceber: TDataSource
    DataSet = TbReceber
    Left = 24
    Top = 139
  end
  object TbReceber: TTable
    AutoCalcFields = False
    BeforeEdit = TbReceberBeforeEdit
    AfterScroll = TbReceberAfterScroll
    DatabaseName = 'RwDbAdm'
    TableName = 'FAT0000'
    Left = 24
    Top = 96
    object TbReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbReceberFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      EditMask = '99/99/9999;1;_'
    end
    object TbReceberFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object TbReceberFAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
    end
    object TbReceberFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object TbReceberFAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
    end
    object TbReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbReceberPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbReceberFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbReceberFAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbReceberFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbReceberFAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbReceberFAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_CANCELADA: TBooleanField
      FieldName = 'FAT_CANCELADA'
    end
    object TbReceberFAT_BASESUB: TFloatField
      FieldName = 'FAT_BASESUB'
      DisplayFormat = '#,##0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_ICMSRET: TFloatField
      FieldName = 'FAT_ICMSRET'
      DisplayFormat = '#,##0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_DESP_ACES: TFloatField
      FieldName = 'FAT_DESP_ACES'
      DisplayFormat = '#,##0.00'
      EditFormat = '#0.00'
    end
    object TbReceberFAT_VL_IPI: TFloatField
      FieldName = 'FAT_VL_IPI'
    end
    object TbReceberCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbReceberFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Size = 50
    end
    object TbReceberFAT_PREVISAO: TBooleanField
      FieldName = 'FAT_PREVISAO'
    end
    object TbReceberFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 4
    end
  end
  object TbPrdLinha: TTable
    AutoCalcFields = False
    BeforeEdit = TbPrdLinhaBeforeEdit
    DatabaseName = 'RwDbAdm'
    SessionName = 'Default'
    TableName = 'PRD_LINHA'
    Left = 523
    object TbPrdLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 2
    end
    object TbPrdLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object TbPrdLinhaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsPrdLinha: TDataSource
    DataSet = TbPrdLinha
    Left = 523
    Top = 43
  end
  object DsPrdClassIPI: TDataSource
    DataSet = TbPrdClassIPI
    Left = 307
    Top = 43
  end
  object TbPrdTipo: TTable
    AutoCalcFields = False
    BeforeEdit = TbPrdTipoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD_TIPO'
    Left = 452
    object TbPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object TbPrdTipoPTI_DESCRI: TStringField
      FieldName = 'PTI_DESCRI'
      Size = 25
    end
    object TbPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsPrdTipo: TDataSource
    DataSet = TbPrdTipo
    Left = 452
    Top = 43
  end
  object TbPrdGrupo: TTable
    AutoCalcFields = False
    BeforeEdit = TbPrdGrupoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD_GRUPO'
    Left = 379
    object TbPrdGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Required = True
      Size = 3
    end
    object TbPrdGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object TbPrdGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPrdGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object TbPrdGrupoPGR_COM_PERC: TFloatField
      FieldName = 'PGR_COM_PERC'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
  end
  object DsPrdGrupo: TDataSource
    DataSet = TbPrdGrupo
    Left = 379
    Top = 43
  end
  object DsFornec: TDataSource
    DataSet = TbFornec
    Left = 91
    Top = 332
  end
  object DsProduto: TDataSource
    DataSet = TbProduto
    Left = 24
    Top = 43
  end
  object TbProduto: TTable
    AutoCalcFields = False
    BeforeEdit = TbProdutoBeforeEdit
    AfterScroll = TbProdutoAfterScroll
    OnCalcFields = TbProdutoCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD0000'
    Left = 24
    object TbProdutoPRD_FISICO_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Calculated = True
    end
    object TbProdutoPRD_ANTECIPADO_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Calculated = True
    end
    object TbProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object TbProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProdutoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object TbProdutoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object TbProdutoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object TbProdutoPRD_ALIQICM: TFloatField
      DisplayLabel = '#0.00'
      FieldName = 'PRD_ALIQICM'
      EditFormat = '#0.00'
    end
    object TbProdutoLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object TbProdutoPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object TbProdutoPRD_MAXIMO: TFloatField
      FieldName = 'PRD_MAXIMO'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoPRD_MINIMO: TFloatField
      FieldName = 'PRD_MINIMO'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoPRD_PCUSTO: TFloatField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbProdutoPRD_PMEDIO: TFloatField
      FieldName = 'PRD_PMEDIO'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbProdutoPRD_PVENDA: TFloatField
      FieldName = 'PRD_PVENDA'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbProdutoPRD_ESTOQUE: TFloatField
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoPRD_ENTRADA: TFloatField
      FieldName = 'PRD_ENTRADA'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoPRD_SAIDA: TFloatField
      FieldName = 'PRD_SAIDA'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoPRD_PENDENTE: TFloatField
      FieldName = 'PRD_PENDENTE'
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
    end
    object TbProdutoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbProdutoPRD_ICMSUBS: TFloatField
      DisplayLabel = '#0.00'
      FieldName = 'PRD_ICMSUBS'
      EditFormat = '#0.00'
    end
    object TbProdutoPRD_UTILCONV: TBooleanField
      FieldName = 'PRD_UTILCONV'
    end
    object TbProdutoPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object TbProdutoPRD_PESOKg: TFloatField
      FieldName = 'PRD_PESOKg'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object TbProdutoPRD_FATORC: TFloatField
      FieldName = 'PRD_FATORC'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object TbProdutoPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object TbProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object TbProdutoPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object TbProdutoPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
    end
    object TbProdutoPRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
    end
    object TbProdutoPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object TbProdutoPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      Size = 10
    end
    object TbProdutoPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      Size = 5
    end
    object TbProdutoPRD_VAR1: TFloatField
      FieldName = 'PRD_VAR1'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR2: TFloatField
      FieldName = 'PRD_VAR2'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR3: TFloatField
      FieldName = 'PRD_VAR3'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR4: TFloatField
      FieldName = 'PRD_VAR4'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR5: TFloatField
      FieldName = 'PRD_VAR5'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR6: TFloatField
      FieldName = 'PRD_VAR6'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      Size = 1
    end
    object TbProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object TbProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object TbProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object TbProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object TbProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object TbProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object TbProdutoPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 4
    end
    object TbProdutoPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      Size = 30
    end
    object TbProdutoPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      Size = 2
    end
    object TbProdutoPRD_PMATPRI: TFloatField
      FieldName = 'PRD_PMATPRI'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbProdutoPRD_MAOOBRA: TFloatField
      FieldName = 'PRD_MAOOBRA'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbProdutoPRD_VAR7: TFloatField
      FieldName = 'PRD_VAR7'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_VAR8: TFloatField
      FieldName = 'PRD_VAR8'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object TbProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object TbFornec: TTable
    AutoCalcFields = False
    BeforeEdit = TbFornecBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'FOR0000'
    Left = 91
    Top = 289
    object TbFornecFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object TbFornecFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object TbFornecFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object TbFornecFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object TbFornecFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      EditMask = '99999-999;0;'
      Size = 8
    end
    object TbFornecFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object TbFornecFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbFornecFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbFornecFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object TbFornecFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbFornecFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbFornecFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      Size = 200
    end
    object TbFornecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbFornecFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TbFornecFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object TbFornecFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Size = 35
    end
    object TbFornecFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object TbFornecFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbFornecCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbFornecFOR_PRAZOVENDAS: TStringField
      FieldName = 'FOR_PRAZOVENDAS'
      Size = 30
    end
  end
  object TbEveRepres: TTable
    AutoCalcFields = False
    BeforeEdit = TbEveRepresBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'EVE_RP01'
    Left = 523
    Top = 192
    object TbEveRepresERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      Required = True
      Size = 5
    end
    object TbEveRepresERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      Size = 1
    end
    object TbEveRepresERP_DATA: TDateTimeField
      FieldName = 'ERP_DATA'
      EditMask = '99/99/9999;1;_'
    end
    object TbEveRepresERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      Size = 30
    end
    object TbEveRepresERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      Size = 1
    end
    object TbEveRepresEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object TbEveRepresREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbEveRepresEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbEveRepresERP_VALOR: TFloatField
      FieldName = 'ERP_VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsEveRepres: TDataSource
    DataSet = TbEveRepres
    Left = 523
    Top = 234
  end
  object TbEvento: TTable
    AutoCalcFields = False
    BeforeEdit = TbEventoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'EVE0000'
    Left = 452
    Top = 192
    object TbEventoEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object TbEventoEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object TbEventoEVE_TIPODC: TStringField
      FieldName = 'EVE_TIPODC'
      Size = 1
    end
    object TbEventoEVE_IRRF: TStringField
      FieldName = 'EVE_IRRF'
      Size = 1
    end
    object TbEventoEVE_SITUAC: TStringField
      FieldName = 'EVE_SITUAC'
      Size = 1
    end
    object TbEventoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsEvento: TDataSource
    DataSet = TbEvento
    Left = 452
    Top = 234
  end
  object TbPagParce: TTable
    AutoCalcFields = False
    BeforeEdit = TbPagParceBeforeEdit
    DatabaseName = 'RwDbAdm'
    IndexName = 'XPPC_VENC'
    TableName = 'PAG_PC01'
    Left = 163
    Top = 192
    object TbPagParcePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object TbPagParcePPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object TbPagParcePPC_BANCO: TStringField
      FieldName = 'PPC_BANCO'
      Size = 12
    end
    object TbPagParcePPC_VENCTO: TDateTimeField
      FieldName = 'PPC_VENCTO'
    end
    object TbPagParcePPC_PAGTO: TDateTimeField
      FieldName = 'PPC_PAGTO'
    end
    object TbPagParcePPC_VLPARC: TFloatField
      FieldName = 'PPC_VLPARC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagParcePPC_VLPAGO: TFloatField
      FieldName = 'PPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagParcePPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Size = 15
    end
    object TbPagParcePPC_SITPAG: TBooleanField
      FieldName = 'PPC_SITPAG'
    end
    object TbPagParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPagParceFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbPagParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbPagParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbPagParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
  end
  object DsPagParce: TDataSource
    DataSet = TbPagParce
    Left = 163
    Top = 234
  end
  object DsPagar: TDataSource
    DataSet = TbPagar
    Left = 91
    Top = 234
  end
  object TbRecParce: TTable
    AutoCalcFields = False
    BeforeEdit = TbRecParceBeforeEdit
    OnCalcFields = TbRecParceCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'FAT_PC01'
    Left = 91
    Top = 96
    object TbRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object TbRecParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object TbRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object TbRecParceFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbRecParceFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
      EditMask = '99/99/9999;1;_'
    end
    object TbRecParceFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      EditMask = '99/99/9999;1;_'
    end
    object TbRecParceFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
      EditMask = '99/99/9999;1;_'
    end
    object TbRecParceFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbRecParceFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbRecParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object TbRecParceFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
    end
    object TbRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object TbRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbRecParceFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
    end
    object TbRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object TbRecParceBAN_APELIDO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'BAN_APELIDO_CC'
      Size = 14
      Calculated = True
    end
    object TbRecParceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbRecParcePCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbRecParceFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
  end
  object TbPagar: TTable
    AutoCalcFields = False
    BeforeEdit = TbPagarBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'PAG0000'
    Left = 91
    Top = 192
    object TbPagarCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbPagarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPagarFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbPagarPAG_ALIQICMS: TFloatField
      FieldName = 'PAG_ALIQICMS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPagarPAG_BASEICMS: TFloatField
      FieldName = 'PAG_BASEICMS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagarPAG_BASEIPI: TFloatField
      FieldName = 'PAG_BASEIPI'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagarPAG_DTEMIS: TDateTimeField
      FieldName = 'PAG_DTEMIS'
    end
    object TbPagarPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      Size = 40
    end
    object TbPagarPAG_LIVRO: TBooleanField
      FieldName = 'PAG_LIVRO'
    end
    object TbPagarPAG_SERIE: TStringField
      FieldName = 'PAG_SERIE'
      Size = 3
    end
    object TbPagarPAG_TIPO: TStringField
      FieldName = 'PAG_TIPO'
      Size = 2
    end
    object TbPagarPAG_VLNOTA: TFloatField
      FieldName = 'PAG_VLNOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagarPAG_VL_IPI: TFloatField
      FieldName = 'PAG_VL_IPI'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object TbPagarPAG_OBS: TStringField
      FieldName = 'PAG_OBS'
      Size = 50
    end
    object TbPagarPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object TbPagarPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbPagarPAG_PREVISAO: TBooleanField
      FieldName = 'PAG_PREVISAO'
    end
    object TbPagarPAG_OPERACAO: TStringField
      FieldName = 'PAG_OPERACAO'
      Size = 4
    end
  end
  object TbPrdClassIPI: TTable
    AutoCalcFields = False
    BeforeEdit = TbPrdClassIPIBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'IPI0000'
    Left = 307
    object TbPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object TbPrdClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPrdClassIPIIPI_ALIQ: TFloatField
      FieldName = 'IPI_ALIQ'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPrdClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      Size = 2
    end
  end
  object DsRepAux: TDataSource
    DataSet = TbRepAux
    Left = 307
    Top = 332
  end
  object TbRepAux: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'REP0000'
    Left = 307
    Top = 289
    object TbRepAuxREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object TbRepAuxREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object TbRepAuxREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object TbRepAuxREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object TbRepAuxREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      Size = 3
    end
  end
  object DsEmpresa: TDataSource
    DataSet = TbEmpresa
    Left = 736
    Top = 332
  end
  object TbEmpresa: TTable
    AutoCalcFields = False
    BeforeEdit = TbEmpresaBeforeEdit
    DatabaseName = 'RWMaster'
    IndexName = 'XEMP_CODI'
    TableName = 'EMP0000'
    Left = 736
    Top = 289
    object TbEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 45
    end
    object TbEmpresaEMP_ENDERE: TStringField
      FieldName = 'EMP_ENDERE'
      Size = 45
    end
    object TbEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      Size = 25
    end
    object TbEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      Size = 30
    end
    object TbEmpresaEMP_UF: TStringField
      FieldName = 'EMP_UF'
      Size = 2
    end
    object TbEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbEmpresaEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbEmpresaEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbEmpresaEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Size = 35
    end
    object TbEmpresaEMP_CGC: TStringField
      FieldName = 'EMP_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TbEmpresaEMP_INSC: TStringField
      FieldName = 'EMP_INSC'
      Size = 14
    end
    object TbEmpresaEMP_HOME: TStringField
      FieldName = 'EMP_HOME'
      Size = 35
    end
    object TbEmpresaEMP_CXPOSTAL: TStringField
      FieldName = 'EMP_CXPOSTAL'
      Size = 7
    end
    object TbEmpresaEMP_ENDENTR: TStringField
      FieldName = 'EMP_ENDENTR'
      Size = 45
    end
    object TbEmpresaEMP_CIDENTR: TStringField
      FieldName = 'EMP_CIDENTR'
      Size = 30
    end
    object TbEmpresaEMP_UFENTR: TStringField
      FieldName = 'EMP_UFENTR'
      Size = 2
    end
    object TbEmpresaEMP_CEPENTR: TStringField
      FieldName = 'EMP_CEPENTR'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TbEmpresaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 45
    end
    object TbEmpresaEMP_EMAILCOMPRAS: TStringField
      FieldName = 'EMP_EMAILCOMPRAS'
      Size = 35
    end
    object TbEmpresaEMP_EMAILVENDAS: TStringField
      FieldName = 'EMP_EMAILVENDAS'
      Size = 35
    end
    object TbEmpresaEMP_NOMECOMPRADOR: TStringField
      FieldName = 'EMP_NOMECOMPRADOR'
    end
  end
  object TbEmbalagem: TTable
    AutoCalcFields = False
    AfterPost = TbEmbalagemAfterPost
    DatabaseName = 'RwDbAdm'
    IndexName = 'PED_CODI_PEB'
    TableName = 'PED_EB02'
    Left = 240
    object TbEmbalagemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbEmbalagemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbEmbalagemPEB_QTDE: TFloatField
      FieldName = 'PEB_QTDE'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbEmbalagemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbEmbalagemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbEmbalagemPEB_PRECO: TFloatField
      FieldName = 'PEB_PRECO'
    end
    object TbEmbalagemPRD_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_LK'
      LookupDataSet = TbProduto
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER'
      Size = 40
      Lookup = True
    end
  end
  object DsEmbalagem: TDataSource
    DataSet = TbEmbalagem
    Left = 235
    Top = 43
  end
  object DsPedidos: TDataSource
    DataSet = TbPedidos
    Left = 307
    Top = 234
  end
  object TbPedidos: TTable
    AutoCalcFields = False
    BeforeEdit = TbPedidosBeforeEdit
    DatabaseName = 'RwDbAdm'
    FieldDefs = <
      item
        Name = 'PED_CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'REP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PED_DTENTRADA'
        DataType = ftDateTime
      end
      item
        Name = 'PED_COMIS1'
        DataType = ftFloat
      end
      item
        Name = 'PED_COMIS2'
        DataType = ftFloat
      end
      item
        Name = 'PED_COMIS3'
        DataType = ftFloat
      end
      item
        Name = 'PCL_CODIGO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PED_DESCTOVL'
        DataType = ftFloat
      end
      item
        Name = 'PED_DESCTOPC'
        DataType = ftFloat
      end
      item
        Name = 'PED_DESCTOPC2'
        DataType = ftFloat
      end
      item
        Name = 'TRP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PED_FRETE2'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PED_FRETE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TRP_REDESP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PED_OBSNOTA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PED_SITUACAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PED_VLTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'PED_VLFATURADO'
        DataType = ftFloat
      end
      item
        Name = 'PED_VLFATBRUTO'
        DataType = ftFloat
      end
      item
        Name = 'PED_FATURAS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PED_SITCRED'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PED_OBSGERAL01'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PED_OBSGERAL02'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PED_OBSGERAL03'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'PED_DTEMBARQUE'
        DataType = ftDateTime
      end
      item
        Name = 'PED_DTLIM_ATD'
        DataType = ftDateTime
      end
      item
        Name = 'PED_DTSAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'PED_DTFATURA'
        DataType = ftDateTime
      end
      item
        Name = 'PED_PRIORIDADE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PED_EXPEDICAO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'XCLI_CODI_PED'
        Fields = 'CLI_CODIGO'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'XPED_CODI'
        Fields = 'PED_CODIGO'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'XREP_COD_PED'
        Fields = 'REP_CODIGO'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'PED0000'
    Left = 299
    Top = 192
    object TbPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbPedidosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbPedidosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbPedidosPED_DTENTRADA: TDateTimeField
      FieldName = 'PED_DTENTRADA'
      EditMask = '99/99/9999;1;_'
    end
    object TbPedidosPED_COMIS1: TFloatField
      FieldName = 'PED_COMIS1'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPedidosPED_COMIS2: TFloatField
      FieldName = 'PED_COMIS2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPedidosPED_COMIS3: TFloatField
      FieldName = 'PED_COMIS3'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPedidosPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbPedidosPED_DESCTOVL: TFloatField
      FieldName = 'PED_DESCTOVL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPedidosPED_DESCTOPC: TFloatField
      FieldName = 'PED_DESCTOPC'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object TbPedidosTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbPedidosPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object TbPedidosTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object TbPedidosPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object TbPedidosPED_VLTOTAL: TFloatField
      FieldName = 'PED_VLTOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPedidosPED_VLFATURADO: TFloatField
      FieldName = 'PED_VLFATURADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPedidosPED_FATURAS: TStringField
      FieldName = 'PED_FATURAS'
    end
    object TbPedidosPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object TbPedidosPED_DTLIM_ATD: TDateTimeField
      FieldName = 'PED_DTLIM_ATD'
      EditMask = '99/99/9999;1;_'
    end
    object TbPedidosPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object TbPedidosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      Size = 10
    end
    object TbPedidosPED_DTSAIDA: TDateTimeField
      FieldName = 'PED_DTSAIDA'
    end
    object TbPedidosPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object TbPedidosPED_OBSGERAL01: TStringField
      FieldName = 'PED_OBSGERAL01'
      Size = 80
    end
    object TbPedidosPED_OBSGERAL02: TStringField
      FieldName = 'PED_OBSGERAL02'
      Size = 80
    end
    object TbPedidosPED_OBSGERAL03: TStringField
      FieldName = 'PED_OBSGERAL03'
      Size = 80
    end
    object TbPedidosPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      Size = 7
    end
    object TbPedidosPED_DTEMBARQUE: TDateTimeField
      FieldName = 'PED_DTEMBARQUE'
    end
    object TbPedidosPED_VLFATBRUTO: TFloatField
      FieldName = 'PED_VLFATBRUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPedidosPED_DTFATURA: TDateTimeField
      FieldName = 'PED_DTFATURA'
    end
    object TbPedidosPED_DESCTOPC2: TFloatField
      FieldName = 'PED_DESCTOPC2'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
  end
  object TbTranspAux: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'TRP0000'
    Left = 523
    Top = 289
    object TbTranspAuxTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object TbTranspAuxTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
  end
  object DsTranspAux: TDataSource
    DataSet = TbTranspAux
    Left = 523
    Top = 332
  end
  object DsParcelas: TDataSource
    DataSet = TbParcelas
    Left = 235
    Top = 139
  end
  object DsPedItem: TDataSource
    DataSet = TbPedItem
    Left = 379
    Top = 234
  end
  object TbPedItem: TTable
    AutoCalcFields = False
    BeforeEdit = TbPedItemBeforeEdit
    AfterScroll = TbPedItemAfterScroll
    OnCalcFields = TbPedItemCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'PED_IT01'
    Left = 379
    Top = 192
    object TbPedItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbPedItemPRF_QTDE: TFloatField
      FieldName = 'PRF_QTDE'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPedItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbPedItemPRF_PRECO: TFloatField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPedItemPRF_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRF_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object TbPedItemPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      EditMask = '>L'
      Size = 1
    end
    object TbPedItemFATURA_CI: TBooleanField
      FieldName = 'FATURA_CI'
    end
    object TbPedItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbPedItemPRF_IPIALIQ: TFloatField
      FieldName = 'PRF_IPIALIQ'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object TbPedItemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 40
    end
    object TbPedItemPRF_VAR1: TFloatField
      FieldName = 'PRF_VAR1'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_VAR2: TFloatField
      FieldName = 'PRF_VAR2'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_VAR3: TFloatField
      FieldName = 'PRF_VAR3'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_VAR4: TFloatField
      FieldName = 'PRF_VAR4'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_VAR5: TFloatField
      FieldName = 'PRF_VAR5'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_VAR6: TFloatField
      FieldName = 'PRF_VAR6'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPedItemPRF_COMIS: TFloatField
      FieldName = 'PRF_COMIS'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object TbPedItemPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object TbPedItemPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
    end
    object TbPedItemPRF_VAR7: TFloatField
      FieldName = 'PRF_VAR7'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
    object TbPedItemPRF_VAR8: TFloatField
      FieldName = 'PRF_VAR8'
      DisplayFormat = ',##0'
      EditFormat = ',##0'
    end
  end
  object DsOperFisc: TDataSource
    DataSet = TbOperFisc
    Left = 523
    Top = 139
  end
  object TbOperFisc: TTable
    AutoCalcFields = False
    BeforeEdit = TbOperFiscBeforeEdit
    OnPostError = TbOperFiscPostError
    DatabaseName = 'RwDbAdm'
    TableName = 'OPE0000'
    Left = 523
    Top = 96
    object TbOperFiscOPE_SUBCOD: TStringField
      FieldName = 'OPE_SUBCOD'
      Required = True
      Size = 2
    end
    object TbOperFiscOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object TbOperFiscOPE_TRIBICMS: TBooleanField
      FieldName = 'OPE_TRIBICMS'
    end
    object TbOperFiscOPE_TRIBIPI: TBooleanField
      FieldName = 'OPE_TRIBIPI'
    end
    object TbOperFiscOPE_REDU_ICM: TFloatField
      FieldName = 'OPE_REDU_ICM'
    end
    object TbOperFiscOPE_REDU_IPI: TFloatField
      FieldName = 'OPE_REDU_IPI'
    end
    object TbOperFiscOPE_IPINABASEICMS: TBooleanField
      FieldName = 'OPE_IPINABASEICMS'
    end
    object TbOperFiscOPE_ESTATISTICA: TBooleanField
      FieldName = 'OPE_ESTATISTICA'
    end
    object TbOperFiscOPE_IMP_AVISO: TBooleanField
      FieldName = 'OPE_IMP_AVISO'
    end
    object TbOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 35
    end
    object TbOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbOperFiscOPE_SEMVLCOM: TBooleanField
      FieldName = 'OPE_SEMVLCOM'
    end
    object TbOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 3
    end
    object TbOperFiscOPE_SUBTRIBUTARIA: TBooleanField
      FieldName = 'OPE_SUBTRIBUTARIA'
    end
    object TbOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      Size = 80
    end
    object TbOperFiscOPE_FRETENABASE: TBooleanField
      FieldName = 'OPE_FRETENABASE'
    end
    object TbOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 4
    end
  end
  object DsPrdManut: TDataSource
    DataSet = TbPrdManut
    Left = 163
    Top = 43
  end
  object TbPrdManut: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD_ENSA'
    Left = 163
    object TbPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 7
    end
    object TbPrdManutPES_QTDE: TFloatField
      FieldName = 'PES_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object TbPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object TbPrdManutPES_DATA: TDateTimeField
      FieldName = 'PES_DATA'
      EditMask = '!99/99/9999;1;_'
    end
    object TbPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object TbPrdManutPES_VALOR: TFloatField
      FieldName = 'PES_VALOR'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbPrdManutPES_VAR1: TFloatField
      FieldName = 'PES_VAR1'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR2: TFloatField
      FieldName = 'PES_VAR2'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR3: TFloatField
      FieldName = 'PES_VAR3'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR4: TFloatField
      FieldName = 'PES_VAR4'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR5: TFloatField
      FieldName = 'PES_VAR5'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR6: TFloatField
      FieldName = 'PES_VAR6'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbPrdManutPES_VAR7: TFloatField
      FieldName = 'PES_VAR7'
    end
    object TbPrdManutPES_VAR8: TFloatField
      FieldName = 'PES_VAR8'
    end
  end
  object DsSaldoBanco: TDataSource
    DataSet = TbSaldoBanco
    Left = 379
    Top = 139
  end
  object TbSaldoBanco: TTable
    AutoCalcFields = False
    BeforeEdit = TbSaldoBancoBeforeEdit
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'BAN_CODIGO'
    TableName = 'SALDOBCO'
    Left = 379
    Top = 96
    object TbSaldoBancoSAB_CODIGO: TStringField
      FieldName = 'SAB_CODIGO'
      Size = 4
    end
    object TbSaldoBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbSaldoBancoSAB_DIA: TDateTimeField
      FieldName = 'SAB_DIA'
      EditMask = '99/99/9999;1;_'
    end
    object TbSaldoBancoSAB_SALDO: TFloatField
      FieldName = 'SAB_SALDO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbSaldoBancoSAB_BLOQUEADO: TFloatField
      FieldName = 'SAB_BLOQUEADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbSaldoBancoSAB_APLICADO: TFloatField
      FieldName = 'SAB_APLICADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbSaldoBancoSAB_TIPOAPL: TStringField
      FieldName = 'SAB_TIPOAPL'
      Size = 30
    end
    object TbSaldoBancoSAB_OBS: TStringField
      FieldName = 'SAB_OBS'
      Size = 50
    end
    object TbSaldoBancoBAN_APELIDO_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'BAN_APELIDO_LK'
      LookupDataSet = TbBanco
      LookupKeyFields = 'BAN_CODIGO'
      LookupResultField = 'BAN_APELIDO'
      KeyFields = 'BAN_CODIGO'
      Size = 40
      Lookup = True
    end
  end
  object DsFluxoCaixa: TDataSource
    DataSet = TbFluxoCaixa
    Left = 452
    Top = 139
  end
  object TbFluxoCaixa: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'FLUXOCX'
    Left = 452
    Top = 96
    object TbFluxoCaixaFLU_DIA: TDateTimeField
      FieldName = 'FLU_DIA'
    end
    object TbFluxoCaixaFLU_RECEBE: TFloatField
      FieldName = 'FLU_RECEBE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbFluxoCaixaFLU_PAGAR: TFloatField
      FieldName = 'FLU_PAGAR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbFluxoCaixaFLU_BANCO: TFloatField
      FieldName = 'FLU_BANCO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbFluxoCaixaFLU_SALDO: TFloatField
      FieldName = 'FLU_SALDO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbFluxoCaixaFLU_ACUMULO: TFloatField
      FieldName = 'FLU_ACUMULO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object TbFichaTec: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'FTC0000'
    Left = 595
    object TbFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object TbFichaTecFTC_TUP: TFloatField
      FieldName = 'FTC_TUP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFichaTecFTC_DCMODE1: TStringField
      FieldName = 'FTC_DCMODE1'
      Size = 12
    end
    object TbFichaTecFTC_DCMODE2: TStringField
      FieldName = 'FTC_DCMODE2'
      Size = 12
    end
    object TbFichaTecFTC_DCMODE3: TStringField
      FieldName = 'FTC_DCMODE3'
      Size = 12
    end
    object TbFichaTecFTC_DCMODE4: TStringField
      FieldName = 'FTC_DCMODE4'
      Size = 12
    end
    object TbFichaTecFTC_DCMODE5: TStringField
      FieldName = 'FTC_DCMODE5'
      Size = 12
    end
    object TbFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbFichaTecFTC_DCMODE6: TStringField
      FieldName = 'FTC_DCMODE6'
      Size = 12
    end
    object TbFichaTecFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object TbFichaTecFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object TbFichaTecFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object TbFichaTecFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object TbFichaTecFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object TbFichaTecFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object TbFichaTecFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object TbFichaTecFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object TbFichaTecFTC_CRIACAO: TDateTimeField
      FieldName = 'FTC_CRIACAO'
    end
    object TbFichaTecFTC_DCMODE7: TStringField
      FieldName = 'FTC_DCMODE7'
      Size = 12
    end
    object TbFichaTecFTC_DCMODE8: TStringField
      FieldName = 'FTC_DCMODE8'
      Size = 12
    end
    object TbFichaTecFTC_COMPLE: TFloatField
      FieldName = 'FTC_COMPLE'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFichaTecFTC_INDIRETA: TFloatField
      FieldName = 'FTC_INDIRETA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFichaTecFTC_LUCROUNID: TFloatField
      FieldName = 'FTC_LUCROUNID'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFichaTecFTC_FIXO: TFloatField
      FieldName = 'FTC_FIXO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object DsFichaTec: TDataSource
    DataSet = TbFichaTec
    Left = 595
    Top = 43
  end
  object DsFichaTecIten: TDataSource
    DataSet = TbFichaTecIten
    Left = 667
    Top = 43
  end
  object TbFichaTecIten: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'FTC_IT01'
    Left = 667
    object TbFichaTecItenPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object TbFichaTecItenFTI_UC: TFloatField
      FieldName = 'FTI_UC'
    end
    object TbFichaTecItenFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object TbFichaTecItenFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object TbFichaTecItenFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object TbFichaTecItenFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object TbFichaTecItenFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object TbFichaTecItenPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object TbFichaTecItenFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object TbFichaTecItenEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbFichaTecItenFTI_MODIFICADA: TDateTimeField
      FieldName = 'FTI_MODIFICADA'
    end
    object TbFichaTecItenFTI_UCMODIFIC: TFloatField
      FieldName = 'FTI_UCMODIFIC'
    end
    object TbFichaTecItenFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 1
    end
    object TbFichaTecItenFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 1
    end
    object TbFichaTecItenFTI_PRECOCUSTO: TFloatField
      FieldName = 'FTI_PRECOCUSTO'
    end
  end
  object TbParcelas: TTable
    AutoCalcFields = False
    BeforeEdit = TbParcelasBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'PCL0000'
    Left = 235
    Top = 96
    object TbParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbParcelasPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object TbParcelasPCL_DESCTO: TFloatField
      FieldName = 'PCL_DESCTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbParcelasPCL_MULTA: TFloatField
      FieldName = 'PCL_MULTA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbParcelasPCL_JUROS: TFloatField
      FieldName = 'PCL_JUROS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbParcelasPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
    end
    object TbParcelasPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object TbParcelasPCL_MANTERDIA: TBooleanField
      FieldName = 'PCL_MANTERDIA'
    end
    object TbParcelasPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object TbParcelasPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      Size = 50
    end
    object TbParcelasPCL_DISPONIVEL: TBooleanField
      FieldName = 'PCL_DISPONIVEL'
    end
  end
  object DsOrdCompItem: TDataSource
    DataSet = TbOrdCompItem
    Left = 24
    Top = 332
  end
  object TbOrdCompItem: TTable
    AutoCalcFields = False
    BeforeEdit = TbOrdCompItemBeforeEdit
    AfterScroll = TbOrdCompItemAfterScroll
    OnCalcFields = TbOrdCompItemCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'OCP_IT01'
    Left = 24
    Top = 289
    object TbOrdCompItemOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object TbOrdCompItemOCI_QTDE: TFloatField
      FieldName = 'OCI_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbOrdCompItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbOrdCompItemOCI_IPI: TFloatField
      FieldName = 'OCI_IPI'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbOrdCompItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbOrdCompItemOCI_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OCI_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object TbOrdCompItemOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      EditMask = '>L'
      Size = 1
    end
    object TbOrdCompItemPRD_DESCRI_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRD_DESCRI_CC'
      Size = 40
      Calculated = True
    end
    object TbOrdCompItemOCI_PRECO: TFloatField
      FieldName = 'OCI_PRECO'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
  end
  object DsOrdCompra: TDataSource
    DataSet = TbOrdCompra
    Left = 736
    Top = 234
  end
  object TbOrdCompra: TTable
    AutoCalcFields = False
    BeforeEdit = TbOrdCompraBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'OCP0000'
    Left = 736
    Top = 192
    object TbOrdCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object TbOrdCompraCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
    object TbOrdCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbOrdCompraOCP_DTMAXIMA: TDateTimeField
      FieldName = 'OCP_DTMAXIMA'
      EditMask = '99/99/9999;1;_'
    end
    object TbOrdCompraOCP_DTEMIS: TDateTimeField
      FieldName = 'OCP_DTEMIS'
      EditMask = '99/99/9999;1;_'
    end
    object TbOrdCompraOCP_DTMINIMA: TDateTimeField
      FieldName = 'OCP_DTMINIMA'
      EditMask = '99/99/9999;1;_'
    end
    object TbOrdCompraOCP_FRETE: TStringField
      FieldName = 'OCP_FRETE'
      Size = 3
    end
    object TbOrdCompraOCP_ICMS: TFloatField
      FieldName = 'OCP_ICMS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbOrdCompraOCP_IPI: TFloatField
      FieldName = 'OCP_IPI'
    end
    object TbOrdCompraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbOrdCompraOCP_PRAZOPGTO: TStringField
      FieldName = 'OCP_PRAZOPGTO'
      Size = 30
    end
    object TbOrdCompraOCP_DESCTO: TFloatField
      FieldName = 'OCP_DESCTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbOrdCompraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbOrdCompraOCP_TOTAL: TFloatField
      FieldName = 'OCP_TOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbOrdCompraFOR_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'FOR_DESCRI_LK'
      LookupDataSet = TbFornec
      LookupKeyFields = 'FOR_CODIGO'
      LookupResultField = 'FOR_RAZAO'
      KeyFields = 'FOR_CODIGO'
      Size = 45
      Lookup = True
    end
    object TbOrdCompraFOR_FONCONT_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'FOR_FONCONT_LK'
      LookupDataSet = TbFornec
      LookupKeyFields = 'FOR_CODIGO'
      LookupResultField = 'FOR_FONCONT'
      KeyFields = 'FOR_CODIGO'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
      Lookup = True
    end
    object TbOrdCompraOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
    object TbOrdCompraOCP_OBS1: TStringField
      FieldName = 'OCP_OBS1'
      Size = 80
    end
    object TbOrdCompraOCP_OBS2: TStringField
      FieldName = 'OCP_OBS2'
      Size = 80
    end
    object TbOrdCompraOCP_REQUERENTE: TStringField
      FieldName = 'OCP_REQUERENTE'
    end
  end
  object DsCotaItem: TDataSource
    DataSet = TbCotaItem
    Left = 667
    Top = 234
  end
  object TbCotaItem: TTable
    AutoCalcFields = False
    BeforePost = TbCotaItemBeforePost
    AfterDelete = TbCotaItemAfterDelete
    OnCalcFields = TbCotaItemCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'COT_IT01'
    Left = 667
    Top = 192
    object TbCotaItemCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
    object TbCotaItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbCotaItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbCotaItemCIT_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CIT_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object TbCotaItemPRD_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_LK'
      LookupDataSet = TbProduto
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER'
      Size = 40
      Lookup = True
    end
    object TbCotaItemCIT_REG: TAutoIncField
      FieldName = 'CIT_REG'
    end
    object TbCotaItemCIT_QTDE: TFloatField
      FieldName = 'CIT_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbCotaItemCIT_PRECO: TFloatField
      FieldName = 'CIT_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbCotaItemCIT_IPI: TFloatField
      FieldName = 'CIT_IPI'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
  end
  object DsCotacao: TDataSource
    DataSet = TbCotacao
    Left = 595
    Top = 234
  end
  object TbCotacao: TTable
    AutoCalcFields = False
    BeforeEdit = TbCotacaoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'COT0000'
    Left = 595
    Top = 192
    object TbCotacaoCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
    object TbCotacaoCOT_DATA: TDateTimeField
      FieldName = 'COT_DATA'
      EditMask = '99/99/9999;1;_'
    end
    object TbCotacaoCOT_FRETE: TStringField
      FieldName = 'COT_FRETE'
      Size = 3
    end
    object TbCotacaoCOT_PRAZOPGTO: TStringField
      FieldName = 'COT_PRAZOPGTO'
      Size = 30
    end
    object TbCotacaoCOT_OBS: TMemoField
      FieldName = 'COT_OBS'
      BlobType = ftMemo
    end
    object TbCotacaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbCotacaoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbCotacaoFOR_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'FOR_DESCRI_LK'
      LookupDataSet = TbFornec
      LookupKeyFields = 'FOR_CODIGO'
      LookupResultField = 'FOR_RAZAO'
      KeyFields = 'FOR_CODIGO'
      Size = 45
      Lookup = True
    end
    object TbCotacaoFOR_FONE_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'FOR_FONE_LK'
      LookupDataSet = TbFornec
      LookupKeyFields = 'FOR_CODIGO'
      LookupResultField = 'FOR_FONCONT'
      KeyFields = 'FOR_CODIGO'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
      Lookup = True
    end
    object TbCotacaoCOT_STATUS: TStringField
      FieldName = 'COT_STATUS'
      Size = 1
    end
    object TbCotacaoCOT_ENTREGA: TDateTimeField
      FieldName = 'COT_ENTREGA'
      EditMask = '99/99/9999;1;_'
    end
    object TbCotacaoCOT_ICMS: TFloatField
      FieldName = 'COT_ICMS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbCotacaoCOT_IPI: TFloatField
      FieldName = 'COT_IPI'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbCotacaoCOT_DESCTO: TFloatField
      FieldName = 'COT_DESCTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbCotacaoCOT_TOTAL: TFloatField
      FieldName = 'COT_TOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsPrdPend: TDataSource
    DataSet = TbPrdPend
    Left = 91
    Top = 43
  end
  object TbPrdPend: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD_PEND'
    Left = 91
    object TbPrdPendPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbPrdPendOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object TbPrdPendPPE_QTDE: TFloatField
      FieldName = 'PPE_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbPrdPendPPE_DATA: TDateTimeField
      FieldName = 'PPE_DATA'
    end
    object TbPrdPendPPE_REG: TAutoIncField
      FieldName = 'PPE_REG'
    end
  end
  object DsPagItens: TDataSource
    DataSet = TbPagItens
    Left = 235
    Top = 234
  end
  object TbPagItens: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'PAG_IT02'
    Left = 235
    Top = 192
    object TbPagItensPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 9
    end
    object TbPagItensPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbPagItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbPagItensPRD_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_LK'
      LookupDataSet = TbProduto
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER'
      Size = 45
      Lookup = True
    end
    object TbPagItensPAT_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PAT_TOTAL_CC'
      Calculated = True
    end
    object TbPagItensOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object TbPagItensPAT_QTDE: TFloatField
      FieldName = 'PAT_QTDE'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbPagItensPAT_PRECO: TFloatField
      FieldName = 'PAT_PRECO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbPagItensPAT_IPI: TFloatField
      FieldName = 'PAT_IPI'
      Required = True
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbPagItensPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
  end
  object TbTmpNfEnt: TTable
    AutoCalcFields = False
    OnCalcFields = TbTmpNfEntCalcFields
    DatabaseName = 'Adjutor'
    TableName = 'TMP_ENTNF'
    Left = 595
    Top = 289
    object TbTmpNfEntREG: TAutoIncField
      FieldName = 'REG'
    end
    object TbTmpNfEntPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 9
    end
    object TbTmpNfEntPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbTmpNfEntPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbTmpNfEntPAT_QTDE: TFloatField
      FieldName = 'PAT_QTDE'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbTmpNfEntPAT_IPI: TFloatField
      FieldName = 'PAT_IPI'
      Required = True
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbTmpNfEntPRD_DESCRI_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_LK'
      LookupDataSet = TbProduto
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER'
      Lookup = True
    end
    object TbTmpNfEntPAT_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PAT_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object TbTmpNfEntPAT_PRECO: TFloatField
      FieldName = 'PAT_PRECO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsTmpNfEnt: TDataSource
    DataSet = TbTmpNfEnt
    Left = 595
    Top = 332
  end
  object DsRecItem: TDataSource
    DataSet = TbRecItem
    Left = 163
    Top = 139
  end
  object TbRecItem: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'FAT_IT02'
    Left = 163
    Top = 96
    object TbRecItemFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbRecItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object TbRecItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbRecItemFIT_QTDE: TFloatField
      FieldName = 'FIT_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbRecItemFIT_PRECO: TFloatField
      FieldName = 'FIT_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbRecItemFIT_IPIALIQ: TFloatField
      FieldName = 'FIT_IPIALIQ'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbRecItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbRecItemFIT_COMIS: TFloatField
      FieldName = 'FIT_COMIS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbRecItemFIT_DESCTO: TFloatField
      FieldName = 'FIT_DESCTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbRecItemFIT_SUBSTIT: TFloatField
      FieldName = 'FIT_SUBSTIT'
    end
  end
  object DsForXProd: TDataSource
    DataSet = TbForXProd
    Left = 163
    Top = 332
  end
  object TbForXProd: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    TableName = 'FOR_PROD'
    Left = 163
    Top = 289
    object TbForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object TbForXProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object DsICMS: TDataSource
    DataSet = TbICMS
    Left = 736
    Top = 139
  end
  object TbICMS: TTable
    AutoCalcFields = False
    BeforeEdit = TbICMSBeforeEdit
    DatabaseName = 'RWMaster'
    TableName = 'ICM0000'
    Left = 736
    Top = 96
    object TbICMSICM_LOCAL: TStringField
      FieldName = 'ICM_LOCAL'
      Size = 4
    end
    object TbICMSICM_ALIQ: TFloatField
      FieldName = 'ICM_ALIQ'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbICMSICM_ORIGEM: TStringField
      FieldName = 'ICM_ORIGEM'
    end
    object TbICMSICM_DESTINO: TStringField
      FieldName = 'ICM_DESTINO'
    end
    object TbICMSICMS_SUBS: TFloatField
      FieldName = 'ICMS_SUBS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbICMSICM_IE_SUBTRIB: TStringField
      FieldName = 'ICM_IE_SUBTRIB'
      Size = 18
    end
  end
  object TbCliAtividade: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'RCL_CODIGO'
    TableName = 'CLI_ATV1'
    Left = 24
    Top = 192
    object TbCliAtividadeRCL_CODIGO: TStringField
      FieldName = 'RCL_CODIGO'
      Required = True
      Size = 2
    end
    object TbCliAtividadeRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
      Required = True
    end
    object TbCliAtividadeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsCliAtividade: TDataSource
    DataSet = TbCliAtividade
    Left = 24
    Top = 234
  end
  object TbParametros: TTable
    BeforeEdit = TbParametrosBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'PRMT0001'
    Left = 667
    Top = 289
    object TbParametrosPMT_NOSSOCODIGO: TStringField
      FieldName = 'PMT_NOSSOCODIGO'
      Size = 3
    end
    object TbParametrosPMT_COMIS_GRP: TBooleanField
      FieldName = 'PMT_COMIS_GRP'
    end
    object TbParametrosPMT_COMIS_REP: TFloatField
      FieldName = 'PMT_COMIS_REP'
    end
    object TbParametrosPMT_COMIS_SUP: TFloatField
      FieldName = 'PMT_COMIS_SUP'
    end
    object TbParametrosPMT_COMIS_GER: TFloatField
      FieldName = 'PMT_COMIS_GER'
    end
    object TbParametrosPMT_PAGTO_COM_TP: TStringField
      FieldName = 'PMT_PAGTO_COM_TP'
      Size = 1
    end
    object TbParametrosPMT_COMIS_QUINZ: TBooleanField
      FieldName = 'PMT_COMIS_QUINZ'
    end
    object TbParametrosPMT_1QZ_DIAS: TStringField
      FieldName = 'PMT_1QZ_DIAS'
      Size = 4
    end
    object TbParametrosPMT_2QZ_DIAS: TStringField
      FieldName = 'PMT_2QZ_DIAS'
      Size = 4
    end
    object TbParametrosPMT_BORDERO_COM: TStringField
      FieldName = 'PMT_BORDERO_COM'
      Size = 1
    end
    object TbParametrosPMT_NUMER_PEDIDO: TStringField
      FieldName = 'PMT_NUMER_PEDIDO'
      Size = 1
    end
    object TbParametrosPMT_DPL_IPI_NA1D: TBooleanField
      FieldName = 'PMT_DPL_IPI_NA1D'
    end
    object TbParametrosPMT_ATUALIZ_ESTONF: TBooleanField
      FieldName = 'PMT_ATUALIZ_ESTONF'
    end
    object TbParametrosPMT_QTDE_DECIMAIS: TStringField
      FieldName = 'PMT_QTDE_DECIMAIS'
      Size = 1
    end
    object TbParametrosPMT_PED_IMPORTANTE: TMemoField
      FieldName = 'PMT_PED_IMPORTANTE'
      BlobType = ftMemo
    end
    object TbParametrosPMT_CAB_TABPRECO: TStringField
      FieldName = 'PMT_CAB_TABPRECO'
      Size = 70
    end
    object TbParametrosPMT_OBS_BLOQ1: TStringField
      FieldName = 'PMT_OBS_BLOQ1'
      Size = 45
    end
    object TbParametrosPMT_OBS_BLOQ2: TStringField
      FieldName = 'PMT_OBS_BLOQ2'
      Size = 45
    end
    object TbParametrosPMT_OBS_BLOQ3: TStringField
      FieldName = 'PMT_OBS_BLOQ3'
      Size = 45
    end
    object TbParametrosPMT_LOC_PAGTO: TStringField
      FieldName = 'PMT_LOC_PAGTO'
      Size = 45
    end
    object TbParametrosPMT_IRRF: TFloatField
      FieldName = 'PMT_IRRF'
    end
    object TbParametrosPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
    end
    object TbParametrosPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
    object TbParametrosPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      Size = 1
    end
    object TbParametrosPMT_EANPAIS: TStringField
      FieldName = 'PMT_EANPAIS'
      Size = 3
    end
    object TbParametrosPMT_EANEMPRESA: TStringField
      FieldName = 'PMT_EANEMPRESA'
      Size = 6
    end
    object TbParametrosPMT_PEDITEMDESC: TBooleanField
      FieldName = 'PMT_PEDITEMDESC'
    end
    object TbParametrosPMT_DESCPRODRES: TBooleanField
      FieldName = 'PMT_DESCPRODRES'
    end
    object TbParametrosPMT_PRECOCOMIPI: TBooleanField
      FieldName = 'PMT_PRECOCOMIPI'
    end
    object TbParametrosPMT_SITRIBUTARIA: TStringField
      FieldName = 'PMT_SITRIBUTARIA'
      Size = 2
    end
    object TbParametrosPMT_NF_MARCA: TStringField
      FieldName = 'PMT_NF_MARCA'
      Size = 12
    end
    object TbParametrosPMT_COMIS_PROD: TBooleanField
      FieldName = 'PMT_COMIS_PROD'
    end
    object TbParametrosSIN_COD_IDENTIF: TStringField
      FieldName = 'SIN_COD_IDENTIF'
      Size = 1
    end
    object TbParametrosSIN_COD_FINALID: TStringField
      FieldName = 'SIN_COD_FINALID'
      Size = 1
    end
    object TbParametrosSIN_MODE_NF: TStringField
      FieldName = 'SIN_MODE_NF'
      Size = 2
    end
    object TbParametrosSIN_SERIE_NF: TStringField
      FieldName = 'SIN_SERIE_NF'
      Size = 3
    end
    object TbParametrosSIN_SUBSERIE: TStringField
      FieldName = 'SIN_SUBSERIE'
      Size = 2
    end
    object TbParametrosSIN_CONTATO: TStringField
      FieldName = 'SIN_CONTATO'
      Size = 28
    end
    object TbParametrosPMT_ITENS_PEDIDO: TSmallintField
      FieldName = 'PMT_ITENS_PEDIDO'
    end
    object TbParametrosPMT_DESCTO_ITEM: TBooleanField
      FieldName = 'PMT_DESCTO_ITEM'
    end
    object TbParametrosPMT_CELULAPROD: TBooleanField
      FieldName = 'PMT_CELULAPROD'
    end
    object TbParametrosPMT_PROCESPROD: TBooleanField
      FieldName = 'PMT_PROCESPROD'
    end
    object TbParametrosPMT_VARIACOES: TBooleanField
      FieldName = 'PMT_VARIACOES'
    end
  end
  object DsParametros: TDataSource
    DataSet = TbParametros
    Left = 667
    Top = 332
  end
  object DTBAdjMaster: TDatabase
    AliasName = 'AdjMaster'
    DatabaseName = 'RWMaster'
    KeepConnection = False
    SessionName = 'Default'
    OnLogin = DTBAdjMasterLogin
    Left = 397
    Top = 485
  end
  object TbFatorCustos: TTable
    BeforeEdit = TbFatorCustosBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'VCT0000'
    Left = 24
    Top = 387
    object TbFatorCustosVCT_CLASSE: TStringField
      FieldName = 'VCT_CLASSE'
      Required = True
      Size = 1
    end
    object TbFatorCustosVCT_TUP: TFloatField
      FieldName = 'VCT_TUP'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object TbFatorCustosVCT_TMAQ: TFloatField
      FieldName = 'VCT_TMAQ'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object TbFatorCustosVCT_DF: TFloatField
      FieldName = 'VCT_DF'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_DV: TFloatField
      FieldName = 'VCT_DV'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_ICMS: TFloatField
      FieldName = 'VCT_ICMS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_FED: TFloatField
      FieldName = 'VCT_FED'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_DPG: TFloatField
      FieldName = 'VCT_DPG'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_LV: TFloatField
      FieldName = 'VCT_LV'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_FIN: TFloatField
      FieldName = 'VCT_FIN'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_COMRP: TFloatField
      FieldName = 'VCT_COMRP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_COMSP: TFloatField
      FieldName = 'VCT_COMSP'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_COMGE: TFloatField
      FieldName = 'VCT_COMGE'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_DESC: TFloatField
      FieldName = 'VCT_DESC'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_FIXO: TFloatField
      FieldName = 'VCT_FIXO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_COMPLE: TFloatField
      FieldName = 'VCT_COMPLE'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_INDIRETA: TFloatField
      FieldName = 'VCT_INDIRETA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_LUCROUNID: TFloatField
      FieldName = 'VCT_LUCROUNID'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_PERDA: TFloatField
      FieldName = 'VCT_PERDA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_VISTA: TFloatField
      FieldName = 'VCT_VISTA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_30D: TFloatField
      FieldName = 'VCT_30D'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_45D: TFloatField
      FieldName = 'VCT_45D'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_60D: TFloatField
      FieldName = 'VCT_60D'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_75D: TFloatField
      FieldName = 'VCT_75D'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_90D: TFloatField
      FieldName = 'VCT_90D'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TbFatorCustosVCT_TXTCOND1: TStringField
      FieldName = 'VCT_TXTCOND1'
      Size = 7
    end
    object TbFatorCustosVCT_TXTCOND2: TStringField
      FieldName = 'VCT_TXTCOND2'
      Size = 7
    end
    object TbFatorCustosVCT_TXTCOND3: TStringField
      FieldName = 'VCT_TXTCOND3'
      Size = 7
    end
    object TbFatorCustosVCT_TXTCOND4: TStringField
      FieldName = 'VCT_TXTCOND4'
      Size = 7
    end
    object TbFatorCustosVCT_TXTCOND5: TStringField
      FieldName = 'VCT_TXTCOND5'
      Size = 7
    end
    object TbFatorCustosVCT_TXTCOND6: TStringField
      FieldName = 'VCT_TXTCOND6'
      Size = 7
    end
  end
  object DsFatorCustos: TDataSource
    DataSet = TbFatorCustos
    Left = 24
    Top = 429
  end
  object TbUsers: TTable
    BeforeEdit = TbUsersBeforeEdit
    DatabaseName = 'RWMaster'
    IndexFieldNames = 'NOME'
    TableName = 'USERS'
    Left = 91
    Top = 387
    object TbUsersNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 10
    end
    object TbUsersSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 6
    end
    object TbUsersMENU1_01: TStringField
      FieldName = 'MENU1_01'
      Size = 5
    end
    object TbUsersMENU1_02: TStringField
      FieldName = 'MENU1_02'
      Size = 5
    end
    object TbUsersMENU1_03: TStringField
      FieldName = 'MENU1_03'
      Size = 5
    end
    object TbUsersMENU1_04: TStringField
      FieldName = 'MENU1_04'
      Size = 5
    end
    object TbUsersMENU1_05: TStringField
      FieldName = 'MENU1_05'
      Size = 5
    end
    object TbUsersMENU1_06: TStringField
      FieldName = 'MENU1_06'
      Size = 5
    end
    object TbUsersMENU2_01: TStringField
      FieldName = 'MENU2_01'
      Size = 5
    end
    object TbUsersMENU2_02: TStringField
      FieldName = 'MENU2_02'
      Size = 5
    end
    object TbUsersMENU2_03: TStringField
      FieldName = 'MENU2_03'
      Size = 5
    end
    object TbUsersMENU2_04: TStringField
      FieldName = 'MENU2_04'
      Size = 5
    end
    object TbUsersMENU3_01: TStringField
      FieldName = 'MENU3_01'
      Size = 5
    end
    object TbUsersMENU3_02: TStringField
      FieldName = 'MENU3_02'
      Size = 5
    end
    object TbUsersMENU3_03: TStringField
      FieldName = 'MENU3_03'
      Size = 5
    end
    object TbUsersMENU3_04: TStringField
      FieldName = 'MENU3_04'
      Size = 5
    end
    object TbUsersMENU4_01: TStringField
      FieldName = 'MENU4_01'
      Size = 5
    end
    object TbUsersOP_INCALT: TStringField
      FieldName = 'OP_INCALT'
      Size = 5
    end
    object TbUsersOP_EXCLUI: TStringField
      FieldName = 'OP_EXCLUI'
      Size = 5
    end
    object TbUsersOP_CONSULTA: TStringField
      FieldName = 'OP_CONSULTA'
      Size = 5
    end
    object TbUsersOP_RELATORIO: TStringField
      FieldName = 'OP_RELATORIO'
      Size = 5
    end
  end
  object DsUsers: TDataSource
    DataSet = TbUsers
    Left = 91
    Top = 429
  end
  object DTBShare: TDatabase
    AliasName = 'AdjShare'
    DatabaseName = 'RwDbShr'
    KeepConnection = False
    SessionName = 'Default'
    OnLogin = DTBShareLogin
    Left = 25
    Top = 485
  end
  object TbShare: TTable
    DatabaseName = 'RWMaster'
    TableName = 'SHAREDB'
    Left = 163
    Top = 387
    object TbShareClientes: TStringField
      FieldName = 'Clientes'
      Required = True
      Size = 1
    end
    object TbShareProdutos: TStringField
      FieldName = 'Produtos'
      Required = True
      Size = 1
    end
    object TbShareBancos: TStringField
      FieldName = 'Bancos'
      Required = True
      Size = 1
    end
    object TbShareTransportadoras: TStringField
      FieldName = 'Transportadoras'
      Required = True
      Size = 1
    end
    object TbShareRepresentantes: TStringField
      FieldName = 'Representantes'
      Required = True
      Size = 1
    end
    object TbShareFornecedores: TStringField
      FieldName = 'Fornecedores'
      Required = True
      Size = 1
    end
    object TbShareReceber: TStringField
      FieldName = 'Receber'
      Required = True
      Size = 1
    end
    object TbSharePagar: TStringField
      FieldName = 'Pagar'
      Required = True
      Size = 1
    end
    object TbSharePedidos: TStringField
      FieldName = 'Pedidos'
      Required = True
      Size = 1
    end
    object TbShareCotacoes: TStringField
      FieldName = 'Cotacoes'
      Required = True
      Size = 1
    end
    object TbShareOrdensCompra: TStringField
      FieldName = 'OrdensCompra'
      Required = True
      Size = 1
    end
    object TbSharefichaTecnica: TStringField
      FieldName = 'fichaTecnica'
      Required = True
      Size = 1
    end
    object TbShareOrdemProducao: TStringField
      FieldName = 'OrdemProducao'
      Required = True
      Size = 1
    end
    object TbShareTabelas: TStringField
      FieldName = 'Tabelas'
      Required = True
      Size = 1
    end
  end
  object DsShare: TDataSource
    DataSet = TbShare
    Left = 163
    Top = 429
  end
  object TbCentroCusto: TTable
    BeforeEdit = TbCentroCustoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'CEC_0000'
    Left = 235
    Top = 387
    object TbCentroCustoCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object TbCentroCustoCEC_DESCRI: TStringField
      FieldName = 'CEC_DESCRI'
      Size = 35
    end
  end
  object DsCentroCusto: TDataSource
    DataSet = TbCentroCusto
    Left = 235
    Top = 429
  end
  object TbCheque: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'CHQ0000'
    Left = 307
    Top = 387
    object TbChequeCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      Required = True
      Size = 4
    end
    object TbChequeCHQ_TOTAL: TFloatField
      FieldName = 'CHQ_TOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbChequeCHQ_NOMINAL: TStringField
      FieldName = 'CHQ_NOMINAL'
      Size = 40
    end
    object TbChequeCHQ_DATA: TDateTimeField
      FieldName = 'CHQ_DATA'
    end
    object TbChequeCHQ_FINALIZA: TStringField
      FieldName = 'CHQ_FINALIZA'
      Required = True
      Size = 1
    end
    object TbChequeBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbChequeBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Size = 14
    end
    object TbChequeCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      Size = 1
    end
  end
  object DsCheque: TDataSource
    DataSet = TbCheque
    Left = 307
    Top = 429
  end
  object TbChequeItens: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'CHQ_IT01'
    Left = 379
    Top = 387
    object TbChequeItensCHQ_CODIGO: TStringField
      FieldName = 'CHQ_CODIGO'
      Required = True
      Size = 4
    end
    object TbChequeItensCHE_FAVORECIDO: TStringField
      FieldName = 'CHE_FAVORECIDO'
      Size = 40
    end
    object TbChequeItensCHE_NUMDOC: TStringField
      FieldName = 'CHE_NUMDOC'
      Size = 12
    end
    object TbChequeItensCHE_PARCELA: TStringField
      FieldName = 'CHE_PARCELA'
      Size = 2
    end
    object TbChequeItensCHE_REMOVE: TStringField
      FieldName = 'CHE_REMOVE'
      Size = 1
    end
    object TbChequeItensCHE_OBS: TStringField
      FieldName = 'CHE_OBS'
      Size = 15
    end
    object TbChequeItensCHE_VENCTO: TDateTimeField
      FieldName = 'CHE_VENCTO'
    end
    object TbChequeItensCHE_VLPAGO: TFloatField
      FieldName = 'CHE_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbChequeItensPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
  end
  object DsChequeItens: TDataSource
    DataSet = TbChequeItens
    Left = 379
    Top = 429
  end
  object TbCelula: TTable
    BeforeEdit = TbCelulaBeforeEdit
    DatabaseName = 'RwDbAdm'
    IndexName = 'XCEL_CODI'
    TableName = 'CEL0000'
    Left = 452
    Top = 387
    object TbCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object TbCelulaCEL_RAZAO: TStringField
      FieldName = 'CEL_RAZAO'
      Size = 40
    end
    object TbCelulaCEL_ENDE: TStringField
      FieldName = 'CEL_ENDE'
      Size = 40
    end
    object TbCelulaCEL_BAIRRO: TStringField
      FieldName = 'CEL_BAIRRO'
    end
    object TbCelulaCEL_CIDADE: TStringField
      FieldName = 'CEL_CIDADE'
      Size = 25
    end
    object TbCelulaCEL_INSC: TStringField
      FieldName = 'CEL_INSC'
      Size = 18
    end
    object TbCelulaCEL_FONE1: TStringField
      FieldName = 'CEL_FONE1'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbCelulaCEL_CELULAR: TStringField
      FieldName = 'CEL_CELULAR'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TbCelulaCEL_FAX: TStringField
      FieldName = 'CEL_FAX'
      Size = 11
    end
    object TbCelulaCEL_OBS: TStringField
      FieldName = 'CEL_OBS'
      Size = 100
    end
    object TbCelulaCEL_CNPJ: TStringField
      FieldName = 'CEL_CNPJ'
      Size = 18
    end
    object TbCelulaCEL_CEP: TStringField
      FieldName = 'CEL_CEP'
      Size = 9
    end
  end
  object DsCelula: TDataSource
    DataSet = TbCelula
    Left = 452
    Top = 429
  end
  object DsComponentes: TDataSource
    DataSet = TbComponentes
    Left = 523
    Top = 429
  end
  object TbComponentes: TTable
    BeforeEdit = TbComponentesBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'CEL_CP01'
    Left = 523
    Top = 387
    object TbComponentesCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      Size = 4
    end
    object TbComponentesCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      Size = 30
    end
    object TbComponentesCCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      Size = 18
    end
    object TbComponentesCCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
      DisplayFormat = '#,##0'
      EditFormat = '#,###'
    end
    object TbComponentesCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbComponentesCEL_NOME_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'CEL_NOME_LK'
      LookupDataSet = TbCelula
      LookupKeyFields = 'CEL_CODIGO'
      LookupResultField = 'CEL_NOME'
      KeyFields = 'CEL_CODIGO'
      Size = 35
      Lookup = True
    end
  end
  object DsMetas: TDataSource
    DataSet = TbMetas
    Left = 595
    Top = 434
  end
  object TbMetas: TTable
    BeforeEdit = TbMetasBeforeEdit
    OnCalcFields = TbMetasCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'CEL_ME02'
    Left = 595
    Top = 387
    object TbMetasCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object TbMetasCME_DIASUTEIS: TFloatField
      FieldName = 'CME_DIASUTEIS'
    end
    object TbMetasCME_TUPMETAMES: TFloatField
      FieldName = 'CME_TUPMETAMES'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbMetasCME_TUPACRECENT: TFloatField
      FieldName = 'CME_TUPACRECENT'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbMetasCME_TUPNEGATIVO: TFloatField
      FieldName = 'CME_TUPNEGATIVO'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbMetasCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbMetasCME_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CME_MES_CC'
      Size = 2
      Calculated = True
    end
    object TbMetasCME_ANO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CME_ANO_CC'
      Size = 4
      Calculated = True
    end
    object TbMetasCEL_NOME_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'CEL_NOME_LK'
      LookupDataSet = TbCelula
      LookupKeyFields = 'CEL_CODIGO'
      LookupResultField = 'CEL_NOME'
      KeyFields = 'CEL_CODIGO'
      Lookup = True
    end
    object TbMetasCME_TUPREALIZADO: TFloatField
      FieldName = 'CME_TUPREALIZADO'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbMetasCME_FATURAMENTO: TFloatField
      FieldName = 'CME_FATURAMENTO'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object TbMetasCME_PERCPATICIPA: TFloatField
      FieldName = 'CME_PERCPATICIPA'
      DisplayFormat = '#0.00" %"'
    end
    object TbMetasTUP_ARealizar_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TUP_ARealizar_CC'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Calculated = True
    end
    object TbMetasCME_TOT_DIAS_COMP: TFloatField
      FieldName = 'CME_TOT_DIAS_COMP'
    end
  end
  object TbMovCel: TTable
    BeforeEdit = TbMovCelBeforeEdit
    AfterScroll = TbMovCelAfterScroll
    DatabaseName = 'RwDbAdm'
    TableName = 'CEL_MOV03'
    Left = 667
    Top = 387
    object TbMovCelOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 6
    end
    object TbMovCelCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbMovCelPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object TbMovCelOSV_EMISSAO: TDateTimeField
      FieldName = 'OSV_EMISSAO'
    end
    object TbMovCelOSV_QTDE: TFloatField
      FieldName = 'OSV_QTDE'
    end
    object TbMovCelPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbMovCelCEM_DTENTROU: TDateTimeField
      FieldName = 'CEM_DTENTROU'
    end
    object TbMovCelCEM_DTCONCLUIU: TDateTimeField
      FieldName = 'CEM_DTCONCLUIU'
    end
    object TbMovCelCEM_PRECOUNIT: TFloatField
      FieldName = 'CEM_PRECOUNIT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbMovCelCEM_TUPUNIT: TFloatField
      FieldName = 'CEM_TUPUNIT'
    end
    object TbMovCelCEM_CELAUX: TBooleanField
      FieldName = 'CEM_CELAUX'
    end
    object TbMovCelCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Size = 30
    end
    object TbMovCelCEM_TUPTRAB: TFloatField
      FieldName = 'CEM_TUPTRAB'
    end
    object TbMovCelCEL_NOME_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'CEL_NOME_LK'
      LookupDataSet = TbCelula
      LookupKeyFields = 'CEL_CODIGO'
      LookupResultField = 'CEL_NOME'
      KeyFields = 'CEL_CODIGO'
      Size = 35
      Lookup = True
    end
    object TbMovCelCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object TbMovCelVCT_TUP: TFloatField
      FieldName = 'VCT_TUP'
    end
    object TbMovCelCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      Size = 1
    end
    object TbMovCelOSV_QTDECONC: TFloatField
      FieldName = 'OSV_QTDECONC'
    end
    object TbMovCelOSV_QTDEDEFE: TFloatField
      FieldName = 'OSV_QTDEDEFE'
    end
    object TbMovCelOSV_VALORPECA: TFloatField
      FieldName = 'OSV_VALORPECA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbMovCelOSV_VALORDEFE: TFloatField
      FieldName = 'OSV_VALORDEFE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsMovCel: TDataSource
    DataSet = TbMovCel
    Left = 667
    Top = 429
  end
  object TbMes: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XMES_NUMERO'
    TableName = 'MES0000'
    Left = 736
    Top = 387
    object TbMesMES_NUMERO: TStringField
      FieldName = 'MES_NUMERO'
      Size = 2
    end
    object TbMesMES_DESCRI: TStringField
      FieldName = 'MES_DESCRI'
      Size = 9
    end
  end
  object DsMes: TDataSource
    DataSet = TbMes
    Left = 736
    Top = 429
  end
  object TbCompMeta: TTable
    BeforeEdit = TbCompMetaBeforeEdit
    OnCalcFields = TbCompMetaCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'CEL_MTC04'
    Left = 24
    Top = 485
    object TbCompMetaCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object TbCompMetaCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      Size = 4
    end
    object TbCompMetaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbCompMetaMEC_TUPDIARIO: TFloatField
      FieldName = 'MEC_TUPDIARIO'
    end
    object TbCompMetaMEC_DIAS: TFloatField
      FieldName = 'MEC_DIAS'
    end
    object TbCompMetaCCP_NOME_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'CCP_NOME_LK'
      LookupDataSet = TbComponentes
      LookupKeyFields = 'CCP_CODIGO'
      LookupResultField = 'CCP_NOME'
      KeyFields = 'CCP_CODIGO'
      Size = 30
      Lookup = True
    end
    object TbCompMetaTotal_Tup_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Tup_CC'
      Calculated = True
    end
  end
  object DsCompMeta: TDataSource
    DataSet = TbCompMeta
    Left = 25
    Top = 530
  end
  object TbProjetoCaixa: TTable
    BeforeEdit = TbProjetoCaixaBeforeEdit
    OnCalcFields = TbProjetoCaixaCalcFields
    DatabaseName = 'RwDbAdm'
    TableName = 'PCX0000'
    Left = 95
    Top = 485
    object TbProjetoCaixaPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbProjetoCaixaPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object TbProjetoCaixaPCX_INICIO: TDateTimeField
      FieldName = 'PCX_INICIO'
    end
    object TbProjetoCaixaPCX_FIM: TDateTimeField
      FieldName = 'PCX_FIM'
    end
    object TbProjetoCaixaPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object TbProjetoCaixaPCX_TERMINADO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PCX_TERMINADO_CC'
      Size = 3
      Calculated = True
    end
  end
  object DsProjetoCaixa: TDataSource
    DataSet = TbProjetoCaixa
    Left = 95
    Top = 530
  end
  object TbMovProduz: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'CEL_MOV04'
    Left = 544
    Top = 484
    object TbMovProduzOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 6
    end
    object TbMovProduzCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object TbMovProduzCEM_DTPRODUZ: TDateTimeField
      FieldName = 'CEM_DTPRODUZ'
    end
    object TbMovProduzCEM_QTDE: TFloatField
      FieldName = 'CEM_QTDE'
    end
    object TbMovProduzCEM_DEFEITO: TFloatField
      FieldName = 'CEM_DEFEITO'
    end
  end
  object DsMovProduz: TDataSource
    DataSet = TbMovProduz
    Left = 616
    Top = 482
  end
end
