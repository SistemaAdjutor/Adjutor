object FormCadTributos: TFormCadTributos
  Left = 113
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastros de Tributos Espec'#237'ficos'
  ClientHeight = 285
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 15
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
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 94
    Height = 13
    Caption = 'Simples Federal (%):'
  end
  object Label3: TLabel
    Left = 3
    Top = 77
    Width = 100
    Height = 13
    Caption = 'Simples Estadual (%):'
  end
  object Label4: TLabel
    Left = 175
    Top = 55
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label5: TLabel
    Left = 175
    Top = 77
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label6: TLabel
    Left = 308
    Top = 55
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object Label7: TLabel
    Left = 308
    Top = 77
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object Label8: TLabel
    Left = 59
    Top = 100
    Width = 43
    Height = 13
    Caption = 'IRPJ (%):'
  end
  object Label9: TLabel
    Left = 175
    Top = 100
    Width = 67
    Height = 13
    Caption = 'Reten'#231#227'o (%):'
  end
  object Label10: TLabel
    Left = 25
    Top = 124
    Width = 77
    Height = 13
    Caption = 'Contr.Social (%):'
  end
  object Label11: TLabel
    Left = 175
    Top = 124
    Width = 67
    Height = 13
    Caption = 'Reten'#231#227'o (%):'
  end
  object Label12: TLabel
    Left = 68
    Top = 148
    Width = 34
    Height = 13
    Caption = 'Pis (%):'
  end
  object Label13: TLabel
    Left = 175
    Top = 148
    Width = 67
    Height = 13
    Caption = 'Reten'#231#227'o (%):'
  end
  object Label14: TLabel
    Left = 53
    Top = 172
    Width = 49
    Height = 13
    Caption = 'Cofins (%):'
  end
  object Label15: TLabel
    Left = 175
    Top = 172
    Width = 67
    Height = 13
    Caption = 'Reten'#231#227'o (%):'
  end
  object Label16: TLabel
    Left = 57
    Top = 196
    Width = 45
    Height = 13
    Caption = 'INSS (%):'
  end
  object Label17: TLabel
    Left = 175
    Top = 196
    Width = 67
    Height = 13
    Caption = 'Reten'#231#227'o (%):'
  end
  object Label18: TLabel
    Left = 59
    Top = 220
    Width = 44
    Height = 13
    Caption = 'IRPF (%):'
  end
  object Panel1: TPanel
    Left = 14
    Top = 248
    Width = 416
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 10841658
    TabOrder = 18
    object Bit_Cancelar: TBitBtn
      Left = 311
      Top = 4
      Width = 100
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
      Left = 311
      Top = 4
      Width = 100
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
      Left = 107
      Top = 4
      Width = 100
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
      Left = 209
      Top = 4
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 100
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
  object EdtTrib_Codigo: TEdit
    Left = 103
    Top = 12
    Width = 50
    Height = 21
    MaxLength = 2
    TabOrder = 0
    OnEnter = EdtTrib_CodigoEnter
    OnExit = EdtTrib_CodigoExit
    OnKeyPress = EdtTrib_CodigoKeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 300
    Top = 9
    Width = 132
    Height = 25
    DataSource = DataCadastros1.DsTrib
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 19
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 3
    Top = 40
    Width = 439
    Height = 4
    Color = clHighlight
    TabOrder = 20
  end
  object DBETRB_SIMP_FED: TDBEdit
    Left = 103
    Top = 48
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_FED'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 1
  end
  object DBETRB_SIMP_EST: TDBEdit
    Left = 103
    Top = 72
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_EST'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 4
  end
  object DBTRB_SIMP_FED_DE: TDBEdit
    Left = 194
    Top = 48
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_FED_DE'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 2
  end
  object DBETRB_SIMP_EST_DE: TDBEdit
    Left = 194
    Top = 72
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_EST_DE'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 5
  end
  object DBETRB_SIMP_FED_ATE: TDBEdit
    Left = 337
    Top = 48
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_FED_ATE'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 3
  end
  object DBETRB_SIMP_EST_ATE: TDBEdit
    Left = 337
    Top = 72
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_SIMP_EST_ATE'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 6
  end
  object DBTRB_IRPJ: TDBEdit
    Left = 103
    Top = 96
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_IRPJ'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 7
  end
  object DBTRB_IRPJ_RET: TDBEdit
    Left = 244
    Top = 96
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_IRPJ_RET'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 8
  end
  object DBTRB_CONTSOCIAL: TDBEdit
    Left = 103
    Top = 120
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_CONTSOCIAL'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 9
  end
  object DBTRB_CONTSOCIAL_RET: TDBEdit
    Left = 244
    Top = 120
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_CONTSOCIAL_RET'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 10
  end
  object DBTRB_PIS: TDBEdit
    Left = 103
    Top = 144
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_PIS'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 11
  end
  object DBTRB_PIS_RET: TDBEdit
    Left = 244
    Top = 144
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_PIS_RET'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 12
  end
  object DBTRB_COFINS: TDBEdit
    Left = 103
    Top = 168
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_COFINS'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 13
  end
  object DBTRB_COFINS_RET: TDBEdit
    Left = 244
    Top = 168
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_COFINS_RET'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 14
  end
  object DBTRB_INSS: TDBEdit
    Left = 104
    Top = 192
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_INSS'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 15
  end
  object DBTRB_INSS_RET: TDBEdit
    Left = 245
    Top = 192
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_INSS_RET'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 16
  end
  object DBTRB_IRPF: TDBEdit
    Left = 104
    Top = 216
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TRB_IRPF'
    DataSource = DataCadastros1.DsTrib
    TabOrder = 17
  end
  object ChTrb_Ativo: TCheckBox
    Left = 161
    Top = 15
    Width = 46
    Height = 17
    Caption = '&Ativo'
    TabOrder = 21
    OnEnter = ChTrb_AtivoEnter
    OnExit = ChTrb_AtivoExit
  end
end
