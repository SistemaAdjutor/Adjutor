inherited frmApontamentoIndustrial: TfrmApontamentoIndustrial
  Caption = 'Apontamento de industrializa'#231#227'o'
  ClientHeight = 304
  ClientWidth = 1081
  Position = poMainFormCenter
  OnResize = FormResize
  ExplicitWidth = 1089
  ExplicitHeight = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 272
    Width = 1081
    TabOrder = 1
    ExplicitTop = 272
    ExplicitWidth = 1081
    inherited btnOk: TSpeedButton
      Tag = 0
      Left = 833
      Top = 6
      ExplicitLeft = 833
      ExplicitTop = 6
    end
    inherited btnCancelar: TSpeedButton
      Left = 958
      Top = 6
      ExplicitLeft = 958
      ExplicitTop = 6
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1081
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 23
      Top = 12
      Width = 38
      Height = 19
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ldata: TLabel
      Left = 67
      Top = 12
      Width = 34
      Height = 19
      Caption = 'ldata'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dataApontamento: TcxDateEdit
      Left = 67
      Top = 12
      TabOrder = 0
      Width = 121
    end
    object HoraApontamento: TcxTimeEdit
      Left = 195
      Top = 12
      EditValue = 0d
      TabOrder = 1
      Width = 121
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 41
    Width = 1081
    Height = 231
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 5
      Width = 74
      Height = 19
      Caption = 'Carga/OS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 99
      Height = 19
      Caption = 'Equipamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 74
      Top = 107
      Width = 37
      Height = 19
      Caption = 'Fase:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 148
      Width = 101
      Height = 19
      Caption = 'Situa'#231#227'o Fase:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 51
      Top = 193
      Width = 60
      Height = 19
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ldescfase: TLabel
      Left = 122
      Top = 107
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 469
      Top = 192
      Width = 49
      Height = 19
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object usuarioerro: TLabel
      Left = 434
      Top = 197
      Width = 15
      Height = 13
      AutoSize = False
    end
    object lsituacao: TLabel
      Left = 271
      Top = 5
      Width = 104
      Height = 19
      Caption = 'Situa'#231#227'o atual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edPesquisaEquipamento: TSgDbSearchCombo
      Left = 113
      Top = 70
      Width = 300
      Height = 27
      TabOrder = 1
      CharCase = ecUpperCase
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -16
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'eqp_codigo, eqp_descricao'
      LookupOrderBy = 'EQP_descricao'
      LookupTable = 'EQUIPAMENTO'
      LookupDispl = 'EQP_DESCRICAO'
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
    object edColaborador: TSgDbSearchCombo
      Left = 117
      Top = 190
      Width = 300
      Height = 27
      TabOrder = 3
      CharCase = ecUpperCase
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -16
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'USU_NOME,USU_LOGIN, USU_CODIGO'
      LookupOrderBy = 'USU_NOME'
      LookupTable = 'USUARIO'
      LookupDispl = 'USU_NOME'
      GridAutoSize = False
      LookupSource = qColaborador
      LookupKeyField = 'USU_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Colaborador'
      AutoF8ColumnsTitulo = 'login, nome, codigo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edSenha: TEdit
      Left = 526
      Top = 190
      Width = 198
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '#'
      TabOrder = 4
      OnEnter = edSenhaEnter
      OnKeyDown = edSenhaKeyDown
      OnKeyPress = edSenhaKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 117
      Top = 139
      Width = 324
      Height = 37
      TabOrder = 2
      object rbAndamento: TRadioButton
        Left = 80
        Top = 12
        Width = 142
        Height = 17
        Caption = 'Em Andamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rbParado: TRadioButton
        Left = 6
        Top = 12
        Width = 71
        Height = 17
        Caption = 'Parado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rbFinalizado: TRadioButton
        Left = 215
        Top = 12
        Width = 104
        Height = 17
        Caption = 'Finalizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object Memo1: TMemo
      Left = 113
      Top = 31
      Width = 636
      Height = 33
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
    object edBusca: TEdit
      Left = 113
      Top = 2
      Width = 152
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edBuscaExit
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 400
    Top = 0
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 392
    Top = 96
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 328
    Top = 0
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 384
  end
  inherited FDTransac: TFDTransaction
    Left = 344
    Top = 96
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 440
    Top = 136
  end
  inherited dbConn: TFDConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvRefreshMode, uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    Left = 27
    Top = 224
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 720
    Top = 64
  end
  inherited cdsEdit: TFDQuery
    UpdateTransaction = FDTransac
    SQL.Strings = (
      'SELECT  AP.*'
      ' FROM APONTAMENTO_PROCESSO ap '
      'where APP_CODIGO =:id')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditAPP_CODIGO: TIntegerField
      FieldName = 'APP_CODIGO'
      Origin = 'APP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditPCP_CODIGO: TIntegerField
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditAPP_STATUS: TStringField
      FieldName = 'APP_STATUS'
      Origin = 'APP_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEditAPP_DATAINI: TSQLTimeStampField
      FieldName = 'APP_DATAINI'
      Origin = 'APP_DATAINI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditAPP_DATAFIM: TSQLTimeStampField
      FieldName = 'APP_DATAFIM'
      Origin = 'APP_DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Origin = 'COL_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditAPP_CANCELADO: TStringField
      FieldName = 'APP_CANCELADO'
      Origin = 'APP_CANCELADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEditAPP_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'APP_MOTIVOCANCELAMENTO'
      Origin = 'APP_MOTIVOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEditUSU_CODIGO_CANCEL: TIntegerField
      FieldName = 'USU_CODIGO_CANCEL'
      Origin = 'USU_CODIGO_CANCEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 547
    Top = 72
  end
  inherited dsEditDetail: TDataSource
    Top = 63
  end
  inherited JvValidators1: TJvValidators
    Left = 465
    Top = 162
    object ValidarSenha: TJvCustomValidator
      ErrorControl = edSenha
      ControlToValidate = edSenha
      ErrorMessage = 'Senha deve ser preenchida'
      OnValidate = ValidarSenhaValidate
    end
    object ValidarUsuario: TJvCustomValidator
      ErrorControl = usuarioerro
      ControlToValidate = usuarioerro
      ErrorMessage = 'Usu'#225'rio deve ser preenchido'
      OnValidate = ValidarUsuarioValidate
    end
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 504
    Top = 136
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 577
    Top = 146
  end
  object qCARGAOS: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT  pr.PRO_CODIGO,iop.iop_codigo, IOP_NORDEM, ca.car_codigo,' +
        ' ca.DATA_CARGA, coalesce(PCP_STATUS,'#39'G'#39') PCP_STATUS, '
      
        'coalesce(car_status,'#39'P'#39') car_status , ope.ope_codigo, ope.ope_no' +
        'me, pp.PCP_CODIGO, CAR_TEMPOGASTO '
      'from item_ordemproducao iop '
      'join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '
      'join ped0000 pe on (pe.ped_codigo = op.ped_codigo)    '
      ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)'
      'join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) '
      
        'join carga ca on (ca.car_codigo = pp.car_codigo AND car_status N' +
        'OT IN ('#39'F'#39','#39'A'#39'))               '
      'join operacoes ope on (ope.ope_codigo = pp.ope_codigo)        '
      'UNION '
      
        ' SELECT pr.pro_codigo, iop.iop_codigo, IOP_NORDEM, null, null, c' +
        'oalesce(PCP_STATUS,'#39'P'#39') PCP_STATUS, '
      
        ' '#39'P'#39'  car_status , ope.ope_codigo, ope.ope_nome,  pp.PCP_CODIGO,' +
        ' PCP_TEMPO_GASTO'
      ' from item_ordemproducao iop'
      ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)'
      ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)'
      ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)'
      
        ' join PROCESSOS_OPERACOES pop on (pr.pro_codigo = pop.pro_codigo' +
        ')'
      
        ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_' +
        'NAOUSACARGA = '#39'S'#39')'
      
        ' LEFT JOIN PROCESSOS_PRODUCAO pp ON (pp.OPE_CODIGO = ope.OPE_COD' +
        'IGO AND iop.iop_codigo = pp.iop_codigo )'
      'WHERE PCP_status NOT IN ('#39'F'#39','#39'A'#39') or (PCP_status IS NULL)')
    Left = 675
    Top = 16
    object qCARGAOSIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCARGAOSIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object qCARGAOSCAR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCARGAOSDATA_CARGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCARGAOSPCP_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qCARGAOSCAR_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_STATUS'
      Origin = 'CAR_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qCARGAOSOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCARGAOSOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qCARGAOSPCP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qCARGAOSCAR_TEMPOGASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_TEMPOGASTO'
      Origin = 'CAR_TEMPOGASTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qCARGAOSPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
  end
  object dsCARGAos: TDataSource
    DataSet = qCARGAOS
    Left = 8
    Top = 73
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USU_NOME,USU_LOGIN FROM USUARIO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 472
    Top = 92
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select eqp_codigo, eqp_descricao'
      'from equipamento')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 656
    Top = 68
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 73
  end
end
