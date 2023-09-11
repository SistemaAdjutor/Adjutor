inherited frmEditUnidade: TfrmEditUnidade
  Caption = 'Unidade de medida'
  ClientHeight = 333
  ClientWidth = 590
  ExplicitWidth = 598
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 13
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Sigla'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel [1]
    Left = 13
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit2
  end
  object Label3: TLabel [2]
    Left = 392
    Top = 16
    Width = 98
    Height = 13
    Caption = 'Unidade Equivalente'
  end
  inherited pnUtil: TPanel
    Top = 301
    Width = 590
    ExplicitTop = 301
    ExplicitWidth = 590
    inherited btnOk: TSpeedButton
      Left = 290
      ExplicitLeft = 123
    end
    inherited btnCancelar: TSpeedButton
      Left = 439
      ExplicitLeft = 272
    end
    inherited cbPersistente: TCheckBox
      Left = 12
      ExplicitLeft = 12
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 13
    Top = 32
    DataBinding.DataField = 'PRD_UNISIGLA'
    DataBinding.DataSource = dsEditS
    Properties.MaxLength = 6
    TabOrder = 1
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit [5]
    Left = 13
    Top = 72
    DataBinding.DataField = 'PRD_UNIDESCRI'
    DataBinding.DataSource = dsEditS
    Properties.MaxLength = 30
    TabOrder = 2
    Width = 244
  end
  object clEquivalente: TCheckListBox [6]
    Left = 336
    Top = 32
    Width = 193
    Height = 201
    OnClickCheck = clEquivalenteClickCheck
    ItemHeight = 13
    TabOrder = 3
  end
  object DBCheckBox1: TDBCheckBox [7]
    Left = 13
    Top = 107
    Width = 97
    Height = 17
    Caption = 'Unidade Padr'#227'o'
    DataField = 'PRD_UNIPADRAO'
    DataSource = dsEditS
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited coCalcula: TACBrCalculadora
    Left = 192
    Top = 192
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 24
    Top = 152
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
      'Database=c:\jobdados\exemplo\exemplo.fdb'
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
    Left = 96
    Top = 152
  end
  inherited qAux: TSQLQuery
    Left = 138
    Top = 101
  end
  inherited qAux2: TSQLQuery
    Left = 178
    Top = 108
  end
  inherited qAux3: TSQLQuery
    Left = 226
    Top = 108
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM PRD_UNIDADE WHERE PRD_UNICODIGO=:ID')
    Left = 148
    Top = 151
  end
  inherited DspEdit: TDataSetProvider
    Left = 184
    Top = 151
  end
  inherited CdsEdit: TClientDataSet
    Left = 223
    Top = 151
    object CdsEditPRD_UNIREGISTRO: TIntegerField
      FieldName = 'PRD_UNIREGISTRO'
    end
    object CdsEditPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object CdsEditPRD_UNISIGLA: TStringField
      FieldName = 'PRD_UNISIGLA'
      Size = 6
    end
    object CdsEditPRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Size = 30
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEditPRD_UNIPADRAO: TStringField
      FieldName = 'PRD_UNIPADRAO'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsEditS: TDataSource
    Left = 261
    Top = 151
  end
end
