inherited frmProgramacaoProcessoFabricacao: TfrmProgramacaoProcessoFabricacao
  Left = 244
  Top = 219
  Caption = 'Programa'#231#227'o dos Processos de Fabrica'#231#227'o'
  ClientHeight = 485
  ClientWidth = 1071
  Position = poDesigned
  ExplicitWidth = 1087
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 376
    Top = 280
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object cxProcesso: TcxGrid [1]
    Left = 0
    Top = 177
    Width = 1071
    Height = 308
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxProcessoDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dsProcesso
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDataChanged = cxProcessoDBTableView1DataControllerDataChanged
      DataController.OnDetailExpanding = cxProcessoDBTableView1DataControllerDetailExpanding
      OptionsView.GroupByBox = False
      object cxProcessoDBTableView1IOP_NORDEM: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_NORDEM'
        Width = 74
      end
      object cxProcessoDBTableView1CLI_RAZAO: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_RAZAO'
        Width = 176
      end
      object cxProcessoDBTableView1PRD_REFER: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_REFER'
        Width = 72
      end
      object cxProcessoDBTableView1PRD_DESCRI: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_DESCRI'
        Width = 194
      end
      object cxProcessoDBTableView1PRD_UND: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_UND'
      end
      object cxProcessoDBTableView1OPE_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'OPE_DESCRICAO'
        Width = 230
      end
      object cxProcessoDBTableView1EQP_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'EQP_DESCRICAO'
        OnGetDataText = cxProcessoDBTableView1EQP_DESCRICAOGetDataText
        Width = 212
      end
      object cxProcessoDBTableView1INTERNO: TcxGridDBColumn
        DataBinding.FieldName = 'INTERNO'
        Width = 58
      end
      object cxProcessoDBTableView1EXTERNO: TcxGridDBColumn
        DataBinding.FieldName = 'EXTERNO'
        Width = 62
      end
      object cxProcessoDBTableView1ALTURA1: TcxGridDBColumn
        DataBinding.FieldName = 'ALTURA1'
        Width = 60
      end
      object cxProcessoDBTableView1ALTURA2: TcxGridDBColumn
        DataBinding.FieldName = 'ALTURA2'
        Width = 59
      end
      object cxProcessoDBTableView1IOP_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_STATUS'
        Width = 38
      end
      object cxProcessoDBTableView1PRF_QTDE: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_QTDE'
        Width = 85
      end
      object cxProcessoDBTableView1FAB_PRODUZIDA: TcxGridDBColumn
        DataBinding.FieldName = 'FAB_PRODUZIDA'
        Width = 87
      end
      object cxProcessoDBTableView1FAB_DIAS: TcxGridDBColumn
        DataBinding.FieldName = 'FAB_DIAS'
        Styles.Header = cxAmarelo
        Width = 52
      end
      object cxProcessoDBTableView1IOP_DATA_PREVISTA: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_DATA_PREVISTA'
        Width = 74
      end
      object cxProcessoDBTableView1IOP_DATA_AJUSTADA: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_DATA_AJUSTADA'
        Width = 82
      end
      object cxProcessoDBTableView1IOP_DATA_INICIO: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_DATA_INICIO'
        Width = 67
      end
      object cxProcessoDBTableView1IOP_DATA_CONCLUSAO: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_DATA_CONCLUSAO'
        Width = 82
      end
      object cxProcessoDBTableView1FAB_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. Fab.'
        DataBinding.FieldName = 'FAB_CODIGO'
      end
      object cxProcessoDBTableView1OPE_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. Opera'#231#227'o'
        DataBinding.FieldName = 'OPE_CODIGO'
      end
    end
    object cxProcessoLevel1: TcxGridLevel
      GridView = cxProcessoDBTableView1
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1071
    Height = 177
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1071
      177)
    object lblProjcx: TLabel
      Left = 9
      Top = 66
      Width = 51
      Height = 13
      Caption = 'Opera'#231#227'o:'
    end
    object Label1: TLabel
      Left = 298
      Top = 66
      Width = 66
      Height = 13
      Caption = 'Equipamento:'
    end
    object Label2: TLabel
      Left = 610
      Top = 66
      Width = 64
      Height = 13
      Caption = 'Especifica'#231#227'o'
    end
    object Label5: TLabel
      Left = 618
      Top = 121
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object btnPesquisa: TSpeedButton
      Left = 652
      Top = 5
      Width = 85
      Height = 28
      Hint = 
        'Executa a filtragem dos registros as informa'#231#245'es digitadas nos c' +
        'ampos de pesquisas.'
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
      OnClick = btnPesquisaClick
    end
    object btnExportar: TSpeedButton
      Left = 846
      Top = 5
      Width = 85
      Height = 28
      Hint = 
        'Executa a filtragem dos registros as informa'#231#245'es digitadas nos c' +
        'ampos de pesquisas.'
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
      OnClick = btnExportarClick
      ExplicitLeft = 703
    end
    object lbRegistro: TLabel
      Left = 311
      Top = 13
      Width = 63
      Height = 14
      Caption = 'lbRegistro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 937
      Top = 5
      Width = 125
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Limpar Pesquisa'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4737373FFFFFFFFFFFF828282D5D5
        D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE
        DEDE6A6A6AFFFFFFFFFFFF7A7A7ACECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7686868FFFFFFFFFFFF797979D5D5
        D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A
        7A7A898989FFFFFFFFFFFF909090969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF737373686868FFFFFFFFFFFFFFFFFFFFFFFF1A1A
        1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C60909092B2B2BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C87E7E7EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2B2B2B797979676767FFFFFF7A7A7AD9D9D9FFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFF6D6D6DCECECEFFFFFF222222FDFDFD00
        0000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFF0000007A7A7AFFFFFFFFFFFFFFFFFF
        8A8A8AAEAEAEFFFFFFC5C5C54C4C4C8C8C8CCECECE6E6E6E606060B5B5B5CACA
        CA5A5A5A3B3B3BFFFFFFE2E2E2FFFFFFFFFFFF1B1B1BFFFFFFFFFFFFFFFFFF83
        8383CACACA636363525252B3B3B3A3A3A33C3C3CFFFFFF4B4B4B5C5C5CFFFFFF
        5454542929297B7B7BFFFFFFFFFFFF7F7F7FD3D3D3666666565656C5C5C52424
        24E7E7E7FFFFFF444444FFFFFFFFFFFFFFFFFFFFFFFF232323FFFFFFFFFFFF93
        93935D5D5D747474505050505050CFCFCFFFFFFFB7B7B74141415D5D5D2F2F2F
        343434555555FFFFFF373737FFFFFFFFFFFFBDBDBD1E1E1E2E2E2ED1D1D1FFFF
        FF1E1E1E727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646464DBDBDBFF
        FFFFFFFFFFFFFFFFFFFFFFA1A1A1EAEAEAF7F7F7FFFFFFFFFFFF515151252525
        939393D5D5D55D5D5D383838121212FFFFFFFFFFFF878787343434FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5FFFFFFC4C4C431
        3131323232ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
      ExplicitLeft = 794
    end
    object btnrelatorios: TJvArrowButton
      Left = 744
      Top = 5
      Width = 97
      Height = 28
      Anchors = [akTop, akRight]
      DropDown = pmListar
      Caption = 'Listar (F6)'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
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
    end
    object btnModificarOperacao: TButton
      Left = 8
      Top = 8
      Width = 137
      Height = 25
      Hint = 'Alterar opera'#231#245'es dentro do processo de fabrica'#231#227'o'
      Caption = 'Modificar Processo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnModificarOperacaoClick
    end
    object btnAbrirApontamentos: TButton
      Left = 151
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Abrir Apontamentos'
      TabOrder = 9
      OnClick = btnAbrirApontamentosClick
    end
    object EdOperacaoCodigo: TEdit
      Left = 66
      Top = 63
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 0
      OnExit = EdOperacaoCodigoExit
    end
    object scOperacoes: TSgDbSearchCombo
      Left = 115
      Top = 63
      Width = 142
      Height = 21
      TabOrder = 1
      OnExit = scOperacoesChange
      OnChange = scOperacoesChange
      CharCase = ecUpperCase
      LookupSelect = 'OPE_CODIGO, OPE_DESCRICAO'
      LookupOrderBy = 'OPE_DESCRICAO'
      LookupTable = 'OPERACOES'
      LookupDispl = 'OPE_DESCRICAO'
      GridAutoSize = False
      LookupSource = qOperacao
      LookupKeyField = 'OPE_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Opera'#231#245'es'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object edEquipamentoCodigo: TEdit
      Left = 370
      Top = 63
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = edEquipamentoCodigoExit
    end
    object scEquipamento: TSgDbSearchCombo
      Left = 419
      Top = 63
      Width = 141
      Height = 21
      TabOrder = 3
      OnExit = scEquipamentoChange
      OnChange = scEquipamentoChange
      CharCase = ecUpperCase
      LookupSelect = 'EQP_CODIGO, EQP_DESCRICAO'
      LookupOrderBy = 'EQP_DESCRICAO'
      LookupTable = 'EQUIPAMENTO'
      LookupDispl = 'EQP_DESCRICAO'
      GridAutoSize = False
      LookupSource = qEquipamento
      LookupKeyField = 'EQP_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Equipamentos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object gbPeriodo: TGroupBox
      Left = 8
      Top = 102
      Width = 297
      Height = 57
      Caption = 'Data Entrega'
      TabOrder = 4
      object lblInicio: TLabel
        Left = 6
        Top = 24
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object lblFim: TLabel
        Left = 148
        Top = 24
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object dtInicialEntrega: TJvDateEdit
        Left = 24
        Top = 21
        Width = 113
        Height = 21
        DateFormat = 'YYYY'
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
      end
      object dtFinalEntrega: TJvDateEdit
        Left = 170
        Top = 21
        Width = 113
        Height = 21
        DateFormat = 'YYYY'
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
      end
    end
    object edEspecificacao: TEdit
      Left = 680
      Top = 63
      Width = 382
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      TabOrder = 10
    end
    object GroupBox1: TGroupBox
      Left = 311
      Top = 102
      Width = 297
      Height = 57
      Caption = 'Data Ajustada'
      TabOrder = 5
      object Label3: TLabel
        Left = 6
        Top = 24
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label4: TLabel
        Left = 148
        Top = 24
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object dtInicialAjustada: TJvDateEdit
        Left = 24
        Top = 21
        Width = 113
        Height = 21
        DateFormat = 'YYYY'
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
      end
      object dtFinalAjustada: TJvDateEdit
        Left = 170
        Top = 21
        Width = 113
        Height = 21
        DateFormat = 'YYYY'
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
      end
    end
    object edClienteCodigo: TEdit
      Left = 658
      Top = 118
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 6
      OnExit = edClienteCodigoExit
    end
    object scCliente: TSgDbSearchCombo
      Left = 707
      Top = 118
      Width = 190
      Height = 21
      TabOrder = 7
      OnExit = scClienteChange
      OnChange = scClienteChange
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO, CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      LookupDispl = 'CLI_RAZAO'
      GridAutoSize = False
      LookupSource = qCliente
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Cleintes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Raz'#227'o Social'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 496
    Top = 280
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 568
    Top = 280
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
    Left = 32
    Top = 193
  end
  inherited qAux: TSQLQuery
    Left = 682
    Top = 277
  end
  inherited qAux2: TSQLQuery
    Left = 738
    Top = 276
  end
  inherited qAux3: TSQLQuery
    Left = 786
    Top = 276
  end
  object qOperacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO '
      'FROM CLI0000 '
      'ORDER BY CLI_RAZAO')
    SQLConnection = DBConn
    Left = 208
    Top = 56
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO '
      'FROM CLI0000 '
      'ORDER BY CLI_RAZAO')
    SQLConnection = DBConn
    Left = 480
    Top = 56
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO '
      'FROM CLI0000 '
      'ORDER BY CLI_RAZAO')
    SQLConnection = DBConn
    Left = 800
    Top = 112
  end
  object dsProcesso: TDataSource
    DataSet = qProcesso
    Left = 184
    Top = 208
  end
  object frxDBPPF: TfrxDBDataset
    UserName = 'frxDBPPF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IOP_NORDEM=IOP_NORDEM'
      'CLI_RAZAO=CLI_RAZAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'INTERNO=INTERNO'
      'EXTERNO=EXTERNO'
      'ALTURA1=ALTURA1'
      'ALTURA2=ALTURA2'
      'IOP_STATUS=IOP_STATUS'
      'PRF_QTDE=PRF_QTDE'
      'FAB_PRODUZIDA=FAB_PRODUZIDA'
      'FAB_DIAS=FAB_DIAS'
      'IOP_DATA_PREVISTA=IOP_DATA_PREVISTA'
      'IOP_DATA_AJUSTADA=IOP_DATA_AJUSTADA'
      'IOP_DATA_INICIO=IOP_DATA_INICIO'
      'IOP_DATA_CONCLUSAO=IOP_DATA_CONCLUSAO'
      'FAB_CODIGO=FAB_CODIGO'
      'OPE_DESCRICAO=OPE_DESCRICAO'
      'OPE_CODIGO=OPE_CODIGO')
    DataSet = qProcesso
    BCDToCurrency = False
    Left = 292
    Top = 260
  end
  object frxPPF: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44566.659747696800000000
    ReportOptions.LastChange = 44566.659747696800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  Interno, Externo, Altura1, Altura2: string;                   ' +
        '                                         '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxReport1BeginDoc
    OnGetValue = frxPPFGetValue
    Left = 360
    Top = 264
    Datasets = <
      item
        DataSet = frxDBPPF
        DataSetName = 'frxDBPPF'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 57.929190000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 469.252320000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 136.063080000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Shape16: TfrxShapeView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
        end
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Top = 4.779530000000000000
          Width = 132.283423070000000000
          Height = 37.795300000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 944.882500000000000000
          Width = 102.047310000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Width = 808.819420000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 12.669295000000000000
          Width = 801.260360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Programa'#231#227'o dos Processos de Fabrica'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 948.662030000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 986.457330000000000000
          Top = 27.677180000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 43.574830000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 214.889920000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 468.472790000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 488.709030000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 532.945270000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 574.740570000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 615.756340000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 656.772110000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 713.685530000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 760.039890000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 834.173780000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 887.528140000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 941.441560000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 994.575450000000000000
          Top = 45.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 1046.929810000000000000
          Top = 46.590600000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 45.354360000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Ordem')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 45.354360000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 216.669450000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ref.')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 258.244280000000000000
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 489.370440000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Interno]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 530.945270000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Externo]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 575.740570000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Altura1]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 617.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Altura2]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 659.772110000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 717.685530000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitada')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 757.260360000000000000
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produzida')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 839.953310000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Prevista')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 890.307670000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ajustada')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 943.441560000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Inicio')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 996.575450000000000000
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Concl.')
          ParentFont = False
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 256.126160000000000000
          Top = 45.354360000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Top = 45.354360000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dias')
          ParentFont = False
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Top = 45.354360000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBPPF
        DataSetName = 'frxDBPPF'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 258.244280000000000000
          Width = 207.874150000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_NORDEM"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 216.669450000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."PRD_REFER"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 469.252320000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."PRD_UND"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 489.370440000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."INTERNO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 535.283860000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."EXTERNO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 575.858690000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."ALTURA1"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 618.315400000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          DataField = 'ALTURA2'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."ALTURA2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 657.772110000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataField = 'IOP_STATUS'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_STATUS"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 715.685530000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'PRF_QTDE'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."PRF_QTDE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 761.039890000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'FAB_PRODUZIDA'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."FAB_PRODUZIDA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 836.173780000000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          DataField = 'IOP_DATA_PREVISTA'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_DATA_PREVISTA"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 890.307670000000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          DataField = 'IOP_DATA_AJUSTADA'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_DATA_AJUSTADA"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 943.441560000000000000
          Width = 49.133858270000000000
          Height = 11.338590000000000000
          DataField = 'IOP_DATA_INICIO'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_DATA_INICIO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 996.575450000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'IOP_DATA_CONCLUSAO'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."IOP_DATA_CONCLUSAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 43.574830000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 468.472790000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 488.709030000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 532.945270000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 574.740570000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 615.756340000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 656.772110000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 713.685530000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 760.039890000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 834.173780000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 887.528140000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 941.441560000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 994.575450000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1046.929810000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 256.126160000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 214.889920000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Height = 11.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DataField = 'FAB_DIAS'
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPPF."FAB_DIAS"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPPF."CLI_RAZAO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        object Line34: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 700.449290000000000000
          Top = 2.763760000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPPF."PRF_QTDE">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 760.921770000000000000
          Top = 2.763760000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataSet = frxDBPPF
          DataSetName = 'frxDBPPF'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPPF."FAB_PRODUZIDA">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 658.874460000000000000
          Top = 2.763760000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais')
          ParentFont = False
        end
      end
    end
  end
  object qProcesso: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      ' SELECT'
      #9'fb.FAB_CODIGO,'
      #9'iop.IOP_NORDEM,'
      #9'COALESCE(cl.CLI_FANTASIA,'#9'cl.CLI_RAZAO) CLI_RAZAO,'#9
      #9'pr.PRD_REFER,'
      #9'pr.PRD_DESCRI,'
      #9'pr.PRD_UND,'
      #9'pr.INTERNO,'
      #9'pr.EXTERNO,'
      #9'pr.altura1,'
      #9'pr.altura2,'
      #9'it.PRF_QTDE,'
      #9'iop.IOP_DATA_PREVISTA,'
      
        #9'COALESCE(iop.IOP_DATA_AJUSTADA,'#9'pe.PED_DTSAIDA) IOP_DATA_AJUSTA' +
        'DA,'
      #9'iop.IOP_DATA_INICIO,'
      #9'iop.IOP_DATA_CONCLUSAO,'
      #9'CASE'
      #9#9'WHEN iop.IOP_STATUS = '#39'L'#39' THEN '#39'PENDENTE'#39
      #9#9'WHEN iop.IOP_STATUS = '#39'I'#39' THEN '#39'INICIADA'#39
      #9'END IOP_STATUS,'
      #9'fb.FAB_PRODUZIDA,'
      #9'fB.FAB_DIAS,'
      #9'opr.OPE_DESCRICAO,'
      '        opr.OPE_CODIGO,'
      '        eq.EQP_DESCRICAO'
      'FROM'
      #9'ORDEMPRODUCAO op'
      'JOIN CLI0000 cl ON'#9'cl.CLI_CODIGO = op.CLI_CODIGO'
      'JOIN ITEM_ORDEMPRODUCAO iop ON'#9'(iop.OPR_CODIGO = op.OPR_CODIGO )'
      'JOIN PRD0000 pr ON'#9'(pr.PRD_CODIGO = iop.PRD_CODIGO)'
      
        'JOIN PED0000 pe ON'#9'(pe.PED_CODIGO = op.PED_CODIGO'#9#9'AND op.EMP_CO' +
        'DIGO = pe.EMP_CODIGO)'
      'LEFT JOIN FTC0000 ft ON'#9'(ft.PRD_REFER = pr.PRD_REFER)'
      'LEFT JOIN PRD_LOTE lot ON'#9'(lot.IOP_CODIGO = iop.IOP_CODIGO)'
      
        'JOIN FABRICACAO fb ON'#9'(pr.PRD_CODIGO = fb.PRD_CODIGO'#9#9'AND iop.IO' +
        'P_CODIGO = FB.IOP_CODIGO)'
      
        'LEFT JOIN PED_IT01 it ON'#9'(it.PED_CODIGO = op.PED_CODIGO'#9#9'AND it.' +
        'PRD_CODIGO = iop.PRD_CODIGO)'
      
        'LEFT JOIN ENGENHARIA_PROCESSO ep ON ep.PRD_CODIGO = pr.PRD_CODIG' +
        'O '
      'LEFT JOIN OPERACOES opr ON (opr.OPE_CODIGO = ep.OPE_CODIGO)'
      'LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ep.EQP_CODIGO)'
      ''
      'WHERE'
      
        #9'EXISTS (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO' +
        ' = op.PED_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO )'
      #9'AND ( iop.iop_status <> '#39'F'#39') '
      'ORDER BY 1')
    Left = 112
    Top = 204
    object qProcessoIOP_NORDEM: TStringField
      DisplayLabel = 'N'#186' Ordem'
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
      ReadOnly = True
    end
    object qProcessoCLI_RAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ReadOnly = True
      Size = 70
    end
    object qProcessoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ReadOnly = True
    end
    object qProcessoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ReadOnly = True
      Size = 100
    end
    object qProcessoPRD_UND: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object qProcessoINTERNO: TBCDField
      FieldName = 'INTERNO'
      Origin = 'INTERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qProcessoEXTERNO: TBCDField
      FieldName = 'EXTERNO'
      Origin = 'EXTERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qProcessoALTURA1: TBCDField
      FieldName = 'ALTURA1'
      Origin = 'ALTURA1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qProcessoALTURA2: TBCDField
      FieldName = 'ALTURA2'
      Origin = 'ALTURA2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qProcessoIOP_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'IOP_STATUS'
      Origin = 'IOP_STATUS'
      ReadOnly = True
      Size = 8
    end
    object qProcessoPRF_QTDE: TFMTBCDField
      DisplayLabel = 'Qtde. Solicitada'
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qProcessoFAB_PRODUZIDA: TFMTBCDField
      DisplayLabel = 'Qtde. Produzida'
      FieldName = 'FAB_PRODUZIDA'
      Origin = 'FAB_PRODUZIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qProcessoFAB_DIAS: TFMTBCDField
      DisplayLabel = 'Dias'
      FieldName = 'FAB_DIAS'
      Origin = 'FAB_DIAS'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object qProcessoIOP_DATA_PREVISTA: TSQLTimeStampField
      DisplayLabel = 'Data Prevista'
      FieldName = 'IOP_DATA_PREVISTA'
      Origin = 'IOP_DATA_PREVISTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qProcessoIOP_DATA_AJUSTADA: TSQLTimeStampField
      DisplayLabel = 'Data Ajustada'
      FieldName = 'IOP_DATA_AJUSTADA'
      Origin = 'IOP_DATA_AJUSTADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qProcessoIOP_DATA_INICIO: TSQLTimeStampField
      DisplayLabel = 'Data In'#237'cio'
      FieldName = 'IOP_DATA_INICIO'
      Origin = 'IOP_DATA_INICIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qProcessoIOP_DATA_CONCLUSAO: TSQLTimeStampField
      DisplayLabel = 'Data Conclus'#227'o'
      FieldName = 'IOP_DATA_CONCLUSAO'
      Origin = 'IOP_DATA_CONCLUSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qProcessoFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      Origin = 'FAB_CODIGO'
      ReadOnly = True
      Required = True
    end
    object qProcessoOPE_DESCRICAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object qProcessoOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ReadOnly = True
    end
    object qProcessoEQP_DESCRICAO: TStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object qProcessoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 640
    Top = 216
    PixelsPerInch = 96
    object cxAmarelo: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object pmListar: TPopupMenu
    Left = 772
    Top = 25
    object ListadeOrdemdeProduo1: TMenuItem
      Caption = 'Listagem'
      OnClick = ListadeOrdemdeProduo1Click
    end
    object miOrdemProducao: TMenuItem
      Caption = 'Ordem de produ'#231#227'o'
      OnClick = miOrdemProducaoClick
    end
  end
  object qOP11Corpo: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT DISTINCT'
      'pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und, mp.prd_codigo, '
      'mp.MP_UCONSUMO, MP_CONSUMOTOTAL, MP.iop_codigo'
      
        ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                             ' +
        '   '
      
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)             ' +
        '   '
      ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = MP.OPR_CODIGO)'
      'WHERE pr.PRD_REFER = '#39'000030'#39
      '')
    Left = 348
    Top = 369
  end
  object frxDBOP11Corpo: TfrxDBDataset
    UserName = 'frxDBOP11Corpo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'PRD_CODIGO=PRD_CODIGO'
      'MP_UCONSUMO=MP_UCONSUMO'
      'MP_CONSUMOTOTAL=MP_CONSUMOTOTAL'
      'IOP_CODIGO=IOP_CODIGO')
    DataSet = qOP11Corpo
    BCDToCurrency = False
    Left = 348
    Top = 417
  end
  object qOP11Cabecalho: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT FT.FTC_ETAPAS, pe.PED_OBS_PRODUCAO ,'
      
        '  ope.OPE_NOME, pr.PRD_REFER, pr.PRD_DESCRI, pr.PRD_COMPL, cl.CL' +
        'I_RAZAO,'
      
        '  iop.IOP_QUANTIDADE, pr.PRD_UND, pe.PED_DTENTRADA, iop.IOP_NORD' +
        'EM, eq.EQP_DESCRICAO'
      'FROM'#9'ORDEMPRODUCAO op'
      'JOIN ITEM_ORDEMPRODUCAO iop ON'#9'(iop.OPR_CODIGO = op.OPR_CODIGO)'
      'JOIN PRD0000 pr ON'#9'(pr.PRD_CODIGO = iop.PRD_CODIGO)'
      'JOIN CLI0000 cl ON'#9'(cl.CLI_CODIGO = op.CLI_CODIGO)'
      
        'JOIN PED0000 pe ON'#9'(pe.PED_CODIGO = op.PED_CODIGO)'#9'AND (pe.EMP_C' +
        'ODIGO = op.EMP_CODIGO)'
      'JOIN FABRICACAO fb ON (fb.IOP_CODIGO = iop.IOP_CODIGO )'
      'JOIN OPERACOES ope ON'#9'(ope.OPE_CODIGO = fb.OPE_CODIGO)'
      'LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO)'
      'LEFT JOIN FTC0000 ft ON'#9'(ft.PRD_REFER = pr.PRD_REFER)'
      'LEFT JOIN PCX0000 pc ON'#9'(pc.PCX_CODIGO = pe.PCX_CODIGO)')
    Left = 452
    Top = 369
  end
  object frxDBOP11Cabecalho: TfrxDBDataset
    UserName = 'frxDBOP11Cabecalho'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FTC_ETAPAS=FTC_ETAPAS'
      'PED_OBS_PRODUCAO=PED_OBS_PRODUCAO'
      'OPE_NOME=OPE_NOME'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_COMPL=PRD_COMPL'
      'CLI_RAZAO=CLI_RAZAO'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'PRD_UND=PRD_UND'
      'PED_DTENTRADA=PED_DTENTRADA'
      'IOP_NORDEM=IOP_NORDEM'
      'EQP_DESCRICAO=EQP_DESCRICAO')
    DataSet = qOP11Cabecalho
    BCDToCurrency = False
    Left = 452
    Top = 417
  end
  object frxOP11: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 44377.682938981500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  EMPRESA, USUARIO: string;                                     ' +
        '                                   '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOP11BeginDoc
    OnGetValue = frxOP11GetValue
    Left = 548
    Top = 393
    Datasets = <
      item
        DataSet = frxDBOP11Cabecalho
        DataSetName = 'frxDBOP11Cabecalho'
      end
      item
        DataSet = frxDBOP11Corpo
        DataSetName = 'frxDBOP11Corpo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = frxDBOP11Corpo
        DataSetName = 'frxDBOP11Corpo'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOP11Corpo."MP_CONSUMOTOTAL"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 2.000000000000000000
          Width = 393.071120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Corpo."PRD_DESCRI"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOP11Corpo."PRD_REFER"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 2.000000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Corpo."PRD_UND"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 2.220470000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MP_UCONSUMO'
          DataSet = frxDBOP11Corpo
          DataSetName = 'frxDBOP11Corpo'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOP11Corpo."MP_UCONSUMO"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 158.740260000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        PrintChildIfInvisible = True
        Stretched = True
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 42.574830000000000000
          Width = 718.110700000000000000
          Height = 120.944960000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 16.110235000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ordem de Produ'#231#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 580.929500000000000000
          Top = 92.929190000000000000
          Width = 109.606370000000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 580.929500000000000000
          Top = 105.929190000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."IOP_NORDEM"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.031540000000000000
          Top = 56.291341020000000000
          Width = 627.401980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Prod.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 56.244125000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PRD_REFER"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 82.031540000000000000
          Top = 41.574842200000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
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
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 0.559060000000000000
          Top = 140.614255000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."EQP_DESCRICAO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 126.944960000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'quina')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Top = 106.488250000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."CLI_RAZAO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Top = 92.929190000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 105.598485000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 92.929190000000000000
          Width = 79.370130000000000000
          Height = 15.118112680000000000
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
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."OPE_NOME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 74.031540000000000000
          Width = 718.110700000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PRD_COMPL"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 105.267780000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PRD_UND"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 105.598485000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PED_DTENTRADA"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 92.929190000000000000
          Width = 90.708720000000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 126.944967320000000000
          Width = 109.606370000000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aplica'#231#227'o')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 132.283423070000000000
          Height = 37.795300000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 129.000000000000000000
          Height = 22.677180000000000000
          BarType = bcCode39
          Expression = '<frxDBOP11Cabecalho."IOP_NORDEM">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ColorBar = clBlack
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 43.015770000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 9.000000000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 10.551175000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Insumos')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 28.677180000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 28.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 676.535870000000000000
          Top = 28.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UND.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 28.677180000000000000
          Width = 71.811070000000000000
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
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 718.331170000000000000
          Top = 25.236240000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 28.236240000000000000
          Height = 15.118120000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 528.134200000000000000
          Top = 30.236240000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unit %')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[USUARIO]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Date>]  [<Time>]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Bobinas por palete:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 603.370440000000000000
          Top = 2.779542200000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOP11Corpo."MP_CONSUMOTOTAL">, MasterData1,0)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 504.102660000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Insumo:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        DataSet = frxDBOP11Cabecalho
        DataSetName = 'frxDBOP11Cabecalho'
        RowCount = 0
        Stretched = True
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#245'es da OP')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 18.897650000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."FTC_ETAPAS"]')
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 717.110700000000000000
          Top = 0.779530000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        DataSet = frxDBOP11Cabecalho
        DataSetName = 'frxDBOP11Cabecalho'
        RowCount = 0
        Stretched = True
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.338590000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBOP11Cabecalho."PED_OBS_PRODUCAO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#245'es do Produto')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 41.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 717.110700000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
end
