object FormOpcoesNF: TFormOpcoesNF
  Left = 137
  Top = 228
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Op'#231#245'es Nota Fiscal'
  ClientHeight = 248
  ClientWidth = 585
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
  object Bit_Ok: TBitBtn
    Left = 7
    Top = 215
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = False
    OnClick = Bit_OkClick
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
  object Bit_Sair: TBitBtn
    Left = 126
    Top = 215
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
  object GroupBox1: TGroupBox
    Left = 7
    Top = 3
    Width = 171
    Height = 206
    Caption = 'Opc'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object RadNota: TRadioButton
      Left = 15
      Top = 25
      Width = 113
      Height = 17
      Caption = '&Nota Fiscal'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadNotaClick
    end
    object RadPreNota: TRadioButton
      Left = 15
      Top = 50
      Width = 113
      Height = 17
      Caption = '&Pr'#233'-Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadPreNotaClick
    end
    object RadMinuta: TRadioButton
      Left = 15
      Top = 75
      Width = 113
      Height = 17
      Caption = '&Minuta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadEstorno: TRadioButton
      Left = 15
      Top = 125
      Width = 113
      Height = 17
      Caption = 'E&storno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = RadEstornoClick
    end
    object RadEtiquetas: TRadioButton
      Left = 15
      Top = 150
      Width = 113
      Height = 17
      Caption = '&Etiquetas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = RadEtiquetasClick
    end
    object RadRecibo: TRadioButton
      Left = 15
      Top = 100
      Width = 113
      Height = 17
      Caption = '&Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = RadReciboClick
    end
    object RadCaract: TRadioButton
      Left = 15
      Top = 175
      Width = 148
      Height = 17
      Caption = '&Fichas dos Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = RadCaractClick
    end
  end
  object Gp_Etiqueta: TGroupBox
    Left = 203
    Top = 13
    Width = 266
    Height = 122
    Caption = 'ETIQUETAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label8: TLabel
      Left = 54
      Top = 88
      Width = 84
      Height = 13
      Caption = 'Nota Fiscal Final :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 46
      Top = 57
      Width = 92
      Height = 13
      Caption = 'Nota Fiscal  Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 15
      Top = 24
      Width = 150
      Height = 13
      Caption = 'Qtde de Etiquetas  Nota Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdtFim: TEdit
      Left = 141
      Top = 85
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      Text = 'EdtFim'
      OnExit = EdtFimExit
    end
    object EdtInicio: TEdit
      Left = 141
      Top = 54
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      Text = 'EdtInicio'
      OnExit = EdtInicioExit
    end
    object EditQtde: TEdit
      Left = 167
      Top = 21
      Width = 39
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      Text = 'EditQtde'
      OnExit = EdtInicioExit
      OnKeyPress = EditQtdeKeyPress
    end
  end
end
