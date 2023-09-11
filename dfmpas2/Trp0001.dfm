object FormTransport: TFormTransport
  Left = 200
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Transportadora'
  ClientHeight = 447
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 51
    Top = 14
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 54
    Top = 49
    Width = 34
    Height = 14
    Caption = 'Raz'#227'o:'
  end
  object Label3: TLabel
    Left = 39
    Top = 74
    Width = 49
    Height = 14
    Caption = 'Endere'#231'o:'
  end
  object Label5: TLabel
    Left = 265
    Top = 206
    Width = 21
    Height = 14
    Caption = 'Fax:'
  end
  object Label6: TLabel
    Left = 61
    Top = 206
    Width = 27
    Height = 14
    Caption = 'Fone:'
  end
  object Label7: TLabel
    Left = 48
    Top = 179
    Width = 40
    Height = 14
    Caption = 'Contato:'
  end
  object Label8: TLabel
    Left = 275
    Top = 127
    Width = 91
    Height = 14
    Caption = 'Inscri'#231#227'o Estadual:'
  end
  object Label9: TLabel
    Left = 41
    Top = 154
    Width = 47
    Height = 14
    Caption = 'CNPJ/CPF'
  end
  object Label10: TLabel
    Left = 66
    Top = 125
    Width = 22
    Height = 14
    Caption = 'CEP:'
  end
  object Label11: TLabel
    Left = 407
    Top = 102
    Width = 16
    Height = 14
    Caption = 'UF:'
  end
  object Label12: TLabel
    Left = 52
    Top = 101
    Width = 36
    Height = 14
    Caption = 'Cidade:'
  end
  object Label13: TLabel
    Left = 51
    Top = 232
    Width = 37
    Height = 14
    Caption = 'e - Mail:'
  end
  object Label4: TLabel
    Left = 31
    Top = 257
    Width = 57
    Height = 14
    Caption = 'Home Page:'
  end
  object Label14: TLabel
    Left = 25
    Top = 282
    Width = 63
    Height = 14
    Caption = 'Observa'#231#227'o:'
  end
  object Label15: TLabel
    Left = 10
    Top = 385
    Width = 78
    Height = 14
    Caption = 'Transportadora:'
  end
  object SpeedButton5: TSpeedButton
    Left = 456
    Top = 97
    Width = 22
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object Label16: TLabel
    Left = 335
    Top = 151
    Width = 32
    Height = 14
    Caption = 'Bairro:'
  end
  object Label17: TLabel
    Left = 59
    Top = 344
    Width = 29
    Height = 14
    Caption = 'Placa:'
  end
  object Label18: TLabel
    Left = 183
    Top = 344
    Width = 16
    Height = 14
    Caption = 'UF:'
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 89
    Top = 371
    Width = 178
    Height = 34
    Columns = 2
    DataField = 'TRP_ATIVO'
    DataSource = DataCadastros.DsTransportadora
    Items.Strings = (
      '&Ativo'
      '&Inativo')
    TabOrder = 16
    Values.Strings = (
      'S'
      'N')
  end
  object EdtTrp_codigo: TEdit
    Left = 89
    Top = 10
    Width = 34
    Height = 22
    HideSelection = False
    MaxLength = 3
    TabOrder = 0
    OnEnter = EdtTrp_codigoEnter
    OnExit = EdtTrp_codigoExit
    OnKeyPress = EdtTrp_codigoKeyPress
  end
  object DBeTrp_razao: TDBEdit
    Left = 89
    Top = 46
    Width = 391
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_RAZAO'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 1
  end
  object DBeTrp_endere: TDBEdit
    Left = 89
    Top = 71
    Width = 390
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_ENDERE'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 2
  end
  object DBetrp_cidade: TDBEdit
    Left = 90
    Top = 97
    Width = 250
    Height = 22
    CharCase = ecUpperCase
    Color = 14145495
    DataField = 'TRP_CIDADE'
    DataSource = DataCadastros.DsTransportadora
    ReadOnly = True
    TabOrder = 3
  end
  object DbeTrp_cgc: TDBEdit
    Left = 89
    Top = 149
    Width = 110
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_CGC'
    DataSource = DataCadastros.DsTransportadora
    MaxLength = 18
    TabOrder = 7
    OnEnter = DbeTrp_cgcEnter
    OnExit = DbeTrp_cgcExit
  end
  object DBeTrp_insc: TDBEdit
    Left = 368
    Top = 122
    Width = 110
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_INSC'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 6
    OnExit = DBeTrp_inscExit
  end
  object DBeTrp_contato: TDBEdit
    Left = 89
    Top = 176
    Width = 290
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_CONTATO'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 8
  end
  object DBeTrp_fone: TDBEdit
    Left = 89
    Top = 203
    Width = 90
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_FONE'
    DataSource = DataCadastros.DsTransportadora
    MaxLength = 14
    TabOrder = 9
  end
  object DBeTrp_fax: TDBEdit
    Left = 288
    Top = 203
    Width = 90
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_FAX'
    DataSource = DataCadastros.DsTransportadora
    MaxLength = 14
    TabOrder = 10
  end
  object DBeTrp_email: TDBEdit
    Left = 89
    Top = 229
    Width = 371
    Height = 22
    CharCase = ecLowerCase
    DataField = 'TRP_EMAIL'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 11
  end
  object Panel1: TPanel
    Left = 5
    Top = 40
    Width = 492
    Height = 4
    Color = 12681984
    TabOrder = 20
  end
  object DBNavigator1: TDBNavigator
    Left = 377
    Top = 10
    Width = 116
    Height = 25
    DataSource = DataCadastros.DsTransportadora
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 19
    OnClick = DBNavigator1Click
  end
  object DBeTrp_uf: TDBEdit
    Left = 426
    Top = 97
    Width = 27
    Height = 22
    CharCase = ecUpperCase
    Color = 14145495
    DataField = 'TRP_UF'
    DataSource = DataCadastros.DsTransportadora
    ReadOnly = True
    TabOrder = 4
  end
  object DBeTrp_cep: TDBEdit
    Left = 89
    Top = 122
    Width = 75
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_CEP'
    DataSource = DataCadastros.DsTransportadora
    MaxLength = 9
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 198
    Top = 413
    Width = 384
    Height = 33
    Cursor = crHandPoint
    BevelOuter = bvNone
    TabOrder = 17
    object Bit_Cancelar: TBitBtn
      Left = 305
      Top = 4
      Width = 75
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
      TabOrder = 3
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 305
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 76
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 230
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object BitBtn1: TBitBtn
      Left = 0
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Exportar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
        9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
        AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
        6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
        7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
        FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
        FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
        793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
        F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
        FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
        742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
        F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
        8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
        F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
        EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
        FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
        CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
        E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
        3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
        A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
        A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
        AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 6
    Top = 413
    Width = 177
    Height = 33
    BevelOuter = bvNone
    TabOrder = 18
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
    object Bit_Relatorio: TBitBtn
      Left = 87
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object DBeTrp_Home: TDBEdit
    Left = 89
    Top = 254
    Width = 371
    Height = 22
    CharCase = ecLowerCase
    DataField = 'TRP_HOME'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 12
  end
  object DBMemo1: TDBMemo
    Left = 89
    Top = 279
    Width = 371
    Height = 54
    DataField = 'TRP_OBSERVACAO'
    DataSource = DataCadastros.DsTransportadora
    ScrollBars = ssVertical
    TabOrder = 13
    WantReturns = False
    OnKeyPress = DBMemo1KeyPress
  end
  object dbedtTRP_BAIRRO: TDBEdit
    Left = 368
    Top = 146
    Width = 110
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_BAIRRO'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 21
    OnExit = DBeTrp_inscExit
  end
  object DBEdit1: TDBEdit
    Left = 89
    Top = 339
    Width = 90
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_PLACA'
    DataSource = DataCadastros.DsTransportadora
    MaxLength = 14
    TabOrder = 14
  end
  object DBEdit2: TDBEdit
    Left = 201
    Top = 339
    Width = 29
    Height = 22
    CharCase = ecUpperCase
    DataField = 'TRP_PLACAUF'
    DataSource = DataCadastros.DsTransportadora
    TabOrder = 15
  end
  object GroupBox1: TGroupBox
    Left = 273
    Top = 372
    Width = 207
    Height = 33
    TabOrder = 22
    object Label19: TLabel
      Left = 123
      Top = -20
      Width = 28
      Height = 14
      Caption = 'Frete:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 19
      Top = 11
      Width = 28
      Height = 14
      Caption = 'Frete:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CbTipoFrete: TComboBox
      Left = 32
      Top = -28
      Width = 119
      Height = 22
      Hint = '0-Emitente (CIF)'#13#10'1-Destinat'#225'rio (FOB)'#13#10'2-Terceiros'#13#10'9-Sem frete'
      Style = csOwnerDrawFixed
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1-Destinat'#225'rio-FOB'
      Items.Strings = (
        '0-Emitente-CIF'
        '1-Destinat'#225'rio-FOB'
        '2-Terceiros'
        '9-Sem frete')
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 50
      Top = 6
      Width = 145
      Height = 22
      DataField = 'FRETE'
      DataSource = DataCadastros.DsTransportadora
      Items.Strings = (
        '0-Remetente (CIF)'
        '1-Destinat'#225'rio (FOB)'
        '2-Terceiros'
        '3-Pr'#243'prio por conta do remetente'
        '4-Pr'#243'prio por conta do destinat'#225'rio'
        '9-Sem frete')
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '9')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 273
    Top = 338
    Width = 205
    Height = 33
    Caption = 'Cliente Retira'
    Columns = 2
    DataField = 'CLIENTE_RETIRA'
    DataSource = DataCadastros.DsTransportadora
    Items.Strings = (
      '&Sim'
      '&N'#227'o')
    TabOrder = 23
    Values.Strings = (
      'S'
      'N')
  end
  object qBusco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 272
    Top = 32
  end
  object qTransportadoras: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT'
      #9'TRP_CGC,'
      #9'TRP_RAZAO,'
      #9#39'T'#39' AS TRP_TIPO,'
      #9'TRP_RAZAO AS TRP_FANTASIA,'
      #9'REPLACE(REPLACE (TRP_INSC, '#39'-'#39', '#39#39'), '#39'.'#39', '#39#39') AS TRP_INSC,'
      #9'TRP_CONTATO,'
      
        #9#39'('#39'||SUBSTRING (TRP_FONE FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (TRP_FON' +
        'E FROM 3 FOR 255) AS TRP_FONE,'
      
        #9#39'('#39'||SUBSTRING (TRP_FAX FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (TRP_FAX ' +
        'FROM 3 FOR 255)  TRP_FAX,'
      #9'TRP_EMAIL,'
      #9'TRP_EMAIL AS TRP_EMAIL_NFE,'
      #9'TRP_CEP,'
      #9'CASE'
      #9#9'WHEN TRP_CIDADE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN TRP_CIDADE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE TRP_CIDADE'
      #9'END AS TRP_CIDADE,'
      #9'CASE'
      #9#9'WHEN TRP_UF = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN TRP_UF IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE TRP_UF'
      #9'END AS TRP_UF,'#9
      #9'CASE'
      #9#9'WHEN TRP_ENDERE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN TRP_ENDERE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'WHEN position ('#39','#39' in TRP_ENDERE) = 0 THEN TRP_ENDERE '
      #9#9'ELSE '
      #9#9'CASE'
      
        #9#9#9'WHEN position ('#39','#39' in TRP_ENDERE) > 0 THEN SUBSTRING (TRP_END' +
        'ERE FROM 1 FOR POSITION('#39','#39' in TRP_ENDERE) -1)'
      #9#9'END'
      #9'END AS TRP_ENDERE,'
      #9'CASE'
      
        #9#9'WHEN POSITION('#39','#39' IN TRP_ENDERE) > 0 THEN SUBSTRING (TRP_ENDER' +
        'E FROM POSITION('#39','#39' IN TRP_ENDERE) + 1 FOR 255)'
      #9#9'ELSE '#39'S/N'#39
      #9'END AS TRP_NUMERO,'#9
      #9'CASE'
      #9#9'WHEN TRP_BAIRRO = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN TRP_BAIRRO IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE TRP_BAIRRO'
      #9'END AS TRP_BAIRRO,'
      #9#39#39' AS REP_RAZAO,'
      '    '#39#39' AS PCX_DESCRI,'
      '    '#39#39'  AS BAN_APELIDO,'
      '    '#39#39'  AS CLI_UND_CONSUMIDORA'
      'FROM TRP0000 c'
      'ORDER BY TRP_RAZAO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 514
    Top = 195
    object qTransportadorasTRP_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'TRP_CGC'
      Size = 14
    end
    object qTransportadorasTRP_RAZAO: TStringField
      DisplayLabel = 'RAZAO'
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object qTransportadorasTRP_TIPO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'TRP_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransportadorasTRP_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'TRP_FANTASIA'
      Size = 45
    end
    object qTransportadorasTRP_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object qTransportadorasTRP_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object qTransportadorasTRP_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'TRP_FONE'
      Size = 24
    end
    object qTransportadorasTRP_FAX: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'TRP_FAX'
      Size = 24
    end
    object qTransportadorasTRP_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'TRP_EMAIL'
      Size = 150
    end
    object qTransportadorasTRP_EMAIL_NFE: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'TRP_EMAIL_NFE'
      Size = 150
    end
    object qTransportadorasTRP_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object qTransportadorasTRP_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object qTransportadorasTRP_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'TRP_UF'
      Size = 13
    end
    object qTransportadorasTRP_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object qTransportadorasTRP_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'TRP_NUMERO'
      Size = 40
    end
    object qTransportadorasTRP_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'TRP_BAIRRO'
      Size = 40
    end
    object qTransportadorasREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransportadorasPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransportadorasBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransportadorasCLI_UND_CONSUMIDORA: TStringField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransportadorasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsTransportadoras
    Left = 512
    Top = 363
  end
  object dspTransportadoras: TDataSetProvider
    DataSet = qTransportadoras
    Left = 512
    Top = 256
  end
  object cdsTransportadoras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransportadoras'
    Left = 520
    Top = 312
    object cdsTransportadorasTRP_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'TRP_CGC'
      Size = 14
    end
    object cdsTransportadorasTRP_RAZAO: TStringField
      DisplayLabel = 'RAZAO'
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object cdsTransportadorasTRP_TIPO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'TRP_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransportadorasTRP_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'TRP_FANTASIA'
      Size = 45
    end
    object cdsTransportadorasTRP_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object cdsTransportadorasTRP_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object cdsTransportadorasTRP_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'TRP_FONE'
      Size = 24
    end
    object cdsTransportadorasTRP_FAX: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'TRP_FAX'
      Size = 24
    end
    object cdsTransportadorasTRP_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'TRP_EMAIL'
      Size = 150
    end
    object cdsTransportadorasTRP_EMAIL_NFE: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'TRP_EMAIL_NFE'
      Size = 150
    end
    object cdsTransportadorasTRP_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object cdsTransportadorasTRP_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object cdsTransportadorasTRP_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'TRP_UF'
      Size = 13
    end
    object cdsTransportadorasTRP_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object cdsTransportadorasTRP_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'TRP_NUMERO'
      Size = 40
    end
    object cdsTransportadorasTRP_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'TRP_BAIRRO'
      Size = 40
    end
    object cdsTransportadorasREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransportadorasPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransportadorasBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransportadorasCLI_UND_CONSUMIDORA: TStringField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransportadorasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
