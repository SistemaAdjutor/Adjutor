inherited FrmPesquisaPedidoGrade: TFrmPesquisaPedidoGrade
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Pesquisa de Pedidos com Grade'
  ClientHeight = 473
  ClientWidth = 1051
  Constraints.MinHeight = 200
  Constraints.MinWidth = 1051
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1067
  ExplicitHeight = 511
  DesignSize = (
    1051
    473)
  PixelsPerInch = 96
  TextHeight = 13
  object gbPeriodo: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 142
    Height = 118
    Caption = 'Per'#237'odo:'
    TabOrder = 0
    object ldataInicial: TLabel
      Left = 11
      Top = 52
      Width = 30
      Height = 13
      Caption = 'Inicial:'
      FocusControl = RxDataInicial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lDataFinal: TLabel
      Left = 14
      Top = 79
      Width = 25
      Height = 13
      Caption = 'Final:'
      FocusControl = RxDataFinal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DataTipo: TComboBox
      Left = 11
      Top = 20
      Width = 123
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
        'ENTREGA')
    end
    object RxDataInicial: TJvDateEdit
      Left = 44
      Top = 48
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ImageKind = ikCustom
      ButtonWidth = 16
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
    end
    object RxDataFinal: TJvDateEdit
      Left = 45
      Top = 75
      Width = 89
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ImageKind = ikCustom
      ButtonWidth = 16
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 2
    end
  end
  object gbTipo: TGroupBox [1]
    Left = 769
    Top = 6
    Width = 162
    Height = 51
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
      Top = 17
      Width = 126
      Height = 22
      EmptyText = 'TODOS OS TIPOS'
      TabOrder = 0
      LookupSelect = 'opv_codigo, opv_descricao'
      LookupOrderBy = 'opv_descricao'
      LookupTable = 'opv0000'
      LookupDispl = 'OPV_DESCRICAO'
      GridAutoSize = False
      LookupSource = SqlCdsTipo
      LookupKeyField = 'opv_codigo'
      FiltroTabela = 'OPV_TIPO = '#39'S'#39
      ShowButton = True
      LookupTableShare = 'tabelas'
      AutoF8WinTitulo = 'Tipos de Pedidos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  object gbFaturamento: TGroupBox [2]
    Left = 769
    Top = 64
    Width = 162
    Height = 51
    Caption = 'Faturamento'
    TabOrder = 3
    object cbbFaturamento: TComboBox
      Left = 4
      Top = 18
      Width = 155
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 0
      Items.Strings = (
        'TODOS'
        'FATURADO (Parcial ou Total)'
        'PENDENTE')
    end
  end
  object BtnSair: TBitBtn [3]
    Left = 943
    Top = 86
    Width = 100
    Height = 25
    Hint = 'Sair'
    Anchors = [akTop, akRight]
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BtnSairClick
  end
  object BtnRel: TBitBtn [4]
    Left = 943
    Top = 27
    Width = 100
    Height = 25
    Hint = 'Relat'#243'rio'
    Anchors = [akTop, akRight]
    Caption = '&Exportar Excel'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnRelClick
  end
  object BitPesquisar: TBitBtn [5]
    Left = 943
    Top = 1
    Width = 100
    Height = 25
    Hint = 'Pesquisar'
    Anchors = [akTop, akRight]
    Caption = '&Pesquisar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitPesquisarClick
  end
  object dbgrdResultado: TDBGrid [6]
    Left = 0
    Top = 120
    Width = 1051
    Height = 353
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    DataSource = dsResultado
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GbCliente: TGroupBox [7]
    Left = 143
    Top = -2
    Width = 622
    Height = 118
    Caption = 'Selecionar'
    TabOrder = 1
    object Label2: TLabel
      Left = 3
      Top = 45
      Width = 50
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 18
      Top = 19
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 69
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object PesqCliente: TSgDbSearchCombo
      Left = 100
      Top = 18
      Width = 485
      Height = 21
      EmptyText = 'TODOS OS CLIENTES'
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      LookupDispl = 'CLI_RAZAO'
      OnButtonClick = PesqClienteButtonClick
      OnSelect = PesqClienteSelect
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
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object EdClienteCodigo: TEdit
      Left = 56
      Top = 18
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 0
      OnExit = EdClienteCodigoExit
      OnKeyDown = EdClienteCodigoKeyDown
      OnKeyPress = EdClienteCodigoKeyPress
    end
    object pesqVendedor: TSgDbSearchCombo
      Left = 99
      Top = 42
      Width = 487
      Height = 21
      EmptyText = 'TODOS OS VENDEDORES'
      TabOrder = 3
      CharCase = ecUpperCase
      LookupSelect = 'rep_codigo, rep_nome'
      LookupOrderBy = 'rep_nome'
      LookupTable = 'rep0000'
      LookupDispl = 'REP_NOME'
      OnSelect = pesqVendedorSelect
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
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edVendedorCodigo: TEdit
      Left = 56
      Top = 42
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = edVendedorCodigoExit
      OnKeyDown = edVendedorCodigoKeyDown
      OnKeyPress = edVendedorCodigoKeyPress
    end
    object edNumeroPedido: TLabeledEdit
      Left = 56
      Top = 89
      Width = 121
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Pedido:'
      LabelPosition = lpLeft
      LabelSpacing = 5
      TabOrder = 6
      OnExit = edNumeroPedidoExit
    end
    object cbReferencia: TSgDbSearchCombo
      Left = 100
      Top = 66
      Width = 486
      Height = 21
      TabOrder = 5
      CharCase = ecUpperCase
      LookupSelect = 
        'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
        'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
      LookupOrderBy = 'PD.PRD_REFER'
      LookupTable = 
        'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
        'IGO) '
      LookupDispl = 'PRD_DESCRI'
      OnButtonClick = cbReferenciaButtonClick
      OnSelect = cbReferenciaSelect
      GridAutoSize = False
      LookupSource = qProduto
      LookupKeyField = 'PD.PRD_REFER'
      FiltroTabela = 'PRD_STATUS = '#39'A'#39
      ShowButton = True
      LookupTableShare = 'PRODUTOS'
      LookupWhere = 'PD.PRD_REFER'
      LookupDbGridColumns = 
        'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
        'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
      LookupDbGridColumnsTitle = 
        'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
        's, C'#243'd.Cliente'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edProdutoCodigo: TEdit
      Left = 56
      Top = 66
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 4
      OnExit = edProdutoCodigoExit
      OnKeyDown = edProdutoCodigoKeyDown
    end
  end
  object BtnLimpar: TBitBtn [8]
    Left = 943
    Top = 55
    Width = 100
    Height = 25
    Hint = 'Sair'
    Anchors = [akTop, akRight]
    Caption = '&Limpar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BtnLimparClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 48
    Top = 152
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 96
    Top = 160
  end
  object dspSqlCdsPesq: TDataSetProvider
    DataSet = qSqlPesq
    Left = 155
    Top = 214
  end
  object SqlCdsPesq: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspSqlCdsPesq'
    Left = 232
    Top = 216
  end
  object DsPedidos: TDataSource
    DataSet = SqlCdsPesq
    Left = 304
    Top = 216
  end
  object CdsResultado: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 126
    Top = 309
  end
  object dsResultado: TDataSource
    DataSet = CdsResultado
    Left = 214
    Top = 309
  end
  object SaveDialog1: TSaveDialog
    Left = 382
    Top = 141
  end
  object qSqlPesq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 80
    Top = 208
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 647
    Top = 12
  end
  object qRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rep_codigo, rep_nome'
      'from rep0000'
      'Where rep_codigo='#39'-1'#39
      'order by rep_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 671
    Top = 52
  end
  object SqlCdsTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 671
    Top = 120
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA'
      'from PRD0000 PD'
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = DBConn
    Left = 711
    Top = 68
    object qProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qProdutoPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object qProdutoPRD_DESCRI: TStringField
      Tag = 500
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdutoPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qProdutoPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qProdutoLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qProdutoPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
      Size = 2
    end
  end
end
