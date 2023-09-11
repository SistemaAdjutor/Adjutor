inherited frmEnfIndustrializacoSelecionaCor: TfrmEnfIndustrializacoSelecionaCor
  Caption = 'Serleciona Cor'
  ClientHeight = 142
  ClientWidth = 418
  OnActivate = FormActivate
  ExplicitWidth = 426
  ExplicitHeight = 169
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 418
    Height = 25
    Align = alTop
    Caption = 'Seleciona Cor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 579
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 101
    Width = 418
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 165
    ExplicitWidth = 579
    object btGravar: TBitBtn
      Left = 89
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancelar: TBitBtn
      Left = 208
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 25
    Width = 418
    Height = 76
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 579
    ExplicitHeight = 140
    object Label5: TLabel
      Left = 32
      Top = 30
      Width = 21
      Height = 13
      Caption = 'Cor:'
    end
    object cbCor: TSgDbSearchCombo
      Left = 59
      Top = 27
      Width = 270
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'ACO_NOME, ACO_CODIGO'
      LookupOrderBy = 'ACO_NOME'
      LookupTable = 'ACABAMENTO_CORES'
      LookupDispl = 'ACO_NOME'
      OnSelect = cbCorSelect
      GridAutoSize = False
      LookupSource = qCor
      LookupKeyField = 'ACO_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Cores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Cor'
      LookupDbGridColumns = 'ACO_NOME, ACO_CODIGO,'
      LookupDbGridColumnsTitle = 'Nome, C'#243'digo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 616
    Top = 16
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 608
  end
  inherited qAux: TFDQuery
    Left = 747
    Top = 136
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 816
    Top = 0
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 752
    Top = 0
  end
  inherited FDTransac: TFDTransaction
    Left = 728
    Top = 56
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 816
    Top = 56
  end
  inherited qAux2: TFDQuery
    Left = 795
    Top = 135
  end
  inherited qAux3: TFDQuery
    Left = 835
    Top = 135
  end
  inherited qAux4: TFDQuery
    Left = 875
    Top = 135
  end
  inherited dbConn: TFDConnection
    Left = 611
    Top = 176
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 672
    Top = 128
  end
  object qCor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_CORES ORDER BY ACO_NOME')
    SQLConnection = DBInicio.MainDB
    Left = 359
    Top = 47
  end
end
