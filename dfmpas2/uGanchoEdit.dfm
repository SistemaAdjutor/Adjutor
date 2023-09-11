inherited frmGanchoEdit: TfrmGanchoEdit
  Caption = 'frmGanchoEdit'
  ClientHeight = 131
  ClientWidth = 687
  ExplicitWidth = 695
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 14
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label1: TLabel [1]
    Left = 128
    Top = 24
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 487
    Top = 24
    Width = 108
    Height = 13
    Caption = 'Quantidade de Espiras'
    FocusControl = cxDBTextEdit1
  end
  inherited pnUtil: TPanel
    Top = 99
    Width = 687
    ExplicitTop = 99
    ExplicitWidth = 687
    inherited btnOk: TSpeedButton
      Left = 387
      ExplicitLeft = 387
    end
    inherited btnCancelar: TSpeedButton
      Left = 536
      ExplicitLeft = 536
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 8
    Top = 43
    DataBinding.DataField = 'GAN_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 1
    Width = 114
  end
  object cxDBTextEdit1: TcxDBTextEdit [5]
    Left = 128
    Top = 43
    DataBinding.DataField = 'GAN_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 353
  end
  object cxDBTextEdit3: TcxDBTextEdit [6]
    Left = 487
    Top = 43
    DataBinding.DataField = 'GAN_QTD_ESPIRAS'
    DataBinding.DataSource = dsEditS
    TabOrder = 3
    Width = 169
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
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=C:\JobDados\exemplo/EXEMPLO.FDB'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 432
    Top = 72
  end
  inherited qAux: TSQLQuery
    Top = 65525
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM GANCHO WHERE GAN_CODIGO=:ID')
    Left = 476
    Top = 69
  end
  inherited DspEdit: TDataSetProvider
    Top = 70
  end
  inherited CdsEdit: TClientDataSet
    Top = 70
    object CdsEditGAN_CODIGO: TIntegerField
      FieldName = 'GAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditGAN_NOME: TStringField
      FieldName = 'GAN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEditGAN_QTD_ESPIRAS: TSingleField
      FieldName = 'GAN_QTD_ESPIRAS'
      Required = True
    end
  end
  inherited dsEditS: TDataSource
    Top = 70
  end
end
