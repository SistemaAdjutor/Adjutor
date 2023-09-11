inherited frmApontarProcessos: TfrmApontarProcessos
  Caption = 'frmApontarProcessos'
  ClientHeight = 365
  ClientWidth = 695
  Font.Height = -13
  ExplicitWidth = 703
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 16
  object lDataInicio: TLabel [0]
    Left = 417
    Top = 9
    Width = 30
    Height = 16
    Caption = 'Inicio'
  end
  object lInicio: TLabel [1]
    Left = 8
    Top = 183
    Width = 119
    Height = 16
    Caption = 'Iniciar produ'#231#227'o de :'
    FocusControl = edIniciado
  end
  object Label1: TLabel [2]
    Left = 18
    Top = 78
    Width = 70
    Height = 16
    Caption = 'Colaborador'
  end
  object lmotivocancel: TLabel [3]
    Left = 8
    Top = 240
    Width = 127
    Height = 16
    Caption = 'Motivo Cancelamento:'
    FocusControl = edMotivo
  end
  object lrefugados: TLabel [4]
    Left = 237
    Top = 183
    Width = 65
    Height = 16
    Caption = 'Refugados:'
    FocusControl = edRefugado
  end
  object lqfinalizados: TLabel [5]
    Left = 135
    Top = 183
    Width = 68
    Height = 16
    Caption = 'Finalizados:'
    FocusControl = edFinalizado
  end
  object Label4: TLabel [6]
    Left = 13
    Top = 104
    Width = 74
    Height = 16
    Caption = 'Equipamento'
  end
  object lfinalizacao: TLabel [7]
    Left = 417
    Top = 55
    Width = 210
    Height = 14
    AutoSize = False
    Caption = 'Finaliza'#231#227'o'
    WordWrap = True
  end
  object lRebarba: TLabel [8]
    Left = 331
    Top = 183
    Width = 72
    Height = 16
    Caption = 'Rebarba KG:'
    FocusControl = edRebarba
  end
  object cxDataIni: TcxDateEdit [9]
    Left = 417
    Top = 27
    TabOrder = 4
    Width = 125
  end
  object EdColaboradorCodigo: TEdit [10]
    Left = 97
    Top = 77
    Width = 51
    Height = 24
    TabOrder = 0
  end
  object edMotivo: TcxDBTextEdit [11]
    Left = 143
    Top = 237
    DataBinding.DataField = 'APF_MOTIVOCANCELAMENTO'
    DataBinding.DataSource = dsEditS
    TabOrder = 12
    Width = 241
  end
  object edPesquisaEquipamento: TSgDbSearchCombo [12]
    Left = 149
    Top = 105
    Width = 223
    Height = 24
    TabOrder = 3
    CharCase = ecUpperCase
    LookupSelect = 'eqp_codigo, eqp_descricao'
    LookupOrderBy = 'EQP_descricao'
    LookupTable = 'EQUIPAMENTO'
    LookupDispl = 'EQP_DESCRICAO'
    OnSelect = edPesquisaEquipamentoSelect
    GridAutoSize = False
    LookupSource = qEquipamento
    LookupKeyField = 'EQP_codigo'
    FiltroTabela = 'eqp_descricao is not null'
    ShowButton = True
    AutoF8WinTitulo = 'Cadastro de equipamentos'
    AutoF8ColumnsTitulo = 'C'#243'digo, Equipamento'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object gbAcessorio: TGroupBox [13]
    Left = 8
    Top = 128
    Width = 393
    Height = 49
    Caption = 'Acess'#243'rio:'
    TabOrder = 16
    object opeCodigo: TEdit
      Left = 4
      Top = 18
      Width = 49
      Height = 24
      TabOrder = 0
      Text = 'opeCodigo'
    end
    object opeDescricao: TEdit
      Left = 59
      Top = 18
      Width = 317
      Height = 24
      TabOrder = 1
      Text = 'opeDescricao'
    end
  end
  object edFinalizado: TcxDBTextEdit [14]
    Left = 134
    Top = 202
    DataBinding.DataField = 'APF_FINALIZADAS'
    DataBinding.DataSource = dsEditS
    TabOrder = 9
    Width = 80
  end
  object edHoraFim: TcxTimeEdit [15]
    Left = 548
    Top = 71
    EditValue = 0d
    Properties.TimeFormat = tfHourMin
    TabOrder = 7
    Width = 60
  end
  object edRefugado: TcxDBTextEdit [16]
    Left = 237
    Top = 202
    DataBinding.DataField = 'APF_REFUGADO'
    DataBinding.DataSource = dsEditS
    TabOrder = 10
    Width = 80
  end
  object edHoraIni: TcxTimeEdit [17]
    Left = 548
    Top = 27
    EditValue = 0d
    Properties.TimeFormat = tfHourMin
    TabOrder = 5
    Width = 61
  end
  object edIniciado: TcxDBTextEdit [18]
    Left = 8
    Top = 202
    DataBinding.DataField = 'APF_INICIADA'
    DataBinding.DataSource = dsEditS
    TabOrder = 8
    Width = 80
  end
  object edEquipamento: TEdit [19]
    Left = 96
    Top = 105
    Width = 52
    Height = 24
    TabOrder = 2
    OnExit = edEquipamentoExit
  end
  object edColaborador: TSgDbSearchCombo [20]
    Left = 149
    Top = 77
    Width = 223
    Height = 24
    TabOrder = 1
    CharCase = ecUpperCase
    LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
    LookupOrderBy = 'COL_NOME'
    LookupTable = 'COLABORADOR'
    LookupDispl = 'COL_NOME'
    OnSelect = edColaboradorSelect
    GridAutoSize = False
    LookupSource = qColaborador
    LookupKeyField = 'COL_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Colaborador'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fun'#231#227'o, Setor'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edRebarba: TcxDBTextEdit [21]
    Left = 331
    Top = 202
    DataBinding.DataField = 'APF_REBARBA'
    DataBinding.DataSource = dsEditS
    TabOrder = 11
    Width = 80
  end
  object grpFinalizaAnt: TGroupBox [22]
    Left = 8
    Top = 183
    Width = 430
    Height = 138
    Caption = 'Finaliza'#231#227'o do apontamento anterior da m'#225'quina ou colaborador '
    TabOrder = 15
    object Label3: TLabel
      Left = 12
      Top = 79
      Width = 68
      Height = 16
      Caption = 'Finalizados:'
      FocusControl = cxDBTextEdit1
    end
    object Label5: TLabel
      Left = 135
      Top = 79
      Width = 65
      Height = 16
      Caption = 'Refugados:'
      FocusControl = cxDBTextEdit2
    end
    object Label6: TLabel
      Left = 12
      Top = 24
      Width = 210
      Height = 14
      AutoSize = False
      Caption = 'Finaliza'#231#227'o'
      WordWrap = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 12
      Top = 101
      DataBinding.DataField = 'APF_FINALIZADAS'
      DataBinding.DataSource = dsEditS
      TabOrder = 0
      Width = 80
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 135
      Top = 101
      DataBinding.DataField = 'APF_REFUGADO'
      DataBinding.DataSource = dsEditS
      TabOrder = 1
      Width = 80
    end
    object cxDataFimAnt: TcxDateEdit
      Left = 12
      Top = 44
      TabOrder = 2
      Width = 125
    end
    object edHoraFimAnt: TcxTimeEdit
      Left = 152
      Top = 44
      EditValue = 0d
      Properties.TimeFormat = tfHourMin
      TabOrder = 3
      Width = 60
    end
  end
  object cxDataFim: TcxDateEdit [23]
    Left = 416
    Top = 71
    TabOrder = 6
    Width = 125
  end
  object Panel1: TPanel [24]
    Left = 16
    Top = 4
    Width = 377
    Height = 65
    TabOrder = 14
    object Label2: TLabel
      Left = 4
      Top = 5
      Width = 19
      Height = 16
      Caption = 'No.'
    end
    object Label7: TLabel
      Left = 197
      Top = 4
      Width = 81
      Height = 16
      Caption = 'Programa'#231#227'o:'
    end
    object edNordem: TEdit
      Left = 4
      Top = 25
      Width = 186
      Height = 24
      TabOrder = 0
      Text = 'edNordem'
      OnExit = edNordemExit
    end
    object edPrograma: TJvValidateEdit
      Left = 196
      Top = 24
      Width = 93
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      TabOrder = 1
      OnExit = edNordemExit
    end
  end
  inherited pnUtil: TPanel
    Top = 333
    Width = 695
    TabOrder = 13
    ExplicitTop = 333
    ExplicitWidth = 695
    inherited btnOk: TSpeedButton
      Left = 395
      Caption = 'Salva  (Ctrl+ENTER)'
      ExplicitLeft = 365
    end
    inherited btnCancelar: TSpeedButton
      Left = 544
      ExplicitLeft = 514
    end
    inherited cbPersistente: TCheckBox [2]
      Left = 222
      Width = 4
      ExplicitLeft = 222
      ExplicitWidth = 4
    end
    inherited Panel3: TPanel [3]
      Caption = ''
      inherited btCalc: TSpeedButton
        Top = 5
        Visible = False
        ExplicitTop = 5
      end
    end
    inherited pnMove: TPanel [4]
      Width = 140
      ExplicitWidth = 140
      inherited btSave: TSpeedButton [0]
        Top = 5
        Height = 25
        Transparent = False
        Visible = False
        ExplicitTop = 5
        ExplicitHeight = 25
      end
      inherited btFirst: TSpeedButton [1]
        Left = 32
        Top = 7
        Transparent = False
        Visible = False
        ExplicitLeft = 32
        ExplicitTop = 7
      end
      inherited btPrior: TSpeedButton [2]
        Left = 60
        Top = 7
        Transparent = False
        Visible = False
        ExplicitLeft = 60
        ExplicitTop = 7
      end
      inherited btNext: TSpeedButton [3]
        Left = 86
        Top = 7
        Transparent = False
        Visible = False
        ExplicitLeft = 86
        ExplicitTop = 7
      end
      inherited btLast: TSpeedButton [4]
        Left = 114
        Top = 7
        Transparent = False
        Visible = False
        ExplicitLeft = 114
        ExplicitTop = 7
      end
    end
    object btnColaborador: TBitBtn
      Left = 113
      Top = 5
      Width = 117
      Height = 25
      Caption = 'Novo Colaborador'
      TabOrder = 3
      Visible = False
      OnClick = btnColaboradorClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 424
    Top = 200
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 624
    Top = 136
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
    Top = 152
  end
  inherited qAux: TSQLQuery
    Left = 482
    Top = 205
  end
  inherited qAux2: TSQLQuery
    Left = 554
    Top = 180
  end
  inherited qAux3: TSQLQuery
    Left = 522
    Top = 220
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT APF_CODIGO, FAB_CODIGO, APF_REBARBA,'
      '       COL_CODIGO, APF_DATA_INI, APF_DATA_FIM,'
      '       APF_INICIADA, APF_CANCELADO, APF_REFUGADO, '
      '          APF_FINALIZADAS,  APF_MOTIVOCANCELAMENTO , EQP_CODIGO,'
      'APF_CUSTOEQUIPAMENTO,APF_CUSTOMAO'
      'FROM APONTAMENTO_FAB'
      'WHERE APF_CODIGO = :ID')
    Left = 444
    Top = 103
    object qEditAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qEditFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditAPF_DATA_INI: TSQLTimeStampField
      FieldName = 'APF_DATA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object qEditAPF_DATA_FIM: TSQLTimeStampField
      FieldName = 'APF_DATA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object qEditAPF_CANCELADO: TStringField
      FieldName = 'APF_CANCELADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditAPF_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'APF_MOTIVOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditAPF_INICIADA: TFMTBCDField
      DisplayLabel = 'Fabricando'
      FieldName = 'APF_INICIADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qEditAPF_FINALIZADAS: TFMTBCDField
      FieldName = 'APF_FINALIZADAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qEditAPF_REFUGADO: TFMTBCDField
      FieldName = 'APF_REFUGADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditAPF_CUSTOMAO: TFMTBCDField
      FieldName = 'APF_CUSTOMAO'
      Precision = 15
    end
    object qEditAPF_CUSTOEQUIPAMENTO: TFMTBCDField
      FieldName = 'APF_CUSTOEQUIPAMENTO'
      Precision = 15
    end
    object qEditAPF_REBARBA: TFMTBCDField
      FieldName = 'APF_REBARBA'
      Precision = 18
      Size = 5
    end
  end
  inherited DspEdit: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 103
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    AfterEdit = CdsEditAfterEdit
    Left = 535
    Top = 103
    object CdsEditAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditAPF_DATA_INI: TSQLTimeStampField
      FieldName = 'APF_DATA_INI'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditAPF_DATA_FIM: TSQLTimeStampField
      FieldName = 'APF_DATA_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditAPF_CANCELADO: TStringField
      FieldName = 'APF_CANCELADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditAPF_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'APF_MOTIVOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditAPF_INICIADA: TFMTBCDField
      DisplayLabel = 'Fabricando'
      FieldName = 'APF_INICIADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEditAPF_FINALIZADAS: TFMTBCDField
      FieldName = 'APF_FINALIZADAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEditAPF_REFUGADO: TFMTBCDField
      FieldName = 'APF_REFUGADO'
      DisplayFormat = '###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object CdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditAPF_CUSTOEQUIPAMENTO: TFMTBCDField
      FieldName = 'APF_CUSTOEQUIPAMENTO'
      Precision = 15
    end
    object CdsEditAPF_CUSTOMAO: TFMTBCDField
      FieldName = 'APF_CUSTOMAO'
      Precision = 15
    end
    object CdsEditAPF_REBARBA: TFMTBCDField
      FieldName = 'APF_REBARBA'
      Precision = 18
      Size = 5
    end
  end
  inherited dsEditS: TDataSource
    Left = 581
    Top = 103
  end
  inherited qAuditoria: TSQLQuery
    Left = 456
    Top = 271
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 532
    Top = 271
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 608
    Top = 271
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COL_CODIGO, COL_nome,COL_FUNC,COL_SETOR FROM COLABORADOR')
    SQLConnection = DBConn
    Left = 272
    Top = 84
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select eqp_codigo, eqp_descricao'
      'from equipamento')
    SQLConnection = DBConn
    Left = 448
    Top = 228
  end
end
