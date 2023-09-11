object DmCadastros: TDmCadastros
  OldCreateOrder = False
  Height = 580
  Width = 808
  object SQLConnection1: TSQLConnection
    Left = 400
    Top = 20
  end
  object SqlCLientes: TSQLDataSet
    CommandText = 'select * from CLI0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 16
    object SqlCLientesCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCLientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object SqlCLientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlCLientesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCLientesCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlCLientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlCLientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlCLientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlCLientesCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlCLientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCLientesCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCLientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCLientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCLientesTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqlCLientesCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlCLientesCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlCLientesCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlCLientesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlCLientesCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlCLientesCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlCLientesCLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCLientesCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlCLientesCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlCLientesCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlCLientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCLientesCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCLientesCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCLientesCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 160
    end
    object SqlCLientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspClientes: TDataSetProvider
    DataSet = SqlCLientes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 16
  end
  object CdsClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspClientes'
    AfterInsert = CdsClientesAfterInsert
    BeforeEdit = CdsClientesBeforeEdit
    Left = 219
    Top = 16
    object CdsClientesCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object CdsClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsClientesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsClientesCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsClientesCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsClientesCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsClientesTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsClientesCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object CdsClientesCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsClientesCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClientesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object CdsClientesCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
      ProviderFlags = [pfInUpdate]
      EditMask = '99/99/9999;1;_'
    end
    object CdsClientesCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsClientesCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClientesCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsClientesCLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsClientesCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsClientesCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClientesCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsClientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsClientesCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsClientesCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsClientesCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 160
    end
    object CdsClientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsCliente: TDataSource
    DataSet = CdsClientes
    Left = 305
    Top = 16
  end
  object SqlShare: TSQLDataSet
    CommandText = 'select * from SHAREDB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 60
    object SqlShareCLIENTES: TStringField
      FieldName = 'CLIENTES'
      Size = 1
    end
    object SqlSharePRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 1
    end
    object SqlShareBANCOS: TStringField
      FieldName = 'BANCOS'
      Size = 1
    end
    object SqlShareTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      Size = 1
    end
    object SqlShareREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      Size = 1
    end
    object SqlShareFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      Size = 1
    end
    object SqlShareRECEBER: TStringField
      FieldName = 'RECEBER'
      Size = 1
    end
    object SqlSharePAGAR: TStringField
      FieldName = 'PAGAR'
      Size = 1
    end
    object SqlSharePEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 1
    end
    object SqlShareCOTACOES: TStringField
      FieldName = 'COTACOES'
      Size = 1
    end
    object SqlShareORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      Size = 1
    end
    object SqlShareFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      Size = 1
    end
    object SqlShareORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      Size = 1
    end
    object SqlShareTABELAS: TStringField
      FieldName = 'TABELAS'
      Size = 1
    end
  end
  object DspShare: TDataSetProvider
    DataSet = SqlShare
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 59
  end
  object CdsShare: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspShare'
    Left = 219
    Top = 59
    object CdsShareCLIENTES: TStringField
      FieldName = 'CLIENTES'
      Size = 1
    end
    object CdsSharePRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 1
    end
    object CdsShareBANCOS: TStringField
      FieldName = 'BANCOS'
      Size = 1
    end
    object CdsShareTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      Size = 1
    end
    object CdsShareREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      Size = 1
    end
    object CdsShareFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      Size = 1
    end
    object CdsShareRECEBER: TStringField
      FieldName = 'RECEBER'
      Size = 1
    end
    object CdsSharePAGAR: TStringField
      FieldName = 'PAGAR'
      Size = 1
    end
    object CdsSharePEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 1
    end
    object CdsShareCOTACOES: TStringField
      FieldName = 'COTACOES'
      Size = 1
    end
    object CdsShareORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      Size = 1
    end
    object CdsShareFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      Size = 1
    end
    object CdsShareORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      Size = 1
    end
    object CdsShareTABELAS: TStringField
      FieldName = 'TABELAS'
      Size = 1
    end
  end
  object SqlRepresentante: TSQLDataSet
    CommandText = 'select * from REP0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 38
    Top = 104
    object SqlRepresentanteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlRepresentanteREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRepresentanteREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRepresentanteREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRepresentanteREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRepresentanteREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlRepresentanteREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlRepresentanteREP_NOME: TStringField
      FieldName = 'REP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlRepresentanteREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlRepresentanteREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlRepresentanteREP_CELULAR: TStringField
      FieldName = 'REP_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlRepresentanteREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlRepresentanteREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlRepresentanteREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlRepresentanteREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlRepresentanteREP_UF: TStringField
      FieldName = 'REP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlRepresentanteREP_CEP: TStringField
      FieldName = 'REP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlRepresentanteREP_FONE: TStringField
      FieldName = 'REP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlRepresentanteREP_FAX: TStringField
      FieldName = 'REP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlRepresentanteREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlRepresentanteREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRepresentanteREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlRepresentanteREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlRepresentanteREP_QUOTA: TFMTBCDField
      FieldName = 'REP_QUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlRepresentanteREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRepresentanteREP_DTNASC: TSQLTimeStampField
      FieldName = 'REP_DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlRepresentanteREP_INSC: TStringField
      FieldName = 'REP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlRepresentanteREP_CGC: TStringField
      FieldName = 'REP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlRepresentanteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspRepresentante: TDataSetProvider
    DataSet = SqlRepresentante
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 129
    Top = 103
  end
  object CdsRepresentante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRepresentante'
    AfterInsert = CdsRepresentanteAfterInsert
    BeforeEdit = CdsRepresentanteBeforeEdit
    Left = 221
    Top = 103
    object CdsRepresentanteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsRepresentanteREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRepresentanteREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRepresentanteREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRepresentanteREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRepresentanteREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRepresentanteREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsRepresentanteREP_NOME: TStringField
      FieldName = 'REP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsRepresentanteREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsRepresentanteREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsRepresentanteREP_CELULAR: TStringField
      FieldName = 'REP_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRepresentanteREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsRepresentanteREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsRepresentanteREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsRepresentanteREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsRepresentanteREP_UF: TStringField
      FieldName = 'REP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsRepresentanteREP_CEP: TStringField
      FieldName = 'REP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsRepresentanteREP_FONE: TStringField
      FieldName = 'REP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRepresentanteREP_FAX: TStringField
      FieldName = 'REP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRepresentanteREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsRepresentanteREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRepresentanteREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRepresentanteREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsRepresentanteREP_QUOTA: TFMTBCDField
      FieldName = 'REP_QUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsRepresentanteREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRepresentanteREP_DTNASC: TSQLTimeStampField
      FieldName = 'REP_DTNASC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsRepresentanteREP_INSC: TStringField
      FieldName = 'REP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsRepresentanteREP_CGC: TStringField
      FieldName = 'REP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsRepresentanteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsRepresentante: TDataSource
    DataSet = CdsRepresentante
    Left = 317
    Top = 104
  end
  object SqlTransportadora: TSQLDataSet
    CommandText = 'select * from TRP0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 39
    Top = 152
    object SqlTransportadoraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlTransportadoraTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlTransportadoraTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlTransportadoraTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlTransportadoraTRP_UF: TStringField
      FieldName = 'TRP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlTransportadoraTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlTransportadoraTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlTransportadoraTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlTransportadoraTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlTransportadoraTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
  end
  object CdsTransportadora: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspTransportadora'
    AfterInsert = CdsTransportadoraAfterInsert
    BeforeEdit = CdsTransportadoraBeforeEdit
    Left = 223
    Top = 152
    object CdsTransportadoraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsTransportadoraTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsTransportadoraTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsTransportadoraTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsTransportadoraTRP_UF: TStringField
      FieldName = 'TRP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsTransportadoraTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsTransportadoraTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object CdsTransportadoraTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsTransportadoraTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsTransportadoraTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
  end
  object DspTransportadora: TDataSetProvider
    DataSet = SqlTransportadora
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 130
    Top = 152
  end
  object DsTransportadora: TDataSource
    DataSet = CdsTransportadora
    Left = 315
    Top = 152
  end
  object SqlRegiao: TSQLDataSet
    CommandText = 'select * from REG0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 40
    Top = 200
    object SqlRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlRegiaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspRegiao: TDataSetProvider
    DataSet = SqlRegiao
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 200
  end
  object CdsRegiao: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspRegiao'
    AfterInsert = CdsRegiaoAfterInsert
    BeforeEdit = CdsRegiaoBeforeEdit
    Left = 224
    Top = 199
    object CdsRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsRegiaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsRegiao: TDataSource
    DataSet = CdsRegiao
    Left = 317
    Top = 199
  end
  object SqlAtividade: TSQLDataSet
    CommandText = 'select * from CLI_ATV1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 42
    Top = 256
    object SqlAtividadeRCL_CODIGO: TStringField
      DisplayWidth = 3
      FieldName = 'RCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlAtividadeRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlAtividadeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
  end
  object DspAtividade: TDataSetProvider
    DataSet = SqlAtividade
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 132
    Top = 255
  end
  object CdsAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAtividade'
    AfterInsert = CdsAtividadeAfterInsert
    Left = 226
    Top = 255
    object CdsAtividadeRCL_CODIGO: TStringField
      DisplayWidth = 3
      FieldName = 'RCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsAtividadeRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsAtividadeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsAtividade: TDataSource
    DataSet = CdsAtividade
    Left = 320
    Top = 254
  end
  object SqlFornecedor: TSQLDataSet
    CommandText = 'select * from FOR0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 312
    object SqlFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlFornecedorCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlFornecedorFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlFornecedorFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlFornecedorFOR_UF: TStringField
      FieldName = 'FOR_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlFornecedorFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlFornecedorFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlFornecedorFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlFornecedorFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlFornecedorFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlFornecedorFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlFornecedorFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SqlFornecedorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlFornecedorFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlFornecedorFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlFornecedorFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlFornecedorFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlFornecedorFOR_PRAZOVENDAS: TStringField
      FieldName = 'FOR_PRAZOVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object DspFornecedor: TDataSetProvider
    DataSet = SqlFornecedor
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 312
  end
  object CdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFornecedor'
    AfterInsert = CdsFornecedorAfterInsert
    BeforeEdit = CdsFornecedorBeforeEdit
    Left = 224
    Top = 312
    object CdsFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsFornecedorCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsFornecedorFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsFornecedorFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsFornecedorFOR_UF: TStringField
      FieldName = 'FOR_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsFornecedorFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsFornecedorFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsFornecedorFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsFornecedorFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsFornecedorFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsFornecedorFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsFornecedorFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsFornecedorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsFornecedorFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object CdsFornecedorFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsFornecedorFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsFornecedorFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsFornecedorFOR_PRAZOVENDAS: TStringField
      FieldName = 'FOR_PRAZOVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object DsFornecedor: TDataSource
    DataSet = CdsFornecedor
    Left = 320
    Top = 312
  end
  object SqlCtAnalise: TSQLDataSet
    CommandText = 'select * from CCT_0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 368
    object SqlCtAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCtAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCtAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCtAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCtAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCtAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCtAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspCtAnalise: TDataSetProvider
    DataSet = SqlCtAnalise
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 368
  end
  object CdsCtAnalise: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCtAnalise'
    AfterInsert = CdsCtAnaliseAfterInsert
    BeforeEdit = CdsCtAnaliseBeforeEdit
    Left = 224
    Top = 368
    object CdsCtAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsCtAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsCtAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCtAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsCtAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsCtAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCtAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  object DsCtAnalise: TDataSource
    DataSet = CdsCtAnalise
    Left = 320
    Top = 368
  end
  object SqlProdutos: TSQLDataSet
    CommandText = 'select * from PRD0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 421
    object SqlProdutosPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = SqlProdutos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 421
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspProdutos'
    AfterInsert = CdsProdutosAfterInsert
    BeforeEdit = CdsProdutosBeforeEdit
    OnCalcFields = CdsProdutosCalcFields
    Left = 224
    Top = 421
    object CdsProdutosPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0'
      EditFormat = ',##0'
      Precision = 15
    end
    object CdsProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      Calculated = True
    end
    object CdsProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
  end
  object DsProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 320
    Top = 421
  end
  object SqlForXProd: TSQLDataSet
    CommandText = 'select * from FOR_PROD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 472
    object SqlForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlForXProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object CdsForXProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspForXProd'
    Left = 224
    Top = 472
    object CdsForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsForXProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspForXProd: TDataSetProvider
    DataSet = SqlForXProd
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 472
  end
  object DsForXProd: TDataSource
    DataSet = CdsForXProd
    Left = 320
    Top = 472
  end
  object SqlUpdate: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 64
  end
  object CdsUpdate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUpdate'
    Left = 624
    Top = 64
  end
  object DspUpdate: TDataSetProvider
    DataSet = SqlUpdate
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 64
  end
  object SqlBanco: TSQLDataSet
    CommandText = 'select * from BAN0000'
    MaxBlobSize = -1
    Params = <>
    SortFieldNames = 'BAN_CODIGO'
    SQLConnection = SQLConnection1
    Left = 480
    Top = 112
    object SqlBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlBancoBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlBancoBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlBancoBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlBancoBAN_UF: TStringField
      FieldName = 'BAN_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlBancoBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlBancoBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlBancoBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlBancoBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SqlBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlBancoBAN_DNAS_CONT: TSQLTimeStampField
      FieldName = 'BAN_DNAS_CONT'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlBancoBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlBancoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlBancoBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlBancoBAN_COD_CART: TStringField
      FieldName = 'BAN_COD_CART'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_N_CARTEIRA: TStringField
      FieldName = 'BAN_N_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlBancoBAN_INSTRUCAO1: TStringField
      FieldName = 'BAN_INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlBancoBAN_TAM_NONUM: TStringField
      FieldName = 'BAN_TAM_NONUM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_PROTPRAZO: TStringField
      FieldName = 'BAN_PROTPRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DspBanco: TDataSetProvider
    DataSet = SqlBanco
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 112
  end
  object CdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBanco'
    AfterInsert = CdsBancoAfterInsert
    BeforeEdit = CdsBancoBeforeEdit
    Left = 632
    Top = 112
    object CdsBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsBancoBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsBancoBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsBancoBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsBancoBAN_UF: TStringField
      FieldName = 'BAN_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsBancoBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsBancoBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsBancoBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsBancoBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsBancoBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsBancoBAN_DNAS_CONT: TSQLTimeStampField
      FieldName = 'BAN_DNAS_CONT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsBancoBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsBancoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsBancoBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsBancoBAN_COD_CART: TStringField
      FieldName = 'BAN_COD_CART'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_N_CARTEIRA: TStringField
      FieldName = 'BAN_N_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsBancoBAN_INSTRUCAO1: TStringField
      FieldName = 'BAN_INSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsBancoBAN_TAM_NONUM: TStringField
      FieldName = 'BAN_TAM_NONUM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_PROTPRAZO: TStringField
      FieldName = 'BAN_PROTPRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DsBanco: TDataSource
    DataSet = CdsBanco
    Left = 707
    Top = 111
  end
  object SqlSysfile: TSQLDataSet
    CommandText = 'select * from SYSFILE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 16
    object SqlSysfileSYS_CLIENTE: TIntegerField
      FieldName = 'SYS_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_PRODUTO: TIntegerField
      FieldName = 'SYS_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_BANCO: TIntegerField
      FieldName = 'SYS_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_TRANSPORTADORA: TIntegerField
      FieldName = 'SYS_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_FORNECEDORES: TIntegerField
      FieldName = 'SYS_FORNECEDORES'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_REGIAO: TIntegerField
      FieldName = 'SYS_REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_ATIVIDADE: TIntegerField
      FieldName = 'SYS_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_REPRESENTANTE: TIntegerField
      FieldName = 'SYS_REPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_GRUPO_PROD: TIntegerField
      FieldName = 'SYS_GRUPO_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_SUB_GRUPO_PROD: TIntegerField
      FieldName = 'SYS_SUB_GRUPO_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_SEGMENTO: TIntegerField
      FieldName = 'SYS_SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CENTRO_CUSTO: TIntegerField
      FieldName = 'SYS_CENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CONTA_ANALISE: TIntegerField
      FieldName = 'SYS_CONTA_ANALISE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CONTA_PROJ_CAIXA: TIntegerField
      FieldName = 'SYS_CONTA_PROJ_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_PEDIDO: TIntegerField
      FieldName = 'SYS_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_NFISCAL: TIntegerField
      FieldName = 'SYS_NFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_DUPLICATA: TIntegerField
      FieldName = 'SYS_DUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_ORD_COMPRA: TIntegerField
      FieldName = 'SYS_ORD_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CP: TIntegerField
      FieldName = 'SYS_CP'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_ORD_PROD: TIntegerField
      FieldName = 'SYS_ORD_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CEL_PROD: TIntegerField
      FieldName = 'SYS_CEL_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_INT_CELULAS: TIntegerField
      FieldName = 'SYS_INT_CELULAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_PROC_PRODUCAO: TIntegerField
      FieldName = 'SYS_PROC_PRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_REGISTRO: TIntegerField
      FieldName = 'SYS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlSysfileSYS_CHEQUE: TIntegerField
      FieldName = 'SYS_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_SALDO_BANCO: TIntegerField
      FieldName = 'SYS_SALDO_BANCO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsSysfile: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSysfile'
    Left = 624
    Top = 16
    object CdsSysfileSYS_CLIENTE: TIntegerField
      FieldName = 'SYS_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_PRODUTO: TIntegerField
      FieldName = 'SYS_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_BANCO: TIntegerField
      FieldName = 'SYS_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_TRANSPORTADORA: TIntegerField
      FieldName = 'SYS_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_FORNECEDORES: TIntegerField
      FieldName = 'SYS_FORNECEDORES'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_REGIAO: TIntegerField
      FieldName = 'SYS_REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_ATIVIDADE: TIntegerField
      FieldName = 'SYS_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_REPRESENTANTE: TIntegerField
      FieldName = 'SYS_REPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_GRUPO_PROD: TIntegerField
      FieldName = 'SYS_GRUPO_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_SUB_GRUPO_PROD: TIntegerField
      FieldName = 'SYS_SUB_GRUPO_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_SEGMENTO: TIntegerField
      FieldName = 'SYS_SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CENTRO_CUSTO: TIntegerField
      FieldName = 'SYS_CENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CONTA_ANALISE: TIntegerField
      FieldName = 'SYS_CONTA_ANALISE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CONTA_PROJ_CAIXA: TIntegerField
      FieldName = 'SYS_CONTA_PROJ_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_PEDIDO: TIntegerField
      FieldName = 'SYS_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_NFISCAL: TIntegerField
      FieldName = 'SYS_NFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_DUPLICATA: TIntegerField
      FieldName = 'SYS_DUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_ORD_COMPRA: TIntegerField
      FieldName = 'SYS_ORD_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CP: TIntegerField
      FieldName = 'SYS_CP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_ORD_PROD: TIntegerField
      FieldName = 'SYS_ORD_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CEL_PROD: TIntegerField
      FieldName = 'SYS_CEL_PROD'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_INT_CELULAS: TIntegerField
      FieldName = 'SYS_INT_CELULAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_PROC_PRODUCAO: TIntegerField
      FieldName = 'SYS_PROC_PRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_REGISTRO: TIntegerField
      FieldName = 'SYS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsSysfileSYS_CHEQUE: TIntegerField
      FieldName = 'SYS_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_SALDO_BANCO: TIntegerField
      FieldName = 'SYS_SALDO_BANCO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspSysfile: TDataSetProvider
    DataSet = SqlSysfile
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 16
  end
  object SqlEvento: TSQLDataSet
    CommandText = 'select * from EVE0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 168
    object SqlEventoEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlEventoEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlEventoEVE_TIPODC: TStringField
      FieldName = 'EVE_TIPODC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEventoEVE_IRRF: TStringField
      FieldName = 'EVE_IRRF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEventoEVE_SITUAC: TStringField
      FieldName = 'EVE_SITUAC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEventoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspEvento: TDataSetProvider
    DataSet = SqlEvento
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 553
    Top = 167
  end
  object CdsEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEvento'
    AfterInsert = CdsEventoAfterInsert
    BeforeEdit = CdsEventoBeforeEdit
    Left = 635
    Top = 166
    object CdsEventoEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsEventoEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsEventoEVE_TIPODC: TStringField
      FieldName = 'EVE_TIPODC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEventoEVE_IRRF: TStringField
      FieldName = 'EVE_IRRF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEventoEVE_SITUAC: TStringField
      FieldName = 'EVE_SITUAC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEventoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsEvento: TDataSource
    DataSet = CdsEvento
    Left = 711
    Top = 166
  end
  object SqlPrdTipo: TSQLDataSet
    CommandText = 'select * from PRD_TIPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 216
    object SqlPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlPrdTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspPrdTipo: TDataSetProvider
    DataSet = SqlPrdTipo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 216
  end
  object CdsPrdTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdTipo'
    AfterInsert = CdsPrdTipoAfterInsert
    BeforeEdit = CdsPrdTipoBeforeEdit
    Left = 632
    Top = 216
    object CdsPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsPrdTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsPrdtipo: TDataSource
    DataSet = CdsPrdTipo
    Left = 712
    Top = 216
  end
  object SqlPrdGrupo: TSQLDataSet
    CommandText = 'select * from PRD_GRUPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 264
    object SqlPrdGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlPrdGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlPrdGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdGrupoPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspPrdGrupo: TDataSetProvider
    DataSet = SqlPrdGrupo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 264
  end
  object CdsPrdGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdGrupo'
    AfterInsert = CdsPrdGrupoAfterInsert
    BeforeEdit = CdsPrdGrupoBeforeEdit
    Left = 640
    Top = 264
    object CdsPrdGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsPrdGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsPrdGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdGrupoPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsPrdGrupo: TDataSource
    DataSet = CdsPrdGrupo
    Left = 712
    Top = 264
  end
  object SqlPrdLinha: TSQLDataSet
    CommandText = 'select * from PRD_LINHA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 320
    object SqlPrdLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlPrdLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlPrdLinhaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspPrdLinha: TDataSetProvider
    DataSet = SqlPrdLinha
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 320
  end
  object CdsPrdLinha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdLinha'
    AfterInsert = CdsPrdLinhaAfterInsert
    Left = 640
    Top = 320
    object CdsPrdLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsPrdLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsPrdLinhaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsPrdLinha: TDataSource
    DataSet = CdsPrdLinha
    Left = 712
    Top = 320
  end
  object SqlPrdClassIPI: TSQLDataSet
    CommandText = 'select * from IPI0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 368
    object SqlPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object SqlPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DspPrdClassIPI: TDataSetProvider
    DataSet = SqlPrdClassIPI
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 368
  end
  object CdsPrdClassIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdClassIPI'
    BeforeEdit = CdsPrdClassIPIBeforeEdit
    Left = 639
    Top = 368
    object CdsPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00000000'
      Size = 8
    end
    object CdsPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DsPrdClassIPI: TDataSource
    DataSet = CdsPrdClassIPI
    Left = 712
    Top = 368
  end
  object SqlParcelas: TSQLDataSet
    CommandText = 'select * from PCL0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 416
    object SqlParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlParcelasPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlParcelasPCL_DESCTO: TFMTBCDField
      FieldName = 'PCL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParcelasPCL_MULTA: TFMTBCDField
      FieldName = 'PCL_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParcelasPCL_JUROS: TFMTBCDField
      FieldName = 'PCL_JUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlParcelasPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParcelasPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParcelasPCL_MANTERDIA: TStringField
      FieldName = 'PCL_MANTERDIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParcelasPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
      ProviderFlags = [pfInUpdate]
    end
    object SqlParcelasPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlParcelasPCL_DISPONIVEL: TStringField
      FieldName = 'PCL_DISPONIVEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspParcelas: TDataSetProvider
    DataSet = SqlParcelas
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 416
  end
  object CdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspParcelas'
    AfterInsert = CdsParcelasAfterInsert
    BeforeEdit = CdsParcelasBeforeEdit
    Left = 640
    Top = 416
    object CdsParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CdsParcelasPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsParcelasPCL_DESCTO: TFMTBCDField
      FieldName = 'PCL_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
    end
    object CdsParcelasPCL_MULTA: TFMTBCDField
      FieldName = 'PCL_MULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
    end
    object CdsParcelasPCL_JUROS: TFMTBCDField
      FieldName = 'PCL_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
    end
    object CdsParcelasPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParcelasPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParcelasPCL_MANTERDIA: TStringField
      FieldName = 'PCL_MANTERDIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParcelasPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsParcelasPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsParcelasPCL_DISPONIVEL: TStringField
      FieldName = 'PCL_DISPONIVEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsParcelas: TDataSource
    DataSet = CdsParcelas
    Left = 712
    Top = 416
  end
  object DspOperFisc: TDataSetProvider
    DataSet = SqlOperFisc
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 472
  end
  object CdsOperFisc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOperFisc'
    AfterInsert = CdsOperFiscAfterInsert
    BeforeEdit = CdsOperFiscBeforeEdit
    Left = 640
    Top = 472
    object CdsOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsOperFiscOPE_SUBCOD: TStringField
      FieldName = 'OPE_SUBCOD'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsOperFiscOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object CdsOperFiscOPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOperFiscOPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOperFiscOPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_ESTATISTICA: TStringField
      FieldName = 'OPE_ESTATISTICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_REGISTRO: TIntegerField
      FieldName = 'OPE_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DsOperFisc: TDataSource
    DataSet = CdsOperFisc
    Left = 712
    Top = 472
  end
  object SqlOperFisc: TSQLDataSet
    CommandText = 'select * from OPE0000'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 472
    object SqlOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlOperFiscOPE_SUBCOD: TStringField
      FieldName = 'OPE_SUBCOD'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlOperFiscOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object SqlOperFiscOPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOperFiscOPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOperFiscOPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_ESTATISTICA: TStringField
      FieldName = 'OPE_ESTATISTICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object SqlOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_REGISTRO: TIntegerField
      FieldName = 'OPE_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object SqlBancos: TSQLDataSet
    CommandText = 'Select B1.*  FROM BANCOS B1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 480
    Top = 520
    object SqlBancosBCO_CODIGO: TIntegerField
      FieldName = 'BCO_CODIGO'
      Required = True
    end
    object SqlBancosBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
  end
  object DspBancos: TDataSetProvider
    DataSet = SqlBancos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 520
  end
  object CdsBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBancos'
    AfterInsert = CdsBancoAfterInsert
    BeforeEdit = CdsBancoBeforeEdit
    Left = 632
    Top = 520
    object CdsBancosBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
  end
  object DsBancos: TDataSource
    DataSet = CdsBancos
    Left = 707
    Top = 519
  end
end
