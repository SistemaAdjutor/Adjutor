object FormCusto: TFormCusto
  Tag = 2
  Left = 75
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Forma'#231#227'o do Ind'#237'ce de Custos'
  ClientHeight = 337
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit2: TDBEdit
    Left = -232
    Top = -3
    Width = 121
    Height = 21
    DataField = 'VCT_TMAQ'
    TabOrder = 6
  end
  object RadTipoEmpresa: TRadioGroup
    Left = 4
    Top = 6
    Width = 137
    Height = 112
    BiDiMode = bdLeftToRight
    Caption = 'Classe da Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'LTDA'
      'SIMPLES'
      'Outra')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RadTipoEmpresaClick
  end
  object GroupBox1: TGroupBox
    Left = 147
    Top = 6
    Width = 486
    Height = 50
    Caption = 'Valor do Tempo Unit'#225'rio de Produ'#231#227'o (minuto)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 35
      Top = 27
      Width = 55
      Height = 13
      Caption = 'Valor TUP :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 291
      Top = 27
      Width = 99
      Height = 13
      Caption = 'Valor TUP M'#225'quina :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBeCus_uni: TDBEdit
      Left = 91
      Top = 23
      Width = 90
      Height = 21
      DataField = 'VCT_TUP'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
    end
    object DBeCus_Maqu: TDBEdit
      Left = 391
      Top = 23
      Width = 90
      Height = 21
      DataField = 'VCT_TMAQ'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 147
    Top = 56
    Width = 486
    Height = 62
    Caption = 'Valores Fixos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label14: TLabel
      Left = 11
      Top = 40
      Width = 79
      Height = 13
      Caption = 'Lucro por Pe'#231'a :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 34
      Top = 17
      Width = 55
      Height = 13
      Caption = 'Custo Fixo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 290
      Top = 17
      Width = 100
      Height = 13
      Caption = 'Custo Complementar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 289
      Top = 39
      Width = 100
      Height = 13
      Caption = 'M'#227'o-de-obra indireta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeCus_fixo: TDBEdit
      Left = 91
      Top = 13
      Width = 90
      Height = 21
      DataField = 'VCT_FIXO'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
    end
    object DbeCus_comple: TDBEdit
      Left = 391
      Top = 13
      Width = 90
      Height = 21
      DataField = 'VCT_COMPLE'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
    end
    object DbeCus_Peca: TDBEdit
      Left = 91
      Top = 36
      Width = 90
      Height = 21
      DataField = 'VCT_LUCROUNID'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
    end
    object Dbe_CusMaoIndireta: TDBEdit
      Left = 391
      Top = 36
      Width = 90
      Height = 21
      DataField = 'VCT_INDIRETA'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 470
    Top = 126
    Width = 164
    Height = 175
    Caption = 'Prazos (Juros %)'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object DBEdit1: TDBEdit
      Left = 69
      Top = 18
      Width = 90
      Height = 21
      DataField = 'VCT_VISTA'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit3: TDBEdit
      Left = 69
      Top = 43
      Width = 90
      Height = 21
      DataField = 'VCT_30D'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 69
      Top = 69
      Width = 90
      Height = 21
      DataField = 'VCT_45D'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit4Exit
    end
    object Panel4: TPanel
      Left = 10
      Top = 17
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = #192' Vista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Panel5: TPanel
      Left = 10
      Top = 42
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = '30 D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel6: TPanel
      Left = 10
      Top = 68
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = '45 D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Panel7: TPanel
      Left = 10
      Top = 94
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = '60 D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Panel8: TPanel
      Left = 10
      Top = 120
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = '75 D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object Panel9: TPanel
      Left = 10
      Top = 146
      Width = 54
      Height = 22
      BevelOuter = bvLowered
      Caption = '90 D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit5: TDBEdit
      Left = 69
      Top = 95
      Width = 90
      Height = 21
      DataField = 'VCT_60D'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 3
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 69
      Top = 121
      Width = 90
      Height = 21
      DataField = 'VCT_75D'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 4
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 69
      Top = 147
      Width = 90
      Height = 21
      DataField = 'VCT_90D'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 5
      OnExit = DBEdit7Exit
    end
  end
  object GroupBox5: TGroupBox
    Left = 5
    Top = 264
    Width = 460
    Height = 37
    TabOrder = 4
    object Label2: TLabel
      Left = 6
      Top = 12
      Width = 160
      Height = 13
      Caption = 'Desconto de Cr'#233'dito de Icms (%) :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeCus_frete: TDBEdit
      Left = 169
      Top = 9
      Width = 90
      Height = 21
      DataField = 'VCT_DESC'
      DataSource = DmProducao.DsFatorCustos
      MaxLength = 4
      TabOrder = 0
      OnExit = DbeCus_freteExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 126
    Width = 460
    Height = 145
    Caption = 'Valores  de Forma'#231#227'o do Ind'#237'ce de Custo (%)'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 37
      Top = 25
      Width = 80
      Height = 13
      Caption = 'Despesas Fixas :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 264
      Top = 25
      Width = 99
      Height = 13
      Caption = 'Despesas Vari'#225'veis :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 89
      Top = 49
      Width = 28
      Height = 13
      Caption = 'Icms :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 273
      Top = 49
      Width = 91
      Height = 13
      Caption = 'Impostos Federais :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 64
      Top = 73
      Width = 53
      Height = 13
      Caption = 'Marketing :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 36
      Top = 122
      Width = 82
      Height = 13
      Caption = 'Lucro na Venda :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 253
      Top = 73
      Width = 110
      Height = 13
      Caption = 'Despesas Financeiras :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 237
      Top = 98
      Width = 126
      Height = 13
      Caption = 'Comiss'#227'o Representantes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 6
      Top = 98
      Width = 111
      Height = 13
      Caption = 'Perda de mat'#233'ria-prima:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBeCus_Desp: TDBEdit
      Left = 119
      Top = 21
      Width = 90
      Height = 21
      DataField = 'VCT_DF'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
    end
    object DBeCus_Des_vari: TDBEdit
      Left = 364
      Top = 21
      Width = 90
      Height = 21
      DataField = 'VCT_DV'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
    end
    object DBeCus_Icms: TDBEdit
      Left = 119
      Top = 45
      Width = 90
      Height = 21
      DataField = 'VCT_ICMS'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
    end
    object DBeCus_Fed: TDBEdit
      Left = 364
      Top = 45
      Width = 90
      Height = 21
      DataField = 'VCT_FED'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 3
    end
    object DBeCus_Prop: TDBEdit
      Left = 119
      Top = 69
      Width = 90
      Height = 21
      DataField = 'VCT_DPG'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 4
    end
    object DBeCus_Lucr: TDBEdit
      Left = 119
      Top = 118
      Width = 90
      Height = 21
      DataField = 'VCT_LV'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 8
    end
    object DBeCus_Fin: TDBEdit
      Left = 364
      Top = 69
      Width = 90
      Height = 21
      DataField = 'VCT_FIN'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 5
    end
    object DBeCus_CRep: TDBEdit
      Left = 364
      Top = 94
      Width = 90
      Height = 21
      DataField = 'VCT_COMRP'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 7
    end
    object DbeCus_Perda: TDBEdit
      Left = 119
      Top = 93
      Width = 90
      Height = 21
      DataField = 'VCT_PERDA'
      DataSource = DmProducao.DsFatorCustos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 396
    Top = 304
    Width = 237
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 7
    object Bit_Gravar: TBitBtn
      Left = 6
      Top = 4
      Width = 75
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 81
      Top = 4
      Width = 75
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 156
      Top = 4
      Width = 75
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
end
