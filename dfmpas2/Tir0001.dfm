object FormIRRF: TFormIRRF
  Left = 85
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'IRRF'
  ClientHeight = 359
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 33
    Top = 12
    Width = 28
    Height = 13
    Caption = 'Mês:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 343
    Top = 296
    Width = 88
    Height = 13
    Caption = 'Pessoa Juridica %:'
  end
  object Label18: TLabel
    Left = 6
    Top = 296
    Width = 116
    Height = 13
    Caption = 'VL. por Dependente R$:'
  end
  object Panel1: TPanel
    Left = 5
    Top = 50
    Width = 492
    Height = 50
    BevelInner = bvLowered
    Color = clHighlight
    TabOrder = 0
    object Label2: TLabel
      Left = 96
      Top = 10
      Width = 113
      Height = 13
      Caption = 'Base de calculo Mensal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 136
      Top = 25
      Width = 31
      Height = 13
      Caption = 'em R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 304
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Alíquota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 317
      Top = 25
      Width = 14
      Height = 13
      Caption = '(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 376
      Top = 10
      Width = 87
      Height = 13
      Caption = 'Parcela a Deduzir '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 376
      Top = 25
      Width = 86
      Height = 13
      Caption = 'do Imposto em R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 98
    Width = 492
    Height = 50
    BevelInner = bvLowered
    Color = clHighlight
    TabOrder = 1
    object Label4: TLabel
      Left = 160
      Top = 17
      Width = 19
      Height = 13
      Caption = 'Até:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 307
      Top = 15
      Width = 29
      Height = 13
      Caption = 'Isento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 396
      Top = 15
      Width = 42
      Height = 13
      Caption = '_______'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeIR_teto1: TDBEdit
      Left = 180
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_TETO1'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 5
    Top = 194
    Width = 492
    Height = 50
    BevelInner = bvLowered
    Color = clHighlight
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 17
      Width = 47
      Height = 13
      Caption = 'Acima de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 160
      Top = 18
      Width = 19
      Height = 13
      Caption = 'Até:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 15
      Width = 100
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'IR_TETO2'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      ReadOnly = True
      TabOrder = 0
    end
    object DbeIR_teto3: TDBEdit
      Left = 180
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_TETO3'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 1
    end
    object DbeIR_aliq2: TDBEdit
      Left = 300
      Top = 15
      Width = 40
      Height = 21
      DataField = 'IR_ALIQ2'
      DataSource = DataModulo.DsIRRF
      MaxLength = 5
      TabOrder = 2
    end
    object DbeIR_dedu2: TDBEdit
      Left = 370
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_DEDU2'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 3
    end
  end
  object Panel5: TPanel
    Left = 5
    Top = 242
    Width = 492
    Height = 50
    BevelInner = bvLowered
    Color = clHighlight
    TabOrder = 4
    object Label9: TLabel
      Left = 8
      Top = 17
      Width = 47
      Height = 13
      Caption = 'Acima de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 15
      Width = 100
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'IR_TETO3'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      ReadOnly = True
      TabOrder = 0
    end
    object DbeIR_aliq3: TDBEdit
      Left = 300
      Top = 15
      Width = 40
      Height = 21
      DataField = 'IR_ALIQ3'
      DataSource = DataModulo.DsIRRF
      MaxLength = 5
      TabOrder = 1
    end
    object DbeIR_dedu3: TDBEdit
      Left = 370
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_DEDU3'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 146
    Width = 492
    Height = 50
    BevelInner = bvLowered
    Color = clHighlight
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 17
      Width = 47
      Height = 13
      Caption = 'Acima de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 160
      Top = 18
      Width = 19
      Height = 13
      Caption = 'Até:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeIR_teto2: TDBEdit
      Left = 180
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_TETO2'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 1
    end
    object DbeIR_aliq1: TDBEdit
      Left = 300
      Top = 15
      Width = 40
      Height = 21
      DataField = 'IR_ALIQ1'
      DataSource = DataModulo.DsIRRF
      MaxLength = 5
      TabOrder = 2
    end
    object DbeIR_dedu1: TDBEdit
      Left = 370
      Top = 15
      Width = 100
      Height = 21
      DataField = 'IR_DEDU1'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 15
      Width = 100
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'IR_TETO1'
      DataSource = DataModulo.DsIRRF
      MaxLength = 13
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel6: TPanel
    Left = 295
    Top = 51
    Width = 2
    Height = 241
    Caption = 'Panel6'
    TabOrder = 8
  end
  object Panel7: TPanel
    Left = 356
    Top = 51
    Width = 2
    Height = 241
    Caption = 'Panel6'
    TabOrder = 9
  end
  object DbeIR_JURIDI: TDBEdit
    Left = 438
    Top = 294
    Width = 40
    Height = 21
    DataField = 'IR_JURIDI'
    DataSource = DataModulo.DsIRRF
    MaxLength = 5
    TabOrder = 6
  end
  object DbeIR_DEPEND: TDBEdit
    Left = 124
    Top = 294
    Width = 100
    Height = 21
    DataField = 'IR_DEPEND'
    DataSource = DataModulo.DsIRRF
    MaxLength = 13
    TabOrder = 5
  end
  object Panel8: TPanel
    Left = 6
    Top = 40
    Width = 489
    Height = 4
    Color = clHighlight
    TabOrder = 10
  end
  object Panel9: TPanel
    Left = 107
    Top = 320
    Width = 390
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel9'
    Color = clTeal
    TabOrder = 7
    object Bit_Cancelar: TBitBtn
      Left = 290
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 290
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Bit_novoClick
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
    end
    object Bit_Excluir: TBitBtn
      Left = 100
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Bit_ExcluirClick
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object Bit_Gravar: TBitBtn
      Left = 195
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
  end
  object DBNavigator1: TDBNavigator
    Left = 375
    Top = 10
    Width = 116
    Height = 25
    DataSource = DataModulo.DsIRRF
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 11
    OnClick = DBNavigator1Click
  end
  object EdtIR_mes: TMaskEdit
    Left = 63
    Top = 10
    Width = 57
    Height = 21
    EditMask = '00/0000;0;_'
    MaxLength = 7
    TabOrder = 12
    OnExit = EdtIR_mesExit
  end
  object Panel10: TPanel
    Left = 7
    Top = 320
    Width = 96
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 13
    object Bit_Relatorio: TBitBtn
      Left = 5
      Top = 4
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relatório'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
end
