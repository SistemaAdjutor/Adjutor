inherited frmRequisicaoMaterialPesq: TfrmRequisicaoMaterialPesq
  Caption = 'Pesquisa de Requisi'#231#227'o de Material'
  ClientHeight = 472
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 109
    Width = 1008
    Height = 363
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
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
      DataController.DataSource = dsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'REM_CODIGO'
        Options.Editing = False
      end
      object cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'EMP_CODIGO'
        Options.Editing = False
        Width = 63
      end
      object cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'AMX_CODIGO'
        OnGetDataText = cxGrid1DBTableView1AMX_CODIGOGetDataText
        Options.Editing = False
        Width = 125
      end
      object cxGrid1DBTableView1REM_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'REM_DATA'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1REM_REQUISITANTE: TcxGridDBColumn
        DataBinding.FieldName = 'REM_REQUISITANTE'
        Options.Editing = False
        Width = 210
      end
      object cxGrid1DBTableView1REM_STATUS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'REM_STATUS'
        OnGetDataText = cxGrid1DBTableView1REM_STATUSGetDataText
        Options.Editing = False
        Width = 73
      end
      object cxGrid1DBTableView1SET_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'SET_CODIGO'
        OnGetDataText = cxGrid1DBTableView1SET_CODIGOGetDataText
        FooterAlignmentHorz = taLeftJustify
        GroupSummaryAlignment = taLeftJustify
        Options.Editing = False
        Width = 195
      end
      object cxGrid1DBTableView1REM_OBSERVACAO: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'REM_OBSERVACAO'
        OnGetDataText = cxGrid1DBTableView1REM_OBSERVACAOGetDataText
        Options.Editing = False
        Width = 200
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
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
      OnCustomDrawCell = cxGrid1DBTableView2CustomDrawCell
      DataController.DataSource = dsDetalhe
      DataController.DetailKeyFieldNames = 'REM_CODIGO'
      DataController.KeyFieldNames = 'REM_CODIGO'
      DataController.MasterKeyFieldNames = 'REM_CODIGO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView2RMI_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'RMI_CODIGO'
        Visible = False
        Options.Editing = False
        Width = 89
      end
      object cxGrid1DBTableView2REM_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'REM_CODIGO'
        Visible = False
        Options.Editing = False
        Width = 92
      end
      object cxGrid1DBTableView2PRD_REFER: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        OnGetDataText = cxGrid1DBTableView2PRD_REFERGetDataText
        Options.Editing = False
        Width = 323
      end
      object cxGrid1DBTableView2RMI_QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'RMI_QUANTIDADE'
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1008
    Height = 109
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1008
      109)
    object btPesquisar: TSpeedButton
      Left = 919
      Top = 5
      Width = 85
      Height = 34
      Hint = 
        'Executa a filtragem dos registros com as informa'#231#245'es digitadas n' +
        'os campos de pesquisa.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9E9E9D9996FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF9D9E9EC4C4C49D9996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF9D9E9E9D9E9ED1D0D09D9996FF00FFFF00FFFF00FF
        FF00FFFF00FFBBBBBCBBBBBCBBBBBCFF00FFFF00FFFF00FF9D9E9EAFB1B0C7BE
        C39D9996FF00FFFF00FFFF00FFFF00FFBBBABCBBBABCD4D0CEDDD9D5D5D0CFB2
        B1B1B2B1B19D9E9EB8BABA9D99969D9996FF00FFFF00FFFF00FFFF00FFB5B5B5
        CAC2BCF3EAE5FFFAF4FEFAF6FFF8F6F4EAE5CCC9C7BCBDBD9D9996FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFB5B5B5F7EDE3FCF6EFFCF6F0FCF7F2FCF8F6FE
        FAF6F4E7E2B6B4B49D9996FF00FFFF00FFFF00FFFF00FFFF00FFA6A3A0D3C6B8
        FCF3EAFBF4EEFCF4EEFCF6F0FCF7F2FCF8F4FFF6F2D9CFCA97918CFF00FFFF00
        FFFF00FFFF00FFFF00FF9D9996DECFC0FBEEE1FBF0E6FBF3EBFCF6EFFCF6F0FC
        F7F2FEF7F2E7D9D495908AFF00FFFF00FFFF00FFFF00FFFF00FF96918CD4C4B2
        FEF0E5FAEDDEFAEEE1FBF0E6FBF3EAFCF6EEFFF6F0DECFCA95908AFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF95908AFFF3E6FCF2E7FBEFE5FAEEE3FAF0E3FC
        F3E9FAEADE95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF95908A
        B8A796FEF0E5FFF6EBFEF6EBFFF7EEFCEEE2C1AFA595908AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF95908A95908AC7B6A9D1C0B4CBB8AC95
        908A95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF95908A95908A95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btPesquisarClick
      ExplicitLeft = 922
    end
    object btLimpar: TSpeedButton
      Left = 919
      Top = 39
      Width = 85
      Height = 32
      Hint = 'Limpa as informa'#231#245'es digitadas nos campos de pesquisas.'
      Anchors = [akTop, akRight]
      Caption = '&Limpar     '
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
      ParentShowHint = False
      ShowHint = True
      Spacing = 8
      OnClick = btLimparClick
      ExplicitLeft = 922
    end
    object btSair: TSpeedButton
      Left = 919
      Top = 71
      Width = 85
      Height = 34
      Hint = 'Encerra a Tela de Requisi'#231#227'o de Material'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Glyph.Data = {
        DA080000424DDA08000000000000360400002800000022000000210000000100
        080000000000A404000000000000000000000001000000010000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
        080808080808080808080808080808080808080808080808080808085C410808
        0808080707080808070708080807070808080000000808070708080808080808
        5C410808080708080807070808080707080808070708000E0E00080808070708
        080808085C410808080807070808080707080808070708080807000E0E060007
        08080807070808085C410807070808080707080808070708080807070808000E
        0E06060007070808080707085C41080808070708080807070808080707080808
        0707000E0E06060600000707080808085C410807080808070708080807070808
        080707080808000E0E06060606000000070708085C4108000000000000000000
        00000000080808070708000E0E06060606060000000000085C41080808080808
        0808080808080800070708080807000E0E06060606060007070808085C410808
        080808080808080808080800000007070808000E0E0606060606000707080808
        5C410808080808080808080808070800000000000000000E0E06060606060007
        070808085C410808080808080808080800070700070707070707000E0E060606
        06060007070808085C410808080808080808080800000700070707070707000E
        0E06060606060007070808085C41080808080808080808080006000007070707
        0707000E0E06060606060007070808085C410808080808080808080800060600
        070707070707000E0E06000006060007070808085C4108080808080707070707
        000E0606000707070707000E0E00070006060007070808085C41080808080707
        07070707000E0E06060007070707000E0E000F0006060007070808085C410808
        0800000000000000000E0E0E060600070707000E0E0600000606000707080808
        5C4108080006060606060606060E0E0E0E0606000707000E0E06060606060007
        070808085C410808000E0E0E0E0E0E0E0E0E0E0E0E0E06060007000E0E060606
        06060007070808085C410808000E0E0F0F0F0F0F0F0F0F0F0F0E0E060007000E
        0E06060606060007070808085C410808000E0E0E0E0E0E0E0E0E0E0F0E0E0600
        0707000E0E06060606060007070808085C4108080800000000000000000E0F0E
        0E0600070707000E0E06060606060007070808085C4108080808080808080808
        000E0E0E060007070707000E0E06060606060007070808085C41080808080808
        08080808000E0E06000707070707000E0E06060606060007070808085C410808
        0808080808080808000E0600070707070707000E0E0606060606000707080808
        5C41080808080808080808080006000007070707070707000E0E060606060007
        070808085C4108080808080808080808000008000707070707070707000E0E06
        06060007070808085C4108080808080808080808080808000707070707070707
        07000E0E06060007070808085C41080808080808080808080808080007070707
        070707070707000E0E060007070808085C410808080808080808080808080800
        0707070707070707070707000E0E0007080808085C4108080808080808080808
        0808080000000000000000000000000000000008080808085C41080808080808
        080808080808080808080808080808080808080808080808080808085C41}
      ParentShowHint = False
      ShowHint = True
      Spacing = 16
      OnClick = btSairClick
      ExplicitLeft = 922
    end
    object bitImportarXLS: TJvArrowButton
      Left = 818
      Top = 71
      Width = 95
      Height = 34
      DropDown = pmImprimir
      Caption = '&Imprimir'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
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
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 51
      Width = 257
      Height = 57
      Caption = 'Data da Requisi'#231#227'o'
      TabOrder = 0
      object Label3: TLabel
        Left = 12
        Top = 28
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label4: TLabel
        Left = 135
        Top = 28
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object dtDataInicial: TJvDateTimePicker
        Left = 32
        Top = 24
        Width = 90
        Height = 21
        Date = 44652.641507233800000000
        Time = 44652.641507233800000000
        TabOrder = 0
        DropDownDate = 44652.000000000000000000
      end
      object dtDataFinal: TJvDateTimePicker
        Left = 159
        Top = 24
        Width = 90
        Height = 21
        Date = 44652.641507233800000000
        Time = 44652.641507233800000000
        TabOrder = 1
        DropDownDate = 44652.000000000000000000
      end
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 2
      Width = 355
      Height = 43
      TabOrder = 1
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
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object edAmxCodigo: TEdit
        Left = 75
        Top = 13
        Width = 50
        Height = 21
        TabOrder = 1
        OnExit = edAmxCodigoExit
      end
    end
    object GroupBox2: TGroupBox
      Left = 365
      Top = 2
      Width = 320
      Height = 43
      TabOrder = 2
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
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object edSetorCodigo: TEdit
        Left = 38
        Top = 13
        Width = 50
        Height = 21
        TabOrder = 1
        OnExit = edSetorCodigoExit
      end
    end
    object GroupBox4: TGroupBox
      Left = 267
      Top = 51
      Width = 222
      Height = 57
      Caption = 'Requerente'
      TabOrder = 3
      object edRequerente: TEdit
        Left = 13
        Top = 24
        Width = 196
        Height = 21
        TabOrder = 0
      end
    end
    object chkNaoAtendidas: TCheckBox
      Left = 504
      Top = 71
      Width = 193
      Height = 17
      Caption = 'N'#227'o mostrar requisi'#231#245'es atendidas'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  inherited coCalcula: TACBrCalculadora
    CalcTop = 210
    CalcLeft = 558
    Left = 672
    Top = 192
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 736
    Top = 192
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
    Left = 616
    Top = 193
  end
  inherited qAux: TSQLQuery
    Left = 626
    Top = 285
  end
  inherited qAux2: TSQLQuery
    Left = 682
    Top = 284
  end
  inherited qAux3: TSQLQuery
    Left = 738
    Top = 284
  end
  object qSetor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 648
    Top = 31
  end
  object qAlmoxarifado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 328
    Top = 31
  end
  object qConsulta: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM REQUISICAO_MATERIAL')
    SQLConnection = DBConn
    Left = 208
    Top = 152
    object qConsultaREM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd Requisi'#231#227'o'
      FieldName = 'REM_CODIGO'
      Required = True
    end
    object qConsultaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qConsultaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object qConsultaREM_DATA: TDateField
      FieldName = 'REM_DATA'
    end
    object qConsultaREM_REQUISITANTE: TStringField
      FieldName = 'REM_REQUISITANTE'
      Size = 255
    end
    object qConsultaSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
    object qConsultaREM_OBSERVACAO: TMemoField
      FieldName = 'REM_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object qConsultaREM_STATUS: TStringField
      FieldName = 'REM_STATUS'
      Size = 1
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 208
    Top = 200
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 208
    Top = 248
    object cdsConsultaREM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Requisi'#231#227'o'
      FieldName = 'REM_CODIGO'
      Required = True
    end
    object cdsConsultaEMP_CODIGO: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsConsultaAMX_CODIGO: TStringField
      DisplayLabel = 'Almoxarifado'
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object cdsConsultaREM_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'REM_DATA'
    end
    object cdsConsultaREM_REQUISITANTE: TStringField
      DisplayLabel = 'Requisitante'
      FieldName = 'REM_REQUISITANTE'
      Size = 255
    end
    object cdsConsultaSET_CODIGO: TIntegerField
      DisplayLabel = 'Setor'
      FieldName = 'SET_CODIGO'
    end
    object cdsConsultaREM_OBSERVACAO: TMemoField
      FieldName = 'REM_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaREM_STATUS: TStringField
      FieldName = 'REM_STATUS'
      ReadOnly = True
      Size = 1
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 208
    Top = 296
  end
  object qDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM REQUISICAO_MATERIAL_ITEM'
      'ORDER BY REM_CODIGO, RMI_CODIGO')
    SQLConnection = DBConn
    Left = 304
    Top = 152
    object qDetalheRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object qDetalheREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
    end
    object qDetalhePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qDetalheRMI_QUANTIDADE: TFMTBCDField
      FieldName = 'RMI_QUANTIDADE'
      Precision = 18
      Size = 5
    end
  end
  object dspDetalhe: TDataSetProvider
    DataSet = qDetalhe
    Left = 304
    Top = 200
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalhe'
    Left = 304
    Top = 248
    object cdsDetalheRMI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Item Req.'
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object cdsDetalheREM_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Requisi'#231#227'o'
      FieldName = 'REM_CODIGO'
    end
    object cdsDetalhePRD_REFER: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PRD_REFER'
    end
    object cdsDetalheRMI_QUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'RMI_QUANTIDADE'
      Precision = 18
      Size = 5
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 304
    Top = 296
  end
  object pmImprimir: TPopupMenu
    Left = 848
    Top = 32
    object Listagem1: TMenuItem
      Caption = 'Listagem'
      OnClick = Listagem1Click
    end
    object ListagemporProduto1: TMenuItem
      Caption = 'Listagem por Produto'
      OnClick = ListagemporProduto1Click
    end
  end
  object frxDBListagem: TfrxDBDataset
    UserName = 'frxDBListagem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AMX_CODIGO=AMX_CODIGO'
      'AMX_DESCRI=AMX_DESCRI'
      'REM_CODIGO=REM_CODIGO'
      'REM_DATA=REM_DATA'
      'REM_REQUISITANTE=REM_REQUISITANTE'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'RMI_QUANTIDADE=RMI_QUANTIDADE'
      'REM_STATUS=REM_STATUS')
    DataSet = qListagem
    BCDToCurrency = False
    Left = 400
    Top = 256
  end
  object frxDBListagemProduto: TfrxDBDataset
    UserName = 'frxDBListagemProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AMX_CODIGO=AMX_CODIGO'
      'AMX_DESCRI=AMX_DESCRI'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'REQUISICOES=REQUISICOES'
      'TOTAL=TOTAL')
    DataSet = qListagemProduto
    BCDToCurrency = False
    Left = 512
    Top = 256
  end
  object frxListagem: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44831.364725532410000000
    ReportOptions.LastChange = 44831.364725532410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxListagemBeginDoc
    OnGetValue = frxListagemGetValue
    Left = 400
    Top = 312
    Datasets = <
      item
        DataSet = frxDBListagem
        DataSetName = 'frxDBListagem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          AllowVectorExport = True
          Left = 205.567100000000000000
          Top = 20.000000000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 37.015770000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 272.464750000000000000
          Top = 37.015770000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 462.559370000000000000
          Top = 37.015770000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 481.457020000000000000
          Top = 37.015770000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 205.330860000000000000
          Top = 53.913420000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 464.086890000000000000
          Top = 53.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 427.543600000000000000
          Top = 53.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 581.149970000000000000
          Top = 54.133890000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 627.945270000000000000
          Top = 54.354360000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.755903070000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 19.897635350000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBListagem
        DataSetName = 'frxDBListagem'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'REM_CODIGO'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagem."REM_CODIGO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'REM_DATA'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagem."REM_DATA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'REM_REQUISITANTE'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagem."REM_REQUISITANTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagem."PRD_REFER"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagem."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBListagem."RMI_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'REM_STATUS'
          DataSet = frxDBListagem
          DataSetName = 'frxDBListagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBListagem."REM_STATUS"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBListagem."AMX_DESCRI"'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[<frxDBListagem."AMX_CODIGO">] - [<frxDBListagem."AMX_DESCRI">]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Requisi'#231#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Req.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Requisitante')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 26.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 26.456710000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status'
            '')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxListagemProduto: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44831.364897905100000000
    ReportOptions.LastChange = 44831.364897905100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxListagemProdutoBeginDoc
    OnGetValue = frxListagemGetValue
    Left = 512
    Top = 312
    Datasets = <
      item
        DataSet = frxDBListagemProduto
        DataSetName = 'frxDBListagemProduto'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          AllowVectorExport = True
          Left = 205.567100000000000000
          Top = 20.000000000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 37.015770000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 272.464750000000000000
          Top = 37.015770000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 462.559370000000000000
          Top = 37.015770000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 481.457020000000000000
          Top = 37.015770000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 205.330860000000000000
          Top = 53.913420000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 464.086890000000000000
          Top = 53.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 427.543600000000000000
          Top = 53.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 581.149970000000000000
          Top = 54.133890000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 627.945270000000000000
          Top = 54.354360000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 1.755903070000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 19.897635350000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBListagemProduto
        DataSetName = 'frxDBListagemProduto'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBListagemProduto."REQUISICOES"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagemProduto."PRD_REFER"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataSet = frxDBListagemProduto
          DataSetName = 'frxDBListagemProduto'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBListagemProduto."TOTAL"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811023620000000000
          Width = 483.779840000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBListagemProduto
          DataSetName = 'frxDBListagemProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListagemProduto."PRD_DESCRI"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBListagemProduto."AMX_DESCRI"'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[<frxDBListagemProduto."AMX_CODIGO">] - [<frxDBListagemProduto."' +
              'AMX_DESCRI">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Requisi'#231#245'es')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Solicitado')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 0.000000000000000007
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qListagem: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT a.AMX_CODIGO, a.AMX_DESCRI , rm.REM_CODIGO, rm.REM_DATA,'
      '             rm.REM_REQUISITANTE, rmi.PRD_REFER, p.PRD_DESCRI, '
      '             rmi.RMI_QUANTIDADE, rm.REM_STATUS'
      '  FROM REQUISICAO_MATERIAL rm'
      
        '    JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.REM_CODIGO = rm.RE' +
        'M_CODIGO )'
      '    JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO)  '
      '    JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER)')
    SQLConnection = DBConn
    Left = 400
    Top = 200
  end
  object qListagemProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT a.AMX_CODIGO, a.AMX_DESCRI , rmi.PRD_REFER, p.PRD_DESCRI,' +
        ' '
      '       COUNT(rm.REM_CODIGO) AS Requisicoes,'
      '       SUM(rmi.RMI_QUANTIDADE) AS Total'
      'FROM REQUISICAO_MATERIAL rm'
      
        '  JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rmi.REM_CODIGO = rm.REM_' +
        'CODIGO )'
      '  JOIN ALMOX0000 a ON (a.AMX_CODIGO = rm.AMX_CODIGO)  '
      '  JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER)'
      'WHERE  rm.EMP_CODIGO = '#39'001'#39
      'GROUP BY a.AMX_CODIGO, a.AMX_DESCRI ,rmi.PRD_REFER, p.PRD_DESCRI'
      'ORDER BY a.AMX_DESCRI, p.PRD_DESCRI')
    SQLConnection = DBConn
    Left = 511
    Top = 200
  end
end
