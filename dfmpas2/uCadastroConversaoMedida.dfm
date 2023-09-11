object FormCadastroConversaoMedida: TFormCadastroConversaoMedida
  Left = 470
  Top = 313
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Tabela de Convers'#227'o de Medidas'
  ClientHeight = 476
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 12
    Top = 43
    Width = 80
    Height = 14
    Caption = 'Unidade De/Para'
    FocusControl = dbedtCONV_UND_DE
  end
  object Label5: TLabel
    Left = 56
    Top = 19
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit5
  end
  object Label2: TLabel
    Left = 153
    Top = 44
    Width = 24
    Height = 14
    Caption = '< = >'
    FocusControl = dbedtCONV_UND_DE
  end
  object lblFator: TLabel
    Left = 265
    Top = 44
    Width = 28
    Height = 14
    Caption = 'Fator:'
    FocusControl = dbedtCONV_UND_DE
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 555
    Height = 14
    Caption = 
      'N'#227'o precisa cadastrar a opera'#231#227'o inversa ex: (G)Grama -> KG(Quil' +
      'ograma) e depois KG(Quilograma) -> G(Grama)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 448
    Width = 643
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bit_novo: TBitBtn
      Left = 133
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 234
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 336
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 437
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 538
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 3
      Width = 120
      Height = 25
      DataSource = DataCadastros.dsConversaoMedida
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
  object dbedtCONV_UND_DE: TDBEdit
    Left = 96
    Top = 40
    Width = 46
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CONV_UND_DE'
    DataSource = DataCadastros.dsConversaoMedida
    TabOrder = 1
  end
  object dbedtCONV_UND_PARA: TDBEdit
    Left = 192
    Top = 40
    Width = 46
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CONV_UND_PARA'
    DataSource = DataCadastros.dsConversaoMedida
    TabOrder = 2
  end
  object dbedtCONV_FATOR: TDBEdit
    Left = 296
    Top = 40
    Width = 100
    Height = 22
    DataField = 'CONV_FATOR'
    DataSource = DataCadastros.dsConversaoMedida
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 16
    Width = 81
    Height = 22
    TabStop = False
    Color = 14145495
    DataField = 'CONV_REGISTRO'
    DataSource = DataCadastros.dsConversaoMedida
    ReadOnly = True
    TabOrder = 4
  end
  object dbrgrpOperacao: TDBRadioGroup
    Left = 416
    Top = 8
    Width = 185
    Height = 57
    Caption = 'Opera'#231#227'o'
    DataField = 'CONV_OPERACAO'
    DataSource = DataCadastros.dsConversaoMedida
    Items.Strings = (
      'Divis'#227'o'
      'Multiplica'#231#227'o')
    TabOrder = 5
    Values.Strings = (
      'D'
      'M')
  end
  object grpFatores: TGroupBox
    Left = 0
    Top = 96
    Width = 643
    Height = 352
    Align = alBottom
    Caption = 'Fatores'
    TabOrder = 6
    object dbgrdFatores: TDBGrid
      Left = 2
      Top = 16
      Width = 639
      Height = 334
      Align = alClient
      DataSource = DataCadastros.dsConversaoMedida
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CONV_REGISTRO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONV_UND_DE'
          Title.Alignment = taCenter
          Title.Caption = 'Unidade De'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONV_UND_PARA'
          Title.Alignment = taCenter
          Title.Caption = 'Unidade Para'
          Width = 93
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CONV_FATOR'
          Title.Alignment = taCenter
          Title.Caption = 'Fator'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'wOperacao'
          Title.Alignment = taCenter
          Title.Caption = 'Opera'#231#227'o'
          Width = 223
          Visible = True
        end>
    end
  end
end
