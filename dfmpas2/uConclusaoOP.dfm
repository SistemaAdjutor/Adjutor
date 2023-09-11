inherited frmConclusaoOP: TfrmConclusaoOP
  Caption = 'Concluir Ordem de Produ'#231#227'o'
  ClientHeight = 342
  ClientWidth = 472
  Font.Height = -13
  ExplicitWidth = 480
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 8
    Top = 10
    Width = 66
    Height = 16
    Caption = 'Refer'#234'ncia:'
  end
  object Label2: TLabel [1]
    Left = 14
    Top = 41
    Width = 60
    Height = 16
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel [2]
    Left = 14
    Top = 72
    Width = 60
    Height = 16
    Caption = 'Conclu'#237'da:'
  end
  object Label4: TLabel [3]
    Left = 14
    Top = 102
    Width = 59
    Height = 16
    Caption = 'Refugada:'
  end
  object edPRD_REFER: TEdit [4]
    Left = 80
    Top = 8
    Width = 137
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = 'edPRD_REFER'
    OnChange = edPRD_REFERChange
  end
  object edDescricao: TEdit [5]
    Left = 80
    Top = 38
    Width = 232
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = 'Edit1'
    OnChange = edDescricaoChange
  end
  object edConcluida: TJvValidateEdit [6]
    Left = 80
    Top = 68
    Width = 121
    Height = 24
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    TabOrder = 2
  end
  object edRefugada: TJvValidateEdit [7]
    Left = 80
    Top = 98
    Width = 121
    Height = 24
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    TabOrder = 3
  end
  object GLote: TGroupBox [8]
    Left = 8
    Top = 188
    Width = 458
    Height = 113
    Caption = 'Informa'#231#245'es sobre o lote'
    TabOrder = 4
    object Label5: TLabel
      Left = 37
      Top = 32
      Width = 46
      Height = 16
      Caption = 'Lote n'#186':'
    end
    object lfab: TLabel
      Left = 16
      Top = 64
      Width = 67
      Height = 16
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label7: TLabel
      Left = 232
      Top = 61
      Width = 54
      Height = 16
      Caption = 'Validade:'
    end
    object dtValidade: TJvDateEdit
      Left = 295
      Top = 57
      Width = 121
      Height = 24
      ShowNullDate = False
      TabOrder = 2
    end
    object dtFabricacao: TJvDateEdit
      Left = 89
      Top = 58
      Width = 121
      Height = 24
      ShowNullDate = False
      TabOrder = 1
    end
    object edLote: TEdit
      Left = 89
      Top = 28
      Width = 121
      Height = 24
      TabOrder = 0
    end
  end
  object Panel1: TPanel [9]
    Left = 0
    Top = 301
    Width = 472
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitTop = 256
    ExplicitWidth = 474
    object btnok: TButton
      Left = 298
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btnokClick
      OnEnter = btnokEnter
      OnExit = btnokExit
    end
    object btnCancelar: TButton
      Left = 390
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnEnter = btnCancelarEnter
      OnExit = btnCancelarExit
    end
    object Button1: TButton
      Left = 191
      Top = 10
      Width = 92
      Height = 25
      Caption = 'Encerrar OP'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox1: TGroupBox [10]
    Left = 318
    Top = 8
    Width = 148
    Height = 114
    Caption = ' Quantidade '
    TabOrder = 6
    object lTotal: TLabel
      Left = 76
      Top = 26
      Width = 55
      Height = 16
      Caption = 'Solicitado'
    end
    object totalproduzido: TLabel
      Left = 76
      Top = 53
      Width = 61
      Height = 16
      Caption = 'Produzido:'
    end
    object saldoaproduzir: TLabel
      Left = 76
      Top = 78
      Width = 64
      Height = 16
      Caption = 'A produzir:'
    end
    object Label8: TLabel
      Left = 12
      Top = 26
      Width = 60
      Height = 16
      Caption = 'Solicitado:'
    end
    object Label9: TLabel
      Left = 11
      Top = 53
      Width = 61
      Height = 16
      Caption = 'Produzido:'
    end
    object Label10: TLabel
      Left = 8
      Top = 78
      Width = 64
      Height = 16
      Caption = 'A produzir:'
    end
  end
  object gbEntradaProducao: TGroupBox [11]
    Left = 8
    Top = 125
    Width = 458
    Height = 57
    Caption = 'Entrada da Produ'#231#227'o'
    TabOrder = 7
    object Label6: TLabel
      Left = 10
      Top = 26
      Width = 75
      Height = 16
      Caption = 'Almoxarifado'
    end
    object cbAlmoxarifado: TSgDbSearchCombo
      Left = 146
      Top = 23
      Width = 270
      Height = 21
      TabOrder = 0
      OnChange = cbAlmoxarifadoChange
      ReadOnly = True
      LookupSelect = 'AMX_CODIGO, AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      GridAutoSize = False
      LookupSource = qAlmoxarifado
      LookupKeyField = 'AMX_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Selecione o Almoxarifado'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      LookupDbGridColumns = 'AMX_CODIGO, AMX_DESCRI'
      LookupDbGridColumnsTitle = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edAlmoxarifado: TEdit
      Left = 91
      Top = 23
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 272
    Top = 464
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 72
    Top = 456
  end
  inherited qAux: TFDQuery
    Left = 83
    Top = 392
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 480
    Top = 464
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 368
    Top = 464
  end
  inherited FDTransac: TFDTransaction
    Left = 352
    Top = 392
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 160
    Top = 456
  end
  inherited qAux2: TFDQuery
    Left = 155
    Top = 391
  end
  inherited qAux3: TFDQuery
    Left = 219
    Top = 391
  end
  inherited qAux4: TFDQuery
    Left = 283
    Top = 391
  end
  inherited dbConn: TFDConnection
    Left = 27
    Top = 392
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 440
    Top = 392
  end
  object qAlmoxarifado: TSQLQuery
    Params = <>
    Left = 360
    Top = 149
  end
end
