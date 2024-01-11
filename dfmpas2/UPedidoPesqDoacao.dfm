inherited frmPesqDoacao: TfrmPesqDoacao
  Caption = 'Pesquisa de Vendas Doa'#231#227'o'
  ClientHeight = 557
  ClientWidth = 1029
  Position = poMainFormCenter
  OnResize = FormResize
  ExplicitWidth = 1045
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1029
    Height = 91
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Lb_Lista: TLabel
      Left = 319
      Top = 7
      Width = 3
      Height = 13
    end
    object BtnImprimir: TJvArrowButton
      Left = 815
      Top = 51
      Width = 80
      Height = 40
      DropDown = relatorios
      Flat = True
      FlatArrowColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindow
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
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
      ParentFont = False
    end
    object GbData: TGroupBox
      Left = 5
      Top = 40
      Width = 391
      Height = 41
      Caption = 'Informe o Per'#237'odo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      object Label1: TLabel
        Left = 96
        Top = 19
        Width = 57
        Height = 14
        Caption = 'Data Inicial :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 249
        Top = 19
        Width = 15
        Height = 14
        Caption = 'at'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DataTipo: TComboBox
        Left = 9
        Top = 14
        Width = 81
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          'ENTRADA'
          'FATURAMENTO')
      end
      object RxDataInicial: TJvDateEdit
        Left = 156
        Top = 14
        Width = 90
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        ButtonWidth = 20
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
      end
      object RxDataFinal: TJvDateEdit
        Left = 268
        Top = 14
        Width = 89
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        ButtonWidth = 20
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 0
      Width = 460
      Height = 40
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      object Rad_Cliente: TRadioButton
        Left = 8
        Top = 17
        Width = 94
        Height = 17
        Caption = 'C&liente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Rad_ClienteClick
      end
      object Rad_Fantasia: TRadioButton
        Left = 75
        Top = 17
        Width = 94
        Height = 17
        Caption = '&Fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Rad_ClienteClick
      end
      object Rad_Pedido: TRadioButton
        Left = 149
        Top = 17
        Width = 94
        Height = 17
        Caption = 'Pe&dido'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = Rad_ClienteClick
      end
      object Rad_Pedido_Compra: TRadioButton
        Left = 213
        Top = 17
        Width = 94
        Height = 17
        Caption = 'Ordem Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Rad_ClienteClick
      end
      object Rad_Vendedor: TRadioButton
        Left = 304
        Top = 17
        Width = 94
        Height = 17
        Caption = '&Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Rad_ClienteClick
      end
      object rdCCusto: TRadioButton
        Left = 385
        Top = 17
        Width = 60
        Height = 17
        Caption = 'C.Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Rad_ClienteClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 471
      Top = -1
      Width = 170
      Height = 41
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object cbTipo: TSgDbSearchCombo
        Left = 3
        Top = 14
        Width = 134
        Height = 22
        EmptyText = 'TODOS OS TIPOS'
        TabOrder = 0
        LookupSelect = 'opv_codigo, opv_descricao'
        LookupOrderBy = 'opv_descricao'
        LookupTable = 'opv0000'
        LookupDispl = 'OPV_DESCRICAO'
        OnSelect = cbTipoSelect
        GridAutoSize = False
        LookupSource = qAux3
        LookupKeyField = 'opv_codigo'
        FiltroTabela = 'OPV_TIPO = '#39'S'#39
        ShowButton = True
        LookupTableShare = 'tabelas'
        AutoF8WinTitulo = 'Tipos de Pedidos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object name: TGroupBox
      Left = 647
      Top = 0
      Width = 162
      Height = 40
      Caption = 'Faturamento'
      TabOrder = 3
      object cbbFaturamento: TComboBox
        Left = 4
        Top = 14
        Width = 149
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 0
        Text = 'TODOS'
        OnChange = cbbFaturamentoChange
        Items.Strings = (
          'TODOS'
          'FATURADO'
          'PENDENTE'
          'AGRUPADO'
          'CANCELADOS')
      end
    end
    object BtnSair: TBitBtn
      Left = 815
      Top = 3
      Width = 83
      Height = 24
      Hint = 'Sair'
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
    object BitPesquisar: TBitBtn
      Left = 815
      Top = 27
      Width = 83
      Height = 24
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitPesquisarClick
    end
    object rgSaida: TRadioGroup
      Left = 904
      Top = 3
      Width = 97
      Height = 88
      Caption = 'Sa'#237'da'
      Items.Strings = (
        'V'#237'deo'
        'PDF'
        'Planilha')
      TabOrder = 6
    end
  end
  object dbGrPedido: TDBGrid [1]
    Left = 0
    Top = 91
    Width = 1029
    Height = 434
    Align = alClient
    DataSource = DsPedidos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbGrPedidoDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PED_CODIGO'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DTENTRADA'
        Title.Caption = 'Data'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO'
        Title.Caption = 'Nome'
        Width = 268
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_cidade'
        Title.Caption = 'Cidade'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_uf'
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VLPARCELA'
        Title.Caption = 'Valor parcela'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_INICIOPAG'
        Title.Caption = '1'#186' parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_PARCELA'
        Title.Caption = 'Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VLTOTAL_BRUTO'
        Title.Caption = 'Valor total'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_NOME'
        Title.Caption = 'Vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CELULAR'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end>
  end
  object GbCliente: TGroupBox [2]
    Left = 558
    Top = 128
    Width = 400
    Height = 107
    Caption = 'Informe a raz'#227'o/nome do cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = True
    object Edt_Lista: TEdit
      Left = 5
      Top = 14
      Width = 38
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 0
      OnExit = Edt_ListaExit
    end
    object cbPesq: TSgDbSearchCombo
      Left = 49
      Top = 15
      Width = 320
      Height = 22
      EmptyText = 'TODOS OS CLIENTES'
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      LookupDispl = 'CLI_RAZAO'
      OnSelect = cbPesqSelect
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'clientes'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object CbFantasia: TSgDbSearchCombo
      Left = 49
      Top = 71
      Width = 320
      Height = 22
      EmptyText = 'TODOS OS CLIENTES'
      TabOrder = 2
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO,CLI_FANTASIA,CLI_RAZAO'
      LookupOrderBy = 'CLI_FANTASIA'
      LookupTable = 'cli0000'
      LookupDispl = 'CLI_FANTASIA'
      OnSelect = CbFantasiaSelect
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'clientes'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Fantasia, Nome '
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object cbVendedor: TSgDbSearchCombo
      Left = 49
      Top = 43
      Width = 320
      Height = 22
      EmptyText = 'TODOS OS VENDEDORES'
      TabOrder = 3
      CharCase = ecUpperCase
      LookupSelect = 'rep_codigo, rep_nome'
      LookupOrderBy = 'rep_nome'
      LookupTable = 'rep0000'
      LookupDispl = 'REP_NOME'
      OnSelect = cbVendedorSelect
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'rep_codigo'
      ShowButton = True
      LookupTableShare = 'tabelas'
      AutoF8WinTitulo = 'Vendedores'
      AutoF8ColumnsTitulo = 'Codigo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
  end
  object gbCCusto: TGroupBox [3]
    Left = 558
    Top = 254
    Width = 400
    Height = 44
    Caption = 'Informe o Centro de Custo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = True
    Visible = False
    object EdProjetoObraCodigo: TEdit
      Left = 5
      Top = 14
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 0
      OnClick = EdProjetoObraCodigoClick
    end
    object CbProjetoObra: TSgDbSearchCombo
      Left = 54
      Top = 14
      Width = 320
      Height = 22
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'PCX_CODIGO,PCX_DESCRI'
      LookupOrderBy = 'PCX_DESCRI'
      LookupTable = 'PCX0000'
      LookupDispl = 'PCX_DESCRI'
      OnSelect = CbProjetoObraSelect
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'PCX_CODIGO'
      FiltroTabela = 'PCX_TIPO = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Centros de Custos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 525
    Width = 1029
    Height = 32
    Align = alBottom
    TabOrder = 4
    object Label3: TLabel
      Left = 13
      Top = 9
      Width = 72
      Height = 13
      Caption = 'N'#186' de vendas :'
    end
    object Label4: TLabel
      Left = 254
      Top = 9
      Width = 56
      Height = 13
      Caption = 'Valor total :'
    end
    object edVendas: TEdit
      Left = 104
      Top = 4
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'edVendas'
    end
    object edTotal: TJvValidateEdit
      Left = 320
      Top = 5
      Width = 121
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = True
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 464
    Top = 48
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 536
    Top = 48
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
    Left = 600
    Top = 425
  end
  inherited qAux: TSQLQuery
    Left = 682
    Top = 429
  end
  inherited qAux2: TSQLQuery
    Left = 738
    Top = 428
  end
  inherited qAux3: TSQLQuery
    Left = 794
    Top = 428
  end
  object qSqlCdsPesq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT p1.ped_CODIGO, p1.EMP_CODIGO, p1.PED_PCP_SIT_PRODUCAO,P1.' +
        'PED_registro, P1.PED_CONTATO_CLIENTE, '
      '      p1.PED_DTENTRADA ,'
      
        '       P1.PED_VLTOTAL_BRUTO,P1.PED_DTSAIDA,P1.PED_OBSNOTA,P1.PED' +
        '_VLFATURADO,P1.PED_SITUACAO,P1.PED_DTLIM_ATD,'
      
        '       P1.PED_DTEMBARQUE, P1.REP_CODIGO,C1.CLI_FONE, OPV_DESCRIC' +
        'AO, t4.PMT_MOTIVO,p1.PED_MOTIVO_CANCELAMENTO,c1.cli_uf,'
      
        '       P1.PED_CODIGO_ORCAMENTO, PED_VLTOTAL_IPI, PED_VLFRETE, PE' +
        'D_VLSEGURO, PED_DESP_ACES,'
      
        '       case when (C1.CLI_RAZAO IS NULL) then p1.PED_ORS_CLIENTE ' +
        'ELSE C1.CLI_RAZAO end as CLI_RAZAO,'
      '       C1.CLI_FANTASIA, C1.CLI_CGC, t3.rep_nome'
      'FROM PED0000 P1'
      '     LEFT JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO'
      '     LEFT JOIN OPV0000 OPV ON P1.OPV_CODIGO = OPV.OPV_CODIGO'
      '     left join rep0000 t3 on t3.rep_codigo = p1.rep_codigo'
      
        '     left join PED_MOTIVO t4 on (t4.PMT_REGISTRO = p1.PMT_REGIST' +
        'RO)'
      'where p1.ped_codigo='#39'-0000'#39)
    SQLConnection = DBConn
    Left = 67
    Top = 142
    object qSqlCdsPesqPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object qSqlCdsPesqCLI_RAZAO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 48
      FieldName = 'CLI_RAZAO'
      Size = 49
    end
    object qSqlCdsPesqcli_cidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 23
      FieldName = 'cli_cidade'
      Size = 30
    end
    object qSqlCdsPesqcli_uf: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'cli_uf'
      Size = 2
    end
    object qSqlCdsPesqBANCO: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 17
      FieldName = 'BANCO'
      Size = 34
    end
    object qSqlCdsPesqPED_VLPARCELA: TFMTBCDField
      DisplayLabel = 'Valor Parcela'
      DisplayWidth = 10
      FieldName = 'PED_VLPARCELA'
      ProviderFlags = [pfInUpdate]
      OnGetText = qSqlCdsPesqPED_VLPARCELAGetText
      Precision = 15
    end
    object qSqlCdsPesqPED_PARCELA: TIntegerField
      DisplayLabel = 'Qtde. de Parcelas'
      DisplayWidth = 8
      FieldName = 'PED_PARCELA'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qSqlCdsPesqPED_INICIOPAG: TDateField
      DisplayLabel = '1'#170' Parcela'
      DisplayWidth = 10
      FieldName = 'PED_INICIOPAG'
      ProviderFlags = [pfInUpdate]
    end
    object qSqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 8
      FieldName = 'PED_VLTOTAL_BRUTO'
      OnGetText = qSqlCdsPesqPED_VLTOTAL_BRUTOGetText
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 18
    end
    object qSqlCdsPesqREP_NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qSqlCdsPesqCLI_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object qSqlCdsPesqCLI_CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object qSqlCdsPesqPED_SITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'PED_SITUACAO'
      OnGetText = SqlCdsPesqPED_SITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object qSqlCdsPesqREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Visible = False
      Size = 3
    end
    object qSqlCdsPesqCLI_CGC: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLI_CGC'
      Visible = False
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object qSqlCdsPesqCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Visible = False
      Size = 50
    end
    object qSqlCdsPesqOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Visible = False
      Size = 30
    end
    object qSqlCdsPesqPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
      Visible = False
    end
    object qSqlCdsPesqPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Visible = False
      Size = 100
    end
    object qSqlCdsPesqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Visible = False
      Size = 3
    end
    object qSqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Visible = False
      Precision = 18
      Size = 5
    end
    object qSqlCdsPesqOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      Visible = False
    end
    object qSqlCdsPesqcli_codigo: TStringField
      FieldName = 'cli_codigo'
      Visible = False
      Size = 5
    end
    object qSqlCdsPesqFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      Visible = False
    end
    object qSqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
      Visible = False
    end
    object qSqlCdsPesqPED_TIPOPARCELA: TStringField
      FieldName = 'PED_TIPOPARCELA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object qSqlCdsPesqVL_COMISSAO: TFMTBCDField
      FieldName = 'VL_COMISSAO'
      Visible = False
      Precision = 15
    end
    object qSqlCdsPesqBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 100
    end
    object qSqlCdsPesqPED_UND_CONSUMIDORA: TIntegerField
      FieldName = 'PED_UND_CONSUMIDORA'
    end
    object qSqlCdsPesqPED_DTENTRADA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'PED_DTENTRADA'
    end
    object qSqlCdsPesqCLI_ENDERE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object qSqlCdsPesqCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object qSqlCdsPesqCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
  end
  object dspSqlCdsPesq: TDataSetProvider
    DataSet = qSqlCdsPesq
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 387
    Top = 278
  end
  object SqlCdsPesq: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'relatorio'
        DescFields = 'ped_dtentrada'
        Fields = 'ban_apelido; ped_dtentrada; cli_razao'
        Options = [ixDescending]
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspSqlCdsPesq'
    StoreDefs = True
    Left = 304
    Top = 280
    object SqlCdsPesqPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 18
    end
    object SqlCdsPesqPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      OnGetText = SqlCdsPesqPED_SITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object SqlCdsPesqREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object SqlCdsPesqCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 49
    end
    object SqlCdsPesqCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object SqlCdsPesqOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsPesqPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object SqlCdsPesqPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object SqlCdsPesqREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsPesqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPesqcli_codigo: TStringField
      FieldName = 'cli_codigo'
      Size = 5
    end
    object SqlCdsPesqFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object SqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
    object SqlCdsPesqPED_PARCELA: TIntegerField
      FieldName = 'PED_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsPesqPED_INICIOPAG: TDateField
      FieldName = 'PED_INICIOPAG'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsPesqPED_TIPOPARCELA: TStringField
      FieldName = 'PED_TIPOPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlCdsPesqPED_VLPARCELA: TFMTBCDField
      FieldName = 'PED_VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlCdsPesqCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object SqlCdsPesqVL_COMISSAO: TFMTBCDField
      FieldName = 'VL_COMISSAO'
      Precision = 15
    end
    object SqlCdsPesqCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsPesqcli_uf: TStringField
      FieldName = 'cli_uf'
      Size = 2
    end
    object SqlCdsPesqcli_cidade: TStringField
      FieldName = 'cli_cidade'
      Size = 30
    end
    object SqlCdsPesqBANCO: TStringField
      FieldName = 'BANCO'
      Size = 34
    end
    object SqlCdsPesqBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 100
    end
    object SqlCdsPesqPED_UND_CONSUMIDORA: TIntegerField
      FieldName = 'PED_UND_CONSUMIDORA'
    end
    object SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
  end
  object DsPedidos: TDataSource
    DataSet = SqlCdsPesq
    Left = 304
    Top = 328
  end
  object SqlCdsClie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 565
    Top = 344
  end
  object frxpesquisa: TfrxDBDataset
    UserName = 'frxpesquisa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_CODIGO=PED_CODIGO'
      'PED_DTENTRADA=PED_DTENTRADA'
      'PED_VLTOTAL_BRUTO=PED_VLTOTAL_BRUTO'
      'PED_SITUACAO=PED_SITUACAO'
      'REP_CODIGO=REP_CODIGO'
      'CLI_CGC=CLI_CGC'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_FANTASIA=CLI_FANTASIA'
      'OPV_DESCRICAO=OPV_DESCRICAO'
      'PED_REGISTRO=PED_REGISTRO'
      'PED_CONTATO_CLIENTE=PED_CONTATO_CLIENTE'
      'REP_NOME=REP_NOME'
      'EMP_CODIGO=EMP_CODIGO'
      'PED_VLTOTAL_LIQ=PED_VLTOTAL_LIQ'
      'OPV_CODIGO=OPV_CODIGO'
      'cli_codigo=cli_codigo'
      'FPG_REGISTRO=FPG_REGISTRO'
      'PED_NUMERO_PED_CLIENTE=PED_NUMERO_PED_CLIENTE'
      'PED_PARCELA=PED_PARCELA'
      'PED_INICIOPAG=PED_INICIOPAG'
      'PED_TIPOPARCELA=PED_TIPOPARCELA'
      'PED_VLPARCELA=PED_VLPARCELA'
      'CLI_CELULAR=CLI_CELULAR'
      'VL_COMISSAO=VL_COMISSAO'
      'CLI_FONE=CLI_FONE'
      'cli_uf=cli_uf'
      'cli_cidade=cli_cidade'
      'BANCO=BANCO'
      'BAN_APELIDO=BAN_APELIDO'
      'PED_UND_CONSUMIDORA=PED_UND_CONSUMIDORA')
    DataSet = SqlCdsPesq
    BCDToCurrency = False
    Left = 240
    Top = 280
  end
  object frxpedidosBanco: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43756.456478831000000000
    ReportOptions.LastChange = 43756.456478831000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxpedidosBancoGetValue
    Left = 72
    Top = 280
    Datasets = <
      item
        DataSet = frxpesquisa
        DataSetName = 'frxpesquisa'
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxpesquisa
        DataSetName = 'frxpesquisa'
        RowCount = 0
        object frxpesquisaPED_DTENTRADA: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."PED_DTENTRADA"]')
        end
        object frxpesquisaCLI_RAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 65.811070000000000000
          Top = 0.779530000000000000
          Width = 268.019110000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."CLI_RAZAO"]')
        end
        object frxpesquisacli_cidade: TfrxMemoView
          AllowVectorExport = True
          Left = 453.173470000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."cli_cidade"]-[frxpesquisa."cli_uf"]')
        end
        object frxpesquisaPED_INICIOPAG: TfrxMemoView
          AllowVectorExport = True
          Left = 738.047620000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'PED_INICIOPAG'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."PED_INICIOPAG"]')
        end
        object frxpesquisaPED_PARCELA: TfrxMemoView
          AllowVectorExport = True
          Left = 865.197280000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'PED_PARCELA'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxpesquisa."PED_PARCELA"]')
          ParentFont = False
        end
        object frxpesquisaPED_VLTOTAL_BRUTO: TfrxMemoView
          AllowVectorExport = True
          Left = 939.346940000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'PED_VLTOTAL_BRUTO'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxpesquisa."PED_VLTOTAL_BRUTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 345.200000000000000000
          Top = 0.779530000000000000
          Width = 78.488250000000000000
          Height = 14.097650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxpesquisa."PED_UND_CONSUMIDORA">=0,'#39#39',<frxpesquisa."PED_' +
              'UND_CONSUMIDORA">)]')
        end
        object frxpesquisaPED_VLPARCELA: TfrxMemoView
          AllowVectorExport = True
          Left = 625.559370000000000000
          Top = 0.200000000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxpesquisa."PED_VLPARCELA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        Condition = 'frxpesquisa."BAN_APELIDO"'
        StartNewPage = True
        Stretched = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 27.716553330000000000
          Width = 57.952793330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 65.811070000000000000
          Top = 27.716553330000000000
          Width = 57.952793330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 458.773470000000000000
          Top = 27.716553330000000000
          Width = 116.604803330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade-UF')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 637.118430000000000000
          Top = 27.716553330000000000
          Width = 73.070913330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Parcela')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 746.047620000000000000
          Top = 28.236240000000000000
          Width = 57.952793330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1'#186' Parcela')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 858.079160000000000000
          Top = 28.236240000000000000
          Width = 57.952793330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela Atual')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 947.331170000000000000
          Top = 26.456710000000000000
          Width = 76.850443330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor  Total')
          ParentFont = False
        end
        object frxpesquisaBANCO: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.000000000000000000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            'Banco: [frxpesquisa."BAN_APELIDO"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 345.200000000000000000
          Top = 22.141620000000000000
          Width = 71.288250000000000000
          Height = 30.097650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und.'
            'Consumidora')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.617130000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 626.359370000000000000
          Top = 3.259843330000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLPARCELA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Top = 2.459843330000000000
          Width = 239.288250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Registros por banco: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 22.617130000000000000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 0.617130000000000000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 939.346940000000000000
          Top = 3.259843330000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLTOTAL_BRUTO">)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 465.200000000000000000
          Top = 3.259843330000000000
          Width = 134.822140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total(por banco):')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 826.600000000000000000
          Top = 3.259843330000000000
          Width = 85.688250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total(por banco):')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.185590000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.483240000000000000
          Width = 234.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Registros Total: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 21.185590000000000000
          Width = 1069.606990000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 626.359370000000000000
          Top = 0.519480000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLPARCELA">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 804.200000000000000000
          Top = 0.519480000000000000
          Width = 108.088250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total valor total geral:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 430.000000000000000000
          Top = 0.519480000000000000
          Width = 170.022140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total valor parcela geral:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 941.400000000000000000
          Top = 0.519480000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLTOTAL_BRUTO">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 1.779530000000000000
          Width = 269.140260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 72.716450000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Top = 1.014100000000000000
          Width = 226.771673070000000000
          Height = 68.787401570000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 236.850546670000000000
          Top = 4.793630000000000000
          Width = 637.033416670000000000
          Height = 19.596866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 900.787983330000000000
          Top = 2.273943330000000000
          Width = 141.102453330000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina : [<Page>]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 902.528140000000000000
          Top = 23.691280000000000000
          Width = 141.102453330000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o : [Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 27.029870000000000000
          Width = 337.638013330000000000
          Height = 19.036240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 236.000000000000000000
          Top = 49.916450000000000000
          Width = 236.088250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo: [Periodo]')
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 72.716450000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object relatorios: TPopupMenu
    Left = 840
    Top = 88
    object Lista1: TMenuItem
      Caption = 'Lista(antigo)'
      Visible = False
      OnClick = Lista1Click
    end
    object Pedidosporbanco1: TMenuItem
      Caption = 'Vendas'
      OnClick = Pedidosporbanco1Click
    end
    object Lista2: TMenuItem
      Caption = 'Lista'
      OnClick = Lista2Click
    end
    object ExportarparaCSV1: TMenuItem
      Caption = 'Exportar para CSV'
      OnClick = ExportarparaCSV1Click
    end
  end
  object frxPedidosLista: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43756.456478831000000000
    ReportOptions.LastChange = 43928.405284270830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxpedidosBancoGetValue
    Left = 168
    Top = 280
    Datasets = <
      item
        DataSet = frxpesquisa
        DataSetName = 'frxpesquisa'
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = frxpesquisa
        DataSetName = 'frxpesquisa'
        RowCount = 0
        object frxpesquisaPED_DTENTRADA: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."PED_DTENTRADA"]')
        end
        object frxpesquisaCLI_RAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 65.811070000000000000
          Top = 0.779530000000000000
          Width = 305.814410000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."CLI_RAZAO"]')
        end
        object frxpesquisacli_cidade: TfrxMemoView
          AllowVectorExport = True
          Left = 474.189240000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."cli_cidade"]-[frxpesquisa."cli_uf"]')
        end
        object frxpesquisaPED_INICIOPAG: TfrxMemoView
          AllowVectorExport = True
          Left = 746.063390000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'PED_INICIOPAG'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxpesquisa."PED_INICIOPAG"]')
          ParentFont = False
        end
        object frxpesquisaPED_PARCELA: TfrxMemoView
          AllowVectorExport = True
          Left = 850.913833330000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'PED_PARCELA'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxpesquisa."PED_PARCELA"]')
        end
        object frxpesquisaPED_VLTOTAL_BRUTO: TfrxMemoView
          AllowVectorExport = True
          Left = 937.362710000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataField = 'PED_VLTOTAL_BRUTO'
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxpesquisa."PED_VLTOTAL_BRUTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 381.215770000000000000
          Top = 0.779530000000000000
          Width = 78.488250000000000000
          Height = 14.097650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxpesquisa."PED_UND_CONSUMIDORA">=0,'#39#39',<frxpesquisa."PED_' +
              'UND_CONSUMIDORA">)]')
        end
        object frxpesquisaPED_VLPARCELA: TfrxMemoView
          AllowVectorExport = True
          Left = 646.575140000000000000
          Top = 0.200000000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = frxpesquisa
          DataSetName = 'frxpesquisa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxpesquisa."PED_VLPARCELA"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.685590000000000000
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Top = 1.483240000000000000
          Width = 234.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Registros Total: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 21.185590000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 646.575140000000000000
          Top = 0.519480000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLPARCELA">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 799.608514760000000000
          Top = 0.519480000000000000
          Width = 126.895918570000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total das Parcelas:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 556.807668570000000000
          Top = 0.519480000000000000
          Width = 77.316821430000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Parcelas:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 937.362710000000000000
          Top = 0.371057140000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxpesquisa."PED_VLTOTAL_BRUTO">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 1.779530000000000000
          Width = 269.140260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 106.286580000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Top = 1.014100000000000000
          Width = 226.771673070000000000
          Height = 68.787401570000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 236.850546670000000000
          Top = 4.793630000000000000
          Width = 637.033416670000000000
          Height = 19.596866670000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 900.787983330000000000
          Top = 2.273943330000000000
          Width = 141.102453330000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina : [<Page>]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 902.528140000000000000
          Top = 23.691280000000000000
          Width = 141.102453330000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o : [Date]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 27.029870000000000000
          Width = 337.638013330000000000
          Height = 19.036240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 236.000000000000000000
          Top = 49.916450000000000000
          Width = 236.088250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo: [Periodo]')
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 72.716450000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 76.188929999999990000
          Width = 57.952793330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 65.031540000000000000
          Top = 76.188929999999990000
          Width = 57.952793330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 479.009710000000000000
          Top = 76.188930000000000000
          Width = 135.502453330000000000
          Height = 23.937023330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade-UF')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 657.354670000000000000
          Top = 76.188930000000000000
          Width = 73.070913330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Parcela')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 753.283860000000000000
          Top = 76.188930000000000000
          Width = 57.952793330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1'#186' Parcela')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 838.315400000000000000
          Top = 76.188930000000000000
          Width = 88.189033330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela Atual')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 944.567410000000000000
          Top = 76.188930000000000000
          Width = 91.968563330000000000
          Height = 27.716553330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor  Total')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 380.436240000000000000
          Top = 76.188930000000000000
          Width = 71.288250000000000000
          Height = 30.097650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und.'
            'Consumidora')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 67
    Top = 352
  end
  object SaveDialog1: TSaveDialog
    Left = 240
    Top = 352
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 152
    Top = 352
  end
  object dsCdsqSqlCdsPesq: TDataSource
    DataSet = cdsqSqlCdsPesq
    Left = 344
    Top = 144
  end
  object dspqSqlCdsPesq: TDataSetProvider
    DataSet = qSqlCdsPesq
    Left = 152
    Top = 144
  end
  object cdsqSqlCdsPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspqSqlCdsPesq'
    OnCalcFields = cdsqSqlCdsPesqCalcFields
    Left = 248
    Top = 144
    object cdsqSqlCdsPesqPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsqSqlCdsPesqPED_DTENTRADA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'PED_DTENTRADA'
    end
    object cdsqSqlCdsPesqCLI_CGC: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLI_CGC'
      Visible = False
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object cdsqSqlCdsPesqcli_cidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 23
      FieldName = 'cli_cidade'
      Size = 30
    end
    object cdsqSqlCdsPesqcli_uf: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'cli_uf'
      Size = 2
    end
    object cdsqSqlCdsPesqBANCO: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 17
      FieldName = 'BANCO'
      Size = 34
    end
    object cdsqSqlCdsPesqPED_VLPARCELA: TFMTBCDField
      DisplayLabel = 'Valor Parcela'
      DisplayWidth = 10
      FieldName = 'PED_VLPARCELA'
      ProviderFlags = [pfInUpdate]
      OnGetText = qSqlCdsPesqPED_VLPARCELAGetText
      Precision = 15
    end
    object cdsqSqlCdsPesqPED_PARCELA: TIntegerField
      DisplayLabel = 'Qtde. de Parcelas'
      DisplayWidth = 8
      FieldName = 'PED_PARCELA'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object cdsqSqlCdsPesqPED_INICIOPAG: TDateField
      DisplayLabel = '1'#170' Parcela'
      DisplayWidth = 10
      FieldName = 'PED_INICIOPAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsqSqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 8
      FieldName = 'PED_VLTOTAL_BRUTO'
      OnGetText = qSqlCdsPesqPED_VLTOTAL_BRUTOGetText
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 18
    end
    object cdsqSqlCdsPesqREP_NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsqSqlCdsPesqCLI_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object cdsqSqlCdsPesqCLI_CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object cdsqSqlCdsPesqCLI_ENDERE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object cdsqSqlCdsPesqCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsqSqlCdsPesqCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object cdsqSqlCdsPesqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Visible = False
      Size = 3
    end
    object cdsqSqlCdsPesqCLI_RAZAO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 48
      FieldName = 'CLI_RAZAO'
      Size = 49
    end
    object cdsqSqlCdsPesqPED_SITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o!!!'
      FieldName = 'PED_SITUACAO'
      OnGetText = cdsqSqlCdsPesqPED_SITUACAOGetText
      Size = 1
    end
    object cdsqSqlCdsPesqPED_SITUACAO2: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'PED_SITUACAO2'
      Calculated = True
    end
  end
end
