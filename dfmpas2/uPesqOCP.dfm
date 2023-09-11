inherited frmPesqOCP: TfrmPesqOCP
  Caption = 'Pedidos de compra'
  ClientHeight = 584
  ClientWidth = 1106
  ExplicitWidth = 1114
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1106
    ExplicitWidth = 1106
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
      Left = 1042
      ExplicitLeft = 1038
    end
    inherited btnImprime: TSpeedButton
      Left = 885
      ExplicitLeft = 881
    end
    inherited btnExcel: TSpeedButton
      Left = 964
      ExplicitLeft = 960
    end
  end
  inherited PageControl1: TPageControl
    Width = 1106
    Height = 507
    ExplicitWidth = 1106
    ExplicitHeight = 507
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1098
      ExplicitHeight = 479
      object Splitter1: TSplitter [0]
        Left = 0
        Top = 267
        Width = 1098
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 8
        ExplicitTop = 241
        ExplicitWidth = 230
      end
      inherited pnControle: TPanel
        Width = 1098
        Height = 105
        ExplicitWidth = 1098
        ExplicitHeight = 105
        inherited pnFiltro: TPanel
          Width = 1098
          Height = 105
          Align = alClient
          ExplicitWidth = 1098
          ExplicitHeight = 105
          inherited pn1: TPanel
            Top = 0
            Width = 1098
            Height = 105
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1098
            ExplicitHeight = 105
            inherited btnPesquisa: TSpeedButton
              Left = 994
              Top = 7
              ExplicitLeft = 994
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 994
              Top = 33
              ExplicitLeft = 994
              ExplicitTop = 33
            end
            object Label3: TLabel
              Left = 1
              Top = 18
              Width = 59
              Height = 14
              Alignment = taRightJustify
              Caption = 'Fornecedor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 1
              Top = 44
              Width = 42
              Height = 13
              Caption = 'Produto:'
            end
            object EdForneCodigo: TEdit
              Left = 67
              Top = 15
              Width = 43
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              MaxLength = 5
              TabOrder = 0
              OnExit = EdForneCodigoExit
              OnKeyDown = EdForneCodigoKeyDown
            end
            object PesqFornecedor: TSgDbSearchCombo
              Left = 112
              Top = 15
              Width = 336
              Height = 21
              EmptyText = 'TODOS OS FORNECEDORES'
              TabOrder = 1
              CharCase = ecUpperCase
              LookupSelect = 'for_codigo,for_razao, for_bairro, for_cidade'
              LookupOrderBy = 'for_razao'
              LookupTable = 'for0000'
              LookupDispl = 'FOR_RAZAO'
              OnSelect = PesqFornecedorSelect
              GridAutoSize = False
              LookupSource = qAux
              LookupKeyField = 'for_codigo'
              ShowButton = True
              LookupTableShare = 'fornecedores'
              AutoF8WinTitulo = 'Fornecedores'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Bairro, Cidade'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object edProdutoCodigo: TEdit
              Left = 67
              Top = 40
              Width = 43
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              MaxLength = 5
              TabOrder = 2
              OnExit = edProdutoCodigoExit
              OnKeyDown = edProdutoCodigoKeyDown
            end
            object cbReferencia: TSgDbSearchCombo
              Left = 111
              Top = 40
              Width = 338
              Height = 21
              TabOrder = 3
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
            object GroupBox1: TGroupBox
              Left = 475
              Top = 0
              Width = 318
              Height = 42
              Caption = 'Per'#237'odo:'
              TabOrder = 4
              object ldataInicial: TLabel
                Left = 11
                Top = 19
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
                Top = 19
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
                Top = 15
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
                Top = 15
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
              Left = 542
              Top = 47
              Width = 121
              Height = 21
              EditLabel.Width = 52
              EditLabel.Height = 13
              EditLabel.Caption = 'O Compra:'
              LabelPosition = lpLeft
              LabelSpacing = 5
              TabOrder = 5
            end
            object edRequerente: TLabeledEdit
              Left = 67
              Top = 67
              Width = 211
              Height = 21
              EditLabel.Width = 61
              EditLabel.Height = 13
              EditLabel.Caption = 'Requerente:'
              LabelPosition = lpLeft
              LabelSpacing = 5
              TabOrder = 6
            end
            object chkDiferenca: TCheckBox
              Left = 688
              Top = 48
              Width = 265
              Height = 17
              Caption = 'Pedido com diferen'#231'a na nota'
              TabOrder = 7
              OnClick = chkDiferencaClick
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 105
        Width = 1098
        Height = 162
        Align = alTop
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'OCP_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCP_DTEMIS'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCP_DTENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FONE'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCP_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'Situa'#231#227'o'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Visible = False
          end>
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 270
        Width = 8
        Height = 209
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 270
        Width = 1090
        Height = 209
        Align = alClient
        Caption = 'Itens da Ordem de Compra'
        TabOrder = 3
        object DbGridItemOrdem: TDBGrid
          Left = 2
          Top = 15
          Width = 1086
          Height = 192
          Align = alClient
          Color = clWhite
          DataSource = DsItemOC
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DbGridItemOrdemDrawColumnCell
          OnDblClick = DbGridItemOrdemDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Caption = 'Refer'#234'ncia'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 132
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCI_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 397
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCI_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCI_QTDES'
              Title.Alignment = taCenter
              Title.Caption = 'Solicitada'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCI_QTDER'
              Title.Alignment = taCenter
              Title.Caption = 'Recebido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'situacao'
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 134
              Visible = True
            end>
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 548
    Width = 1106
    ExplicitTop = 548
    ExplicitWidth = 1106
    inherited btnSelect: TSpeedButton
      Left = 958
      Visible = True
      ExplicitLeft = 954
    end
  end
  inherited dspBusco: TDataSetProvider
    Constraints = False
  end
  inherited cdsBusco: TClientDataSet
    AfterScroll = cdsBuscoAfterScroll
    object cdsBuscoOCP_CODIGO: TStringField
      DisplayLabel = 'O Compra'
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object cdsBuscoFOR_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object cdsBuscoOCP_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OCP_DTENTREGA'
    end
    object cdsBuscoOCP_DTEMIS: TSQLTimeStampField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'OCP_DTEMIS'
    end
    object cdsBuscoOCP_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'OCP_TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object cdsBuscoFOR_RAZAO: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object cdsBuscoFOR_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FOR_FONE'
      OnGetText = cdsBuscoFOR_FONEGetText
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object f: TStringField
      FieldName = 'status'
    end
    object cdsBuscoOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
  end
  inherited dsBusca: TDataSource
    AutoEdit = False
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
  object DsItemOC: TDataSource
    DataSet = cdsItemOC
    Left = 372
    Top = 383
  end
  object dspItens: TDataSetProvider
    DataSet = SqlItemOc
    Left = 228
    Top = 393
  end
  object cdsItemOC: TClientDataSet
    Aggregates = <>
    ObjectView = False
    PacketRecords = 16
    Params = <>
    ProviderName = 'dspItens'
    Left = 284
    Top = 393
    object cdsItemOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object cdsItemOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsItemOCOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object cdsItemOCOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object cdsItemOCOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object cdsItemOCOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object cdsItemOCOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 15
      Size = 5
    end
    object cdsItemOCOCI_DESCRICAO: TMemoField
      FieldName = 'OCI_DESCRICAO'
      OnGetText = cdsItemOCOCI_DESCRICAOGetText
      BlobType = ftMemo
      Size = 4000
    end
    object cdsItemOCsituacao: TStringField
      FieldName = 'situacao'
      Size = 100
    end
    object cdsItemOCOCI_NOTADIFERE: TStringField
      FieldName = 'OCI_NOTADIFERE'
      Size = 1
    end
    object cdsItemOCOCI_NOTADIFERE_MOTIVO: TStringField
      FieldName = 'OCI_NOTADIFERE_MOTIVO'
      Size = 200
    end
  end
  object SqlItemOc: TSQLQuery
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
    Left = 135
    Top = 396
  end
end
