inherited fmEquip: TfmEquip
  Caption = 'Cadastro de Equipamento'
  ClientHeight = 284
  OnResize = FormResize
  ExplicitWidth = 861
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel [0]
    Left = 14
    Top = 57
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = edDescricao
  end
  object lbl1: TLabel [1]
    Left = 14
    Top = 17
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edID
  end
  object lblProjcx: TLabel [2]
    Left = 454
    Top = 14
    Width = 68
    Height = 13
    Caption = 'Centro Custo:'
  end
  object Label1: TLabel [3]
    Left = 115
    Top = 17
    Width = 61
    Height = 13
    Caption = 'Identificador'
  end
  object Label2: TLabel [4]
    Left = 14
    Top = 95
    Width = 68
    Height = 13
    Caption = 'Especifica'#231#227'o:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [5]
    Left = 454
    Top = 54
    Width = 32
    Height = 13
    Caption = 'Turno:'
  end
  object Label4: TLabel [6]
    Left = 216
    Top = 17
    Width = 45
    Height = 13
    Caption = 'Aquisi'#231#227'o'
  end
  object Label5: TLabel [7]
    Left = 14
    Top = 135
    Width = 122
    Height = 13
    Caption = 'Certificado de calibra'#231#227'o:'
    FocusControl = DBEdit4
  end
  object Label6: TLabel [8]
    Left = 16
    Top = 178
    Width = 93
    Height = 13
    Caption = 'Data da calibra'#231#227'o:'
  end
  object Label7: TLabel [9]
    Left = 16
    Top = 203
    Width = 110
    Height = 13
    Caption = 'Validade da calibra'#231#227'o:'
  end
  object Label8: TLabel [10]
    Left = 456
    Top = 95
    Width = 30
    Height = 13
    Caption = 'Setor:'
  end
  object Label9: TLabel [11]
    Left = 456
    Top = 136
    Width = 55
    Height = 13
    Caption = 'Custo/Hora'
  end
  object JvDBDateEdit1: TJvDBDateEdit [12]
    Left = 216
    Top = 33
    Width = 121
    Height = 21
    DataField = 'EQP_DATAAQUISICAO'
    DataSource = dsEditS
    ShowNullDate = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [13]
    Left = 454
    Top = 71
    Width = 42
    Height = 21
    DataField = 'TPR_CODIGO'
    DataSource = dsEditS
    TabOrder = 10
  end
  object DBePcx_Codigo: TDBEdit [14]
    Left = 454
    Top = 31
    Width = 42
    Height = 21
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    TabOrder = 8
  end
  object DBEdit2: TDBEdit [15]
    Left = 14
    Top = 109
    Width = 430
    Height = 21
    DataField = 'EQP_ESPECIFICACAO'
    DataSource = dsEditS
    TabOrder = 4
  end
  object edID: TDBEdit [16]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'EQP_CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 0
  end
  object JvDBDateEdit2: TJvDBDateEdit [17]
    Left = 140
    Top = 176
    Width = 121
    Height = 21
    DataField = 'EQP_DATACALIBRACAO'
    DataSource = dsEditS
    ShowNullDate = False
    TabOrder = 6
  end
  object JvDBDateEdit3: TJvDBDateEdit [18]
    Left = 140
    Top = 203
    Width = 121
    Height = 21
    DataField = 'EQP_DATAVALIDACAO'
    DataSource = dsEditS
    ShowNullDate = False
    TabOrder = 7
  end
  object SgDbSearchCombo1: TSgDbSearchCombo [19]
    Left = 502
    Top = 71
    Width = 271
    Height = 21
    TabOrder = 11
    CharCase = ecUpperCase
    LookupSelect = 'TPR_CODIGO, TRP_NOME, TRP_INICIO, TRP_FIM'
    LookupOrderBy = 'TRP_NOME'
    LookupTable = 'TURNO'
    GridAutoSize = False
    LookupSource = qAux2
    DataField = 'TPR_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'TPR_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    LookupWhere = 'TRP_ATIVO = '#39'S'#39
    AutoF8WinTitulo = 'Turno'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, In'#237'cio, Fim'
    DataFieldFormat = '000'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object DBEdit5: TDBEdit [20]
    Left = 456
    Top = 109
    Width = 42
    Height = 21
    DataField = 'SET_CODIGO'
    DataSource = dsEditS
    TabOrder = 13
  end
  object edDescricao: TDBEdit [21]
    Left = 16
    Top = 73
    Width = 430
    Height = 21
    DataField = 'EQP_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [22]
    Left = 115
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'EQP_REFER'
    DataSource = dsEditS
    TabOrder = 1
  end
  object SgDbSearchCombo2: TSgDbSearchCombo [23]
    Left = 504
    Top = 109
    Width = 271
    Height = 21
    TabOrder = 14
    CharCase = ecUpperCase
    LookupSelect = 'SET_CODIGO, SET_DESCRICAO'
    LookupOrderBy = 'SET_DESCRICAO'
    LookupTable = 'SETOR'
    GridAutoSize = False
    LookupSource = qAux2
    DataField = 'SET_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'SET_CODIGO'
    ShowButton = True
    LookupTableShare = 'PRODUCAO'
    AutoF8WinTitulo = 'Setor'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, In'#237'cio, Fim'
    DataFieldFormat = '000'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object cxDBMaskEdit1: TcxDBMaskEdit [24]
    Left = 456
    Top = 149
    DataBinding.DataField = 'EQP_CUSTOHORA'
    DataBinding.DataSource = dsEditS
    TabOrder = 15
    Width = 121
  end
  object CbxProjCx: TSgDbSearchCombo [25]
    Left = 500
    Top = 31
    Width = 271
    Height = 21
    TabOrder = 9
    CharCase = ecUpperCase
    LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
    LookupOrderBy = 'PCX_DESCRI'
    LookupTable = 'PCX0000'
    GridAutoSize = False
    LookupSource = qAux3
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'PCX_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Centros de Custo'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    DataFieldFormat = '000'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object DBEdit4: TDBEdit [26]
    Left = 14
    Top = 149
    Width = 430
    Height = 21
    DataField = 'EQP_CERTIFICADO'
    DataSource = dsEditS
    TabOrder = 5
  end
  inherited pnUtil: TPanel
    Top = 252
    TabOrder = 12
    ExplicitTop = 252
  end
  inherited coCalcula: TACBrCalculadora
    Left = 400
    Top = 0
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 328
    Top = 40
  end
  inherited DBConn: TSQLConnection
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
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=database.fdb'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
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
      'Trim Char=True')
    Left = 792
  end
  inherited qAux: TSQLQuery
    Left = 746
    Top = 21
  end
  inherited qAux2: TSQLQuery
    Left = 346
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM EQUIPAMENTO WHERE EQP_CODIGO=:ID')
    Left = 460
    Top = 207
    object qEditCODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditDESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditTPR_CODIGO: TIntegerField
      FieldName = 'TPR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditEQP_ESPECIFICACAO: TStringField
      FieldName = 'EQP_ESPECIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qEditEQP_DATAAQUISICAO: TDateField
      FieldName = 'EQP_DATAAQUISICAO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditEQP_REFER: TStringField
      FieldName = 'EQP_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qEditEQP_CERTIFICADO: TStringField
      FieldName = 'EQP_CERTIFICADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEditEQP_DATACALIBRACAO: TDateField
      FieldName = 'EQP_DATACALIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditEQP_DATAVALIDACAO: TDateField
      FieldName = 'EQP_DATAVALIDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditEQP_CUSTOHORA: TFMTBCDField
      FieldName = 'EQP_CUSTOHORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 720
    Top = 65535
  end
  inherited CdsEdit: TClientDataSet
    Left = 591
    Top = 65527
    object CdsEditCODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Required = True
    end
    object CdsEditDESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditEQP_REFER: TStringField
      FieldName = 'EQP_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEditEQP_ESPECIFICACAO: TStringField
      FieldName = 'EQP_ESPECIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object CdsEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditTPR_CODIGO: TIntegerField
      FieldName = 'TPR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditEQP_DATAAQUISICAO: TDateField
      FieldName = 'EQP_DATAAQUISICAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEQP_DATAVALIDACAO: TDateField
      FieldName = 'EQP_DATAVALIDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEQP_DATACALIBRACAO: TDateField
      FieldName = 'EQP_DATACALIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEQP_CERTIFICADO: TStringField
      FieldName = 'EQP_CERTIFICADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
    object CdsEditEQP_CUSTOHORA: TFMTBCDField
      FieldName = 'EQP_CUSTOHORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  inherited dsEditS: TDataSource
    Left = 661
    Top = 65527
  end
end
