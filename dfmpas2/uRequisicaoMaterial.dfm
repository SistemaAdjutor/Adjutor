inherited frmRequisicaoMaterial: TfrmRequisicaoMaterial
  Left = 0
  Top = 0
  Caption = 'Requisi'#231#227'o de Materiais'
  ClientHeight = 485
  ClientWidth = 894
  Constraints.MinHeight = 400
  Constraints.MinWidth = 765
  Position = poDesigned
  OnKeyUp = FormKeyUp
  ExplicitWidth = 902
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 894
    Height = 129
    Align = alTop
    TabOrder = 0
    object lbDescCodigo: TLabel
      Left = 16
      Top = 12
      Width = 94
      Height = 19
      Caption = 'Requisi'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDtReq: TLabel
      Left = 483
      Top = 12
      Width = 45
      Height = 19
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbData: TDBText
      Left = 532
      Top = 12
      Width = 134
      Height = 17
      DataField = 'REM_DATA'
      DataSource = dsRequisicao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbCodigo: TDBText
      Left = 114
      Top = 12
      Width = 122
      Height = 17
      DataField = 'REM_CODIGO'
      DataSource = dsRequisicao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 31
      Width = 355
      Height = 43
      TabOrder = 0
      object Label1: TLabel
        Left = 6
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Almoxarifado:'
      end
      object cbAlmoxarifado: TSgDbSearchCombo
        Left = 128
        Top = 13
        Width = 196
        Height = 21
        EmptyText = 'Produtos sem Almoxarifado'
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'AMX_CODIGO, AMX_DESCRI'
        LookupOrderBy = 'AMX_DESCRI'
        LookupTable = 'ALMOX0000'
        LookupDispl = 'AMX_DESCRI'
        OnSelect = cbAlmoxarifadoSelect
        GridAutoSize = False
        LookupSource = qAlmoxarifado
        LookupKeyField = 'AMX_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Almoxarifados'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object dbAmxCodigo: TDBEdit
        Left = 74
        Top = 13
        Width = 52
        Height = 21
        DataField = 'AMX_CODIGO'
        DataSource = dsRequisicao
        TabOrder = 1
        OnChange = dbAmxCodigoChange
        OnExit = dbAmxCodigoExit
      end
    end
    object GroupBox2: TGroupBox
      Left = 377
      Top = 31
      Width = 320
      Height = 43
      TabOrder = 1
      object Label2: TLabel
        Left = 6
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Setor:'
      end
      object cbSetor: TSgDbSearchCombo
        Left = 90
        Top = 13
        Width = 196
        Height = 21
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'SET_CODIGO, SET_DESCRICAO'
        LookupOrderBy = 'SET_DESCRICAO'
        LookupTable = 'SETOR'
        LookupDispl = 'SET_DESCRICAO'
        OnSelect = cbSetorSelect
        GridAutoSize = False
        LookupSource = qSetor
        LookupKeyField = 'SET_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Setores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object dbSetCodigo: TDBEdit
        Left = 38
        Top = 13
        Width = 49
        Height = 21
        DataField = 'SET_CODIGO'
        DataSource = dsRequisicao
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 16
      Top = 80
      Width = 355
      Height = 27
      Alignment = taLeftJustify
      Caption = ' Requisitante:'
      TabOrder = 2
      object dbRequisitante: TDBEdit
        Left = 74
        Top = 3
        Width = 278
        Height = 21
        DataField = 'REM_REQUISITANTE'
        DataSource = dsRequisicao
        TabOrder = 0
      end
    end
    object rgRemStatus: TDBRadioGroup
      Left = 377
      Top = 96
      Width = 209
      Height = 33
      Caption = 'Status'
      Columns = 3
      DataField = 'REM_STATUS'
      DataSource = dsRequisicao
      Items.Strings = (
        'Pendente'
        'Atendido'
        'Parcial')
      ReadOnly = True
      TabOrder = 3
      Values.Strings = (
        'P'
        'A'
        'R')
      Visible = False
      OnChange = rgRemStatusChange
    end
    object GroupBox4: TGroupBox
      Left = 377
      Top = 75
      Width = 185
      Height = 32
      Caption = 'Status'
      TabOrder = 4
      object lbStatus: TLabel
        Left = 10
        Top = 13
        Width = 47
        Height = 13
        Caption = 'lbStatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object gbOrigem: TGroupBox
      Left = 568
      Top = 75
      Width = 185
      Height = 32
      Caption = 'Origem'
      TabOrder = 5
      object lbOrigem: TLabel
        Left = 10
        Top = 13
        Width = 51
        Height = 13
        Caption = 'lbOrigem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 430
    Width = 894
    Height = 36
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      894
      36)
    object btImprime: TJvArrowButton
      Left = 99
      Top = 6
      Width = 84
      Height = 25
      Caption = '&Imprimir'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
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
      OnClick = btImprimeClick
    end
    object btCancela: TBitBtn
      Left = 708
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Anchors = [akTop, akRight]
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
      TabOrder = 0
      TabStop = False
      OnClick = btCancelaClick
    end
    object btSalva: TBitBtn
      Left = 614
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Anchors = [akTop, akRight]
      Caption = '&Salvar'
      Enabled = False
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
      TabOrder = 1
      TabStop = False
      OnClick = btSalvaClick
    end
    object btExclui: TBitBtn
      Left = 519
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Anchors = [akTop, akRight]
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
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
      TabOrder = 2
      TabStop = False
      OnClick = btExcluiClick
    end
    object btNovo: TBitBtn
      Left = 329
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
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
      TabOrder = 3
      TabStop = False
      OnClick = btNovoClick
    end
    object btConsulta: TBitBtn
      Left = 8
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
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
      TabOrder = 4
      TabStop = False
      OnClick = btConsultaClick
    end
    object btEdita: TBitBtn
      Left = 424
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Edita Pedido'
      Anchors = [akTop, akRight]
      Caption = 'Editar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
        00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
        0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
        00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
        0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
        F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
        A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
        F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
        A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
        F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
        A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
        F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
        A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
        FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
        A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
        FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
        0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = btEditaClick
    end
    object btSai: TBitBtn
      Left = 802
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Sair'
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
      TabOrder = 6
      TabStop = False
      OnClick = btSaiClick
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 383
    Width = 894
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      894
      47)
    object btAdicionarItem: TBitBtn
      Left = 673
      Top = 3
      Width = 82
      Height = 38
      Hint = 'Adiciona novo item'
      Anchors = [akTop, akRight]
      Caption = 'Adicionar [F2]'
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
        2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
        51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
        8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
        8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      TabOrder = 0
      OnClick = btAdicionarItemClick
    end
    object gbTotalItens: TGroupBox
      Left = 1
      Top = -3
      Width = 136
      Height = 50
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lbItens: TLabel
        Left = 40
        Top = 8
        Width = 23
        Height = 14
        Caption = 'Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object CurTotalItens: TCurrencyEdit
        Left = 40
        Top = 22
        Width = 64
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 0
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ZeroEmpty = False
      end
    end
    object btAutoriza: TBitBtn
      Left = 761
      Top = 3
      Width = 125
      Height = 38
      Hint = 'Abre tela de autoriza'#231#227'o de retirada de materiais'
      Anchors = [akTop, akRight]
      Caption = 'Autoriza Retirada [F3]'
      Glyph.Data = {
        26050000424D26050000000000003604000028000000100000000F0000000100
        080000000000F0000000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0404FFFFFFFFFFFFFFFFFFFFFFFFFFFA020204
        FFFFFFFFFFFFFFFFFFFFFFFF0202020204FFFFFFFFFFFFFFFFFFFFFF02020202
        0204FFFFFFFFFFFFFFFFFFFF020202FA020204FFFFFFFFFFFFFFFFFF020204FF
        FA020204FFFFFFFFFFFFFFFFFA0204FFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFA020204A4FFFFFFFFFFFFFFFFFFFFFFFFFA020204A4FFFFFFFFFFFFFFFF
        FFFFFFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFFFFFFFA02A4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      TabOrder = 2
      OnClick = btAutorizaClick
    end
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 129
    Width = 894
    Height = 155
    Align = alClient
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = dsItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'RMI_CODIGO'
        Visible = False
        Options.Editing = False
        Width = 86
      end
      object cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'REM_CODIGO'
        Visible = False
        Options.Editing = False
        Width = 101
      end
      object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_REFER'
        OnGetDataText = cxGrid1DBTableView1PRD_REFERGetDataText
        Options.Editing = False
        Width = 534
      end
      object cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'RMI_QUANTIDADE'
        Options.Editing = False
      end
      object cxGrid1DBTableView1PRD_UND: TcxGridDBColumn
        Caption = 'UND'
        DataBinding.FieldName = 'PRD_UND'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 0
    Top = 284
    Width = 894
    Height = 99
    Align = alBottom
    Caption = 'Observa'#231#245'es'
    TabOrder = 4
    object dbObservacao: TDBMemo
      Left = 2
      Top = 15
      Width = 890
      Height = 82
      Align = alClient
      DataField = 'REM_OBSERVACAO'
      DataSource = dsRequisicao
      TabOrder = 0
    end
  end
  object StatusBar: TJvStatusBar [5]
    Left = 0
    Top = 466
    Width = 894
    Height = 19
    Panels = <
      item
        Width = 150
        Control = lbVerde
      end
      item
        Width = 50
        Control = lbVermelho
      end>
    object lbVerde: TLabel
      Left = 3
      Top = 3
      Width = 95
      Height = 13
      Caption = 'Verde - Atendido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbVermelho: TLabel
      Left = 153
      Top = 3
      Width = 119
      Height = 13
      Caption = 'Vermelho - Pendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 536
    Top = 264
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 600
    Top = 264
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 480
    Top = 161
  end
  inherited qAux: TSQLQuery
    Left = 530
    Top = 205
  end
  inherited qAux2: TSQLQuery
    Left = 586
    Top = 204
  end
  inherited qAux3: TSQLQuery
    Left = 634
    Top = 204
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 554
    Top = 160
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 634
    Top = 160
  end
  object qRequisicao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM REQUISICAO_MATERIAL')
    SQLConnection = DBConn
    Left = 120
    Top = 104
  end
  object qItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT rmi.*, '
      '    (SELECT PRD_UND  FROM PRD0000 p '
      '      WHERE p.PRD_REFER = rmi.PRD_REFER) ,'
      '    (SELECT AMX_CODIGO  FROM PRD0000 p '
      '      WHERE p.PRD_REFER = rmi.PRD_REFER) '
      ''
      'FROM REQUISICAO_MATERIAL_ITEM rmi')
    SQLConnection = DBConn
    Left = 232
    Top = 104
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 232
    Top = 256
  end
  object dsRequisicao: TDataSource
    DataSet = cdsRequisicao
    Left = 120
    Top = 256
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItem'
    Left = 232
    Top = 208
    object cdsItemRMI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo do Item'
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object cdsItemREM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Req. Material'
      FieldName = 'REM_CODIGO'
    end
    object cdsItemPRD_REFER: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PRD_REFER'
    end
    object cdsItemRMI_QUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'RMI_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsItemPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object cdsItemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object cdsRequisicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRequisicao'
    AfterEdit = cdsRequisicaoAfterEdit
    Left = 120
    Top = 208
    object cdsRequisicaoREM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Requisi'#231#227'o'
      FieldName = 'REM_CODIGO'
      Required = True
    end
    object cdsRequisicaoEMP_CODIGO: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsRequisicaoAMX_CODIGO: TStringField
      DisplayLabel = 'Almoxarifado'
      FieldName = 'AMX_CODIGO'
      EditMask = '9999'
      Size = 4
    end
    object cdsRequisicaoREM_DATA: TDateField
      DisplayLabel = 'Data Requisi'#231#227'o'
      FieldName = 'REM_DATA'
    end
    object cdsRequisicaoREM_REQUISITANTE: TStringField
      DisplayLabel = 'Requisitante'
      FieldName = 'REM_REQUISITANTE'
      Size = 255
    end
    object cdsRequisicaoSET_CODIGO: TIntegerField
      DisplayLabel = 'Setor'
      FieldName = 'SET_CODIGO'
    end
    object cdsRequisicaoREM_OBSERVACAO: TMemoField
      FieldName = 'REM_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsRequisicaoREM_STATUS: TStringField
      FieldName = 'REM_STATUS'
      Size = 1
    end
    object cdsRequisicaoRMO_CODIGO: TIntegerField
      FieldName = 'RMO_CODIGO'
    end
  end
  object dspRequisicao: TDataSetProvider
    DataSet = qRequisicao
    Left = 120
    Top = 152
  end
  object dspItem: TDataSetProvider
    DataSet = qItem
    Left = 232
    Top = 152
  end
  object qAlmoxarifado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 336
    Top = 71
  end
  object qSetor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 696
    Top = 31
  end
  object frxRequisicao: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 43622.602971782400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  RAZAO, ENDERECO, CEP, CIDADE, UF, FONE,'
      
        '  BAIRRO, FAX, EMAIL, CNPJ, INSCR:  string;                     ' +
        '  '
      '    '
      'begin'
      'end.')
    OnBeginDoc = frxRequisicaoBeginDoc
    OnGetValue = frxRequisicaoGetValue
    Left = 414
    Top = 320
    Datasets = <
      item
        DataSet = frxDBRequisicao
        DataSetName = 'frxDBRequisicao'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 268.196970000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 14.118120000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 165.267780000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 7.559060000000000000
          Width = 430.866136850000000000
          Height = 60.472465350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 205.283550000000000000
          Top = 68.692950000000000000
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ: [CNPJ]')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO: TfrxMemoView
          Left = 241.889920000000000000
          Top = 139.472480000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REQUISI'#199#195'O DE MATERIAL')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO1: TfrxMemoView
          Left = 582.047620000000000000
          Top = 47.677180000000000000
          Width = 128.504020000000000000
          Height = 26.456695350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' [frxDBRequisicao."REM_CODIGO"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CONTATO: TfrxMemoView
          Left = 7.779530000000000000
          Top = 190.622140000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Requisitante: [frxDBRequisicao."REM_REQUISITANTE"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBFornecedorFOR_FONCONT: TfrxMemoView
          Left = 382.086890000000000000
          Top = 190.622152200000000000
          Width = 332.598640000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Setor: [frxDBRequisicao."SET_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_RAZAO: TfrxMemoView
          Left = 76.779530000000000000
          Top = 168.944960000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRequisicao."REM_DATA"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 242.196970000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Top = 243.196970000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 90.708720000000000000
          Top = 243.196970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 640.842920000000000000
          Top = 243.196970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 264.417440000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo39: TfrxMemoView
          Left = 7.338590000000000000
          Top = 168.944960000000000000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 497.457020000000000000
          Top = 243.196970000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 549.811380000000000000
          Top = 243.196970000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 168.944960000000000000
          Width = 521.575140000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Almoxarifado: [frxDBRequisicao."AMX_DESCRI"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 204.094620000000000000
          Top = 102.149660000000000000
          Width = 506.457020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 211.653680000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Status: [frxDBRequisicao."REQSTATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 415.748031496063000000
          Top = 242.889920000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 367.953000000000000000
          Top = 210.433210000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Origem: [frxDBRequisicao."RMO_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBRequisicao
        DataSetName = 'frxDBRequisicao'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object frxDBPedidoItemPRD_REFER: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBRequisicao
          DataSetName = 'frxDBRequisicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRequisicao."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 497.897960000000000000
          Top = 1.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBRequisicao
          DataSetName = 'frxDBRequisicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicao."PRD_UND"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 92.047310000000000000
          Top = 1.000000000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRequisicao."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRequisicao
          DataSetName = 'frxDBRequisicao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicao."SALDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 552.590910000000000000
          Top = 1.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'RMI_QUANTIDADE'
          DataSet = frxDBRequisicao
          DataSetName = 'frxDBRequisicao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRequisicao."RMI_QUANTIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRequisicao."RMA_STATUS"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBRequisicao."REM_CODIGO"'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo26: TfrxMemoView
          Left = 2.559060000000000000
          Top = 5.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 23.118120000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[OBSERVACAO]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 158.740260000000000000
        Top = 521.575140000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 6.779530000000000000
          Top = 71.811070000000000000
          Width = 710.551640000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Autorizado por: ___________________________________________ Data' +
              ' ____/____/________')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Top = 129.488250000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 5.677180000000000000
          Top = 138.047310000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Adjutor ERP - www.novisistemas.com.br')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 411.968770000000000000
          Top = 137.047310000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'IMPRESS'#195'O [<Date>]  [<Time>]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 714.331170000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Solicitante / Assinatura: ____________________________________ D' +
              'ata ____/____/________')
          ParentFont = False
        end
      end
    end
  end
  object frxDBRequisicao: TfrxDBDataset
    UserName = 'frxDBRequisicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REM_CODIGO=REM_CODIGO'
      'EMP_CODIGO=EMP_CODIGO'
      'AMX_CODIGO=AMX_CODIGO'
      'REM_DATA=REM_DATA'
      'REM_REQUISITANTE=REM_REQUISITANTE'
      'SET_CODIGO=SET_CODIGO'
      'REM_OBSERVACAO=REM_OBSERVACAO'
      'REM_STATUS=REM_STATUS'
      'RMO_CODIGO=RMO_CODIGO'
      'RMI_CODIGO=RMI_CODIGO'
      'REM_CODIGO_1=REM_CODIGO_1'
      'PRD_REFER=PRD_REFER'
      'RMI_QUANTIDADE=RMI_QUANTIDADE'
      'RMO_CODIGO_1=RMO_CODIGO_1'
      'RMO_DESCRICAO=RMO_DESCRICAO'
      'RMA_STATUS=RMA_STATUS'
      'REQSTATUS=REQSTATUS'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'SET_DESCRICAO=SET_DESCRICAO'
      'AMX_DESCRI=AMX_DESCRI'
      'SALDO=SALDO')
    DataSet = qRelatorio
    BCDToCurrency = False
    Left = 328
    Top = 320
  end
  object qRelatorio: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT rm.*, rmi.*, rmo.*,'
      
        'CASE rma.RMA_STATUS WHEN '#39'C'#39' THEN '#39'Atendido'#39' ELSE '#39'Pendente'#39' END' +
        ' AS RMA_STATUS,  '
      
        'CASE rm.REM_STATUS WHEN '#39'P'#39' THEN '#39'Pendente'#39' WHEN '#39'A'#39' THEN '#39'Atend' +
        'ido'#39' ELSE '#39'Parcial'#39' END AS ReqStatus,'
      'p.PRD_DESCRI, p.PRD_UND, s.SET_DESCRICAO, a.AMX_DESCRI,'
      
        '(SELECT FIRST 1 kas_saldo FROM kardex_almox_saldo k WHERE prd_co' +
        'digo = (SELECT PRD_CODIGO FROM PRD0000 p2 WHERE p2.PRD_REFER = p' +
        '.PRD_REFER) and amx_codigo= '#39'0001'#39' AND k.EMP_CODIGO = '#39'001'#39') AS ' +
        'Saldo'
      #9'FROM REQUISICAO_MATERIAL rm'
      
        'JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rm.REM_CODIGO = rmi.REM_CO' +
        'DIGO)'
      
        'JOIN REQUISICAO_MATERIAL_AUT rma ON (rma.RMI_CODIGO = rmi.RMI_CO' +
        'DIGO)'
      
        'JOIN REQUISICAO_MATERIAL_ORI rmo ON (rm.RMO_CODIGO = rmo.RMO_COD' +
        'IGO)'
      'JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER )'
      'JOIN SETOR s ON (s.SET_CODIGO = rm.SET_CODIGO)'
      'JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO)'
      'WHERE rm.REM_CODIGO =1')
    SQLConnection = DBConn
    Left = 160
    Top = 320
  end
  object dsRelatorio: TDataSource
    DataSet = qRelatorio
    Left = 240
    Top = 320
  end
end
