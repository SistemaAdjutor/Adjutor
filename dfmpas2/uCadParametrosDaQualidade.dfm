inherited frmCadParametrosDaQualidade: TfrmCadParametrosDaQualidade
  Caption = 'Especifica'#231#245'es da Qualidade'
  ClientHeight = 183
  ClientWidth = 677
  ExplicitWidth = 685
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel [0]
    Left = 15
    Top = 75
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel [1]
    Left = 28
    Top = 51
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label1: TLabel [2]
    Left = 3
    Top = 99
    Width = 62
    Height = 13
    Caption = 'Observa'#231#227'o:'
  end
  inherited pnUtil: TPanel
    Top = 151
    Width = 677
    TabOrder = 2
    ExplicitTop = 151
    ExplicitWidth = 677
    inherited btnOk: TSpeedButton
      Left = 377
      ExplicitLeft = 379
    end
    inherited btnCancelar: TSpeedButton
      Left = 526
      ExplicitLeft = 528
    end
  end
  object PAR_DESCRICAO: TDBEdit [4]
    Left = 71
    Top = 72
    Width = 314
    Height = 21
    DataField = 'PAR_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 0
  end
  object DBEditCodigo: TDBEdit [5]
    Left = 71
    Top = 48
    Width = 121
    Height = 21
    DataField = 'PAR_CODIGO'
    DataSource = dsEditS
    Enabled = False
    TabOrder = 3
  end
  object PAR_OBSERVACAO: TDBEdit [6]
    Left = 71
    Top = 96
    Width = 314
    Height = 21
    DataField = 'PAR_OBSERVACAO'
    DataSource = dsEditS
    TabOrder = 1
  end
  inherited coCalcula: TACBrCalculadora
    Left = 200
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 184
    Top = 8
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
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
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
  end
  inherited qAux: TSQLQuery
    Left = 282
    Top = 65533
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM PARAMETROS_DA_QUALIDADE WHERE PAR_CODIGO=:ID')
    object qEditPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Required = True
    end
    object qEditPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 40
    end
    object qEditPAR_OBSERVACAO: TStringField
      FieldName = 'PAR_OBSERVACAO'
      Size = 100
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Required = True
    end
    object CdsEditPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 40
    end
    object CdsEditPAR_OBSERVACAO: TStringField
      FieldName = 'PAR_OBSERVACAO'
      Size = 100
    end
  end
end
