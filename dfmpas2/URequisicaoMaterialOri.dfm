inherited frmRequisicaoMaterialOri: TfrmRequisicaoMaterialOri
  Caption = 'Cadastro de Origens da Requisi'#231#227'o de Materiais'
  ClientHeight = 329
  ClientWidth = 893
  ExplicitWidth = 901
  ExplicitHeight = 356
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
    Top = 297
    Width = 893
    ExplicitTop = 102
    ExplicitWidth = 457
    inherited btnOk: TSpeedButton
      Left = 593
      ExplicitLeft = 359
    end
    inherited btnCancelar: TSpeedButton
      Left = 742
      ExplicitLeft = 508
    end
  end
  object edDescricao: TDBEdit [3]
    Left = 14
    Top = 69
    Width = 430
    Height = 21
    DataField = 'RMO_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  object edID: TDBEdit [4]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'RMO_CODIGO'
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
      'SELECT * FROM REQUISICAO_MATERIAL_ORI where rmo_codigo = :ID')
    object qEditRMO_CODIGO: TIntegerField
      FieldName = 'RMO_CODIGO'
      Required = True
    end
    object qEditRMO_DESCRICAO: TStringField
      FieldName = 'RMO_DESCRICAO'
      Size = 255
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditRMO_CODIGO: TIntegerField
      FieldName = 'RMO_CODIGO'
      Required = True
    end
    object CdsEditRMO_DESCRICAO: TStringField
      FieldName = 'RMO_DESCRICAO'
      Size = 255
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
