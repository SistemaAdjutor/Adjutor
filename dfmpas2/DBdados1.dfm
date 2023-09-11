object Dados1: TDados1
  OldCreateOrder = False
  Height = 572
  Width = 800
  object IBConecta: TIBDatabase
    DatabaseName = 'C:\JobProgram\converte\RWBDADM.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=rwacesso')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    Left = 14
    Top = 3
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBConecta
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 77
    Top = 4
  end
  object IBTbClie: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CLI0000'
    UniDirectional = False
    Left = 643
    Top = 209
    object IBTbClieCLI_CODIGO: TIBStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object IBTbClieEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbClieCLI_RAZAO: TIBStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object IBTbClieCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object IBTbClieREG_CODIGO: TIBStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object IBTbClieCLI_ATIVIDADE: TIBStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 2
    end
    object IBTbClieCLI_PORTE: TIBStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object IBTbClieCLI_ENDERE: TIBStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object IBTbClieCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object IBTbClieCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object IBTbClieCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object IBTbClieCLI_CXPOST: TIBStringField
      FieldName = 'CLI_CXPOST'
      Size = 6
    end
    object IBTbClieCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object IBTbClieCLI_HOME: TIBStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object IBTbClieCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object IBTbClieCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object IBTbClieTRP_CODIGO: TIBStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object IBTbClieCLI_INSC: TIBStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object IBTbClieCLI_CGC: TIBStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object IBTbClieCLI_PESSOA: TIBStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object IBTbClieCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object IBTbClieCLI_FUNCONT: TIBStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object IBTbClieREP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object IBTbClieCLI_DTINICIO: TDateTimeField
      FieldName = 'CLI_DTINICIO'
    end
    object IBTbClieCLI_DTULTCOM: TDateTimeField
      FieldName = 'CLI_DTULTCOM'
    end
    object IBTbClieCLI_ENDENTR: TIBStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object IBTbClieCLI_CIDENTR: TIBStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object IBTbClieCLI_CEPENTR: TIBStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object IBTbClieCLI_FONENTR: TIBStringField
      FieldName = 'CLI_FONENTR'
      Size = 11
    end
    object IBTbClieCLI_ENDFAT: TIBStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object IBTbClieCLI_CIDFAT: TIBStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object IBTbClieCLI_CEPFAT: TIBStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object IBTbClieCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object IBTbClieCLI_UFENTR: TIBStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object IBTbClieCLI_UFFAT: TIBStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object IBTbClieCLI_INATIVO: TIBStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object IBTbClieCLI_DTINATIVO: TDateTimeField
      FieldName = 'CLI_DTINATIVO'
    end
    object IBTbClieCLI_MOTIVO: TIBStringField
      FieldName = 'CLI_MOTIVO'
      Size = 35
    end
    object IBTbClieCLI_CURVA: TIBStringField
      FieldName = 'CLI_CURVA'
      Size = 1
    end
    object IBTbClieCLI_LIMITECRED: TIBBCDField
      FieldName = 'CLI_LIMITECRED'
      Precision = 18
      Size = 4
    end
    object IBTbClieCLI_LIMITEUTILIZ: TIBBCDField
      FieldName = 'CLI_LIMITEUTILIZ'
      Precision = 18
      Size = 4
    end
    object IBTbClieCLI_PEDABERTO: TIBBCDField
      FieldName = 'CLI_PEDABERTO'
      Precision = 18
      Size = 4
    end
    object IBTbClieCLI_VL_ULTCOMP: TIBBCDField
      FieldName = 'CLI_VL_ULTCOMP'
      Precision = 18
      Size = 4
    end
    object IBTbClieCLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object IBTbClieCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      BlobType = ftMemo
    end
  end
  object IBTbForne: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'FOR_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CCT_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FOR_RAZAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FOR_ENDERE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FOR_BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FOR_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FOR_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FOR_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FOR_CONTATO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FOR_FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOR_FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOR_EMAIL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FOR_FONCONT'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOR_FAXCONT'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FOR_OBS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FOR_CGC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'FOR_INSC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'FOR_HOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FOR_EMAILCONT'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FOR_PRAZOVENDAS'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'FOR0000'
    UniDirectional = False
    Left = 95
    Top = 64
    object IBTbForneFOR_CODIGO: TIBStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object IBTbForneCCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbForneFOR_RAZAO: TIBStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object IBTbForneFOR_ENDERE: TIBStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object IBTbForneFOR_BAIRRO: TIBStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object IBTbForneFOR_CIDADE: TIBStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object IBTbForneFOR_UF: TIBStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object IBTbForneFOR_CEP: TIBStringField
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object IBTbForneFOR_CONTATO: TIBStringField
      FieldName = 'FOR_CONTATO'
    end
    object IBTbForneFOR_FONE: TIBStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object IBTbForneFOR_FAX: TIBStringField
      FieldName = 'FOR_FAX'
      Size = 11
    end
    object IBTbForneFOR_EMAIL: TIBStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object IBTbForneFOR_FONCONT: TIBStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object IBTbForneFOR_FAXCONT: TIBStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object IBTbForneFOR_OBS: TIBStringField
      FieldName = 'FOR_OBS'
      Size = 200
    end
    object IBTbForneEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbForneFOR_CGC: TIBStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object IBTbForneFOR_INSC: TIBStringField
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object IBTbForneFOR_HOME: TIBStringField
      FieldName = 'FOR_HOME'
      Size = 35
    end
    object IBTbForneFOR_EMAILCONT: TIBStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object IBTbForneFOR_PRAZOVENDAS: TIBStringField
      FieldName = 'FOR_PRAZOVENDAS'
      Size = 30
    end
  end
  object IBTbForProd: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'FOR_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'FOR_PROD'
    UniDirectional = False
    Left = 223
    Top = 64
    object IBTbForProdFOR_CODIGO: TIBStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object IBTbForProdPRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbForProdEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTBan: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'BAN_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BAN_RAZAO'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'BAN_APELIDO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'BAN_CODAGE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'BAN_ENDERE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAN_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAN_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'BAN_FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'BAN_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'BAN_CONTATO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAN_JUROMES'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'BAN_OBS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'BAN_DNAS_CONT'
        DataType = ftDateTime
      end
      item
        Name = 'BAN_EMAIL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'BAN_HOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'BAN_CONTA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'BAN_DIGCONTA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BAN_COD_CART'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_N_CARTEIRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'BAN_INSTRUCAO1'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_INSTRUCAO2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_CODNOBANCO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'BAN_TAM_NONUM'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_PROTPRAZO'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'BAN0000'
    UniDirectional = False
    Left = 345
    Top = 64
    object IBTBanBAN_CODIGO: TIBStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object IBTBanBAN_RAZAO: TIBStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object IBTBanBAN_APELIDO: TIBStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object IBTBanBAN_CODAGE: TIBStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object IBTBanBAN_ENDERE: TIBStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object IBTBanBAN_CIDADE: TIBStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object IBTBanBAN_UF: TIBStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object IBTBanBAN_FONE: TIBStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object IBTBanBAN_FAX: TIBStringField
      FieldName = 'BAN_FAX'
      Size = 11
    end
    object IBTBanBAN_CEP: TIBStringField
      FieldName = 'BAN_CEP'
      Size = 8
    end
    object IBTBanBAN_CONTATO: TIBStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object IBTBanBAN_JUROMES: TIBBCDField
      FieldName = 'BAN_JUROMES'
      Precision = 18
      Size = 4
    end
    object IBTBanBAN_OBS: TIBStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object IBTBanEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTBanBAN_DNAS_CONT: TDateTimeField
      FieldName = 'BAN_DNAS_CONT'
    end
    object IBTBanBAN_EMAIL: TIBStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object IBTBanBAN_HOME: TIBStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
    object IBTBanBAN_CONTA: TIBStringField
      FieldName = 'BAN_CONTA'
      Size = 7
    end
    object IBTBanBAN_DIGCONTA: TIBStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
    object IBTBanBAN_COD_CART: TIBStringField
      FieldName = 'BAN_COD_CART'
      Size = 2
    end
    object IBTBanBAN_N_CARTEIRA: TIBStringField
      FieldName = 'BAN_N_CARTEIRA'
      Size = 3
    end
    object IBTBanBAN_INSTRUCAO1: TIBStringField
      FieldName = 'BAN_INSTRUCAO1'
      Size = 2
    end
    object IBTBanBAN_INSTRUCAO2: TIBStringField
      FieldName = 'BAN_INSTRUCAO2'
      Size = 2
    end
    object IBTBanBAN_CODNOBANCO: TIBStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 12
    end
    object IBTBanBAN_TAM_NONUM: TIBStringField
      FieldName = 'BAN_TAM_NONUM'
      Size = 2
    end
    object IBTBanBAN_PROTPRAZO: TIBStringField
      FieldName = 'BAN_PROTPRAZO'
      Size = 2
    end
  end
  object IBTbCli_Atv1: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'RCL_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RCL_ATIVIDADE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'CLI_ATV1'
    UniDirectional = False
    Left = 479
    Top = 64
    object IBTbCli_Atv1RCL_CODIGO: TIBStringField
      DisplayWidth = 3
      FieldName = 'RCL_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbCli_Atv1RCL_ATIVIDADE: TIBStringField
      FieldName = 'RCL_ATIVIDADE'
      Required = True
    end
    object IBTbCli_Atv1EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbRep: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'REP_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REP_GRUPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REG_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REP_FUNCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REP_SUPERVISAO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REP_GERENTE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REP_RAZAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REP_NOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'REP_ENDERE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REP_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'REP_CELULAR'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'REP_CONTA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'REP_AGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'REP_BANCO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'REP_BANCOFAVOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'REP_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'REP_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'REP_FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'REP_FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'REP_EMAIL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'REP_TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REP_SITUACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REP_OBS'
        DataType = ftMemo
      end
      item
        Name = 'REP_QUOTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'REP_NDEPEND'
        DataType = ftSmallint
      end
      item
        Name = 'REP_DTNASC'
        DataType = ftDateTime
      end
      item
        Name = 'REP_INSC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'REP_CGC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'REP0000'
    UniDirectional = False
    Left = 643
    Top = 64
    object IBTbRepREP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbRepREP_GRUPO: TIBStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object IBTbRepREG_CODIGO: TIBStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object IBTbRepREP_FUNCAO: TIBStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object IBTbRepREP_SUPERVISAO: TIBStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object IBTbRepREP_GERENTE: TIBStringField
      FieldName = 'REP_GERENTE'
      Size = 3
    end
    object IBTbRepREP_RAZAO: TIBStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object IBTbRepREP_NOME: TIBStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object IBTbRepREP_ENDERE: TIBStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object IBTbRepREP_CIDADE: TIBStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object IBTbRepREP_CELULAR: TIBStringField
      FieldName = 'REP_CELULAR'
      Size = 11
    end
    object IBTbRepREP_CONTA: TIBStringField
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object IBTbRepREP_AGENCIA: TIBStringField
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object IBTbRepREP_BANCO: TIBStringField
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object IBTbRepREP_BANCOFAVOR: TIBStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object IBTbRepREP_UF: TIBStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object IBTbRepREP_CEP: TIBStringField
      FieldName = 'REP_CEP'
      Size = 8
    end
    object IBTbRepREP_FONE: TIBStringField
      FieldName = 'REP_FONE'
      Size = 11
    end
    object IBTbRepREP_FAX: TIBStringField
      FieldName = 'REP_FAX'
      Size = 11
    end
    object IBTbRepREP_EMAIL: TIBStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object IBTbRepREP_TIPO: TIBStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object IBTbRepREP_SITUACAO: TIBStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object IBTbRepREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
    end
    object IBTbRepREP_QUOTA: TIBBCDField
      FieldName = 'REP_QUOTA'
      Precision = 18
      Size = 4
    end
    object IBTbRepREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object IBTbRepREP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
    end
    object IBTbRepREP_INSC: TIBStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object IBTbRepREP_CGC: TIBStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object IBTbRepEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbReg: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'REG_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REG_DESCRI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'REG0000'
    UniDirectional = False
    Left = 95
    Top = 112
    object IBTbRegREG_CODIGO: TIBStringField
      FieldName = 'REG_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbRegREG_DESCRI: TIBStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
    object IBTbRegEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPrdLinha: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'LIN_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LIN_DESCRI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PRD_LINHA'
    UniDirectional = False
    Left = 223
    Top = 112
    object IBTbPrdLinhaLIN_CODIGO: TIBStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 2
    end
    object IBTbPrdLinhaLIN_DESCRI: TIBStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object IBTbPrdLinhaEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPrdTipo: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PTI_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PTI_DESCRI'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PRD_TIPO'
    UniDirectional = False
    Left = 345
    Top = 112
    object IBTbPrdTipoPTI_CODIGO: TIBStringField
      FieldName = 'PTI_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbPrdTipoPTI_DESCRI: TIBStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object IBTbPrdTipoEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPrdEnsa: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PES_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PES_TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PES_QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_NUMDOC'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PES_TIPDOC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PES_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PES_ORIGEM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PES_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR1'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR2'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR3'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR4'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR5'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR6'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR7'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PES_VAR8'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PRD_ENSA'
    UniDirectional = False
    Left = 479
    Top = 112
    object IBTbPrdEnsaPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      Required = True
    end
    object IBTbPrdEnsaPRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbPrdEnsaPES_TIPO: TIBStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object IBTbPrdEnsaPES_QTDE: TIBBCDField
      FieldName = 'PES_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_NUMDOC: TIBStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object IBTbPrdEnsaPES_TIPDOC: TIBStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object IBTbPrdEnsaPES_DATA: TDateTimeField
      FieldName = 'PES_DATA'
    end
    object IBTbPrdEnsaEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbPrdEnsaPES_ORIGEM: TIBStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object IBTbPrdEnsaPES_VALOR: TIBBCDField
      FieldName = 'PES_VALOR'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR1: TIBBCDField
      FieldName = 'PES_VAR1'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR2: TIBBCDField
      FieldName = 'PES_VAR2'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR3: TIBBCDField
      FieldName = 'PES_VAR3'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR4: TIBBCDField
      FieldName = 'PES_VAR4'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR5: TIBBCDField
      FieldName = 'PES_VAR5'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR6: TIBBCDField
      FieldName = 'PES_VAR6'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR7: TIBBCDField
      FieldName = 'PES_VAR7'
      Precision = 18
      Size = 4
    end
    object IBTbPrdEnsaPES_VAR8: TIBBCDField
      FieldName = 'PES_VAR8'
      Precision = 18
      Size = 4
    end
  end
  object IBTbPrdPend: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PPE_REG'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'OCP_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PPE_QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PPE_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PRD_PEND'
    UniDirectional = False
    Left = 643
    Top = 112
    object IBTbPrdPendPPE_REG: TIntegerField
      FieldName = 'PPE_REG'
      Required = True
    end
    object IBTbPrdPendOCP_CODIGO: TIBStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object IBTbPrdPendPRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbPrdPendPPE_QTDE: TIBBCDField
      FieldName = 'PPE_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbPrdPendPPE_DATA: TDateTimeField
      FieldName = 'PPE_DATA'
    end
    object IBTbPrdPendEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPrdGrupo: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PGR_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PGR_DESCRI'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'PGR_COMISS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PGR_COM_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PRD_GRUPO'
    UniDirectional = False
    Left = 95
    Top = 161
    object IBTbPrdGrupoPGR_CODIGO: TIBStringField
      FieldName = 'PGR_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbPrdGrupoPGR_DESCRI: TIBStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object IBTbPrdGrupoPGR_COMISS: TIBStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object IBTbPrdGrupoPGR_COM_PERC: TIBBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPrdGrupoEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPcl: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PCL_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PCL_NOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'PCL_DESCTO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PCL_MULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PCL_JUROS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PCL_NPARCELAS'
        DataType = ftInteger
      end
      item
        Name = 'PCL_DIASENTREP'
        DataType = ftSmallint
      end
      item
        Name = 'PCL_MANTERDIA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PCL_CARENC_PRI'
        DataType = ftSmallint
      end
      item
        Name = 'PCL_OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PCL_DISPONIVEL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PCL0000'
    UniDirectional = False
    Left = 223
    Top = 161
    object IBTbPclPCL_CODIGO: TIBStringField
      FieldName = 'PCL_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbPclPCL_NOME: TIBStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object IBTbPclPCL_DESCTO: TIBBCDField
      FieldName = 'PCL_DESCTO'
      Precision = 18
      Size = 4
    end
    object IBTbPclPCL_MULTA: TIBBCDField
      FieldName = 'PCL_MULTA'
      Precision = 18
      Size = 4
    end
    object IBTbPclPCL_JUROS: TIBBCDField
      FieldName = 'PCL_JUROS'
      Precision = 18
      Size = 4
    end
    object IBTbPclPCL_NPARCELAS: TIntegerField
      FieldName = 'PCL_NPARCELAS'
    end
    object IBTbPclPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object IBTbPclPCL_MANTERDIA: TIBStringField
      FieldName = 'PCL_MANTERDIA'
      Size = 1
    end
    object IBTbPclPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object IBTbPclPCL_OBS: TIBStringField
      FieldName = 'PCL_OBS'
      Size = 50
    end
    object IBTbPclPCL_DISPONIVEL: TIBStringField
      FieldName = 'PCL_DISPONIVEL'
      Size = 1
    end
    object IBTbPclEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbCec: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CEC_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CEC_DESCRI'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CEC_PLANO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY55'
        Fields = 'CEC_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XCEC_DESC'
        Fields = 'CEC_DESCRI'
      end>
    StoreDefs = True
    TableName = 'CEC_0000'
    UniDirectional = False
    Left = 345
    Top = 161
    object IBTbCecCEC_CODIGO: TIBStringField
      FieldName = 'CEC_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbCecCEC_DESCRI: TIBStringField
      FieldName = 'CEC_DESCRI'
      Size = 35
    end
    object IBTbCecCEC_PLANO: TIBStringField
      FieldName = 'CEC_PLANO'
      Size = 3
    end
    object IBTbCecEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbCAIXA1: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CXA_LANCTO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CXA_DATA'
        DataType = ftDateTime
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
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CXA_SAIDA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CXA_ENTRADA'
        DataType = ftBCD
        Precision = 18
        Size = 4
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
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'CAIXA001'
    UniDirectional = False
    Left = 479
    Top = 161
    object IBTbCAIXA1CXA_LANCTO: TIBStringField
      FieldName = 'CXA_LANCTO'
      Required = True
      Size = 6
    end
    object IBTbCAIXA1CXA_DATA: TDateTimeField
      FieldName = 'CXA_DATA'
    end
    object IBTbCAIXA1CCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbCAIXA1CXA_HISTORICO: TIBStringField
      FieldName = 'CXA_HISTORICO'
      Size = 50
    end
    object IBTbCAIXA1CXA_DOCUMENTO: TIBStringField
      FieldName = 'CXA_DOCUMENTO'
      Size = 12
    end
    object IBTbCAIXA1CXA_TIPODOC: TIBStringField
      FieldName = 'CXA_TIPODOC'
      Size = 1
    end
    object IBTbCAIXA1CXA_SAIDA: TIBBCDField
      FieldName = 'CXA_SAIDA'
      Precision = 18
      Size = 4
    end
    object IBTbCAIXA1CXA_ENTRADA: TIBBCDField
      FieldName = 'CXA_ENTRADA'
      Precision = 18
      Size = 4
    end
    object IBTbCAIXA1CXA_SITUACAO: TIBStringField
      FieldName = 'CXA_SITUACAO'
      Size = 1
    end
    object IBTbCAIXA1EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbCaixa2: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CXF_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CXF_ANTERIOR'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CXF_DATAFECHA'
        DataType = ftDateTime
      end
      item
        Name = 'CXF_ENTRADAS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CXF_SAIDAS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'CXF_DINICIO'
        DataType = ftDateTime
      end
      item
        Name = 'CXF_DFIM'
        DataType = ftDateTime
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'CAIXA002'
    UniDirectional = False
    Left = 643
    Top = 161
    object IBTbCaixa2CXF_CODIGO: TIBStringField
      FieldName = 'CXF_CODIGO'
      Required = True
      Size = 6
    end
    object IBTbCaixa2CXF_ANTERIOR: TIBBCDField
      FieldName = 'CXF_ANTERIOR'
      Precision = 18
      Size = 4
    end
    object IBTbCaixa2CXF_DATAFECHA: TDateTimeField
      FieldName = 'CXF_DATAFECHA'
    end
    object IBTbCaixa2CXF_ENTRADAS: TIBBCDField
      FieldName = 'CXF_ENTRADAS'
      Precision = 18
      Size = 4
    end
    object IBTbCaixa2CXF_SAIDAS: TIBBCDField
      FieldName = 'CXF_SAIDAS'
      Precision = 18
      Size = 4
    end
    object IBTbCaixa2CXF_DINICIO: TDateTimeField
      FieldName = 'CXF_DINICIO'
    end
    object IBTbCaixa2CXF_DFIM: TDateTimeField
      FieldName = 'CXF_DFIM'
    end
    object IBTbCaixa2EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbSaldoBco: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'SAB_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BAN_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SAB_DIA'
        DataType = ftDateTime
      end
      item
        Name = 'SAB_SALDO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'SAB_BLOQUEADO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'SAB_APLICADO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'SAB_TIPOAPL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SAB_OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'SALDOBCO'
    UniDirectional = False
    Left = 95
    Top = 209
    object IBTbSaldoBcoSAB_CODIGO: TIBStringField
      FieldName = 'SAB_CODIGO'
      Required = True
      Size = 4
    end
    object IBTbSaldoBcoBAN_CODIGO: TIBStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object IBTbSaldoBcoSAB_DIA: TDateTimeField
      FieldName = 'SAB_DIA'
    end
    object IBTbSaldoBcoSAB_SALDO: TIBBCDField
      FieldName = 'SAB_SALDO'
      Precision = 18
      Size = 4
    end
    object IBTbSaldoBcoSAB_BLOQUEADO: TIBBCDField
      FieldName = 'SAB_BLOQUEADO'
      Precision = 18
      Size = 4
    end
    object IBTbSaldoBcoSAB_APLICADO: TIBBCDField
      FieldName = 'SAB_APLICADO'
      Precision = 18
      Size = 4
    end
    object IBTbSaldoBcoSAB_TIPOAPL: TIBStringField
      FieldName = 'SAB_TIPOAPL'
      Size = 30
    end
    object IBTbSaldoBcoSAB_OBS: TIBStringField
      FieldName = 'SAB_OBS'
      Size = 50
    end
    object IBTbSaldoBcoEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbTrp: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TRP_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TRP_RAZAO'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'TRP_ENDERE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TRP_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRP_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRP_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'TRP_CGC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'TRP_INSC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'TRP_FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'TRP_FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'TRP_EMAIL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'TRP_CONTATO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TRP_HOME'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'TRP0000'
    UniDirectional = False
    Left = 223
    Top = 209
    object IBTbTrpTRP_CODIGO: TIBStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object IBTbTrpTRP_RAZAO: TIBStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object IBTbTrpTRP_ENDERE: TIBStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object IBTbTrpTRP_CIDADE: TIBStringField
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object IBTbTrpTRP_UF: TIBStringField
      FieldName = 'TRP_UF'
      Size = 2
    end
    object IBTbTrpTRP_CEP: TIBStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object IBTbTrpTRP_CGC: TIBStringField
      FieldName = 'TRP_CGC'
      Size = 14
    end
    object IBTbTrpTRP_INSC: TIBStringField
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object IBTbTrpTRP_FONE: TIBStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object IBTbTrpTRP_FAX: TIBStringField
      FieldName = 'TRP_FAX'
      Size = 11
    end
    object IBTbTrpTRP_EMAIL: TIBStringField
      FieldName = 'TRP_EMAIL'
      Size = 35
    end
    object IBTbTrpTRP_CONTATO: TIBStringField
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object IBTbTrpEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbTrpTRP_HOME: TIBStringField
      FieldName = 'TRP_HOME'
      Size = 35
    end
  end
  object IBTbPag: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PAG_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'OPV_CODIGO'
        DataType = ftSmallint
      end
      item
        Name = 'PAG_NUMDOC'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FOR_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PAG_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PAG_DTEMIS'
        DataType = ftDateTime
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
        Name = 'PAG_PREVISAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PAG_VLNOTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PAG_BASEICMS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_ALIQICMS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_BASEIPI'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_VL_IPI'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PAG_FAVORECIDO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PAG_LIVRO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PAG_OPERACAO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PAG_VL_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_IRPJ_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_PIS_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_COFINS_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_INSS_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_CONTSOCIAL_RET'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_BASE_ISS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_BASE_INSS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_IRPJ_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_PIS_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_COFINS_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_INSS_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PAG_CONTSOCIAL_PERC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PAG0000'
    UniDirectional = False
    Left = 345
    Top = 209
    object IBTbPagPAG_CODIGO: TIBStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object IBTbPagOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object IBTbPagPAG_NUMDOC: TIBStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object IBTbPagFOR_CODIGO: TIBStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object IBTbPagPAG_TIPO: TIBStringField
      FieldName = 'PAG_TIPO'
      Size = 2
    end
    object IBTbPagPAG_DTEMIS: TDateTimeField
      FieldName = 'PAG_DTEMIS'
    end
    object IBTbPagCCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbPagPCX_CODIGO: TIBStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object IBTbPagPAG_PREVISAO: TIBStringField
      FieldName = 'PAG_PREVISAO'
      Size = 1
    end
    object IBTbPagPAG_VLNOTA: TIBBCDField
      FieldName = 'PAG_VLNOTA'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_SERIE: TIBStringField
      FieldName = 'PAG_SERIE'
      Size = 3
    end
    object IBTbPagPAG_BASEICMS: TIBBCDField
      FieldName = 'PAG_BASEICMS'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_ALIQICMS: TIBBCDField
      FieldName = 'PAG_ALIQICMS'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_BASEIPI: TIBBCDField
      FieldName = 'PAG_BASEIPI'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_VL_IPI: TIBBCDField
      FieldName = 'PAG_VL_IPI'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_OBS: TIBStringField
      FieldName = 'PAG_OBS'
      Size = 50
    end
    object IBTbPagPAG_FAVORECIDO: TIBStringField
      FieldName = 'PAG_FAVORECIDO'
      Size = 40
    end
    object IBTbPagPAG_LIVRO: TIBStringField
      FieldName = 'PAG_LIVRO'
      Size = 1
    end
    object IBTbPagPAG_OPERACAO: TIBStringField
      FieldName = 'PAG_OPERACAO'
      Size = 4
    end
    object IBTbPagPAG_VL_RET: TIBBCDField
      FieldName = 'PAG_VL_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_IRPJ_RET: TIBBCDField
      FieldName = 'PAG_IRPJ_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_PIS_RET: TIBBCDField
      FieldName = 'PAG_PIS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_COFINS_RET: TIBBCDField
      FieldName = 'PAG_COFINS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_INSS_RET: TIBBCDField
      FieldName = 'PAG_INSS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_CONTSOCIAL_RET: TIBBCDField
      FieldName = 'PAG_CONTSOCIAL_RET'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_BASE_ISS: TIBBCDField
      FieldName = 'PAG_BASE_ISS'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_BASE_INSS: TIBBCDField
      FieldName = 'PAG_BASE_INSS'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_IRPJ_PERC: TIBBCDField
      FieldName = 'PAG_IRPJ_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_PIS_PERC: TIBBCDField
      FieldName = 'PAG_PIS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_COFINS_PERC: TIBBCDField
      FieldName = 'PAG_COFINS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_INSS_PERC: TIBBCDField
      FieldName = 'PAG_INSS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPagPAG_CONTSOCIAL_PERC: TIBBCDField
      FieldName = 'PAG_CONTSOCIAL_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbPagEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbPagPc: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PAG_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PAG_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PPC_NUMER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PPC_BANCO'
        DataType = ftString
        Size = 12
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
        Name = 'PPC_DTEMIS'
        DataType = ftDate
      end
      item
        Name = 'PPC_NPARCELAS'
        DataType = ftSmallint
      end
      item
        Name = 'PPC_SITPAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PPC_STATUS'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'PPC_DESCTO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PPC_VENCTO'
        DataType = ftDate
      end
      item
        Name = 'PPC_PAGTO'
        DataType = ftDate
      end
      item
        Name = 'PPC_VLPARC'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PPC_VLPAGO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PPC_OBS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PPC_JUROS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PPC_MULTA'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PPC_NOSSONUM'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FOR_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PPC_FORMA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PAG_NUMDOC'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY60'
        Fields = 'FOR_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XFOR_RAZAO'
        Fields = 'FOR_RAZAO'
      end>
    StoreDefs = True
    TableName = 'PAG_PC01'
    UniDirectional = False
    Left = 479
    Top = 209
    object IBTbPagPcPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object IBTbPagPcPAG_CODIGO: TIBStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object IBTbPagPcPPC_NUMER: TIBStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object IBTbPagPcBAN_CODIGO: TIBStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object IBTbPagPcPPC_BANCO: TIBStringField
      FieldName = 'PPC_BANCO'
      Size = 12
    end
    object IBTbPagPcCCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbPagPcPCX_CODIGO: TIBStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object IBTbPagPcPPC_DTEMIS: TDateField
      FieldName = 'PPC_DTEMIS'
    end
    object IBTbPagPcPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
    object IBTbPagPcPPC_SITPAG: TIBStringField
      FieldName = 'PPC_SITPAG'
      Size = 1
    end
    object IBTbPagPcPPC_STATUS: TIBStringField
      FieldName = 'PPC_STATUS'
      Size = 12
    end
    object IBTbPagPcPPC_DESCTO: TIBBCDField
      FieldName = 'PPC_DESCTO'
      Precision = 18
      Size = 4
    end
    object IBTbPagPcPPC_VENCTO: TDateField
      FieldName = 'PPC_VENCTO'
    end
    object IBTbPagPcPPC_PAGTO: TDateField
      FieldName = 'PPC_PAGTO'
    end
    object IBTbPagPcPPC_VLPARC: TIBBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 18
      Size = 4
    end
    object IBTbPagPcPPC_VLPAGO: TIBBCDField
      FieldName = 'PPC_VLPAGO'
      Precision = 18
      Size = 4
    end
    object IBTbPagPcPPC_OBS: TIBStringField
      FieldName = 'PPC_OBS'
      Size = 15
    end
    object IBTbPagPcPPC_JUROS: TIBBCDField
      FieldName = 'PPC_JUROS'
      Precision = 18
      Size = 4
    end
    object IBTbPagPcPPC_MULTA: TIBBCDField
      FieldName = 'PPC_MULTA'
      Precision = 18
      Size = 4
    end
    object IBTbPagPcEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbPagPcPPC_NOSSONUM: TIBStringField
      FieldName = 'PPC_NOSSONUM'
      Size = 15
    end
    object IBTbPagPcFOR_CODIGO: TIBStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object IBTbPagPcPPC_FORMA: TIBStringField
      FieldName = 'PPC_FORMA'
      Size = 1
    end
    object IBTbPagPcPAG_NUMDOC: TIBStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
  end
  object IBTbFatPc: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FAT_PC01'
    UniDirectional = False
    Left = 96
    Top = 256
    object IBTbFatPcFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object IBTbFatPcFAT_CODIGO: TIBStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object IBTbFatPcFPC_NUMER: TIBStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object IBTbFatPcREP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object IBTbFatPcBAN_CODIGO: TIBStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object IBTbFatPcCCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbFatPcPCX_CODIGO: TIBStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object IBTbFatPcFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
    end
    object IBTbFatPcFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object IBTbFatPcFPC_COBNUM: TIBStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object IBTbFatPcFPC_COBTIPO: TIBStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object IBTbFatPcFPC_TIPODOC: TIBStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object IBTbFatPcFPC_SITPAG: TIBStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object IBTbFatPcFPC_STATUS: TIBStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object IBTbFatPcFPC_DESCTO: TIBBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
    end
    object IBTbFatPcFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
    end
    object IBTbFatPcFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
    end
    object IBTbFatPcFPC_VLPARC: TIBBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcFPC_VLPAGO: TIBBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcFPC_OBS: TIBStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object IBTbFatPcCLI_CODIGO: TIBStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object IBTbFatPcFPC_IMPDUP: TIBStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object IBTbFatPcFPC_JUROS: TIBBCDField
      FieldName = 'FPC_JUROS'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcFPC_MULTA: TIBBCDField
      FieldName = 'FPC_MULTA'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcFPC_VL_RET: TIBBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatPcEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbFat: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FAT0000'
    UniDirectional = False
    Left = 224
    Top = 256
    object IBTbFatFAT_CODIGO: TIBStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object IBTbFatOPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object IBTbFatPCL_CODIGO: TIBStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object IBTbFatCLI_CODIGO: TIBStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object IBTbFatFAT_CANCELADA: TIBStringField
      FieldName = 'FAT_CANCELADA'
      Size = 1
    end
    object IBTbFatREP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object IBTbFatPED_CODIGO: TIBStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object IBTbFatPCX_CODIGO: TIBStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object IBTbFatCCT_CODIGO: TIBStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object IBTbFatFAT_PREVISAO: TIBStringField
      FieldName = 'FAT_PREVISAO'
      Size = 1
    end
    object IBTbFatFAT_QTDITEM: TIBBCDField
      FieldName = 'FAT_QTDITEM'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_VL_LIQ: TIBBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_VLFAT: TIBBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_VLNCOMIS: TIBBCDField
      FieldName = 'FAT_VLNCOMIS'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
    end
    object IBTbFatFAT_COMIS1: TIBBCDField
      FieldName = 'FAT_COMIS1'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_COMIS2: TIBBCDField
      FieldName = 'FAT_COMIS2'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_COMIS3: TIBBCDField
      FieldName = 'FAT_COMIS3'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_OBS: TIBStringField
      FieldName = 'FAT_OBS'
      Size = 50
    end
    object IBTbFatFAT_OPERACAO: TIBStringField
      FieldName = 'FAT_OPERACAO'
      Size = 4
    end
    object IBTbFatFAT_BASESUB: TIBBCDField
      FieldName = 'FAT_BASESUB'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_ICMSRET: TIBBCDField
      FieldName = 'FAT_ICMSRET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_DESP_ACES: TIBBCDField
      FieldName = 'FAT_DESP_ACES'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_BASEICMS: TIBBCDField
      FieldName = 'FAT_BASEICMS'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_VL_IPI: TIBBCDField
      FieldName = 'FAT_VL_IPI'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_ALIQUOTA: TIBBCDField
      FieldName = 'FAT_ALIQUOTA'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_OBSLIVRO: TIBStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object IBTbFatFAT_OPERUF: TIBStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object IBTbFatFAT_LIVRO: TIBStringField
      FieldName = 'FAT_LIVRO'
      Size = 1
    end
    object IBTbFatFAT_VL_RET: TIBBCDField
      FieldName = 'FAT_VL_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_IRPJ_RET: TIBBCDField
      FieldName = 'FAT_IRPJ_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_PIS_RET: TIBBCDField
      FieldName = 'FAT_PIS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_COFINS_RET: TIBBCDField
      FieldName = 'FAT_COFINS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_INSS_RET: TIBBCDField
      FieldName = 'FAT_INSS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_CONTSOCIAL_RET: TIBBCDField
      FieldName = 'FAT_CONTSOCIAL_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_BASE_ISS: TIBBCDField
      FieldName = 'FAT_BASE_ISS'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_BASE_INSS: TIBBCDField
      FieldName = 'FAT_BASE_INSS'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_IRPJ_PERC: TIBBCDField
      FieldName = 'FAT_IRPJ_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_PIS_PERC: TIBBCDField
      FieldName = 'FAT_PIS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_COFINS_PERC: TIBBCDField
      FieldName = 'FAT_COFINS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_INSS_PERC: TIBBCDField
      FieldName = 'FAT_INSS_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_CONTSOCIAL_PERC: TIBBCDField
      FieldName = 'FAT_CONTSOCIAL_PERC'
      Precision = 18
      Size = 4
    end
    object IBTbFatEMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbFatFAT_ISS_RET: TIBBCDField
      FieldName = 'FAT_ISS_RET'
      Precision = 18
      Size = 4
    end
    object IBTbFatFAT_ISS_PERC: TIBBCDField
      FieldName = 'FAT_ISS_PERC'
      Precision = 18
      Size = 4
    end
  end
  object IBTbPrd0000: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PRD0000'
    UniDirectional = False
    Left = 352
    Top = 256
    object IBTbPrd0000PRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object IBTbPrd0000PRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbPrd0000PRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
    end
    object IBTbPrd0000PRD_DESCRI: TIBStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object IBTbPrd0000PRD_DESCRI_RES: TIBStringField
      FieldName = 'PRD_DESCRI_RES'
      Size = 30
    end
    object IBTbPrd0000PRD_UND: TIBStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object IBTbPrd0000PRD_EMBALA: TIBStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object IBTbPrd0000PGR_CODIGO: TIBStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object IBTbPrd0000PTI_CODIGO: TIBStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object IBTbPrd0000IPI_CODIGO: TIBStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object IBTbPrd0000PRD_ALIQICM: TIBBCDField
      FieldName = 'PRD_ALIQICM'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000LIN_CODIGO: TIBStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object IBTbPrd0000PRD_COMPL: TIBStringField
      FieldName = 'PRD_COMPL'
      Size = 30
    end
    object IBTbPrd0000PRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
    end
    object IBTbPrd0000PRD_MINIMO: TIBBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_PCUSTO: TIBBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_PVENDA: TIBBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_PMEDIO: TIBBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_PMATPRI: TIBBCDField
      FieldName = 'PRD_PMATPRI'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_MAOOBRA: TIBBCDField
      FieldName = 'PRD_MAOOBRA'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_ESTOQUE: TIBBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_SAIDA: TIBBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_PENDENTE: TIBBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000FOR_CODIGO: TIBStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object IBTbPrd0000PRD_ENTRADA: TIBBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_MAXIMO: TIBBCDField
      FieldName = 'PRD_MAXIMO'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_TEMSUB: TIBStringField
      FieldName = 'PRD_TEMSUB'
      Size = 1
    end
    object IBTbPrd0000PRD_SITRIBUT: TIBStringField
      FieldName = 'PRD_SITRIBUT'
      Size = 2
    end
    object IBTbPrd0000PRD_ICMSUBS: TIBBCDField
      FieldName = 'PRD_ICMSUBS'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_UTILCONV: TIBStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object IBTbPrd0000PRD_UNDCOMP: TIBStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object IBTbPrd0000PRD_PESOKG: TIBBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_FATORC: TIBBCDField
      FieldName = 'PRD_FATORC'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_DIVMULT: TIBStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object IBTbPrd0000EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbPrd0000PRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
    end
    object IBTbPrd0000PRD_TABPRECO: TIBStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object IBTbPrd0000PRD_GARANTIA: TIBStringField
      FieldName = 'PRD_GARANTIA'
      Size = 10
    end
    object IBTbPrd0000PRD_FAMILIA: TIBStringField
      FieldName = 'PRD_FAMILIA'
      Size = 5
    end
    object IBTbPrd0000PRD_CODBARRA: TIBStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object IBTbPrd0000PRD_VAR1: TIBBCDField
      FieldName = 'PRD_VAR1'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR2: TIBBCDField
      FieldName = 'PRD_VAR2'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR3: TIBBCDField
      FieldName = 'PRD_VAR3'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR4: TIBBCDField
      FieldName = 'PRD_VAR4'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR5: TIBBCDField
      FieldName = 'PRD_VAR5'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR6: TIBBCDField
      FieldName = 'PRD_VAR6'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR7: TIBBCDField
      FieldName = 'PRD_VAR7'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_VAR8: TIBBCDField
      FieldName = 'PRD_VAR8'
      Precision = 18
      Size = 4
    end
    object IBTbPrd0000PRD_DCVAR1: TIBStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR2: TIBStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR3: TIBStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR4: TIBStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR5: TIBStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR6: TIBStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR7: TIBStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object IBTbPrd0000PRD_DCVAR8: TIBStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object IBTbPrd0000PRD_CURVA: TIBStringField
      FieldName = 'PRD_CURVA'
      Size = 1
    end
    object IBTbPrd0000PRD_CODORIGINAL: TIBStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 15
    end
    object IBTbPrd0000PRD_CODMERCOSUL: TIBStringField
      FieldName = 'PRD_CODMERCOSUL'
      Size = 15
    end
    object IBTbPrd0000PRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
    end
    object IBTbPrd0000AMX_CODIGO: TIBStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object IBTbPrd0000PRD_PESOLIQ: TIBBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 18
      Size = 4
    end
  end
  object IBTPed0000: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PED0000'
    UniDirectional = False
    Left = 480
    Top = 256
    object IBTPed0000PED_CODIGO: TIBStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 6
    end
    object IBTPed0000CLI_CODIGO: TIBStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object IBTPed0000REP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object IBTPed0000PED_DTENTRADA: TDateTimeField
      FieldName = 'PED_DTENTRADA'
    end
    object IBTPed0000PED_COMIS1: TIBBCDField
      FieldName = 'PED_COMIS1'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_COMIS2: TIBBCDField
      FieldName = 'PED_COMIS2'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_COMIS3: TIBBCDField
      FieldName = 'PED_COMIS3'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PCL_CODIGO: TIBStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object IBTPed0000PED_DESCTOVL: TIBBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_DESCTOPC1: TIBBCDField
      FieldName = 'PED_DESCTOPC1'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_DESCTOPC2: TIBBCDField
      FieldName = 'PED_DESCTOPC2'
      Precision = 18
      Size = 4
    end
    object IBTPed0000TRP_CODIGO: TIBStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object IBTPed0000PED_FRETE2: TIBStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object IBTPed0000PED_FRETE: TIBStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object IBTPed0000TRP_REDESP: TIBStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object IBTPed0000PED_OBSNOTA: TIBStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object IBTPed0000PED_VLTOTAL_LIQ: TIBBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_VLFATURADO: TIBBCDField
      FieldName = 'PED_VLFATURADO'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_SITCRED: TIBStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object IBTPed0000PED_DTEMBARQUE: TDateTimeField
      FieldName = 'PED_DTEMBARQUE'
    end
    object IBTPed0000PED_DTLIM_ATD: TDateTimeField
      FieldName = 'PED_DTLIM_ATD'
    end
    object IBTPed0000PED_DTSAIDA: TDateTimeField
      FieldName = 'PED_DTSAIDA'
    end
    object IBTPed0000PED_OBSGERAL: TMemoField
      FieldName = 'PED_OBSGERAL'
      BlobType = ftMemo
    end
    object IBTPed0000PED_PRIORIDADE: TIBStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object IBTPed0000PED_EXPEDICAO: TIBStringField
      FieldName = 'PED_EXPEDICAO'
      Size = 7
    end
    object IBTPed0000EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTPed0000OPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object IBTPed0000OPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object IBTPed0000PED_DESCTONF: TIBStringField
      FieldName = 'PED_DESCTONF'
      Size = 1
    end
    object IBTPed0000PED_SITUACAO: TIBStringField
      FieldName = 'PED_SITUACAO'
      Size = 1
    end
    object IBTPed0000PED_VLTOTAL_BRUTO: TIBBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 18
      Size = 4
    end
    object IBTPed0000PED_TPDESCTO: TIBStringField
      FieldName = 'PED_TPDESCTO'
      Size = 1
    end
    object IBTPed0000PED_NFITEM: TIBStringField
      FieldName = 'PED_NFITEM'
      Size = 1
    end
    object IBTPed0000PED_VLTOTAL_IPI: TIBBCDField
      FieldName = 'PED_VLTOTAL_IPI'
      Precision = 18
      Size = 4
    end
  end
  object IBTbPed_it01: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PRF_REGISTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PED_CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PRF_QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_QTDEFAT'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_PRECO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_IDESCTO1'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_IDESCTO2'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_SITUACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRF_ITEMCOMIS'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_IPIALIQ'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_ICMSALIQ'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_PRDDESCRI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PRF_VAR1'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR2'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR3'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR4'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR5'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR6'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR7'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRF_VAR8'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PRF_PRECO_BRUTO'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY33'
        Fields = 'PRF_REGISTRO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPED_CODI_PRF'
        Fields = 'PED_CODIGO'
      end
      item
        Name = 'XPRD_REFE_PRF'
        Fields = 'PRD_REFER'
      end>
    StoreDefs = True
    TableName = 'PED_IT01'
    UniDirectional = False
    Left = 643
    Top = 256
    object IBTbPed_it01PRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object IBTbPed_it01PED_CODIGO: TIBStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object IBTbPed_it01PRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbPed_it01PRF_QTDE: TIBBCDField
      FieldName = 'PRF_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_QTDEFAT: TIBBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_PRECO: TIBBCDField
      FieldName = 'PRF_PRECO'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_IDESCTO1: TIBBCDField
      FieldName = 'PRF_IDESCTO1'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_IDESCTO2: TIBBCDField
      FieldName = 'PRF_IDESCTO2'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_SITUACAO: TIBStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object IBTbPed_it01PRF_ITEMCOMIS: TIBBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_IPIALIQ: TIBBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_ICMSALIQ: TIBBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_PRDDESCRI: TIBStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object IBTbPed_it01PRF_VAR1: TIBBCDField
      FieldName = 'PRF_VAR1'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR2: TIBBCDField
      FieldName = 'PRF_VAR2'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR3: TIBBCDField
      FieldName = 'PRF_VAR3'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR4: TIBBCDField
      FieldName = 'PRF_VAR4'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR5: TIBBCDField
      FieldName = 'PRF_VAR5'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR6: TIBBCDField
      FieldName = 'PRF_VAR6'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR7: TIBBCDField
      FieldName = 'PRF_VAR7'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01PRF_VAR8: TIBBCDField
      FieldName = 'PRF_VAR8'
      Precision = 18
      Size = 4
    end
    object IBTbPed_it01EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbPed_it01PRF_PRECO_BRUTO: TIBBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 18
      Size = 4
    end
  end
  object IBQUpDate: TIBQuery
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 152
    Top = 3
  end
  object IBTbFatIt02: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FAT_IT02'
    UniDirectional = False
    Left = 96
    Top = 304
    object IBTbFatIt02REG: TIntegerField
      FieldName = 'REG'
      Required = True
    end
    object IBTbFatIt02FAT_CODIGO: TIBStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object IBTbFatIt02PRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object IBTbFatIt02PRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbFatIt02FIT_QTDE: TIBBCDField
      FieldName = 'FIT_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02FIT_IPIALIQ: TIBBCDField
      FieldName = 'FIT_IPIALIQ'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02FIT_PRECO: TIBBCDField
      FieldName = 'FIT_PRECO'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02FIT_COMIS: TIBBCDField
      FieldName = 'FIT_COMIS'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02FIT_DESCTO: TIBBCDField
      FieldName = 'FIT_DESCTO'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02FIT_SUBSTIT: TIBBCDField
      FieldName = 'FIT_SUBSTIT'
      Precision = 18
      Size = 4
    end
    object IBTbFatIt02EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBTbNF0001: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'NF0001'
    UniDirectional = False
    Left = 224
    Top = 304
    object IBTbNF0001NF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object IBTbNF0001NF_NOTANUMBER: TIBStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object IBTbNF0001NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object IBTbNF0001NF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object IBTbNF0001NF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
    end
    object IBTbNF0001NF_CONDPAGTO: TIBStringField
      FieldName = 'NF_CONDPAGTO'
      Size = 35
    end
    object IBTbNF0001OPE_CODIGO: TIBStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object IBTbNF0001OPE_NATUREZA: TIBStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object IBTbNF0001OPE_AGRUPADO: TIBStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object IBTbNF0001PED_CODIGO: TIBStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object IBTbNF0001REP_CODIGO: TIBStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object IBTbNF0001NF_ENTR_SAID: TIBStringField
      FieldName = 'NF_ENTR_SAID'
      Size = 1
    end
    object IBTbNF0001NF_IMPRESS: TIBStringField
      FieldName = 'NF_IMPRESS'
      Size = 1
    end
    object IBTbNF0001CLI_CODIGO: TIBStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object IBTbNF0001NF_VLFRETE: TIBBCDField
      FieldName = 'NF_VLFRETE'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VLSEGURO: TIBBCDField
      FieldName = 'NF_VLSEGURO'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_DESP_ACES: TIBBCDField
      FieldName = 'NF_DESP_ACES'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_ALIQ_ICMS: TIBBCDField
      FieldName = 'NF_ALIQ_ICMS'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_BASEICMS: TIBBCDField
      FieldName = 'NF_BASEICMS'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VL_ICMS: TIBBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VLBASESUBTRIB: TIBBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VL_SUBTRIB: TIBBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_TOT_CSUB: TIBBCDField
      FieldName = 'NF_TOT_CSUB'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_TOT_PROD: TIBBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_TOT_NOTA: TIBBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VL_IPI: TIBBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_BASE_IPI: TIBBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_VL_DESCTO: TIBBCDField
      FieldName = 'NF_VL_DESCTO'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_PLACAVE: TIBStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object IBTbNF0001NF_QTDE: TIBBCDField
      FieldName = 'NF_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_PESOBRU: TIBBCDField
      FieldName = 'NF_PESOBRU'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_PESOLIQ: TIBBCDField
      FieldName = 'NF_PESOLIQ'
      Precision = 18
      Size = 4
    end
    object IBTbNF0001NF_ESPECIE: TIBStringField
      FieldName = 'NF_ESPECIE'
      Size = 60
    end
    object IBTbNF0001NF_MARCA: TIBStringField
      DisplayWidth = 60
      FieldName = 'NF_MARCA'
      Size = 60
    end
    object IBTbNF0001NF_NUMERO: TIBStringField
      FieldName = 'NF_NUMERO'
      Size = 10
    end
    object IBTbNF0001NF_OBS_NOTA: TIBStringField
      FieldName = 'NF_OBS_NOTA'
      Size = 60
    end
    object IBTbNF0001NF_INTERNO: TIBStringField
      FieldName = 'NF_INTERNO'
      Size = 1
    end
    object IBTbNF0001NF_CANCELADA: TIBStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object IBTbNF0001EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object IBTbNF0001NF_AGRUPADO: TIBStringField
      FieldName = 'NF_AGRUPADO'
      Size = 1
    end
    object IBTbNF0001PCL_CODIGO: TIBStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
  end
  object IBTbNF_IT01: TIBTable
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'NF_IT01'
    UniDirectional = False
    Left = 352
    Top = 304
    object IBTbNF_IT01NF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object IBTbNF_IT01NF_IT_NOTANUMER: TIBStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object IBTbNF_IT01PRD_REFER: TIBStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object IBTbNF_IT01PED_CODIGO: TIBStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object IBTbNF_IT01NF_QTDE: TIBBCDField
      FieldName = 'NF_QTDE'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01NF_PRECO: TIBBCDField
      FieldName = 'NF_PRECO'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01NF_IPIALIQ: TIBBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01IPI_CODIGO: TIBStringField
      FieldName = 'IPI_CODIGO'
      Size = 4
    end
    object IBTbNF_IT01NF_VLSUBST: TIBBCDField
      FieldName = 'NF_VLSUBST'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01NF_IDESCTO1: TIBBCDField
      FieldName = 'NF_IDESCTO1'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01NF_IDESCTO2: TIBBCDField
      FieldName = 'NF_IDESCTO2'
      Precision = 18
      Size = 4
    end
    object IBTbNF_IT01PRD_DESCRI: TIBStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object IBTbNF_IT01EMP_CODIGO: TIBStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object IBQCCT: TIBQuery
    Database = IBConecta
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CCT_0000')
    Left = 480
    Top = 3
    object IBQCCTCCT_CODIGO: TIBStringField
      DisplayWidth = 14
      FieldName = 'CCT_CODIGO'
      Origin = '"CCT_0000"."CCT_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object IBQCCTCCT_DESCRI: TIBStringField
      DisplayWidth = 98
      FieldName = 'CCT_DESCRI'
      Origin = '"CCT_0000"."CCT_DESCRI"'
      Size = 82
    end
    object IBQCCTCCT_PROVISAO: TIBBCDField
      DisplayWidth = 23
      FieldName = 'CCT_PROVISAO'
      Origin = '"CCT_0000"."CCT_PROVISAO"'
      Precision = 18
      Size = 4
    end
    object IBQCCTCCT_TIPO: TIBStringField
      DisplayWidth = 11
      FieldName = 'CCT_TIPO'
      Origin = '"CCT_0000"."CCT_TIPO"'
      Size = 2
    end
    object IBQCCTCEC_CODIGO: TIBStringField
      DisplayWidth = 14
      FieldName = 'CEC_CODIGO'
      Origin = '"CCT_0000"."CEC_CODIGO"'
      Size = 3
    end
    object IBQCCTCCT_CONTA: TIBStringField
      DisplayWidth = 13
      FieldName = 'CCT_CONTA'
      Origin = '"CCT_0000"."CCT_CONTA"'
      Size = 1
    end
    object IBQCCTCCT_NIVEL: TIBStringField
      DisplayWidth = 23
      FieldName = 'CCT_NIVEL'
      Origin = '"CCT_0000"."CCT_NIVEL"'
      Size = 19
    end
    object IBQCCTCCT_STATUS: TIBStringField
      DisplayWidth = 14
      FieldName = 'CCT_STATUS'
      Origin = '"CCT_0000"."CCT_STATUS"'
      Size = 1
    end
    object IBQCCTEMP_CODIGO: TIBStringField
      DisplayWidth = 14
      FieldName = 'EMP_CODIGO'
      Origin = '"CCT_0000"."EMP_CODIGO"'
      Size = 3
    end
    object IBQCCTCCT_ANTIGO: TIBStringField
      DisplayWidth = 14
      FieldName = 'CCT_ANTIGO'
      Origin = '"CCT_0000"."CCT_ANTIGO"'
      Size = 3
    end
  end
end
