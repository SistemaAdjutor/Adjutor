object FormManutMovCel: TFormManutMovCel
  Left = 199
  Top = 195
  BorderIcons = [biSystemMenu]
  Caption = 'Manuten'#231#227'o Movimentos de C'#233'lula'
  ClientHeight = 217
  ClientWidth = 391
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
  object Panel1: TPanel
    Left = 8
    Top = 6
    Width = 384
    Height = 185
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 21
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 42
      Top = 47
      Width = 32
      Height = 13
      Caption = 'C'#233'lula:'
    end
    object Label3: TLabel
      Left = 45
      Top = 78
      Width = 30
      Height = 13
      Caption = 'O.P.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 107
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label5: TLabel
      Left = 49
      Top = 136
      Width = 25
      Height = 13
      Caption = 'TUP:'
    end
    object Label6: TLabel
      Left = 200
      Top = 136
      Width = 73
      Height = 13
      Caption = 'Pre'#231'o Unit'#225'rio.:'
    end
    object Label7: TLabel
      Left = 8
      Top = 163
      Width = 66
      Height = 13
      Caption = 'Data Entrada:'
    end
    object Label8: TLabel
      Left = 191
      Top = 163
      Width = 82
      Height = 13
      Caption = 'Data Finaliza'#231#227'o:'
    end
    object Label9: TLabel
      Left = 214
      Top = 109
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object DBEdtCelCodigo: TDBEdit
      Left = 76
      Top = 17
      Width = 35
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'CEL_CODIGO'
      DataSource = FormMovCelulas.DsMovCelula
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 76
      Top = 43
      Width = 295
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'CEL_NOME'
      DataSource = FormMovCelulas.DsMovCelula
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdtTup: TDBEdit
      Left = 76
      Top = 132
      Width = 95
      Height = 21
      DataField = 'CEM_TUPTRAB'
      DataSource = FormMovCelulas.DsMovCelula
      TabOrder = 4
    end
    object DBEdtPUnit: TDBEdit
      Left = 275
      Top = 132
      Width = 95
      Height = 21
      DataField = 'CEM_PRECOUNIT'
      DataSource = FormMovCelulas.DsMovCelula
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 76
      Top = 74
      Width = 80
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'OSV_CODIGO'
      DataSource = FormMovCelulas.DsMovCelula
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 76
      Top = 104
      Width = 95
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_REFER'
      DataSource = FormMovCelulas.DsMovCelula
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdtQtde: TDBEdit
      Left = 274
      Top = 104
      Width = 95
      Height = 21
      DataField = 'OSV_QTDE'
      DataSource = FormMovCelulas.DsMovCelula
      TabOrder = 3
    end
    object DbDt_Entrada: TJvDBDateEdit
      Left = 76
      Top = 159
      Width = 95
      Height = 21
      DataField = 'CEM_DTENTROU'
      DataSource = FormMovCelulas.DsMovCelula
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 6
      OnExit = DbDt_EntradaExit
    end
    object DbDt_Conclusao: TJvDBDateEdit
      Left = 275
      Top = 159
      Width = 95
      Height = 21
      DataField = 'CEM_DTCONCLUIU'
      DataSource = FormMovCelulas.DsMovCelula
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 7
      OnExit = DbDt_ConclusaoExit
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 112
    Top = 200
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
  object Bit_Cancelar: TBitBtn
    Left = 202
    Top = 200
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
    OnClick = Bit_CancelarClick
  end
  object Bit_Sair: TBitBtn
    Left = 292
    Top = 200
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = False
    OnClick = Bit_SairClick
  end
  object Bit_Excluir: TBitBtn
    Left = 22
    Top = 200
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = '|Exclui registro atual..'
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
    TabOrder = 4
    TabStop = False
    OnClick = Bit_ExcluirClick
  end
end
