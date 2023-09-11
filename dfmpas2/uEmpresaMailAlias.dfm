inherited frmEmpresaMailAlias: TfrmEmpresaMailAlias
  Caption = 'Configurar os Ali'#225's dos Emails da Empresa'
  ClientHeight = 146
  ClientWidth = 477
  ExplicitWidth = 485
  ExplicitHeight = 173
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 477
    Height = 50
    Align = alTop
    Caption = 'NFE'
    TabOrder = 0
    ExplicitWidth = 542
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Usu'#225'rio (e-mail)'
    end
    object edEmpNFEMailAlias: TEdit
      Left = 97
      Top = 18
      Width = 344
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 50
    Width = 477
    Height = 50
    Align = alTop
    Caption = 'Financeiro'
    TabOrder = 1
    ExplicitWidth = 542
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 75
      Height = 13
      Caption = 'Usu'#225'rio (e-mail)'
    end
    object edEmpFinanceiroMailAlias: TEdit
      Left = 97
      Top = 17
      Width = 344
      Height = 21
      TabOrder = 0
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 100
    Width = 477
    Height = 46
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 112
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Bit_Excluir: TBitBtn
      Left = 117
      Top = 10
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclui registro atual'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 216
      Top = 10
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Hint = 'Grava registro'
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Sair: TBitBtn
      Left = 315
      Top = 10
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 472
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 472
    Top = 56
  end
  inherited DBConn: TSQLConnection
    Left = 472
    Top = 105
  end
  inherited qAux: TSQLQuery
    Left = 474
    Top = 157
  end
  inherited qAux2: TSQLQuery
    Left = 474
    Top = 204
  end
  inherited qAux3: TSQLQuery
    Left = 474
    Top = 260
  end
end
