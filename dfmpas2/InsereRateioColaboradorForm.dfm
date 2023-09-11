inherited frmInsereRateioColaborador: TfrmInsereRateioColaborador
  Caption = 'frmInsereRateioColaborador'
  ClientHeight = 192
  ClientWidth = 800
  ExplicitWidth = 816
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 50
    Top = 31
    Width = 33
    Height = 13
    Caption = 'Conta:'
  end
  object Label2: TLabel [1]
    Left = 55
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Perfil:'
  end
  object Label3: TLabel [2]
    Left = 30
    Top = 80
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cto.Custo:'
  end
  object lbQtd: TLabel [3]
    Left = 9
    Top = 105
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'Colaboradores:'
  end
  object edPerfil: TSgDbSearchCombo [4]
    Left = 86
    Top = 52
    Width = 305
    Height = 21
    TabStop = False
    TabOrder = 1
    ReadOnly = True
    LookupSelect = 
      'PCXPF_REGISTRO,EMP_CODIGO,PERIODO, PCXPF_DATA_INICIAL, PCXPF_DAT' +
      'A_FINAL'
    LookupOrderBy = 'PERIODO'
    LookupTable = 'PCX0000_PERFIL_VIEW'
    LookupDispl = 'PERIODO'
    GridAutoSize = False
    LookupSource = qPerfil
    DataField = 'PCXPF_REGISTRO'
    DataSource = dsEditS
    LookupKeyField = 'PCXPF_REGISTRO'
    ShowButton = False
    LookupTableShare = 'PLANODECONTAS'
    AutoF8WinTitulo = 'Perfis de Rateio '
    AutoF8ColumnsTitulo = '#, Empresa, Periodo, Dt.Inicio, Dt.Fim'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
  end
  object edCusto: TsgDBLookupCombo [5]
    Left = 86
    Top = 77
    Width = 305
    Height = 21
    TabOrder = 2
    CharCase = ecUpperCase
    LookupSelect = 'pcx_codigo, pcx_nivel, pcx_descri, pcx_tipo'
    LookupOrderBy = 'pcx_nivel'
    LookupTable = 'pcx0000_view'
    LookupDispl = 'PCX_DESCRI'
    OnSelect = edCustoSelect
    GridAutoSize = False
    LookupSource = qCusto
    DataField = 'PCX_CODIGO'
    DataSource = dsEditS
    LookupKeyField = 'pcx_codigo'
    ShowButton = True
    AutoF8WinTitulo = 'Centros de Custos'
    AutoF8ColumnsTitulo = 'C'#243'digo, N'#237'vel, Descri'#231#227'o, Tipo'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    OnMenuNovoClick = edCustoMenuNovoClick
    OnMenuEditaClick = edCustoMenuEditaClick
  end
  object edConta: TSgDbSearchCombo [6]
    Left = 86
    Top = 28
    Width = 305
    Height = 21
    TabStop = False
    EmptyText = 'Selecione..'
    TabOrder = 0
    ReadOnly = True
    CharCase = ecUpperCase
    LookupSelect = 'cct_codigo,cct_descri'
    LookupOrderBy = 'cct_descri'
    LookupTable = 'cct_0000'
    LookupDispl = 'CCT_DESCRI'
    GridAutoSize = False
    LookupSource = qConta
    DataField = 'CCT_0000'
    DataSource = dsEditS
    LookupKeyField = 'cct_codigo'
    ShowButton = False
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
  end
  object DBEdit1: TDBEdit [7]
    Left = 86
    Top = 102
    Width = 90
    Height = 21
    DataField = 'PPC_QUANTIDADE'
    DataSource = dsEditS
    TabOrder = 4
  end
  inherited pnUtil: TPanel
    Top = 160
    Width = 800
    TabOrder = 3
    ExplicitTop = 160
    ExplicitWidth = 800
    inherited btnOk: TSpeedButton
      Left = 500
      ExplicitLeft = 500
    end
    inherited btnCancelar: TSpeedButton
      Left = 649
      ExplicitLeft = 649
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 576
    Top = 200
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 744
    Top = 16
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\Gasparim2706.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'SQLDialect=3'
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 544
    Top = 120
  end
  inherited qAux: TSQLQuery
    Left = 746
    Top = 69
  end
  inherited qAux2: TSQLQuery
    Left = 746
    Top = 116
  end
  inherited qAux3: TSQLQuery
    Left = 714
    Top = 92
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'select PPC_REGISTRO,'
      '       EMP_CODIGO,'
      '       CCT_0000,'
      '       PCX_CODIGO,'
      '       PCXPF_REGISTRO,'
      '       PPC_TIPO,'
      '       PPC_QUANTIDADE,'
      '       PPC_INDICE_REAL'
      'from PCX0000_PERFIL_COLABORADOR'
      'where ppc_registro=:ID')
    Left = 484
    object qEditPPC_REGISTRO: TIntegerField
      FieldName = 'PPC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditCCT_0000: TStringField
      FieldName = 'CCT_0000'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditPPC_TIPO: TStringField
      FieldName = 'PPC_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditPPC_QUANTIDADE: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object qEditPPC_INDICE_REAL: TFMTBCDField
      FieldName = 'PPC_INDICE_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    Left = 599
    object CdsEditPPC_REGISTRO: TIntegerField
      FieldName = 'PPC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditCCT_0000: TStringField
      FieldName = 'CCT_0000'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditPPC_TIPO: TStringField
      FieldName = 'PPC_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditPPC_QUANTIDADE: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object CdsEditPPC_INDICE_REAL: TFMTBCDField
      FieldName = 'PPC_INDICE_REAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
  end
  inherited dsEditS: TDataSource
    Left = 653
  end
  object qPerfil: TSQLQuery
    AfterOpen = qEditAfterOpen
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECTpcxpf_registro,pcxpf_data_inicial||'#39' - '#39'||pcxpf_data_final'
      'FROM pcx0000_perfil'
      'where  pcxpf_registro='#39'-1'#39' and  emp_codigo='#39'001'#39)
    SQLConnection = DBConn
    Left = 492
    Top = 71
  end
  object qConta: TSQLQuery
    AfterOpen = qEditAfterOpen
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT cct_codigo,cct_descri FROM cct_0000 where cct_codigo='#39'-1'#39)
    SQLConnection = DBConn
    Left = 540
    Top = 71
  end
  object qCusto: TSQLQuery
    AfterOpen = qEditAfterOpen
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '  Select pcx_codigo, pcx_nivel, pcx_descri'
      '  from pcx0000'
      '  where pcx_codigo=-1'
      '  Order By pcx_descri')
    SQLConnection = DBConn
    Left = 604
    Top = 71
    object qCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object qCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object qCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      OnGetText = qCustoPCX_DESCRIGetText
      Size = 25
    end
  end
end
