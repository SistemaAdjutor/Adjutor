object FrmCadastroGrade: TFrmCadastroGrade
  Left = 531
  Top = 284
  Caption = 'Cadastro de Grade'
  ClientHeight = 259
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpProduto: TGroupBox
    Left = 0
    Top = 0
    Width = 569
    Height = 73
    Align = alTop
    Caption = 'Produto'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 14
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 20
      Top = 48
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Label7: TLabel
      Left = 369
      Top = 23
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtProdutoReferencia: TEdit
      Left = 76
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 0
    end
    object edtProdutoDescricao: TEdit
      Left = 76
      Top = 45
      Width = 469
      Height = 22
      Color = 14145495
      TabOrder = 1
    end
    object CurPrecoBruto: TCurrencyEdit
      Left = 443
      Top = 20
      Width = 100
      Height = 21
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 5
      DisplayFormat = ',0.000##;-,0.000##'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object grpInformaeGrade: TGroupBox
    Left = 0
    Top = 73
    Width = 569
    Height = 128
    Align = alTop
    Caption = 'Informa'#231#245'es da Grade'
    TabOrder = 1
    object lbMedida1: TLabel
      Left = 27
      Top = 49
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Medida 1:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 24
      Width = 33
      Height = 14
      Alignment = taRightJustify
      Caption = 'Grade:'
    end
    object lbMedida2: TLabel
      Left = 203
      Top = 49
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Medida 2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbMedida3: TLabel
      Left = 379
      Top = 49
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Medida 3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 26
      Top = 97
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Redu'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbIndice: TLabel
      Left = 216
      Top = 97
      Width = 31
      Height = 14
      Alignment = taRightJustify
      Caption = #205'ndice:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 392
      Top = 97
      Width = 31
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pre'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 17
      Top = 73
      Width = 54
      Height = 14
      Alignment = taRightJustify
      Caption = 'Densidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 220
      Top = 74
      Width = 27
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtGrade: TEdit
      Left = 76
      Top = 21
      Width = 469
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 40
      TabOrder = 0
    end
    object CurMedida1: TCurrencyEdit
      Left = 76
      Top = 46
      Width = 101
      Height = 21
      Hint = 'em mm'
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.####'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = CurMedida1Change
    end
    object CurMedida2: TCurrencyEdit
      Left = 252
      Top = 46
      Width = 101
      Height = 21
      Hint = 'em mm'
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.####'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = CurMedida1Change
    end
    object CurMedida3: TCurrencyEdit
      Left = 428
      Top = 46
      Width = 97
      Height = 21
      Hint = 'em metros'
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.####'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnChange = CurMedida1Change
    end
    object CurReducao: TCurrencyEdit
      Left = 76
      Top = 94
      Width = 101
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '##0.00%'
      MaxValue = 100.000000000000000000
      TabOrder = 4
      OnChange = CurMedida1Change
    end
    object CurIndice: TCurrencyEdit
      Left = 252
      Top = 94
      Width = 101
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0'
      TabOrder = 5
    end
    object CurPrecoCalculado: TCurrencyEdit
      Left = 426
      Top = 94
      Width = 97
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '###,###,###,##0.00'
      ReadOnly = True
      TabOrder = 6
    end
    object CurDensidade: TCurrencyEdit
      Left = 76
      Top = 70
      Width = 101
      Height = 21
      Hint = 'em mm'
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.####'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnChange = CurMedida1Change
    end
    object CurrPeso: TCurrencyEdit
      Left = 252
      Top = 69
      Width = 101
      Height = 21
      Hint = 'em mm'
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.####'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnChange = CurMedida1Change
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 443
    Top = 216
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
    TabOrder = 3
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 339
    Top = 216
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
    TabOrder = 2
    OnClick = Bit_GravarClick
  end
end
