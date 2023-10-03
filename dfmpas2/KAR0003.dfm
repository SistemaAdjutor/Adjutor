inherited FrmKardexLancamentoManual: TFrmKardexLancamentoManual
  Left = 298
  Top = 81
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Entrada e Sa'#237'da Manual do Estoque'
  ClientHeight = 579
  ClientWidth = 970
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 986
  ExplicitHeight = 618
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 386
    Width = 970
    Height = 193
    ActivePage = tsgrade
    Align = alClient
    TabOrder = 1
    Visible = False
    OnEnter = dbgLancarinfoEnter
    OnExit = dbgLancarinfoExit
    object tsgrade: TTabSheet
      Caption = 'grade'
      object dbgLancarinfo: TDBGrid
        Left = 0
        Top = 0
        Width = 962
        Height = 164
        Align = alClient
        Color = clBtnFace
        Ctl3D = True
        DataSource = dsGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        StyleElements = [seFont]
        OnDrawColumnCell = dbgLancarinfoDrawColumnCell
        OnEnter = dbgLancarinfoEnter
        OnExit = dbgLancarinfoExit
        OnKeyDown = dbgLancarinfoKeyDown
        OnKeyPress = dbgLancarinfoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRG_DESCRICAO'
            Title.Alignment = taCenter
            Width = 221
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'PRG_SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo atual'
            Width = 124
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Color = 16776176
            Expanded = False
            FieldName = 'PRG_QTDE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Width = 131
            Visible = True
          end>
      end
    end
    object tslote: TTabSheet
      Caption = 'tslote'
      ImageIndex = 1
      object dgrLote: TDBGrid
        Left = 0
        Top = 21
        Width = 962
        Height = 143
        Align = alClient
        DataSource = dsLoteProduto
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = dbgLancarinfoDrawColumnCell
        OnKeyDown = dbgLancarinfoKeyDown
        OnKeyPress = dgrLoteKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRDL_DATA_FABRICACAO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_DATA_VALIDADE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Validade'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_LOTE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_PRECO_MAXIMO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o m'#225'ximo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_QTDELOTE'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo inicial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque atual'
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'PRG_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 962
        Height = 21
        Align = alTop
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 1
          Top = -1
          Width = 22
          Height = 22
          Hint = 'Cadastro de lote'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object chkMaiorZero: TCheckBox
          Left = 30
          Top = 2
          Width = 254
          Height = 17
          Caption = 'Filtrar estoque atual maior que zero'
          TabOrder = 0
          OnClick = chkvencidaClick
        end
        object chkvencida: TCheckBox
          Left = 232
          Top = 2
          Width = 105
          Height = 17
          Caption = 'Validade vencida'
          TabOrder = 1
          OnClick = chkvencidaClick
        end
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 970
    Height = 386
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      970
      386)
    object LabelQuant: TLabel
      Left = 8
      Top = 277
      Width = 62
      Height = 14
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 389
      Top = 235
      Width = 69
      Height = 14
      Caption = 'No.documento'
    end
    object Label3: TLabel
      Left = 387
      Top = 188
      Width = 54
      Height = 14
      Caption = 'Saldo Atual'
    end
    object labelforncliente: TLabel
      Left = 2
      Top = 187
      Width = 73
      Height = 14
      Caption = 'labelforncliente'
    end
    object Label2: TLabel
      Left = 8
      Top = 235
      Width = 59
      Height = 14
      Caption = 'Colaborador'
    end
    object Label1: TLabel
      Left = 5
      Top = 46
      Width = 64
      Height = 14
      Caption = 'Almoxarifado'
    end
    object RadioGroup1: TRadioGroup
      Left = 0
      Top = 8
      Width = 489
      Height = 39
      Caption = 'Opera'#231#227'o'
      TabOrder = 0
    end
    object CurSaldoTransferir: TCurrencyEdit
      Left = 5
      Top = 297
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      TabOrder = 5
    end
    object EdDocumento: TEdit
      Left = 389
      Top = 250
      Width = 100
      Height = 22
      TabOrder = 4
    end
    object CurSaldoDestino: TCurrencyEdit
      Left = 389
      Top = 208
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      ReadOnly = True
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 93
      Width = 492
      Height = 90
      Caption = 'Buscar Produto'
      TabOrder = 1
      object RbReferencia: TRadioButton
        Left = 129
        Top = 11
        Width = 113
        Height = 27
        Caption = '&Refer'#234'ncias'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RbReferenciaClick
      end
      object RbDescricao: TRadioButton
        Left = 10
        Top = 16
        Width = 113
        Height = 17
        Caption = '&Descri'#231#227'o'
        TabOrder = 1
        OnClick = RbDescricaoClick
      end
      object EdProdutoDescricao: TEdit
        Left = 3
        Top = 65
        Width = 458
        Height = 22
        TabStop = False
        Color = 14145495
        ReadOnly = True
        TabOrder = 2
      end
      object cbProduto: TComboBoxRw
        Left = 348
        Top = 12
        Width = 87
        Height = 22
        TabOrder = 3
        Visible = False
        LookupSelect = 'prd_codigo,prd_refer,prd_descri,prd_und'
        LookupOrderBy = 'prd_refer'
        LookupTable = 'PRD0000'
        LookupDispl = 'PRD_DESCRI'
        GridAutoSize = False
        LookupSource = cbProduto.InternalSource
        LookupKeyField = 'prd_codigo'
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Refer'#234'ncia, Descri'#231#227'o, Unidade'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'PRD0000'
        CamposCarregar = 'prd_codigo,prd_refer,prd_descri,prd_und'
        CamposRetornar = 'prd_codigo'
        CamposOrdernar = 'prd_refer'
        ConexaoBanco = DBConn
        Compartilhar = 'PRODUTOS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object cbProduto2: TcxExtLookupComboBox
        Left = 3
        Top = 37
        Properties.View = cxGrid1DBTableView1
        Properties.KeyFieldNames = 'PRD_CODIGO'
        Properties.ListFieldItem = cxGrid1DBTableView1PRD_REFER
        Properties.OnChange = cbProduto2PropertiesChange
        TabOrder = 4
        OnExit = cbProduto2Exit
        Width = 458
      end
    end
    object PesqCliente: TSgDbSearchCombo
      Left = 5
      Top = 207
      Width = 352
      Height = 22
      TabOrder = 8
      CharCase = ecUpperCase
      LookupSelect = 
        't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabp' +
        'reco,t1.cli_razao,t1.cli_cgc,t1.cli_insc,t2.cid_cidade,t2.cid_es' +
        'tado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo' +
        ',t1.cli_consfinal,t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_' +
        'codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, t1.VEND' +
        '_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE, CLI_CONSU_PROPRIO'
      LookupOrderBy = 't1.cli_razao'
      LookupTable = 
        'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codig' +
        'o) LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
        'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      LookupDispl = 'T1.CLI_RAZAO'
      OnButtonClick = PesqClienteButtonClick
      GridAutoSize = False
      LookupSource = qCli
      LookupKeyField = 't1.cli_codigo'
      ShowButton = True
      LookupTableShare = 'CLIENTES'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object edColaborador: TSgDbSearchCombo
      Left = 5
      Top = 249
      Width = 352
      Height = 22
      TabOrder = 3
      CharCase = ecUpperCase
      LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
      LookupOrderBy = 'COL_NOME'
      LookupTable = 'COLABORADOR'
      LookupDispl = 'COL_NOME'
      GridAutoSize = False
      LookupSource = qCol
      LookupKeyField = 'COL_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Colaborador'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fun'#231#227'o, Setor'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 324
      Width = 484
      Height = 57
      Caption = 'Observa'#231#227'o'
      TabOrder = 7
      object MemoObservacao: TMemo
        Left = 2
        Top = 16
        Width = 480
        Height = 39
        Align = alClient
        TabOrder = 0
      end
    end
    object Bit_Cancelar: TBitBtn
      Left = 850
      Top = 296
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Anchors = [akTop, akRight]
      Cancel = True
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
      TabOrder = 9
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 745
      Top = 296
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Anchors = [akTop, akRight]
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
      TabOrder = 10
      OnClick = Bit_GravarClick
    end
    object CbLoteProduto: TcxLookupComboBox
      Left = 515
      Top = 301
      Properties.KeyFieldNames = 'PRDL_REGISTRO'
      Properties.ListColumns = <
        item
          Caption = 'Lote'
          FieldName = 'PRDL_LOTE'
        end
        item
          Caption = 'Validade'
          FieldName = 'PRDL_DATA_VALIDADE'
        end>
      Properties.ListSource = dsLoteProduto
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 11
      Visible = False
      Width = 118
    end
    object GroupBox2: TGroupBox
      Left = 498
      Top = 17
      Width = 462
      Height = 273
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Saldos dos Almoxarifados'
      TabOrder = 12
      object DBGrid1: TDBGrid
        Left = 2
        Top = 16
        Width = 458
        Height = 255
        Align = alClient
        DataSource = DsSaldos
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'AMX_CODIGO_RET'
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_DESCRI_RET'
            Title.Caption = 'Descri'#231#227'o'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_SALDO_RET'
            Title.Caption = 'Saldo'
            Width = 84
            Visible = True
          end>
      end
    end
    object RbAdicionar: TRadioButton
      Left = 16
      Top = 23
      Width = 99
      Height = 17
      Caption = '&Entrada'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      TabStop = True
      OnClick = RbAdicionarClick
    end
    object RbRetirar: TRadioButton
      Left = 214
      Top = 23
      Width = 74
      Height = 17
      Caption = '&Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = RbRetirarClick
    end
    object RbBalanco: TRadioButton
      Left = 386
      Top = 22
      Width = 75
      Height = 18
      Caption = '&Balan'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = RbBalancoClick
    end
    object PesqFornecedor: TSgDbSearchCombo
      Left = 4
      Top = 207
      Width = 352
      Height = 22
      EmptyText = 'TODOS OS FORNECEDORES'
      TabOrder = 2
      CharCase = ecUpperCase
      LookupSelect = 'for_codigo,for_razao, for_bairro, for_cidade'
      LookupOrderBy = 'for_razao'
      LookupTable = 'for0000'
      LookupDispl = 'FOR_RAZAO'
      GridAutoSize = False
      LookupSource = qFor
      LookupKeyField = 'for_codigo'
      ShowButton = True
      LookupTableShare = 'fornecedores'
      AutoF8WinTitulo = 'Fornecedores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Bairro, Cidade'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object CbAlmoxarifadoDestino: TComboBoxRw
      Left = 5
      Top = 65
      Width = 352
      Height = 22
      TabOrder = 16
      OnKeyDown = CbAlmoxarifadoDestinokeyDown
      OnKeyPress = CbAlmoxarifadoDestinoKeyPress
      OnkeyUp = CbAlmoxarifadoDestinokeyUp
      CharCase = ecUpperCase
      LookupSelect = 'amx_CODIGO,AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      OnSelect = CbAlmoxarifadoDestinoSelect
      GridAutoSize = False
      LookupSource = CbAlmoxarifadoDestino.InternalSource
      LookupKeyField = 'amx_CODIGO'
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
      Tabela = 'ALMOX0000'
      CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
      CamposRetornar = 'amx_CODIGO'
      CamposOrdernar = 'AMX_DESCRI'
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
    object cxGrid1: TcxGrid
      Left = 515
      Top = 329
      Width = 312
      Height = 200
      TabOrder = 17
      Visible = False
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsProduto
        DataController.DetailKeyFieldNames = 'PRD_CODIGO'
        DataController.KeyFieldNames = 'PRD_CODIGO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'PRD_REFER'
          MinWidth = 30
        end
        object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'PRD_DESCRI'
          Width = 376
        end
        object cxGrid1DBTableView1PRD_UND: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'PRD_UND'
        end
        object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_CODIGO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 752
    Top = 24
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 152
    Top = 32
  end
  inherited DBConn: TSQLConnection
    Left = 256
    Top = 57
  end
  inherited qAux: TSQLQuery
    Left = 530
    Top = 37
  end
  inherited qAux2: TSQLQuery
    Left = 538
    Top = 4
  end
  inherited qAux3: TSQLQuery
    Left = 618
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 562
    Top = 88
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 506
    Top = 184
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 496
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 439
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      Size = 1
    end
    object SqlCdsProdutoPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
  end
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 913
    Top = 233
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
    Left = 908
    Top = 185
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
      Size = 4
    end
  end
  object DspSaldos: TDataSetProvider
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 910
    Top = 137
  end
  object SqlSaldos: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 912
    Top = 96
    object SqlSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object SqlSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object SqlSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
      Size = 4
    end
  end
  object SqlCdsAlmoxarifadoDestino: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' ORDER BY AMX_DESCR' +
      'I'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' ORDER BY AMX_DESCR' +
      'I'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 631
    Top = 240
    object SqlCdsAlmoxarifadoDestinoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoDestinoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object DsAlmoxarifadoDestino: TDataSource
    DataSet = SqlCdsAlmoxarifadoDestino
    Left = 720
    Top = 240
  end
  object dsLoteProduto: TDataSource
    DataSet = CdsLoteProduto
    Left = 544
    Top = 496
  end
  object CdsLoteProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD_LOTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LOTE'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 440
    Top = 494
    object CdsLoteProdutoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object CdsLoteProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object CdsLoteProdutoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 10
    end
    object CdsLoteProdutoPRG_QTDE: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'PRG_QTDE'
      OnValidate = CdsLoteProdutoPRG_QTDEValidate
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsLoteProdutoPRDL_QTDELOTE: TFMTBCDField
      FieldName = 'PRDL_QTDELOTE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
  end
  object dspGrade: TDataSetProvider
    DataSet = sGrade
    Left = 153
    Top = 429
  end
  object sGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT PRG_REGISTRO, PRD_CODIGO, PRG_SALDO, PRG_DESCRICAO,  PRG_' +
        'REDUCAO_PERCENT, PRG_INDICE,'
      
        '0.0 as PRG_QTDE, prg_PRECO as PRG_BRUTO, 0.0 PRECO_LIQU, 0 as PO' +
        'RC_IPI, 0.0 PRD_DESC, '
      
        '0 PRF_REGISTRO, NULL amx_CODIGO, 0.0 as PRF_QTDEFAT, 0.0 as Perc' +
        'entStProduto'
      'FROM PRD_GRADE WHERE prd_codigo = '#39'-1'#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 88
    Top = 432
    object sGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Required = True
    end
    object sGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object sGradePRG_SALDO: TFMTBCDField
      FieldName = 'PRG_SALDO'
      Precision = 18
      Size = 5
    end
    object sGradePRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object sGradePRG_QTDE: TFMTBCDField
      FieldName = 'PRG_QTDE'
      Required = True
      Precision = 18
      Size = 1
    end
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrade'
    AfterScroll = cdsGradeAfterScroll
    OnNewRecord = cdsGradeNewRecord
    Left = 213
    Top = 428
    object cdsGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Required = True
    end
    object cdsGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsGradePRG_SALDO: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'PRG_SALDO'
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsGradePRG_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRG_DESCRICAO'
      ReadOnly = True
      Size = 100
    end
    object cdsGradePRG_QTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRG_QTDE'
      Precision = 18
      Size = 1
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 269
    Top = 428
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 731
    Top = 116
  end
  object qFor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM FOR0000')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 795
    Top = 140
    object qForfor_codigo: TStringField
      FieldName = 'for_codigo'
      Size = 6
    end
    object qForfor_razao: TStringField
      FieldName = 'for_razao'
      Size = 40
    end
    object qForfor_bairro: TStringField
      FieldName = 'for_bairro'
      Size = 60
    end
    object qForfor_cidade: TStringField
      FieldName = 'for_cidade'
      Size = 100
    end
  end
  object qCol: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 739
    Top = 188
  end
end
