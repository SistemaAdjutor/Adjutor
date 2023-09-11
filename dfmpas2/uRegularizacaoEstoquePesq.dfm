inherited frmRegularizacaoEstoquePesq: TfrmRegularizacaoEstoquePesq
  Left = 213
  Top = 168
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 501
  ClientWidth = 1268
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIForm
  KeyPreview = True
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1276
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 14
  object pn1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1268
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1268
      97)
    object GroupBox2: TGroupBox
      Left = 11
      Top = 41
      Width = 377
      Height = 43
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 18
        Width = 67
        Height = 14
        Caption = 'Almoxarifado:'
      end
      object edAlmoxarifado: TEdit
        Left = 91
        Top = 13
        Width = 46
        Height = 22
        MaxLength = 4
        TabOrder = 0
        OnExit = edAlmoxarifadoExit
      end
      object cbAlmoxarifado: TSgDbSearchCombo
        Left = 143
        Top = 13
        Width = 203
        Height = 22
        EmptyText = 'Produtos sem Almoxarifado'
        TabOrder = 1
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
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 2
      Width = 454
      Height = 38
      Caption = 'Pesquisar'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      TabStop = True
      object RadNome: TRadioButton
        Left = 101
        Top = 16
        Width = 74
        Height = 17
        Caption = '&Descri'#231#227'o'
        TabOrder = 1
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RadRefer: TRadioButton
        Left = 4
        Top = 16
        Width = 74
        Height = 17
        Caption = '&Refer'#234'ncia'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadReferClick
        OnExit = RadReferExit
      end
      object rbCodigoFornecedor: TRadioButton
        Left = 197
        Top = 16
        Width = 117
        Height = 17
        Caption = '&C'#243'digo Fornecedor'
        TabOrder = 2
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RbEnderecamento: TRadioButton
        Left = 333
        Top = 16
        Width = 117
        Height = 17
        Caption = 'Endere'#231'amento'
        TabOrder = 3
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
    end
    object GbPesquisa: TGroupBox
      Left = 394
      Top = 41
      Width = 273
      Height = 44
      Caption = 'Informe a Refer'#234'ncia do produto :'
      TabOrder = 2
      TabStop = True
      object Edt_Nome: TEdit
        Left = 3
        Top = 18
        Width = 260
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Edt_NomeChange
      end
    end
    object BitPesquisar: TBitBtn
      Left = 1159
      Top = 5
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'P&esquisar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F8F8F870333337F33F7FFF37F333307F9F8F9F703
        33337F377777337F3333078F8F8F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitPesquisarClick
    end
    object BitSair: TBitBtn
      Left = 1159
      Top = 36
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Glyph.Data = {
        26050000424D26050000000000003604000028000000100000000F0000000100
        080000000000F000000000000000000000000001000000000000000000000000
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000707F70707F7
        07F707A49B07F707070707F7F7F7F7F7F7F7F752FE5207F7F70707F707F7F7F7
        F7F70752FE06485BF707A45B525B5B525B070752FE06060052A4070707070808
        00005B49FE060651F70707070707A45252F7A452FE060651F70707070707A458
        49A5A452FE480651F70707F753530AFE0652F752FE539851F7070750A8A806FE
        FE065252FE980651F7070706FE090909FFFE4952FE060651F70707A553530AF1
        FE49F752FE060651F70707070708A5F049A5A452FE060651F70707070707F752
        52A4A4A459FE0649F70707070707070852A4A4A4A55AFE49F707070707070707
        9B5B5B5B9B5B5BA40707}
      TabOrder = 4
      OnClick = BitSairClick
    end
    object btnLimpar: TBitBtn
      Left = 1159
      Top = 67
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Limpar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555558888F888555F55500000000555055558888888855F85555005500055055
        555588F5888F58555555005550055555555588FF588F5FF55555500550050055
        5555588FF88588FF555555005050110555555588F858888FF555555505099910
        555555FF85888888FF555005550999910555588F5F88888885F5500505509990
        3055588F85F88888585F55005055090B030555885855888585855555555550B0
        B03055555F555858585855550555550B0B335555855555858555555555555550
        BBB35555F55555585F555550555555550BBB55585555555585F5555555555555
        50BB555555555555585F555555555555550B5555555555555585}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = btnLimparClick
    end
    object BitBtn1: TBitBtn
      Left = 1048
      Top = 5
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Relat'#243'rio'
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 1048
      Top = 36
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Exportar'
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
      TabOrder = 7
      OnClick = BitBtn2Click
    end
  end
  object GrpProdutos: TGroupBox [1]
    Left = 0
    Top = 97
    Width = 1268
    Height = 282
    Align = alClient
    TabOrder = 1
    TabStop = True
    object DbProdutoGrid: TDBGrid
      Left = 2
      Top = 16
      Width = 1264
      Height = 264
      Align = alClient
      Color = 16776176
      DataSource = DsRefer
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbProdutoGridDrawColumnCell
      OnDblClick = DbProdutoGridDblClick
      OnKeyDown = DbProdutoGridKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 384
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_ESTOQUE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI_CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIN_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Grupo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDE_ENDERECO'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Caption = 'Und'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_MINIMO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_MAXIMO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_ESTOQUE_SEGURANCA_REG'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_LOTE_COMPRA_REG'
          Title.Caption = 'Lote de Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_OBSERVACAO_REG'
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DATA_REG'
          Title.Caption = 'Data Regulariza'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_USU_CODIGO_REG'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox [2]
    Left = 0
    Top = 379
    Width = 1268
    Height = 122
    Align = alBottom
    Caption = 'Estoque do Produto'
    TabOrder = 2
    object JvDBGrid5: TJvDBGrid
      Left = 2
      Top = 16
      Width = 1264
      Height = 104
      Align = alClient
      Color = 16776176
      Ctl3D = True
      DataSource = DsSaldos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      EditControls = <>
      AutoSizeRows = False
      RowsHeight = 17
      TitleRowHeight = 24
      WordWrap = True
      Columns = <
        item
          Expanded = False
          FieldName = 'AMX_CODIGO_RET'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI_RET'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Almoxarifado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 816
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_SALDO_RET'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 217
          Visible = True
        end>
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 704
    Top = 312
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 776
    Top = 312
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
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
    Left = 648
    Top = 313
  end
  inherited qAux: TSQLQuery
    Left = 314
    Top = 205
  end
  inherited qAux2: TSQLQuery
    Left = 354
    Top = 204
  end
  inherited qAux3: TSQLQuery
    Left = 394
    Top = 204
  end
  object DsRefer: TDataSource
    DataSet = cdsRefer
    Left = 232
    Top = 168
  end
  object DspSaldos: TDataSetProvider
    DataSet = sqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 614
    Top = 377
  end
  object CdsSaldos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AMX_CODIGO_RET'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_DESCRI_RET'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMX_SALDO_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldos'
    StoreDefs = True
    Left = 700
    Top = 377
    object CdsSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object CdsSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object CdsSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 785
    Top = 377
  end
  object qAlmoxarifado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 464
    Top = 239
  end
  object qRefer: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM PRD0000')
    SQLConnection = DBConn
    Left = 80
    Top = 167
  end
  object dspRfer: TDataSetProvider
    DataSet = qRefer
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 134
    Top = 169
  end
  object cdsRefer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRfer'
    AfterScroll = cdsReferAfterScroll
    Left = 184
    Top = 168
    object cdsReferPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsReferPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object cdsReferPRD_ESTOQUE: TFMTBCDField
      DisplayLabel = 'Em Estoque'
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object cdsReferIPI_CODIGO: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object cdsReferPRD_UND: TStringField
      DisplayLabel = 'Unidade.'
      FieldName = 'PRD_UND'
      Size = 3
    end
    object TFMTBCDField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object cdsReferPRD_MAXIMO: TFMTBCDField
      DisplayLabel = 'M'#225'ximo'
      FieldName = 'PRD_MAXIMO'
      DisplayFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object cdsReferPRD_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsReferPRD_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object cdsReferLIN_DESCRI: TStringField
      DisplayLabel = 'Linha'
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object cdsReferPRDE_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object cdsReferPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField
      DisplayLabel = 'Estoque de Seguran'#231'a'
      FieldName = 'PRD_ESTOQUE_SEGURANCA_REG'
      OnGetText = cdsReferPRD_ESTOQUE_SEGURANCA_REGGetText
      DisplayFormat = '#,###0.0000'
      Precision = 18
      Size = 4
    end
    object cdsReferPRD_LOTE_COMPRA_REG: TStringField
      DisplayLabel = 'Lote de compra'
      FieldName = 'PRD_LOTE_COMPRA_REG'
      Size = 30
    end
    object cdsReferPRD_OBSERVACAO_REG: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PRD_OBSERVACAO_REG'
      OnGetText = cdsReferPRD_OBSERVACAO_REGGetText
      BlobType = ftMemo
      Size = 1
    end
    object cdsReferPRD_DATA_REG: TDateField
      DisplayLabel = 'Data da Regulamenta'#231#227'o'
      FieldName = 'PRD_DATA_REG'
    end
    object cdsReferPRD_USU_CODIGO_REG: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'PRD_USU_CODIGO_REG'
      OnGetText = cdsReferPRD_USU_CODIGO_REGGetText
    end
    object cdsReferAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object cdsReferUSU_NOME: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_NOME'
      Size = 40
    end
    object cdsReferEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object sqlSaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 552
    Top = 375
  end
  object frxDBRefer: TfrxDBDataset
    UserName = 'frxDBRefer'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_ESTOQUE=PRD_ESTOQUE'
      'IPI_CODIGO=IPI_CODIGO'
      'PRD_UND=PRD_UND'
      'PRD_MINIMO=PRD_MINIMO'
      'PRD_MAXIMO=PRD_MAXIMO'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_STATUS=PRD_STATUS'
      'LIN_DESCRI=LIN_DESCRI'
      'PRDE_ENDERECO=PRDE_ENDERECO'
      'PRD_ESTOQUE_SEGURANCA_REG=PRD_ESTOQUE_SEGURANCA_REG'
      'PRD_LOTE_COMPRA_REG=PRD_LOTE_COMPRA_REG'
      'PRD_OBSERVACAO_REG=PRD_OBSERVACAO_REG'
      'PRD_DATA_REG=PRD_DATA_REG'
      'PRD_USU_CODIGO_REG=PRD_USU_CODIGO_REG'
      'AMX_CODIGO=AMX_CODIGO')
    DataSource = DsRefer
    BCDToCurrency = False
    Left = 232
    Top = 233
  end
  object frxRefer: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44830.602912303200000000
    ReportOptions.LastChange = 44830.658603946760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  RAZAO,'
      '  ENDERECO,'
      '  CEP,'
      '  CIDADE,'
      '  UF,'
      '  SITE,'
      '  FONE,'
      '  EMAIL,'
      '  CNPJ,'
      '  INSCR,'
      '  OBSERVACAO : string;'
      '    '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxReferBeginDoc
    OnGetValue = frxReferGetValue
    Left = 232
    Top = 289
    Datasets = <
      item
        DataSet = frxDBRefer
        DataSetName = 'frxDBRefer'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 132.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 108.370130000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 209.330860000000000000
          Top = 4.559060000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 209.346630000000000000
          Top = 22.779530000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 209.330860000000000000
          Top = 39.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 276.244280000000000000
          Top = 39.795300000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 466.338900000000000000
          Top = 39.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 485.236550000000000000
          Top = 39.795300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 209.110390000000000000
          Top = 56.692950000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 785.346940000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 748.803650000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 906.189550000000000000
          Top = 56.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 952.984850000000000000
          Top = 57.133890000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 899.528140000000000000
          Top = 4.535433070000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 899.528140000000000000
          Top = 22.677165350000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Refer'#234'ncia')
        end
        object Memo17: TfrxMemoView
          Left = 64.252010000000000000
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo18: TfrxMemoView
          Left = 291.023810000000000000
          Top = 112.370130000000000000
          Width = 49.133850940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 343.937230000000000000
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'NCM')
        end
        object Memo20: TfrxMemoView
          Left = 427.086890000000000000
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Linha')
        end
        object Memo21: TfrxMemoView
          Left = 540.472790000000000000
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
        end
        object Memo22: TfrxMemoView
          Left = 600.945270000000000000
          Top = 112.370130000000000000
          Width = 30.236200940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'UND')
        end
        object Memo23: TfrxMemoView
          Left = 665.197280000000000000
          Top = 112.370130000000000000
          Width = 41.574790940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#237'nimo')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 729.449290000000000000
          Top = 112.370130000000000000
          Width = 41.574790940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'M'#225'ximo')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 774.803650000000000000
          Top = 112.370130000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Seguran'#231'a')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 839.055660000000000000
          Top = 112.370130000000000000
          Width = 41.574790940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Lote')
        end
        object Memo28: TfrxMemoView
          Left = 903.307670000000000000
          Top = 112.370130000000000000
          Width = 41.574790940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo29: TfrxMemoView
          Left = 967.559680000000000000
          Top = 112.370130000000000000
          Width = 41.574790940000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Usu'#225'rio')
        end
        object Memo30: TfrxMemoView
          Top = 87.149660000000000000
          Width = 1050.709340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE REGULARIZA'#199#195'O DO ESTOQUE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRefer
        DataSetName = 'frxDBRefer'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRD_REFER"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 64.252010000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 291.023810000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_ESTOQUE'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRefer."PRD_ESTOQUE"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 343.937230000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'IPI_CODIGO'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."IPI_CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'LIN_DESCRI'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."LIN_DESCRI"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.472790000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRDE_ENDERECO'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRDE_ENDERECO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 600.945270000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_UND'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRD_UND"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 646.299630000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_MINIMO'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRefer."PRD_MINIMO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 710.551640000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_MAXIMO'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRefer."PRD_MAXIMO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 774.803650000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_ESTOQUE_SEGURANCA_REG'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRefer."PRD_ESTOQUE_SEGURANCA_REG"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 839.055660000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_LOTE_COMPRA_REG'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRD_LOTE_COMPRA_REG"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 903.307670000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DATA_REG'
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBRefer."PRD_DATA_REG"]')
          ParentFont = False
        end
        object USUARIO: TfrxMemoView
          Left = 967.559680000000000000
          Width = 75.590560940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[USUARIO]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        RowCount = 1
        Stretched = True
        object mmObservacao: TfrxMemoView
          Width = 1043.150240940000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRefer
          DataSetName = 'frxDBRefer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#245'es: [frxDBRefer."PRD_OBSERVACAO_REG"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 15.118110236220470000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade de Itens: [COUNT(MasterData1, 0)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 15.118120000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
