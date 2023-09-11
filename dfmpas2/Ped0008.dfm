object FormConsultaPedido: TFormConsultaPedido
  Left = 221
  Top = 81
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Consulta de Vendas / Rastreabilidade'
  ClientHeight = 581
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GbDados: TGroupBox
    Left = 0
    Top = 514
    Width = 1014
    Height = 67
    Align = alBottom
    Caption = 'Dados complementares do Cliente'
    TabOrder = 0
    TabStop = True
    object Label4: TLabel
      Left = 7
      Top = 20
      Width = 44
      Height = 14
      Caption = 'Telefone:'
    end
    object Label5: TLabel
      Left = 174
      Top = 20
      Width = 21
      Height = 14
      Caption = 'Fax:'
    end
    object Label6: TLabel
      Left = 535
      Top = 47
      Width = 27
      Height = 14
      Caption = 'Email:'
    end
    object Label7: TLabel
      Left = 10
      Top = 44
      Width = 36
      Height = 14
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 319
      Top = 20
      Width = 40
      Height = 14
      Caption = 'Contato:'
    end
    object Label9: TLabel
      Left = 323
      Top = 44
      Width = 36
      Height = 14
      Caption = 'Estado:'
    end
    object lblcnpj: TLabel
      Left = 532
      Top = 19
      Width = 28
      Height = 14
      Caption = 'CNPJ:'
    end
    object Label10: TLabel
      Left = 729
      Top = 19
      Width = 70
      Height = 14
      Caption = 'Inscr.Estadual:'
    end
    object DbedtFone: TDBEdit
      Left = 52
      Top = 16
      Width = 121
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_FONE'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 0
    end
    object DbedtFax: TDBEdit
      Left = 195
      Top = 16
      Width = 121
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_FAX'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 1
    end
    object DbedtEmail: TDBEdit
      Left = 563
      Top = 41
      Width = 395
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_EMAIL'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 2
    end
    object DbedtCidade: TDBEdit
      Left = 52
      Top = 41
      Width = 264
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_CIDADE'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 3
    end
    object DbedtContato: TDBEdit
      Left = 360
      Top = 16
      Width = 160
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_CONTATO'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 4
    end
    object DbedtCnpj: TDBEdit
      Left = 563
      Top = 16
      Width = 160
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_CGC'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 5
    end
    object DbedtInsc: TDBEdit
      Left = 800
      Top = 16
      Width = 160
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_INSC'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 6
    end
    object DbedtUF: TDBEdit
      Left = 360
      Top = 41
      Width = 25
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLI_UF'
      DataSource = DsPesq
      ReadOnly = True
      TabOrder = 7
    end
  end
  object PanImprimir: TPanel
    Left = 484
    Top = 272
    Width = 228
    Height = 121
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 1
    Visible = False
    object GroupBox4: TGroupBox
      Left = 5
      Top = 10
      Width = 218
      Height = 72
      Caption = 'Imprimir'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object RadVisual: TRadioButton
        Left = 27
        Top = 36
        Width = 141
        Height = 17
        Caption = '&Visualizar  e Imprimir'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object BtnImprimir: TBitBtn
      Left = 7
      Top = 88
      Width = 100
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BtnImprimirClick
    end
    object BtnFechar: TBitBtn
      Left = 123
      Top = 88
      Width = 100
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = BtnFecharClick
    end
  end
  object ppesquisa: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 105
    Align = alTop
    TabOrder = 2
    object BitCancelar: TBitBtn
      Left = 866
      Top = 8
      Width = 100
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 7
      Visible = False
      OnClick = BitCancelarClick
    end
    object GbPesq: TGroupBox
      Left = 1
      Top = -1
      Width = 335
      Height = 39
      Caption = 'Pesquisar por'
      TabOrder = 0
      object Rad_Cliente: TRadioButton
        Left = 8
        Top = 17
        Width = 53
        Height = 17
        Caption = '&Cliente'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = Rad_ClienteClick
      end
      object Rad_Rep: TRadioButton
        Left = 82
        Top = 17
        Width = 80
        Height = 17
        Caption = '&Vendedor'
        TabOrder = 1
        OnClick = Rad_RepClick
      end
      object Rad_Ref: TRadioButton
        Left = 170
        Top = 17
        Width = 75
        Height = 17
        Caption = 'Re&fer'#234'ncia'
        TabOrder = 2
        OnClick = Rad_RefClick
      end
      object Rad_lote: TRadioButton
        Left = 264
        Top = 17
        Width = 65
        Height = 17
        Caption = '&Lote'
        TabOrder = 3
        OnClick = Rad_RefClick
      end
    end
    object GbPed: TGroupBox
      Left = 1
      Top = 37
      Width = 335
      Height = 38
      Caption = 'Filtrar pedidos'
      TabOrder = 1
      object Rad_todos: TRadioButton
        Left = 32
        Top = 17
        Width = 53
        Height = 17
        Caption = '&Todos'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = Rad_ClienteClick
      end
      object Rad_Fatu: TRadioButton
        Left = 139
        Top = 15
        Width = 63
        Height = 17
        Caption = '&Faturado'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        OnClick = Rad_ClienteClick
      end
      object Rad_Pend: TRadioButton
        Left = 242
        Top = 15
        Width = 68
        Height = 17
        Caption = '&Pendente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Rad_ClienteClick
      end
      object Panel7: TPanel
        Left = 119
        Top = 17
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clBlue
        ParentBackground = False
        TabOrder = 3
        StyleElements = []
      end
      object Panel10: TPanel
        Left = 221
        Top = 16
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clMaroon
        ParentBackground = False
        TabOrder = 4
        StyleElements = []
      end
      object Panel13: TPanel
        Left = 11
        Top = 18
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clSilver
        ParentBackground = False
        TabOrder = 5
        StyleElements = []
      end
    end
    object GbCliente: TGroupBox
      Left = 336
      Top = 16
      Width = 376
      Height = 98
      Caption = 'Selecionar'
      TabOrder = 2
      object Label48: TLabel
        Left = 16
        Top = 44
        Width = 41
        Height = 14
        Alignment = taRightJustify
        Caption = 'C.Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 22
        Top = 22
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
      object Label2: TLabel
        Left = 32
        Top = 67
        Width = 26
        Height = 14
        Alignment = taRightJustify
        Caption = 'Linha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Edt_Lista: TEdit
        Left = 59
        Top = 17
        Width = 38
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 0
        OnExit = Edt_ListaExit
        OnKeyPress = Edt_ListaKeyPress
      end
      object CbProjetoObra: TComboBoxRw
        Left = 98
        Top = 39
        Width = 249
        Height = 22
        TabOrder = 2
        OnExit = CbProjetoObraExit
        OnChange = CbProjetoObraChange
        CharCase = ecUpperCase
        LookupSelect = 'PCX_CODIGO,PCX_DESCRI'
        LookupOrderBy = 'PCX_DESCRI'
        LookupTable = 'PCX0000'
        LookupDispl = 'PCX_DESCRI'
        GridAutoSize = False
        LookupSource = CbProjetoObra.InternalSource
        LookupKeyField = 'PCX_CODIGO'
        FiltroTabela = 'PCX_TIPO = '#39'L'#39
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Centros de Custo'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'PCX0000'
        CamposCarregar = 'PCX_CODIGO,PCX_DESCRI'
        CamposRetornar = 'PCX_CODIGO'
        Condicao = 'PCX_TIPO = '#39'L'#39
        CamposOrdernar = 'PCX_DESCRI'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'TABELAS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object EdProjetoObraCodigo: TEdit
        Left = 59
        Top = 39
        Width = 38
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 3
        OnExit = EdProjetoObraCodigoExit
      end
      object EdLinhaCodigo: TEdit
        Left = 60
        Top = 62
        Width = 38
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 4
        OnExit = EdLinhaCodigoExit
      end
      object cbLinha: TComboBoxRw
        Left = 99
        Top = 62
        Width = 249
        Height = 22
        TabOrder = 5
        OnExit = cbLinhaExit
        OnChange = cbLinhaChange
        CharCase = ecUpperCase
        LookupSelect = 'LIN_CODIGO,LIN_DESCRI'
        LookupOrderBy = 'LIN_DESCRI'
        LookupTable = 'PRD_LINHA'
        LookupDispl = 'LIN_DESCRI'
        GridAutoSize = False
        LookupSource = cbLinha.InternalSource
        LookupKeyField = 'LIN_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Marca / Linha'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'PRD_LINHA'
        CamposCarregar = 'LIN_CODIGO,LIN_DESCRI'
        CamposRetornar = 'LIN_CODIGO'
        CamposOrdernar = 'LIN_DESCRI'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'TABELAS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object cbClientes1: TSgDbSearchCombo
        Left = 99
        Top = 16
        Width = 248
        Height = 22
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 
          't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabp' +
          'reco,t1.cli_razao,t1.cli_cgc,t1.cli_insc,t2.cid_cidade,t2.cid_es' +
          'tado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo' +
          ',t1.cli_consfinal,t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_' +
          'codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, t1.VEND' +
          '_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE, CLI_CONSU_PROPRIO, cor' +
          'i_codigo'
        LookupOrderBy = 't1.cli_razao'
        LookupTable = 
          'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codig' +
          'o) LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
          'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
        LookupDispl = 'T1.CLI_RAZAO'
        OnButtonClick = cbClientes1ButtonClick
        OnSelect = cbClientes1Select
        GridAutoSize = False
        LookupSource = qCli
        LookupKeyField = 't1.cli_codigo'
        ShowButton = True
        LookupTableShare = 'CLIENTES'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 720
      Top = 2
      Width = 142
      Height = 80
      Caption = 'Per'#237'odo: (Opcional)'
      TabOrder = 3
      object Label11: TLabel
        Left = 8
        Top = 23
        Width = 30
        Height = 13
        Caption = 'Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 11
        Top = 48
        Width = 25
        Height = 13
        Caption = 'Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxDataInicial: TJvDateEdit
        Left = 40
        Top = 19
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
        TabOrder = 0
        OnClick = RxDataInicialClick
        OnEnter = RxDataInicialClick
        OnExit = RxDataInicialExit
      end
      object RxDataFinal: TJvDateEdit
        Left = 40
        Top = 44
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
        TabOrder = 1
        OnClick = RxDataFinalClick
        OnEnter = RxDataFinalClick
        OnExit = RxDataFinalExit
      end
    end
    object BitPesquisar: TBitBtn
      Left = 867
      Top = 8
      Width = 100
      Height = 25
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitPesquisarClick
    end
    object BtnRel: TBitBtn
      Left = 866
      Top = 33
      Width = 100
      Height = 25
      Hint = 'Relat'#243'rio'
      Caption = '&Relat'#243'rio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnRelClick
    end
    object BtnSair: TBitBtn
      Left = 866
      Top = 58
      Width = 100
      Height = 25
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BtnSairClick
    end
    object chkMultiempresa: TCheckBox
      Left = 8
      Top = 81
      Width = 165
      Height = 17
      Caption = 'Mostrar Multiempresa'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object DBGridVendas: TDBGrid
    Left = 0
    Top = 105
    Width = 1014
    Height = 409
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = clWhite
    Ctl3D = True
    DataSource = DsPesq
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentBiDiMode = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridVendasDrawColumnCell
    OnTitleClick = DBGridVendasTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'emp_codigo'
        Title.Caption = 'Empresa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DTENTRADA'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_NUM_NFE'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_EMISSAO'
        Width = 89
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'CLI_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_PRDDESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o do Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NTP_CFOP'
        Title.Caption = 'CFOP'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRDL_LOTE'
        Title.Alignment = taCenter
        Title.Caption = 'No. Lote'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_QTDE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_PRECO'
        Title.Alignment = taCenter
        Title.Caption = 'Vl.Unit.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_DESCONTO'
        Title.Caption = 'Valor c/Desconto'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_TOTAL_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Vl.Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_SITUACAO_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DTSAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REP_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Vendedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_ITEMCOMIS'
        Title.Caption = 'Com.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 30
        Visible = True
      end>
  end
  object SqlCdsClie: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select'#13#10'distinct(PD.cli_codigo),'#13#10'cl.cli_razao'#13#10'from PED0000 PD1' +
      #13#10'JOIN CLI0000 CL ON PD1.CLI_CODIGO = CL.cli_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'distinct(PD.cli_codigo),'#13#10'cl.cli_razao'#13#10'from PED0000 PD1' +
      #13#10'JOIN CLI0000 CL ON PD1.CLI_CODIGO = CL.cli_codigo'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 624
    Top = 208
    object SqlCdsClieCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsClieCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
  end
  object SqlCdsRep: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select'#13#10'distinct(PD.rep_codigo),'#13#10'rp.rep_nome'#13#10'from PED0000 PD'#13#10 +
      'JOIN REP0000 RP ON PD.REP_CODIGO = RP.rep_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'distinct(PD.rep_codigo),'#13#10'rp.rep_nome'#13#10'from PED0000 PD'#13#10 +
      'JOIN REP0000 RP ON PD.REP_CODIGO = RP.rep_codigo'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 712
    Top = 208
    object SqlCdsRepREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRepREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object SqlCdsPesq: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select Ni.NTP_CFOP, P1.PED_CODIGO,P1.PRD_REFER,P1.PRF_PRDDESCRI,' +
      'P1.PRF_QTDE,P1.PRF_PRECO,P1.PRF_ITEMCOMIS,P0.PED_DTENTRADA,P0.PE' +
      'D_DTSAIDA,P0.PED_SITUACAO,P0.CLI_CODIGO,P0.REP_CODIGO,C1.CLI_FON' +
      'E,C1.CLI_FAX,C1.CLI_ENDERE,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_RAZAO,' +
      'C1.CLI_EMAIL,C1.CLI_CONTATO,C1.CLI_CGC,C1.CLI_INSC,R1.REP_NOME,L' +
      '1.PRDL_LOTE from PED_IT01 P1 JOIN PED0000 P0 ON (P1.PED_CODIGO =' +
      ' P0.PED_CODIGO) AND (P1.EMP_CODIGO = P0.EMP_CODIGO) and (P0.PED_' +
      'SITUACAO <> '#39'C'#39') JOIN NF_IT01 ni ON '#9'(ni.PED_CODIGO = P0.PED_COD' +
      'IGO) JOIN opv0000 OPV ON (OPV.opv_codigo = P0.opv_codigo AND OPV' +
      '.opv_venda = '#39'S'#39') JOIN CLI0000 C1 ON (P0.CLI_CODIGO = C1.CLI_COD' +
      'IGO) LEFT JOIN REP0000 R1 ON (P0.REP_CODIGO = R1.REP_CODIGO) LEF' +
      'T JOIN PRD_LOTE L1 ON (L1.PRDL_REGISTRO = P1.PRDL_REGISTRO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPesqCalcFields
    CommandText = 
      'Select Ni.NTP_CFOP, P1.PED_CODIGO,P1.PRD_REFER,P1.PRF_PRDDESCRI,' +
      'P1.PRF_QTDE,P1.PRF_PRECO,P1.PRF_ITEMCOMIS,P0.PED_DTENTRADA,P0.PE' +
      'D_DTSAIDA,P0.PED_SITUACAO,P0.CLI_CODIGO,P0.REP_CODIGO,C1.CLI_FON' +
      'E,C1.CLI_FAX,C1.CLI_ENDERE,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_RAZAO,' +
      'C1.CLI_EMAIL,C1.CLI_CONTATO,C1.CLI_CGC,C1.CLI_INSC,R1.REP_NOME,L' +
      '1.PRDL_LOTE from PED_IT01 P1 JOIN PED0000 P0 ON (P1.PED_CODIGO =' +
      ' P0.PED_CODIGO) AND (P1.EMP_CODIGO = P0.EMP_CODIGO) and (P0.PED_' +
      'SITUACAO <> '#39'C'#39') JOIN NF_IT01 ni ON '#9'(ni.PED_CODIGO = P0.PED_COD' +
      'IGO) JOIN opv0000 OPV ON (OPV.opv_codigo = P0.opv_codigo AND OPV' +
      '.opv_venda = '#39'S'#39') JOIN CLI0000 C1 ON (P0.CLI_CODIGO = C1.CLI_COD' +
      'IGO) LEFT JOIN REP0000 R1 ON (P0.REP_CODIGO = R1.REP_CODIGO) LEF' +
      'T JOIN PRD_LOTE L1 ON (L1.PRDL_REGISTRO = P1.PRDL_REGISTRO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 220
    Top = 264
    object SqlCdsPesqemp_codigo: TStringField
      FieldName = 'emp_codigo'
      Size = 3
    end
    object SqlCdsPesqPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsPesqPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPesqPRF_PRDDESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object SqlCdsPesqPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      ProviderFlags = []
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object SqlCdsPesqPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsPesqVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VL_DESCONTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsPesqPED_TOTAL_CC: TFMTBCDField
      FieldName = 'PED_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField
      DisplayLabel = 'Data Ped.'
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsPesqPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsPesqPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SqlCdsPesqCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPesqREP_CODIGO: TStringField
      DisplayLabel = 'C'#243'd'
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object SqlCdsPesqCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object SqlCdsPesqCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsPesqCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsPesqCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsPesqCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 80
    end
    object SqlCdsPesqCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object SqlCdsPesqCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsPesqCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object SqlCdsPesqCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SqlCdsPesqREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsPesqPED_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PED_SITUACAO_CC'
      Calculated = True
    end
    object SqlCdsPesqPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
      Size = 4
    end
    object SqlCdsPesqPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object SqlCdsPesqNF_NUM_NFE: TIntegerField
      DisplayLabel = 'NFE'
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsPesqNF_EMISSAO: TDateField
      DisplayLabel = 'Dt Fatura'
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsPesqNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
  end
  object DsPesq: TDataSource
    DataSet = SqlCdsPesq
    Left = 296
    Top = 264
  end
  object ppDBPesq: TppDBPipeline
    DataSource = DsPesq
    UserName = 'DBPesq'
    Left = 389
    Top = 264
    object ppDBPesqppField1: TppField
      FieldAlias = 'emp_codigo'
      FieldName = 'emp_codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField2: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField3: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField4: TppField
      FieldAlias = 'PRF_PRDDESCRI'
      FieldName = 'PRF_PRDDESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField5: TppField
      FieldAlias = 'PRF_QTDE'
      FieldName = 'PRF_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField6: TppField
      FieldAlias = 'PRF_PRECO'
      FieldName = 'PRF_PRECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField7: TppField
      FieldAlias = 'VL_DESCONTO'
      FieldName = 'VL_DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField8: TppField
      FieldAlias = 'PED_TOTAL_CC'
      FieldName = 'PED_TOTAL_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField9: TppField
      FieldAlias = 'PED_DTENTRADA'
      FieldName = 'PED_DTENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField10: TppField
      FieldAlias = 'PED_DTSAIDA'
      FieldName = 'PED_DTSAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField11: TppField
      FieldAlias = 'PED_SITUACAO'
      FieldName = 'PED_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField12: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField13: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField14: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField15: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField16: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField17: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField18: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField19: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField20: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField21: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField22: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField23: TppField
      FieldAlias = 'CLI_INSC'
      FieldName = 'CLI_INSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField24: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField25: TppField
      FieldAlias = 'PED_SITUACAO_CC'
      FieldName = 'PED_SITUACAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField26: TppField
      FieldAlias = 'PRF_ITEMCOMIS'
      FieldName = 'PRF_ITEMCOMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField27: TppField
      FieldAlias = 'PRDL_LOTE'
      FieldName = 'PRDL_LOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField28: TppField
      FieldAlias = 'NF_NUM_NFE'
      FieldName = 'NF_NUM_NFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField29: TppField
      FieldAlias = 'NF_EMISSAO'
      FieldName = 'NF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPesqppField30: TppField
      FieldAlias = 'NTP_CFOP'
      FieldName = 'NTP_CFOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object ppRpPesq: TppReport
    AutoStop = False
    DataPipeline = ppDBPesq
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RelPesPedidos.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 458
    Top = 264
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPesq'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 529
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 232305
        mmTop = 529
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 232305
        mmTop = 3969
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 16404
        mmWidth = 259028
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'NFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21696
        mmTop = 11642
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 53446
        mmTop = 11642
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 118195
        mmTop = 11642
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 141214
        mmTop = 11642
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 212074
        mmTop = 11112
        mmWidth = 8345
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 220952
        mmTop = 11112
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 247827
        mmTop = 11112
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 11642
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 32279
        mmTop = 11642
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 11642
        mmWidth = 8643
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 158221
        mmTop = 11113
        mmWidth = 30732
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 46302
        mmTop = 11642
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl. c/desto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 5295
        mmLeft = 233984
        mmTop = 11022
        mmWidth = 12430
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 201613
        mmTop = 11113
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_NOME'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 118460
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 142008
        mmTop = 0
        mmWidth = 15672
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_QTDE'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 210649
        mmTop = 0
        mmWidth = 10176
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_PRECO'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 221480
        mmTop = 0
        mmWidth = 12347
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 8558
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'PRF_PRDDESCRI'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3460
        mmLeft = 158221
        mmTop = 0
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3328
        mmLeft = 45244
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 30868
        mmTop = 0
        mmWidth = 12524
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_TOTAL_CC'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 246148
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VL_DESCONTO'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 234954
        mmTop = 0
        mmWidth = 8563
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 53446
        mmTop = 0
        mmWidth = 65352
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'NTP_CFOP'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 4498
        mmLeft = 204340
        mmTop = 0
        mmWidth = 5699
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_QTDE'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 211667
        mmTop = 529
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2899
        mmTop = 524
        mmWidth = 9260
        BandType = 7
        LayerName = Foreground
      end
      object ppVarTotal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'VarTotal'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 82286
        mmTop = 1323
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PED_TOTAL_CC'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 237861
        mmTop = 529
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        566172546F74616C4F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F7572636506A570726F63656475726520566172546F74
        616C4F6E43616C63287661722056616C75653A2056617269616E74293B0D0A56
        61720D0A202077546F74616C203A2043757272656E63793B0D0A626567696E0D
        0A2020202077546F74616C203A3D284442506573715B275052465F505245434F
        275D2A4442506573715B275052465F51544445275D293B0D0A202056616C7565
        203A3D2077546F74616C3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D650608566172546F74616C094576656E744E616D6506064F6E43616C6307
        4576656E7449440221084361726574506F730102040203000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787434
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365066A70726F63656475726520444254657874344F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D636F7079284442506573715B275245505F4E4F4D
        45275D2C312C3235293B200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D65060744425465787434094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRpPesqLote: TppReport
    AutoStop = False
    DataPipeline = ppDBPesq
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RelPesPedidos.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 458
    Top = 320
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPesq'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_LT_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 529
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_LT_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_LT_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 232305
        mmTop = 529
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 232305
        mmTop = 3969
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 410
        mmTop = 16404
        mmWidth = 259028
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'NFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 21696
        mmTop = 11642
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 44754
        mmTop = 11642
        mmWidth = 31110
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 97633
        mmTop = 11642
        mmWidth = 21148
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 120814
        mmTop = 11642
        mmWidth = 16319
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 212074
        mmTop = 11112
        mmWidth = 8345
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 220952
        mmTop = 11112
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3699
        mmLeft = 247827
        mmTop = 11112
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 11642
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 32279
        mmTop = 11642
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 11642
        mmWidth = 8643
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 137517
        mmTop = 11642
        mmWidth = 48154
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'No.Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3964
        mmLeft = 195953
        mmTop = 11113
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl. c/desto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 5295
        mmLeft = 233984
        mmTop = 11022
        mmWidth = 12430
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 44400
        mmTop = 0
        mmWidth = 52713
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_NOME'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 98161
        mmTop = 0
        mmWidth = 21945
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 121607
        mmTop = 0
        mmWidth = 15468
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_QTDE'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 212074
        mmTop = 0
        mmWidth = 9159
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_PRECO'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 221480
        mmTop = 0
        mmWidth = 12347
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 8558
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        DataField = 'PRF_PRDDESCRI'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 4763
        mmLeft = 137544
        mmTop = 0
        mmWidth = 58556
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        DataField = 'PRDL_LOTE'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 4760
        mmLeft = 196438
        mmTop = 265
        mmWidth = 14857
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 9790
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBPesq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 30868
        mmTop = 0
        mmWidth = 12524
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_TOTAL_CC'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 246148
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VL_DESCONTO'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 234954
        mmTop = 0
        mmWidth = 8563
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRF_QTDE'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 206111
        mmTop = 529
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2899
        mmTop = 524
        mmWidth = 9260
        BandType = 7
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'VarTotal'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 82286
        mmTop = 1323
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PED_TOTAL_CC'
        DataPipeline = ppDBPesq
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPesq'
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 529
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        566172546F74616C4F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F7572636506A570726F63656475726520566172546F74
        616C4F6E43616C63287661722056616C75653A2056617269616E74293B0D0A56
        61720D0A202077546F74616C203A2043757272656E63793B0D0A626567696E0D
        0A2020202077546F74616C203A3D284442506573715B275052465F505245434F
        275D2A4442506573715B275052465F51544445275D293B0D0A202056616C7565
        203A3D2077546F74616C3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E
        616D650608566172546F74616C094576656E744E616D6506064F6E43616C6307
        4576656E7449440221084361726574506F730102040203000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787432
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365066B70726F63656475726520444254657874324F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D20436F7079284442506573715B27434C495F5241
        5A414F275D2C312C3335293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060744425465787432094576656E744E616D6506094F6E4765745465
        7874074576656E7449440235084361726574506F730102000200000001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D65061044425465
        7874344F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F75726365066A70726F63656475726520444254657874344F
        6E476574546578742876617220546578743A20537472696E67293B0D0A626567
        696E0D0A0D0A202054657874203A3D636F7079284442506573715B275245505F
        4E4F4D45275D2C312C3235293B200D0A0D0A656E643B0D0A0D436F6D706F6E65
        6E744E616D65060744425465787434094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
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
    Left = 800
    Top = 208
  end
end
