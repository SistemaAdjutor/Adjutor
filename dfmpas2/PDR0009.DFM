object FormEntraSai: TFormEntraSai
  Left = 85
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada e Saída de Estoque'
  ClientHeight = 214
  ClientWidth = 438
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 7
    Width = 40
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 73
    Width = 36
    Height = 13
    Caption = 'Tipo de'
  end
  object Label3: TLabel
    Left = 151
    Top = 118
    Width = 26
    Height = 13
    Caption = 'Qtde:'
  end
  object Label4: TLabel
    Left = 22
    Top = 47
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label5: TLabel
    Left = 13
    Top = 84
    Width = 50
    Height = 13
    Caption = 'Operação:'
    Transparent = True
  end
  object Label7: TLabel
    Left = 37
    Top = 118
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label8: TLabel
    Left = 16
    Top = 142
    Width = 47
    Height = 13
    Caption = 'Docto Nº:'
  end
  object Label10: TLabel
    Left = 170
    Top = 143
    Width = 32
    Height = 13
    Caption = 'Docto:'
  end
  object DbRadPes_tipo: TDBRadioGroup
    Left = 65
    Top = 65
    Width = 185
    Height = 46
    Columns = 2
    DataField = 'PES_TIPO'
    DataSource = DataModulo.DsEntraSai
    Items.Strings = (
      'Entrada'
      'Saída')
    TabOrder = 2
    Values.Strings = (
      'E'
      'S')
  end
  object EdtPrd_Refer: TEdit
    Left = 65
    Top = 5
    Width = 48
    Height = 21
    MaxLength = 4
    TabOrder = 0
    OnExit = EdtPrd_ReferExit
  end
  object Panel1: TPanel
    Left = 5
    Top = 35
    Width = 427
    Height = 4
    Color = clHighlight
    TabOrder = 9
  end
  object DBNavigator1: TDBNavigator
    Left = 213
    Top = 5
    Width = 116
    Height = 25
    DataSource = DataModulo.DsEntraSai
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object DBePes_qtde: TDBEdit
    Left = 179
    Top = 115
    Width = 70
    Height = 21
    DataField = 'PES_QTDE'
    DataSource = DataModulo.DsEntraSai
    MaxLength = 7
    TabOrder = 4
  end
  object DBLKcboxPrd_descri: TDBLookupComboBox
    Left = 65
    Top = 45
    Width = 288
    Height = 21
    DataField = 'PRD_REFER'
    DataSource = DataModulo.DsEntraSai
    Enabled = False
    KeyField = 'PRD_REFER'
    ListField = 'PRD_DESCRI;PRD_REFER'
    ListSource = DataModulo.DsProduto
    TabOrder = 1
    OnCloseUp = DBLKcboxPrd_descriCloseUp
  end
  object DBePes_numdoc: TDBEdit
    Left = 65
    Top = 140
    Width = 65
    Height = 21
    DataField = 'PES_NUMDOC'
    DataSource = DataModulo.DsEntraSai
    MaxLength = 6
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 4
    Top = 169
    Width = 430
    Height = 34
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 8
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Caption = '&Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
    end
    object Bit_Excluir: TBitBtn
      Left = 145
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Cancel = True
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 215
      Top = 4
      Width = 70
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
      TabOrder = 1
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
      Left = 285
      Top = 4
      Width = 70
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
      TabOrder = 2
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
      Left = 355
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 75
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
  end
  object DbListPes_TipoDoc: TDBListBox
    Left = 205
    Top = 140
    Width = 45
    Height = 19
    DataField = 'PES_TIPDOC'
    DataSource = DataModulo.DsEntraSai
    ItemHeight = 13
    Items.Strings = (
      'NF'
      'CH'
      'DP'
      'RC'
      'BQ'
      'Outros')
    TabOrder = 6
  end
  object DbDtPES_DATA: TDBDateEdit
    Left = 65
    Top = 115
    Width = 70
    Height = 21
    AssumeDefault = False
    BaseChar = '_'
    Century = True
    DataField = 'PES_DATA'
    DataSource = DataModulo.DsEntraSai
    TabOrder = 3
  end
  object Bit_Filtro: TBitBtn
    Left = 338
    Top = 5
    Width = 94
    Height = 25
    Cursor = crHandPoint
    Hint = 'Filtra por grupo de produto|'
    Caption = '&Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = Bit_FiltroClick
    Glyph.Data = {
      66010000424D66010000000000007600000028000000200000000F0000000100
      040000000000F0000000C40E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333399333
      33333333333FF333333334333339933333333733333FF3333333334333399333
      33333373333FF333333333343339933333333337333FF3333333333343399333
      33333333733FF333333333333433333333333333373333333333333333399344
      44443333333FF377777734444433334444443777773333777777333333399344
      44443333333FF377777733333433333333333333373333333333333343399333
      33333333733FF333333333343339933333333337333FF3333333334333399333
      33333373333FF333333334333339933333333733333FF3333333333333399333
      33333333333FF3333333}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
end
