inherited frmProdutoSemPedido: TfrmProdutoSemPedido
  Caption = 'Produ'#231#227'o sem pedidos'
  ClientHeight = 566
  ClientWidth = 960
  ExplicitWidth = 968
  ExplicitHeight = 593
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
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
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
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = Action1
          Default = True
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          Kind = bkGlyph
        end
        item
          Action = actdelete
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            030334020231FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            28000028FF00FFFF00FFFF00FF07074201018901018B030336FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000028000081000086000028FF00FF0F0F5301018C
            02029002029002029005053CFF00FFFF00FFFF00FFFF00FF01012C0000820000
            86000084000086000028151460010190020293030392030393030393080842FF
            00FFFF00FF040337000087000088000083000086000082000028FF00FF19186B
            0202950303970404970303970303960B0A4A09094502028C01018E0000880000
            8800008301012FFF00FFFF00FFFF00FF1D1D7403039A04049C05059A04049A04
            049703039503039302028F01018E00008805053BFF00FFFF00FFFF00FFFF00FF
            FF00FF22227F05059F05059F05059D05059C04049803039603039302028C0B0B
            4AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2727890404A30606A006
            069E05059C04049803039513135DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF2E2F9A0A0AA90707A40505A004049D04049A0303961A196DFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3A3AB12D2DBC2B2BBA2222B416
            16AC0E0EA507079E0303980202931E1F76FF00FFFF00FFFF00FFFF00FFFF00FF
            4544C72B2BBF2D2DBD2D2DBC2D2DBA2D2DB82B2BB62424AF1D1DA71616A11111
            9C232381FF00FFFF00FFFF00FF4F4FDC2B2BC02D2DBF2E2EC02C2CBC2D2DBB3E
            3EB83A3BB22828B12828AD2626AA2525A72323A528288BFF00FF5656EA2B2BBB
            2C2CBC2E2EC02D2DBD2D2DBD4849CEFF00FFFF00FF4040BC2626AD2323A92323
            A52121A32020A02D2D965858EE2D2DBC2B2BBA2C2CBB2D2DBD5151E1FF00FFFF
            00FFFF00FFFF00FF4444C62323A92222A52020A31F1F9D3535A6FF00FF5858EE
            2E2EBD2D2DBA5858EEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4849CF2222
            A42020A04041BDFF00FFFF00FFFF00FF5858EE5858EEFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF4D4DD84A4AD3FF00FFFF00FF}
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
