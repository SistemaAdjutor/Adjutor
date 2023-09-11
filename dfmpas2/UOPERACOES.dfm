inherited fmOperacoes: TfmOperacoes
  Caption = 'Edi'#231#227'o de Registro'
  ClientHeight = 331
  ClientWidth = 707
  ExplicitWidth = 715
  ExplicitHeight = 358
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
  object Label1: TLabel [2]
    Left = 14
    Top = 158
    Width = 67
    Height = 13
    Caption = 'Observa'#231#245'es:'
    FocusControl = edDescricao
  end
  object Label2: TLabel [3]
    Left = 123
    Top = 20
    Width = 35
    Height = 13
    Caption = 'Apelido'
  end
  object Label3: TLabel [4]
    Left = 16
    Top = 113
    Width = 55
    Height = 13
    Caption = 'Custo/Hora'
  end
  object lblProjcx: TLabel [5]
    Left = 147
    Top = 134
    Width = 68
    Height = 13
    Caption = 'Centro Custo:'
  end
  object Label4: TLabel [6]
    Left = 113
    Top = 108
    Width = 102
    Height = 13
    Caption = 'Vincular Equipamento'
  end
  object Label5: TLabel [7]
    Left = 185
    Top = 161
    Width = 30
    Height = 13
    Caption = 'Setor:'
  end
  object edDescricao: TDBEdit [8]
    Left = 14
    Top = 72
    Width = 430
    Height = 21
    DataField = 'OPE_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 4
  end
  object edID: TDBEdit [9]
    Left = 14
    Top = 33
    Width = 95
    Height = 21
    TabStop = False
    DataField = 'OPE_CODIGO'
    DataSource = dsEditS
    TabOrder = 0
  end
  object btnResultado: TButton [10]
    Left = 488
    Top = 257
    Width = 153
    Height = 25
    Caption = 'Parametros resultado'
    TabOrder = 11
    OnClick = btnResultadoClick
  end
  object chkResultado: TDBCheckBox [11]
    Left = 383
    Top = 35
    Width = 90
    Height = 17
    Caption = 'Tem resultado'
    DataField = 'OPE_TEMRESULTADO'
    DataSource = dsEditS
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    OnClick = chkResultadoClick
  end
  object DBMemo1: TDBMemo [12]
    Left = 8
    Top = 193
    Width = 430
    Height = 89
    DataField = 'OPE_OBSERVACAO'
    DataSource = dsEditS
    TabOrder = 8
  end
  object btnParametros: TButton [13]
    Left = 488
    Top = 226
    Width = 153
    Height = 25
    Caption = 'Parametros produ'#231#227'o'
    TabOrder = 10
    OnClick = btnParametrosClick
  end
  object DBEdit1: TDBEdit [14]
    Left = 123
    Top = 33
    Width = 121
    Height = 21
    DataField = 'OPE_NOME'
    DataSource = dsEditS
    TabOrder = 1
  end
  object SgDbSearchCombo1: TSgDbSearchCombo [15]
    Left = 267
    Top = 105
    Width = 271
    Height = 21
    TabOrder = 13
    CharCase = ecUpperCase
    LookupSelect = 'EQP_CODIGO, EQP_DESCRICAO'
    LookupOrderBy = 'EQP_DESCRICAO'
    LookupTable = 'EQUIPAMENTO'
    GridAutoSize = False
    LookupSource = qEquipamento
    DataField = 'EQP_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'EQP_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Equipamentos'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object CbxProjCx: TSgDbSearchCombo [16]
    Left = 267
    Top = 132
    Width = 271
    Height = 21
    TabOrder = 7
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
  object JvDBMaskEdit1: TJvDBMaskEdit [17]
    Left = 14
    Top = 131
    Width = 83
    Height = 21
    DataField = 'OPE_CUSTOHORA'
    DataSource = dsEditS
    TabOrder = 5
    EditMask = ''
  end
  object DBePcx_Codigo: TDBEdit [18]
    Left = 221
    Top = 131
    Width = 42
    Height = 21
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    TabOrder = 6
  end
  object rgForm: TDBRadioGroup [19]
    Left = 479
    Top = 20
    Width = 98
    Height = 34
    Caption = 'Formulario:'
    Columns = 2
    DataField = 'OPE_FORMULARIO'
    DataSource = dsEditS
    DragMode = dmAutomatic
    Enabled = False
    Items.Strings = (
      '022'
      '023')
    TabOrder = 12
    Values.Strings = (
      '22'
      '23')
    OnEnter = rgFormEnter
  end
  object SgDbSearchCombo2: TSgDbSearchCombo [20]
    Left = 267
    Top = 159
    Width = 271
    Height = 21
    TabOrder = 15
    CharCase = ecUpperCase
    LookupSelect = 'SET_CODIGO, SET_DESCRICAO'
    LookupOrderBy = 'SET_DESCRICAO'
    LookupTable = 'SETOR'
    GridAutoSize = False
    LookupSource = qSetor
    DataField = 'SET_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'SET_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Setores'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object DBEdit2: TDBEdit [21]
    Left = 221
    Top = 158
    Width = 42
    Height = 21
    DataField = 'SET_CODIGO'
    DataSource = dsEditS
    TabOrder = 16
  end
  object dbeEQP_CODIGO: TDBEdit [22]
    Left = 221
    Top = 104
    Width = 42
    Height = 21
    DataField = 'EQP_CODIGO'
    DataSource = dsEditS
    TabOrder = 14
  end
  object DBCheckBox1: TDBCheckBox [23]
    Left = 252
    Top = 35
    Width = 126
    Height = 17
    Caption = 'N'#227'o aponta por carga'
    DataField = 'OPE_NAOUSACARGA'
    DataSource = dsEditS
    TabOrder = 2
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited pnUtil: TPanel
    Top = 299
    Width = 707
    TabOrder = 9
    ExplicitTop = 299
    ExplicitWidth = 707
    inherited btnOk: TSpeedButton
      Left = 407
      ExplicitLeft = 407
    end
    inherited btnCancelar: TSpeedButton
      Left = 556
      ExplicitLeft = 556
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 152
    Top = 65528
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 24
    Top = 65520
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
      'Database=C:\JobDados\exemplo\exemplo.fdb'
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
    Left = 32
    Top = 232
  end
  inherited qAux: TSQLQuery
    Left = 362
    Top = 261
  end
  inherited qAux2: TSQLQuery
    Left = 410
    Top = 252
  end
  inherited qAux3: TSQLQuery
    Left = 458
    Top = 260
  end
  inherited qEdit: TSQLQuery
    MaxBlobSize = 1
    SQL.Strings = (
      'SELECT * FROM operacoes WHERE ope_codigo=:ID')
    Left = 100
    Top = 231
    object qEditCODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Required = True
    end
    object qEditDESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object qEditOPE_OBSERVACAO: TBlobField
      FieldName = 'OPE_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditOPE_CUSTOHORA: TFMTBCDField
      FieldName = 'OPE_CUSTOHORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qEditOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditOPE_NAOUSACARGA: TStringField
      FieldName = 'OPE_NAOUSACARGA'
      Size = 1
    end
    object qEditOPE_TEMRESULTADO: TStringField
      FieldName = 'OPE_TEMRESULTADO'
      Size = 1
    end
    object qEditOPE_FORMULARIO: TIntegerField
      FieldName = 'OPE_FORMULARIO'
    end
    object qEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
    end
    object qEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 160
    Top = 231
  end
  inherited CdsEdit: TClientDataSet
    Left = 215
    Top = 231
    object CdsEditOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Required = True
    end
    object CdsEditOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditOPE_OBSERVACAO: TBlobField
      FieldName = 'OPE_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
    object CdsEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOPE_CUSTOHORA: TFMTBCDField
      FieldName = 'OPE_CUSTOHORA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object CdsEditOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditOPE_NAOUSACARGA: TStringField
      FieldName = 'OPE_NAOUSACARGA'
      Size = 1
    end
    object CdsEditOPE_TEMRESULTADO: TStringField
      FieldName = 'OPE_TEMRESULTADO'
      Size = 1
    end
    object CdsEditOPE_FORMULARIO: TIntegerField
      FieldName = 'OPE_FORMULARIO'
    end
    object CdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
    end
    object CdsEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
  end
  inherited dsEditS: TDataSource
    Left = 277
    Top = 231
  end
  object qEquipamento: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT * FROM EQUIPAMENTO ORDER BY EQP_DESCRICAO')
    Left = 600
    Top = 96
  end
  object qSetor: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SETOR ORDER BY SET_DESCRICAO')
    Left = 600
    Top = 150
  end
end
