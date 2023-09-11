object FormContaCorrente: TFormContaCorrente
  Left = 327
  Top = 258
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Conta Corrente'
  ClientHeight = 206
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 27
    Top = 13
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 83
    Width = 77
    Height = 14
    Alignment = taRightJustify
    Caption = 'C'#243'digo do IBGE:'
  end
  object Label3: TLabel
    Left = 66
    Top = 109
    Width = 51
    Height = 14
    Alignment = taRightJustify
    Caption = 'CEP Inicial:'
  end
  object Label5: TLabel
    Left = 326
    Top = 109
    Width = 47
    Height = 14
    Caption = 'Cep Final:'
  end
  object Label2: TLabel
    Left = 66
    Top = 59
    Width = 52
    Height = 14
    Caption = 'Descri'#231#227'o:'
  end
  object Label6: TLabel
    Left = 81
    Top = 137
    Width = 36
    Height = 14
    Alignment = taRightJustify
    Caption = 'Estado:'
  end
  object Panel3: TPanel
    Left = 0
    Top = 168
    Width = 91
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = 10841658
    TabOrder = 7
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
  end
  object Panel1: TPanel
    Left = 93
    Top = 168
    Width = 373
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 10841658
    TabOrder = 8
    object Bit_Cancelar: TBitBtn
      Left = 278
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 278
      Top = 4
      Width = 91
      Height = 25
      Cursor = crHandPoint
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 96
      Top = 4
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 187
      Top = 4
      Width = 90
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
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
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object EdtCidade_Codigo: TEdit
    Left = 65
    Top = 10
    Width = 35
    Height = 22
    MaxLength = 3
    TabOrder = 0
    OnEnter = EdtCidade_CodigoEnter
    OnExit = EdtCidade_CodigoExit
    OnKeyPress = EdtCidade_CodigoKeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 333
    Top = 7
    Width = 132
    Height = 25
    DataSource = DataCadastros1.DsCidade
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = -51
    Top = 40
    Width = 518
    Height = 4
    Color = clHighlight
    TabOrder = 9
  end
  object DbeCid_Descri: TDBEdit
    Left = 120
    Top = 54
    Width = 345
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CID_CIDADE'
    DataSource = DataCadastros1.DsCidade
    TabOrder = 2
  end
  object DbeCid_CodIBGE: TDBEdit
    Left = 120
    Top = 79
    Width = 89
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CID_COD_IBGE'
    DataSource = DataCadastros1.DsCidade
    MaxLength = 7
    TabOrder = 3
    OnKeyPress = DbeCid_CodIBGEKeyPress
  end
  object DBECid_CEP_Inicial: TDBEdit
    Left = 120
    Top = 105
    Width = 89
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CID_CEP_INICIO'
    DataSource = DataCadastros1.DsCidade
    TabOrder = 4
    OnKeyPress = DBECid_CEP_InicialKeyPress
  end
  object DBECid_CEP_Final: TDBEdit
    Left = 376
    Top = 105
    Width = 89
    Height = 22
    CharCase = ecUpperCase
    DataField = 'CID_CEP_FINAL'
    DataSource = DataCadastros1.DsCidade
    TabOrder = 5
    OnKeyPress = DBECid_CEP_FinalKeyPress
  end
  object DBECid_UF: TDBComboBox
    Left = 120
    Top = 133
    Width = 49
    Height = 22
    Style = csDropDownList
    CharCase = ecUpperCase
    DataField = 'CID_ESTADO'
    DataSource = DataCadastros1.DsCidade
    Items.Strings = (
      'PR'
      'SP'
      'RJ'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'EX'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PE'
      'PI'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SE'
      'TO')
    TabOrder = 6
  end
end
