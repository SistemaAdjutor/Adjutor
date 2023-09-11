object FormOrdServGerar: TFormOrdServGerar
  Left = 244
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar Ordem de Produ'#231#227'o'
  ClientHeight = 261
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 0
    Top = 152
    Width = 320
    Height = 62
    TabOrder = 2
    object Label3: TLabel
      Left = 6
      Top = 25
      Width = 39
      Height = 13
      Caption = 'N'#186' Lote:'
    end
    object Label4: TLabel
      Left = 170
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Edt_Lote: TEdit
      Left = 45
      Top = 23
      Width = 107
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DtEmissao: TDateEdit
      Left = 213
      Top = 23
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = DtEmissaoEnter
      OnExit = DtEmissaoExit
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 55
    Width = 153
    Height = 62
    TabOrder = 1
    object Rad_OA: TRadioButton
      Left = 8
      Top = 10
      Width = 113
      Height = 17
      Caption = 'Ordens &Abertas'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RAD_OR: TRadioButton
      Left = 8
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Ordens c/&Reservas'
      TabOrder = 1
    end
    object RAD_OP: TRadioButton
      Left = 8
      Top = 40
      Width = 121
      Height = 17
      Caption = 'Ordens em &Produ'#231#227'o'
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 337
    Height = 62
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 28
      Width = 58
      Height = 13
      Caption = '&Quantidade:'
    end
    object Label2: TLabel
      Left = 173
      Top = 28
      Width = 152
      Height = 13
      Caption = 'M'#225'xima por Ordem de Produ'#231#227'o'
    end
    object CurrQtde: TCurrencyEdit
      Left = 65
      Top = 25
      Width = 98
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ZeroEmpty = False
    end
  end
  object Pan_Menu: TPanel
    Left = 126
    Top = 224
    Width = 211
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 3
    object Bit_Sair: TBitBtn
      Left = 105
      Top = 5
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SairClick
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
    end
    object Bit_Gerar: TBitBtn
      Left = 5
      Top = 5
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GerarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FFA46769FEE9C7C6CC93D5CE96F2D0A0E7
        CA91E9C588EDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FFFF00FF
        A46769FCEACE99C0772D98226FAC4E2091162191165FA139CAB770E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FFFF00FFA0675BFEEFDABFCE99108C0D00820100
        820100820100820129921ADEBB7DE9BD7FEFC481A46769FF00FFFF00FFFF00FF
        A0675BFFF4E5BDD19F138F0F0082011B9114A9BD7573AB4D04840377A948EABF
        81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF0BCD5A70A8A0A00820104
        860482B55FF0D0A9A5B76E6DAD4EEBC28AEFC583A46769FF00FFFF00FFFF00FF
        A7756BFFFFFCE1E7D0A4CC9099C68193C17799C077EED4AFF0D0A79FC279EBC7
        93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFA7D9A4FAEFE6F4E9D59D
        C68495C17797BF759FBD75EACFA3EECC9EF3CE97A46769FF00FFFF00FFFF00FF
        BC8268FFFFFF74C575B0D8A9FAEFE684C1760586040082010A8909F3D4B0F0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFF81CA820586057AC475AF
        D4A01C9518008201138E0FF3D9B8F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
        D1926DFFFFFFF3FAF32DA12D008201008201008201008201118E0FFBEACEDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFDDF2DD67BF6724
        9C2422992175BF6B2D9926956D56A56B5FA56B5FA46769FF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFE1F3E1E0F2DDFFFEF7ACB6928B6E51E19E
        55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
        926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    end
  end
end
