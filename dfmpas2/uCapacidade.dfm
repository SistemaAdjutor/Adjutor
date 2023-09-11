inherited frmCapacidade: TfrmCapacidade
  Caption = 'Cadastro de Capacidade de Item do Pedido'
  ClientHeight = 133
  ClientWidth = 687
  ExplicitWidth = 695
  ExplicitHeight = 160
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
    Top = 101
    Width = 687
    ExplicitTop = 101
    ExplicitWidth = 687
    inherited btnOk: TSpeedButton
      Left = 387
      ExplicitLeft = 359
    end
    inherited btnCancelar: TSpeedButton
      Left = 536
      ExplicitLeft = 508
    end
  end
  object edDescricao: TDBEdit [3]
    Left = 14
    Top = 69
    Width = 430
    Height = 21
    DataField = 'CAP_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  object edID: TDBEdit [4]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'CAP_CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 1
  end
  object dbTemST: TDBCheckBox [5]
    Left = 119
    Top = 35
    Width = 162
    Height = 17
    Caption = 'Tem Substitui'#231#227'o Tribut'#225'ria'
    DataField = 'CAP_SUBSTITUICAO_TRIBUTARIA'
    DataSource = dsEditS
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'F'
  end
  inherited coCalcula: TACBrCalculadora
    Left = 664
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 672
    Top = 56
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
      'SELECT * FROM CAPACIDADE WHERE CAP_CODIGO = :ID')
    object qEditCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
      Required = True
    end
    object qEditCAP_DESCRICAO: TStringField
      FieldName = 'CAP_DESCRICAO'
      Size = 255
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qEditCAP_SUBSTITUICAO_TRIBUTARIA: TStringField
      FieldName = 'CAP_SUBSTITUICAO_TRIBUTARIA'
      Size = 1
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
      Required = True
    end
    object CdsEditCAP_DESCRICAO: TStringField
      FieldName = 'CAP_DESCRICAO'
      Size = 255
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEditCAP_SUBSTITUICAO_TRIBUTARIA: TStringField
      FieldName = 'CAP_SUBSTITUICAO_TRIBUTARIA'
      Size = 1
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
end
