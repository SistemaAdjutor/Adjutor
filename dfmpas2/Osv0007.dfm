object FormOrdServConsiderar: TFormOrdServConsiderar
  Left = 246
  Top = 216
  Width = 372
  Height = 166
  BorderIcons = []
  Caption = 'Empenho de Materiais para OP'#39's'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 1
    Top = 0
    Width = 360
    Height = 105
    TabOrder = 0
    object Rad_Sim_Considera: TRadioButton
      Left = 8
      Top = 21
      Width = 348
      Height = 17
      Caption = '&Levar em considera'#231#227'o as Qtdes de produtos no estoque'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = Rad_Sim_ConsideraClick
    end
    object Rad_Nao_Considera: TRadioButton
      Left = 8
      Top = 48
      Width = 313
      Height = 17
      Caption = '&N'#227'o considerar as Qtdes dos produtos em estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Rad_Sim_ConsideraClick
    end
    object Chk_PA: TCheckBox
      Left = 29
      Top = 64
      Width = 128
      Height = 17
      Caption = 'Produto &Acabado (PA)'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
      OnClick = Chk_PAClick
    end
    object Chk_PI: TCheckBox
      Left = 29
      Top = 81
      Width = 141
      Height = 17
      Caption = 'Produto &Intermedi'#225'rio (PI)'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
      OnClick = Chk_PIClick
    end
  end
  object Btn_OK: TBitBtn
    Left = 161
    Top = 112
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'Con&firma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Btn_OKClick
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
    Left = 261
    Top = 112
    Width = 100
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
    OnClick = Bit_CancelarClick
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
    NumGlyphs = 2
  end
end
