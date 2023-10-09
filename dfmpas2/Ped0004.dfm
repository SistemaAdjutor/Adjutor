inherited FormPedidoGrid: TFormPedidoGrid
  Left = 225
  Top = 189
  BorderStyle = bsSingle
  Caption = 'Consulta de Pedidos'
  ClientHeight = 603
  ClientWidth = 1102
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  ExplicitWidth = 1108
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1102
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1090
    object Lb_Lista: TLabel
      Left = 319
      Top = 7
      Width = 3
      Height = 14
    end
    object GbData: TGroupBox
      Left = 5
      Top = 41
      Width = 364
      Height = 41
      Caption = 'Informe o Per'#237'odo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      object Label3: TLabel
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
      object Label4: TLabel
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
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'ENTRADA'
        OnChange = DataTipoChange
        Items.Strings = (
          'ENTRADA'
          'ENTREGA'
          'FATURAMENTO')
      end
      object RxDataInicial: TJvDateEdit
        Left = 156
        Top = 14
        Width = 90
        Height = 22
        AutoSelect = False
        DialogTitle = 'selecione uma data'
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
        OnExit = RxDataInicialExit
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
        OnExit = RxDataFinalExit
      end
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = -1
      Width = 628
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
      TabOrder = 0
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
        Width = 68
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
      object Rad_Contato: TRadioButton
        Left = 381
        Top = 17
        Width = 62
        Height = 17
        Caption = 'Con&tato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Rad_ClienteClick
      end
      object Rad_Orcamento: TRadioButton
        Left = 451
        Top = 17
        Width = 72
        Height = 17
        Caption = '&Or'#231'amento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Rad_ClienteClick
      end
      object rdCCusto: TRadioButton
        Left = 526
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
        TabOrder = 7
        OnClick = Rad_ClienteClick
      end
      object rdNoi: TRadioButton
        Left = 589
        Top = 17
        Width = 36
        Height = 17
        Caption = 'NOI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Rad_ClienteClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 636
      Top = 0
      Width = 125
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
      TabOrder = 1
      TabStop = True
      object cbTipo: TSgDbSearchCombo
        Left = 3
        Top = 14
        Width = 96
        Height = 22
        EmptyText = 'TODOS OS TIPOS'
        TabOrder = 0
        OnChange = cbTipoChange
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
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object name: TGroupBox
      Left = 764
      Top = 0
      Width = 143
      Height = 40
      Caption = 'Faturamento'
      TabOrder = 2
      TabStop = True
      object cbbFaturamento: TComboBox
        Left = 4
        Top = 14
        Width = 136
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
        OnChange = cbbFaturamentoChange
        Items.Strings = (
          'TODOS'
          'FATURADO'
          'PENDENTE'
          'AGRUPADO'
          'CANCELADOS'
          'FATURADO PARCIAL'
          'FALTA DE ESTOQUE')
      end
    end
    object rgEmpresaLogada: TRadioGroup
      Left = 913
      Top = 0
      Width = 75
      Height = 85
      Caption = 'Empresa'
      ItemIndex = 0
      Items.Strings = (
        'Logada'
        'Todas')
      TabOrder = 3
      TabStop = True
    end
    object BtnSair: TBitBtn
      Left = 996
      Top = 8
      Width = 83
      Height = 24
      Hint = 'Sair'
      Caption = '&Sair'
      TabOrder = 5
      OnClick = BtnSairClick
    end
    object BitPesquisar: TBitBtn
      Left = 996
      Top = 32
      Width = 83
      Height = 24
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitPesquisarClick
    end
    object btnAgrupar: TBitBtn
      Left = 997
      Top = 57
      Width = 83
      Height = 24
      Hint = 'Agrupar Pedidos'
      Caption = '&Agrupar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnAgruparClick
    end
    object chkNaoLiberados: TCheckBox
      Left = 833
      Top = 91
      Width = 158
      Height = 17
      Caption = 'Somente pedido n'#227'o liberado'
      TabOrder = 8
      OnClick = chkNaoLiberadosClick
    end
    object chkProducao: TCheckBox
      Left = 8
      Top = 88
      Width = 289
      Height = 17
      Caption = 'Visualizar pedidos encaminhados para produ'#231#227'o'
      TabOrder = 9
      OnClick = chkProducaoClick
    end
    object chkDemanda: TCheckBox
      Left = 285
      Top = 88
      Width = 289
      Height = 17
      Caption = 'Mostrar pedidos n'#227'o encaminhados para demanda'
      TabOrder = 10
      OnClick = chkProducaoClick
    end
    object btExportar: TButton
      Left = 997
      Top = 82
      Width = 83
      Height = 25
      Caption = 'Exportar Excel'
      TabOrder = 11
      OnClick = btExportarClick
    end
  end
  object GroupBox6: TGroupBox [1]
    Left = 0
    Top = 557
    Width = 1102
    Height = 46
    Align = alBottom
    Caption = 'Sum'#225'rio dos Pedidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 554
    ExplicitWidth = 1090
    object Label17: TLabel
      Left = 7
      Top = 18
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Quantidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 681
      Top = 18
      Width = 38
      Height = 14
      Alignment = taRightJustify
      Caption = ' Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 812
      Top = 18
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Faturado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 577
      Top = 18
      Width = 13
      Height = 14
      Alignment = taRightJustify
      Caption = 'IPI:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 138
      Top = 18
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Frete:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 262
      Top = 18
      Width = 89
      Height = 14
      Alignment = taRightJustify
      Caption = 'Desp. Acess'#243'rias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 444
      Top = 18
      Width = 38
      Height = 14
      Alignment = taRightJustify
      Caption = 'Seguro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TotalItens: TDBEdit
      Left = 67
      Top = 16
      Width = 61
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'QUANTIDADE'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object TotalPedido: TDBEdit
      Left = 718
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'PEDIDO'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object TotalFaturado: TDBEdit
      Left = 864
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'FATURADO'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object TotalIPI: TDBEdit
      Left = 590
      Top = 16
      Width = 92
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'IPI'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object TotalFrete: TDBEdit
      Left = 168
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'FRETE'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object TotalDespesas: TDBEdit
      Left = 353
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'DESPSAS'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object TotalSeguro: TDBEdit
      Left = 484
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DataField = 'SEGURO'
      DataSource = dsTotais
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object pgPesquisa: TPageControl [2]
    Left = 0
    Top = 107
    Width = 1102
    Height = 450
    ActivePage = tsPedidos
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1090
    ExplicitHeight = 447
    object tsPedidos: TTabSheet
      Caption = 'Pedidos'
      ExplicitWidth = 1082
      ExplicitHeight = 418
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1094
        Height = 421
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 418
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1094
          Height = 333
          Align = alClient
          TabOrder = 4
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitWidth = 1082
          ExplicitHeight = 330
          object cxtbPedido: TcxGridDBTableView
            OnDblClick = cxtbPedidoDblClick
            OnKeyDown = cxtbPedidoKeyDown
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            OnFocusedRecordChanged = cxtbPedidoFocusedRecordChanged
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DsPedidos
            DataController.Filter.OnChanged = cxtbPedidoDataControllerFilterChanged
            DataController.Filter.OnGetValueList = cxtbPedidoDataControllerFilterGetValueList
            DataController.Filter.DateTimeFormat = 'yyyy-mm-dd'
            DataController.Filter.IgnoreOrigin = False
            DataController.Filter.TranslateBetween = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'PED_CODIGO'
                Column = cxtbPedidoope_codigo
                DisplayText = 'Qute'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'PED_VLFRETE'
                Column = cxtbPedidoEMP_CODIGO
                DisplayText = 'Frete'
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDetailExpanding = cxtbPedidoDataControllerDetailExpanding
            DateTimeHandling.Filters = [dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears]
            DateTimeHandling.DateFormat = 'yyyy-mm-dd'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.UseLongDateFormat = False
            DateTimeHandling.UseShortTimeFormat = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            Preview.Column = cxtbPedidoPED_MOTIVO_CANCELAMENTO
            Styles.Content = cxStyle1
            Styles.OnGetContentStyle = cxtbPedidoStylesGetContentStyle
            object cxtbPedidoselecionado: TcxGridDBColumn
              Caption = '*'
              DataBinding.FieldName = 'selecionado'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.OnChange = cxtbPedidoselecionadoPropertiesChange
              Options.Filtering = False
              Options.Grouping = False
              Width = 20
            end
            object cxtbPedidoEMP_CODIGO: TcxGridDBColumn
              Caption = 'Empresa'
              DataBinding.FieldName = 'EMP_CODIGO'
              Options.Editing = False
              Width = 28
            end
            object cxtbPedidoPED_CODIGO: TcxGridDBColumn
              Caption = 'Pedido'
              DataBinding.FieldName = 'PED_CODIGO'
              Options.Editing = False
              Options.Grouping = False
            end
            object cxtbPedidoPED_DTENTRADA: TcxGridDBColumn
              DataBinding.FieldName = 'PED_DTENTRADA'
              Options.Editing = False
              Width = 67
            end
            object cxtbPedidoNF_EMISSAO: TcxGridDBColumn
              DataBinding.FieldName = 'NF_EMISSAO'
              Options.Editing = False
              Width = 80
            end
            object cxtbPedidoCLI_RAZAO: TcxGridDBColumn
              Caption = 'Raz'#227'o social'
              DataBinding.FieldName = 'CLI_RAZAO'
              Options.Editing = False
              Width = 199
            end
            object cxtbPedidoCLI_UF: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_UF'
              Options.Editing = False
            end
            object cxtbPedidoCLI_BAIRRO: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_BAIRRO'
              Options.Editing = False
            end
            object cxtbPedidoOPV_DESCRICAO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'OPV_DESCRICAO'
              Options.Editing = False
              Width = 170
            end
            object NF_NOTANUMBER: TcxGridDBColumn
              Caption = 'N'#186' N.F.'
              DataBinding.FieldName = 'NF_NOTANUMBER'
              Options.Editing = False
              Width = 88
            end
            object cxtbPedidoPED_PCP_SIT_PRODUCAO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_PCP_SIT_PRODUCAO'
              Options.Editing = False
              Width = 26
            end
            object cxtbPedidoPED_CONTATO_CLIENTE: TcxGridDBColumn
              Caption = 'Contato'
              DataBinding.FieldName = 'PED_CONTATO_CLIENTE'
              Options.Editing = False
              Width = 110
            end
            object cxtbPedidoPED_VLTOTAL_BRUTO: TcxGridDBColumn
              Caption = 'Valor pedido'
              DataBinding.FieldName = 'PED_VLTOTAL_BRUTO'
              Options.Editing = False
              Options.Filtering = False
              Width = 80
            end
            object cxtbPedidoPED_VLFATURADO: TcxGridDBColumn
              Caption = 'Vl Faturado'
              DataBinding.FieldName = 'PED_VLFATURADO'
              Options.Editing = False
              Options.Filtering = False
              Width = 68
            end
            object cxtbPedidoPED_DTSAIDA: TcxGridDBColumn
              DataBinding.FieldName = 'PED_DTSAIDA'
              Options.Editing = False
              Width = 59
            end
            object cxtbPedidoREP_CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo Vendedor'
              DataBinding.FieldName = 'REP_CODIGO'
              Visible = False
              Options.Editing = False
              Width = 33
            end
            object cxtbPedidoREP_NOME: TcxGridDBColumn
              DataBinding.FieldName = 'REP_NOME'
              Options.Editing = False
              Width = 173
            end
            object cxtbPedidoCLI_FANTASIA: TcxGridDBColumn
              Caption = 'Fantasia'
              DataBinding.FieldName = 'CLI_FANTASIA'
              Options.Editing = False
              Width = 189
            end
            object cxtbPedidoCLI_CGC: TcxGridDBColumn
              Caption = 'CNPJ'
              DataBinding.FieldName = 'CLI_CGC'
              Options.Editing = False
              Width = 104
            end
            object cxtbPedidoCLI_FONE: TcxGridDBColumn
              DataBinding.FieldName = 'CLI_FONE'
              Options.Editing = False
            end
            object cxtbPedidoPED_SITUACAO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_SITUACAO'
              Options.Editing = False
              Width = 81
            end
            object cxtbPedidoPED_CODIGO_ORCAMENTO: TcxGridDBColumn
              Caption = 'Or'#231'amento'
              DataBinding.FieldName = 'PED_CODIGO_ORCAMENTO'
              Options.Editing = False
              Width = 140
            end
            object cxtbPedidoPED_OBSNOTA: TcxGridDBColumn
              DataBinding.FieldName = 'PED_OBSNOTA'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_DTLIM_ATD: TcxGridDBColumn
              DataBinding.FieldName = 'PED_DTLIM_ATD'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_DTEMBARQUE: TcxGridDBColumn
              Caption = 'Dt embarque'
              DataBinding.FieldName = 'PED_DTEMBARQUE'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_REGISTRO'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoPMT_MOTIVO: TcxGridDBColumn
              DataBinding.FieldName = 'PMT_MOTIVO'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_MOTIVO_CANCELAMENTO: TcxGridDBColumn
              Caption = 'Motivo cancelamento'
              DataBinding.FieldName = 'PED_MOTIVO_CANCELAMENTO'
              Options.Editing = False
            end
            object cxtbPedidoPED_VLTOTAL_IPI: TcxGridDBColumn
              Caption = 'Valor IPI'
              DataBinding.FieldName = 'PED_VLTOTAL_IPI'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_VLFRETE: TcxGridDBColumn
              Caption = 'Frete'
              DataBinding.FieldName = 'PED_VLFRETE'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_VLSEGURO: TcxGridDBColumn
              Caption = 'Seguro'
              DataBinding.FieldName = 'PED_VLSEGURO'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_DESP_ACES: TcxGridDBColumn
              Caption = 'Despesas Acess'#243'rias'
              DataBinding.FieldName = 'PED_DESP_ACES'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_DESP_IMPOR: TcxGridDBColumn
              Caption = 'Desp importa'#231#227'o'
              DataBinding.FieldName = 'PED_DESP_IMPOR'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_VALOR_ST: TcxGridDBColumn
              Caption = 'ST'
              DataBinding.FieldName = 'PED_VALOR_ST'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_VLTOTAL_LIQ: TcxGridDBColumn
              Caption = 'Valor liquido'
              DataBinding.FieldName = 'PED_VLTOTAL_LIQ'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoOPV_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'OPV_CODIGO'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoPCL_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'PCL_CODIGO'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidocli_codigo: TcxGridDBColumn
              DataBinding.FieldName = 'cli_codigo'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoTRP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'TRP_CODIGO'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoope_codigo: TcxGridDBColumn
              DataBinding.FieldName = 'ope_codigo'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoPED_FRETE: TcxGridDBColumn
              DataBinding.FieldName = 'PED_FRETE'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoPED_ORS_FONE: TcxGridDBColumn
              Caption = 'Fone or'#231'amento'
              DataBinding.FieldName = 'PED_ORS_FONE'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_ORS_FAX: TcxGridDBColumn
              Caption = 'Fax no or'#231'amento'
              DataBinding.FieldName = 'PED_ORS_FAX'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_ORS_EMAIL: TcxGridDBColumn
              DataBinding.FieldName = 'PED_ORS_EMAIL'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_ORS_ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_ORS_ESTADO'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoFPG_REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'FPG_REGISTRO'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_DESCTOVL: TcxGridDBColumn
              Caption = 'Desconto'
              DataBinding.FieldName = 'PED_DESCTOVL'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_EXP_UF: TcxGridDBColumn
              DataBinding.FieldName = 'PED_EXP_UF'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_EXP_LOCAL_EXP: TcxGridDBColumn
              DataBinding.FieldName = 'PED_EXP_LOCAL_EXP'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_EXP_LOCAL_RECINTO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_EXP_LOCAL_RECINTO'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoSitExp: TcxGridDBColumn
              DataBinding.FieldName = 'SitExp'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_PLACA: TcxGridDBColumn
              DataBinding.FieldName = 'PED_PLACA'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoENDERECO_ENTREGA: TcxGridDBColumn
              DataBinding.FieldName = 'ENDERECO_ENTREGA'
              Visible = False
              Options.Editing = False
            end
            object cxtbPedidoPED_NUMERO_PED_CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'PED_NUMERO_PED_CLIENTE'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidoREP_CODIGO_INTERNO: TcxGridDBColumn
              DataBinding.FieldName = 'REP_CODIGO_INTERNO'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object cxtbPedidopend: TcxGridDBColumn
              DataBinding.FieldName = 'pend'
              Visible = False
              Options.Editing = False
            end
          end
          object cxGrid1DBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsPedItens
            DataController.DetailKeyFieldNames = 'ped_codigo;emp_codigo'
            DataController.Filter.TranslateBetween = True
            DataController.KeyFieldNames = 'ped_codigo;emp_codigo'
            DataController.MasterKeyFieldNames = 'ped_codigo;emp_codigo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView2PRD_PRODSERV: TcxGridDBColumn
              Caption = 'P/S'
              DataBinding.FieldName = 'PRD_PRODSERV'
              Width = 29
            end
            object cxGrid1DBTableView2PRD_REFER: TcxGridDBColumn
              Caption = 'Refer'#234'ncia'
              DataBinding.FieldName = 'PRD_REFER'
            end
            object cxGrid1DBTableView2PRF_PRDDESCRI: TcxGridDBColumn
              Caption = 'Descri'#231#227'o de produtos'
              DataBinding.FieldName = 'PRF_PRDDESCRI'
            end
            object cxGrid1DBTableView2PRF_PRECO: TcxGridDBColumn
              Caption = 'Pre'#231'o unit'
              DataBinding.FieldName = 'PRF_PRECO'
            end
            object cxGrid1DBTableView2PRF_QTDE: TcxGridDBColumn
              Caption = 'Qtde'
              DataBinding.FieldName = 'PRF_QTDE'
            end
            object cxGrid1DBTableView2PRF_QTDEFAT: TcxGridDBColumn
              Caption = 'Qtde fat.'
              DataBinding.FieldName = 'PRF_QTDEFAT'
            end
            object cxGrid1DBTableView2PRF_QTDEPEND: TcxGridDBColumn
              Caption = 'Falta'
              DataBinding.FieldName = 'PRF_QTDEPEND'
            end
            object cxGrid1DBTableView2PRF_SITUACAO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_SITUACAO'
              Visible = False
            end
            object cxGrid1DBTableView2CC_SITUACAO: TcxGridDBColumn
              DataBinding.FieldName = 'CC_SITUACAO'
              Visible = False
            end
            object cxGrid1DBTableView2CC_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CC_TOTAL'
              Visible = False
            end
            object cxGrid1DBTableView2prd_codigo: TcxGridDBColumn
              DataBinding.FieldName = 'prd_codigo'
              Visible = False
            end
            object cxGrid1DBTableView2PRDCO_CODIGO_ORIGINAL: TcxGridDBColumn
              DataBinding.FieldName = 'PRDCO_CODIGO_ORIGINAL'
              Visible = False
            end
            object cxGrid1DBTableView2AMX_CODIGO_DESTINO: TcxGridDBColumn
              DataBinding.FieldName = 'AMX_CODIGO_DESTINO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_COMPL_DESCRI: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_COMPL_DESCRI'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_TABPRECO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_TABPRECO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_PRECO_BRUTO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_PRECO_BRUTO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_CUSTO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_CUSTO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_MARGEM_PRODUTO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_MARGEM_PRODUTO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_ACRESCIMO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_ACRESCIMO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_ITEMCOMIS: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_ITEMCOMIS'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_IPIALIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_IPIALIQ'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_VALOR_ST: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_VALOR_ST'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_ICMSALIQ: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_ICMSALIQ'
              Visible = False
            end
            object cxGrid1DBTableView2PRDL_REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'PRDL_REGISTRO'
              Visible = False
            end
            object cxGrid1DBTableView2PRG_REGISTRO: TcxGridDBColumn
              DataBinding.FieldName = 'PRG_REGISTRO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_REGISTRO_VINCULADO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_REGISTRO_VINCULADO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_VALOR_ICMS: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_VALOR_ICMS'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_IDESCTO1: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_IDESCTO1'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_IDESCTO2: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_IDESCTO2'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_PRODUTO_AGREGADO: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_PRODUTO_AGREGADO'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_PRAZO_DIAS: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_PRAZO_DIAS'
              Visible = False
            end
            object cxGrid1DBTableView2PRF_PRODUTO_SEMVALOR: TcxGridDBColumn
              DataBinding.FieldName = 'PRF_PRODUTO_SEMVALOR'
              Visible = False
            end
          end
          object cxLevelPedidos: TcxGridLevel
            GridView = cxtbPedido
            object cxlevel_Itens: TcxGridLevel
              GridView = cxGrid1DBTableView2
              OnGetGridView = cxlevel_ItensGetGridView
            end
          end
        end
        object GbMotivoCancela: TGroupBox
          Left = 0
          Top = 374
          Width = 1094
          Height = 47
          Align = alBottom
          Caption = 'Motivo Cancelamento'
          TabOrder = 2
          ExplicitTop = 371
          ExplicitWidth = 1082
          object LblMotivoCancelamento: TLabel
            Left = 13
            Top = 11
            Width = 941
            Height = 26
            AutoSize = False
            Caption = 
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa'#13#10'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' +
              'aaaaaaaaaaaaaaaaaaaaaaa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 333
          Width = 1094
          Height = 41
          Align = alBottom
          TabOrder = 3
          ExplicitTop = 330
          ExplicitWidth = 1082
          object pfinalizado: TPanel
            Left = 14
            Top = 10
            Width = 93
            Height = 25
            Alignment = taLeftJustify
            BevelOuter = bvSpace
            BorderWidth = 3
            Caption = 'N'#227'o faturado'
            TabOrder = 0
            DesignSize = (
              93
              25)
            object Image1: TImage
              Left = 69
              Top = 4
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Picture.Data = {
                07544269746D6170AA040000424DAA0400000000000036000000280000001400
                000013000000010018000000000074040000C40E0000C40E0000000000000000
                0000FFFFFFD8D8D89A9A9A727272727272727272727272727272727272727272
                7272727272727272727272727272727272727272729A9A9AD8D8D8FFFFFFD8D8
                D80A0A0A00000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000A0A0AD8D8D8969696000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000092929277777704040407070708
                08080909090A0A0A0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A
                0909090808080606060404040202027272727C7C7C1616161818181919191A1A
                1A1B1B1B1B1B1B1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1A1A1A19191919
                19191717171515151414147575758686862626262828282929292A2A2A2C2C2C
                2C2C2C2D2D2D2D2D2D2E2E2E2D2D2D2D2D2D2C2C2C2B2B2B2A2A2A2929292727
                272525252323237B7B7B8B8B8B3434343737373939393A3A3A3C3C3C3D3D3D3E
                3E3E3E3E3E3E3E3E3E3E3E3E3E3E3D3D3D3C3C3C3A3A3A383838363636343434
                3232328080809090904242424545454848484A4A4A4C4C4C4D4D4D4E4E4E4F4F
                4F4F4F4F4F4F4F4E4E4E4D4D4D4C4C4C4A4A4A48484846464643434340404083
                83839595954E4E4E5151515555555858585B5B5B5D5D5D5F5F5F606060616161
                6060605F5F5F5E5E5E5C5C5C5959595656565353534F4F4F4B4B4B8585859898
                985555555A5A5A5E5E5E6262626666666A6A6A6D6D6D7070707171717171716F
                6F6F6C6C6C6868686464646161615C5C5C585858535353888888989898565656
                5B5B5B5F5F5F6464646868686C6C6C7171717575757777777777777474747070
                706C6C6C6767676363635E5E5E5A5A5A55555589898996969650505054545458
                58585B5B5B5F5F5F616161646464656565666666666666656565646464626262
                5F5F5F5B5B5B5858585454545050508787879191914545454848484B4B4B4E4E
                4E5050505252525454545555555555555555555555555454545353535151514E
                4E4E4C4C4C4949494646468585858C8C8C3838383A3A3A3D3D3D3F3F3F414141
                4242424343434444444545454545454444444444444343434141414040403E3E
                3E3B3B3B3939398181818686862929292B2B2B2D2D2D2F2F2F30303032323232
                32323333333333333333333333333333333232323131313030302E2E2E2D2D2D
                2B2B2B7D7D7D7F7F7F1919191B1B1B1D1D1D1E1E1E2020202121212121212222
                222222222222222222222222222121212121211F1F1F1E1E1E1D1D1D1B1B1B77
                77779999990909090B0B0B0D0D0D0E0E0E0F0F0F101010111111111111111111
                1212121111111111111111111010100F0F0F0E0E0E0D0D0D0A0A0A949494DBDB
                DB0D0D0D00000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000D0D0DDBDBDBFFFFFFDBDBDB
                9B9B9B7272727272727272727272727272727272727272727272727272727272
                727272727272727272727272729B9B9BDBDBDBFFFFFF}
              ExplicitLeft = 62
            end
          end
          object pfaturado: TPanel
            Left = 202
            Top = 10
            Width = 110
            Height = 25
            Alignment = taLeftJustify
            BevelOuter = bvSpace
            BorderWidth = 3
            Caption = 'Faturado parcial'
            TabOrder = 1
            DesignSize = (
              110
              25)
            object Image2: TImage
              Left = 86
              Top = 4
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Picture.Data = {
                07544269746D6170AA040000424DAA0400000000000036000000280000001400
                000013000000010018000000000074040000C40E0000C40E0000000000000000
                0000FFFFFFD8EBD89ACD9A72B97272B97272B97272B97272B97272B97272B972
                72B97272B97272B97272B97272B97272B97272B9729ACD9AD8EBD8FFFFFFD8EC
                D80A850A00800000800000800000800000800000800000800000800000800000
                80000080000080000080000080000080000080000A850AD8ECD896CB96008000
                0080000080000080000080000080000080000080000080000080000080000080
                0000800000800000800000800000800000800092C99277BB7704820407840708
                84080985090A850A0B850B0B860B0B860B0B860B0B860B0B850B0A850A0A850A
                09840908840806830604820402810272B9727CBE7C168B16188C18198C191A8D
                1A1B8D1B1B8E1B1C8E1C1C8E1C1C8E1C1C8E1C1C8E1C1B8E1B1A8D1A198D1919
                8C19178B17158A15148A1475BA7586C2862693262894282995292A952A2C962C
                2C962C2D962D2D962D2E972E2D962D2D962D2C962C2B952B2A952A2994292794
                272593252392237BBD7B8BC58B349A34379B37399C393A9D3A3C9E3C3D9E3D3E
                9F3E3E9F3E3E9F3E3E9F3E3E9F3E3D9E3D3C9E3C3A9D3A389C38369B36349A34
                32993280C08090C79042A14245A24548A4484AA54A4CA64C4DA74D4EA74E4FA8
                4F4FA84F4FA84F4EA74E4DA74D4CA64C4AA54A48A44846A34643A14340A04083
                C18395CA954EA74E51A95155AA5558AC585BAD5B5DAE5D5FAF5F60B06061B061
                60B0605FAF5F5EAF5E5CAE5C59AC5956AB5653A9534FA84F4BA64B85C28598CC
                9855AA555AAD5A5EAF5E62B16266B3666AB56A6DB66D70B87071B87171B8716F
                B76F6CB66C68B46864B26461B0615CAE5C58AC5853AA5388C48898CC9856AB56
                5BAD5B5FAF5F64B26468B4686CB66C71B87175BA7577BB7777BB7774BA7470B8
                706CB66C67B46763B1635EAF5E5AAD5A55AA5589C48996CA9650A85054AA5458
                AC585BAD5B5FAF5F61B06164B26465B36566B36666B36665B36564B26462B162
                5FAF5F5BAD5B58AC5854AA5450A85087C38791C89145A24548A4484BA54B4EA7
                4E50A85052A95254AA5455AA5555AA5555AA5555AA5554AA5453A95351A8514E
                A74E4CA64C49A44946A34685C3858CC58C389C383A9D3A3D9E3D3F9F3F41A041
                42A14243A14344A24445A24545A24544A24444A24443A14341A04140A0403E9F
                3E3B9E3B399C3981C08186C2862995292B952B2D962D2F972F30983032993232
                9932339933339A33339A33339A333399333299323198313098302E972E2D962D
                2B952B7DBF7D7FBF7F198D191B8E1B1D8E1D1E8F1E2090202190212191212291
                222291222291222291222291222191212190211F901F1E8F1E1D8E1D1B8E1B77
                BC7799CD990985090B860B0D860D0E870E0F880F108810118811118911118911
                1289121189111189111188111088100F880F0E870E0D860D0A850A94C994DBED
                DB0D860D00800000800000800000800000800000800000800000800000800000
                80000080000080000080000080000080000080000D860DDBEDDBFFFFFFDBEDDB
                9BCD9B72B97272B97272B97272B97272B97272B97272B97272B97272B97272B9
                7272B97272B97272B97272B9729BCD9BDBEDDBFFFFFF}
              ExplicitLeft = 62
            end
          end
          object pdespachado: TPanel
            Left = 110
            Top = 10
            Width = 91
            Height = 25
            Alignment = taLeftJustify
            BevelOuter = bvSpace
            BorderWidth = 3
            Caption = 'Faturado'
            TabOrder = 2
            DesignSize = (
              91
              25)
            object Image3: TImage
              Left = 67
              Top = 4
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Picture.Data = {
                07544269746D6170AA040000424DAA0400000000000036000000280000001400
                000013000000010018000000000074040000C40E0000C40E0000000000000000
                0000FFFFFFF2E2D8DDB59AD09772D09872D09872D09872D09872D09872D09872
                D09872D09872D09872D09872D09872D09872D09772DDB59AF2E2D8FFFFFFF2E3
                D8AD4B0AAA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA
                4400AA4400AA4400AA4400AA4400AA4400AA4400AD4B0AF2E2D8DCB296AA4400
                AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA44
                00AA4400AA4400AA4400AA4400AA4400AA4400DAAF92D29B77AB4704AC4907AD
                4A08AD4B09AD4C0AAE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAD4C0AAD4B0A
                AD4A09AD4A08AC4906AB4704AB4502D09872D49F7CB15416B25518B25619B357
                1AB3581BB3581BB3581CB3591CB3591CB3591CB3581CB3581BB3571AB25719B2
                5619B25517B15315B15214D19A75D7A686B76026B76128B86229B8632AB9642C
                B9642CB9652DB9652DB9652EB9652DB9652DB9642CB8642BB8632AB86229B761
                27B65F25B65E23D39E7BD8A98BBB6A34BC6C37BD6E39BD6F3ABE703CBE713DBF
                713EBF723EBF723EBF723EBF713EBE713DBE703CBD6F3ABD6D38BC6C36BB6A34
                BB6932D5A280DAAD90C07542C17745C27848C37A4AC37C4CC47D4DC47E4EC47E
                4FC47E4FC47E4FC47E4EC47D4DC37C4CC37A4AC27948C17746C07543BF7340D6
                A483DCB195C47D4EC58051C68255C78458C8875BC9885DCA895FCA8A60CA8B61
                CA8A60CA8A5FC9895EC9875CC88559C78356C68153C47E4FC37B4BD6A685DDB3
                98C68355C8865AC9895ECB8C62CC8F66CD926ACE946DCF9670D09771D09771CF
                966FCE936CCD9168CB8E64CA8B61C9885CC78458C68153D7A888DDB398C78356
                C8875BCA8A5FCB8D64CD9068CE936CD09771D19A75D29B77D29B77D19974CF96
                70CE936CCC9067CB8D63C9895EC8865AC68355D8A989DCB196C57F50C68154C7
                8458C8875BCA895FCA8B61CB8D64CC8E65CC8F66CC8F66CC8E65CB8D64CB8C62
                CA895FC8875BC78458C68154C57F50D7A787DBAE91C17745C27948C37B4BC47D
                4EC57F50C58052C68154C68255C68355C68355C68255C68154C68153C57F51C4
                7E4EC37C4CC27A49C17746D7A685D9AA8CBD6D38BD6F3ABE713DBF723FC07341
                C07542C07543C17644C17645C17645C17644C17644C07543C07441BF7340BF71
                3EBE6F3BBD6E39D5A381D7A686B86229B8642BB9652DBA662FBA6730BB6832BB
                6932BB6933BB6A33BB6A33BB6A33BB6933BB6932BA6831BA6730B9662EB9652D
                B8632BD4A07DD4A17FB25719B3581BB4591DB45A1EB55B20B55C21B55C21B55D
                22B55D22B55D22B55D22B55D22B55C21B55C21B45B1FB45A1EB4591DB3581BD2
                9C77DEB599AD4B09AE4C0BAE4D0DAF4E0EAF4F0FAF5010B05011B05111B05111
                B05112B05111B05111B05011AF5010AF4F0FAF4E0EAE4D0DAD4B0ADBB194F3E5
                DBAE4E0DAA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA
                4400AA4400AA4400AA4400AA4400AA4400AA4400AE4E0DF3E4DBFFFFFFF3E5DB
                DEB69BD09772D09872D09872D09872D09872D09872D09872D09872D09872D098
                72D09872D09872D09872D09772DEB69BF3E5DBFFFFFF}
              ExplicitLeft = 62
            end
          end
          object pimpedido: TPanel
            Left = 318
            Top = 10
            Width = 62
            Height = 25
            Alignment = taLeftJustify
            BevelOuter = bvSpace
            BorderWidth = 3
            Caption = 'Falta'
            TabOrder = 3
            DesignSize = (
              62
              25)
            object Image4: TImage
              Left = 38
              Top = 4
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Picture.Data = {
                07544269746D6170AA040000424DAA0400000000000036000000280000001400
                000013000000010018000000000074040000C40E0000C40E0000000000000000
                0000FFFFFFD8D8F29A9ADD7272D07272D07272D07272D07272D07272D07272D0
                7272D07272D07272D07272D07272D07272D07272D09A9ADDD8D8F2FFFFFFD8D8
                F20A0AAD0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
                00AA0000AA0000AA0000AA0000AA0000AA0000AA0A0AADD8D8F29696DC0000AA
                0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000
                AA0000AA0000AA0000AA0000AA0000AA0000AA9292DA7777D20404AB0707AC08
                08AD0909AD0A0AAD0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0A0AAD0A0AAD
                0909AD0808AD0606AC0404AB0202AB7272D07C7CD41616B11818B21919B21A1A
                B31B1BB31B1BB31C1CB31C1CB31C1CB31C1CB31C1CB31B1BB31A1AB31919B219
                19B21717B21515B11414B17575D18686D72626B72828B72929B82A2AB82C2CB9
                2C2CB92D2DB92D2DB92E2EB92D2DB92D2DB92C2CB92B2BB82A2AB82929B82727
                B72525B62323B67B7BD38B8BD83434BB3737BC3939BD3A3ABD3C3CBE3D3DBE3E
                3EBF3E3EBF3E3EBF3E3EBF3E3EBF3D3DBE3C3CBE3A3ABD3838BD3636BC3434BB
                3232BB8080D59090DA4242C04545C14848C24A4AC34C4CC34D4DC44E4EC44F4F
                C44F4FC44F4FC44E4EC44D4DC44C4CC34A4AC34848C24646C14343C04040BF83
                83D69595DC4E4EC45151C55555C65858C75B5BC85D5DC95F5FCA6060CA6161CA
                6060CA5F5FCA5E5EC95C5CC95959C85656C75353C64F4FC44B4BC38585D69898
                DD5555C65A5AC85E5EC96262CB6666CC6A6ACD6D6DCE7070CF7171D07171D06F
                6FCF6C6CCE6868CD6464CB6161CA5C5CC95858C75353C68888D79898DD5656C7
                5B5BC85F5FCA6464CB6868CD6C6CCE7171D07575D17777D27777D27474D17070
                CF6C6CCE6767CC6363CB5E5EC95A5AC85555C68989D89696DC5050C55454C658
                58C75B5BC85F5FCA6161CA6464CB6565CC6666CC6666CC6565CC6464CB6262CB
                5F5FCA5B5BC85858C75454C65050C58787D79191DB4545C14848C24B4BC34E4E
                C45050C55252C55454C65555C65555C65555C65555C65454C65353C65151C54E
                4EC44C4CC34949C24646C18585D78C8CD93838BD3A3ABD3D3DBE3F3FBF4141C0
                4242C04343C04444C14545C14545C14444C14444C14343C04141C04040BF3E3E
                BF3B3BBE3939BD8181D58686D72929B82B2BB82D2DB92F2FBA3030BA3232BB32
                32BB3333BB3333BB3333BB3333BB3333BB3232BB3131BA3030BA2E2EB92D2DB9
                2B2BB87D7DD47F7FD41919B21B1BB31D1DB41E1EB42020B52121B52121B52222
                B52222B52222B52222B52222B52121B52121B51F1FB41E1EB41D1DB41B1BB377
                77D29999DE0909AD0B0BAE0D0DAE0E0EAF0F0FAF1010AF1111B01111B01111B0
                1212B01111B01111B01111B01010AF0F0FAF0E0EAF0D0DAE0A0AAD9494DBDBDB
                F30D0DAE0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
                00AA0000AA0000AA0000AA0000AA0000AA0000AA0D0DAEDBDBF3FFFFFFDBDBF3
                9B9BDE7272D07272D07272D07272D07272D07272D07272D07272D07272D07272
                D07272D07272D07272D07272D09B9BDEDBDBF3FFFFFF}
              ExplicitLeft = 62
            end
          end
        end
        object GbCliente: TGroupBox
          Left = 613
          Top = 64
          Width = 400
          Height = 107
          Caption = 'Informe a raz'#227'o social do cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
            MaxLength = 15
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
            OnButtonClick = cbPesqButtonClick
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
            LookupSource = SqlCdsClie
            LookupKeyField = 'CLI_CODIGO'
            ShowButton = True
            LookupTableShare = 'CLIENTES'
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
            LookupSource = SqlCdsVendedor
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
        object gbCCusto: TGroupBox
          Left = 613
          Top = 177
          Width = 400
          Height = 44
          Caption = 'Informe o Centro de Custo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
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
            OnExit = EdProjetoObraCodigoExit
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
            LookupSource = qCtoCusto
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
      end
    end
    object tsitem: TTabSheet
      Caption = 'Itens'
      ImageIndex = 1
      OnShow = tsitemShow
      ExplicitWidth = 1082
      ExplicitHeight = 418
      object GroupBox2: TGroupBox
        Left = 0
        Top = 30
        Width = 1094
        Height = 391
        Align = alClient
        Caption = 'P = Produto  S = Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 1082
        ExplicitHeight = 388
        object DBGrid1: TDBGrid
          Left = 2
          Top = 16
          Width = 1090
          Height = 373
          Align = alClient
          Color = 16776176
          DataSource = DsPedItens
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_PRODSERV'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Caption = 'P/S'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_PRDDESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o dos Produtos'
              Width = 404
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_PRECO'
              Title.Caption = 'Pre'#231'o Unit.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDEFAT'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Fat.'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDEPEND'
              Title.Caption = 'Falta'
              Visible = True
            end>
        end
      end
      object ppedido: TPanel
        Left = 0
        Top = 0
        Width = 1094
        Height = 30
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1082
        object Label1: TLabel
          Left = 10
          Top = 8
          Width = 44
          Height = 14
          Caption = 'Pedido n:'
        end
        object DBText1: TDBText
          Left = 64
          Top = 8
          Width = 65
          Height = 17
          DataField = 'PED_CODIGO'
          DataSource = DsPedidos
        end
        object Label9: TLabel
          Left = 152
          Top = 8
          Width = 41
          Height = 14
          Caption = 'Cliente : '
        end
        object DBText2: TDBText
          Left = 200
          Top = 8
          Width = 40
          Height = 14
          AutoSize = True
          DataField = 'CLI_RAZAO'
          DataSource = DsPedidos
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1432
    Top = 432
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1472
    Top = 448
  end
  inherited DBConn: TSQLConnection
    Left = 1440
    Top = 185
  end
  inherited qAux: TSQLQuery
    Left = 778
    Top = 125
  end
  inherited qAux2: TSQLQuery
    Left = 818
    Top = 116
  end
  inherited qAux3: TSQLQuery
    Left = 858
    Top = 116
  end
  object DsPedidos: TDataSource
    DataSet = SqlCdsPesq
    Left = 432
    Top = 440
  end
  object SqlCdsPesq: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspSqlCdsPesq'
    AfterScroll = SqlCdsPesqAfterScroll
    Left = 432
    Top = 384
    object SqlCdsPesqEMP_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Empresa'
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqPED_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Pedido'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField
      DisplayLabel = 'Entrada'
      FieldName = 'PED_DTENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SqlCdsPesqNF_EMISSAO: TDateField
      DisplayLabel = 'Data Fatura'
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsPesqCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZAO'
      Size = 49
    end
    object SqlCdsPesqCLI_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsPesqCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsPesqOPV_DESCRICAO: TStringField
      DisplayLabel = 'Tipo de Pedido'
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsPesqNF_NOTANUMBER: TStringField
      DisplayLabel = 'NF N'#186
      FieldName = 'NF_NOTANUMBER'
      Size = 7
    end
    object SqlCdsPesqPED_PCP_SIT_PRODUCAO: TStringField
      DisplayLabel = 'PRD'
      FieldName = 'PED_PCP_SIT_PRODUCAO'
      Size = 1
    end
    object SqlCdsPesqPED_CONTATO_CLIENTE: TStringField
      DisplayLabel = 'Contato Cliente'
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object SqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField
      DisplayLabel = 'Valor Pedido'
      FieldName = 'PED_VLTOTAL_BRUTO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 18
    end
    object SqlCdsPesqPED_VLFATURADO: TFMTBCDField
      DisplayLabel = 'Valor Faturado'
      FieldName = 'PED_VLFATURADO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 18
    end
    object SqlCdsPesqPED_DTSAIDA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'PED_DTSAIDA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SqlCdsPesqREP_NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsPesqCLI_FANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object SqlCdsPesqCLI_CGC: TStringField
      DisplayLabel = 'CNPJ Cliente'
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object SqlCdsPesqCLI_FONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CLI_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object SqlCdsPesqPED_SITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'PED_SITUACAO'
      OnGetText = SqlCdsPesqPED_SITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object SqlCdsPesqPED_CODIGO_ORCAMENTO: TStringField
      DisplayLabel = 'C'#243'digo do Or'#231'amento'
      FieldName = 'PED_CODIGO_ORCAMENTO'
      Size = 7
    end
    object SqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField
      DisplayLabel = 'N'#186' do Ped. do Cliente'
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
    object SqlCdsPesqPED_OBSNOTA: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object SqlCdsPesqPED_DTLIM_ATD: TSQLTimeStampField
      DisplayLabel = 'Data Limite'
      FieldName = 'PED_DTLIM_ATD'
    end
    object SqlCdsPesqPED_DTEMBARQUE: TSQLTimeStampField
      DisplayLabel = 'Data Embarque'
      FieldName = 'PED_DTEMBARQUE'
    end
    object SqlCdsPesqENDERECO_ENTREGA: TIntegerField
      DisplayLabel = 'Endere'#231'o Entrega'
      FieldName = 'ENDERECO_ENTREGA'
    end
    object SqlCdsPesqPED_REGISTRO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object SqlCdsPesqPMT_MOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'PMT_MOTIVO'
      Size = 200
    end
    object SqlCdsPesqPED_MOTIVO_CANCELAMENTO: TStringField
      DisplayLabel = 'Motivo Cancelamento'
      FieldName = 'PED_MOTIVO_CANCELAMENTO'
      Size = 200
    end
    object SqlCdsPesqPED_VLTOTAL_IPI: TFMTBCDField
      DisplayLabel = 'Vl. Total IPI'
      FieldName = 'PED_VLTOTAL_IPI'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_VLFRETE: TFMTBCDField
      DisplayLabel = 'Vl. Frete'
      FieldName = 'PED_VLFRETE'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_VLSEGURO: TFMTBCDField
      DisplayLabel = 'Vl. Seguro'
      FieldName = 'PED_VLSEGURO'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_DESP_ACES: TFMTBCDField
      DisplayLabel = 'Vl. Desp. Acess'#243'rias'
      FieldName = 'PED_DESP_ACES'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_DESP_IMPOR: TFMTBCDField
      DisplayLabel = 'Vl. Desp. Importa'#231#227'o'
      FieldName = 'PED_DESP_IMPOR'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_VALOR_ST: TFMTBCDField
      DisplayLabel = 'Vl. Subst. Tribut'#225'ria'
      FieldName = 'PED_VALOR_ST'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField
      DisplayLabel = 'Vl. Total Liq.'
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqOPV_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Pedido'
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPesqPCL_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Prazo de Pgto.'
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsPesqTRP_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Transp.'
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqPED_FRETE: TStringField
      DisplayLabel = 'Frete'
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object SqlCdsPesqPED_ORS_FONE: TStringField
      DisplayLabel = 'Fone Or'#231'amento'
      FieldName = 'PED_ORS_FONE'
      Size = 12
    end
    object SqlCdsPesqPED_ORS_FAX: TStringField
      DisplayLabel = 'Fax Or'#231'amento'
      FieldName = 'PED_ORS_FAX'
      Size = 12
    end
    object SqlCdsPesqPED_ORS_EMAIL: TStringField
      DisplayLabel = 'E-mail Or'#231'amento'
      FieldName = 'PED_ORS_EMAIL'
      Size = 150
    end
    object SqlCdsPesqPED_ORS_ESTADO: TStringField
      DisplayLabel = 'Estado Or'#231'amento'
      FieldName = 'PED_ORS_ESTADO'
      Size = 2
    end
    object SqlCdsPesqFPG_REGISTRO: TIntegerField
      DisplayLabel = 'C'#243'd. Forma Pgto.'
      FieldName = 'FPG_REGISTRO'
    end
    object SqlCdsPesqPED_DESCTOVL: TFMTBCDField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'PED_DESCTOVL'
      Precision = 18
      Size = 5
    end
    object SqlCdsPesqPED_EXP_UF: TStringField
      DisplayLabel = 'UF Exp.'
      FieldName = 'PED_EXP_UF'
      Size = 2
    end
    object SqlCdsPesqPED_EXP_LOCAL_EXP: TStringField
      DisplayLabel = 'Local Exp.'
      FieldName = 'PED_EXP_LOCAL_EXP'
      Size = 60
    end
    object SqlCdsPesqPED_EXP_LOCAL_RECINTO: TStringField
      DisplayLabel = 'Recinto Exp.'
      FieldName = 'PED_EXP_LOCAL_RECINTO'
      Size = 60
    end
    object SqlCdsPesqPED_PLACA: TStringField
      DisplayLabel = 'Placas'
      FieldName = 'PED_PLACA'
      Size = 7
    end
    object SqlCdsPesqREP_CODIGO_INTERNO: TStringField
      DisplayLabel = 'C'#243'd Int. Rep.'
      FieldName = 'REP_CODIGO_INTERNO'
      Size = 3
    end
    object SqlCdsPesqcli_codigo: TStringField
      FieldName = 'cli_codigo'
      Size = 5
    end
    object SqlCdsPesqREP_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Representante'
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsPesqSitExp: TStringField
      FieldName = 'SitExp'
      Size = 3
    end
    object SqlCdsPesqope_codigo: TIntegerField
      DisplayLabel = 'C'#243'd Oper. Fiscal'
      FieldName = 'ope_codigo'
    end
    object SqlCdsPesqpend: TFMTBCDField
      DisplayLabel = 'Pend.'
      FieldName = 'pend'
      Precision = 15
    end
    object SqlCdsPesqselecionado: TBooleanField
      DisplayLabel = 'Selecionado'
      FieldKind = fkInternalCalc
      FieldName = 'selecionado'
      OnGetText = SqlCdsPesqselecionadoGetText
    end
  end
  object SqlCdsItens: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspSqlCdsItens'
    Left = 304
    Top = 336
    object SqlCdsItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object SqlCdsItensPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsItensPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsItensCC_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_SITUACAO'
      Size = 12
      Calculated = True
    end
    object SqlCdsItensPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SqlCdsItensCC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Calculated = True
    end
    object SqlCdsItensPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlCdsItensPRF_PRECO: TFMTBCDField
      DisplayLabel = 'PRF_PRECO_BRUTO'
      FieldName = 'PRF_PRECO'
      DisplayFormat = '###,###,##0.00###'
      Precision = 15
      Size = 5
    end
    object SqlCdsItensprd_codigo: TStringField
      FieldName = 'prd_codigo'
      Size = 6
    end
    object SqlCdsItensPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object SqlCdsItensAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlCdsItensPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Size = 500
    end
    object SqlCdsItensPRF_TABPRECO: TStringField
      FieldName = 'PRF_TABPRECO'
      Size = 2
    end
    object SqlCdsItensPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_CUSTO: TFMTBCDField
      FieldName = 'PRF_CUSTO'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'PRF_MARGEM_PRODUTO'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_ACRESCIMO: TFMTBCDField
      FieldName = 'PRF_ACRESCIMO'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_VALOR_ST: TFMTBCDField
      FieldName = 'PRF_VALOR_ST'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object SqlCdsItensPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object SqlCdsItensPRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
    end
    object SqlCdsItensPRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Precision = 18
      Size = 5
    end
    object SqlCdsItensPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
    end
    object SqlCdsItensPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
    end
    object SqlCdsItensPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlCdsItensPRF_PRAZO_DIAS: TIntegerField
      FieldName = 'PRF_PRAZO_DIAS'
    end
    object SqlCdsItensPRF_QTDEPEND: TFMTBCDField
      FieldName = 'PRF_QTDEPEND'
      Precision = 15
    end
    object SqlCdsItensPRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object SqlCdsItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItensemp_codigo: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensPRF_B2B_PEDIDO_COMPRA: TStringField
      FieldName = 'PRF_B2B_PEDIDO_COMPRA'
      Size = 15
    end
    object SqlCdsItensPRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField
      FieldName = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
    end
    object SqlCdsItensPRF_PRAZO_ENTREGA: TDateField
      FieldName = 'PRF_PRAZO_ENTREGA'
    end
    object SqlCdsItensPRF_SEQUENCIA: TIntegerField
      FieldName = 'PRF_SEQUENCIA'
    end
    object SqlCdsItensPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object SqlCdsItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
  end
  object DsPedItens: TDataSource
    DataSet = SqlCdsItens
    Left = 304
    Top = 392
  end
  object dspSqlCdsPesq: TDataSetProvider
    DataSet = qSqlCdsPesq
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 427
    Top = 326
  end
  object qSqlCdsPesq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT p1.ped_CODIGO, p1.EMP_CODIGO, p1.PED_PCP_SIT_PRODUCAO,P1.' +
        'PED_registro, P1.PED_CONTATO_CLIENTE, P1.PED_DTENTRADA,'
      
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
    Left = 427
    Top = 270
  end
  object dspSqlCdsItens: TDataSetProvider
    DataSet = qSqlCdsItens
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 307
    Top = 270
  end
  object qSqlCdsItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 307
    Top = 214
  end
  object SqlCdsClie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 264
  end
  object SqlCdsTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 376
  end
  object SqlCdsVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 320
  end
  object qTotais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS QUANTIDADE,'
      '       SUM(PED_VLTOTAL_IPI) AS IPI,'
      '       SUM(PED_VLFRETE) AS FRETE,'
      '       SUM(PED_VLSEGURO) AS SEGURO,'
      '       SUM(PED_DESP_ACES) AS DESPSAS'
      'FROM PED0000'
      'where ped_codigo='#39'-0000'#39)
    SQLConnection = DBConn
    Left = 160
    Top = 272
  end
  object dspTotais: TDataSetProvider
    DataSet = qTotais
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 171
    Top = 486
  end
  object cdsTotais: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspTotais'
    ReadOnly = True
    Left = 160
    Top = 320
    object cdsTotaisIPI: TFMTBCDField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsTotaisFRETE: TFMTBCDField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsTotaisSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsTotaisDESPSAS: TFMTBCDField
      FieldName = 'DESPSAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsTotaisPEDIDO: TFMTBCDField
      FieldName = 'PEDIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsTotaisFATURADO: TFMTBCDField
      FieldName = 'FATURADO'
      DisplayFormat = '###,###,##0.00'
      Size = 0
    end
    object cdsTotaisQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
  end
  object dsTotais: TDataSource
    DataSet = cdsTotais
    Left = 232
    Top = 248
  end
  object qCtoCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 440
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 136
    Top = 216
    PixelsPerInch = 96
    object cxGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGreen
    end
    object cxBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxGray: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
    object cxRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object cxPadrao: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 672
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 984
    Top = 115
  end
  object QExport4XLS1: TQExport4XLS
    DataSet = SqlCdsPesq
    About = '(About EMS AdvancedExport)'
    _Version = '4.11.1.1'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$ #,###,##0.00'
    AutoCalcColWidth = True
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    Left = 1052
    Top = 114
  end
end
