inherited frmProdutoSemPedido: TfrmProdutoSemPedido
  Caption = 'Produ'#231#227'o sem pedidos'
  ClientHeight = 566
  ClientWidth = 960
  ExplicitWidth = 976
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 960
    Height = 489
    ExplicitWidth = 960
    ExplicitHeight = 489
    inherited tsNotas: TTabSheet
      ExplicitWidth = 952
      ExplicitHeight = 461
      inherited pnlControle: TPanel
        Width = 952
        Height = 89
        ExplicitWidth = 952
        ExplicitHeight = 89
        inherited pnlFiltro: TPanel
          Width = 952
          Height = 89
          ExplicitWidth = 952
          ExplicitHeight = 89
          inherited pnlpn1: TPanel
            Width = 952
            Height = 89
            ExplicitWidth = 952
            ExplicitHeight = 89
            inherited btnPesquisa: TSpeedButton
              Left = 859
              Visible = False
              ExplicitLeft = 818
            end
            inherited btnLimpar: TSpeedButton
              Left = 859
              Visible = False
              ExplicitLeft = 818
            end
            object Label1: TLabel
              Left = 3
              Top = 62
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
            object rgTipo: TRadioGroup
              Left = 0
              Top = 0
              Width = 305
              Height = 53
              Columns = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Por produ'#231#227'o direta'
                'Por estoque m'#237'nimo')
              ParentFont = False
              TabOrder = 0
              OnClick = rgTipoClick
            end
            object EdClienteCodigo: TEdit
              Left = 40
              Top = 59
              Width = 43
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              MaxLength = 5
              TabOrder = 1
              OnExit = EdClienteCodigoExit
            end
            object edCliente: TSgDbSearchCombo
              Left = 88
              Top = 59
              Width = 345
              Height = 21
              TabOrder = 2
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
              OnButtonClick = edClienteButtonClick
              OnSelect = edClienteSelect
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
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Top = 89
        Width = 952
        Height = 372
        ExplicitTop = 89
        ExplicitWidth = 952
        ExplicitHeight = 372
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1Selecionado: TcxGridDBColumn
            Caption = 'Selecionar'
            DataBinding.FieldName = 'Selecionado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Options.ShowEditButtons = isebAlways
            Width = 65
          end
          object cxgrd1DBTableView1PTI_DESCRI: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_DESCRI'
            Width = 96
          end
          object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 173
          end
          object cxgrd1DBTableView1SALDO: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'SALDO'
            Options.Editing = False
          end
          object cxgrd1DBTableView1PRD_MINIMO: TcxGridDBColumn
            Caption = 'M'#237'nimo'
            DataBinding.FieldName = 'PRD_MINIMO'
            Options.Editing = False
          end
          object cxgrd1DBTableView1PRD_UND: TcxGridDBColumn
            Caption = 'UND'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
            Width = 56
          end
          object cxgrd1DBTableView1PRODUCAO: TcxGridDBColumn
            Caption = 'Em Produ'#231#227'o'
            DataBinding.FieldName = 'PRODUCAO'
            Options.Editing = False
          end
          object cxgrd1DBTableView1Produzir: TcxGridDBColumn
            DataBinding.FieldName = 'Produzir'
          end
        end
      end
      object cxgrdDireto: TcxGrid
        Left = 0
        Top = 89
        Width = 952
        Height = 372
        Align = alClient
        TabOrder = 2
        OnEnter = cxgrdDiretoEnter
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxgrdDiretoDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Hint = 'Excluir corre'#231#227'o k280'
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataSource = dsEdits
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'A'#231#245'es'
              Width = 55
            end
            item
              Caption = 'Produto'
              Width = 390
            end
            item
              Caption = 'Quantidade'
              Width = 424
            end>
          object cxgrdDiretoDBBandedTableView1Column1: TcxGridDBBandedColumn
            RepositoryItem = cxEditRepository1ButtonItem1
            Options.ShowEditButtons = isebAlways
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn
            Caption = 'COD SPED'
            DataBinding.FieldName = 'PRD_CODIGO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Visible = False
            VisibleForCustomization = False
            Width = 72
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrdDiretoDBBandedTableView1PRD_REFERPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Width = 92
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            HeaderAlignmentHorz = taCenter
            Width = 225
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1QTDE: TcxGridDBBandedColumn
            Caption = 'Produzir'
            DataBinding.FieldName = 'QUANTIDADE'
            HeaderAlignmentHorz = taCenter
            Width = 133
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1PRD_UND: TcxGridDBBandedColumn
            Caption = 'Und'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
            Width = 65
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1PRD_FATOR_PROD: TcxGridDBBandedColumn
            Caption = 'Densidade'
            DataBinding.FieldName = 'PRD_FATOR_PROD'
            Width = 118
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDiretoDBBandedTableView1UnidadeConvertida: TcxGridDBBandedColumn
            Caption = 'Unid convertida'
            DataBinding.FieldName = 'UnidadeConvertida'
            Options.Editing = False
            Width = 107
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxgrdDiretolvlGrid1Level1: TcxGridLevel
          GridView = cxgrdDiretoDBBandedTableView1
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 530
    Width = 960
    ExplicitTop = 530
    ExplicitWidth = 960
    inherited btnSelect: TSpeedButton
      Left = 348
      ExplicitLeft = 347
    end
    object btnOk: TSpeedButton
      Tag = 1
      Left = 711
      Top = 6
      Width = 119
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = 'Salvar'
      NumGlyphs = 2
      OnClick = btnOkClick
      ExplicitLeft = 710
    end
    object btnCancelar: TSpeedButton
      Tag = 2
      Left = 836
      Top = 6
      Width = 119
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = 'Sair'
      NumGlyphs = 2
      OnClick = btnCancelarClick
      ExplicitLeft = 835
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 960
    Visible = False
    ExplicitWidth = 960
    inherited btnFechar: TSpeedButton
      Left = 896
      ExplicitLeft = 855
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 795
      ExplicitLeft = 754
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 694
      ExplicitLeft = 653
    end
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 632
    Top = 104
  end
  inherited qAux: TFDQuery
    Top = 120
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 560
    Top = 104
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 408
    Top = 104
  end
  inherited qAux2: TFDQuery
    Top = 119
  end
  inherited qAux3: TFDQuery
    Left = 331
    Top = 127
  end
  inherited qAux4: TFDQuery
    Left = 371
    Top = 127
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_2'
      'DriverID=FB')
    Left = 851
    Top = 176
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'SELECT  FIRST 100 PRD_CODIGO, prd_Refer, PRD_DESCRI,  prd_und, '
      
        '(select SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO where' +
        ' KARDEX_ALMOX_SALDO.PRD_CODIGO = PR.PRD_CODIGO) SALDO,PRD_MINIMO' +
        ', '
      
        #9'(SELECT SUM(IOP_QUANTIDADE- COALESCE(IOP_QTDE_CONCLUIDA,0))  PR' +
        'ODUCAO '
      #9'FROM ITEM_ORDEMPRODUCAO IOP'
      
        #9'WHERE IOP_STATUS NOT IN ('#39'F'#39','#39'C'#39') AND IOP.PRD_CODIGO = PR.PRD_C' +
        'ODIGO) AS PRODUCAO, pti_descri'
      'FROM PRD0000 pr'
      'JOIN PRD_TIPO ti ON (ti.pti_codigo = pr.PTI_CODIGO)'
      
        'WHERE (select SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO' +
        ' where KARDEX_ALMOX_SALDO.PRD_CODIGO = PR.PRD_CODIGO)  < prd_min' +
        'imo')
    object cdsBuscaSelecionado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecionado'
    end
    object cdsBuscaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object cdsBuscaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsBuscaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscaSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object cdsBuscaPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Origin = 'PRD_MINIMO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsBuscaPRODUCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCAO'
      Origin = 'PRODUCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsBuscaProduzir: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Produzir'
      OnChange = cdsBuscaProduzirChange
      Precision = 8
      Size = 15
    end
    object cdsBuscaPTI_DESCRI: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Origin = 'PTI_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited frxPadrao: TfrxReport
    Left = 564
    Top = 289
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qUsuMenu: TFDQuery
    Left = 587
    Top = 408
  end
  object cdsEdit: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Name = 'idxUnico'
        Fields = 'EMP_CODIGO;ANO;MES;PRD_CODIGO;REF_ANO;REF_MES'
        Options = [soUnique]
      end>
    IndexesActive = False
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      
        'SELECT FIRST 0 PRD_CODIGO, PRD_REFER, PRD_DESCRI, PRD_FATOR_PROD' +
        ', prd_und'
      'FROM PRD0000')
    Left = 723
    Top = 296
    object cdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEditPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsEditPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsEditPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsEditQUANTIDADE: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'QUANTIDADE'
      OnChange = cdsEditQUANTIDADEChange
      Precision = 15
    end
    object cdsEditUnidadeConvertida: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'UnidadeConvertida'
      Precision = 16
    end
    object cdsEditPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
    end
  end
  object dsEdits: TDataSource
    DataSet = cdsEdit
    Left = 781
    Top = 247
  end
  object cxEditRepository1: TcxEditRepository
    Left = 284
    Top = 353
    PixelsPerInch = 96
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = Action1
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
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
  object ActionList1: TActionList
    Left = 504
    Top = 360
    object Action1: TAction
      Caption = 'ActInserir'
      OnExecute = Action1Execute
    end
    object actdelete: TAction
      Caption = 'actdelete'
      OnExecute = actdeleteExecute
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
    Left = 492
    Top = 108
  end
end
