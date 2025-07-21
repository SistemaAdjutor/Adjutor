inherited frmVinculandoServico: TfrmVinculandoServico
  Caption = 'Vinculando servi'#231'o'
  ClientHeight = 131
  ClientWidth = 491
  ExplicitWidth = 507
  ExplicitHeight = 170
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 10
    Width = 39
    Height = 13
    Caption = 'Servi'#231'o:'
  end
  object Label2: TLabel [1]
    Left = 22
    Top = 39
    Width = 35
    Height = 13
    Caption = 'Custo :'
  end
  object Label3: TLabel [2]
    Left = 208
    Top = 38
    Width = 105
    Height = 13
    Caption = 'Quantidade servi'#231'os :'
  end
  object Label4: TLabel [3]
    Left = 22
    Top = 65
    Width = 28
    Height = 13
    Caption = 'Total:'
  end
  object edCusto: TJvValidateEdit [4]
    Left = 63
    Top = 35
    Width = 121
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Enabled = False
    TabOrder = 2
  end
  object edQtde: TJvValidateEdit [5]
    Left = 328
    Top = 35
    Width = 121
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 5
    TabOrder = 3
    OnChange = edQtdeChange
  end
  object edTotal: TJvValidateEdit [6]
    Left = 63
    Top = 62
    Width = 121
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Enabled = False
    TabOrder = 4
  end
  object cbServico: TSgDbSearchCombo [7]
    Left = 63
    Top = 8
    Width = 386
    Height = 21
    TabOrder = 1
    CharCase = ecUpperCase
    LookupSelect = 'SRV_CODIGO, SRV_NOME, SRV_CUSTO'
    LookupOrderBy = 'SRV_NOME'
    LookupTable = 'SERVICO'
    LookupDispl = 'SRV_NOME'
    OnSelect = cbServicoSelect
    GridAutoSize = True
    LookupSource = qServico
    LookupKeyField = 'SRV_CODIGO'
    ShowButton = True
    LookupWhere = 'SRV_NOME'
    AutoF8WinTitulo = 'Pesquisar servi'#231'o'
    AutoF8ColumnsTitulo = 'C'#243'digo, Servi'#231'o, Custo'
    LookupDbGridColumns = 'SRV_CODIGO, SRV_NOME, SRV_CUSTO'
    LookupDbGridColumnsTitle = 'C'#243'digo, Servi'#231'o, Custo'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridTop = 0
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    LimparCampoAoSair = True
  end
  inherited pnUtil: TPanel
    Top = 99
    Width = 491
    ExplicitTop = 94
    ExplicitWidth = 489
    inherited btnOk: TSpeedButton
      Left = 243
      ExplicitLeft = 241
    end
    inherited btnCancelar: TSpeedButton
      Left = 368
      ExplicitLeft = 366
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 560
    Top = 112
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 560
    Top = 336
  end
  inherited qAux: TFDQuery
    Left = 203
    Top = 152
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 560
    Top = 224
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 560
    Top = 168
  end
  inherited FDTransac: TFDTransaction
    Left = 560
    Top = 16
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 560
  end
  inherited qAux2: TFDQuery
    Left = 251
    Top = 151
  end
  inherited qAux3: TFDQuery
    Left = 291
    Top = 151
  end
  inherited qAux4: TFDQuery
    Left = 331
    Top = 151
  end
  inherited dbConn: TFDConnection
    Left = 27
    Top = 152
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 560
    Top = 280
  end
  inherited dsEdits: TDataSource
    Left = 141
    Top = 151
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      'SELECT srv_codigo, SRO_CODIGO, IOP_CODIGO, SRO_QUATDE, SRV_CUSTO'
      'FROM SERVICOS_ORDEM'
      'WHERE IOP_CODIGO = -1')
    Left = 91
    Top = 152
    object cdsEditSRO_CODIGO: TIntegerField
      FieldName = 'SRO_CODIGO'
      Origin = 'SRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsEditSRO_QUATDE: TFMTBCDField
      FieldName = 'SRO_QUATDE'
      Origin = 'SRO_QUATDE'
      Precision = 18
      Size = 5
    end
    object cdsEditSRV_CUSTO: TFMTBCDField
      FieldName = 'SRV_CUSTO'
      Origin = 'SRV_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsEditSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 83
    Top = 208
  end
  inherited dsEditDetail: TDataSource
    Left = 157
    Top = 207
  end
  inherited JvValidators1: TJvValidators
    Left = 433
    Top = 146
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 432
    Top = 256
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 425
    Top = 210
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA'
      'from PRD0000 PD'
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = dbConn
    Left = 479
    Top = 4
    object qServicoSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
    end
    object qServicoSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Size = 60
    end
    object qServicoSRV_CUSTO: TFMTBCDField
      FieldName = 'SRV_CUSTO'
      Precision = 15
    end
  end
end
