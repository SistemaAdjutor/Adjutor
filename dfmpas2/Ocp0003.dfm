object FormOcpItem: TFormOcpItem
  Left = 246
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item da Ordem de Compra'
  ClientHeight = 271
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 6
    Top = 231
    Width = 461
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = clTeal
    TabOrder = 0
    object Bit_novo: TSpeedButton
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Caption = '&Incluir Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TSpeedButton
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Caption = 'E&xcluir Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 185
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarClick
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
    end
    object Bit_Cancelar: TBitBtn
      Left = 275
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
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
    end
    object Bit_Sair: TBitBtn
      Left = 365
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 12
    Top = 7
    Width = 451
    Height = 215
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 59
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 86
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 46
      Top = 113
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 60
      Top = 140
      Width = 16
      Height = 13
      Caption = 'IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 31
      Top = 167
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 190
      Top = 28
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label7: TLabel
      Left = 273
      Top = 86
      Width = 42
      Height = 13
      Caption = 'Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeDescricao: TDBEdit
      Left = 78
      Top = 55
      Width = 320
      Height = 21
      DataField = 'PRD_DESCRI_CC'
      DataSource = DataModulo.DsOrdCompItem
      ReadOnly = True
      TabOrder = 1
    end
    object DbeQtde: TDBEdit
      Left = 78
      Top = 82
      Width = 80
      Height = 21
      DataField = 'OCI_QTDE'
      DataSource = DataModulo.DsOrdCompItem
      TabOrder = 2
      OnEnter = DbeQtdeEnter
    end
    object DbePreco: TDBEdit
      Left = 78
      Top = 109
      Width = 80
      Height = 21
      DataField = 'OCI_PRECO'
      DataSource = DataModulo.DsOrdCompItem
      TabOrder = 3
    end
    object DbeIPI: TDBEdit
      Left = 78
      Top = 136
      Width = 34
      Height = 21
      DataField = 'OCI_IPI'
      DataSource = DataModulo.DsOrdCompItem
      TabOrder = 4
    end
    object DbeSituacao: TDBEdit
      Left = 78
      Top = 163
      Width = 18
      Height = 21
      DataField = 'OCI_SITUACAO'
      DataSource = DataModulo.DsOrdCompItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EditMaterial: TEdit
      Left = 78
      Top = 28
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 11
      ReadOnly = True
      TabOrder = 0
      OnExit = EditMaterialExit
    end
    object DBNavigator1: TDBNavigator
      Left = 322
      Top = 9
      Width = 120
      Height = 25
      DataSource = DataModulo.DsOrdCompItem
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 6
      OnClick = DBNavigator1Click
    end
    object DbeEstoque: TDBEdit
      Left = 317
      Top = 82
      Width = 80
      Height = 21
      Color = 14145495
      DataField = 'PRD_FISICO_CC'
      DataSource = DataModulo.DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
  end
end
