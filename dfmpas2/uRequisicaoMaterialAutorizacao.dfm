inherited frmRequisicaoMaterialAutorizacao: TfrmRequisicaoMaterialAutorizacao
  Caption = 'Libera'#231#227'o de Requisi'#231#227'o de Material'
  ClientHeight = 475
  ClientWidth = 1243
  ExplicitWidth = 1251
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 137
    Width = 1243
    Height = 338
    Align = alClient
    TabOrder = 0
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
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RMA_SITUACAO: TcxGridDBColumn
        Caption = 'Autorizado'
        DataBinding.FieldName = 'RMA_SITUACAO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 'A'
        Properties.ValueUnchecked = 'N'
        Properties.OnChange = cxGrid1DBTableView1RMA_SITUACAOPropertiesChange
        Width = 59
      end
      object cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn
        Caption = 'N'#186' da Requisi'#231#227'o'
        DataBinding.FieldName = 'REM_CODIGO'
        Options.Editing = False
        Width = 92
      end
      object cxGrid1DBTableView1REM_DATA: TcxGridDBColumn
        Caption = 'Data da Requisicao'
        DataBinding.FieldName = 'REM_DATA'
        Options.Editing = False
        Width = 97
      end
      object cxGrid1DBTableView1REM_REQUISITANTE: TcxGridDBColumn
        Caption = 'Requisitante'
        DataBinding.FieldName = 'REM_REQUISITANTE'
        Options.Editing = False
        Width = 73
      end
      object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_DESCRI'
        Options.Editing = False
        Width = 231
      end
      object cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'RMI_QUANTIDADE'
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1SET_DESCRICAO: TcxGridDBColumn
        Caption = 'Setor'
        DataBinding.FieldName = 'SET_DESCRICAO'
        Options.Editing = False
        Width = 136
      end
      object cxGrid1DBTableView1SelecionaAutorizado: TcxGridDBColumn
        Caption = '*'
        DataBinding.FieldName = 'SELECIONARETIRADA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentHorz = taCenter
        Width = 29
      end
      object cxGrid1DBTableView1Botao: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Retirar'
            Default = True
            Kind = bkText
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = cxGrid1DBTableView1BotaoPropertiesButtonClick
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView1RMA_STATUS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'RMA_STATUS'
        OnGetDataText = cxGrid1DBTableView1RMA_STATUSGetDataText
        Options.Editing = False
        Width = 57
      end
      object cxGrid1DBTableView1USU_NOME: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'USU_NOME'
        Options.Editing = False
        Width = 97
      end
      object cxGrid1DBTableView1RMA_DATA: TcxGridDBColumn
        Caption = 'Data da Autoriza'#231#227'o'
        DataBinding.FieldName = 'RMA_DATA'
        Options.Editing = False
        Width = 102
      end
      object cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'RMI_CODIGO'
        Visible = False
      end
      object cxGrid1DBTableView1REM_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'REM_STATUS'
        Visible = False
        Width = 72
      end
      object cxGrid1DBTableView1PRD_UND: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_UND'
        Visible = False
      end
      object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        Visible = False
      end
      object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo do Produto'
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1RMA_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'RMA_CODIGO'
        Visible = False
      end
      object cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn
        Caption = 'Almoxarifado'
        DataBinding.FieldName = 'AMX_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1243
    Height = 137
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1243
      137)
    object btPesquisar: TSpeedButton
      Left = 1154
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
      Left = 1154
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
      Left = 1154
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
    object GroupBox3: TGroupBox
      Left = 4
      Top = 5
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
      object dtDataInicialReq: TJvDateTimePicker
        Left = 32
        Top = 24
        Width = 90
        Height = 21
        Date = 44652.641507233800000000
        Time = 44652.641507233800000000
        TabOrder = 0
        DropDownDate = 44652.000000000000000000
      end
      object dtDataFinalReq: TJvDateTimePicker
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
    object GroupBox2: TGroupBox
      Left = 4
      Top = 68
      Width = 285
      Height = 43
      Caption = 'Setor'
      TabOrder = 1
      object cbSetor: TSgDbSearchCombo
        Left = 58
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
      object edSetorCodigo: TEdit
        Left = 6
        Top = 13
        Width = 50
        Height = 21
        TabOrder = 1
        OnExit = edSetorCodigoExit
      end
    end
    object GroupBox4: TGroupBox
      Left = 295
      Top = 68
      Width = 229
      Height = 43
      Caption = 'Requerente'
      TabOrder = 2
      object edRequerente: TEdit
        Left = 13
        Top = 13
        Width = 196
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 267
      Top = 5
      Width = 257
      Height = 57
      Caption = 'Data da Liberacao'
      TabOrder = 3
      object Label5: TLabel
        Left = 12
        Top = 28
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label6: TLabel
        Left = 135
        Top = 28
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object dtDataInicialLib: TJvDateTimePicker
        Left = 32
        Top = 24
        Width = 90
        Height = 21
        Date = 44652.641507233800000000
        Time = 44652.641507233800000000
        TabOrder = 0
        DropDownDate = 44652.000000000000000000
      end
      object dtDataFinalLib: TJvDateTimePicker
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
      Left = 530
      Top = 5
      Width = 135
      Height = 84
      TabOrder = 4
      object cbAutorizado: TCheckBox
        Left = 16
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Autorizados'
        State = cbGrayed
        TabOrder = 0
      end
      object cbConcluido: TCheckBox
        Left = 16
        Top = 37
        Width = 97
        Height = 17
        Caption = 'Atendidos'
        State = cbGrayed
        TabOrder = 1
      end
      object cbTodos: TCheckBox
        Left = 16
        Top = 59
        Width = 97
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
      end
    end
    object btAutorizaRetirada: TButton
      Left = 743
      Top = 116
      Width = 105
      Height = 20
      Caption = 'Efetuar Retirada'
      TabOrder = 5
      OnClick = btAutorizaRetiradaClick
    end
    object cbSelecionarAutorizados: TCheckBox
      Left = 8
      Top = 117
      Width = 109
      Height = 17
      Caption = 'Selecionar Todos'
      TabOrder = 6
      OnClick = cbSelecionarAutorizadosClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    CalcTop = 210
    CalcLeft = 558
    Left = 680
    Top = 192
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 744
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
    Top = 185
  end
  inherited qAux: TSQLQuery
    Left = 634
    Top = 285
  end
  inherited qAux2: TSQLQuery
    Left = 690
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
    Left = 848
    Top = 71
  end
  object qConsulta: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT 0 AS SelecionaRetirada, rma.RMA_CODIGO, rm.AMX_CODIGO,'
      '            rma.RMA_SITUACAO, rm.REM_CODIGO, rm.REM_DATA, '
      
        '            rm.REM_REQUISITANTE, p.PRD_DESCRI, rmi.RMI_QUANTIDAD' +
        'E, '
      '            s.SET_DESCRICAO, rma.RMA_STATUS, rma.USU_NOME, '
      
        '            rma.RMA_DATA, rmi.RMI_CODIGO, rm.REM_STATUS, p.PRD_U' +
        'ND,'
      '            p.PRD_REFER, p.PRD_CODIGO'
      'FROM  REQUISICAO_MATERIAL rm'
      
        ' LEFT JOIN REQUISICAO_MATERIAL_ITEM rmi ON (rm.REM_CODIGO = rmi.' +
        'REM_CODIGO)'
      
        ' LEFT JOIN REQUISICAO_MATERIAL_AUT rma  ON (rma.RMI_CODIGO = rmi' +
        '.RMI_CODIGO)'
      ' LEFT JOIN PRD0000 p ON (p.PRD_REFER = rmi.PRD_REFER )'
      ' LEFT JOIN SETOR s ON'#9'(s.SET_CODIGO = rm.SET_CODIGO)'
      'ORDER BY rm.REM_CODIGO ')
    SQLConnection = DBConn
    Left = 208
    Top = 152
    object qConsultaRMA_SITUACAO: TStringField
      FieldName = 'RMA_SITUACAO'
      Size = 1
    end
    object qConsultaREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
      Required = True
    end
    object qConsultaREM_DATA: TDateField
      FieldName = 'REM_DATA'
    end
    object qConsultaREM_REQUISITANTE: TStringField
      FieldName = 'REM_REQUISITANTE'
      Size = 255
    end
    object qConsultaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qConsultaRMI_QUANTIDADE: TFMTBCDField
      FieldName = 'RMI_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qConsultaSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
    object qConsultaRMA_STATUS: TStringField
      FieldName = 'RMA_STATUS'
      Size = 1
    end
    object qConsultaUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object qConsultaRMA_DATA: TDateField
      FieldName = 'RMA_DATA'
    end
    object qConsultaRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object qConsultaREM_STATUS: TStringField
      FieldName = 'REM_STATUS'
      Size = 1
    end
    object qConsultaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object qConsultaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qConsultaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qConsultaSELECIONARETIRADA: TIntegerField
      FieldName = 'SELECIONARETIRADA'
      Required = True
    end
    object qConsultaRMA_CODIGO: TIntegerField
      FieldName = 'RMA_CODIGO'
    end
    object qConsultaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
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
    object cdsConsultaRMA_SITUACAO: TStringField
      FieldName = 'RMA_SITUACAO'
      Size = 1
    end
    object cdsConsultaREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
      Required = True
    end
    object cdsConsultaREM_DATA: TDateField
      FieldName = 'REM_DATA'
    end
    object cdsConsultaREM_REQUISITANTE: TStringField
      FieldName = 'REM_REQUISITANTE'
      Size = 255
    end
    object cdsConsultaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsConsultaRMI_QUANTIDADE: TFMTBCDField
      FieldName = 'RMI_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsConsultaSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsConsultaRMA_STATUS: TStringField
      FieldName = 'RMA_STATUS'
      Size = 1
    end
    object cdsConsultaStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 10
      Calculated = True
    end
    object cdsConsultaUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object cdsConsultaRMA_DATA: TDateField
      FieldName = 'RMA_DATA'
    end
    object cdsConsultaRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object cdsConsultaREM_STATUS: TStringField
      FieldName = 'REM_STATUS'
      Size = 1
    end
    object cdsConsultaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object cdsConsultaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsConsultaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsConsultaSELECIONARETIRADA: TIntegerField
      FieldName = 'SELECIONARETIRADA'
      Required = True
    end
    object cdsConsultaRMA_CODIGO: TIntegerField
      FieldName = 'RMA_CODIGO'
    end
    object cdsConsultaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 208
    Top = 296
  end
end
