inherited frmResultadoInspecao: TfrmResultadoInspecao
  Caption = 'Resultados encontrados'
  ClientHeight = 475
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 443
    ExplicitTop = 443
    inherited btnOk: TSpeedButton
      ExplicitLeft = 655
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 903
    Height = 266
    Align = alClient
    TabOrder = 1
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 901
      Height = 250
      Align = alTop
      AllowDelete = False
      AllowInsert = False
      ColCount = 2
      DataSource = dsEdits
      PanelBorder = gbNone
      PanelHeight = 25
      PanelWidth = 442
      TabOrder = 0
      RowCount = 10
      object DBText1: TDBText
        Left = 8
        Top = 8
        Width = 210
        Height = 17
        DataField = 'EOR_NOME'
        DataSource = dsEdits
      end
      object DBEdit1: TDBEdit
        Left = 224
        Top = 4
        Width = 208
        Height = 21
        DataField = 'EOR_VALOR'
        DataSource = dsEdits
        TabOrder = 0
      end
    end
  end
  object pResultado: TPanel [2]
    Left = 0
    Top = 266
    Width = 903
    Height = 177
    Align = alBottom
    TabOrder = 2
    Visible = False
    object Label5: TLabel
      Left = 9
      Top = 44
      Width = 56
      Height = 17
      AutoSize = False
      Caption = 'Dist'#226'ncia 1:'
    end
    object Label6: TLabel
      Left = 337
      Top = 42
      Width = 47
      Height = 13
      Caption = 'Dureza 1:'
    end
    object Label7: TLabel
      Left = 690
      Top = 44
      Width = 32
      Height = 13
      Caption = 'EHT 1:'
    end
    object Label8: TLabel
      Left = 9
      Top = 77
      Width = 56
      Height = 13
      AutoSize = False
      Caption = 'Dist'#226'ncia 2:'
    end
    object Label9: TLabel
      Left = 337
      Top = 77
      Width = 47
      Height = 13
      Caption = 'Dureza 2:'
    end
    object Label10: TLabel
      Left = 690
      Top = 77
      Width = 32
      Height = 13
      Caption = 'EHT 2:'
    end
    object Label11: TLabel
      Left = 9
      Top = 111
      Width = 56
      Height = 13
      AutoSize = False
      Caption = 'Dist'#226'ncia 3:'
    end
    object Label12: TLabel
      Left = 337
      Top = 111
      Width = 47
      Height = 13
      Caption = 'Dureza 3:'
    end
    object Label13: TLabel
      Left = 691
      Top = 111
      Width = 32
      Height = 13
      Caption = 'EHT 3:'
    end
    object Label14: TLabel
      Left = 9
      Top = 144
      Width = 56
      Height = 13
      AutoSize = False
      Caption = 'Dist'#226'ncia 4:'
    end
    object Label15: TLabel
      Left = 337
      Top = 144
      Width = 47
      Height = 13
      Caption = 'Dureza 4:'
    end
    object Label16: TLabel
      Left = 692
      Top = 144
      Width = 32
      Height = 13
      Caption = 'EHT 4:'
    end
    object Label17: TLabel
      Left = 373
      Top = 8
      Width = 116
      Height = 14
      Caption = 'Tabela de Resultados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdDistancia1: TDBEdit
      Left = 68
      Top = 41
      Width = 131
      Height = 21
      AutoSize = False
      DataField = 'TAB_DISTANCIA1'
      DataSource = dsResultado
      TabOrder = 0
    end
    object edDureza1: TDBEdit
      Left = 390
      Top = 41
      Width = 131
      Height = 21
      DataField = 'TAB_DUREZA1'
      DataSource = dsResultado
      TabOrder = 1
    end
    object edEht1: TDBEdit
      Left = 726
      Top = 41
      Width = 137
      Height = 19
      Ctl3D = False
      DataField = 'TAB_EHT1'
      DataSource = dsResultado
      ParentCtl3D = False
      TabOrder = 2
    end
    object edDistancia2: TDBEdit
      Left = 68
      Top = 74
      Width = 131
      Height = 21
      AutoSize = False
      DataField = 'TAB_DISTANCIA2'
      DataSource = dsResultado
      TabOrder = 3
    end
    object edDureza3: TDBEdit
      Left = 390
      Top = 108
      Width = 131
      Height = 21
      DataField = 'TAB_DUREZA3'
      DataSource = dsResultado
      TabOrder = 7
    end
    object edEht2: TDBEdit
      Left = 726
      Top = 74
      Width = 137
      Height = 21
      DataField = 'TAB_EHT2'
      DataSource = dsResultado
      TabOrder = 5
    end
    object edDistancia3: TDBEdit
      Left = 68
      Top = 108
      Width = 131
      Height = 21
      AutoSize = False
      DataField = 'TAB_DISTANCIA3'
      DataSource = dsResultado
      TabOrder = 6
    end
    object edDureza2: TDBEdit
      Left = 390
      Top = 74
      Width = 131
      Height = 21
      DataField = 'TAB_DUREZA2'
      DataSource = dsResultado
      TabOrder = 4
    end
    object edEht3: TDBEdit
      Left = 726
      Top = 108
      Width = 137
      Height = 21
      DataField = 'TAB_EHT3'
      DataSource = dsResultado
      TabOrder = 8
    end
    object edDistancia4: TDBEdit
      Left = 68
      Top = 141
      Width = 131
      Height = 21
      AutoSize = False
      DataField = 'TAB_DISTANCIA4'
      DataSource = dsResultado
      TabOrder = 9
    end
    object edDureza4: TDBEdit
      Left = 390
      Top = 141
      Width = 131
      Height = 21
      DataField = 'TAB_DUREZA4'
      DataSource = dsResultado
      TabOrder = 10
    end
    object edEht4: TDBEdit
      Left = 726
      Top = 141
      Width = 137
      Height = 21
      DataField = 'TAB_EHT4'
      DataSource = dsResultado
      TabOrder = 11
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 400
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 152
    Top = 48
  end
  inherited dbConn: TFDConnection
    Left = 115
    Top = 128
  end
  inherited cdsEdit: TFDQuery
    UpdateOptions.AssignedValues = [uvEInsert, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      
        'SELECT  eor_nome, RES_CODIGO, RES.IOP_CODIGO, eor.EOR_CODIGO eor' +
        '_copiar, res.EOR_CODIGO, EOR_VALOR '
      'FROM ITEM_ORDEMPRODUCAO IOP'
      
        'JOIN PROCESSOS_OPERACOES POP ON (IOP.PRO_CODIGO = POP.PRO_CODIGO' +
        ')'
      
        'JOIN ESPE_OPERACAO_RESUL eor ON (EOR.POP_CODIGO = POP.POP_CODIGO' +
        ')'
      
        'LEFT JOIN RESULTADO_ESPECIFICACOES RES ON (res.EOR_CODIGO = eor.' +
        'EOR_CODIGO AND RES.IOP_CODIGO =IOP.IOP_CODIGO)'
      'WHERE IOP.IOP_CODIGO = :IOP_CODIGO'
      'AND POP.OPE_CODIGO = :OPE_CODIGO'
      'ORDER BY EOR_SEQ ')
    ParamData = <
      item
        Name = 'IOP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OPE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditRES_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RES_CODIGO'
      Origin = 'RES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEditEOR_NOME: TStringField
      FieldName = 'EOR_NOME'
      Origin = 'EOR_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsEditIOP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditEOR_CODIGO: TIntegerField
      FieldName = 'EOR_CODIGO'
      Origin = 'EOR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditEOR_VALOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EOR_VALOR'
      Origin = 'EOR_VALOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEditEOR_COPIAR: TIntegerField
      FieldName = 'EOR_COPIAR'
      Origin = 'EOR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Required = True
    end
  end
  inherited JvValidators1: TJvValidators
    Left = 738
    Top = 226
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 793
    Top = 192
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 834
    Top = 226
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dbConn
    ModifySQL.Strings = (
      'INSERT INTO RESULTADO_ESPECIFICACOES'
      '(RES_CODIGO, IOP_CODIGO, EOR_CODIGO, EOR_VALOR)'
      'VALUES(:RES_CODIGO, :IOP_CODIGO, :EOR_CODIGO, :EOR_VALOR);')
    Left = 688
    Top = 32
  end
  object cdsResultado: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    UpdateTransaction = FDTransac
    SQL.Strings = (
      
        'SELECT TAB_CODIGO, PCP_CODIGO, TAB_DISTANCIA1, TAB_DUREZA1, TAB_' +
        'EHT1, TAB_DISTANCIA2, TAB_DUREZA2, TAB_EHT2, TAB_DISTANCIA3, TAB' +
        '_DUREZA3, TAB_EHT3, TAB_DISTANCIA4, TAB_DUREZA4, TAB_EHT4 FROM T' +
        'ABELA_RESULTADO'
      'WHERE PCP_CODIGO = :PCP_CODIGO')
    Left = 560
    Top = 312
    ParamData = <
      item
        Name = 'PCP_CODIGO'
        ParamType = ptInput
      end>
    object cdsResultadoTAB_CODIGO: TIntegerField
      FieldName = 'TAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsResultadoPCP_CODIGO: TIntegerField
      FieldName = 'PCP_CODIGO'
    end
    object cdsResultadoTAB_DISTANCIA1: TStringField
      FieldName = 'TAB_DISTANCIA1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DUREZA1: TStringField
      FieldName = 'TAB_DUREZA1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_EHT1: TStringField
      FieldName = 'TAB_EHT1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DISTANCIA2: TStringField
      FieldName = 'TAB_DISTANCIA2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DUREZA2: TStringField
      FieldName = 'TAB_DUREZA2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_EHT2: TStringField
      FieldName = 'TAB_EHT2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DISTANCIA3: TStringField
      FieldName = 'TAB_DISTANCIA3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DUREZA3: TStringField
      FieldName = 'TAB_DUREZA3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_EHT3: TStringField
      FieldName = 'TAB_EHT3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DISTANCIA4: TStringField
      FieldName = 'TAB_DISTANCIA4'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_DUREZA4: TStringField
      FieldName = 'TAB_DUREZA4'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsResultadoTAB_EHT4: TStringField
      FieldName = 'TAB_EHT4'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsResultado: TDataSource
    DataSet = cdsResultado
    Left = 632
    Top = 312
  end
end
