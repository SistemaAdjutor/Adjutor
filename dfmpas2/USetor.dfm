inherited fmSetor: TfmSetor
  Caption = 'Cadastro de Setor'
  ClientHeight = 245
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 14
    Top = 20
    Width = 97
    Height = 13
    Caption = 'C'#243'digo Identificador'
    FocusControl = edID
  end
  object lbl2: TLabel [1]
    Left = 14
    Top = 57
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = edDescricao
  end
  object Label1: TLabel [2]
    Left = 14
    Top = 94
    Width = 77
    Height = 13
    Caption = 'Centro de custo'
  end
  inherited pnUtil: TPanel
    Top = 213
    Width = 702
    ExplicitTop = 139
    ExplicitWidth = 459
    inherited btnOk: TSpeedButton
      Left = 402
      ExplicitLeft = 359
    end
    inherited btnCancelar: TSpeedButton
      Left = 551
      ExplicitLeft = 508
    end
  end
  object edCCusto: TSgDbSearchCombo [4]
    Left = 58
    Top = 110
    Width = 363
    Height = 21
    TabOrder = 3
    CharCase = ecUpperCase
    LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
    LookupOrderBy = 'PCX_DESCRI'
    LookupTable = 'PCX0000'
    LookupDispl = 'PCX_DESCRI'
    GridAutoSize = False
    LookupSource = qCCusto
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'PCX_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Centro de Custos'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object PCX_CODIGO: TDBEdit [5]
    Left = 13
    Top = 110
    Width = 43
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    TabOrder = 4
  end
  object edDescricao: TDBEdit [6]
    Left = 14
    Top = 69
    Width = 430
    Height = 21
    DataField = 'SET_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  object edID: TDBEdit [7]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'SET_CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 1
  end
  inherited coCalcula: TACBrCalculadora
    Left = 128
    Top = 0
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 192
    Top = 0
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
      'Database=c:\jobdados\exemplo\exemplo.fdb'
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
    Left = 416
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM setor where set_codigo = :ID')
    object qEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qEditSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
    object CdsEditSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
  end
  inherited qAuditoria: TSQLQuery
    Left = 480
    Top = 71
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 556
    Top = 71
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 632
    Top = 71
  end
  object qCCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT pcx.PCX_NIVEL, pcx.pcx_descri, PCX.*'
      'FROM pcx0000 pcx '
      'WHERE pcx.PCX_TIPO = '#39'T'#39
      ' '#9'AND pcx.EMP_CODIGO = 001'
      #9'AND COALESCE(pcx.NIVEL_PAI,'#9#39#39') <> '#39#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 319
    Top = 75
  end
end
