object FormCotacao: TFormCotacao
  Left = 3
  Top = 68
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cota'#231#227'o de Pre'#231'o'
  ClientHeight = 429
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 123
    Width = 62
    Height = 13
    Caption = 'Cond. Pagto:'
  end
  object Label2: TLabel
    Left = 30
    Top = 73
    Width = 40
    Height = 13
    Caption = 'Contato:'
  end
  object Label3: TLabel
    Left = 269
    Top = 73
    Width = 27
    Height = 13
    Caption = 'Fone:'
  end
  object Label4: TLabel
    Left = 34
    Top = 8
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 44
    Top = 98
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label6: TLabel
    Left = 197
    Top = 98
    Width = 29
    Height = 13
    Caption = 'ICMS:'
  end
  object Label8: TLabel
    Left = 13
    Top = 48
    Width = 57
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label7: TLabel
    Left = 436
    Top = 73
    Width = 20
    Height = 13
    Caption = 'Fax:'
  end
  object Label10: TLabel
    Left = 316
    Top = 98
    Width = 37
    Height = 13
    Caption = 'Descto:'
  end
  object Label11: TLabel
    Left = 453
    Top = 123
    Width = 40
    Height = 13
    Caption = 'Entrega:'
  end
  object Label13: TLabel
    Left = 468
    Top = 310
    Width = 34
    Height = 13
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 493
    Top = 98
    Width = 27
    Height = 13
    Caption = 'Frete:'
  end
  object Label9: TLabel
    Left = 291
    Top = 310
    Width = 44
    Height = 13
    Caption = 'VL. IPI:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 74
    Top = 310
    Width = 65
    Height = 13
    Caption = 'VL. liquido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 272
    Top = 98
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label15: TLabel
    Left = 403
    Top = 99
    Width = 8
    Height = 13
    Caption = '%'
  end
  object SpdFornec: TSpeedButton
    Left = 453
    Top = 45
    Width = 21
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
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
  end
  object FiltroProd: TSpeedButton
    Left = 618
    Top = 5
    Width = 25
    Height = 25
    Hint = 'Filtra Produtos'
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000013000000110000000100
      040000000000CC00000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888D261788707777777777777885AA5A80000000000700707885AA5A80FF
      F0B00F07F0707885AA5A80FFFF0BB007F0707880BF2D80FCFFC0BBB000707888
      738680FFFFFF0BBBB000788801C380FCCFCFF00BBBB078818E4E80FFF000000B
      BBBB08809DD480FCC0BBBBB00000008788BA80FFFF00BBBB00707888666080FC
      FFCC00BBB07078808C9680FFFFFFFF00BB0078806B0B80FCCFCCCF0700B08884
      1A0980FFFFFFFF07000008805550800000000008888880834471888888888888
      888888803185}
    ParentShowHint = False
    ShowHint = True
    OnClick = FiltroProdClick
  end
  object EdtCOT_CODIGO: TEdit
    Left = 73
    Top = 5
    Width = 50
    Height = 21
    MaxLength = 5
    TabOrder = 0
    OnExit = EdtCOT_CODIGOExit
  end
  object DBNavigator1: TDBNavigator
    Left = 487
    Top = 5
    Width = 120
    Height = 25
    DataSource = DataModulo.DsCotacao
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 15
    OnClick = DBNavigator1Click
  end
  object Panel1: TPanel
    Left = 5
    Top = 35
    Width = 645
    Height = 4
    Color = clHighlight
    TabOrder = 16
  end
  object DblkCbFOR_CODIGO: TDBLookupComboBox
    Left = 121
    Top = 45
    Width = 330
    Height = 21
    Color = clSilver
    DataField = 'FOR_CODIGO'
    DataSource = DataModulo.DsCotacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'FOR_CODIGO'
    ListField = 'FOR_RAZAO'
    ListSource = DataModulo.DsFornec
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    OnClick = DblkCbFOR_CODIGOClick
  end
  object DbeFOR_CONTATO: TDBEdit
    Left = 73
    Top = 70
    Width = 170
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'FOR_CONTATO'
    DataSource = DataModulo.DsFornec
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object DbeFOR_FONCONT: TDBEdit
    Left = 299
    Top = 70
    Width = 110
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'FOR_FONCONT'
    DataSource = DataModulo.DsFornec
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
  end
  object DbeFOR_FAXCONT: TDBEdit
    Left = 458
    Top = 70
    Width = 110
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'FOR_FAXCONT'
    DataSource = DataModulo.DsFornec
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
  end
  object DbeCot_Icms: TDBEdit
    Left = 229
    Top = 95
    Width = 40
    Height = 21
    DataField = 'COT_ICMS'
    DataSource = DataModulo.DsCotacao
    MaxLength = 5
    TabOrder = 4
  end
  object DbeCot_Prazopagto: TDBEdit
    Left = 73
    Top = 120
    Width = 250
    Height = 21
    DataField = 'COT_PRAZOPGTO'
    DataSource = DataModulo.DsCotacao
    TabOrder = 7
  end
  object DbeCot_Entrega: TDBEdit
    Left = 497
    Top = 120
    Width = 70
    Height = 21
    DataField = 'COT_ENTREGA'
    DataSource = DataModulo.DsCotacao
    MaxLength = 20
    TabOrder = 8
  end
  object DbeCot_Descto: TDBEdit
    Left = 355
    Top = 95
    Width = 45
    Height = 21
    DataField = 'COT_DESCTO'
    DataSource = DataModulo.DsCotacao
    MaxLength = 5
    TabOrder = 5
  end
  object DbGridCotacao: TDBGrid
    Left = 5
    Top = 145
    Width = 644
    Height = 152
    Color = clAqua
    DataSource = DataModulo.DsCotaItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DbGridCotacaoColEnter
    OnColExit = DbGridCotacaoColExit
    OnEnter = DbGridCotacaoEnter
    OnExit = DbGridCotacaoExit
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI_LK'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIT_QTDE'
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIT_PRECO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIT_TOTAL_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIT_IPI'
        Title.Alignment = taCenter
        Title.Caption = 'IPI(%)'
        Width = 36
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 263
    Top = 394
    Width = 384
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clTeal
    TabOrder = 12
    object Bit_Sair: TBitBtn
      Left = 285
      Top = 4
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
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
    object Bit_Cancelar: TBitBtn
      Left = 285
      Top = 4
      Width = 93
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
      TabOrder = 3
      TabStop = False
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
    object Bit_novo: TBitBtn
      Left = 6
      Top = 4
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
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
    object Bit_Excluir: TBitBtn
      Left = 99
      Top = 4
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
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
      Left = 192
      Top = 4
      Width = 93
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
      TabOrder = 2
      TabStop = False
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
  end
  object DBCombCot_Frete: TDBComboBox
    Left = 523
    Top = 95
    Width = 45
    Height = 21
    DataField = 'COT_FRETE'
    DataSource = DataModulo.DsCotacao
    ItemHeight = 13
    Items.Strings = (
      'CIF'
      'FOB')
    TabOrder = 6
  end
  object DbeFor_Codigo: TDBEdit
    Left = 73
    Top = 45
    Width = 42
    Height = 21
    Color = clSilver
    DataField = 'FOR_CODIGO'
    DataSource = DataModulo.DsCotacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnExit = DbeFor_CodigoExit
  end
  object GroupBox1: TGroupBox
    Left = 121
    Top = 328
    Width = 352
    Height = 62
    Caption = 'Obs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    object DBMemo1: TDBMemo
      Left = 4
      Top = 15
      Width = 340
      Height = 42
      Ctl3D = True
      DataField = 'COT_OBS'
      DataSource = DataModulo.DsCotacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
  end
  object TotGeral: TEdit
    Left = 502
    Top = 306
    Width = 100
    Height = 21
    TabStop = False
    Color = clSilver
    MaxLength = 13
    ReadOnly = True
    TabOrder = 20
  end
  object VL_IPI: TEdit
    Left = 336
    Top = 306
    Width = 100
    Height = 21
    TabStop = False
    Color = clSilver
    MaxLength = 13
    ReadOnly = True
    TabOrder = 21
  end
  object Total: TEdit
    Left = 142
    Top = 306
    Width = 100
    Height = 21
    TabStop = False
    Color = clSilver
    MaxLength = 13
    ReadOnly = True
    TabOrder = 22
  end
  object Panel3: TPanel
    Left = 490
    Top = 338
    Width = 155
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = clTeal
    TabOrder = 14
    object Bit_GeraOC: TBitBtn
      Left = 4
      Top = 4
      Width = 146
      Height = 25
      Cursor = crHandPoint
      Hint = 'Envia Dados direto para Ordem de Compra.'
      Caption = 'Gerar Ordem de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_GeraOCClick
    end
  end
  object RdGCOT_STATUS: TDBRadioGroup
    Left = 5
    Top = 328
    Width = 116
    Height = 62
    DataField = 'COT_STATUS'
    DataSource = DataModulo.DsCotacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Aprovada'
      'N'#227'o aprovada')
    ParentFont = False
    TabOrder = 10
    Values.Strings = (
      'S'
      'N')
  end
  object Panel4: TPanel
    Left = 4
    Top = 394
    Width = 175
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 13
    object Bit_Lista: TBitBtn
      Left = 4
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
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
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
    object Bit_Relatorio: TBitBtn
      Left = 86
      Top = 4
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
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
    end
  end
  object DbeCot_Data: TDBDateEdit
    Left = 73
    Top = 95
    Width = 85
    Height = 21
    DataField = 'COT_DATA'
    DataSource = DataModulo.DsCotacao
    GlyphKind = gkEllipsis
    NumGlyphs = 1
    TabOrder = 3
  end
  object TbCotItemAux: TTable
    AutoCalcFields = False
    DatabaseName = 'RwDbAdm'
    IndexName = 'XCOT_CODI_CIT'
    TableName = 'COT_IT01'
    Left = 280
    Top = 3
    object TbCotItemAuxCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
  end
end
