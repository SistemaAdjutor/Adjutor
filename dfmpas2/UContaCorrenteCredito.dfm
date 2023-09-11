inherited fmContaCorrenteCredito: TfmContaCorrenteCredito
  Caption = 'Cadastro de Credito em Conta Corrente'
  ClientHeight = 253
  ClientWidth = 866
  ExplicitWidth = 874
  ExplicitHeight = 280
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 14
    Top = 4
    Width = 97
    Height = 13
    Caption = 'C'#243'digo Identificador'
    FocusControl = edID
  end
  object lbl2: TLabel [1]
    Left = 219
    Top = 41
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = edDescricao
  end
  object Label1: TLabel [2]
    Left = 115
    Top = 41
    Width = 58
    Height = 13
    Caption = 'Documento:'
    FocusControl = edDocumento
  end
  object Label7: TLabel [3]
    Left = 17
    Top = 168
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label22: TLabel [4]
    Left = 16
    Top = 121
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object Label23: TLabel [5]
    Left = 14
    Top = 77
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label4: TLabel [6]
    Left = 17
    Top = 41
    Width = 27
    Height = 13
    Caption = 'Data:'
    FocusControl = edDocumento
  end
  object CbVendedor: TsgDBLookupCombo [7]
    Left = 74
    Top = 91
    Width = 415
    Height = 21
    TabOrder = 8
    CharCase = ecUpperCase
    LookupSelect = 'REP_CODIGO, REP_NOME'
    LookupOrderBy = 'REP_NOME'
    LookupTable = 'REP0000'
    LookupDispl = 'REP_NOME'
    GridAutoSize = False
    LookupSource = Rep0000
    DataField = 'COD_VENDEDOR'
    DataSource = dsEditS
    LookupKeyField = 'REP_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Vendedores'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    OnMenuNovoClick = CbVendedorMenuNovoClick
    OnMenuEditaClick = CbVendedorMenuEditaClick
  end
  object cxDBRadioGroup1: TcxDBRadioGroup [8]
    Left = 115
    Top = 6
    Caption = 'Tipo da Conta'
    DataBinding.DataField = 'TIPO'
    DataBinding.DataSource = dsEditS
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Vendedor'
        Value = 'V'
      end
      item
        Caption = 'Cliente'
        Value = 'C'
      end
      item
        Caption = 'Fornecedor'
        Value = 'F'
      end>
    TabOrder = 1
    OnClick = cxDBRadioGroup1Click
    Height = 33
    Width = 238
  end
  object cxDBDateEdit1: TcxDBDateEdit [9]
    Left = 14
    Top = 53
    DataBinding.DataField = 'DATA'
    DataBinding.DataSource = dsEditS
    TabOrder = 4
    Width = 97
  end
  object cxDBRadioGroup3: TcxDBRadioGroup [10]
    Left = 481
    Top = 6
    Caption = 'Lan'#231'amento'
    DataBinding.DataField = 'LANCADO'
    DataBinding.DataSource = dsEditS
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Autom'#225'tico'
        Value = 'A'
      end
      item
        Caption = 'Manual'
        Value = 'M'
      end>
    Properties.ReadOnly = True
    TabOrder = 3
    Height = 33
    Width = 168
  end
  object edCliente: TDBEdit [11]
    Left = 14
    Top = 135
    Width = 53
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = dsEditS
    TabOrder = 9
  end
  object edDescricao: TDBEdit [12]
    Left = 219
    Top = 53
    Width = 430
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsEditS
    TabOrder = 6
  end
  object cxDBRadioGroup2: TcxDBRadioGroup [13]
    Left = 353
    Top = 6
    Caption = 'Conta'
    DataBinding.DataField = 'CONTA'
    DataBinding.DataSource = dsEditS
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Cr'#233'dito'
        Value = 'C'
      end
      item
        Caption = 'D'#233'bito'
        Value = 'D'
      end>
    TabOrder = 2
    Height = 33
    Width = 128
  end
  object GroupBox1: TGroupBox [14]
    Left = 520
    Top = 75
    Width = 129
    Height = 132
    Caption = 'Valor:'
    TabOrder = 12
    object Label2: TLabel
      Left = 17
      Top = 15
      Width = 77
      Height = 13
      Caption = 'Total Concedido'
      FocusControl = edDocumento
    end
    object Label3: TLabel
      Left = 18
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Utilizado'
      FocusControl = edDocumento
    end
    object Label5: TLabel
      Left = 18
      Top = 91
      Width = 26
      Height = 13
      Caption = 'Saldo'
      FocusControl = edDocumento
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 16
      Top = 27
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = dsEditS
      TabOrder = 0
      Width = 94
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 17
      Top = 66
      DataBinding.DataField = 'VALOR_UTILIZADO'
      DataBinding.DataSource = dsEditS
      Properties.ReadOnly = True
      Style.Color = clInfoBk
      TabOrder = 1
      Width = 93
    end
    object edSaldo: TcxDBCurrencyEdit
      Left = 17
      Top = 104
      DataBinding.DataField = 'SALDO'
      DataBinding.DataSource = dsEditS
      Properties.ReadOnly = True
      Style.Color = clInfoBk
      TabOrder = 2
      Width = 93
    end
  end
  object edID: TDBEdit [15]
    Left = 14
    Top = 16
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'CODIGO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 0
  end
  object edVendedor: TDBEdit [16]
    Left = 14
    Top = 91
    Width = 54
    Height = 21
    DataField = 'COD_VENDEDOR'
    DataSource = dsEditS
    TabOrder = 7
  end
  object edDocumento: TDBEdit [17]
    Left = 115
    Top = 53
    Width = 95
    Height = 21
    DataField = 'DOCUMENTO'
    DataSource = dsEditS
    TabOrder = 5
  end
  object CbForne: TsgDBLookupCombo [18]
    Left = 74
    Top = 183
    Width = 415
    Height = 21
    TabOrder = 11
    CharCase = ecUpperCase
    LookupSelect = 'FOR_CODIGO,FOR_RAZAO'
    LookupOrderBy = 'FOR_RAZAO'
    LookupTable = 'FOR0000'
    LookupDispl = 'FOR_RAZAO'
    GridAutoSize = False
    LookupSource = qFor0000
    DataField = 'COD_FORNECEDOR'
    DataSource = dsEditS
    LookupKeyField = 'FOR_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Fornecedores'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    OnMenuNovoClick = CbForneMenuNovoClick
    OnMenuEditaClick = CbForneMenuEditaClick
  end
  object edFornecedor: TDBEdit [19]
    Left = 15
    Top = 182
    Width = 53
    Height = 21
    DataField = 'COD_FORNECEDOR'
    DataSource = dsEditS
    TabOrder = 10
  end
  inherited pnUtil: TPanel
    Top = 221
    Width = 866
    TabOrder = 13
    ExplicitTop = 221
    ExplicitWidth = 866
    inherited btnOk: TSpeedButton
      Left = 566
      ExplicitLeft = 566
    end
    inherited btnCancelar: TSpeedButton
      Left = 715
      ExplicitLeft = 715
    end
  end
  object cbCliente: TSgDbSearchCombo [21]
    Left = 73
    Top = 135
    Width = 416
    Height = 21
    EmptyText = 'TODOS OS CLIENTES'
    TabOrder = 14
    CharCase = ecUpperCase
    LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
    LookupOrderBy = 'CLI_RAZAO'
    LookupTable = 'cli0000'
    LookupDispl = 'CLI_RAZAO'
    OnButtonClick = cbClienteButtonClick
    OnSelect = cbClienteSelect
    GridAutoSize = False
    LookupSource = qCli0000
    LookupKeyField = 'CLI_CODIGO'
    ShowButton = True
    LookupTableShare = 'clientes'
    AutoF8WinTitulo = 'Clientes'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 263
    Top = 256
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 311
    Top = 264
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'Database=database.fdb'
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
      'Trim Char=True')
    Left = 640
    Top = 208
  end
  inherited qAux: TSQLQuery
    Left = 777
    Top = 125
  end
  inherited qAux2: TSQLQuery
    Left = 762
    Top = 52
  end
  inherited qAux3: TSQLQuery
    Left = 802
    Top = 52
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM conta_corrente where codigo = :ID')
    Left = 692
    Top = 207
    object qEditTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qEditCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object qEditDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qEditDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qEditLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object qEditUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object qEditCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object qEditCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object qEditCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object qEditCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object qEditMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object qEditUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
    object qEditCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qEditCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
    end
    object qEditDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qEditVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object qEditVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      DisplayFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 728
    Top = 207
  end
  inherited CdsEdit: TClientDataSet
    OnCalcFields = CdsEditCalcFields
    OnNewRecord = CdsEditNewRecord
    Left = 767
    Top = 207
    object CdsEditTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CdsEditCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object CdsEditDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CdsEditDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object CdsEditLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object CdsEditUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsEditCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object CdsEditCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object CdsEditCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object CdsEditCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object CdsEditMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object CdsEditUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
    object CdsEditCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsEditCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
    end
    object CdsEditDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsEditVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object CdsEditVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object CdsEditSALDO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      ReadOnly = True
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      currency = True
      Calculated = True
    end
  end
  inherited dsEditS: TDataSource
    Left = 805
    Top = 207
  end
  object qCli0000: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 710
    Top = 68
  end
  object Rep0000: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 710
    Top = 20
  end
  object qFor0000: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 710
    Top = 116
  end
end
