object FormOrdServGera: TFormOrdServGera
  Left = 287
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Abertura de  Ordem de Produ'#231#227'o'
  ClientHeight = 418
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpRef: TGroupBox
    Left = 0
    Top = 0
    Width = 418
    Height = 212
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 44
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 68
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label3: TLabel
      Left = 9
      Top = 140
      Width = 51
      Height = 13
      Caption = 'Pedido N'#186':'
    end
    object Label14: TLabel
      Left = 18
      Top = 93
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label15: TLabel
      Left = 6
      Top = 20
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' da O.P.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 29
      Top = 116
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpProduto: TSpeedButton
      Left = 163
      Top = 41
      Width = 24
      Height = 21
      Hint = 'Busca Material'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
        8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
        29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpProdutoClick
    end
    object EdtCLI_RAZAO: TEdit
      Left = 108
      Top = 137
      Width = 305
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 6
    end
    object EdtPRD_REFER: TEdit
      Left = 62
      Top = 41
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 11
      TabOrder = 1
      OnExit = EdtPRD_REFERExit
    end
    object Edt_Pedido: TEdit
      Left = 62
      Top = 137
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 5
      OnClick = Edt_PedidoClick
      OnEnter = Edt_PedidoEnter
      OnExit = Edt_PedidoExit
      OnKeyPress = EdtORDEMKeyPress
    end
    object Num_Preco: TCurrencyEdit
      Left = 62
      Top = 113
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;- ,0.00'
      TabOrder = 4
    end
    object EdtPrd_Descri: TEdit
      Left = 62
      Top = 65
      Width = 351
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 50
      ReadOnly = True
      TabOrder = 2
      OnExit = EdtPRD_REFERExit
    end
    object EdtORDEM: TEdit
      Left = 62
      Top = 17
      Width = 98
      Height = 21
      MaxLength = 6
      TabOrder = 0
      OnExit = EdtORDEMExit
      OnKeyPress = EdtORDEMKeyPress
    end
    object DtEmissao: TJvDateEdit
      Left = 62
      Top = 89
      Width = 90
      Height = 21
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 3
      OnEnter = DtEmissaoEnter
      OnExit = DtEmissaoExit
    end
  end
  object GrpOp: TGroupBox
    Left = 416
    Top = 0
    Width = 196
    Height = 212
    Caption = 'O.P.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LblQtdeOP: TLabel
      Left = 4
      Top = 21
      Width = 110
      Height = 13
      Caption = 'Quantidade por Ordem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblOGerar: TLabel
      Left = 9
      Top = 45
      Width = 105
      Height = 13
      Caption = 'N'#186' de Ordens a Gerar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblProduz: TLabel
      Left = 38
      Top = 69
      Width = 76
      Height = 13
      Caption = 'Total '#224' produzir:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CurrQtdeOP: TCurrencyEdit
      Left = 116
      Top = 17
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
    end
    object CurrOPGerar: TCurrencyEdit
      Left = 116
      Top = 41
      Width = 33
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      ParentFont = False
      TabOrder = 1
      Value = 1.000000000000000000
      OnExit = CurrOPGerarExit
    end
    object CurrQtde: TCurrencyEdit
      Left = 116
      Top = 65
      Width = 75
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GrpVar: TGroupBox
    Left = 610
    Top = 0
    Width = 178
    Height = 212
    Caption = 'Quantidade por Varia'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DbtMod1: TDBText
      Left = 4
      Top = 21
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR1'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbtMod2: TDBText
      Left = 4
      Top = 45
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR2'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbtMod3: TDBText
      Left = 4
      Top = 69
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR3'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbtMod4: TDBText
      Left = 4
      Top = 93
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR4'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbtMod5: TDBText
      Left = 4
      Top = 117
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR5'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblMod1: TLabel
      Left = 90
      Top = 19
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMod2: TLabel
      Left = 90
      Top = 43
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMod3: TLabel
      Left = 90
      Top = 67
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMod4: TLabel
      Left = 90
      Top = 91
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblMod5: TLabel
      Left = 90
      Top = 115
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbtMod6: TDBText
      Left = 4
      Top = 141
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR6'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblMod6: TLabel
      Left = 90
      Top = 139
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbtMod7: TDBText
      Left = 4
      Top = 165
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR7'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblMod7: TLabel
      Left = 90
      Top = 163
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbtMod8: TDBText
      Left = 4
      Top = 189
      Width = 85
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRD_DCVAR8'
      DataSource = DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LblMod8: TLabel
      Left = 90
      Top = 187
      Width = 5
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrMod1: TCurrencyEdit
      Left = 95
      Top = 17
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
    end
    object CurrMod2: TCurrencyEdit
      Left = 95
      Top = 41
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
    end
    object CurrMod3: TCurrencyEdit
      Left = 95
      Top = 65
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
    end
    object CurrMod4: TCurrencyEdit
      Left = 95
      Top = 89
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
    end
    object CurrMod5: TCurrencyEdit
      Left = 95
      Top = 113
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
    end
    object CurrMod6: TCurrencyEdit
      Left = 95
      Top = 137
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
    end
    object CurrMod7: TCurrencyEdit
      Left = 95
      Top = 161
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
    end
    object CurrMod8: TCurrencyEdit
      Left = 95
      Top = 185
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 507
    Top = 384
    Width = 281
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 10841658
    TabOrder = 3
    object Bit_Gravar: TBitBtn
      Left = 4
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = 'C&ancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 186
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        0400000000005401000000000000000000001000000000000000000000000000
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object GbObs: TGroupBox
    Left = 0
    Top = 212
    Width = 788
    Height = 165
    Caption = 'Observa'#231#245'es da Ordem de Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Panel1: TPanel
      Left = 4
      Top = 16
      Width = 781
      Height = 145
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object EdtOsv_obs1: TEdit
        Left = 1
        Top = 2
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 0
      end
      object EdtOsv_obs2: TEdit
        Left = 1
        Top = 22
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 1
      end
      object EdtOsv_Obs3: TEdit
        Left = 1
        Top = 42
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 2
      end
      object EdtOsv_obs4: TEdit
        Left = 1
        Top = 62
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 3
      end
      object EdtOsv_obs5: TEdit
        Left = 1
        Top = 82
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 4
      end
      object EdtOsv_obs6: TEdit
        Left = 1
        Top = 102
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 5
      end
      object EdtOsv_obs7: TEdit
        Left = 1
        Top = 122
        Width = 777
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 6
      end
    end
  end
  object Edit1: TEdit
    Left = 344
    Top = 384
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
    Visible = False
  end
  object SqlCdsPedido: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P1.PED_CODIGO,'#13#10'P1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO'#13#10'from PED00' +
      '00 P1'#13#10'left join CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P1.PED_CODIGO,'#13#10'P1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO'#13#10'from PED00' +
      '00 P1'#13#10'left join CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 169
    object SqlCdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPedidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
  end
  object SqlCdsFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F1.'#13#10'*,P1.PRD_DESCRI,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P' +
      '1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P' +
      '1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8 '#13#10'from FTC0000 F1 '#13#10'LEFT JOIN PRD00' +
      '00 P1 ON F1.PRD_REFER = P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F1.'#13#10'*,P1.PRD_DESCRI,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P' +
      '1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P' +
      '1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8 '#13#10'from FTC0000 F1 '#13#10'LEFT JOIN PRD00' +
      '00 P1 ON F1.PRD_REFER = P1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 13
    object SqlCdsFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsFichaTecFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsFichaTecFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlCdsFichaTecFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlCdsFichaTecFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlCdsFichaTecFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      Precision = 15
    end
    object SqlCdsFichaTecFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      Precision = 15
    end
    object SqlCdsFichaTecFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      Precision = 15
    end
    object SqlCdsFichaTecFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      Precision = 15
    end
    object SqlCdsFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsFichaTecPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsFichaTecPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsFichaTecPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object DsFichaTec: TDataSource
    DataSet = SqlCdsFichaTec
    Left = 229
    Top = 13
  end
  object SqlCdsItensFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 169
    object SqlCdsItensFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsItensFicha2: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 264
    Top = 169
    object SqlCdsItensFicha2FTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFicha2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFicha2PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFicha2FTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFicha2FTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFicha2FTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFicha2FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFicha2FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFicha2FTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFicha2EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFicha2FTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFicha2FTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFicha2FTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFicha2FTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFicha2PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsItensFicha3: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 296
    Top = 169
    object SqlCdsItensFicha3FTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFicha3PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFicha3PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFicha3FTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFicha3FTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFicha3FTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFicha3FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFicha3FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFicha3FTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFicha3EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFicha3FTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFicha3FTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFicha3FTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFicha3FTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFicha3PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsItensFicha4: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 328
    Top = 169
    object SqlCdsItensFicha4FTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFicha4PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFicha4PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFicha4FTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFicha4FTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFicha4FTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFicha4FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFicha4FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFicha4FTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFicha4EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFicha4FTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFicha4FTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFicha4FTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFicha4FTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFicha4PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsItensFicha5: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.*,'#13#10'P1.PTI_SIGLA'#13#10'from FTC_IT01 I1'#13#10'LEFT JOIN PRD0000' +
      ' P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)'#13#10'LEFT JOIN PRD_TIPO P' +
      '1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 360
    Top = 169
    object SqlCdsItensFicha5FTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFicha5PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFicha5PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFicha5FTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFicha5FTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFicha5FTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFicha5FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFicha5FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFicha5FTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFicha5EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFicha5FTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFicha5FTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFicha5FTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFicha5FTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFicha5PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
end
