inherited frmVendaPerdidas: TfrmVendaPerdidas
  Caption = 'Lista de vendas pendentes'
  ClientHeight = 573
  ClientWidth = 1303
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1054
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 1311
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1303
    ExplicitWidth = 1303
    DesignSize = (
      1303
      41)
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Hint = 'Utilizar estoque para atender o pedido'
      Caption = 'Usar estoque'
      Glyph.Data = {00000000}
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1239
      ExplicitLeft = 1051
    end
    inherited btnImprime: TSpeedButton
      Left = 1082
      ExplicitLeft = 894
    end
    inherited btnExcel: TSpeedButton
      Left = 1160
      ExplicitLeft = 532
    end
  end
  inherited PageControl1: TPageControl
    Width = 1303
    Height = 496
    ExplicitWidth = 1303
    ExplicitHeight = 496
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1295
      ExplicitHeight = 468
      inherited pnControle: TPanel
        Width = 1295
        Height = 97
        ExplicitWidth = 1295
        ExplicitHeight = 97
        inherited pnFiltro: TPanel
          Left = 1198
          Width = 97
          Height = 97
          Align = alRight
          TabOrder = 4
          ExplicitLeft = 1198
          ExplicitWidth = 97
          ExplicitHeight = 97
          inherited pn1: TPanel
            Top = 0
            Width = 94
            Height = 97
            Align = alLeft
            ExplicitTop = 0
            ExplicitWidth = 94
            ExplicitHeight = 97
            inherited btnPesquisa: TSpeedButton
              Left = 3
              ExplicitLeft = 3
            end
            inherited btnLimpar: TSpeedButton
              Left = 3
              ExplicitLeft = 3
            end
          end
        end
        object GbCliente: TGroupBox
          Left = 0
          Top = 0
          Width = 629
          Height = 97
          Caption = 'Selecionar'
          TabOrder = 0
          object Label2: TLabel
            Left = 10
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
            Left = 25
            Top = 21
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
            Left = 18
            Top = 69
            Width = 42
            Height = 13
            Caption = 'Produto:'
          end
          object PesqCliente: TSgDbSearchCombo
            Left = 107
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
            Left = 63
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
            Left = 106
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
            Left = 63
            Top = 42
            Width = 43
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            MaxLength = 5
            TabOrder = 2
            OnExit = edVendedorCodigoExit
            OnKeyDown = edVendedorCodigoKeyDown
          end
          object cbReferencia: TSgDbSearchCombo
            Left = 107
            Top = 65
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
            LookupSource = qAux
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
            Left = 63
            Top = 65
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
        object GroupBox1: TGroupBox
          Left = 635
          Top = 0
          Width = 318
          Height = 49
          Caption = 'Per'#237'odo:'
          TabOrder = 1
          object ldataInicial: TLabel
            Left = 11
            Top = 20
            Width = 30
            Height = 13
            Caption = 'Inicial:'
            FocusControl = DataInicial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lDataFinal: TLabel
            Left = 165
            Top = 20
            Width = 25
            Height = 13
            Caption = 'Final:'
            FocusControl = DataFinal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DataInicial: TJvDateEdit
            Left = 44
            Top = 16
            Width = 108
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageKind = ikDatePicker
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object DataFinal: TJvDateEdit
            Left = 196
            Top = 16
            Width = 111
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageKind = ikDatePicker
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object edNumeroPedido: TLabeledEdit
          Left = 679
          Top = 55
          Width = 121
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Pedido:'
          LabelPosition = lpLeft
          LabelSpacing = 5
          TabOrder = 2
          OnExit = edNumeroPedidoExit
          OnKeyPress = edNumeroPedidoKeyPress
        end
        object chkEstoque: TCheckBox
          Left = 832
          Top = 56
          Width = 97
          Height = 17
          Caption = 'Estoque'
          TabOrder = 3
          OnClick = chkEstoqueClick
        end
      end
      inherited DBGrid: TDBGrid
        Top = 97
        Width = 1295
        Height = 371
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'selecionado'
            ReadOnly = False
            Title.Caption = 'Sel.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVP_DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVP_QUANTIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Falta'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PENDENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Compra'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'Total venda R$'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 213
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRF_PRECO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o'
            Visible = False
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 537
    Width = 1303
    ExplicitTop = 537
    ExplicitWidth = 1303
    DesignSize = (
      1303
      36)
    inherited btnSelect: TSpeedButton
      Left = 1155
      ExplicitLeft = 967
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 592
    Top = 208
  end
  inherited qBusco: TSQLQuery
    Tag = 1
    Left = 284
    Top = 193
    object qBuscoPVP_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qBuscoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qBuscoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qBuscoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object qBuscoREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object qBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object qBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object qBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object qBuscoPVP_DATA: TSQLTimeStampField
      FieldName = 'PVP_DATA'
      EditMask = 'dd/mm/yyyy'
    end
    object qBuscoPVP_QUANTIDADE: TFMTBCDField
      FieldName = 'PVP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qBuscoPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 18
      Size = 5
    end
    object qBuscoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 18
      Size = 5
    end
    object qBuscoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 5
    end
    object qBuscoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qBuscoAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object qBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qBuscoPRF_QTDE_KIT: TLargeintField
      FieldName = 'PRF_QTDE_KIT'
    end
    object qBuscoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object qBuscoprf_registro_vinculado: TIntegerField
      FieldName = 'prf_registro_vinculado'
    end
  end
  inherited dspBusco: TDataSetProvider
    Left = 340
    Top = 185
  end
  inherited cdsBusco: TClientDataSet
    OnCalcFields = cdsBuscoCalcFields
    Top = 193
    object cdsBuscoselecionado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'selecionado'
      OnGetText = cdsBuscoselecionadoGetText
    end
    object cdsBuscoPVP_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsBuscoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsBuscoREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object cdsBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object cdsBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object cdsBuscoPVP_DATA: TSQLTimeStampField
      FieldName = 'PVP_DATA'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsBuscoPVP_QUANTIDADE: TFMTBCDField
      FieldName = 'PVP_QUANTIDADE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscoPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscoTotal: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 2
      Calculated = True
    end
    object cdsBuscoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsBuscoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object cdsBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsBuscoPRF_QTDE_KIT: TLargeintField
      FieldName = 'PRF_QTDE_KIT'
    end
    object cdsBuscoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object cdsBuscoprf_registro_vinculado: TIntegerField
      FieldName = 'prf_registro_vinculado'
    end
  end
  inherited dsBusca: TDataSource
    Left = 404
    Top = 240
  end
  inherited mnuGridPesquisa: TPopupMenu
    object miSelecionartudo: TMenuItem
      Caption = 'Selecionar tudo'
      OnClick = miSelecionartudoClick
    end
    object miDesmarcartudo: TMenuItem
      Caption = 'Desmarcar tudo'
      OnClick = miDesmarcartudoClick
    end
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
    Left = 271
    Top = 356
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
    Left = 207
    Top = 300
  end
end
