inherited frmEmpenharLote: TfrmEmpenharLote
  Caption = 'Empenhar lote'
  ClientHeight = 401
  ClientWidth = 876
  ExplicitWidth = 892
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 229
    Width = 876
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -8
    ExplicitTop = 364
    ExplicitWidth = 612
  end
  inherited pnUtil: TPanel
    Top = 369
    Width = 876
    ExplicitTop = 369
    ExplicitWidth = 876
    inherited btnOk: TSpeedButton
      Left = 628
      ExplicitLeft = 364
    end
    inherited btnCancelar: TSpeedButton
      Left = 753
      ExplicitLeft = 489
    end
    object lpadrao: TLabel
      Left = 16
      Top = 8
      Width = 111
      Height = 13
      Caption = 'Empenhar com a data :'
    end
    object DataPadrao: TJvDateEdit
      Left = 133
      Top = 6
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object grpNovos: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 876
    Height = 229
    Align = alClient
    Caption = 'Empenhar'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 872
      Height = 212
      Align = alClient
      TabOrder = 0
      OnEnter = cxGrid1Enter
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEdits
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '000.00#'
            Kind = skSum
            Column = cxGrid1DBTableView1Quantidade
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          RepositoryItem = cxEditRepository1ButtonItem1
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Options.Moving = False
          Options.ShowCaption = False
          Options.Sorting = False
        end
        object cxGrid1DBTableView1Data: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
          Width = 88
        end
        object cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'PRDL_REGISTRO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'PRDL_REGISTRO'
          Properties.ListColumns = <
            item
              FieldName = 'PRDL_LOTE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsLote
          Width = 108
        end
        object cxGrid1DBTableView1Quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'Quantidade'
          Width = 130
        end
        object cxGrid1DBTableView1Validade: TcxGridDBColumn
          DataBinding.FieldName = 'Validade'
          Options.Editing = False
          Width = 105
        end
        object cxGrid1DBTableView1Saldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Options.Editing = False
          Width = 98
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object grpHistorico: TGroupBox [3]
    Left = 0
    Top = 232
    Width = 876
    Height = 137
    Align = alBottom
    Caption = 'Hist'#243'rico de empenho'
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 2
      Top = 15
      Width = 872
      Height = 120
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHistorico
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,#####'
            Kind = skSum
            FieldName = 'EMP_QUANTIDADE'
            Column = cxGrid2DBTableView1EMP_QUANTIDADE
          end
          item
            Format = '#,#####'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid2DBTableView1TOTAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ColumnHeaderHints = False
        OptionsCustomize.ColumnFiltering = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Estorno: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                000000000000C40E0000C40E00000000000000000000FF00FF00835C2AFF835C
                2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C
                2AFF835C2AFF835C2AFF835C2AFF835C2AFFFF00FF00835C2AFF835C2AFFBC8C
                5BFFBA8A59FFBA8958FFBA8957FFBA8957FFBA8957FFBA8957FFBA8957FFBA8A
                58FFBA8A59FFBA8A59FFBC8B5AFF835C2AFF835C2AFF835C2AFFA16D3AFF9F6A
                37FF9F6A37FF9E6A37FF9B6837FF9C6938FF9C6938FF9B6938FF9B6837FF9964
                30FF9B642FFFA06B37FF9F6A37FFA26D3AFF835C2AFF835C2AFF98612DFF9860
                2DFF98602DFF98602DFFE2E3E2FFE2E3E2FFE2E3E2FFE2E3E2FFE2E3E2FFCABE
                B1FFA27F5BFF915823FF99602DFF99612DFF835C2AFF835C2AFF9A622EFF9A62
                2EFF9A622EFF9A622EFFE2E3E2FFE2E3E2FFE2E3E2FFE2E3E2FFE2E3E2FFE2E3
                E2FFE8ECEFFFAC8F72FF955B25FF9B622EFF835C2AFF835C2AFFA06936FFA069
                36FFA06A36FF9F6834FF9B612BFF9B632EFF9D6531FF9C6430FF9B632DFFA779
                4CFFE1DEDAFFDAD8D5FF9B6A3BFFA16834FF835C2AFF835C2AFFA66F3DFFA66F
                3DFFA6703DFFA26833FFAB855FFFE2E3E2FFA56D38FFA66F3CFFA66F3CFFA065
                2EFFCBB7A1FFEDF1F5FFA77F59FFA66C38FF835C2AFF835C2AFFAB7645FFAC75
                44FFA76E3AFFB38B65FFE2E3E2FFE2E3E2FFA9703BFFAC7542FFAC7542FFA56A
                34FFC9B49FFFF2F6FAFFAF8760FFAB733FFF835C2AFF835C2AFFB17D4BFFAE76
                43FFB18C67FFE5E4E3FFF4F7FAFFE2E3E2FFA87544FFAA794BFFAB794AFFB48F
                6AFFDFDEDBFFDCDAD6FFAD7C4EFFB27B49FF835C2AFF835C2AFFB47F4DFFB78E
                67FFE2E1E0FFE5E6E8FFEEF0F2FFEEF0F2FFEEF0F2FFEEF0F2FFEEF0F2FFF0F4
                F7FFEBECEDFFBB9B7BFFB27C4AFFB78454FF835C2AFF835C2AFFC09266FFC29E
                7AFFECEAE7FFECEEEFFFEEF0F2FFEEF0F2FFEEF0F2FFEEF0F2FFDAD3CBFFD3C3
                B2FFC4A17EFFBB8B5EFFC09267FFC3966CFF835C2AFF835C2AFFCCA580FFC89D
                76FFCCAD8FFFEEEDEBFFEEF0F2FFEEF0F2FFC59B73FFC69E78FFC69D77FFC59B
                73FFC89E77FFCAA27CFFC9A17CFFCCA480FF835C2AFF835C2AFFD4B191FFD1AD
                8BFFCEA885FFD3B79CFFEDECEAFFEEF0F2FFD0AA87FFD1AC8BFFD1AC8BFFD1AD
                8BFFD1AC8BFFD1AC8BFFD1AC8BFFD5B190FF835C2AFF835C2AFFD9BDA2FFDAB9
                9DFFD8B99CFFD6B596FFD7C0A9FFEEF0F2FFD8B89AFFD8B99BFFD8B99BFFD8B9
                9BFFD8B99BFFD8B99BFFD9B99CFFDCBFA4FF835C2AFF835C2AFF835C2AFFE2CA
                B4FFE4CBB4FFE4CBB3FFE2C8B0FFE2C9B1FFE4CAB4FFE3CAB3FFE3CAB3FFE3CA
                B3FFE3CAB3FFE4CBB4FFE3CBB5FF835C2AFF835C2AFFFF00FF00835C2AFF835C
                2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C2AFF835C
                2AFF835C2AFF835C2AFF835C2AFF835C2AFFFF00FF00}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = cxGrid2DBTableView1Column1PropertiesButtonClick
          OnGetCellHint = cxGrid1DBTableView1EstornoGetCellHint
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Width = 22
        end
        object cxGrid2DBTableView1EMP_QUANTIDADE: TcxGridDBColumn
          Caption = 'Empenhado'
          DataBinding.FieldName = 'EMP_QUANTIDADE'
          Width = 81
        end
        object cxGrid2DBTableView1EMP_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'EMP_TIPO'
          Width = 30
        end
        object cxGrid2DBTableView1EMP_DATAEMPENHO: TcxGridDBColumn
          Caption = 'Data da ocorr'#234'ncia'
          DataBinding.FieldName = 'EMP_DATAEMPENHO'
          Width = 110
        end
        object cxGrid2DBTableView1PRDL_DATA_FABRICACAO: TcxGridDBColumn
          Caption = 'Data Fab Lote'
          DataBinding.FieldName = 'PRDL_DATA_FABRICACAO'
          Width = 77
        end
        object cxGrid2DBTableView1PRDL_LOTE: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'PRDL_LOTE'
          Width = 139
        end
        object cxGrid2DBTableView1USU_NOME: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USU_NOME'
          Width = 174
        end
        object cxGrid2DBTableView1EPE_CUSTO: TcxGridDBColumn
          Caption = 'Custo unit'#225'rio'
          DataBinding.FieldName = 'EPE_CUSTO'
          Width = 99
        end
        object cxGrid2DBTableView1PRDL_SALDO: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'PRDL_SALDO'
          Visible = False
        end
        object cxGrid2DBTableView1PRDL_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'PRDL_REGISTRO'
          Visible = False
        end
        object cxGrid2DBTableView1EPE_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'EPE_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1IOP_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'IOP_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1MP_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'MP_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1PRD_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Custo total'
          DataBinding.FieldName = 'TOTAL'
          Width = 108
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 112
    Top = 104
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 280
    Top = 120
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 208
    Top = 104
  end
  inherited FDTransac: TFDTransaction
    Left = 176
    Top = 144
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 272
    Top = 136
  end
  inherited dbConn: TFDConnection
    Left = 19
    Top = 144
  end
  inherited dsEdits: TDataSource
    DataSet = cdsEmpenho
  end
  inherited cdsEdit: TFDQuery
    Left = 547
    Top = 32
    object cdsEditData: TDateField
      FieldName = 'Data'
    end
    object cdsEditPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object cdsEditQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object cdsEditSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 507
    Top = 72
  end
  inherited JvValidators1: TJvValidators
    Left = 89
    Top = 82
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 64
    Top = 112
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 9
    Top = 90
  end
  object qLote: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      ' SELECT * from PRD_LOTE '
      'where PRD_CODIGO =:prd_codigo '
      'AND prdl_saldo >0 '
      'ORDER BY PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE')
    Left = 403
    Top = 72
    ParamData = <
      item
        Name = 'PRD_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qLotePRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLoteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object qLotePRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
    end
    object qLotePRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      Origin = 'PRDL_DATA_VALIDADE'
    end
    object qLotePRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object qLotePRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Origin = 'PRDL_PRECO_MAXIMO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Origin = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
    object qLotePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 10
    end
    object qLotePRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      Origin = 'PRDL_CADASTRO'
    end
    object qLotePRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      Origin = 'PRDL_DESCRICAO'
      Size = 100
    end
    object qLotePRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      Origin = 'PRDL_CUSTO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_NFE: TStringField
      FieldName = 'PRDL_NFE'
      Origin = 'PRDL_NFE'
      Size = 10
    end
    object qLoteFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 4
    end
    object qLotePRDL_QTDELOTE: TFMTBCDField
      FieldName = 'PRDL_QTDELOTE'
      Origin = 'PRDL_QTDELOTE'
      Precision = 18
      Size = 5
    end
  end
  object dsLote: TDataSource
    DataSet = qLote
    Left = 456
    Top = 80
  end
  object cdsEmpenho: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsEmpenhoAfterInsert
    Left = 480
    Top = 160
    object cdsEmpenhoData: TDateField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsEmpenhoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      OnValidate = cdsEmpenhoPRDL_REGISTROValidate
    end
    object cdsEmpenhoQuantidade: TFloatField
      FieldName = 'Quantidade'
      OnValidate = cdsEmpenhoQuantidadeValidate
    end
    object cdsEmpenhoValidade: TSQLTimeStampField
      FieldName = 'Validade'
    end
    object cdsEmpenhoSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object cdsEmpenhotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 100
    Top = 132
    PixelsPerInch = 96
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = actInserir
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D460300000000000036000000280000000E0000000E000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000000000FF000000FF000000FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000000000FF000000FF000000FF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000FF000000FF000000FF008080000080800000808000008080000080
            8000008080000080800000808000000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF0080800000808000008080000080
            800000808000000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF00808000008080000080800000808000008080000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF008080000080800000808000008080000080800000808000008080000080
            8000000000FF000000FF000000FF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000000000FF0000
            00FF000000FF0080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000000000FF000000FF000000FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000}
          Hint = 'Adicionar'
          Kind = bkGlyph
        end
        item
          Action = actdelete
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF000303
            34FF020231FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000028FF000028FFFF00FF00FF00FF00FF00FF00070742FF0101
            89FF01018BFF030336FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000028FF000081FF000086FF000028FFFF00FF000F0F53FF01018CFF0202
            90FF020290FF020290FF05053CFFFF00FF00FF00FF00FF00FF00FF00FF000101
            2CFF000082FF000086FF000084FF000086FF000028FF151460FF010190FF0202
            93FF030392FF030393FF030393FF080842FFFF00FF00FF00FF00040337FF0000
            87FF000088FF000083FF000086FF000082FF000028FFFF00FF0019186BFF0202
            95FF030397FF040497FF030397FF030396FF0B0A4AFF090945FF02028CFF0101
            8EFF000088FF000088FF000083FF01012FFFFF00FF00FF00FF00FF00FF001D1D
            74FF03039AFF04049CFF05059AFF04049AFF040497FF030395FF030393FF0202
            8FFF01018EFF000088FF05053BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0022227FFF05059FFF05059FFF05059DFF05059CFF040498FF030396FF0303
            93FF02028CFF0B0B4AFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00272789FF0404A3FF0606A0FF06069EFF05059CFF040498FF0303
            95FF13135DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF002E2F9AFF0A0AA9FF0707A4FF0505A0FF04049DFF04049AFF0303
            96FF1A196DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF003A3AB1FF2D2DBCFF2B2BBAFF2222B4FF1616ACFF0E0EA5FF07079EFF0303
            98FF020293FF1E1F76FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF004544
            C7FF2B2BBFFF2D2DBDFF2D2DBCFF2D2DBAFF2D2DB8FF2B2BB6FF2424AFFF1D1D
            A7FF1616A1FF11119CFF232381FFFF00FF00FF00FF00FF00FF004F4FDCFF2B2B
            C0FF2D2DBFFF2E2EC0FF2C2CBCFF2D2DBBFF3E3EB8FF3A3BB2FF2828B1FF2828
            ADFF2626AAFF2525A7FF2323A5FF28288BFFFF00FF005656EAFF2B2BBBFF2C2C
            BCFF2E2EC0FF2D2DBDFF2D2DBDFF4849CEFFFF00FF00FF00FF004040BCFF2626
            ADFF2323A9FF2323A5FF2121A3FF2020A0FF2D2D96FF5858EEFF2D2DBCFF2B2B
            BAFF2C2CBBFF2D2DBDFF5151E1FFFF00FF00FF00FF00FF00FF00FF00FF004444
            C6FF2323A9FF2222A5FF2020A3FF1F1F9DFF3535A6FFFF00FF005858EEFF2E2E
            BDFF2D2DBAFF5858EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF004849CFFF2222A4FF2020A0FF4041BDFFFF00FF00FF00FF00FF00FF005858
            EEFF5858EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF004D4DD8FF4A4AD3FFFF00FF00FF00FF00}
          Hint = 'Excluir'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 152
    object actInserir: TAction
      Caption = 'ActInserir'
    end
    object actdelete: TAction
      Caption = 'actdelete'
    end
  end
  object cdsHistoricoEmpenho: TFDQuery
    OnCalcFields = cdsHistoricoEmpenhoCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT e.prdl_registro, EPE_CODIGO, e. IOP_CODIGO, MP_CODIGO, e.' +
        'PRD_CODIGO, EMP_QUANTIDADE,emp_tipo, '
      
        'EMP_DATAEMPENHO,prdl_data_fabricacao, prdl_lote, u.usu_nome, E.E' +
        'PE_CUSTO'
      'FROM EMPENHO e '
      'LEFT JOIN PRD_LOTE lo ON (lo.PRDL_REGISTRO = e.PRDL_REGISTRO) '
      'JOIN USUARIO U on (u.usu_codigo = e.usu_codigo)'
      'where mp_codigo = :mp_codigo'
      'and emp_tipo <> '#39'E'#39)
    Left = 80
    Top = 293
    ParamData = <
      item
        Name = 'MP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsHistoricoEmpenhoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
    end
    object cdsHistoricoEmpenhoEPE_CODIGO: TIntegerField
      FieldName = 'EPE_CODIGO'
      Origin = 'EPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHistoricoEmpenhoIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsHistoricoEmpenhoMP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
      Origin = 'MP_CODIGO'
    end
    object cdsHistoricoEmpenhoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 5
    end
    object cdsHistoricoEmpenhoEMP_QUANTIDADE: TFMTBCDField
      FieldName = 'EMP_QUANTIDADE'
      Origin = 'EMP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsHistoricoEmpenhoEMP_TIPO: TStringField
      FieldName = 'EMP_TIPO'
      Origin = 'EMP_TIPO'
      Size = 1
    end
    object cdsHistoricoEmpenhoEMP_DATAEMPENHO: TSQLTimeStampField
      FieldName = 'EMP_DATAEMPENHO'
      Origin = 'EMP_DATAEMPENHO'
    end
    object cdsHistoricoEmpenhoPRDL_DATA_FABRICACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsHistoricoEmpenhoPRDL_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object cdsHistoricoEmpenhoUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsHistoricoEmpenhoEPE_CUSTO: TFMTBCDField
      FieldName = 'EPE_CUSTO'
      Origin = 'EPE_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsHistoricoEmpenhoTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistoricoEmpenho
    Left = 160
    Top = 301
  end
end
