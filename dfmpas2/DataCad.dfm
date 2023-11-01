object DataCadastros: TDataCadastros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 754
  Width = 1226
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      ''
      'VendorLib=C:\Developer\adjutor\fbclient.dll'
      'VendorLibWin64=C:\Developer\adjutor\fbclient.dll'
      ''
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=C:\JobDados\CHEMVET1104.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 399
    Top = 1
  end
  object SqlCLientes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from CLI0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 2
    object SqlCLientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
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
      Size = 400
    end
    object SqlCLientesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_ATIVIDADE: TStringField
      DisplayWidth = 3
      FieldName = 'CLI_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object SqlCLientesCLI_FONE: TStringField
      DisplayWidth = 12
      FieldName = 'CLI_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlCLientesCLI_FAX: TStringField
      DisplayWidth = 12
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
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
    object SqlCLientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCLientesCLI_CURVA: TStringField
      FieldName = 'CLI_CURVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_LIMITECRED: TFMTBCDField
      FieldName = 'CLI_LIMITECRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCLientesCLI_LIMITEUTILIZ: TFMTBCDField
      FieldName = 'CLI_LIMITEUTILIZ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCLientesCLI_PEDABERTO: TFMTBCDField
      FieldName = 'CLI_PEDABERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCLientesCLI_VL_ULTCOMP: TFMTBCDField
      FieldName = 'CLI_VL_ULTCOMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCLientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlCLientesCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlCLientesCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlCLientesCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlCLientesCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlCLientesCLI_PROTESTAR: TStringField
      FieldName = 'CLI_PROTESTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlCLientesCLI_QTDE_DIAS_PROTESTO: TIntegerField
      FieldName = 'CLI_QTDE_DIAS_PROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_CONSFINAL: TStringField
      FieldName = 'CLI_CONSFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object SqlCLientesCLI_HISTORICO: TMemoField
      FieldName = 'CLI_HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlCLientesCLI_CONSU_PROPRIO: TStringField
      FieldName = 'CLI_CONSU_PROPRIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_INSCMUNI: TStringField
      FieldName = 'CLI_INSCMUNI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlCLientesCLI_BAIENTR: TStringField
      FieldName = 'CLI_BAIENTR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object SqlCLientesCLI_BAIFAT: TStringField
      FieldName = 'CLI_BAIFAT'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlCLientesAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCLientesPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCLientesCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlCLientesCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlCLientesCLI_TABPRECO: TStringField
      FieldName = 'CLI_TABPRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SqlCLientesPAI_CODIGO: TStringField
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlCLientesCLI_CLASSE_CLI_FOR: TStringField
      FieldName = 'CLI_CLASSE_CLI_FOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlCLientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlCLientesCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlCLientesCLI_EMAIL_ALTERNATIVO: TStringField
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlCLientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object SqlCLientesOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlCLientesCLI_REGIME_TRIBUTARIO: TStringField
      FieldName = 'CLI_REGIME_TRIBUTARIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCLientesPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_MODO_TRIB_ST: TStringField
      FieldName = 'CLI_MODO_TRIB_ST'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlCLientesPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_VALORFRETE: TFMTBCDField
      FieldName = 'CLI_VALORFRETE'
      Precision = 18
      Size = 5
    end
    object SqlCLientesCLI_VALORDESPESAS: TFMTBCDField
      FieldName = 'CLI_VALORDESPESAS'
      Precision = 18
      Size = 5
    end
    object SqlCLientesVEND_INTERNO_CODIGO: TStringField
      FieldName = 'VEND_INTERNO_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCLientesFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object SqlCLientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Size = 1
    end
    object SqlCLientesCLI_SEMCOMISSAO: TStringField
      FieldName = 'CLI_SEMCOMISSAO'
      Size = 1
    end
    object SqlCLientesCLI_UND_CONSUMIDORA: TIntegerField
      FieldName = 'CLI_UND_CONSUMIDORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCLientesCLI_LONGITUDE: TFMTBCDField
      FieldName = 'CLI_LONGITUDE'
      Precision = 11
    end
    object SqlCLientesCLI_LATITUDE: TFMTBCDField
      FieldName = 'CLI_LATITUDE'
      Precision = 11
    end
    object SqlCLientesCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object SqlCLientesCLI_DTNASCIMENTO: TSQLTimeStampField
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object SqlCLientesCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object DspClientes: TDataSetProvider
    DataSet = SqlCLientes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 2
  end
  object CdsClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspClientes'
    AfterInsert = CdsClientesAfterInsert
    BeforeEdit = CdsClientesBeforeEdit
    BeforePost = CdsClientesBeforePost
    Left = 224
    Top = 2
    object CdsClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
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
      Size = 400
    end
    object CdsClientesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_ATIVIDADE: TStringField
      DisplayWidth = 3
      FieldName = 'CLI_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object CdsClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(99\)#9999\-9999;0;_'
      Size = 12
    end
    object CdsClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(99\)#9999\-9999;0;_'
      Size = 12
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
    object CdsClientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsClientesCLI_CURVA: TStringField
      FieldName = 'CLI_CURVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_LIMITECRED: TFMTBCDField
      FieldName = 'CLI_LIMITECRED'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsClientesCLI_LIMITEUTILIZ: TFMTBCDField
      FieldName = 'CLI_LIMITEUTILIZ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsClientesCLI_PEDABERTO: TFMTBCDField
      FieldName = 'CLI_PEDABERTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsClientesCLI_VL_ULTCOMP: TFMTBCDField
      FieldName = 'CLI_VL_ULTCOMP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(99\)99999\-9999;0;_'
      Size = 11
    end
    object CdsClientesCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsClientesCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClientesCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClientesCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsClientesCLI_PROTESTAR: TStringField
      FieldName = 'CLI_PROTESTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsClientesCLI_QTDE_DIAS_PROTESTO: TIntegerField
      FieldName = 'CLI_QTDE_DIAS_PROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_CONSFINAL: TStringField
      FieldName = 'CLI_CONSFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object CdsClientesCLI_HISTORICO: TMemoField
      FieldName = 'CLI_HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsClientesCLI_CONSU_PROPRIO: TStringField
      FieldName = 'CLI_CONSU_PROPRIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_INSCMUNI: TStringField
      FieldName = 'CLI_INSCMUNI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsClientesCLI_BAIENTR: TStringField
      FieldName = 'CLI_BAIENTR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object CdsClientesCLI_BAIFAT: TStringField
      FieldName = 'CLI_BAIFAT'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsClientesAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsClientesPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsClientesCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsClientesCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsClientesCLI_TABPRECO: TStringField
      FieldName = 'CLI_TABPRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsClientesPAI_CODIGO: TStringField
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsClientesCLI_CLASSE_CLI_FOR: TStringField
      FieldName = 'CLI_CLASSE_CLI_FOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsClientesCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsClientesCLI_EMAIL_ALTERNATIVO: TStringField
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object CdsClientesOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClientesCLI_REGIME_TRIBUTARIO: TStringField
      FieldName = 'CLI_REGIME_TRIBUTARIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsClientesPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_MODO_TRIB_ST: TStringField
      FieldName = 'CLI_MODO_TRIB_ST'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsClientesPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_VALORFRETE: TFMTBCDField
      FieldName = 'CLI_VALORFRETE'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object CdsClientesCLI_VALORDESPESAS: TFMTBCDField
      FieldName = 'CLI_VALORDESPESAS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object CdsClientesVEND_INTERNO_CODIGO: TStringField
      FieldName = 'VEND_INTERNO_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsClientesFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsClientesCLI_FRETE: TStringField
      FieldName = 'CLI_FRETE'
      Size = 1
    end
    object CdsClientesCLI_UND_CONSUMIDORA: TIntegerField
      FieldName = 'CLI_UND_CONSUMIDORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientesCLI_SEMCOMISSAO: TStringField
      FieldName = 'CLI_SEMCOMISSAO'
      Size = 1
    end
    object CdsClientesCLI_LATITUDE: TFMTBCDField
      FieldName = 'CLI_LATITUDE'
      Precision = 11
    end
    object CdsClientesCLI_LONGITUDE: TFMTBCDField
      FieldName = 'CLI_LONGITUDE'
      Precision = 11
    end
    object CdsClientesCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object CdsClientesCLI_DTNASCIMENTO: TSQLTimeStampField
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object CdsClientesCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object DsCliente: TDataSource
    DataSet = CdsClientes
    Left = 312
    Top = 2
  end
  object SqlRepresentante: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from REP0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 92
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
      Size = 60
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
    object SqlRepresentanteREP_COMISSAO: TFMTBCDField
      FieldName = 'REP_COMISSAO'
      Precision = 15
      Size = 2
    end
    object SqlRepresentanteGERAR_VERBA: TStringField
      FieldName = 'GERAR_VERBA'
      Size = 1
    end
    object SqlRepresentanteMER_VENDEDOR_ID: TIntegerField
      FieldName = 'MER_VENDEDOR_ID'
    end
  end
  object DspRepresentante: TDataSetProvider
    DataSet = SqlRepresentante
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 92
  end
  object CdsRepresentante: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspRepresentante'
    BeforeEdit = CdsRepresentanteBeforeEdit
    BeforePost = CdsRepresentanteBeforePost
    Left = 224
    Top = 92
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
      EditMask = '\(99\)99999\-9999;0;_'
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
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsRepresentanteREP_FONE: TStringField
      FieldName = 'REP_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsRepresentanteREP_FAX: TStringField
      FieldName = 'REP_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsRepresentanteREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
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
      DisplayFormat = '#,###0.000'
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
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object CdsRepresentanteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsRepresentanteREP_COMISSAO: TFMTBCDField
      FieldName = 'REP_COMISSAO'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object CdsRepresentanteGERAR_VERBA: TStringField
      FieldName = 'GERAR_VERBA'
      Size = 1
    end
    object CdsRepresentanteMER_VENDEDOR_ID: TIntegerField
      FieldName = 'MER_VENDEDOR_ID'
    end
  end
  object DsRepresentante: TDataSource
    DataSet = CdsRepresentante
    Left = 312
    Top = 92
  end
  object SqlTransportadora: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from TRP0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 137
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
    object SqlTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlTransportadoraTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlTransportadoraTRP_OBSERVACAO: TMemoField
      FieldName = 'TRP_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlTransportadoraCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object SqlTransportadoraTRP_BAIRRO: TStringField
      FieldName = 'TRP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlTransportadoraTRP_PLACA: TStringField
      FieldName = 'TRP_PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlTransportadoraTRP_PLACAUF: TStringField
      FieldName = 'TRP_PLACAUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SqlTransportadoraFRETE: TStringField
      FieldName = 'FRETE'
      Size = 1
    end
    object SqlTransportadoraCLIENTE_RETIRA: TStringField
      FieldName = 'CLIENTE_RETIRA'
      Size = 1
    end
  end
  object CdsTransportadora: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspTransportadora'
    BeforeEdit = CdsTransportadoraBeforeEdit
    BeforePost = CdsTransportadoraBeforePost
    Left = 224
    Top = 137
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
    object CdsTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsTransportadoraTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsTransportadoraTRP_OBSERVACAO: TMemoField
      FieldName = 'TRP_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsTransportadoraCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object CdsTransportadoraTRP_BAIRRO: TStringField
      FieldName = 'TRP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsTransportadoraTRP_PLACA: TStringField
      FieldName = 'TRP_PLACA'
      ProviderFlags = [pfInUpdate]
      EditMask = 'AAA-9A99;0; '
      Size = 10
    end
    object CdsTransportadoraTRP_PLACAUF: TStringField
      FieldName = 'TRP_PLACAUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsTransportadoraFRETE: TStringField
      FieldName = 'FRETE'
      Size = 1
    end
    object CdsTransportadoraCLIENTE_RETIRA: TStringField
      FieldName = 'CLIENTE_RETIRA'
      Size = 1
    end
  end
  object DspTransportadora: TDataSetProvider
    DataSet = SqlTransportadora
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 137
  end
  object DsTransportadora: TDataSource
    DataSet = CdsTransportadora
    Left = 312
    Top = 137
  end
  object SqlRegiao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from REG0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 182
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
    Top = 182
  end
  object CdsRegiao: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspRegiao'
    BeforeEdit = CdsRegiaoBeforeEdit
    BeforePost = CdsRegiaoBeforePost
    Left = 224
    Top = 182
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
    Left = 312
    Top = 182
  end
  object SqlAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 272
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
    Left = 128
    Top = 272
  end
  object CdsAtividade: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspAtividade'
    AfterInsert = CdsAtividadeAfterInsert
    Left = 224
    Top = 272
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
    OnStateChange = DsAtividadeStateChange
    Left = 312
    Top = 272
  end
  object SqlFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FOR0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 362
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
      Size = 70
    end
    object SqlFornecedorFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
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
      Size = 4000
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
    object SqlFornecedorFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlFornecedorCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlFornecedorFOR_ATIVO: TStringField
      FieldName = 'FOR_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlFornecedorPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlFornecedorCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object SqlFornecedorFOR_INSCMUNI: TStringField
      FieldName = 'FOR_INSCMUNI'
      Size = 14
    end
    object SqlFornecedorFOR_DTCADASTRO: TSQLTimeStampField
      FieldName = 'FOR_DTCADASTRO'
    end
    object SqlFornecedorFOR_INSCST: TStringField
      FieldName = 'FOR_INSCST'
      Size = 14
    end
    object SqlFornecedorFOR_MODALIDADE_CONTABIL: TStringField
      FieldName = 'FOR_MODALIDADE_CONTABIL'
      Size = 1
    end
    object SqlFornecedorFOR_ATUALIZA_PCUSTO: TStringField
      FieldName = 'FOR_ATUALIZA_PCUSTO'
      Size = 1
    end
    object SqlFornecedorFOR_ATUALIZA_PVENDA: TStringField
      FieldName = 'FOR_ATUALIZA_PVENDA'
      Size = 1
    end
    object SqlFornecedorFOR_MOTIVO_INATIVO: TStringField
      FieldName = 'FOR_MOTIVO_INATIVO'
      Size = 100
    end
    object SqlFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object SqlFornecedorFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Size = 150
    end
    object SqlFornecedorFOR_SUFRAMA: TStringField
      FieldName = 'FOR_SUFRAMA'
      Size = 30
    end
    object SqlFornecedorAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlFornecedorCOLABORADOR: TStringField
      FieldName = 'COLABORADOR'
      Size = 50
    end
    object SqlFornecedorENDERECO_COL: TStringField
      FieldName = 'ENDERECO_COL'
      Size = 100
    end
    object SqlFornecedorDATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
    end
    object SqlFornecedorLOCAL_NASC: TStringField
      FieldName = 'LOCAL_NASC'
      Size = 50
    end
    object SqlFornecedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 30
    end
    object SqlFornecedorESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object SqlFornecedorPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SqlFornecedorMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SqlFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object SqlFornecedorRG_EMISSAO: TSQLTimeStampField
      FieldName = 'RG_EMISSAO'
    end
    object SqlFornecedorORGAO_UF: TStringField
      FieldName = 'ORGAO_UF'
      Size = 10
    end
    object SqlFornecedorTITULO_ELEITORAL: TStringField
      FieldName = 'TITULO_ELEITORAL'
      Size = 15
    end
    object SqlFornecedorZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object SqlFornecedorSECAO: TIntegerField
      FieldName = 'SECAO'
    end
    object SqlFornecedorORGAO_CLASSE: TStringField
      FieldName = 'ORGAO_CLASSE'
      Size = 10
    end
    object SqlFornecedorCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object SqlFornecedorSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object SqlFornecedorCTPS_EXPEDICAO: TSQLTimeStampField
      FieldName = 'CTPS_EXPEDICAO'
    end
    object SqlFornecedorCTPS_UF: TStringField
      FieldName = 'CTPS_UF'
      Size = 3
    end
    object SqlFornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object SqlFornecedorHABILITACAO: TStringField
      FieldName = 'HABILITACAO'
      Size = 15
    end
    object SqlFornecedorHABILITACAO_CATEG: TStringField
      FieldName = 'HABILITACAO_CATEG'
      Size = 2
    end
    object SqlFornecedorDOC_MILITAR: TStringField
      FieldName = 'DOC_MILITAR'
      Size = 15
    end
    object SqlFornecedorDOC_MILITAR_CATEG: TStringField
      FieldName = 'DOC_MILITAR_CATEG'
      Size = 5
    end
    object SqlFornecedorCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object SqlFornecedorSEXO: TStringField
      FieldName = 'SEXO'
      Size = 9
    end
    object SqlFornecedorGRAU_INSTRUCAO: TStringField
      FieldName = 'GRAU_INSTRUCAO'
      Size = 50
    end
    object SqlFornecedorDEFICIENCIA: TStringField
      FieldName = 'DEFICIENCIA'
      FixedChar = True
      Size = 1
    end
    object SqlFornecedorCARGO: TStringField
      FieldName = 'CARGO'
      Size = 50
    end
    object SqlFornecedorFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 50
    end
    object SqlFornecedorADMISSAO: TSQLTimeStampField
      FieldName = 'ADMISSAO'
    end
    object SqlFornecedorSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Precision = 18
      Size = 5
    end
    object SqlFornecedorSALARIO_POR: TStringField
      FieldName = 'SALARIO_POR'
      Size = 10
    end
    object SqlFornecedorHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
      EditMask = '!90:00;1;_'
    end
    object SqlFornecedorHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      EditMask = '!90:00;1;_'
    end
    object SqlFornecedorSAIDA_INTERVALO: TTimeField
      FieldName = 'SAIDA_INTERVALO'
    end
    object SqlFornecedorENTRADA_INTERVALO: TTimeField
      FieldName = 'ENTRADA_INTERVALO'
    end
    object SqlFornecedorFGTS_DATA_OPCAO: TSQLTimeStampField
      FieldName = 'FGTS_DATA_OPCAO'
    end
    object SqlFornecedorFGTS_CONTA_BANCO: TStringField
      FieldName = 'FGTS_CONTA_BANCO'
      Size = 50
    end
    object SqlFornecedorFGTS_DATA_RETIFICACAO: TSQLTimeStampField
      FieldName = 'FGTS_DATA_RETIFICACAO'
    end
    object SqlFornecedorPIS_DATA: TSQLTimeStampField
      FieldName = 'PIS_DATA'
    end
    object SqlFornecedorPIS_NUMERO: TStringField
      FieldName = 'PIS_NUMERO'
    end
    object SqlFornecedorPIS_DOMINIO_BANCARIO: TStringField
      FieldName = 'PIS_DOMINIO_BANCARIO'
      Size = 50
    end
    object SqlFornecedorPIS_NUM_BANCO: TIntegerField
      FieldName = 'PIS_NUM_BANCO'
    end
    object SqlFornecedorPIS_END_AGENCIA: TStringField
      FieldName = 'PIS_END_AGENCIA'
      Size = 50
    end
    object SqlFornecedorBENEFICIARIOS: TStringField
      FieldName = 'BENEFICIARIOS'
      Size = 500
    end
    object SqlFornecedorSALARIO_ALTERACOES: TStringField
      FieldName = 'SALARIO_ALTERACOES'
      Size = 500
    end
    object SqlFornecedorFERIAS_PERIODO_AQUISITIVO: TStringField
      FieldName = 'FERIAS_PERIODO_AQUISITIVO'
      Size = 500
    end
    object SqlFornecedorFERIAS_PERIODO_GOZO: TStringField
      FieldName = 'FERIAS_PERIODO_GOZO'
      Size = 500
    end
    object SqlFornecedorACIDENTE_TRABALHO: TStringField
      FieldName = 'ACIDENTE_TRABALHO'
      Size = 500
    end
    object SqlFornecedorDOENCA_PROFISSIONAL: TStringField
      FieldName = 'DOENCA_PROFISSIONAL'
      Size = 500
    end
    object SqlFornecedorCONTRIBUICAO_SINDICATO: TStringField
      FieldName = 'CONTRIBUICAO_SINDICATO'
      Size = 500
    end
    object SqlFornecedorRESCISAO_DATA: TSQLTimeStampField
      FieldName = 'RESCISAO_DATA'
    end
    object SqlFornecedorRESCISAO_TIPO: TStringField
      FieldName = 'RESCISAO_TIPO'
      Size = 50
    end
    object SqlFornecedorFONE_RESIDENCIAL: TStringField
      FieldName = 'FONE_RESIDENCIAL'
      Size = 16
    end
    object SqlFornecedorFONE_CELULAR: TStringField
      FieldName = 'FONE_CELULAR'
    end
    object SqlFornecedorCBO: TStringField
      FieldName = 'CBO'
      Size = 100
    end
    object SqlFornecedorPIS_AGENCIA: TStringField
      FieldName = 'PIS_AGENCIA'
      Size = 11
    end
    object SqlFornecedorTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
  end
  object DspFornecedor: TDataSetProvider
    DataSet = SqlFornecedor
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 362
  end
  object CdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFornecedor'
    BeforeEdit = CdsFornecedorBeforeEdit
    BeforePost = CdsFornecedorBeforePost
    Left = 224
    Top = 362
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
      Size = 70
    end
    object CdsFornecedorFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
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
      Size = 4000
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
    object CdsFornecedorFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsFornecedorCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsFornecedorFOR_ATIVO: TStringField
      FieldName = 'FOR_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsFornecedorPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsFornecedorCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object CdsFornecedorFOR_INSCMUNI: TStringField
      FieldName = 'FOR_INSCMUNI'
      Size = 14
    end
    object CdsFornecedorFOR_DTCADASTRO: TSQLTimeStampField
      FieldName = 'FOR_DTCADASTRO'
    end
    object CdsFornecedorFOR_INSCST: TStringField
      FieldName = 'FOR_INSCST'
      Size = 14
    end
    object CdsFornecedorFOR_MODALIDADE_CONTABIL: TStringField
      FieldName = 'FOR_MODALIDADE_CONTABIL'
      Size = 1
    end
    object CdsFornecedorFOR_ATUALIZA_PCUSTO: TStringField
      FieldName = 'FOR_ATUALIZA_PCUSTO'
      Size = 1
    end
    object CdsFornecedorFOR_ATUALIZA_PVENDA: TStringField
      FieldName = 'FOR_ATUALIZA_PVENDA'
      Size = 1
    end
    object CdsFornecedorFOR_MOTIVO_INATIVO: TStringField
      FieldName = 'FOR_MOTIVO_INATIVO'
      Size = 100
    end
    object CdsFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object CdsFornecedorFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Size = 150
    end
    object CdsFornecedorFOR_SUFRAMA: TStringField
      FieldName = 'FOR_SUFRAMA'
      Size = 30
    end
    object CdsFornecedorAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object CdsFornecedorCOLABORADOR: TStringField
      FieldName = 'COLABORADOR'
      Size = 50
    end
    object CdsFornecedorENDERECO_COL: TStringField
      FieldName = 'ENDERECO_COL'
      Size = 100
    end
    object CdsFornecedorDATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
    end
    object CdsFornecedorLOCAL_NASC: TStringField
      FieldName = 'LOCAL_NASC'
      Size = 50
    end
    object CdsFornecedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 30
    end
    object CdsFornecedorESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object CdsFornecedorPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object CdsFornecedorMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object CdsFornecedorRG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object CdsFornecedorRG_EMISSAO: TSQLTimeStampField
      FieldName = 'RG_EMISSAO'
    end
    object CdsFornecedorORGAO_UF: TStringField
      FieldName = 'ORGAO_UF'
      Size = 10
    end
    object CdsFornecedorTITULO_ELEITORAL: TStringField
      FieldName = 'TITULO_ELEITORAL'
      Size = 15
    end
    object CdsFornecedorZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CdsFornecedorSECAO: TIntegerField
      FieldName = 'SECAO'
    end
    object CdsFornecedorORGAO_CLASSE: TStringField
      FieldName = 'ORGAO_CLASSE'
      Size = 10
    end
    object CdsFornecedorCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object CdsFornecedorSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object CdsFornecedorCTPS_EXPEDICAO: TSQLTimeStampField
      FieldName = 'CTPS_EXPEDICAO'
    end
    object CdsFornecedorCTPS_UF: TStringField
      FieldName = 'CTPS_UF'
      Size = 3
    end
    object CdsFornecedorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object CdsFornecedorHABILITACAO: TStringField
      FieldName = 'HABILITACAO'
      Size = 15
    end
    object CdsFornecedorHABILITACAO_CATEG: TStringField
      FieldName = 'HABILITACAO_CATEG'
      Size = 2
    end
    object CdsFornecedorDOC_MILITAR: TStringField
      FieldName = 'DOC_MILITAR'
      Size = 15
    end
    object CdsFornecedorDOC_MILITAR_CATEG: TStringField
      FieldName = 'DOC_MILITAR_CATEG'
      Size = 5
    end
    object CdsFornecedorCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object CdsFornecedorSEXO: TStringField
      FieldName = 'SEXO'
      Size = 9
    end
    object CdsFornecedorGRAU_INSTRUCAO: TStringField
      FieldName = 'GRAU_INSTRUCAO'
      Size = 50
    end
    object CdsFornecedorDEFICIENCIA: TStringField
      FieldName = 'DEFICIENCIA'
      FixedChar = True
      Size = 1
    end
    object CdsFornecedorCARGO: TStringField
      FieldName = 'CARGO'
      Size = 50
    end
    object CdsFornecedorFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 50
    end
    object CdsFornecedorADMISSAO: TSQLTimeStampField
      FieldName = 'ADMISSAO'
    end
    object CdsFornecedorSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Precision = 18
      Size = 5
    end
    object CdsFornecedorSALARIO_POR: TStringField
      FieldName = 'SALARIO_POR'
      Size = 10
    end
    object CdsFornecedorHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
      EditMask = '!90:00;1;_'
    end
    object CdsFornecedorHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      EditMask = '!90:00;1;_'
    end
    object CdsFornecedorSAIDA_INTERVALO: TTimeField
      FieldName = 'SAIDA_INTERVALO'
    end
    object CdsFornecedorENTRADA_INTERVALO: TTimeField
      FieldName = 'ENTRADA_INTERVALO'
    end
    object CdsFornecedorFGTS_DATA_OPCAO: TSQLTimeStampField
      FieldName = 'FGTS_DATA_OPCAO'
    end
    object CdsFornecedorFGTS_CONTA_BANCO: TStringField
      FieldName = 'FGTS_CONTA_BANCO'
      Size = 50
    end
    object CdsFornecedorFGTS_DATA_RETIFICACAO: TSQLTimeStampField
      FieldName = 'FGTS_DATA_RETIFICACAO'
    end
    object CdsFornecedorPIS_DATA: TSQLTimeStampField
      FieldName = 'PIS_DATA'
    end
    object CdsFornecedorPIS_NUMERO: TStringField
      FieldName = 'PIS_NUMERO'
    end
    object CdsFornecedorPIS_DOMINIO_BANCARIO: TStringField
      FieldName = 'PIS_DOMINIO_BANCARIO'
      Size = 50
    end
    object CdsFornecedorPIS_NUM_BANCO: TIntegerField
      FieldName = 'PIS_NUM_BANCO'
    end
    object CdsFornecedorPIS_END_AGENCIA: TStringField
      FieldName = 'PIS_END_AGENCIA'
      Size = 50
    end
    object CdsFornecedorBENEFICIARIOS: TStringField
      FieldName = 'BENEFICIARIOS'
      Size = 500
    end
    object CdsFornecedorSALARIO_ALTERACOES: TStringField
      FieldName = 'SALARIO_ALTERACOES'
      Size = 500
    end
    object CdsFornecedorFERIAS_PERIODO_AQUISITIVO: TStringField
      FieldName = 'FERIAS_PERIODO_AQUISITIVO'
      Size = 500
    end
    object CdsFornecedorFERIAS_PERIODO_GOZO: TStringField
      FieldName = 'FERIAS_PERIODO_GOZO'
      Size = 500
    end
    object CdsFornecedorACIDENTE_TRABALHO: TStringField
      FieldName = 'ACIDENTE_TRABALHO'
      Size = 500
    end
    object CdsFornecedorDOENCA_PROFISSIONAL: TStringField
      FieldName = 'DOENCA_PROFISSIONAL'
      Size = 500
    end
    object CdsFornecedorCONTRIBUICAO_SINDICATO: TStringField
      FieldName = 'CONTRIBUICAO_SINDICATO'
      Size = 500
    end
    object CdsFornecedorRESCISAO_DATA: TSQLTimeStampField
      FieldName = 'RESCISAO_DATA'
    end
    object CdsFornecedorRESCISAO_TIPO: TStringField
      FieldName = 'RESCISAO_TIPO'
      Size = 50
    end
    object CdsFornecedorFONE_RESIDENCIAL: TStringField
      FieldName = 'FONE_RESIDENCIAL'
      EditMask = '\(99\)99999\-9999;0;_'
      Size = 16
    end
    object CdsFornecedorFONE_CELULAR: TStringField
      FieldName = 'FONE_CELULAR'
      EditMask = '\(99\)99999\-9999;0;_'
    end
    object CdsFornecedorCBO: TStringField
      FieldName = 'CBO'
      Size = 100
    end
    object CdsFornecedorPIS_AGENCIA: TStringField
      FieldName = 'PIS_AGENCIA'
      Size = 11
    end
    object CdsFornecedorTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
  end
  object DsFornecedor: TDataSource
    DataSet = CdsFornecedor
    Left = 312
    Top = 362
  end
  object SqlCtAnalise: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CCT_0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 227
    object SqlCtAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCtAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 82
    end
    object SqlCtAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCtAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlCtAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCtAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCtAnaliseCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      ProviderFlags = [pfInUpdate]
      Size = 19
    end
    object SqlCtAnaliseCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlCtAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCtAnaliseCCT_ANTIGO: TStringField
      FieldName = 'CCT_ANTIGO'
      Size = 3
    end
    object SqlCtAnaliseCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlCtAnaliseCCT_PERFIL_RATEIO: TStringField
      FieldName = 'CCT_PERFIL_RATEIO'
      Size = 1
    end
  end
  object DspCtAnalise: TDataSetProvider
    DataSet = SqlCtAnalise
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 227
  end
  object CdsCtAnalise: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCtAnalise'
    BeforeEdit = CdsCtAnaliseBeforeEdit
    BeforePost = CdsCtAnaliseBeforePost
    BeforeScroll = CdsCtAnaliseBeforeScroll
    AfterScroll = CdsCtAnaliseAfterScroll
    OnCalcFields = CdsCtAnaliseCalcFields
    Left = 224
    Top = 227
    object CdsCtAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsCtAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 82
    end
    object CdsCtAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsCtAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCtAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsCtAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsCtAnaliseCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      ProviderFlags = [pfInUpdate]
      Size = 19
    end
    object CdsCtAnaliseCCT_MOV_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCT_MOV_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsCtAnaliseCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsCtAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCtAnaliseCCT_ANTIGO: TStringField
      FieldName = 'CCT_ANTIGO'
      Size = 3
    end
    object CdsCtAnaliseCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsCtAnaliseCCT_PERFIL_RATEIO: TStringField
      FieldName = 'CCT_PERFIL_RATEIO'
      Size = 1
    end
  end
  object DsCtAnalise: TDataSource
    DataSet = CdsCtAnalise
    OnDataChange = DsCtAnaliseDataChange
    Left = 312
    Top = 227
  end
  object SqlProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from PRD0000')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 317
    object SqlProdutosPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlProdutosPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
    end
    object SqlProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      Size = 35
    end
    object SqlProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object SqlProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      Precision = 15
    end
    object SqlProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
      Size = 1
    end
    object SqlProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 15
    end
    object SqlProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
    end
    object SqlProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      Precision = 15
    end
    object SqlProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      Precision = 15
    end
    object SqlProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      Precision = 15
    end
    object SqlProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      Size = 1
    end
    object SqlProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      Size = 2
    end
    object SqlProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      Precision = 15
    end
    object SqlProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object SqlProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object SqlProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object SqlProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object SqlProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object SqlProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
    end
    object SqlProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object SqlProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      Size = 10
    end
    object SqlProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      Size = 5
    end
    object SqlProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object SqlProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      Precision = 15
    end
    object SqlProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      Precision = 15
    end
    object SqlProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      Precision = 15
    end
    object SqlProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      Precision = 15
    end
    object SqlProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      Precision = 15
    end
    object SqlProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      Precision = 15
    end
    object SqlProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      Precision = 15
    end
    object SqlProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      Precision = 15
    end
    object SqlProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      Size = 1
    end
    object SqlProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      Size = 15
    end
    object SqlProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
    end
    object SqlProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlProdutosPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object SqlProdutosPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      Precision = 15
    end
    object SqlProdutosPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      Precision = 15
    end
    object SqlProdutosPRD_COMISSAO: TFMTBCDField
      FieldName = 'PRD_COMISSAO'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      Precision = 15
    end
    object SqlProdutosPRD_DT_ULT_COMPRA: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA'
    end
    object SqlProdutosPRD_VL_ULT_COMPRA: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA'
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA'
      Size = 6
    end
    object SqlProdutosFOR_CODIGO_ANT: TStringField
      FieldName = 'FOR_CODIGO_ANT'
      Size = 4
    end
    object SqlProdutosPRD_DT_ULT_COMPRA_ANT: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA_ANT'
    end
    object SqlProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA_ANT'
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA_ANT: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA_ANT'
      Size = 6
    end
    object SqlProdutosPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      Size = 15
    end
    object SqlProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      Precision = 15
    end
    object SqlProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object SqlProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object SqlProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object SqlProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      Precision = 15
    end
    object SqlProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      Precision = 15
    end
    object SqlProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
    end
    object SqlProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
    end
    object SqlProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object SqlProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
    end
    object SqlProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      Size = 15
    end
    object SqlProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
    end
    object SqlProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 15
    end
    object SqlProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object SqlProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object SqlProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object SqlProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object SqlProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object SqlProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      Precision = 15
      Size = 5
    end
    object SqlProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object SqlProdutosPRD_FOTO: TBlobField
      FieldName = 'PRD_FOTO'
      Size = 1
    end
    object SqlProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object SqlProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
    object SqlProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      Size = 3
    end
    object SqlProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      Size = 1
    end
    object SqlProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object SqlProdutosCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object SqlProdutosCEST_REVISAR: TStringField
      FieldName = 'CEST_REVISAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlProdutosPRD_CSTPISCOFINS: TStringField
      FieldName = 'PRD_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = SqlProdutos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 317
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxCdsProdutosPRD_CODIGO'
        Fields = 'PRD_CODIGO'
      end>
    IndexName = 'idxCdsProdutosPRD_CODIGO'
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspProdutos'
    StoreDefs = True
    AfterInsert = CdsProdutosAfterInsert
    OnCalcFields = CdsProdutosCalcFields
    Left = 224
    Top = 317
    object CdsProdutosPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      ProviderFlags = [pfInUpdate]
      Size = 35
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
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
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
      DisplayFormat = '#,##0.00'
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
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
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
    object CdsProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
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
    object CdsProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      currency = False
      Calculated = True
    end
    object CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      currency = False
      Calculated = True
    end
    object CdsProdutosPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
    end
    object CdsProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      Size = 1
    end
    object CdsProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      Size = 15
    end
    object CdsProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
    end
    object CdsProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object CdsProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_COMISSAO: TFMTBCDField
      FieldName = 'PRD_COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      Precision = 15
    end
    object CdsProdutosPRD_DT_ULT_COMPRA: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_VL_ULT_COMPRA: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_NF_ULT_COMPRA: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsProdutosFOR_CODIGO_ANT: TStringField
      FieldName = 'FOR_CODIGO_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsProdutosPRD_DT_ULT_COMPRA_ANT: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_NF_ULT_COMPRA_ANT: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsProdutosPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      Size = 15
    end
    object CdsProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      DisplayFormat = '###,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object CdsProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CdsProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object CdsProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
    end
    object CdsProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
    end
    object CdsProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
    end
    object CdsProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      Size = 15
    end
    object CdsProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
    end
    object CdsProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object CdsProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object CdsProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object CdsProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object CdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object CdsProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object CdsProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      DisplayFormat = '00.000%'
      EditFormat = '00.000%'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object CdsProdutosPRD_FOTO: TBlobField
      FieldName = 'PRD_FOTO'
      Size = 1
    end
    object CdsProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object CdsProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
    object CdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      Size = 3
    end
    object CdsProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      Size = 1
    end
    object CdsProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object CdsProdutosCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object CdsProdutosCEST_REVISAR: TStringField
      FieldName = 'CEST_REVISAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsProdutosPRD_CSTPISCOFINS: TStringField
      FieldName = 'PRD_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object DsProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 312
    Top = 317
  end
  object SqlForXProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FOR_PROD')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 407
    object SqlForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlForXProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlForXProdFOR_DESCRICAO_PRODUTO: TStringField
      FieldName = 'FOR_DESCRICAO_PRODUTO'
      Size = 255
    end
  end
  object CdsForXProd: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspForXProd'
    Left = 224
    Top = 407
    object CdsForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsForXProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsForXProdFOR_DESCRICAO_PRODUTO: TStringField
      FieldName = 'FOR_DESCRICAO_PRODUTO'
      Size = 255
    end
  end
  object DspForXProd: TDataSetProvider
    DataSet = SqlForXProd
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 407
  end
  object DsForXProd: TDataSource
    DataSet = CdsForXProd
    Left = 312
    Top = 407
  end
  object SqlUpdate: TSQLQuery
    AfterOpen = SqlUpdateAfterOpen
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 785
    Top = 29
  end
  object SqlBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from BAN0000')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 48
    object SqlBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
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
    object SqlBancoBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_CAMINHO_REMESSA: TStringField
      FieldName = 'BAN_CAMINHO_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlBancoBAN_CAMINHO_RETORNO: TStringField
      FieldName = 'BAN_CAMINHO_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlBancoBAN_SEQUENCIA_REMESSA: TIntegerField
      FieldName = 'BAN_SEQUENCIA_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_ACEITE: TStringField
      FieldName = 'BAN_ACEITE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlBancoBAN_ESPECIE_COB: TStringField
      FieldName = 'BAN_ESPECIE_COB'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object SqlBancoBAN_SEQ_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_SEQ_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_CODAGEDIG: TStringField
      FieldName = 'BAN_CODAGEDIG'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_COBTIPO: TStringField
      FieldName = 'BAN_COBTIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlBancoBAN_LIMITECREDITO: TFMTBCDField
      FieldName = 'BAN_LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_VCTOLIMITE: TIntegerField
      FieldName = 'BAN_VCTOLIMITE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_DIASCRED_COBRANCA: TIntegerField
      FieldName = 'BAN_DIASCRED_COBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_FLUXOCAIXA: TStringField
      FieldName = 'BAN_FLUXOCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlBancoBAN_GERACHEQUE: TStringField
      FieldName = 'BAN_GERACHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlBancoBAN_LIMITE_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTODUPL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_LIMITE_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTOCHEQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_NDIAS_MAXDESCTO: TIntegerField
      FieldName = 'BAN_NDIAS_MAXDESCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_OUTROS_CREDITOS: TFMTBCDField
      FieldName = 'BAN_OUTROS_CREDITOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_JUROS_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTOCHEQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_CHEQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_DUPL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_JUROS_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTODUPL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_LIMITE_CHEQESP: TFMTBCDField
      FieldName = 'BAN_LIMITE_CHEQESP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlBancoBAN_SEQ_CHEQUE: TIntegerField
      FieldName = 'BAN_SEQ_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoBAN_CARTEIRA_REGISTRO: TStringField
      FieldName = 'BAN_CARTEIRA_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object SqlBancoBAN_RESP_BOLETO: TStringField
      FieldName = 'BAN_RESP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object SqlBancoBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 12
    end
    object SqlBancoBAN_CODIGO_TRANSMISSAO: TStringField
      FieldName = 'BAN_CODIGO_TRANSMISSAO'
      Size = 25
    end
    object SqlBancoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 10
    end
    object SqlBancoBAN_CONCILIACAO_DATA: TDateField
      FieldName = 'BAN_CONCILIACAO_DATA'
    end
    object SqlBancoBAN_CONCILIACAO_SALDO: TFMTBCDField
      FieldName = 'BAN_CONCILIACAO_SALDO'
      Precision = 15
      Size = 5
    end
    object SqlBancoBAN_MULTA: TFMTBCDField
      FieldName = 'BAN_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SqlBancoBAN_MULTA_DIAS: TIntegerField
      FieldName = 'BAN_MULTA_DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqlBancoban_convenio: TStringField
      FieldName = 'ban_convenio'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlBancoBAN_LEIAUTE: TIntegerField
      FieldName = 'BAN_LEIAUTE'
    end
    object SqlBancoBAN_DIASCRED_CARTAO: TIntegerField
      FieldName = 'BAN_DIASCRED_CARTAO'
    end
    object SqlBancoBAN_ATIVO: TStringField
      FieldName = 'BAN_ATIVO'
      Size = 1
    end
    object SqlBancoBAN_INSTRUCAO3: TStringField
      FieldName = 'BAN_INSTRUCAO3'
      Size = 2
    end
    object SqlBancoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object SqlBancoBAN_TIPO_JUROS: TStringField
      FieldName = 'BAN_TIPO_JUROS'
      FixedChar = True
      Size = 1
    end
    object SqlBancoBAN_DIAS_PARA_BAIXA: TIntegerField
      FieldName = 'BAN_DIAS_PARA_BAIXA'
    end
  end
  object DspBanco: TDataSetProvider
    DataSet = SqlBanco
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 48
  end
  object CdsBanco: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspBanco'
    BeforeEdit = CdsBancoBeforeEdit
    BeforePost = CdsBancoBeforePost
    AfterScroll = CdsBancoAfterScroll
    Left = 639
    Top = 48
    object CdsBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
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
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsBancoBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsBancoBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
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
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
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
    object CdsBancoBAN_COD_APELIDO: TIntegerField
      Alignment = taCenter
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoBAN_CAMINHO_REMESSA: TStringField
      FieldName = 'BAN_CAMINHO_REMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsBancoBAN_CAMINHO_RETORNO: TStringField
      FieldName = 'BAN_CAMINHO_RETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsBancoBAN_SEQUENCIA_REMESSA: TIntegerField
      FieldName = 'BAN_SEQUENCIA_REMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoBAN_ACEITE: TStringField
      FieldName = 'BAN_ACEITE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsBancoBAN_ESPECIE_COB: TStringField
      FieldName = 'BAN_ESPECIE_COB'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsBancoBAN_SEQ_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_SEQ_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoBAN_CODAGEDIG: TStringField
      FieldName = 'BAN_CODAGEDIG'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_COBTIPO: TStringField
      FieldName = 'BAN_COBTIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsBancoBAN_LIMITECREDITO: TFMTBCDField
      FieldName = 'BAN_LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsBancoBAN_VCTOLIMITE: TIntegerField
      FieldName = 'BAN_VCTOLIMITE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object CdsBancoBAN_DIASCRED_COBRANCA: TIntegerField
      FieldName = 'BAN_DIASCRED_COBRANCA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object CdsBancoBAN_FLUXOCAIXA: TStringField
      FieldName = 'BAN_FLUXOCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsBancoBAN_GERACHEQUE: TStringField
      FieldName = 'BAN_GERACHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsBancoBAN_LIMITE_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTODUPL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_LIMITE_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTOCHEQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_NDIAS_MAXDESCTO: TIntegerField
      FieldName = 'BAN_NDIAS_MAXDESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object CdsBancoBAN_OUTROS_CREDITOS: TFMTBCDField
      FieldName = 'BAN_OUTROS_CREDITOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_JUROS_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTOCHEQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_CHEQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_DUPL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_JUROS_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTODUPL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsBancoBAN_LIMITE_CHEQESP: TFMTBCDField
      FieldName = 'BAN_LIMITE_CHEQESP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsBancoBAN_SEQ_CHEQUE: TIntegerField
      FieldName = 'BAN_SEQ_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoBAN_CARTEIRA_REGISTRO: TStringField
      FieldName = 'BAN_CARTEIRA_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object CdsBancoBAN_RESP_BOLETO: TStringField
      FieldName = 'BAN_RESP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object CdsBancoBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 25
    end
    object CdsBancoBAN_CODIGO_TRANSMISSAO: TStringField
      FieldName = 'BAN_CODIGO_TRANSMISSAO'
      Size = 25
    end
    object CdsBancoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 10
    end
    object CdsBancoBAN_CONCILIACAO_DATA: TDateField
      FieldName = 'BAN_CONCILIACAO_DATA'
    end
    object CdsBancoBAN_CONCILIACAO_SALDO: TFMTBCDField
      FieldName = 'BAN_CONCILIACAO_SALDO'
      Precision = 15
      Size = 5
    end
    object CdsBancoBAN_MULTA: TFMTBCDField
      FieldName = 'BAN_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsBancoBAN_MULTA_DIAS: TIntegerField
      FieldName = 'BAN_MULTA_DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsBancoban_convenio: TStringField
      FieldName = 'ban_convenio'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsBancoBAN_LEIAUTE: TIntegerField
      FieldName = 'BAN_LEIAUTE'
    end
    object CdsBancoBAN_DIASCRED_CARTAO: TIntegerField
      FieldName = 'BAN_DIASCRED_CARTAO'
    end
    object CdsBancoBAN_ATIVO: TStringField
      FieldName = 'BAN_ATIVO'
      Size = 1
    end
    object CdsBancoBAN_INSTRUCAO3: TStringField
      FieldName = 'BAN_INSTRUCAO3'
      Size = 2
    end
    object CdsBancoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsBancoBAN_TIPO_JUROS: TStringField
      FieldName = 'BAN_TIPO_JUROS'
      FixedChar = True
      Size = 1
    end
    object CdsBancoBAN_DIAS_PARA_BAIXA: TIntegerField
      FieldName = 'BAN_DIAS_PARA_BAIXA'
    end
  end
  object DsBanco: TDataSource
    DataSet = CdsBanco
    Left = 707
    Top = 48
  end
  object SqlSysfile: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from SYSFILE')
    SQLConnection = SQLConnection1
    Left = 28
    Top = 452
    object SqlSysfileSYS_REGISTRO: TIntegerField
      FieldName = 'SYS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
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
    object SqlSysfileSYS_CHEQUE: TIntegerField
      FieldName = 'SYS_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_SALDO_BANCO: TIntegerField
      FieldName = 'SYS_SALDO_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_CXFIXO: TIntegerField
      FieldName = 'SYS_CXFIXO'
    end
    object SqlSysfileSYS_ENF: TIntegerField
      FieldName = 'SYS_ENF'
      ProviderFlags = [pfInUpdate]
    end
    object SqlSysfileSYS_SNF: TIntegerField
      FieldName = 'SYS_SNF'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsSysfile: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSysfile'
    Left = 224
    Top = 452
    object CdsSysfileSYS_REGISTRO: TIntegerField
      FieldName = 'SYS_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
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
    object CdsSysfileSYS_CHEQUE: TIntegerField
      FieldName = 'SYS_CHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_SALDO_BANCO: TIntegerField
      FieldName = 'SYS_SALDO_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_CXFIXO: TIntegerField
      FieldName = 'SYS_CXFIXO'
    end
    object CdsSysfileSYS_ENF: TIntegerField
      FieldName = 'SYS_ENF'
      ProviderFlags = [pfInUpdate]
    end
    object CdsSysfileSYS_SNF: TIntegerField
      FieldName = 'SYS_SNF'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspSysfile: TDataSetProvider
    DataSet = SqlSysfile
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 129
    Top = 452
  end
  object SqlEvento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EVE0000')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 96
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
    Left = 564
    Top = 96
  end
  object CdsEvento: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspEvento'
    BeforeEdit = CdsEventoBeforeEdit
    BeforePost = CdsEventoBeforePost
    Left = 639
    Top = 96
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
    Left = 708
    Top = 96
  end
  object SqlPrdTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_TIPO')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 144
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
    object SqlPrdTipoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdTipoPTI_COMISSAO: TFMTBCDField
      FieldName = 'PTI_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdTipoPTI_MARGEM: TFMTBCDField
      FieldName = 'PTI_MARGEM'
      Precision = 15
    end
    object SqlPrdTipoPTI_MARGEMOF: TFMTBCDField
      FieldName = 'PTI_MARGEMOF'
      Precision = 15
    end
    object SqlPrdTipoSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object SqlPrdTipoPTI_SINCRONIZA: TStringField
      FieldName = 'PTI_SINCRONIZA'
      Size = 1
    end
  end
  object DspPrdTipo: TDataSetProvider
    DataSet = SqlPrdTipo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 145
  end
  object CdsPrdTipo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdTipo'
    BeforeEdit = CdsPrdTipoBeforeEdit
    BeforePost = CdsPrdTipoBeforePost
    Left = 639
    Top = 145
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
    object CdsPrdTipoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdTipoPTI_COMISSAO: TFMTBCDField
      FieldName = 'PTI_COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 2
    end
    object CdsPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdTipoPTI_MARGEM: TFMTBCDField
      FieldName = 'PTI_MARGEM'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 15
    end
    object CdsPrdTipoPTI_MARGEMOF: TFMTBCDField
      FieldName = 'PTI_MARGEMOF'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 15
    end
    object CdsPrdTipoSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object CdsPrdTipoPTI_SINCRONIZA: TStringField
      FieldName = 'PTI_SINCRONIZA'
      Size = 1
    end
  end
  object DsPrdtipo: TDataSource
    DataSet = CdsPrdTipo
    Left = 708
    Top = 145
  end
  object SqlPrdGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_GRUPO')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 240
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
    object SqlPrdGrupoPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdGrupoPGR_PER_ICMS: TFMTBCDField
      FieldName = 'PGR_PER_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PGR_PER_PISCONFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_PER_IPI: TFMTBCDField
      FieldName = 'PGR_PER_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_PER_FRETE: TFMTBCDField
      FieldName = 'PGR_PER_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_PER_OUTROS: TFMTBCDField
      FieldName = 'PGR_PER_OUTROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_PER_LUCRO: TFMTBCDField
      FieldName = 'PGR_PER_LUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PGR_MARGEMOFERTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdGrupoPGR_MARGEMVENDA: TFMTBCDField
      FieldName = 'PGR_MARGEMVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
  end
  object DspPrdGrupo: TDataSetProvider
    DataSet = SqlPrdGrupo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 241
  end
  object CdsPrdGrupo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdGrupo'
    BeforeEdit = CdsPrdGrupoBeforeEdit
    BeforePost = CdsPrdGrupoBeforePost
    Left = 639
    Top = 241
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
    object CdsPrdGrupoPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdGrupoPGR_PER_ICMS: TFMTBCDField
      FieldName = 'PGR_PER_ICMS'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PGR_PER_PISCONFINS'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_PER_IPI: TFMTBCDField
      FieldName = 'PGR_PER_IPI'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_PER_FRETE: TFMTBCDField
      FieldName = 'PGR_PER_FRETE'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_PER_OUTROS: TFMTBCDField
      FieldName = 'PGR_PER_OUTROS'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_PER_LUCRO: TFMTBCDField
      FieldName = 'PGR_PER_LUCRO'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsPrdGrupoPRD_PER_FATORESChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PGR_MARGEMOFERTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdGrupoPGR_MARGEMVENDA: TFMTBCDField
      FieldName = 'PGR_MARGEMVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
  end
  object DsPrdGrupo: TDataSource
    DataSet = CdsPrdGrupo
    Left = 708
    Top = 241
  end
  object SqlPrdLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_LINHA')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 192
    object SqlPrdLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
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
    Left = 564
    Top = 193
  end
  object CdsPrdLinha: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdLinha'
    BeforeEdit = CdsPrdLinhaBeforeEdit
    BeforePost = CdsPrdLinhaBeforePost
    Left = 639
    Top = 185
    object CdsPrdLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
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
    Left = 708
    Top = 193
  end
  object SqlPrdClassIPI: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from IPI0000')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 290
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
    object SqlPrdClassIPINCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object SqlPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      Precision = 20
      Size = 5
    end
    object SqlPrdClassIPIIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
    object SqlPrdClassIPIIPI_REDVLLIQ: TStringField
      FieldName = 'IPI_REDVLLIQ'
      Size = 1
    end
    object SqlPrdClassIPINCM_DESC_FAMILIA: TMemoField
      FieldName = 'NCM_DESC_FAMILIA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DspPrdClassIPI: TDataSetProvider
    DataSet = SqlPrdClassIPI
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 290
  end
  object CdsPrdClassIPI: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdClassIPI'
    BeforeEdit = CdsPrdClassIPIBeforeEdit
    Left = 639
    Top = 290
    object CdsPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CdsPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
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
    object CdsPrdClassIPINCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object CdsPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object CdsPrdClassIPIIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
    object CdsPrdClassIPIIPI_REDVLLIQ: TStringField
      FieldName = 'IPI_REDVLLIQ'
      Size = 1
    end
    object CdsPrdClassIPINCM_DESC_FAMILIA: TMemoField
      FieldName = 'NCM_DESC_FAMILIA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DsPrdClassIPI: TDataSource
    DataSet = CdsPrdClassIPI
    OnDataChange = DsPrdClassIPIDataChange
    Left = 716
    Top = 290
  end
  object SqlParcelas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PCL0000')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 377
    object SqlParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
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
    object SqlParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCDField
      FieldName = 'PCL_PERCENTUAL_PRIMEIRA_P'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object strngfldSqlParcelasPCL_TIPO: TStringField
      FieldName = 'PCL_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParcelasPCL_MODALIDADE: TStringField
      FieldName = 'PCL_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParcelasPERC_COMISSAO: TFMTBCDField
      FieldName = 'PERC_COMISSAO'
      Precision = 18
      Size = 5
    end
    object SqlParcelasPERC_VERBA: TFMTBCDField
      FieldName = 'PERC_VERBA'
      Precision = 18
      Size = 5
    end
    object SqlParcelasPCL_TX_MARGEM: TFMTBCDField
      FieldName = 'PCL_TX_MARGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object SqlParcelaspcl_baixa_automa: TStringField
      FieldName = 'pcl_baixa_automa'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlParcelasPCL_VALOR_MINIMO_VENDA: TFMTBCDField
      FieldName = 'PCL_VALOR_MINIMO_VENDA'
      Precision = 18
      Size = 5
    end
  end
  object DspParcelas: TDataSetProvider
    DataSet = SqlParcelas
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 377
  end
  object CdsParcelas: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspParcelas'
    BeforeEdit = CdsParcelasBeforeEdit
    BeforePost = CdsParcelasBeforePost
    AfterScroll = CdsParcelasAfterScroll
    Left = 639
    Top = 377
    object CdsParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
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
    object CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCDField
      FieldName = 'PCL_PERCENTUAL_PRIMEIRA_P'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsParcelasPCL_TIPO: TStringField
      FieldName = 'PCL_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParcelasPCL_MODALIDADE: TStringField
      FieldName = 'PCL_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParcelasPERC_COMISSAO: TFMTBCDField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object CdsParcelasPERC_VERBA: TFMTBCDField
      FieldName = 'PERC_VERBA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object CdsParcelasPCL_TX_MARGEM: TFMTBCDField
      FieldName = 'PCL_TX_MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 4
    end
    object CdsParcelaspcl_baixa_automa: TStringField
      FieldName = 'pcl_baixa_automa'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsParcelasPCL_VALOR_MINIMO_VENDA: TFMTBCDField
      FieldName = 'PCL_VALOR_MINIMO_VENDA'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 18
      Size = 5
    end
  end
  object DsParcelas: TDataSource
    DataSet = CdsParcelas
    Left = 716
    Top = 377
  end
  object DspOperFisc: TDataSetProvider
    DataSet = SqlOperFisc
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 333
  end
  object CdsOperFisc: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspOperFisc'
    BeforeEdit = CdsOperFiscBeforeEdit
    BeforePost = CdsOperFiscBeforePost
    OnNewRecord = CdsOperFiscNewRecord
    Left = 639
    Top = 333
    object CdsOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsOperFiscOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object CdsOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsOperFiscOPE_AVISOLEGAL2: TStringField
      FieldName = 'OPE_AVISOLEGAL2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsOperFiscOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOperFiscOPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOperFiscOPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOperFiscOPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsOperFiscOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsOperFiscOPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsOperFiscOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_FRETEBASEIPI: TStringField
      FieldName = 'OPE_FRETEBASEIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_DESPIMPORIPI: TStringField
      FieldName = 'OPE_DESPIMPORIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_AUMEN_ICMS: TFMTBCDField
      FieldName = 'OPE_AUMEN_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object CdsOperFiscOPE_ICMS_TOTALNOTA: TStringField
      FieldName = 'OPE_ICMS_TOTALNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField
      FieldName = 'OPE_SEMVLCOM_MOSTRAF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_TRIBPISCOFINS: TStringField
      FieldName = 'OPE_TRIBPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_TEMCREDITO: TStringField
      FieldName = 'OPE_TEMCREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_ATIVA: TStringField
      FieldName = 'OPE_ATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_IPI_TOTALNOTA: TStringField
      FieldName = 'OPE_IPI_TOTALNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_NATUREZA_ENTRADA: TStringField
      FieldName = 'OPE_NATUREZA_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsOperFiscOPE_TIPO_OPERACAO: TStringField
      FieldName = 'OPE_TIPO_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_ATUALIZA_CUSTO: TStringField
      FieldName = 'OPE_ATUALIZA_CUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscOPE_INDUSTRIALIZACAO: TStringField
      FieldName = 'OPE_INDUSTRIALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsOperFiscEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOperFiscEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsOperFiscOPE_ENTRADA_INDUST: TStringField
      FieldName = 'OPE_ENTRADA_INDUST'
      Size = 1
    end
    object CdsOperFiscOPE_RETORNO_INDUST: TStringField
      FieldName = 'OPE_RETORNO_INDUST'
      Size = 1
    end
    object CdsOperFiscOPE_CST_IPI: TStringField
      FieldName = 'OPE_CST_IPI'
      Size = 2
    end
    object CdsOperFiscOPE_CST_PISCOFINS: TStringField
      FieldName = 'OPE_CST_PISCOFINS'
      Size = 2
    end
    object CdsOperFiscOPE_TEMRETENCAO: TStringField
      FieldName = 'OPE_TEMRETENCAO'
      Size = 1
    end
    object CdsOperFiscOPE_OCULTA: TStringField
      FieldName = 'OPE_OCULTA'
      Size = 1
    end
    object CdsOperFiscOPE_TRIBUTAR_INSS: TStringField
      FieldName = 'OPE_TRIBUTAR_INSS'
      Size = 1
    end
    object CdsOperFiscOPE_TRIBUTAR_CSLL: TStringField
      FieldName = 'OPE_TRIBUTAR_CSLL'
      Size = 1
    end
    object CdsOperFiscOPE_TRIBUTAR_IR: TStringField
      FieldName = 'OPE_TRIBUTAR_IR'
      Size = 1
    end
    object CdsOperFiscOPE_TRIBUTAR_PIS: TStringField
      FieldName = 'OPE_TRIBUTAR_PIS'
      Size = 1
    end
    object CdsOperFiscOPE_TRIBUTAR_COFINS: TStringField
      FieldName = 'OPE_TRIBUTAR_COFINS'
      Size = 1
    end
    object CdsOperFiscOPE_ICMSDESON: TFMTBCDField
      FieldName = 'OPE_ICMSDESON'
      Precision = 18
      Size = 5
    end
    object CdsOperFiscOPE_MOTIVDESON: TIntegerField
      FieldName = 'OPE_MOTIVDESON'
      OnGetText = CdsOperFiscOPE_MOTIVDESONGetText
      OnSetText = CdsOperFiscOPE_MOTIVDESONSetText
    end
    object CdsOperFiscOPE_CENQ_IPI: TStringField
      FieldName = 'OPE_CENQ_IPI'
      Size = 3
    end
    object CdsOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField
      FieldName = 'OPE_ICMS_DESONERADO_DIMINUI'
      FixedChar = True
      Size = 1
    end
    object CdsOperFiscOPE_FORMULA_BASE_ICMS: TIntegerField
      FieldName = 'OPE_FORMULA_BASE_ICMS'
    end
    object CdsOperFiscOPE_REF_NFE_IND: TStringField
      FieldName = 'OPE_REF_NFE_IND'
      FixedChar = True
      Size = 1
    end
    object CdsOperFiscOPE_VENDA_SAIDA_ARMAZEM: TStringField
      FieldName = 'OPE_VENDA_SAIDA_ARMAZEM'
      FixedChar = True
      Size = 1
    end
    object CdsOperFiscOPE_RETORNO_INDUST_SOBRA: TStringField
      FieldName = 'OPE_RETORNO_INDUST_SOBRA'
      Size = 1
    end
    object CdsOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField
      FieldName = 'OPE_DESP_ACES_PIS_COFINS'
      Size = 1
    end
    object CdsOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField
      FieldName = 'OPE_ARTIGO_DIFERIMENTO'
      Size = 255
    end
    object CdsOperFiscOPE_ARTIGO_REDUCAO: TStringField
      FieldName = 'OPE_ARTIGO_REDUCAO'
      Size = 255
    end
  end
  object DsOperFisc: TDataSource
    DataSet = CdsOperFisc
    Left = 712
    Top = 333
  end
  object SqlOperFisc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from OPE0000')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 333
    object SqlOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlOperFiscOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object SqlOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SqlOperFiscOPE_AVISOLEGAL2: TStringField
      DisplayWidth = 1000
      FieldName = 'OPE_AVISOLEGAL2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object SqlOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlOperFiscOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOperFiscOPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOperFiscOPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOperFiscOPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlOperFiscOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlOperFiscOPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlOperFiscOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_FRETEBASEIPI: TStringField
      FieldName = 'OPE_FRETEBASEIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_DESPIMPORIPI: TStringField
      FieldName = 'OPE_DESPIMPORIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_AUMEN_ICMS: TFMTBCDField
      FieldName = 'OPE_AUMEN_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlOperFiscOPE_ICMS_TOTALNOTA: TStringField
      FieldName = 'OPE_ICMS_TOTALNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField
      FieldName = 'OPE_SEMVLCOM_MOSTRAF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_TRIBPISCOFINS: TStringField
      FieldName = 'OPE_TRIBPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_TEMCREDITO: TStringField
      FieldName = 'OPE_TEMCREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_ATIVA: TStringField
      FieldName = 'OPE_ATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_IPI_TOTALNOTA: TStringField
      FieldName = 'OPE_IPI_TOTALNOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_NATUREZA_ENTRADA: TStringField
      FieldName = 'OPE_NATUREZA_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlOperFiscOPE_TIPO_OPERACAO: TStringField
      FieldName = 'OPE_TIPO_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_ATUALIZA_CUSTO: TStringField
      FieldName = 'OPE_ATUALIZA_CUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscOPE_INDUSTRIALIZACAO: TStringField
      FieldName = 'OPE_INDUSTRIALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlOperFiscEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOperFiscEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object SqlOperFiscOPE_RETORNO_INDUST: TStringField
      FieldName = 'OPE_RETORNO_INDUST'
      Size = 1
    end
    object SqlOperFiscOPE_ENTRADA_INDUST: TStringField
      FieldName = 'OPE_ENTRADA_INDUST'
      Size = 1
    end
    object SqlOperFiscOPE_CST_IPI: TStringField
      FieldName = 'OPE_CST_IPI'
      Size = 2
    end
    object SqlOperFiscOPE_CST_PISCOFINS: TStringField
      FieldName = 'OPE_CST_PISCOFINS'
      LookupCache = True
      Size = 2
    end
    object SqlOperFiscOPE_TEMRETENCAO: TStringField
      FieldName = 'OPE_TEMRETENCAO'
      Size = 1
    end
    object SqlOperFiscOPE_OCULTA: TStringField
      FieldName = 'OPE_OCULTA'
      Size = 1
    end
    object SqlOperFiscOPE_TRIBUTAR_INSS: TStringField
      FieldName = 'OPE_TRIBUTAR_INSS'
      Size = 1
    end
    object SqlOperFiscOPE_TRIBUTAR_CSLL: TStringField
      FieldName = 'OPE_TRIBUTAR_CSLL'
      Size = 1
    end
    object SqlOperFiscOPE_TRIBUTAR_IR: TStringField
      FieldName = 'OPE_TRIBUTAR_IR'
      Size = 1
    end
    object SqlOperFiscOPE_TRIBUTAR_PIS: TStringField
      FieldName = 'OPE_TRIBUTAR_PIS'
      Size = 1
    end
    object SqlOperFiscOPE_TRIBUTAR_COFINS: TStringField
      FieldName = 'OPE_TRIBUTAR_COFINS'
      Size = 1
    end
    object SqlOperFiscOPE_ICMSDESON: TFMTBCDField
      FieldName = 'OPE_ICMSDESON'
      Precision = 18
      Size = 5
    end
    object SqlOperFiscOPE_MOTIVDESON: TIntegerField
      FieldName = 'OPE_MOTIVDESON'
    end
    object SqlOperFiscOPE_CENQ_IPI: TStringField
      FieldName = 'OPE_CENQ_IPI'
      Size = 3
    end
    object SqlOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField
      FieldName = 'OPE_ICMS_DESONERADO_DIMINUI'
      FixedChar = True
      Size = 1
    end
    object SqlOperFiscOPE_FORMULA_BASE_ICMS: TIntegerField
      FieldName = 'OPE_FORMULA_BASE_ICMS'
    end
    object SqlOperFiscOPE_REF_NFE_IND: TStringField
      FieldName = 'OPE_REF_NFE_IND'
      FixedChar = True
      Size = 1
    end
    object SqlOperFiscOPE_VENDA_SAIDA_ARMAZEM: TStringField
      FieldName = 'OPE_VENDA_SAIDA_ARMAZEM'
      FixedChar = True
      Size = 1
    end
    object SqlOperFiscOPE_RETORNO_INDUST_SOBRA: TStringField
      FieldName = 'OPE_RETORNO_INDUST_SOBRA'
      Size = 1
    end
    object SqlOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField
      FieldName = 'OPE_DESP_ACES_PIS_COFINS'
      Size = 1
    end
    object SqlOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField
      FieldName = 'OPE_ARTIGO_DIFERIMENTO'
      Size = 255
    end
    object SqlOperFiscOPE_ARTIGO_REDUCAO: TStringField
      FieldName = 'OPE_ARTIGO_REDUCAO'
      Size = 255
    end
  end
  object SqlEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EMP0000  ORDER BY EMP_CODIGO')
    SQLConnection = SQLConnection1
    Left = 489
    object SqlEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlEmpresaEMP_ENDERE: TStringField
      FieldName = 'EMP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlEmpresaEMP_CXPOSTAL: TStringField
      FieldName = 'EMP_CXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_UF: TStringField
      FieldName = 'EMP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlEmpresaEMP_ENDENTR: TStringField
      FieldName = 'EMP_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlEmpresaEMP_CIDENTR: TStringField
      FieldName = 'EMP_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_UFENTR: TStringField
      FieldName = 'EMP_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_CEPENTR: TStringField
      FieldName = 'EMP_CEPENTR'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlEmpresaEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlEmpresaEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlEmpresaEMP_EMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_EMAILCOMPRAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILCOMPRAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_NOMECOMPRADOR: TStringField
      FieldName = 'EMP_NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_EMAILVENDAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_CGC: TStringField
      FieldName = 'EMP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlEmpresaEMP_INSC: TStringField
      FieldName = 'EMP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlEmpresaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlEmpresaEMP_HOME: TStringField
      FieldName = 'EMP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlEmpresaCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_AMBIENTE_NFE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_MODELO_NFE: TIntegerField
      FieldName = 'EMP_MODELO_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_SERIE_NFE: TIntegerField
      FieldName = 'EMP_SERIE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_HOST: TStringField
      FieldName = 'EMP_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlEmpresaEMP_USERNAME: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_USERNAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_PASSWORD: TStringField
      FieldName = 'EMP_PASSWORD'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_REQUER_AUTENTICACAO: TStringField
      FieldName = 'EMP_REQUER_AUTENTICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_MENSAGEM_NFE: TStringField
      FieldName = 'EMP_MENSAGEM_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object SqlEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField
      FieldName = 'EMP_SISTEMA_CONTINGENCIA_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_CAMINHO_LOGO: TStringField
      FieldName = 'EMP_CAMINHO_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlEmpresaEMP_OPTANTE_SIMPLES: TStringField
      FieldName = 'EMP_OPTANTE_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_PERCENT_SIMPLES: TFMTBCDField
      FieldName = 'EMP_PERCENT_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlEmpresaEMP_CODIGO_CONTABILIDADE: TStringField
      FieldName = 'EMP_CODIGO_CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_EMAIL_CONTADOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_EMAIL_INTERNO: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_GENERATION_NFE: TStringField
      FieldName = 'EMP_GENERATION_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_SEQUENCIA_NFE: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_TIPO_DANFE: TStringField
      FieldName = 'EMP_TIPO_DANFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlEmpresaEMP_CHAVE: TStringField
      FieldName = 'EMP_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object SqlEmpresaEMP_DATA_ACESSO: TStringField
      FieldName = 'EMP_DATA_ACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlEmpresaEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_PERIODOIPI: TStringField
      FieldName = 'EMP_PERIODOIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_INSC_MUNICIPAL: TStringField
      FieldName = 'EMP_INSC_MUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlEmpresaEMP_REGIME_SERVICO: TStringField
      FieldName = 'EMP_REGIME_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_MODALIDADE: TStringField
      FieldName = 'EMP_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlEmpresaEMP_PIS_ALIQ: TFMTBCDField
      FieldName = 'EMP_PIS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object SqlEmpresaEMP_COFINS_ALIQ: TFMTBCDField
      FieldName = 'EMP_COFINS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object SqlEmpresaEMP_IRPJ_ALIQ: TFMTBCDField
      FieldName = 'EMP_IRPJ_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object SqlEmpresaEMP_REQUER_CONEXAO_SSL: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_PORTA: TIntegerField
      FieldName = 'EMP_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_VERSAO_SSL: TIntegerField
      FieldName = 'EMP_VERSAO_SSL'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_MODO_SSL: TStringField
      FieldName = 'EMP_MODO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE_SCAN'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_CONT_PESSOA: TStringField
      FieldName = 'EMP_CONT_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlEmpresaEMP_CONT_NOME: TStringField
      FieldName = 'EMP_CONT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_CONT_CRC: TStringField
      FieldName = 'EMP_CONT_CRC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_CONT_ENDERECO: TStringField
      FieldName = 'EMP_CONT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlEmpresaEMP_CONT_NUMERO: TStringField
      FieldName = 'EMP_CONT_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlEmpresaEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlEmpresaEMP_CONT_COMPLEMENTO: TStringField
      FieldName = 'EMP_CONT_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlEmpresaEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlEmpresaEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlEmpresaEMP_CONT_CID: TIntegerField
      FieldName = 'EMP_CONT_CID'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'EMP_INDICADOR_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_CONT_CIDADE: TStringField
      FieldName = 'EMP_CONT_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlEmpresaEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaEMP_COD_INC_TRIBUTARIA: TStringField
      FieldName = 'EMP_COD_INC_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_COD_IND_APROP_CREDITO: TStringField
      FieldName = 'EMP_COD_IND_APROP_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_COD_IND_TIPO_APURADA: TStringField
      FieldName = 'EMP_COD_IND_TIPO_APURADA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_COD_IND_REGIME: TStringField
      FieldName = 'EMP_COD_IND_REGIME'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_COD_IND_ESCRITURACAO: TStringField
      FieldName = 'EMP_COD_IND_ESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlEmpresaEMP_CONT_CNPJ: TStringField
      FieldName = 'EMP_CONT_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlEmpresaEMP_CONT_CPF: TStringField
      FieldName = 'EMP_CONT_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlEmpresaEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object SqlEmpresaOPE_CODIGO_DENTRO: TStringField
      FieldName = 'OPE_CODIGO_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlEmpresaOPE_CODIGO_FORA: TStringField
      FieldName = 'OPE_CODIGO_FORA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DspEmpresa: TDataSetProvider
    DataSet = SqlEmpresa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspEmpresa'
    Left = 639
    object CdsEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsEmpresaEMP_ENDERE: TStringField
      FieldName = 'EMP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsEmpresaEMP_CXPOSTAL: TStringField
      FieldName = 'EMP_CXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_UF: TStringField
      FieldName = 'EMP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsEmpresaEMP_ENDENTR: TStringField
      FieldName = 'EMP_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsEmpresaEMP_CIDENTR: TStringField
      FieldName = 'EMP_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_UFENTR: TStringField
      FieldName = 'EMP_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CEPENTR: TStringField
      FieldName = 'EMP_CEPENTR'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsEmpresaEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_EMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_EMAILCOMPRAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILCOMPRAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_NOMECOMPRADOR: TStringField
      FieldName = 'EMP_NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_EMAILVENDAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CGC: TStringField
      FieldName = 'EMP_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99\.999\.999\/9999\-99;0;_'
      Size = 14
    end
    object CdsEmpresaEMP_INSC: TStringField
      FieldName = 'EMP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsEmpresaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsEmpresaEMP_HOME: TStringField
      FieldName = 'EMP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsEmpresaCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_AMBIENTE_NFE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_MODELO_NFE: TIntegerField
      FieldName = 'EMP_MODELO_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_SERIE_NFE: TIntegerField
      FieldName = 'EMP_SERIE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_HOST: TStringField
      FieldName = 'EMP_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_USERNAME: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_USERNAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_PASSWORD: TStringField
      FieldName = 'EMP_PASSWORD'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField
      FieldName = 'EMP_REQUER_AUTENTICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_MENSAGEM_NFE: TStringField
      FieldName = 'EMP_MENSAGEM_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object CdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField
      FieldName = 'EMP_SISTEMA_CONTINGENCIA_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_CAMINHO_LOGO: TStringField
      FieldName = 'EMP_CAMINHO_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_OPTANTE_SIMPLES: TStringField
      FieldName = 'EMP_OPTANTE_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCDField
      FieldName = 'EMP_PERCENT_SIMPLES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
    end
    object CdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField
      FieldName = 'EMP_CODIGO_CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_EMAIL_CONTADOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_EMAIL_INTERNO: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_GENERATION_NFE: TStringField
      FieldName = 'EMP_GENERATION_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_SEQUENCIA_NFE: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_TIPO_DANFE: TStringField
      FieldName = 'EMP_TIPO_DANFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_CHAVE: TStringField
      FieldName = 'EMP_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object CdsEmpresaEMP_DATA_ACESSO: TStringField
      FieldName = 'EMP_DATA_ACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpresaEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_PERIODOIPI: TStringField
      FieldName = 'EMP_PERIODOIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_INSC_MUNICIPAL: TStringField
      FieldName = 'EMP_INSC_MUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_REGIME_SERVICO: TStringField
      FieldName = 'EMP_REGIME_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_MODALIDADE: TStringField
      FieldName = 'EMP_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_PIS_ALIQ: TFMTBCDField
      FieldName = 'EMP_PIS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_COFINS_ALIQ: TFMTBCDField
      FieldName = 'EMP_COFINS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_IRPJ_ALIQ: TFMTBCDField
      FieldName = 'EMP_IRPJ_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_REQUER_CONEXAO_SSL: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_PORTA: TIntegerField
      FieldName = 'EMP_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_VERSAO_SSL: TIntegerField
      FieldName = 'EMP_VERSAO_SSL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_MODO_SSL: TStringField
      FieldName = 'EMP_MODO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE_SCAN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_PESSOA: TStringField
      FieldName = 'EMP_CONT_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_CONT_NOME: TStringField
      FieldName = 'EMP_CONT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_CRC: TStringField
      FieldName = 'EMP_CONT_CRC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_ENDERECO: TStringField
      FieldName = 'EMP_CONT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_CONT_NUMERO: TStringField
      FieldName = 'EMP_CONT_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsEmpresaEMP_CONT_COMPLEMENTO: TStringField
      FieldName = 'EMP_CONT_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_CID: TIntegerField
      FieldName = 'EMP_CONT_CID'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'EMP_INDICADOR_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_CIDADE: TStringField
      FieldName = 'EMP_CONT_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_COD_INC_TRIBUTARIA: TStringField
      FieldName = 'EMP_COD_INC_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_APROP_CREDITO: TStringField
      FieldName = 'EMP_COD_IND_APROP_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_TIPO_APURADA: TStringField
      FieldName = 'EMP_COD_IND_TIPO_APURADA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_REGIME: TStringField
      FieldName = 'EMP_COD_IND_REGIME'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_ESCRITURACAO: TStringField
      FieldName = 'EMP_COD_IND_ESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CONT_CNPJ: TStringField
      FieldName = 'EMP_CONT_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_CONT_CPF: TStringField
      FieldName = 'EMP_CONT_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaOPE_CODIGO_DENTRO: TStringField
      FieldName = 'OPE_CODIGO_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEmpresaOPE_CODIGO_FORA: TStringField
      FieldName = 'OPE_CODIGO_FORA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object DsEmpresa: TDataSource
    DataSet = CdsEmpresa
    Left = 707
  end
  object SqlPrdManut: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select E1.* , A1.AMX_DESCRI from PRD_ENSA E1 LEFT JOIN ALMOX0000' +
        ' A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO)')
    SQLConnection = SQLConnection1
    Left = 484
    Top = 474
    object SqlPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlPrdManutPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdManutPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdManutPES_HORA: TTimeField
      FieldName = 'PES_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlPrdManutPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdManutPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object SqlPrdManutPES_CUSTO_AGREGADO: TFMTBCDField
      FieldName = 'PES_CUSTO_AGREGADO'
      Precision = 15
    end
    object SqlPrdManutPES_COMCREDITO: TFMTBCDField
      FieldName = 'PES_COMCREDITO'
      Precision = 15
    end
    object SqlPrdManutPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 80
    end
    object SqlPrdManutUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlPrdManutUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object SqlPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlPrdManutCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlPrdManutAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlPrdManutREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
  end
  object CdsPrdManut: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdManut'
    AfterInsert = CdsPrdManutAfterInsert
    Left = 644
    Top = 473
    object CdsPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsPrdManutPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdManutPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdManutPES_HORA: TTimeField
      FieldName = 'PES_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPrdManutPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdManutPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsPrdManutPES_CUSTO_AGREGADO: TFMTBCDField
      FieldName = 'PES_CUSTO_AGREGADO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsPrdManutPES_COMCREDITO: TFMTBCDField
      FieldName = 'PES_COMCREDITO'
      Precision = 15
    end
    object CdsPrdManutPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 80
    end
    object CdsPrdManutUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      DisplayFormat = '000'
    end
    object CdsPrdManutUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object CdsPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object CdsPrdManutCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsPrdManutAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object CdsPrdManutREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
    object CdsPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DspPrdManut: TDataSetProvider
    DataSet = SqlPrdManut
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 470
  end
  object SqlSharedb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from SHAREDB')
    SQLConnection = SQLConnection1
    Left = 32
    Top = 47
    object SqlSharedbREGISTROS: TSmallintField
      FieldName = 'REGISTROS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlSharedbCLIENTES: TStringField
      FieldName = 'CLIENTES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPRODUTO_PRECO_EMPRESA: TStringField
      FieldName = 'PRODUTO_PRECO_EMPRESA'
      Size = 1
    end
    object SqlSharedbBANCOS: TStringField
      FieldName = 'BANCOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbRECEBER: TStringField
      FieldName = 'RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPAGAR: TStringField
      FieldName = 'PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbCOTACOES: TStringField
      FieldName = 'COTACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPARAMETROS: TStringField
      FieldName = 'PARAMETROS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbTABELAS: TStringField
      FieldName = 'TABELAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPRAZOS: TStringField
      FieldName = 'PRAZOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbOPERACAOFISCAL: TStringField
      FieldName = 'OPERACAOFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbPLANODECONTAS: TStringField
      FieldName = 'PLANODECONTAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlSharedbFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object SqlSharedbENDERECO_ESTOQUE: TStringField
      FieldName = 'ENDERECO_ESTOQUE'
      Size = 1
    end
  end
  object DspSharedb: TDataSetProvider
    DataSet = SqlSharedb
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 47
  end
  object CdsSharedb: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSharedb'
    BeforeEdit = CdsSharedbBeforeEdit
    BeforePost = CdsSharedbBeforePost
    Left = 224
    Top = 47
    object CdsSharedbREGISTROS: TSmallintField
      FieldName = 'REGISTROS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsSharedbCLIENTES: TStringField
      FieldName = 'CLIENTES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPRODUTO_PRECO_EMPRESA: TStringField
      FieldName = 'PRODUTO_PRECO_EMPRESA'
      Size = 1
    end
    object CdsSharedbBANCOS: TStringField
      FieldName = 'BANCOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbRECEBER: TStringField
      FieldName = 'RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPAGAR: TStringField
      FieldName = 'PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbCOTACOES: TStringField
      FieldName = 'COTACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPARAMETROS: TStringField
      FieldName = 'PARAMETROS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbTABELAS: TStringField
      FieldName = 'TABELAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPRAZOS: TStringField
      FieldName = 'PRAZOS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbOPERACAOFISCAL: TStringField
      FieldName = 'OPERACAOFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbPLANODECONTAS: TStringField
      FieldName = 'PLANODECONTAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsSharedbFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object CdsSharedbENDERECO_ESTOQUE: TStringField
      FieldName = 'ENDERECO_ESTOQUE'
      Size = 1
    end
  end
  object DsSharedb: TDataSource
    DataSet = CdsSharedb
    Left = 312
    Top = 47
  end
  object DsPrdManut: TDataSource
    DataSet = CdsPrdManut
    Left = 724
    Top = 472
  end
  object SQLStdTransacao: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VALOR_GENERATOR'
        ParamType = ptOutput
        Value = 0
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'RETORNA_TRANSACAO'
    Left = 400
    Top = 45
  end
  object SQLStoredProc: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMERO_PAGAR'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'RETORNA_CODIGO_PAGAR'
    Left = 400
    Top = 93
  end
  object SProcedure: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'CAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PENDENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'VALORATUAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_RETORNO'
        ParamType = ptOutput
        Size = 4
        Value = 1
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'PRC_SEQUENCIADORA'
    Left = 400
    Top = 149
  end
  object SqlVersao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from VERSAOSISTEMA')
    SQLConnection = SQLConnection1
    Left = 484
    Top = 522
    object SqlVersaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlVersaoVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlVersaoDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlVersaoPROGRAMA: TStringField
      FieldName = 'PROGRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlVersaoNOMEARQUIVO: TStringField
      FieldName = 'NOMEARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlVersaoARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlVersaoATUALIZADOR: TBlobField
      FieldName = 'ATUALIZADOR'
      Size = 1
    end
  end
  object CdsVersao: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspVersao'
    Left = 644
    Top = 521
    object CdsVersaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsVersaoVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsVersaoDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsVersaoPROGRAMA: TStringField
      FieldName = 'PROGRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsVersaoNOMEARQUIVO: TStringField
      FieldName = 'NOMEARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsVersaoARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsVersaoATUALIZADOR: TBlobField
      FieldName = 'ATUALIZADOR'
      Size = 1
    end
  end
  object DspVersao: TDataSetProvider
    DataSet = SqlVersao
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 518
  end
  object DsVersao: TDataSource
    DataSet = CdsVersao
    Left = 724
    Top = 520
  end
  object SQLConversaoMedida: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CONV0000')
    SQLConnection = SQLConnection1
    Left = 28
    Top = 594
    object SQLConversaoMedidaCONV_REGISTRO: TIntegerField
      FieldName = 'CONV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLConversaoMedidaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLConversaoMedidaCONV_UND_DE: TStringField
      FieldName = 'CONV_UND_DE'
      Size = 3
    end
    object SQLConversaoMedidaCONV_UND_PARA: TStringField
      FieldName = 'CONV_UND_PARA'
      Size = 3
    end
    object SQLConversaoMedidaCONV_OPERACAO: TStringField
      FieldName = 'CONV_OPERACAO'
      Size = 1
    end
    object SQLConversaoMedidaCONV_FATOR: TFMTBCDField
      FieldName = 'CONV_FATOR'
      Precision = 15
    end
  end
  object CdsConversaoMedida: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspConversaoMedida'
    BeforeEdit = CdsConversaoMedidaBeforeEdit
    BeforePost = CdsConversaoMedidaBeforePost
    OnCalcFields = CdsConversaoMedidaCalcFields
    Left = 300
    Top = 593
    object CdsConversaoMedidaCONV_REGISTRO: TIntegerField
      FieldName = 'CONV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsConversaoMedidaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsConversaoMedidaCONV_UND_DE: TStringField
      FieldName = 'CONV_UND_DE'
      Size = 3
    end
    object CdsConversaoMedidaCONV_UND_PARA: TStringField
      FieldName = 'CONV_UND_PARA'
      Size = 3
    end
    object CdsConversaoMedidaCONV_OPERACAO: TStringField
      FieldName = 'CONV_OPERACAO'
      Size = 1
    end
    object CdsConversaoMedidaCONV_FATOR: TFMTBCDField
      FieldName = 'CONV_FATOR'
      Precision = 15
    end
    object CdsConversaoMedidawOperacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'wOperacao'
      Size = 15
      Calculated = True
    end
  end
  object DspConversaoMedida: TDataSetProvider
    DataSet = SQLConversaoMedida
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 156
    Top = 594
  end
  object dsConversaoMedida: TDataSource
    DataSet = CdsConversaoMedida
    Left = 308
    Top = 544
  end
  object DsPrdClassIPIICMS: TDataSource
    DataSet = CdsPrdClassIPIICMS
    Left = 756
    Top = 578
  end
  object CdsPrdClassIPIICMS: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdClassIPIICMS'
    AfterInsert = CdsPrdClassIPIICMSAfterInsert
    BeforePost = CdsPrdClassIPIICMSBeforePost
    AfterPost = CdsPrdClassIPIICMSAfterPost
    AfterDelete = CdsPrdClassIPIICMSAfterDelete
    Left = 639
    Top = 578
    object CdsPrdClassIPIICMSIPII_REGISTRO: TIntegerField
      FieldName = 'IPII_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPrdClassIPIICMSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPrdClassIPIICMSIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsPrdClassIPIICMSIPII_ESTADO: TStringField
      FieldName = 'IPII_ESTADO'
      Size = 2
    end
    object CdsPrdClassIPIICMSIPII_ALIQUOTA: TFMTBCDField
      FieldName = 'IPII_ALIQUOTA'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00'
      Precision = 20
      Size = 5
    end
  end
  object DspPrdClassIPIICMS: TDataSetProvider
    DataSet = SqlPrdClassIPIICMS
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 578
  end
  object SqlPrdClassIPIICMS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from IPI0000_ICMS')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 578
    object SqlPrdClassIPIICMSIPII_REGISTRO: TIntegerField
      FieldName = 'IPII_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPrdClassIPIICMSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlPrdClassIPIICMSIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlPrdClassIPIICMSIPII_ESTADO: TStringField
      FieldName = 'IPII_ESTADO'
      Size = 2
    end
    object SqlPrdClassIPIICMSIPII_ALIQUOTA: TFMTBCDField
      FieldName = 'IPII_ALIQUOTA'
      Precision = 20
      Size = 5
    end
  end
  object dsDiretiva: TDataSource
    DataSet = CdsDiretiva
    OnStateChange = dsDiretivaStateChange
    Left = 708
    Top = 634
  end
  object CdsDiretiva: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspDiretiva'
    AfterPost = CdsDiretivaAfterPost
    AfterDelete = CdsDiretivaAfterDelete
    Left = 639
    Top = 634
    object CdsDiretivaPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsDiretivaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsDiretivaPRDD_DESCRICAO: TStringField
      FieldName = 'PRDD_DESCRICAO'
      Size = 100
    end
    object CdsDiretivaPRDD_ATIVO: TStringField
      FieldName = 'PRDD_ATIVO'
      Size = 1
    end
    object CdsDiretivaPRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Size = 5
    end
  end
  object DspDiretiva: TDataSetProvider
    DataSet = SqlDiretiva
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 634
  end
  object SqlDiretiva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_DIRETIVA')
    SQLConnection = SQLConnection1
    Left = 489
    Top = 634
    object SqlDiretivaPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlDiretivaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlDiretivaPRDD_DESCRICAO: TStringField
      FieldName = 'PRDD_DESCRICAO'
      Size = 100
    end
    object SqlDiretivaPRDD_ATIVO: TStringField
      FieldName = 'PRDD_ATIVO'
      Size = 1
    end
    object SqlDiretivaPRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Size = 5
    end
  end
  object dsCnae: TDataSource
    DataSet = CdsCnae
    OnStateChange = dsCnaeStateChange
    Left = 244
    Top = 650
  end
  object CdsCnae: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspCnae'
    AfterPost = CdsCnaeAfterPost
    AfterDelete = CdsCnaeAfterDelete
    Left = 175
    Top = 650
    object CdsCnaeCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsCnaeCNAE_CODIGO: TStringField
      FieldName = 'CNAE_CODIGO'
      EditMask = '9999-9/99;1; '
      Size = 10
    end
    object CdsCnaeCNAE_DESCRICAO: TStringField
      FieldName = 'CNAE_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsCnaeCNAE_CARGA_TRIB_MEDIA: TFMTBCDField
      FieldName = 'CNAE_CARGA_TRIB_MEDIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00 %'
      EditFormat = '##0.00'
      Precision = 20
      Size = 5
    end
    object CdsCnaesrv_codigo: TStringField
      FieldName = 'srv_codigo'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsCnaecnae_ativo: TStringField
      FieldName = 'cnae_ativo'
      Size = 1
    end
  end
  object DspCnae: TDataSetProvider
    DataSet = SqlCnae
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 100
    Top = 650
  end
  object SqlCnae: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CNAE')
    SQLConnection = SQLConnection1
    Left = 25
    Top = 650
    object SqlCnaeCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCnaeCNAE_CODIGO: TStringField
      FieldName = 'CNAE_CODIGO'
      Size = 10
    end
    object SqlCnaeCNAE_DESCRICAO: TStringField
      FieldName = 'CNAE_DESCRICAO'
      Size = 200
    end
    object SqlCnaeCNAE_CARGA_TRIB_MEDIA: TFMTBCDField
      FieldName = 'CNAE_CARGA_TRIB_MEDIA'
      Precision = 20
      Size = 5
    end
    object SqlCnaesrv_codigo: TStringField
      FieldName = 'srv_codigo'
      Size = 5
    end
    object SqlCnaecnae_ativo: TStringField
      FieldName = 'cnae_ativo'
      Size = 1
    end
  end
  object SqlUpdate2: TSQLQuery
    AfterOpen = SqlUpdate2AfterOpen
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 777
    Top = 85
  end
  object SqlUpdate1RES: TSQLQuery
    AfterOpen = SqlUpdate1RESAfterOpen
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 793
    Top = 205
  end
  object sATUALIZACAO_CUSTOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'emp_codigo'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'ATUALIZACAO_CUSTOS'
    Left = 400
    Top = 213
  end
  object dspSQLupd: TDataSetProvider
    DataSet = SqlUpdate
    Left = 848
    Top = 32
  end
  object cdsSQLupd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSQLupd'
    Left = 904
    Top = 32
  end
  object SqlAlmoxarifado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ALMOX0000')
    SQLConnection = SQLConnection1
    Left = 465
    Top = 696
    object SqlAlmoxarifadoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object SqlAlmoxarifadoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlAlmoxarifadoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object SqlAlmoxarifadoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlAlmoxarifadoAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_ATIVO: TStringField
      FieldName = 'AMX_ATIVO'
      Size = 1
    end
    object SqlAlmoxarifadoAMX_CNPJ_PART: TStringField
      FieldName = 'AMX_CNPJ_PART'
      Size = 14
    end
    object SqlAlmoxarifadoEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlAlmoxarifadoEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object SqlAlmoxarifadoAMX_NUM_ATO_DECLARATORIO: TStringField
      FieldName = 'AMX_NUM_ATO_DECLARATORIO'
    end
    object SqlAlmoxarifadoAMX_VALIDADE_ATO_DECLARATORIO: TDateField
      FieldName = 'AMX_VALIDADE_ATO_DECLARATORIO'
    end
  end
  object dspAlmoxarifado: TDataSetProvider
    DataSet = SqlAlmoxarifado
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 564
    Top = 696
  end
  object cdsAlmoxarifado: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspAlmoxarifado'
    Left = 655
    Top = 696
    object cdsAlmoxarifadoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object cdsAlmoxarifadoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object cdsAlmoxarifadoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object cdsAlmoxarifadoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object cdsAlmoxarifadoAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_ATIVO: TStringField
      FieldName = 'AMX_ATIVO'
      Size = 1
    end
    object cdsAlmoxarifadoAMX_CNPJ_PART: TStringField
      FieldName = 'AMX_CNPJ_PART'
      Size = 14
    end
    object cdsAlmoxarifadoEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object cdsAlmoxarifadoEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
    object cdsAlmoxarifadoAMX_NUM_ATO_DECLARATORIO: TStringField
      FieldName = 'AMX_NUM_ATO_DECLARATORIO'
    end
    object cdsAlmoxarifadoAMX_VALIDADE_ATO_DECLARATORIO: TDateField
      FieldName = 'AMX_VALIDADE_ATO_DECLARATORIO'
    end
  end
  object dsAlmoxarifado: TDataSource
    DataSet = cdsAlmoxarifado
    Left = 747
    Top = 696
  end
  object SqlUpdate1: TFDQuery
    Connection = DBInicio.FDACConn
    Left = 936
    Top = 120
  end
end
