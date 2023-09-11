object FrmPedidoReajuste: TFrmPedidoReajuste
  Left = 624
  Top = 315
  Caption = 'Reajuste de Valores'
  ClientHeight = 315
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 8
    Top = 219
    Width = 279
    Height = 56
    Caption = 
      'Por se tratar de calculos com percentual, dependendo da quantida' +
      'de de  itens do pedido pode haver dieferen'#231'a de centavos, estes ' +
      'dever'#227'o ser corrigidos alterando o valor unit'#225'rio do item. (Fun'#231 +
      #227'o trabalha com 2 casas decimais)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 298
    Height = 49
    Align = alTop
    Caption = 'Total'
    Enabled = False
    TabOrder = 0
    object Label31: TLabel
      Left = 16
      Top = 18
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 147
      Top = 18
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CurTotalProduto: TCurrencyEdit
      Left = 64
      Top = 16
      Width = 73
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CurTotalPedido: TCurrencyEdit
      Left = 184
      Top = 16
      Width = 73
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 49
    Width = 298
    Height = 80
    Align = alTop
    Caption = 'Reajuste'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 50
      Width = 54
      Height = 14
      Alignment = taRightJustify
      Caption = 'Percentual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 149
      Top = 23
      Width = 7
      Height = 8
      AutoSize = True
      Picture.Data = {
        07544269746D6170F6000000424DF60000000000000036000000280000000700
        0000080000000100180000000000C0000000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFD6EBD6008000D1E8D1FFFFFFFFFFFF000000FFFFFFFFFFFF
        D6EBD6008000D1E8D1FFFFFFFFFFFF000000FFFFFFFFFFFFD6EBD6008000D1E8
        D1FFFFFFFFFFFF00000059AC5968B468D6EBD6008000D1E8D177BB7753A95300
        0000E4F2E40F870FB1D8B1008000AED7AE0F870FDFEFDF000000FFFFFF86C386
        399C3900800033993388C488FFFFFF000000FFFFFFF9FCF91F8F1F0582052492
        24FAFDFAFFFFFF000000FFFFFFFFFFFFB7DBB7379B37C4E2C4FFFFFFFFFFFF00
        0000}
    end
    object Image2: TImage
      Left = 33
      Top = 25
      Width = 7
      Height = 8
      AutoSize = True
      Picture.Data = {
        07544269746D6170F6000000424DF60000000000000036000000280000000700
        0000080000000100180000000000C0000000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFF9191DA0000AA8484D6FFFFFFFFFFFF000000FFFFFFEBEBF8
        1111B00000AA0F0FAFE8E8F7FFFFFF000000FFFFFF6060CA5252C50000AA5858
        C76161CAFFFFFF000000C1C1EA1414B1C2C2EB0000AAC4C4EB1111B0C9C9ED00
        00007272D0A8A8E2D2D2F00000AAD5D5F19C9CDE7575D1000000FFFFFFFFFFFF
        D2D2F00000AAD5D5F1FFFFFFFFFFFF000000FFFFFFFFFFFFD2D2F00000AAD5D5
        F1FFFFFFFFFFFF000000FFFFFFFFFFFFDDDDF43F3FBFE0E0F5FFFFFFFFFFFF00
        0000}
    end
    object RbAumenta: TRadioButton
      Left = 163
      Top = 21
      Width = 73
      Height = 17
      Hint = 'Aumenta o Pre'#231'o Bruto'
      Caption = '&Aumentar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = RbAumentaClick
    end
    object RbDiminui: TRadioButton
      Left = 47
      Top = 21
      Width = 75
      Height = 17
      Hint = 'Aplicar desconto sobre Pre'#231'o Bruto'
      Caption = '&Desconto'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      OnClick = CurrPercenteChange
    end
    object CurrPercente: TCurrencyEdit
      Left = 64
      Top = 48
      Width = 73
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 5
      DisplayFormat = ',0.00000%;-,0.00000%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxValue = 100.000000000000000000
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
      OnChange = CurrPercenteChange
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 129
    Width = 298
    Height = 49
    Align = alTop
    Caption = 'Novo Total (Aproximado)'
    TabOrder = 2
    TabStop = True
    object Label2: TLabel
      Left = 16
      Top = 18
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 147
      Top = 18
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CurTotalProdutoNovo: TCurrencyEdit
      Left = 64
      Top = 16
      Width = 73
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ZeroEmpty = False
      OnExit = CurTotalProdutoNovoExit
    end
    object CurTotalPedidoNovo: TCurrencyEdit
      Left = 184
      Top = 16
      Width = 73
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 196
    Top = 187
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 92
    Top = 187
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Bit_GravarClick
  end
  object btnRestaurar: TBitBtn
    Left = 4
    Top = 283
    Width = 285
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Restaurar Pre'#231'o Original'
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnRestaurarClick
  end
end
