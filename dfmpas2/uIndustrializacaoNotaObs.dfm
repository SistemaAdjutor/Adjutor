object frmIndustrializacaoNotaObs: TfrmIndustrializacaoNotaObs
  Left = 0
  Top = 0
  Caption = 'Observa'#231#245'es da Nota de Indutrializa'#231#227'o'
  ClientHeight = 303
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 71
    Width = 465
    Height = 191
    Align = alClient
    Caption = 'Observa'#231#227'o'
    TabOrder = 0
    ExplicitTop = 41
    ExplicitHeight = 221
    object mmoObservacao: TMemo
      Left = 2
      Top = 15
      Width = 461
      Height = 174
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 204
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 465
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      465
      41)
    object BitConfirmar: TBitBtn
      Left = 131
      Top = 9
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitConfirmarClick
    end
    object BitCancelar: TBitBtn
      Left = 235
      Top = 9
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancela&r'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 71
    Align = alTop
    TabOrder = 2
    DesignSize = (
      465
      71)
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 30
      Top = 41
      Width = 27
      Height = 13
      Caption = 'Peso:'
    end
    object BtnConsulta: TBitBtn
      Left = 357
      Top = 9
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Consulta'
      Anchors = [akTop, akRight]
      Caption = 'C&onsulta'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BtnConsultaClick
    end
    object edCodigo: TMaskEdit
      Left = 63
      Top = 10
      Width = 47
      Height = 21
      MaxLength = 5
      TabOrder = 1
      Text = ''
      OnExit = edCodigoExit
    end
    object edNome: TSgDbSearchCombo
      Left = 118
      Top = 10
      Width = 232
      Height = 21
      TabOrder = 2
      LookupSelect = 'CLI_CODIGO, CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      LookupDispl = 'CLI_RAZAO'
      OnSelect = edNomeSelect
      GridAutoSize = False
      LookupSource = qCliente
      LookupKeyField = 'CLI_CODIGO'
      FiltroTabela = 'CLI_INATIVO = '#39'A'#39
      ShowButton = False
      AutoF8WinTitulo = 'Cadastro de Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Raz'#227'o Social'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edPeso: TJvValidateEdit
      Left = 63
      Top = 37
      Width = 100
      Height = 22
      AllowEmpty = True
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 3
      EditText = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object qCliente: TSQLQuery
    Params = <>
    Left = 280
    Top = 65
  end
end
