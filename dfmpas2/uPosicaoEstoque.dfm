inherited frmPosicaoEstoque: TfrmPosicaoEstoque
  Caption = 'Posi'#231#227'o do Estoque'
  ClientHeight = 590
  ClientWidth = 1202
  WindowState = wsMaximized
  ExplicitWidth = 1218
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1202
    ExplicitWidth = 1202
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1138
      ExplicitLeft = 1025
    end
    inherited btnImprime: TSpeedButton
      Left = 981
      OnClick = btnImprimeClick
      ExplicitLeft = 868
    end
    inherited btnExcel: TSpeedButton
      Left = 1060
      ExplicitLeft = 947
    end
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 975
      Height = 41
      Align = alLeft
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        
          'Posi'#231#227'o do estoque geral com op'#231#227'o de vis'#227'o por demanda de venda' +
          's e vis'#227'o de produ'#231#227'o'
        '')
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited PageControl1: TPageControl
    Width = 1202
    Height = 513
    ExplicitWidth = 1202
    ExplicitHeight = 513
    inherited tsNotas: TTabSheet
      Caption = 'Pedido'
      ExplicitWidth = 1194
      ExplicitHeight = 485
      inherited pnControle: TPanel
        Width = 1194
        Height = 89
        ExplicitWidth = 1194
        ExplicitHeight = 89
        inherited pnFiltro: TPanel
          Width = 1194
          Height = 89
          Align = alClient
          ExplicitWidth = 1194
          ExplicitHeight = 89
          inherited pn1: TPanel
            Top = 0
            Width = 1194
            Height = 89
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1194
            ExplicitHeight = 89
            inherited btnPesquisa: TSpeedButton
              Left = 1107
              Anchors = [akTop, akRight]
              ExplicitLeft = 994
            end
            inherited btnLimpar: TSpeedButton
              Left = 1107
              Anchors = [akTop, akRight]
              ExplicitLeft = 994
            end
            object Label3: TLabel
              Left = 341
              Top = 9
              Width = 48
              Height = 14
              Caption = 'Produto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 16
              Top = 60
              Width = 32
              Height = 14
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 345
              Top = 41
              Width = 20
              Height = 14
              Caption = 'At'#233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 441
              Top = 41
              Width = 98
              Height = 14
              Caption = 'dias para Entrega '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DataEntrega: TLabel
              Left = 545
              Top = 41
              Width = 68
              Height = 14
              Caption = 'DataEntrega'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 11
              Top = 33
              Width = 37
              Height = 14
              Caption = 'Grupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 20
              Top = 6
              Width = 28
              Height = 14
              Caption = 'Tipo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbReferencia: TSgDbSearchCombo
              Left = 395
              Top = 5
              Width = 246
              Height = 22
              TabOrder = 4
              CharCase = ecUpperCase
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 
                'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
                'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
              LookupOrderBy = 'PD.PRD_REFER'
              LookupTable = 
                'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
                'IGO) '
              LookupDispl = 'PRD_DESCRI'
              OnButtonClick = cbReferenciaButtonClick
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
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object EdtLinha: TEdit
              Left = 55
              Top = 56
              Width = 43
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 2
              OnExit = EdtLinhaExit
              OnKeyDown = EdtLinhaKeyDown
            end
            object CBLinha: TSgDbSearchCombo
              Left = 101
              Top = 56
              Width = 204
              Height = 22
              EmptyText = 'TODAS AS LINHAS'
              TabOrder = 3
              CharCase = ecUpperCase
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'lin_codigo,lin_descri'
              LookupOrderBy = 'lin_descri'
              LookupTable = 'PRD_LINHA'
              LookupDispl = 'LIN_DESCRI'
              OnSelect = CBLinhaSelect
              GridAutoSize = False
              LookupSource = qLinha
              DataField = 'LIN_CODIGO'
              LookupKeyField = 'lin_codigo'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Marcas/Linhas de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object chkAtrasados: TCheckBox
              Left = 347
              Top = 66
              Width = 174
              Height = 17
              Caption = 'Pedidos atrasados'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 6
              OnClick = chkAtrasadosClick
            end
            object edDiasAtrasos: TEdit
              Left = 370
              Top = 38
              Width = 66
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = '15'
              OnChange = edDiasAtrasosChange
            end
            object chkMultiEmpresa: TCheckBox
              Left = 748
              Top = 66
              Width = 241
              Height = 17
              Caption = 'Visualizar Multiempresa'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 9
            end
            object chkFalta: TCheckBox
              Left = 748
              Top = 25
              Width = 127
              Height = 17
              Caption = 'Falta de estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = chkFaltaClick
            end
            object CbGrupo: TSgDbSearchCombo
              Left = 101
              Top = 30
              Width = 205
              Height = 22
              EmptyText = 'TODOS OS GRUPOS'
              TabOrder = 1
              CharCase = ecUpperCase
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
              LookupOrderBy = 'PGR_DESCRI'
              LookupTable = 'PRD_GRUPO'
              LookupDispl = 'PGR_DESCRI'
              OnSelect = CbGrupoSelect
              GridAutoSize = False
              LookupSource = qGrupo
              DataField = 'PGR_CODIGO'
              LookupKeyField = 'PGR_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Grupos de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object EdtGrupo: TEdit
              Left = 54
              Top = 29
              Width = 43
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 0
              OnExit = EdtGrupoExit
              OnKeyDown = EdtGrupoKeyDown
            end
            object chkminimo: TCheckBox
              Left = 748
              Top = 45
              Width = 183
              Height = 17
              Caption = 'Abaixo do estoque m'#237'nimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = chkFaltaClick
            end
            object cbTipo: TSgDbSearchCombo
              Left = 101
              Top = 2
              Width = 204
              Height = 22
              EmptyText = 'TODOS OS TIPOS'
              TabOrder = 10
              CharCase = ecUpperCase
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA, SPED_GENCODIGO'
              LookupOrderBy = 'PTI_DESCRI'
              LookupTable = 'pRD_TIPO'
              LookupDispl = 'PTI_DESCRI'
              OnSelect = cbTipoSelect
              GridAutoSize = False
              LookupSource = qTipoProduto
              LookupKeyField = 'PTI_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Tipos de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, Sigla'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object EdtTipo: TEdit
              Left = 55
              Top = 2
              Width = 43
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 11
              OnExit = EdtTipoExit
              OnKeyDown = EdtTipoKeyDown
            end
            object chkDamandaPendente: TCheckBox
              Left = 748
              Top = 5
              Width = 293
              Height = 17
              Caption = 'Demanda pendente (vendas n'#227'o faturadas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = chkAtrasadosClick
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 89
        Width = 1194
        Height = 396
        OnTitleClick = DBGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Descri'#231#227'o do produto'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PGR_DESCRI'
            Title.Caption = 'Grupo'
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIN_DESCRI'
            Width = 364
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDIDONFAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_MINIMO'
            Title.Caption = 'Est m'#237'nimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde'
            Title.Caption = 'Qtde pedidos'
            Width = 78
            Visible = True
          end>
      end
    end
    object tsProducao: TTabSheet
      Caption = 'Produ'#231#227'o'
      ImageIndex = 1
      OnShow = tsProducaoShow
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1194
        Height = 485
        Align = alClient
        DataSource = dsProducao
        PopupMenu = mnuGridPesquisa
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridDblClick
        OnKeyDown = DBGridKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Width = 333
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estoque'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSUMO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_MINIMO'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Compras'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'custototal'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 554
    Width = 1202
    ExplicitTop = 554
    ExplicitWidth = 1202
    inherited btnSelect: TSpeedButton
      Left = 1054
      ExplicitLeft = 941
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 18
      FieldName = 'PRD_REFER'
    end
    object qBuscoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'PRD_DESCRI'
      Size = 150
    end
    object qBuscoPGR_DESCRI: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 25
      FieldName = 'PGR_DESCRI'
      Size = 100
    end
    object qBuscoPRD_UND: TStringField
      DisplayLabel = 'UND'
      DisplayWidth = 5
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qBuscoLIN_DESCRI: TStringField
      DisplayLabel = 'Linha'
      DisplayWidth = 20
      FieldName = 'LIN_DESCRI'
      Size = 100
    end
    object qBuscoEstoque: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Estoque'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object qBuscoPRD_MINIMO: TFMTBCDField
      DisplayLabel = 'M'#237'nimo'
      DisplayWidth = 8
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object qBuscoCOMPRAS: TFMTBCDField
      DisplayLabel = 'Em compras'
      DisplayWidth = 12
      FieldName = 'COMPRAS'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object qBuscoVENDIDONFAT: TFMTBCDField
      DisplayLabel = 'Vendido'
      DisplayWidth = 8
      FieldName = 'VENDIDONFAT'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object qBuscoSaldo: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Saldo'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 15
    end
    object qBuscoqtde: TIntegerField
      DisplayLabel = 'Qtde Pedidos'
      DisplayWidth = 11
      FieldName = 'qtde'
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
    end
    object cdsBuscoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Size = 150
    end
    object cdsBuscoPRD_UND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsBuscoLIN_DESCRI: TStringField
      DisplayLabel = 'Linha'
      FieldName = 'LIN_DESCRI'
      Size = 100
    end
    object cdsBuscoEstoque: TFMTBCDField
      FieldName = 'Estoque'
      Precision = 10
      Size = 4
    end
    object cdsBuscoVENDIDONFAT: TFMTBCDField
      DisplayLabel = 'Vendido'
      FieldName = 'VENDIDONFAT'
      Precision = 10
      Size = 4
    end
    object cdsBuscoSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 15
    end
    object cdsBuscoqtde: TIntegerField
      FieldName = 'qtde'
    end
    object cdsBuscoPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 15
    end
    object cdsBuscoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 100
    end
    object cdsBuscoCOMPRAS: TFMTBCDField
      DisplayLabel = 'Em compras'
      FieldName = 'COMPRAS'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 705
    Top = 207
  end
  object qLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 641
    Top = 159
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
    Left = 567
    Top = 164
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
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 513
    Top = 167
  end
  object qProducao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        '  SELECT PRD_REFER, PRD_DESCRI, PGR_DESCRI, PTI_DESCRI, LIN_DESC' +
        'RI, PRD_UND, PRD_MINIMO, max(Estoque) AS Estoque,      '
      
        '  SUM(Consumo) AS CONSUMO, (coalesce(max(Estoque),0) -   SUM(Con' +
        'sumo)) AS SALDO, '
      
        '  min(compra) compras, min(PRD_PCUSTO_UN) custo, min(PRD_PCUSTO_' +
        'UN) *SUM(Consumo) custototal'
      '  FROM  '
      
        '     (                                                          ' +
        '                               '
      
        '  SELECT PR.PRD_REFER, PR.PRD_DESCRI, TP.PTI_DESCRI,  LI.LIN_DES' +
        'CRI, PR.PRD_UND,     '
      '  GR.PGR_DESCRI, '
      
        '  ( SELECT SUM(kas_saldo) FROM kardex_almox_saldo KAS           ' +
        '                                    '
      
        '  JOIN ALMOX0000 amx ON (amx.AMX_CODIGO = kas.AMX_CODIGO AND amx' +
        '.AMX_FISICO ='#39'S'#39')                      '
      '  WHERE prd_codigo = pr.prd_codigo  ) Estoque, '
      
        '  PRD_MINIMO  , 1  AS  qtdePed, ( fti_uc * (PRF_QTDE-PRF_QTDEFAT' +
        ')) as Consumo   ,  (PRF_QTDE-PRF_QTDEFAT) vendido , PRD_PENDENTE' +
        '  AS compra,'
      'CAST(case '
      '     WHEN PRMT.pmt_calcularpv = '#39'0'#39' THEN '
      '          Pr.PRD_PCUSTO '
      '      WHEN PRMT.pmt_calcularpv = '#39'1'#39' THEN '
      '          Pr.prd_custocomipi '
      '      WHEN PRMT.pmt_calcularpv = '#39'2'#39' THEN '
      '          Pr.PRD_PMEDIO '
      ' END as numeric(15,4)) AS PRD_PCUSTO_UN   '
      
        '  FROM PED0000 PE                                               ' +
        '                                  '
      
        '  JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PE.OPV_CODIGO AND OPV_VE' +
        'NDA = '#39'S'#39' AND PED_SITUACAO NOT IN ('#39'C'#39','#39'T'#39','#39'A'#39')  )              ' +
        '                                        '
      
        '  JOIN PED_IT01 IT ON (IT.PED_CODIGO = PE.PED_CODIGO AND IT.EMP_' +
        'CODIGO = PE.EMP_CODIGO AND PRF_QTDEFAT  <> PRF_QTDE  )          ' +
        '                                                            '
      '  JOIN FTC_IT01 FI ON (FI.PRD_REFER = IT.PRD_REFER)'
      '  JOIN PRD0000 PR ON (PR.PRD_REFER = FI.PRD_REFER_ITENS)   '
      '  left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr.emp_codigo'
      
        '  JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)           ' +
        '                                  '
      '  LEFT JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)   '
      '  LEFT JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)  '
      ' -- WHERE IT.PRD_rEFER ='#39'000010'#39
      ''
      '  )  '
      '  GROUP BY  1,2,3,4,5,6,7')
    SQLConnection = DBConn
    Left = 276
    Top = 233
    object qProducaoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 18
      FieldName = 'PRD_REFER'
    end
    object qProducaoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'PRD_DESCRI'
      Size = 150
    end
    object qProducaoPRD_UND: TStringField
      DisplayLabel = 'Und'
      DisplayWidth = 5
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qProducaoEstoque: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Estoque'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object qProducaoPRD_MINIMO: TFMTBCDField
      DisplayLabel = 'M'#237'nimo'
      DisplayWidth = 8
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object qProducaoVENDIDONFAT: TFMTBCDField
      DisplayLabel = 'Consumo'
      DisplayWidth = 8
      FieldName = 'CONSUMO'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object qProducaoSaldo: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Saldo'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 15
    end
    object qProducaoCompras: TFMTBCDField
      DisplayLabel = 'Em compras'
      FieldName = 'Compras'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 15
    end
    object qProducaocusto: TFMTBCDField
      DisplayLabel = 'Custo unit.'
      FieldName = 'custo'
      DisplayFormat = '###,###,####0.0000'
      currency = True
      Precision = 15
    end
    object qProducaocustototal: TFMTBCDField
      DisplayLabel = 'Custo total'
      FieldName = 'custototal'
      DisplayFormat = '###,###,####0.0000'
      currency = True
      Precision = 15
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = qProducao
    Left = 332
    Top = 233
  end
  object cdsProducao: TClientDataSet
    Aggregates = <>
    ObjectView = False
    PacketRecords = 16
    Params = <>
    ProviderName = 'dspProducao'
    AfterOpen = cdsBuscoAfterOpen
    AfterClose = cdsBuscoAfterClose
    OnFilterRecord = cdsBuscoFilterRecord
    AfterApplyUpdates = cdsBuscoAfterApplyUpdates
    Left = 380
    Top = 233
    object cdsProducaoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 18
      FieldName = 'PRD_REFER'
    end
    object cdsProducaoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'PRD_DESCRI'
      Size = 150
    end
    object cdsProducaoPRD_UND: TStringField
      DisplayLabel = 'UND'
      DisplayWidth = 5
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsProducaoEstoque: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Estoque'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object cdsProducaoPRD_MINIMO: TFMTBCDField
      DisplayLabel = 'M'#237'nimo'
      DisplayWidth = 8
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object cdsProducaoCONSUMO: TFMTBCDField
      DisplayLabel = 'Consumo'
      DisplayWidth = 8
      FieldName = 'CONSUMO'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 10
      Size = 4
    end
    object cdsProducaoSaldo: TFMTBCDField
      DisplayWidth = 8
      FieldName = 'Saldo'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 15
    end
    object cdsProducaoCompras: TFMTBCDField
      DisplayLabel = 'Em compras'
      FieldName = 'Compras'
      DisplayFormat = '#,###0.00'
      currency = True
      Precision = 15
    end
    object cdsProducaocusto: TFMTBCDField
      DisplayLabel = 'Custo unit.'
      FieldName = 'custo'
      DisplayFormat = '###,###,####0.0000'
      currency = True
      Precision = 15
    end
    object cdsProducaocustototal: TFMTBCDField
      DisplayLabel = 'Custo total'
      FieldName = 'custototal'
      DisplayFormat = '###,###,####0.0000'
      currency = True
      Precision = 15
    end
  end
  object dsProducao: TDataSource
    DataSet = cdsProducao
    Left = 436
    Top = 232
  end
end
