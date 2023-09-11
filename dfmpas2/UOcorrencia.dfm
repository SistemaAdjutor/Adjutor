inherited fmOcorrencia: TfmOcorrencia
  Caption = 'Cadastro de Ocorr'#234'ncias'
  ClientHeight = 245
  ExplicitHeight = 283
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
    Top = 20
    Width = 97
    Height = 13
    Caption = 'C'#243'digo Identificador'
    FocusControl = edID
  end
  inherited pnUtil: TPanel
    Top = 213
    ExplicitTop = 213
  end
  object edDescricao: TDBEdit [3]
    Left = 14
    Top = 69
    Width = 430
    Height = 21
    DataField = 'OCO_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 1
  end
  object edID: TDBEdit [4]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'OCO_CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 2
  end
  object DBRadioGroup1: TDBRadioGroup [5]
    Left = 14
    Top = 96
    Width = 185
    Height = 105
    DataField = 'oco_tipo'
    DataSource = dsEditS
    Items.Strings = (
      'Informativa'
      'Cr'#237'tica')
    TabOrder = 3
    Values.Strings = (
      '1'
      '2')
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
      'Trim Char=True'
      'Database=c:\jobdados\recimar.fdb')
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT oco_codigo, '
      '            oco_descricao,'
      '            oco_tipo'
      ' FROM ocorrencia '
      'WHERE oco_codigo=:ID')
    object qEditOCO_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OCO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditOCO_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditOCO_TIPO: TIntegerField
      FieldName = 'OCO_TIPO'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited CdsEdit: TClientDataSet
    AutoCalcFields = False
    AfterInsert = CdsEditAfterInsert
    object CdsEditCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OCO_CODIGO'
      Required = True
    end
    object CdsEditDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditOCO_TIPO: TIntegerField
      FieldName = 'OCO_TIPO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
