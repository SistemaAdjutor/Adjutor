inherited 
  OldCreateOrder = False
  Left = 472
  Top = 113
  Height = 346
  Width = 431
  object CONEXAO: TSQLConnection
   
  end
  object SQL_SENHA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'T1.*,'
      'T2.CLI_CODIGO,'
      'T2.CLI_RAZAO,'
      'T3.usu_CODIGO,'
      'T3.usu_NOME'
      'FROM SERIAL_RENEW T1'
      
        'left JOIN usuario T3 ON (T3.usu_codigo = T1.s_id_funcionario_ren' +
        'ew)'
      
        'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) order by S' +
        '_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC')
    SQLConnection = CONEXAO
    Left = 48
    Top = 72
    object SQL_SENHAS_ID: TIntegerField
      FieldName = 'S_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQL_SENHAS_SOLICITANTE: TStringField
      FieldName = 'S_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SQL_SENHAS_DATA_ATENDIMENTO: TDateField
      FieldName = 'S_DATA_ATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQL_SENHAS_HORA_ATENDIMENTO: TTimeField
      FieldName = 'S_HORA_ATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object SQL_SENHAS_SERIAL_FORNECIDO: TStringField
      FieldName = 'S_SERIAL_FORNECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQL_SENHAS_SERIAL_GERADO: TStringField
      FieldName = 'S_SERIAL_GERADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SQL_SENHAS_DATA_VALIDADE: TDateField
      FieldName = 'S_DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SQL_SENHAS_ID_FUNCIONARIO_RENEW: TIntegerField
      FieldName = 'S_ID_FUNCIONARIO_RENEW'
      ProviderFlags = [pfInUpdate]
    end
    object SQL_SENHAS_OBSERVACAO: TStringField
      FieldName = 'S_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SQL_SENHAS_NUMERO_HD: TStringField
      FieldName = 'S_NUMERO_HD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQL_SENHACLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQL_SENHACLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SQL_SENHAS_ID_CLI: TStringField
      FieldName = 'S_ID_CLI'
      Size = 5
    end
    object SQL_SENHAUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SQL_SENHAUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object CDS_SENHA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_SENHA'
    Left = 248
    Top = 72
    object CDS_SENHAS_ID: TIntegerField
      FieldName = 'S_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_SENHAS_SOLICITANTE: TStringField
      FieldName = 'S_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CDS_SENHAS_DATA_ATENDIMENTO: TDateField
      FieldName = 'S_DATA_ATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CDS_SENHAS_HORA_ATENDIMENTO: TTimeField
      FieldName = 'S_HORA_ATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object CDS_SENHAS_SERIAL_FORNECIDO: TStringField
      FieldName = 'S_SERIAL_FORNECIDO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CDS_SENHAS_SERIAL_GERADO: TStringField
      FieldName = 'S_SERIAL_GERADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CDS_SENHAS_DATA_VALIDADE: TDateField
      FieldName = 'S_DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CDS_SENHAS_ID_FUNCIONARIO_RENEW: TIntegerField
      FieldName = 'S_ID_FUNCIONARIO_RENEW'
      ProviderFlags = [pfInUpdate]
    end
    object CDS_SENHAS_OBSERVACAO: TStringField
      FieldName = 'S_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CDS_SENHAS_NUMERO_HD: TStringField
      FieldName = 'S_NUMERO_HD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CDS_SENHACLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CDS_SENHACLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CDS_SENHAS_ID_CLI: TStringField
      FieldName = 'S_ID_CLI'
      Size = 5
    end
    object CDS_SENHAUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CDS_SENHAUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object DSP_SENHA: TDataSetProvider
    DataSet = SQL_SENHA
    Options = [poAllowCommandText]
    Left = 144
    Top = 72
  end
  object SQL_USER: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USU_CODIGO, USU_NOME FROM USUARIO'
      '')
    SQLConnection = CONEXAO
    Left = 48
    Top = 128
    object SQL_USERUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object SQL_USERUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object CDS_USER: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_USER'
    Left = 248
    Top = 128
    object CDS_USERUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object CDS_USERUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object DSP_USER: TDataSetProvider
    DataSet = SQL_USER
    Options = [poAllowCommandText]
    Left = 144
    Top = 128
  end
  object SQL_CLIENTE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO FROM CLI0000')
    SQLConnection = CONEXAO
    Left = 48
    Top = 184
    object SQL_CLIENTECLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object SQL_CLIENTECLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
  end
  object CDS_CLIENTE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CLIENTE'
    Left = 248
    Top = 184
    object CDS_CLIENTECLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object CDS_CLIENTECLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
  end
  object DSP_CLIENTE: TDataSetProvider
    DataSet = SQL_CLIENTE
    Options = [poAllowCommandText]
    Left = 144
    Top = 184
  end
end
