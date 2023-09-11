object FormEnviaCelula: TFormEnviaCelula
  Left = 29
  Top = 18
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Envio de Ordem de Produ'#231#227'o para C'#233'lulas'
  ClientHeight = 470
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpSitProducao: TGroupBox
    Left = 400
    Top = 80
    Width = 326
    Height = 218
    Caption = 'Manuten'#231#227'o da Entrega da Produ'#231#227'o'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object GroupEntrega: TGroupBox
      Left = 8
      Top = 160
      Width = 309
      Height = 55
      Caption = 'Informe Entrega '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = GroupEntregaEnter
      object Label13: TLabel
        Left = 9
        Top = 16
        Width = 78
        Height = 13
        Caption = 'Qtde Conclu'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 106
        Top = 16
        Width = 77
        Height = 13
        Caption = 'Qtde c/ Defeito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 201
        Top = 16
        Width = 81
        Height = 13
        Caption = 'Data da Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CProduzida: TCurrencyEdit
        Left = 8
        Top = 30
        Width = 85
        Height = 21
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = CProduzidaChange
        OnEnter = CProduzidaEnter
      end
      object CDefeito: TCurrencyEdit
        Left = 104
        Top = 30
        Width = 85
        Height = 21
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = CProduzidaChange
        OnEnter = CDefeitoEnter
      end
      object CDTProduzida: TJvDateEdit
        Left = 200
        Top = 30
        Width = 100
        Height = 21
        CheckOnExit = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000F000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFFE00009CE600009CE60000FFFE0000}
        ImageKind = ikCustom
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
        OnEnter = CDTProduzidaEnter
        OnExit = CDTProduzidaExit
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 25
      Width = 310
      Height = 134
      Caption = 'Executadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 4
        Top = 17
        Width = 300
        Height = 111
        Hint = 'Seleciona a entrega...'
        Color = 16776176
        DataSource = DsExecuta
        FixedColor = 12681984
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CEM_DTPRODUZ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_QTDE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'QTDE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_DEFEITO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Defeito'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEL_CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'C'#233'lula'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end>
      end
    end
    object BitExcluiEntrega: TBitBtn
      Left = 296
      Top = 8
      Width = 21
      Height = 21
      Cursor = crHandPoint
      Hint = 'Exclui entrega de produ'#231#227'o da grade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BitExcluiEntregaClick
    end
  end
  object GrpCelulaOP: TGroupBox
    Left = 5
    Top = 80
    Width = 393
    Height = 218
    Caption = 'C'#233'lulas da Produ'#231#227'o em Servi'#231'o da O.P.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 15
      Top = 25
      Width = 81
      Height = 13
      Caption = 'Celula Produ'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 31
      Top = 188
      Width = 66
      Height = 13
      Caption = 'Data Entrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 206
      Top = 189
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Conclus'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 247
      Top = 50
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'TUP. do Servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 56
      Top = 75
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 13
      Top = 50
      Width = 83
      Height = 13
      Caption = 'C'#243'digo da C'#233'lula:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBLkCboCelula: TDBLookupComboBox
      Left = 97
      Top = 20
      Width = 284
      Height = 21
      DataField = 'CEL_CODIGO'
      DataSource = DmProducao.DsMovCel
      DropDownWidth = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'CEL_CODIGO'
      ListField = 'CEL_NOME;CEL_CODIGO'
      ListSource = DsCelulaOP
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 97
      Top = 70
      Width = 283
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEM_TRABALHO'
      DataSource = DmProducao.DsMovCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 97
      Top = 45
      Width = 37
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'CEL_CODIGO'
      DataSource = DmProducao.DsMovCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object GroupBox2: TGroupBox
      Left = 197
      Top = 96
      Width = 185
      Height = 75
      Caption = 'Posi'#231#227'o da Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label12: TLabel
        Left = 19
        Top = 21
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total Entregue:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 17
        Top = 48
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total c/Defeito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbeOsv_Qtde: TDBEdit
        Left = 94
        Top = 17
        Width = 70
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'OSV_QTDECONC'
        DataSource = DmProducao.DsMovCel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DbeOsv_Defe: TDBEdit
        Left = 94
        Top = 44
        Width = 70
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'OSV_QTDEDEFE'
        DataSource = DmProducao.DsMovCel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 96
      Width = 185
      Height = 75
      Caption = 'M.O.E.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label14: TLabel
        Left = 19
        Top = 21
        Width = 76
        Height = 13
        Caption = 'Vl.Pago / Pe'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 11
        Top = 47
        Width = 85
        Height = 13
        Caption = 'Vl.Defeito / Pe'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbeOsv_ValorPeca: TDBEdit
        Left = 97
        Top = 17
        Width = 70
        Height = 21
        DataField = 'OSV_VALORPECA'
        DataSource = DmProducao.DsMovCel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DbeOsv_ValorPecaEnter
      end
      object DbeOsv_ValorDefe: TDBEdit
        Left = 98
        Top = 44
        Width = 70
        Height = 21
        DataField = 'OSV_VALORDEFE'
        DataSource = DmProducao.DsMovCel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DbeOsv_ValorDefeEnter
      end
    end
    object Db_TupTrab: TDBEdit
      Left = 331
      Top = 45
      Width = 49
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'CEM_TUPTRAB'
      DataSource = DmProducao.DsMovCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbeDataEntrada: TJvDBDateEdit
      Tag = 7
      Left = 100
      Top = 185
      Width = 89
      Height = 21
      DataField = 'CEM_DTENTROU'
      DataSource = DmProducao.DsMovCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 3
      OnExit = DbeDataEntradaExit
    end
    object DbDt_Conclusao: TJvDBDateEdit
      Tag = 7
      Left = 287
      Top = 185
      Width = 87
      Height = 21
      DataField = 'CEM_DTCONCLUIU'
      DataSource = DmProducao.DsMovCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 4
      OnExit = DbDt_ConclusaoExit
    end
  end
  object Panel2: TPanel
    Left = 194
    Top = 434
    Width = 533
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'f'
    Color = 10841658
    TabOrder = 1
    object Bit_Sair: TBitBtn
      Left = 424
      Top = 4
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 319
      Top = 4
      Width = 105
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
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 214
      Top = 4
      Width = 105
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 109
      Top = 4
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = 'Retirar da C'#233'lula'
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
    object Bit_Incluir: TBitBtn
      Left = 4
      Top = 4
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = '&Enviar p/ C'#233'lula'
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
      OnClick = Bit_IncluirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 301
    Width = 721
    Height = 129
    Hint = 'D'#234' duplo clique para fazer a manuten'#231#227'o da c'#233'lula...'
    Color = 16776176
    DataSource = DsOPCelulas
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CEL_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
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
        FieldName = 'CEL_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#233'lula'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_TRABALHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Servi'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_DTENTROU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_TUPTRAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'TUP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_DTCONCLUIU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Finaliza'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSV_QTDECONC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Entregue'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSV_QTDEDEFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Defeito'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 721
    Height = 79
    Caption = 'Ordem de Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 202
      Top = 25
      Width = 54
      Height = 13
      Caption = 'Descri'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 21
      Top = 24
      Width = 47
      Height = 13
      Caption = 'O.P. No. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 53
      Width = 58
      Height = 13
      Caption = 'Refer'#234'ncia :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 190
      Top = 53
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'TUP Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 482
      Top = 53
      Width = 103
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde Total '#224' Produzir:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 346
      Top = 53
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'TUP Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditOsv_codigo: TEdit
      Left = 69
      Top = 20
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditPrdDescri: TEdit
      Left = 258
      Top = 20
      Width = 400
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditPrd_refer: TEdit
      Left = 69
      Top = 49
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrTupProd: TCurrencyEdit
      Left = 258
      Top = 49
      Width = 60
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object CurrTupTotal: TCurrencyEdit
      Left = 400
      Top = 49
      Width = 60
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CurrQtdeTotalProduz: TCurrencyEdit
      Left = 588
      Top = 49
      Width = 70
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 10
    Top = 434
    Width = 165
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 10841658
    TabOrder = 5
    object Bit_Imprimi: TBitBtn
      Left = 4
      Top = 4
      Width = 157
      Height = 25
      Caption = 'Imprime Ficha &Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = Bit_ImprimiClick
    end
  end
  object RdPrintEntrega: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 75
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Ficha de Envio de Produ'#231#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 132
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 32
    Top = 409
  end
  object SqlCdsExecuta: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select'#13#10'X1.*'#13#10'from CEL_MOV04 X1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select'#13#10'X1.*'#13#10'from CEL_MOV04 X1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 432
    Top = 176
    object SqlCdsExecutaCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      Required = True
    end
    object SqlCdsExecutaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 6
    end
    object SqlCdsExecutaCEM_QTDE: TFMTBCDField
      FieldName = 'CEM_QTDE'
      Precision = 15
    end
    object SqlCdsExecutaCEM_DEFEITO: TFMTBCDField
      FieldName = 'CEM_DEFEITO'
      Precision = 15
    end
    object SqlCdsExecutaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsExecutaCEM_DTPRODUZ: TDateField
      FieldName = 'CEM_DTPRODUZ'
    end
    object SqlCdsExecutaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsExecuta: TDataSource
    DataSet = SqlCdsExecuta
    Left = 464
    Top = 176
  end
  object DsOPCelulas: TDataSource
    DataSet = SqlCdsOPCelulas
    Left = 384
    Top = 368
  end
  object SqlCdsOPCelulas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'C1.*,'#13#10'C2.CEL_NOME'#13#10'from cel_mov03 C1'#13#10'left join cel0000' +
      ' C2 on C1.cel_codigo = C2.cel_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeOpen = SqlCdsOPCelulasBeforeOpen
    AfterScroll = SqlCdsOPCelulasAfterScroll
    CommandText = 
      'Select'#13#10'C1.*,'#13#10'C2.CEL_NOME'#13#10'from cel_mov03 C1'#13#10'left join cel0000' +
      ' C2 on C1.cel_codigo = C2.cel_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 352
    Top = 368
    object SqlCdsOPCelulasCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsOPCelulasCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsOPCelulasCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Size = 30
    end
    object SqlCdsOPCelulasCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      Precision = 15
    end
    object SqlCdsOPCelulasOSV_QTDECONC: TFMTBCDField
      FieldName = 'OSV_QTDECONC'
      Precision = 15
    end
    object SqlCdsOPCelulasOSV_QTDEDEFE: TFMTBCDField
      FieldName = 'OSV_QTDEDEFE'
      Precision = 15
    end
    object SqlCdsOPCelulasCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
    end
    object SqlCdsOPCelulasCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
    end
    object SqlCdsOPCelulasCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      Required = True
    end
    object SqlCdsOPCelulasOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 6
    end
    object SqlCdsOPCelulasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsOPCelulasOSV_EMISSAO: TDateField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsOPCelulasOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object SqlCdsOPCelulasOSV_VALORPECA: TFMTBCDField
      FieldName = 'OSV_VALORPECA'
      Precision = 15
    end
    object SqlCdsOPCelulasOSV_VALORDEFE: TFMTBCDField
      FieldName = 'OSV_VALORDEFE'
      Precision = 15
    end
    object SqlCdsOPCelulasPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsOPCelulasCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object SqlCdsOPCelulasCEM_PRECOUNIT: TFMTBCDField
      FieldName = 'CEM_PRECOUNIT'
      Precision = 15
    end
    object SqlCdsOPCelulasCEM_TUPUNIT: TFMTBCDField
      FieldName = 'CEM_TUPUNIT'
      Precision = 15
    end
    object SqlCdsOPCelulasCEM_CELAUX: TStringField
      FieldName = 'CEM_CELAUX'
      Size = 1
    end
    object SqlCdsOPCelulasVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlCdsOPCelulasCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      Size = 1
    end
    object SqlCdsOPCelulasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsCelulaOP: TSqlClientDataSet
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
    Left = 216
    Top = 96
    object SqlCdsCelulaOPCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsCelulaOPCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
  object DsCelulaOP: TDataSource
    DataSet = SqlCdsCelulaOP
    Left = 248
    Top = 96
  end
end
