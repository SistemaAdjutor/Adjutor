inherited fmTipoEmbalagem: TfmTipoEmbalagem
  Caption = 'Cadastro de Tipo de Embalagem'
  ClientHeight = 175
  ClientWidth = 659
  ExplicitWidth = 667
  ExplicitHeight = 202
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
  inherited pnUtil: TPanel
    Top = 143
    Width = 659
    ExplicitTop = 143
    ExplicitWidth = 659
    inherited btnOk: TSpeedButton
      Left = 359
      ExplicitLeft = 359
    end
    inherited btnCancelar: TSpeedButton
      Left = 508
      ExplicitLeft = 508
    end
  end
  object edID: TDBEdit [3]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'TEM_CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 1
  end
  object edDescricao: TDBEdit [4]
    Left = 14
    Top = 69
    Width = 430
    Height = 21
    DataField = 'TEM_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
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
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM Tipo_Embalagem where tem_codigo = :ID')
    object qEditTEM_CODIGO: TIntegerField
      FieldName = 'TEM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qEditTEM_DESCRICAO: TStringField
      FieldName = 'TEM_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditTEM_CODIGO: TIntegerField
      FieldName = 'TEM_CODIGO'
    end
    object CdsEditTEM_DESCRICAO: TStringField
      FieldName = 'TEM_DESCRICAO'
      Size = 60
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
