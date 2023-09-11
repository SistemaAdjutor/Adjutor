object FrmCadastroNaturezaContaContabil: TFrmCadastroNaturezaContaContabil
  Left = 736
  Top = 336
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Naturezas de Contas Cont'#225'beis'
  ClientHeight = 457
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 35
    Top = 13
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 42
    Top = 49
    Width = 49
    Height = 14
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 88
    Top = 16
    Width = 67
    Height = 14
    Caption = 'NCC_CODIGO'
    FocusControl = edNccCodigo
  end
  object DBNavigator1: TDBNavigator
    Left = 226
    Top = 10
    Width = 116
    Height = 25
    DataSource = dsNCC
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 5
    Top = 40
    Width = 340
    Height = 4
    Color = 12681984
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 9
    Top = 407
    Width = 335
    Height = 33
    BevelOuter = bvNone
    TabOrder = 0
    object Bit_Cancelar: TBitBtn
      Left = 244
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
    end
    object Bit_Sair: TBitBtn
      Left = 246
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
        FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
        FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
        B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
        FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
        FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 82
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 163
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = -1
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 72
    Width = 344
    Height = 329
    Caption = 'Perfils Cadastrados'
    TabOrder = 3
    object dbgrdCentros: TDBGrid
      Left = 2
      Top = 16
      Width = 340
      Height = 311
      Align = alClient
      Color = 16776176
      DataSource = dsNCC
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NCC_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCC_DESCRICAO'
          Visible = True
        end>
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 440
    Width = 349
    Height = 17
    Align = alBottom
    TabOrder = 4
  end
  object edNccCodigo: TcxDBSpinEdit
    Left = 72
    Top = 8
    DataBinding.DataField = 'NCC_CODIGO'
    DataBinding.DataSource = dsNCC
    TabOrder = 5
    OnExit = edNccCodigoExit
    Width = 121
  end
  object edNccDescricao: TcxDBTextEdit
    Left = 93
    Top = 46
    DataBinding.DataField = 'NCC_DESCRICAO'
    DataBinding.DataSource = dsNCC
    TabOrder = 6
    Width = 248
  end
  object qNCC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NATUREZA_CONTA_CONTABIL')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 33
    Top = 176
  end
  object dspNCC: TDataSetProvider
    DataSet = qNCC
    Left = 105
    Top = 176
  end
  object cdsNCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCC'
    Left = 185
    Top = 176
    object cdsNCCNCC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NCC_CODIGO'
      Required = True
    end
    object cdsNCCNCC_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NCC_DESCRICAO'
      Size = 255
    end
  end
  object dsNCC: TDataSource
    DataSet = cdsNCC
    Left = 257
    Top = 176
  end
end
