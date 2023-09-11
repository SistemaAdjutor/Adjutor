object FormMetaProd: TFormMetaProd
  Left = 103
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Meta-M'#234's de Produ'#231#227'o das C'#233'lulas/Fac'#231#227'o'
  ClientHeight = 483
  ClientWidth = 580
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
  object Label1: TLabel
    Left = 20
    Top = 14
    Width = 28
    Height = 13
    Caption = 'M'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 70
    Top = 14
    Width = 27
    Height = 13
    Caption = 'Ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 131
    Top = 14
    Width = 40
    Height = 13
    Caption = 'C'#233'lula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtMes: TEdit
    Left = 48
    Top = 10
    Width = 20
    Height = 21
    MaxLength = 2
    TabOrder = 0
    OnClick = EdtMesClick
    OnExit = EdtMesExit
    OnKeyPress = EdtMesKeyPress
  end
  object EdtAno: TEdit
    Left = 97
    Top = 10
    Width = 32
    Height = 21
    MaxLength = 4
    TabOrder = 1
    OnClick = EdtAnoClick
    OnEnter = EdtAnoClick
    OnExit = EdtAnoExit
    OnKeyPress = EdtMesKeyPress
  end
  object Panel1: TPanel
    Left = 193
    Top = 447
    Width = 387
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 10841658
    TabOrder = 7
    object Bit_Cancelar: TBitBtn
      Left = 287
      Top = 4
      Width = 95
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
      Left = 287
      Top = 4
      Width = 95
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
      Left = 99
      Top = 4
      Width = 94
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 193
      Top = 4
      Width = 94
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 94
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 462
    Top = 10
    Width = 116
    Height = 25
    DataSource = DmProducao.DsMetas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 3
    Top = 39
    Width = 576
    Height = 4
    Color = clHighlight
    TabOrder = 9
  end
  object Panel3: TPanel
    Left = 0
    Top = 447
    Width = 190
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 8
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 90
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
    object Bit_Relatorio: TBitBtn
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 143
    Width = 578
    Height = 299
    Caption = 'MANUTEN'#199#195'O DOS INTEGRANTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Grd_Integra: TDBGrid
      Left = 9
      Top = 86
      Width = 560
      Height = 205
      Color = 16776176
      DataSource = DsGridIntegrantes
      FixedColor = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = Grd_IntegraDblClick
      OnKeyDown = Grd_IntegraKeyDown
      OnKeyPress = Grd_IntegraKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'MEC_DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Dias'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCP_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCP_NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 307
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEC_TUPDIARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'TUP Di'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_TUP_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'TUP M'#234's'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 9
      Top = 17
      Width = 560
      Height = 56
      BevelOuter = bvLowered
      TabOrder = 1
      OnExit = Panel4Exit
      object Label10: TLabel
        Left = 15
        Top = 8
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 405
        Top = 8
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'TUP Di'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitExcluiComp: TBitBtn
        Left = 479
        Top = 29
        Width = 75
        Height = 22
        Caption = 'E&xcluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OnClick = BitExcluiCompClick
      end
      object BitDuplicar: TBitBtn
        Left = 479
        Top = 4
        Width = 75
        Height = 22
        Caption = '&Duplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = False
        OnClick = BitDuplicarClick
      end
      object BitConfirma: TBitBtn
        Left = 479
        Top = 4
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Hint = '|Grava registro...'
        Caption = 'C&onfirmar'
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
        TabStop = False
        Visible = False
        OnClick = BitConfirmaClick
      end
      object BitCancela: TBitBtn
        Left = 479
        Top = 29
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Hint = '|Cancela registro atual...'
        Caption = 'Cance&lar'
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
        TabOrder = 5
        TabStop = False
        Visible = False
        OnClick = BitCancelaClick
      end
      object EdtCCP_CODIGO: TEdit
        Left = 48
        Top = 23
        Width = 41
        Height = 21
        Color = 14145495
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = EdtMesKeyPress
      end
      object EdtCCP_NOME: TEdit
        Left = 90
        Top = 23
        Width = 314
        Height = 21
        Color = 14145495
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object CurMecDias: TCurrencyEdit
        Left = 14
        Top = 23
        Width = 33
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '00'
        Enabled = False
        MaxLength = 2
        TabOrder = 0
        OnKeyPress = EdtMesKeyPress
      end
      object CurMecDiario: TCurrencyEdit
        Left = 405
        Top = 23
        Width = 64
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        Enabled = False
        TabOrder = 1
        OnKeyPress = EdtMesKeyPress
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 48
    Width = 408
    Height = 89
    Caption = 'Metas '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Left = 17
      Top = 15
      Width = 86
      Height = 13
      Caption = 'Dias '#250'teis no m'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 206
      Top = 15
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'TUP Mensal da Equipe:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 22
      Top = 41
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cr'#233'ditos de TUP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 246
      Top = 41
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#233'bito de TUP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 4
      Top = 66
      Width = 99
      Height = 13
      Alignment = taRightJustify
      Caption = 'Premio/Participa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 207
      Top = 66
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'TUP a Realizar no M'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeDiaUtil: TDBEdit
      Left = 105
      Top = 12
      Width = 38
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CME_DIASUTEIS'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 0
      OnClick = DbeDiaUtilEnter
      OnEnter = DbeDiaUtilEnter
      OnExit = DbeDiaUtilExit
      OnKeyPress = EdtMesKeyPress
    end
    object DbeTupMes: TDBEdit
      Left = 321
      Top = 12
      Width = 80
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'CME_TUPMETAMES'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DbeTupAcrescent: TDBEdit
      Left = 105
      Top = 37
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CME_TUPACRECENT'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 1
      OnClick = DbeTupAcrescentEnter
      OnEnter = DbeTupAcrescentEnter
      OnKeyPress = EdtMesKeyPress
    end
    object DbeTupNegativo: TDBEdit
      Left = 321
      Top = 37
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CME_TUPNEGATIVO'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 2
      OnClick = DbeTupNegativoEnter
      OnEnter = DbeTupNegativoEnter
      OnKeyPress = EdtMesKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 105
      Top = 62
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CME_PERCPATICIPA'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 3
      OnClick = DBEdit1Enter
      OnEnter = DBEdit1Enter
      OnKeyPress = EdtMesKeyPress
    end
    object Dbe_TupRealizado: TDBEdit
      Left = 321
      Top = 62
      Width = 80
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'TUP_AREALIZAR_CC'
      DataSource = DmProducao.DsMetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Bit_Lancar: TBitBtn
    Left = 413
    Top = 53
    Width = 164
    Height = 57
    Caption = 'Calcular TUP Mensal da Equipe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 10
    TabStop = False
    OnClick = Bit_LancarClick
  end
  object EdtCelula: TEdit
    Left = 171
    Top = 10
    Width = 29
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 2
    OnClick = EdtCelulaClick
    OnEnter = EdtCelulaClick
    OnExit = EdtCelulaExit
    OnKeyPress = EdtMesKeyPress
  end
  object CbxCelulas: TComboBox
    Left = 200
    Top = 10
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 35
    TabOrder = 3
    OnClick = CbxCelulasClick
    OnEnter = CbxCelulasEnter
    OnExit = CbxCelulasExit
  end
  object SqlCdsCelulas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 9
    object SqlCdsCelulasCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlCdsCelulasCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = []
      Size = 35
    end
  end
  object SqlGridIntegrantes: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select P1.*, CCP_NOME from CEL_MTC04 P1,CEL_CP01 where'#13#10'CEL_MTC0' +
      '4.CCP_CODIGO = CEL_CP01 .CCP_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeEdit = SqlGridIntegrantesBeforeEdit
    OnCalcFields = SqlGridIntegrantesCalcFields
    CommandText = 
      'select P1.*, CCP_NOME from CEL_MTC04 P1,CEL_CP01 where'#13#10'CEL_MTC0' +
      '4.CCP_CODIGO = CEL_CP01 .CCP_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 288
    object SqlGridIntegrantesCME_REGISTRO: TIntegerField
      FieldName = 'CME_REGISTRO'
      ProviderFlags = []
      Required = True
    end
    object SqlGridIntegrantesCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = []
      Required = True
      Size = 9
    end
    object SqlGridIntegrantesCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      ProviderFlags = []
      Size = 4
    end
    object SqlGridIntegrantesCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlGridIntegrantesMEC_TUPDIARIO: TFMTBCDField
      FieldName = 'MEC_TUPDIARIO'
      ProviderFlags = []
      Precision = 15
    end
    object SqlGridIntegrantesMEC_DIAS: TFMTBCDField
      FieldName = 'MEC_DIAS'
      ProviderFlags = []
      Precision = 15
    end
    object SqlGridIntegrantesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlGridIntegrantesCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      ProviderFlags = []
      Size = 30
    end
    object SqlGridIntegrantesTOTAL_TUP_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_TUP_CC'
      ProviderFlags = []
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      currency = False
      Calculated = True
    end
  end
  object DsGridIntegrantes: TDataSource
    DataSet = SqlGridIntegrantes
    Left = 328
    Top = 288
  end
  object DsCelulas: TDataSource
    DataSet = SqlCdsCelulas
    Left = 272
    Top = 9
  end
end
