inherited frmDemandaProducao: TfrmDemandaProducao
  Caption = 'PCP Demanda'
  ClientHeight = 582
  ClientWidth = 1164
  WindowState = wsMaximized
  OnActivate = FormActivate
  ExplicitWidth = 1180
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1164
    Height = 505
    ExplicitWidth = 1164
    ExplicitHeight = 505
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1156
      ExplicitHeight = 477
      object spl1: TSplitter [0]
        Left = 0
        Top = 333
        Width = 1156
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 321
        ExplicitWidth = 15
      end
      inherited pnlControle: TPanel
        Width = 1156
        Height = 89
        ExplicitWidth = 1156
        ExplicitHeight = 89
        inherited pnlFiltro: TPanel
          Width = 1156
          Height = 89
          ExplicitWidth = 1156
          ExplicitHeight = 89
          inherited pnlpn1: TPanel
            Width = 1156
            Height = 89
            ExplicitWidth = 1156
            ExplicitHeight = 89
            DesignSize = (
              1156
              89)
            inherited btnPesquisa: TSpeedButton
              Left = 1063
              ExplicitLeft = 1011
            end
            inherited btnLimpar: TSpeedButton
              Left = 1063
              ExplicitLeft = 1011
            end
            object edPesquisa: TLabeledEdit
              Left = 9
              Top = 20
              Width = 313
              Height = 21
              CharCase = ecUpperCase
              EditLabel.Width = 300
              EditLabel.Height = 13
              EditLabel.Caption = 'Pesquisa Pedido, produto, refer'#234'ncia ou descri'#231#227'o do produto '
              TabOrder = 0
              OnChange = edPesquisaChange
              OnKeyPress = edPesquisaKeyPress
            end
            object chkNaoRecebido: TCheckBox
              Left = 8
              Top = 48
              Width = 355
              Height = 17
              Caption = 'Mostrar pedidos n'#227'o encaminhados para programa'#231#227'o'
              TabOrder = 1
              OnClick = chkNaoRecebidoClick
            end
            object Data: TGroupBox
              Left = 440
              Top = 7
              Width = 505
              Height = 66
              Caption = 'Data'
              TabOrder = 2
              object Ate: TLabel
                Left = 376
                Top = 29
                Width = 17
                Height = 13
                Caption = 'Ate'
              end
              object Label1: TLabel
                Left = 253
                Top = 29
                Width = 13
                Height = 13
                Caption = 'De'
              end
              object DataFim: TJvDateEdit
                Left = 401
                Top = 26
                Width = 87
                Height = 21
                ShowNullDate = False
                TabOrder = 0
              end
              object DataIni: TJvDateEdit
                Left = 272
                Top = 26
                Width = 98
                Height = 21
                ShowNullDate = False
                TabOrder = 1
              end
              object radPedido: TRadioButton
                Left = 16
                Top = 27
                Width = 49
                Height = 17
                Caption = 'Pedido'
                TabOrder = 2
                OnClick = TipoData
              end
              object RadEntrega: TRadioButton
                Left = 88
                Top = 27
                Width = 73
                Height = 17
                Caption = 'Entrega'
                TabOrder = 3
              end
              object radAjustada: TRadioButton
                Left = 167
                Top = 27
                Width = 73
                Height = 17
                Caption = 'Ajustada'
                TabOrder = 4
              end
            end
            object chkFinalizados: TCheckBox
              Left = 300
              Top = 47
              Width = 135
              Height = 17
              Caption = 'N'#227'o mostrar conclu'#237'dos'
              Checked = True
              State = cbChecked
              TabOrder = 3
              OnClick = chkNaoRecebidoClick
            end
            object chkCancelados: TCheckBox
              Left = 9
              Top = 69
              Width = 184
              Height = 17
              Caption = 'N'#227'o mostrar pedidos cancelados'
              Checked = True
              State = cbChecked
              TabOrder = 4
              OnClick = chkNaoRecebidoClick
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Top = 89
        Width = 1156
        Height = 244
        ExplicitLeft = -3
        ExplicitTop = 87
        ExplicitWidth = 1156
        ExplicitHeight = 244
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = cxgrd1DBTableView1NavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              ImageIndex = 1
            end
            item
              ImageIndex = 0
            end>
          Navigator.Buttons.Images = cxImageList1
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Width = 40
          FilterBox.CustomizeDialog = False
          FilterBox.Visible = fvNever
          OnCanFocusRecord = cxgrd1DBTableView1CanFocusRecord
          OnCanSelectRecord = cxgrd1DBTableView1CanSelectRecord
          OnEditing = cxgrd1DBTableView1Editing
          DataController.DataSource = dsFicha
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER_ITENS'
          DataController.MasterKeyFieldNames = 'PRD_REFER'
          DataController.Options = [dcoAssignMasterDetailKeys]
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxgrd1DBTableView1PRD_DESCRI
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 40
          object cxgrd1DBTableView1DEP_SITUACAO: TcxGridDBColumn
            Caption = '**'
            DataBinding.FieldName = 'DEP_SITUACAO'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
          end
          object cxgrd1DBTableView1PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
            Options.Filtering = False
            Width = 78
          end
          object cxgrd1DBTableView1DEP_GERASUBORDENS: TcxGridDBColumn
            Caption = 'Gerar Subordens'
            DataBinding.FieldName = 'DEP_GERASUBORDENS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Properties.OnChange = cxgrd1DBTableView1DEP_GERASUBORDENSPropertiesChange
            Options.Filtering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 60
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Options.Filtering = False
            Width = 306
          end
          object cxgrd1DBTableView1PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Width = 25
          end
          object cxgrd1DBTableView1PRD_UND: TcxGridDBColumn
            Caption = 'UND'
            DataBinding.FieldName = 'PRD_UND'
          end
          object cxgrd1DBTableView1FTI_UC: TcxGridDBColumn
            Caption = 'Consumo'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
            Options.Filtering = False
            Width = 85
          end
          object cxgrd1DBTableView1UC_TOTAL: TcxGridDBColumn
            Caption = 'Consumo Total'
            DataBinding.FieldName = 'UC_TOTAL'
          end
          object cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn
            Caption = 'Estoque dispon'#237'vel'
            DataBinding.FieldName = 'ESTOQUEDISPONIVEL'
            Options.Editing = False
            Options.Filtering = False
            Width = 78
          end
          object cxgrd1DBTableView1DEP_QTDE_ESTOQUE: TcxGridDBColumn
            Caption = 'Usar estoque'
            DataBinding.FieldName = 'DEP_QTDE_ESTOQUE'
            Options.Filtering = False
            Styles.OnGetContentStyle = cxgrd1DBTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle
            Styles.Header = cxStyle2
            Width = 65
          end
          object cxgrd1DBTableView1QTDEPRD: TcxGridDBColumn
            Caption = 'Quantidade Produ'#231#227'o'
            DataBinding.FieldName = 'QTDEPRD'
            Options.Filtering = False
            Styles.OnGetContentStyle = cxgrd1DBTableView1QTDEPRDStylesGetContentStyle
            Styles.Header = cxStyle2
            Width = 93
          end
          object cxgrd1DBTableView1DTENTREGA: TcxGridDBColumn
            Caption = 'Data entrega'
            DataBinding.FieldName = 'DTENTREGA'
            Options.Filtering = False
            Styles.OnGetContentStyle = cxgrd1DBTableView1DTENTREGAStylesGetContentStyle
            Styles.Header = cxStyle2
          end
          object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
          end
          object cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PED_CODIGO'
            Visible = False
          end
          object cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn
            Caption = 'Ordem'
            DataBinding.FieldName = 'IOP_NORDEM'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxgrd1DBTableView1PTI_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PTI_CODIGO'
            Visible = False
          end
          object cxgrd1DBTableView1PTI_DESCRI: TcxGridDBColumn
            DataBinding.FieldName = 'PTI_DESCRI'
            Visible = False
          end
          object cxgrd1DBTableView1DEP_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'DEP_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1FTI_REGISTRO: TcxGridDBColumn
            DataBinding.FieldName = 'FTI_REGISTRO'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [1]
          PopupMenu = mDemanda
          OnDblClick = cxgrd1DBBandedTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.CustomizeDialog = False
          OnEditing = cxgrd1DBBandedTableView1Editing
          OnFocusedRecordChanged = cxgrd1DBBandedTableView1FocusedRecordChanged
          OnSelectionChanged = cxgrd1DBBandedTableView1SelectionChanged
          DataController.DataSource = dsBusca
          DataController.Filter.OnGetValueList = cxgrd1DBBandedTableView1DataControllerFilterGetValueList
          DataController.Options = [dcoAssignMasterDetailKeys, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Qtde ###'
              Kind = skCount
              Position = spFooter
              FieldName = 'PED_CODIGO'
              Column = cxgrd1DBBandedTableView1PED_CODIGO
            end
            item
              Format = 'Peso ###,###.##'
              Kind = skSum
              Position = spFooter
              Column = cxgrd1DBBandedTableView1PESO
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ' Quantidade ###'
              Kind = skCount
              FieldName = 'PED_CODIGO'
              Column = cxgrd1DBBandedTableView1PED_CODIGO
              DisplayText = 'Quantidade'
            end
            item
              Format = ' Peso ###,###.00'
              Kind = skSum
              FieldName = 'PESO'
              Column = cxgrd1DBBandedTableView1PESO
              DisplayText = 'Total'
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanding = cxgrd1DBBandedTableView1DataControllerDetailExpanding
          DateTimeHandling.Filters = [dtfRelativeWeeks, dtfMonths]
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxgrd1DBBandedTableView1IOP_NORDEM
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.BandMoving = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderHeight = 45
          OptionsView.BandCaptionsInColumnAlternateCaption = True
          OptionsView.BandHeaderLineCount = 2
          Bands = <
            item
              Caption = 'Pedidos'
              FixedKind = fkLeft
              Width = 481
            end
            item
              Caption = 'Produto'
            end
            item
            end
            item
              Caption = 'Centro de Custo'
            end>
          object cxgrd1DBBandedTableView1MARCADO: TcxGridDBBandedColumn
            Caption = '*'
            DataBinding.FieldName = 'MARCADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.DisplayGrayed = 'False'
            Properties.FullFocusRect = True
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnChange = cxgrd1DBBandedTableView1MARCADOPropertiesChange
            Properties.OnEditValueChanged = cxgrd1DBBandedTableView1MARCADOPropertiesEditValueChanged
            Width = 44
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
            Options.Editing = False
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1NOTA_FISCAL: TcxGridDBBandedColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NOTA_FISCAL'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1ENF_ENTRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENF_ENTRADA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
            Width = 104
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DEP_SITUACAO: TcxGridDBBandedColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'DEP_SITUACAO'
            Options.Editing = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 241
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn
            Caption = 'UND'
            DataBinding.FieldName = 'PRD_UND'
            Width = 37
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1Total: TcxGridDBBandedColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taRightJustify
            HeaderGlyphAlignmentHorz = taRightJustify
            Options.Editing = False
            Width = 103
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1ACO_NOME: TcxGridDBBandedColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'ACO_NOME'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrd1DBBandedTableView1ACO_NOMEPropertiesButtonClick
            Width = 125
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PESO: TcxGridDBBandedColumn
            Caption = 'Peso'
            DataBinding.FieldName = 'PESO'
            Width = 119
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PED_DTENTRADA: TcxGridDBBandedColumn
            Caption = 'Data do pedido'
            DataBinding.FieldName = 'PED_DTENTRADA'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 77
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRF_QTDE: TcxGridDBBandedColumn
            Caption = 'Quantidade solicitada'
            DataBinding.FieldName = 'PRF_QTDE'
            Options.Editing = False
            Options.Grouping = False
            Width = 103
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableViewQTDEConcluida: TcxGridDBBandedColumn
            Caption = 'Quantidade Concluida'
            DataBinding.FieldName = 'IOP_QTDE_CONCLUIDA'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 74
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DTENTREGA: TcxGridDBBandedColumn
            Caption = 'Data entrega'
            DataBinding.FieldName = 'DTENTREGA'
            Options.Editing = False
            Styles.OnGetContentStyle = cxgrd1DBBandedTableView1DTENTREGAStylesGetContentStyle
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn
            Caption = 'Iniciado produ'#231#227'o'
            DataBinding.FieldName = 'IOP_DATA_INICIO'
            Width = 86
            Position.BandIndex = 2
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SALDOESTOQUE: TcxGridDBBandedColumn
            Caption = 'Estoque dispon'#237'vel'
            DataBinding.FieldName = 'ESTOQUEDISPONIVEL'
            Options.Editing = False
            Width = 67
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1QTDEPRD: TcxGridDBBandedColumn
            Caption = 'Quantidade Produ'#231#227'o'
            DataBinding.FieldName = 'QTDEPRD'
            Styles.Header = cxStyle1
            Width = 76
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DEP_QTDE_ESTOQUE: TcxGridDBBandedColumn
            Caption = 'Usar estoque'
            DataBinding.FieldName = 'DEP_QTDE_ESTOQUE'
            Styles.OnGetContentStyle = cxgrd1DBBandedTableView1DEP_QTDE_ESTOQUEStylesGetContentStyle
            Styles.Header = cxStyle2
            Width = 68
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DEP_QTDE_PROGRA: TcxGridDBBandedColumn
            Caption = 'Quantidade ordem programada'
            DataBinding.FieldName = 'DEP_QTDE_PROGRA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrd1DBBandedTableView1DEP_QTDE_PROGRAPropertiesButtonClick
            Styles.OnGetContentStyle = cxgrd1DBBandedTableView1DEP_QTDE_PROGRAStylesGetContentStyle
            Styles.Header = cxStyle2
            Width = 82
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OPA_SEQUENCIAL: TcxGridDBBandedColumn
            Caption = 'Seq'#252#234'ncia Programa'
            DataBinding.FieldName = 'OPA_SEQUENCIAL'
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DEP_DATA_AJUSTADA: TcxGridDBBandedColumn
            Caption = 'Data Ajustada'
            DataBinding.FieldName = 'DEP_DATA_AJUSTADA'
            Styles.Header = cxStyle2
            Width = 65
            Position.BandIndex = 2
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn
            Caption = 'Cod.'
            DataBinding.FieldName = 'CLI_CODIGO'
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_RAZAO'
            Options.Editing = False
            Width = 296
            Position.BandIndex = 2
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_CIDADE: TcxGridDBBandedColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CLI_CIDADE'
            Position.BandIndex = 2
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_UF: TcxGridDBBandedColumn
            Caption = 'UF'
            DataBinding.FieldName = 'CLI_UF'
            Position.BandIndex = 2
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1REP_NOME: TcxGridDBBandedColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'REP_NOME'
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn
            Caption = 'Ordem'
            DataBinding.FieldName = 'IOP_NORDEM'
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DEP_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEP_CODIGO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRF_REGISTRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRF_REGISTRO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRF_PESOKG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRF_PESOKG'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRF_PRECO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRF_PRECO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn
            Caption = 'Fornecedor'
            DataBinding.FieldName = 'FOR_RAZAO'
            Width = 209
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn
            Caption = 'Data Conclus'#227'o'
            DataBinding.FieldName = 'IOP_DATA_CONCLUSAO'
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PCX_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'PCX_CODIGO'
            Width = 42
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PCX_DESCRI: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PCX_DESCRI'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBBandedTableView1
          object cxlevelprodutoIntermediario: TcxGridLevel
            GridView = cxgrd1DBTableView1
            OnGetGridView = cxlevelprodutoIntermediarioGetGridView
          end
        end
      end
      object pnlhistorico: TPanel
        Left = 0
        Top = 336
        Width = 1156
        Height = 141
        Align = alBottom
        Caption = 'pnhistorico'
        TabOrder = 2
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1154
          Height = 139
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsHistorico
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1HDE_DATAMVTO: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'HDE_DATAMVTO'
              Width = 107
            end
            object cxGrid1DBTableView1HDE_DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'HDE_DESCRICAO'
              Width = 605
            end
            object cxGrid1DBTableView1USU_NOME: TcxGridDBColumn
              Caption = 'Usu'#225'rio'
              DataBinding.FieldName = 'USU_NOME'
            end
            object cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'USU_CODIGO'
              Visible = False
            end
            object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'PRD_CODIGO'
              Visible = False
            end
            object cxGrid1DBTableView1HDE_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'HDE_CODIGO'
              Visible = False
            end
            object cxGrid1DBTableView1DEP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'DEP_CODIGO'
              Visible = False
            end
            object cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'PED_CODIGO'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 546
    Width = 1164
    Visible = False
    ExplicitTop = 546
    ExplicitWidth = 1164
    DesignSize = (
      1164
      36)
    inherited btnSelect: TSpeedButton
      Left = 1000
      ExplicitLeft = 1120
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1164
    ExplicitWidth = 1164
    DesignSize = (
      1164
      41)
    inherited btnExclui: TSpeedButton
      Left = 135
      Hint = 'Estorna demanda, enviando novamente para pedido'
      Caption = 'Estornar'
      OnClick = btnExcluiClick
      ExplicitLeft = 135
    end
    inherited btnNovo: TSpeedButton
      Left = 0
      Top = -2
      Width = 135
      Height = 41
      Hint = 'Enviar demanda para produ'#231#227'o'
      Caption = 'Enviar para Programa'#231#227'o'
      Glyph.Data = {00000000}
      ExplicitLeft = 0
      ExplicitTop = -2
      ExplicitWidth = 135
      ExplicitHeight = 41
    end
    inherited btnConsulta: TSpeedButton
      Left = 312
      ExplicitLeft = 312
    end
    inherited btnEdita: TSpeedButton
      Left = 224
      Visible = False
      ExplicitLeft = 224
    end
    inherited btnFechar: TSpeedButton
      Left = 1100
      ExplicitLeft = 1220
    end
    inherited btnExtra: TSpeedButton
      Left = 404
      Top = 1
      ExplicitLeft = 404
      ExplicitTop = 1
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1000
      ExplicitLeft = 1120
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 900
      DropDown = pmImpressao
      ExplicitLeft = 1020
    end
    object btnPrevisao: TButton
      Left = 750
      Top = 1
      Width = 149
      Height = 38
      Anchors = [akTop, akRight]
      Caption = 'Previs'#227'o de compra'
      TabOrder = 0
      OnClick = btnPrevisaoClick
    end
    object btnIncluir: TButton
      Left = 626
      Top = 0
      Width = 123
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Incluir no PCP'
      TabOrder = 1
      OnClick = btnIncluirClick
    end
    object Button1: TButton
      Left = 507
      Top = 0
      Width = 123
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Programa'#231#227'o Produ'#231#227'o'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 368
    Top = 48
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 432
    Top = 72
  end
  inherited qAux: TFDQuery
    Left = 867
    Top = 256
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 584
    Top = 80
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 192
    Top = 256
  end
  inherited FDTransac: TFDTransaction
    Left = 400
    Top = 104
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Top = 224
  end
  inherited qAux2: TFDQuery
    Left = 299
    Top = 247
  end
  inherited qAux3: TFDQuery
    Left = 347
    Top = 231
  end
  inherited qAux4: TFDQuery
    Top = 111
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 59
    Top = 272
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 128
    Top = 256
  end
  inherited dsBusca: TDataSource
    Left = 516
    Top = 136
  end
  inherited cdsBusca: TFDQuery
    BeforePost = cdsBuscaBeforePost
    AfterScroll = cdsBuscaAfterScroll
    BeforeRefresh = cdsBuscaBeforeRefresh
    AfterRefresh = cdsBuscaAfterRefresh
    OnCalcFields = cdsBuscaCalcFields
    SQL.Strings = (
      
        'SELECT  CASE WHEN pr.PRD_UND  = '#39'KG'#39' THEN it.PRF_QTDE else it.PR' +
        'F_PESOKG END AS PESO, ac.ACO_NOME ,'
      #9'IT.PRF_PRECO * IT.PRF_QTDE AS Total,'
      #9'IT.PRF_REGISTRO,'
      #9'dpr.DEP_CODIGO,'
      #9'IT.PRD_REFER,'
      #9'0 Marcado,'
      #9'it.PRF_PRDDESCRI AS PRD_DESCRI,'
      #9'pr.prd_und,'
      #9'PE.PED_CODIGO,'
      #9'PE.PED_DTENTRADA,'
      #9'IT.PRF_QTDE,'
      #9'DPR.ENF_REGISTRO,'
      #9'COALESCE(DEP_DATA_ENTREGA,'
      #9'CAST(PE.PED_DTSAIDA AS DATE)) DTENTREGA,'
      #9'CASE'
      #9#9'WHEN PED_SITUACAO = '#39'C'#39' THEN '#39'L'#39
      #9#9'ELSE COALESCE(DEP_SITUACAO,'
      #9#9#39'N'#39')'
      #9'END DEP_SITUACAO,'
      #9'CL.CLI_CODIGO,'
      #9'CL.CLI_RAZAO,'
      #9'cl.CLI_UF,'
      #9'CLI_CIDADE,'
      #9've.REP_NOME,'
      #9'DEP_QTDE_ESTOQUE,'
      
        #9'(SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA), 0) FROM kard' +
        'ex_almox_saldo kas WHERE kas.PRD_CODIGO = it.PRD_CODIGO ) Estoqu' +
        'eDisponivel,'
      #9'pr.prd_codigo,'
      #9'PRF_PESOKG,'
      #9'PRF_PRECO,'
      #9'COALESCE(DEP_QTDE_PROGRA, 1) DEP_QTDE_PROGRA,'
      #9'COALESCE(OPA_QTDE_PRODUZIR,'
      #9#9'CASE'
      #9#9#9'WHEN it.PRF_QTDE_CONVERTIDA IS NULL THEN it.PRF_QTDE'
      #9#9#9'ELSE it.PRF_QTDE_CONVERTIDA'
      #9#9'END ) QTDEPRD,'
      
        #9'(SELECT MIN(iop.IOP_NORDEM) FROM ITEM_ORDEMPRODUCAO iop WHERE I' +
        'op.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_CODIGO' +
        ') iop_nordem ,'
      
        #9'(SELECT MIN(iop.iop_data_inicio) FROM ITEM_ORDEMPRODUCAO iop WH' +
        'ERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PRD_C' +
        'ODIGO) iop_data_inicio,'
      
        #9'(SELECT MIN(iop.IOP_DATA_CONCLUSAO) FROM ITEM_ORDEMPRODUCAO iop' +
        ' WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PR' +
        'D_CODIGO) IOP_DATA_CONCLUSAO,'
      
        #9'(SELECT MIN(iop.IOP_QTDE_CONCLUIDA) FROM ITEM_ORDEMPRODUCAO iop' +
        #9'WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CODIGO = iop.PR' +
        'D_CODIGO AND (opa.iop_codigo = iop.iop_codigo OR opa.OPA_SEQUENC' +
        'IAL IS NULL ) ) IOP_QTDE_CONCLUIDA,'
      #9'PCX.PCX_CODIGO,'
      #9'PCX_DESCRI,'
      
        #9'COALESCE(OPA_DATA_AJUSTADA, DEP_DATA_AJUSTADA, PE.PED_DTSAIDA) ' +
        'DEP_DATA_AJUSTADA,'
      #9'opa.OPA_SEQUENCIAL,'
      #9'OPV.opv_pedidointerno, '
      #9'e.ENF_ENTRADA'
      'FROM'
      #9'PED0000 pe'
      
        'JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PE.OPV_CODIGO AND OPV.OPV_' +
        'PRODUCAO = '#39'S'#39')'
      'JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO ) '
      
        'JOIN PED_IT01 IT ON'#9'(IT.PED_CODIGO = PE.PED_CODIGO AND IT.EMP_CO' +
        'DIGO = PE.EMP_CODIGO)'
      
        'LEFT JOIN ACABAMENTO_CORES ac ON (ac.ACO_CODIGO = it.ACO_CODIGO ' +
        ') '
      'JOIN PRD0000 PR ON (IT.PRD_CODIGO = PR.PRD_CODIGO) '
      
        'JOIN DEMANDA_PRODUCAO DPR ON (DPR.PED_CODIGO = it.PED_CODIGO AND' +
        ' it.EMP_CODIGO = DPR.EMP_CODIGO AND it.PRF_REGISTRO = dpr.PRF_RE' +
        'GISTRO)'
      'LEFT JOIN ENF_IT01 ei ON (ei.ENF_REGISTRO = dpr.ENF_REGISTRO)'
      
        'LEFT JOIN ENF0001 e ON (e.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER ' +
        'AND e.FOR_CODIGO = ei.FOR_CODIGO)'
      'LEFT JOIN REP0000 ve ON (ve.REP_CODIGO = pe.REP_CODIGO)'
      
        'LEFT JOIN ORDEMPRODUCAO OP ON ( OP.PED_CODIGO = PE.PED_CODIGO AN' +
        'D OP.EMP_CODIGO = PE.EMP_CODIGO )'
      
        'LEFT JOIN ORDEM_PROGRAMADA opa ON (opa.PED_CODIGO = op.PED_CODIG' +
        'O'
      
        #9#9'AND opa.PRD_CODIGO = (SELECT FIRST 1 PRD_CODIGO FROM ITEM_ORDE' +
        'MPRODUCAO iop WHERE Iop.OPR_CODIGO = OP.OPR_CODIGO AND IT.PRD_CO' +
        'DIGO = iop.PRD_CODIGO ))'
      'LEFT JOIN PCX0000 PCX ON (PE.PCX_CODIGO = PCX.PCX_CODIGO )'
      
        'WHERE NOT EXISTS (SELECT * FROM ORDEMPRODUCAO OP WHERE OP.PED_CO' +
        'DIGO = PE.PED_CODIGO AND OP.EMP_CODIGO = PE.EMP_CODIGO AND OPR_S' +
        'TATUS = '#39'F'#39')'
      #9'AND Pe.PED_DTENTRADA >= '#39'2023-01-01'#39
      #9'AND pe.emp_codigo = '#39'001'#39
      #9'AND DEP_SITUACAO <> '#39'C'#39
      #9'AND PED_SITUACAO <> '#39'C'#39
      'ORDER BY'
      #9'PED_DTENTRADA,'
      #9'CASE'
      #9#9'DEP_SITUACAO WHEN '#39'R'#39' THEN 1'
      #9#9'WHEN '#39'I'#39' THEN 2'
      #9#9'WHEN '#39'E'#39' THEN 3'
      #9#9'WHEN '#39'C'#39' THEN 4'
      #9#9'ELSE 5'
      #9'END')
    Left = 451
    Top = 128
    object cdsBuscaMARCADO: TIntegerField
      FieldName = 'MARCADO'
      Origin = 'MARCADO'
      ProviderFlags = []
      Required = True
    end
    object cdsBuscaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsBuscaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsBuscaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = []
      Required = True
      OnGetText = cdsBuscaPED_CODIGOGetText
      Size = 7
    end
    object cdsBuscaPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
      Origin = 'PED_DTENTRADA'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscaPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      ProviderFlags = []
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscaDEP_SITUACAO: TStringField
      FieldName = 'DEP_SITUACAO'
      Origin = 'DEP_SITUACAO'
      ProviderFlags = []
      OnGetText = cdsBuscaDEP_SITUACAOGetText
      Size = 1
    end
    object cdsBuscaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      Required = True
      Size = 5
    end
    object cdsBuscaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 70
    end
    object cdsBuscaESTOQUEDISPONIVEL: TFMTBCDField
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = []
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscaREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Origin = 'REP_NOME'
      ProviderFlags = []
      Size = 35
    end
    object cdsBuscaIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
      ProviderFlags = []
    end
    object cdsBuscaDEP_QTDE_ESTOQUE: TFMTBCDField
      FieldName = 'DEP_QTDE_ESTOQUE'
      Origin = 'DEP_QTDE_ESTOQUE'
      ProviderFlags = []
      OnChange = cdsBuscaDEP_QTDE_ESTOQUEChange
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscaQTDEPRD: TFMTBCDField
      FieldName = 'QTDEPRD'
      Origin = 'QTDEPRD'
      ProviderFlags = []
      OnGetText = cdsBuscaQTDEPRDGetText
      OnSetText = cdsBuscaQTDEPRDSetText
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsBuscaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      Origin = 'DTENTREGA'
      ProviderFlags = []
      OnChange = cdsBuscaDTENTREGAChange
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscaDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object cdsBuscaPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object cdsBuscaPRF_PESOKG: TFMTBCDField
      FieldName = 'PRF_PESOKG'
      Origin = 'PRF_PESOKG'
      Precision = 18
      Size = 5
    end
    object cdsBuscaPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Origin = 'PRF_PRECO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_DATA_INICIO: TSQLTimeStampField
      FieldName = 'IOP_DATA_INICIO'
      Origin = 'IOP_DATA_INICIO'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscaDEP_QTDE_PROGRA: TIntegerField
      FieldName = 'DEP_QTDE_PROGRA'
      Origin = 'DEP_QTDE_PROGRA'
      ProviderFlags = []
      OnChange = cdsBuscaDEP_QTDE_PROGRAChange
    end
    object cdsBuscaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsBuscaIOP_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'IOP_DATA_CONCLUSAO'
    end
    object cdsBuscaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsBuscaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsBuscaPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Origin = 'PCX_CODIGO'
      Size = 3
    end
    object cdsBuscaPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Origin = 'PCX_DESCRI'
      Size = 25
    end
    object cdsBuscaDEP_DATA_AJUSTADA: TSQLTimeStampField
      FieldName = 'DEP_DATA_AJUSTADA'
      Origin = 'DEP_DATA_AJUSTADA'
      ProviderFlags = []
      OnChange = cdsBuscaDEP_DATA_AJUSTADAChange
    end
    object cdsBuscaOPA_SEQUENCIAL: TIntegerField
      FieldName = 'OPA_SEQUENCIAL'
      Origin = 'OPA_SEQUENCIAL'
    end
    object cdsBuscaIOP_QTDE_CONCLUIDA: TFMTBCDField
      FieldName = 'IOP_QTDE_CONCLUIDA'
      Precision = 15
    end
    object cdsBuscaopv_pedidointerno: TStringField
      FieldName = 'opv_pedidointerno'
      Size = 1
    end
    object cdsBuscaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 10
    end
    object cdsBuscaNOTA_FISCAL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOTA_FISCAL'
      Size = 10
      Calculated = True
    end
    object cdsBuscaENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object cdsBuscaFOR_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'FOR_RAZAO'
      Size = 70
      Calculated = True
    end
    object cdsBuscaACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      Origin = 'ACO_NOME'
      Size = 100
    end
    object cdsBuscaPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaENF_ENTRADA: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'ENF_ENTRADA'
      Origin = 'ENF_ENTRADA'
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 1024
    Top = 32
    object DemandadeMolas1: TMenuItem
      Caption = 'Demanda de Molas'
      OnClick = DemandadeMolas1Click
    end
  end
  inherited PopupMenu2: TPopupMenu
    Left = 752
  end
  inherited frxPadrao: TfrxReport
    Left = 900
    Top = 169
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited SaveDialog1: TSaveDialog
    Left = 252
    Top = 289
  end
  inherited qUsuMenu: TFDQuery
    Top = 296
  end
  inherited cdsBuscaDetalhes: TFDQuery
    SQL.Strings = (
      'SELECT OPA_DATA_ENTREGA, OPA_QTDE_PRODUZIR FROM ORDEM_PROGRAMADA'
      'WHERE PED_CODIGO = '#39'005889'#39
      'AND EMP_CODIGO = '#39'001'#39
      'AND PRD_CODIGO = '#39'03482'#39
      'ORDER BY OPA_SEQUENCIAL')
    Left = 1163
    Top = 160
    object cdsBuscaDetalhesOPA_DATA_ENTREGA: TSQLTimeStampField
      FieldName = 'OPA_DATA_ENTREGA'
      Origin = 'OPA_DATA_ENTREGA'
      Required = True
    end
    object cdsBuscaDetalhesOPA_QTDE_PRODUZIR: TFMTBCDField
      FieldName = 'OPA_QTDE_PRODUZIR'
      Origin = 'OPA_QTDE_PRODUZIR'
      Required = True
      Precision = 18
      Size = 5
    end
  end
  inherited dsBuscaDetalhes: TDataSource
    Left = 588
    Top = 144
  end
  inherited coCalcula: TACBrCalculadora
    Left = 100
    Top = 297
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 504
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object cdsFicha: TFDQuery
    BeforePost = cdsFichaBeforePost
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT ft.PRD_REFER, PRD_REFER_ITENS, pr.PRD_DESCRI , FTI_UC,  D' +
        'EP_DATA_ENTREGA DTENTREGA, '
      
        ' COALESCE(DEP_SITUACAO, '#39'R'#39') DEP_SITUACAO, iop.IOP_QUANTIDADE QT' +
        'DEPRD, iop.IOP_NORDEM,DEP_QTDE_ESTOQUE, op.PED_CODIGO,'
      
        ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kard' +
        'ex_almox_saldo kas WHERE kas.PRD_CODIGO = pr.PRD_CODIGO ) Estoqu' +
        'eDisponivel, pr.prd_codigo,'
      
        '  pr.PTI_CODIGO, tp.PTI_DESCRI, tp.PTI_SIGLA, pr.PRD_UND, DEP_GE' +
        'RASUBORDENS'
      ' FROM FTC_IT01 ft'
      ' join prd0000 Pr on (ft.prd_refer_itens = pr.prd_refer)'
      ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO )'
      
        ' LEFT JOIN DEMANDA_PRODUCAO dpr ON (dpr.FTI_REGISTRO = ft.FTI_RE' +
        'GISTRO )'
      
        ' LEFT JOIN ORDEMPRODUCAO OP  ON (   OP.EMP_CODIGO = '#39'001'#39' AND op' +
        '.PED_CODIGO = '#39'005864'#39' ) '
      
        ' LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CO' +
        'DIGO AND pr.prd_codigo = iop.PRD_CODIGO) '
      'WHERE ft.PRD_REFER = '#39'190113'#39' ')
    Left = 731
    Top = 456
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'MARCADO'
      Origin = 'MARCADO'
      ProviderFlags = []
      Required = True
    end
    object cdsFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsFichaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsFichaDTENTREGA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTENTREGA'
      Origin = 'DEP_DATA_ENTREGA'
      ProviderFlags = [pfInWhere]
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsFichaDEP_QTDE_ESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEP_QTDE_ESTOQUE'
      Origin = 'DEP_QTDE_ESTOQUE'
      ProviderFlags = [pfInWhere]
      OnChange = cdsFichaDEP_QTDE_ESTOQUEChange
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsFichaQTDEPRD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDEPRD'
      Origin = 'IOP_QUANTIDADE'
      ProviderFlags = [pfInWhere]
      OnChange = cdsFichaQTDEPRDChange
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsFichaDEP_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEP_SITUACAO'
      Origin = 'DEP_SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaDEP_SITUACAOGetText
      Size = 1
    end
    object cdsFichaIOP_NORDEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsFichaESTOQUEDISPONIVEL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsFichaPRD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsFichaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object cdsFichaPTI_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_CODIGO'
      Origin = 'PTI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object cdsFichaPTI_DESCRI: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Origin = 'PTI_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsFichaPTI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object cdsFichaPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsFichaUC_TOTAL: TFMTBCDField
      FieldName = 'UC_TOTAL'
    end
    object cdsFichaDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object cdsFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
    end
    object cdsFichaDEP_GERASUBORDENS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEP_GERASUBORDENS'
      Origin = 'DEP_GERASUBORDENS'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
  end
  object dsFicha: TDataSource
    DataSet = cdsFicha
    Left = 788
    Top = 457
  end
  object cdsHistorico: TFDQuery
    AfterOpen = cdsBuscaAfterOpen
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT dh.*, u.USU_NOME FROM DEMANDA_HISTORICO dh'
      'JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)'
      '')
    Left = 35
    Top = 416
    object cdsHistoricoHDE_CODIGO: TIntegerField
      FieldName = 'HDE_CODIGO'
      Origin = 'HDE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHistoricoHDE_DATAMVTO: TSQLTimeStampField
      FieldName = 'HDE_DATAMVTO'
      Origin = 'HDE_DATAMVTO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsHistoricoUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      Required = True
    end
    object cdsHistoricoHDE_DESCRICAO: TStringField
      FieldName = 'HDE_DESCRICAO'
      Origin = 'HDE_DESCRICAO'
      Size = 150
    end
    object cdsHistoricoDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DEP_CODIGO'
      Required = True
    end
    object cdsHistoricoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsHistoricoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 5
    end
    object cdsHistoricoUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 92
    Top = 433
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 1196
    Top = 153
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 7930572
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000005D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000004000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000101760002029F0001017700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0001015B000202990001015A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0002027E000303A1000404A1000404A10002027F00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          630001019A0001019A000202990001015A00FF00FF00FF00FF00FF00FF000303
          84000505A3000505A4000505A4000505A4000505A40003038600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000006C000101
          9B0001019B0001019A0001019A000202990001015A00FF00FF00030381000606
          A5000606A6000707A6000707A6000707A7000707A7000707A60005058C00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000101760000009C000000
          9C0001019B0001019B0001019A0001019A000202990000004000FF00FF000606
          95000808A8000808A9000909A9000909A9000909A9000909A9000808A8000606
          9200FF00FF00FF00FF00FF00FF00FF00FF00020282000303A00002029E000000
          9C0000009C0001019B0001019B0001019A0001015D00FF00FF00FF00FF00FF00
          FF0008089E000A0AAB000A0AAC000B0BAC000A0AAC000A0AAB000A0AAB000909
          AA0007079600FF00FF00FF00FF0004048D000505A4000404A2000303A0000202
          9E0000009C0000009C0001019B0000006500FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000A0AA6000C0CAE000C0CAE000C0CAE000C0CAE000B0BAD000B0B
          AC000A0AAB0008089A00070797000808A7000606A6000505A4000404A2000303
          A00001019E0000009C0000006E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000D0DAD000E0EB1000E0EB1000D0DB0000D0DB0000C0C
          AF000C0CAE000B0BAC000A0AAB000909A9000808A8000606A6000505A4000404
          A2000202A00000007800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000F0FB3000F0FB3000F0FB3000E0EB2000E0E
          B1000D0DB0000C0CAF000B0BAD000A0AAB000909A9000808A8000606A6000505
          A30002028400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF001111B8001010B5001010B4000F0F
          B3000E0EB2000D0DB0000C0CAF000B0BAD000A0AAB000909A9000707A7000404
          8F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001313BD001111B6001111
          B5001010B4000F0FB2000D0DB0000C0CAF000B0BAD000A0AAB0006069900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001515C1001313B8001212
          B7001111B5001010B4000E0EB2000D0DB0000C0CAE000A0AAC0007079D00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF004F4FD3004040C8003131C3002222
          BD001515B8001111B5000F0FB3000E0EB1000D0DAF000B0BAD000A0AAA000606
          9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF005555D7004545CB004545CA004444C9004343
          C8004242C6003535C1002828BC001B1BB6000D0DB0000C0CAE000A0AAB000808
          A90005059700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF005959DB004545CD004545CC004545CB004545CA004444
          C9004242C7004141C5004141C4003F3FC2003E3EC1003434BB002929B6002121
          B2001414AB0010109700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF005B5BDD004646CD004646CD004646CD004545CD004545CB004444
          C9004343C8004D4DD0004A4ACD003F3FC2003E3EC1003D3DBF003C3CBD003A3A
          BB003939B9003838B7002929A400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF005E5EDE004545CD004646CD004747CE004747CE004646CD004545CB004444
          C9005353D600FF00FF00FF00FF004747CA003E3EC1003D3DBF003C3CBD003A3A
          BB003939B9003838B7003636B50027279E00FF00FF00FF00FF00FF00FF005D5D
          DE004545CA004545CC004646CD004747CD004646CD004545CD004545CB005959
          DB00FF00FF00FF00FF00FF00FF00FF00FF004343C7003D3DBF003C3CBD003A3A
          BB003939B9003838B7003636B5003535B20024249900FF00FF006464E5004343
          C9004444CA004545CB004545CC004646CD004545CD004545CC005F5FDF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004040C3003C3CBD003A3A
          BA003939B9003838B6003636B5003535B2003333B1001B1B8A00FF00FF006060
          E1004444C9004545CA004545CB004545CB004545CB006464E300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003C3CBE003A3A
          BA003939B8003737B6003636B4003535B20024249A00FF00FF00FF00FF00FF00
          FF006464E4004343C9004444C9004444C9006767E500FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003838
          B9003838B8003737B5003535B4002828A000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF006767E7004343C8006868E700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003434B3003636B5002B2BA600FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007373F200FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002C2CA800FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
          1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
          1F0092541F0092541F0092541F0092541F0092541F00FF00FF00FF00FF009254
          1F00AC741300AC751500AD751200A27B4A00C6C8C900C6C8C900C8C2B500C5B9
          9E00DED7C800FFFEFC00FFFFFE00FFFFFF00FAF6F400DED7D600C2B7B600A798
          9B00683F0D008B670900A27B4A00AB6F0B00AB6F0B0092541F0092541F00AE6A
          1600AE6A1600AE6A1600AE6A1600A27B4A00B4B9BF00B4B9BF00A69C8300683F
          0D00A69C8300F5F7F800FEFEFF00FFFFFF00FFFFFF00EEECEC00D2CBCD00B6AD
          B200683F0D008B680D00A27B4A00AE6B1800AE6B180092541F0092541F00B162
          1A00B1621A00B1621A00B1621A00A27B4A00B0B4B900B0B4B900683F0D008A60
          08007F5A2C00EEEFF000FAFBFB00FDFDFD00FFFFFF00FBFBFB00E3DFDF00C7C1
          C500683F0D008A640E00A27B4A00B1611A00B1611A0092541F0092541F00B258
          1D00B2581D00B2581D00B2581D00A27B4A00B3B7BC00B3B7BC00683F0D00895C
          09007F5A2C00E8E9EA00F5F6F600FBFBFB00FEFEFE00FFFFFF00F4F2F300D9D5
          D900683F0D00895F0E00A27B4A00B2581D00B2581D0092541F0092541F00AE54
          1D00AE541D00AE541D00AE541D00A27B4A00B7BCC000B7BCC000683F0D008959
          0B007F5A2C00DEE0E100F0F0F100F7F8F800FDFDFD00FFFFFF00FEFEFE00EBE9
          ED00683F0D00885B0F00A27B4A00AE541D00AE541D0092541F0092541F00A552
          1B00A5521B00A5521B00A5521B00A27B4A00BDC2C600BDC2C600A69C8300683F
          0D00A69C8300D1D3D400E8E9E900F2F3F300FAFAFA00FDFDFD00FFFFFF00FBFC
          FE00683F0D0086550F00A27B4A00A4511B00A4511B0092541F0092541F009C4F
          1A009C4F1A009C4F1A009C4F1A00A27B4A00D4DDE400D4DDE400D4DDE400D4DD
          E400D4DDE400D4DDE400E1E6E900F1F5F800FBFFFF00FFFFFF00FFFFFF00FFFF
          FF00683F0D0085500F00A27B4A009C4E1A009C4E1A0092541F0092541F00934C
          1800934C1800934C1800934C180093511D00A27B4A00A27B4A00A27B4A00A27B
          4A00A27B4A00A27B4A00A27B4A00A27B4A00A27B4A00A27B4A00A27B4A00A27B
          4A00A27B4A00A27B4A0094582500934C1800934C180092541F0092541F008A4A
          17008A4A17008A4A17008A4A17008D4E1B008948120088460F008A4812008B49
          13008B4912008A4811008846100087450F0087450E0086440E0086440E008745
          0E008D4D19008E4F1C008B4C19008A4A17008A4A170092541F0092541F00884C
          1600884D1600A87D5600E3DED900E3DED900E3DED900E3DED900E3DED900E3DE
          D900E3DED900E3DED900E3DED900E3DED900E3DED900E3DED900E3DED900E3DE
          D900E3DED900E3DED900B7957600894E1800884C160092541F0092541F008C52
          15008A501000E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED9008E5518008C52140092541F0092541F009058
          15008E551100E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED900925A18009057140092541F0092541F00945D
          1500925A1100E3DED900F5F7F500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00F3F6F300E3DED900955F1800935C140092541F0092541F009861
          1400965F1000E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED900996317009761130092541F0092541F009B67
          140099641000E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED9009C6817009A66130092541F0092541F009E6C
          13009C690F00E3DED900F5F7F500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00F3F6F300E3DED9009F6D16009E6B120092541F0092541F00A170
          12009F6D0F00E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED900A2711600A16F120092541F0092541F00A676
          1500A3730F00E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED900A5741300A4720F0092541F0092541F00B791
          3A00B38C3400E3DED900F5F7F500F3F3EC00F7F7F000FBFBF400FEFEF700FFFF
          F900FFFFFB00FFFFFC00FFFFFC00FFFFFC00FFFFFB00FFFFF800FCFCF600F8F8
          F200F4F4EE00F3F6F300E3DED900B1872C00B186290092541F0092541F00A474
          4C00A4744C002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2F
          A0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2F
          A0002E2FA0002E2FA0002E2FA000A4744C00A4744C0092541F0092541F00FF00
          FF00A4744C002E2FA0002F32BC003738BA003839BD003839BF00393AC100393A
          C1003839C0003839BE003738BB003637B8003637B4003536B0003334AB003233
          A6003233A100292CA4002E2FA000A4744C00FF00FF0092541F0092541F00A474
          4C00A4744C002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2F
          A0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2FA0002E2F
          A0002E2FA0002E2FA0002E2FA000A4744C00A4744C0092541F00FF00FF009254
          1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
          1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
          1F0092541F0092541F0092541F0092541F0092541F00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object mDemanda: TPopupMenu
    Left = 732
    Top = 305
    object Programaoproduofracionada1: TMenuItem
      Caption = 'Programa'#231#227'o produ'#231#227'o fracionada'
      OnClick = Programaoproduofracionada1Click
    end
    object EstruturaFichatcnica1: TMenuItem
      Caption = 'Estrutura Ficha t'#233'cnica'
      OnClick = EstruturaFichatcnica1Click
    end
  end
  object frxLRelatorios: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43878.496829479200000000
    ReportOptions.LastChange = 43994.715720243050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = frxLRelatoriosBeforePrint
    OnGetValue = frxLRelatoriosGetValue
    Left = 1126
    Top = 104
    Datasets = <
      item
        DataSet = frxDBOrdem
        DataSetName = 'Ordem'
      end
      item
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
      end>
    Variables = <>
    Style = <>
    object frxDataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 41.648422730000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
        RowCount = 0
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 537.914038180000000000
          Top = 1.944031820000000000
          Width = 86.113172730000000000
          Height = 15.118120000000000000
          DataField = 'PED_DTENTRADA'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."PED_DTENTRADA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.887753640000000000
          Top = 2.000000000000000000
          Width = 65.397340910000000000
          Height = 15.118120000000000000
          DataField = 'DEP_SITUACAO'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."DEP_SITUACAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 76.488250000000000000
          Top = 2.000000000000000000
          Width = 57.838280910000000000
          Height = 15.118120000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 632.772110000000000000
          Top = 1.000000000000000000
          Width = 79.749536360000000000
          Height = 15.118120000000000000
          DataField = 'PRF_QTDE'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."PRF_QTDE"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 139.315090000000000000
          Top = 2.000000000000000000
          Width = 72.956400910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_REFER"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 490.441250000000000000
          Top = 2.000000000000000000
          Width = 42.720160910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_UND"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 218.685220000000000000
          Top = 2.000000000000000000
          Width = 269.491960910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 720.449290000000000000
          Top = 1.220470000000000000
          Width = 70.995052730000000000
          Height = 15.118120000000000000
          DataField = 'DTENTREGA'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."DTENTREGA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 1.000000000000000000
          Width = 237.294372730000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."CLI_RAZAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.727272730000000000
          Top = 75.632034550000000000
          Width = 67.022263640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 77.704390910000000000
          Top = 75.632034550000000000
          Width = 59.083797270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 487.402288180000000000
          Top = 75.632034550000000000
          Width = 39.706555450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 546.647804550000000000
          Top = 75.632034550000000000
          Width = 56.399505450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 633.321273640000000000
          Top = 75.632034550000000000
          Width = 80.515460910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 721.371366370000000000
          Top = 76.072974550000000000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Entrega')
          ParentFont = False
        end
        object mtitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 19.129560909999990000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lista de demandas')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 0.231910909999999900
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450000000000
          Top = 0.231910909999999900
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450002000000
          Top = 19.129560909999900000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 95.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 809.158010000000000000
          Top = 75.590600000000000000
          Width = 223.371676360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 144.094620000000000000
          Top = 75.590600000000000000
          Width = 62.863327270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 218.905690000000000000
          Top = 75.590600000000000000
          Width = 81.760977270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Item-produto')
          ParentFont = False
        end
        object MFILTROS: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FILTROS')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 404.409710000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 612.032158180000000000
          Top = 5.779530000000022000
          Width = 99.872140000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."PRF_QTDE">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 563.027520000000000000
          Top = 5.779530000000022000
          Width = 45.927025450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 5.779530000000022000
          Width = 72.383735450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total itens :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.779530000000022000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 5.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
      end
      object ordem: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 287.244280000000000000
        Visible = False
        Width = 1046.929810000000000000
        Columns = 4
        ColumnWidth = 264.566929133858300000
        DataSet = frxDBOrdem
        DataSetName = 'Ordem'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 106.972170910000000000
          Height = 15.118120000000000000
          DataField = 'OPA_DATA_ENTREGA'
          DataSet = frxDBOrdem
          DataSetName = 'Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Ordem."OPA_DATA_ENTREGA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 37.795300000000000000
          Width = 76.735930910000000000
          Height = 15.118120000000000000
          DataField = 'OPA_QTDE_PRODUZIR'
          DataSet = frxDBOrdem
          DataSetName = 'Ordem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Ordem."OPA_QTDE_PRODUZIR"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 2.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Seq : [Ordem."OPA_SEQUENCIAL"]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 21.677180000000020000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrega')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 22.677180000000020000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produzir')
        end
      end
      object HeaderOrdem: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Visible = False
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 11.629323080000000000
          Width = 148.273869230000000000
          Height = 16.571785380000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Ordem de programa'#231#227'o')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object pmImpressao: TPopupMenu
    Left = 932
    Top = 33
    object Listadedemanda1: TMenuItem
      Caption = 'Lista de demanda'
      OnClick = Listadedemanda1Click
    end
    object Agrupadoporreferncia1: TMenuItem
      Caption = 'Agrupado por refer'#234'ncia'
      OnClick = Agrupadoporreferncia1Click
    end
    object GerarEtiqueta1: TMenuItem
      Caption = 'Gerar Etiqueta'
      OnClick = GerarEtiqueta1Click
    end
  end
  object frxDBRelatorios: TfrxDBDataset
    UserName = 'relatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MARCADO=MARCADO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PED_CODIGO=PED_CODIGO'
      'PED_DTENTRADA=PED_DTENTRADA'
      'PRF_QTDE=PRF_QTDE'
      'DEP_SITUACAO=DEP_SITUACAO'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'ESTOQUEDISPONIVEL=ESTOQUEDISPONIVEL'
      'REP_NOME=REP_NOME'
      'IOP_NORDEM=IOP_NORDEM'
      'DEP_QTDE_ESTOQUE=DEP_QTDE_ESTOQUE'
      'QTDEPRD=QTDEPRD'
      'DTENTREGA=DTENTREGA'
      'PRD_CODIGO=PRD_CODIGO'
      'DEP_CODIGO=DEP_CODIGO'
      'PRF_REGISTRO=PRF_REGISTRO'
      'PRF_PESOKG=PRF_PESOKG'
      'PRF_PRECO=PRF_PRECO'
      'IOP_DATA_INICIO=IOP_DATA_INICIO'
      'DEP_QTDE_PROGRA=DEP_QTDE_PROGRA'
      'PRD_UND=PRD_UND'
      'IOP_DATA_CONCLUSAO=IOP_DATA_CONCLUSAO'
      'CLI_UF=CLI_UF'
      'CLI_CIDADE=CLI_CIDADE'
      'PCX_CODIGO=PCX_CODIGO'
      'PCX_DESCRI=PCX_DESCRI'
      'DEP_DATA_AJUSTADA=DEP_DATA_AJUSTADA'
      'OPA_SEQUENCIAL=OPA_SEQUENCIAL'
      'IOP_QTDE_CONCLUIDA=IOP_QTDE_CONCLUIDA'
      'opv_pedidointerno=opv_pedidointerno'
      'TOTAL=TOTAL'
      'NOTA_FISCAL=NOTA_FISCAL'
      'ENF_REGISTRO=ENF_REGISTRO'
      'FOR_RAZAO=FOR_RAZAO'
      'ACO_NOME=ACO_NOME'
      'PESO=PESO')
    DataSet = cdsBusca
    BCDToCurrency = False
    Left = 1028
    Top = 153
  end
  object frxDBOrdem: TfrxDBDataset
    UserName = 'Ordem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OPA_SEQUENCIAL=OPA_SEQUENCIAL'
      'OPA_DATA_ENTREGA=OPA_DATA_ENTREGA'
      'OPA_QTDE_PRODUZIR=OPA_QTDE_PRODUZIR')
    DataSet = cdsOrdem
    BCDToCurrency = False
    Left = 964
    Top = 121
  end
  object cdsOrdem: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT OPA_SEQUENCIAL,OPA_DATA_ENTREGA, OPA_QTDE_PRODUZIR FROM O' +
        'RDEM_PROGRAMADA'
      'WHERE PED_CODIGO = '#39'005889'#39
      'AND EMP_CODIGO = '#39'001'#39
      'AND PRD_CODIGO = '#39'03482'#39
      'ORDER BY OPA_SEQUENCIAL')
    Left = 635
    Top = 264
    object cdsOrdemOPA_SEQUENCIAL: TIntegerField
      FieldName = 'OPA_SEQUENCIAL'
      Origin = 'OPA_SEQUENCIAL'
      Required = True
    end
    object cdsOrdemOPA_DATA_ENTREGA: TSQLTimeStampField
      FieldName = 'OPA_DATA_ENTREGA'
      Origin = 'OPA_DATA_ENTREGA'
      Required = True
    end
    object cdsOrdemOPA_QTDE_PRODUZIR: TFMTBCDField
      FieldName = 'OPA_QTDE_PRODUZIR'
      Origin = 'OPA_QTDE_PRODUZIR'
      Required = True
      Precision = 18
      Size = 5
    end
  end
  object frxAgrupadoRefer: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43878.496829479200000000
    ReportOptions.LastChange = 43997.458600740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var NGrupos : Integer;                                          ' +
        '             '
      '    razao : string;                                '
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ' inc(NGrupos);              '
      'end;'
      ''
      'begin'
      '  NGrupos := 0 ;'
      
        '  razao := '#39'oi'#39';                                                ' +
        ' '
      'end.')
    OnGetValue = frxLRelatoriosGetValue
    Left = 1022
    Top = 248
    Datasets = <
      item
        DataSet = frxDBOrdem
        DataSetName = 'Ordem'
      end
      item
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
      end>
    Variables = <>
    Style = <>
    object frxDataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.971242730000000000
        ParentFont = False
        Top = 222.992270000000000000
        Visible = False
        Width = 1046.929810000000000000
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
        RowCount = 0
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.887753640000000000
          Top = 2.000000000000000000
          Width = 65.397340910000000000
          Height = 15.118120000000000000
          DataField = 'DEP_SITUACAO'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."DEP_SITUACAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 186.094620000000000000
          Top = 2.000000000000000000
          Width = 57.838280910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_REFER"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 386.984540000000000000
          Top = 2.779529999999994000
          Width = 136.442486360000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."PRF_QTDE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 720.449290000000000000
          Top = 1.220470000000006000
          Width = 70.995052730000000000
          Height = 15.118120000000000000
          DataField = 'DTENTREGA'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."DTENTREGA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 1.000000000000000000
          Width = 237.294372730000000000
          Height = 15.118120000000000000
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 2.000000000000000000
          Width = 170.458256360000000000
          Height = 15.118120000000000000
          DataField = 'QTDEPRD'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."QTDEPRD"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 513.457328180000000000
          Top = 75.632034550000000000
          Width = 39.706555450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 569.360543640000000000
          Top = 75.632034550000000000
          Width = 110.751700910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade solicitada')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 688.733456370000000000
          Top = 76.072974550000000000
          Width = 109.985776360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade produ'#231#227'o')
          ParentFont = False
        end
        object mtitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 19.129560910000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lista de demanda agrupado por refer'#234'ncia')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 0.231910909999999900
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450000000000
          Top = 0.231910909999999900
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450002000000
          Top = 19.129560909999900000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 95.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 86.622140000000000000
          Top = 75.590600000000000000
          Width = 81.760977270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Item-produto')
          ParentFont = False
        end
        object MFILTROS: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FILTROS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 8.031540000000000000
          Top = 75.590600000000000000
          Width = 62.863327270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 347.716760000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 5.779530000000023000
          Width = 72.383735450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total itens :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.779530000000022000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 580.086890000000000000
          Top = 6.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."PRF_QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 697.252320000000000000
          Top = 6.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."QTDEPRD">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 84.312592310000000000
          Top = 5.070263080000018000
          Width = 177.347176920000000000
          Height = 19.479116150000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[NGrupos]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Visible = False
        Width = 1046.929810000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'relatorio."PRD_REFER"'
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 2.000000000000000000
          Width = 72.956400910000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'PRD_REFER'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_REFER"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 506.937230000000000000
          Top = 3.000000000000000000
          Width = 42.720160910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_UND"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 91.181200000000000000
          Top = 3.000000000000000000
          Width = 405.555040910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.811070000000000000
          Top = 3.000000000000000000
          Width = 72.956400910000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'PRD_REFER'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_REFER"]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 579.645950000000000000
          Top = 3.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."PRF_QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 696.811380000000000000
          Top = 3.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."QTDEPRD">,MasterData1,1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43878.496829479200000000
    ReportOptions.LastChange = 43997.458600740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var NGrupos : Integer;                                          ' +
        '             '
      '    razao : string;                                '
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ' inc(NGrupos);              '
      'end;'
      ''
      'begin'
      '  NGrupos := 0 ;'
      
        '  razao := '#39'oi'#39';                                                ' +
        ' '
      'end.')
    OnGetValue = frxLRelatoriosGetValue
    Left = 1166
    Top = 80
    Datasets = <
      item
        DataSet = frxDBOrdem
        DataSetName = 'Ordem'
      end
      item
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
      end>
    Variables = <>
    Style = <>
    object frxDataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.191712730000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRelatorios
        DataSetName = 'relatorio'
        RowCount = 0
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 565.986394550000000000
          Top = 1.000000000000000000
          Width = 72.190476360000000000
          Height = 11.338590000000000000
          DataField = 'PED_DTENTRADA'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."PED_DTENTRADA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 65.397340910000000000
          Height = 11.338590000000000000
          DataField = 'DEP_SITUACAO'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."DEP_SITUACAO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 65.600496360000000000
          Top = 1.000000000000000000
          Width = 57.838280910000000000
          Height = 11.338590000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 667.900126360000000000
          Top = 1.000000000000000000
          Width = 79.749536360000000000
          Height = 11.338590000000000000
          DataField = 'PRF_QTDE'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."PRF_QTDE"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 124.427336360000000000
          Top = 1.000000000000000000
          Width = 72.956400910000000000
          Height = 11.338590000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_REFER"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 638.514534540000000000
          Top = 1.000000000000000000
          Width = 28.367965450000000000
          Height = 11.338590000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_UND"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 198.797466360000000000
          Top = 1.000000000000000000
          Width = 367.759740910000000000
          Height = 11.338590000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 748.048546370000000000
          Top = 1.000000000000000000
          Width = 72.190476360000000000
          Height = 11.338590000000000000
          DataField = 'DTENTREGA'
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[relatorio."DTENTREGA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 821.049786360000000000
          Top = 1.000000000000000000
          Width = 222.176252730000000000
          Height = 11.338590000000000000
          DataSet = frxDBRelatorios
          DataSetName = 'relatorio'
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[relatorio."CLI_RAZAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object mtitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 19.129560910000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lista de demanda agrupado por refer'#234'ncia')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 0.231910910000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450000000000
          Top = 0.231910910000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450002000000
          Top = 19.129560909999900000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object MFILTROS: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FILTROS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 75.632034550000000000
          Width = 65.397340910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 65.600496360000000000
          Top = 75.632034550000000000
          Width = 57.838280910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 638.514534540000000000
          Top = 75.632034550000000000
          Width = 28.367965450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 565.986394550000000000
          Top = 75.632034550000000000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 667.900126360000000000
          Top = 75.632034550000000000
          Width = 79.749536360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 748.048546370000000000
          Top = 75.632034550000000000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Entrega')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 95.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 821.049786360000000000
          Top = 75.632034550000000000
          Width = 222.176252730000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 124.427336360000000000
          Top = 75.632034550000000000
          Width = 72.956400910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 198.797466360000000000
          Top = 75.632034550000000000
          Width = 81.760977270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Item-produto')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 5.779530000000020000
          Width = 72.383735450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total itens :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.779530000000020000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 620.283860000000000000
          Top = 6.559059999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<relatorio."PRF_QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 84.312592310000000000
          Top = 5.070263080000020000
          Width = 177.347176920000000000
          Height = 19.479116150000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
      end
    end
  end
  object frxEtiqueta: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45002.503523553240000000
    ReportOptions.LastChange = 45002.503523553240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxEtiquetaBeginDoc
    Left = 468
    Top = 297
    Datasets = <
      item
        DataSet = frxDBEtiqueta
        DataSetName = 'frxDBEtiqueta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 211.653562830000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEtiqueta
        DataSetName = 'frxDBEtiqueta'
        RowCount = 0
        object logoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 464.882190000000000000
          Height = 181.417322834645700000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [frxDBEtiqueta."CLI_RAZAO"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 464.882190000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 90.708661417322830000
          Width = 464.882190000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 136.062992125984300000
          Width = 464.882190000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 136.063080000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cor: [frxDBEtiqueta."ACO_NOME"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 56.692950000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [frxDBEtiqueta."DTENTREGA"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 102.047310000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'NF: [frxDBEtiqueta."NOTA_FISCAL"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 147.401670000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Peso: [frxDBEtiqueta."PESO"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 139.842610000000000000
          Width = 230.551330000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'OBS:')
        end
      end
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsExportaExcel
    Left = 620
    Top = 465
  end
  object cdsExportaExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExportaExcel'
    Left = 532
    Top = 465
    object cdsExportaExcelEMP_CODIGO: TStringField
      DisplayLabel = 'EMPRESA'
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsExportaExcelPED_DTENTRADA: TSQLTimeStampField
      DisplayLabel = 'DATA'
      FieldName = 'PED_DTENTRADA'
    end
    object cdsExportaExcelCLI_RAZAO: TStringField
      DisplayLabel = 'CLIENTE'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsExportaExcelREP_NOME: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsExportaExcelCLI_CONSU_PROPRIO: TStringField
      DisplayLabel = 'TIPO CLIENTE'
      FieldName = 'CLI_CONSU_PROPRIO'
      Required = True
      FixedChar = True
      Size = 33
    end
    object cdsExportaExcelCORI_DESCRICAO: TStringField
      DisplayLabel = 'TIPO DO CLIENTE'
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
    object cdsExportaExcelEMP_RAZAO: TStringField
      DisplayLabel = 'EMPRESA'
      FieldName = 'EMP_RAZAO'
      Size = 70
    end
    object cdsExportaExcelPED_CODIGO: TStringField
      DisplayLabel = 'PEDIDO'
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsExportaExcelPRD_REFER: TStringField
      DisplayLabel = 'COD. PECA'
      FieldName = 'PRD_REFER'
    end
    object cdsExportaExcelPRF_PRDDESCRI: TStringField
      DisplayLabel = 'DESCRICAO PECA'
      FieldName = 'PRF_PRDDESCRI'
      Size = 255
    end
    object cdsExportaExcelART_NOME: TStringField
      DisplayLabel = 'TIPO DO PRODUTO'
      FieldName = 'ART_NOME'
      Size = 100
    end
    object cdsExportaExcelPGR_DESCRI: TStringField
      DisplayLabel = 'GRUPO'
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object cdsExportaExcelPRF_QTDE: TFMTBCDField
      DisplayLabel = 'QTDE'
      FieldName = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsExportaExcelCMO_NOME: TStringField
      DisplayLabel = 'MATERIAL (DIAMETRO)'
      FieldName = 'CMO_NOME'
      Size = 100
    end
    object cdsExportaExcelASU_NOME: TStringField
      DisplayLabel = 'ACABAMENTO'
      FieldName = 'ASU_NOME'
      Size = 100
    end
    object cdsExportaExcelIOP_PESO: TFMTBCDField
      DisplayLabel = 'PESO TOTAL / O.S.'
      FieldName = 'IOP_PESO'
      Precision = 18
      Size = 5
    end
    object cdsExportaExcelPRF_PRAZO_ENTREGA: TDateField
      DisplayLabel = 'DATA PLANEJADA'
      FieldName = 'PRF_PRAZO_ENTREGA'
    end
    object cdsExportaExcelIOP_STATUS: TStringField
      DisplayLabel = 'STATUS'
      FieldName = 'IOP_STATUS'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsExportaExcelTOTAL_PROD: TFMTBCDField
      DisplayLabel = 'VALOR (R$)'
      FieldName = 'TOTAL_PROD'
      Precision = 18
      Size = 10
    end
  end
  object dspExportaExcel: TDataSetProvider
    DataSet = qExportaExcel
    Left = 444
    Top = 465
  end
  object qExportaExcel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT'
      #9'ped.EMP_CODIGO,'
      #9'ped.PED_DTENTRADA,'
      #9'cli.CLI_RAZAO,'
      #9'r.REP_NOME,'
      #9'CASE'
      
        #9#9'WHEN ped.CLI_CONSU_PROPRIO = '#39'S'#39' THEN '#39'Uso e consumo ou Indust' +
        'rializa'#231#227'o'#39
      #9#9'ELSE '#39'Revenda'#39
      #9'END AS CLI_CONSU_PROPRIO, '
      #9'co.CORI_DESCRICAO, '
      #9'emp.EMP_FANTASIA AS EMP_RAZAO,'
      #9'ped.PED_CODIGO,'
      #9'pi2.PRD_REFER,'
      #9'pi2.PRF_PRDDESCRI,'
      #9'a.ART_NOME,'
      #9'grp.PGR_DESCRI,'
      #9'pi2.PRF_QTDE,'
      #9'mm.MMO_DIAMETRO_ARAME || '#39' '#39' || cm.CMO_NOME AS CMO_NOME,'
      #9'as2.ASU_NOME,'
      #9'pi2.PRF_QTDE * mm.MMO_PESO AS IOP_PESO,'
      #9'CASE'
      
        #9#9'WHEN CAST(pi2.PRF_PRAZO_ENTREGA AS DATE) IS NULL THEN CAST(ped' +
        '.PED_DTSAIDA AS DATE)'
      #9#9'ELSE CAST(pi2.PRF_PRAZO_ENTREGA AS DATE )'
      #9'END AS PRF_PRAZO_ENTREGA,'
      #9'CASE'
      #9#9'WHEN iop.IOP_STATUS = '#39'I'#39' THEN '#39'Iniciada'#39
      #9#9'WHEN iop.IOP_STATUS = '#39'C'#39' THEN '#39'Cancelada'#39
      #9#9'WHEN iop.IOP_STATUS = '#39'L'#39' THEN '#39'A Iniciar'#39
      #9#9'WHEN iop.IOP_STATUS = '#39'F'#39' THEN '#39'Finalizado'#39
      #9#9'ELSE '#39'A Iniciar'#39
      #9'END AS IOP_STATUS,'
      #9'pi2.PRF_QTDE * pi2.PRF_PRECO AS TOTAL_PROD'
      'FROM'
      #9'PED0000 ped'
      'JOIN CLI0000 cli ON'#9'(cli.CLI_CODIGO = ped.CLI_CODIGO)'
      'JOIN EMP0000 emp ON'#9'(emp.EMP_CODIGO = ped.EMP_CODIGO)'
      
        'JOIN PED_IT01 pi2 ON'#9'(pi2.PED_CODIGO = ped.PED_CODIGO'#9#9'AND pi2.E' +
        'MP_CODIGO = ped.EMP_CODIGO)'
      'JOIN PRD0000 prd ON'#9'(prd.PRD_REFER = pi2.PRD_REFER )'
      
        'JOIN DEMANDA_PRODUCAO DPR ON'#9'(DPR.PED_CODIGO = pi2.PED_CODIGO'#9#9'A' +
        'ND pi2.EMP_CODIGO = DPR.EMP_CODIGO'#9#9'AND pi2.PRF_REGISTRO = dpr.P' +
        'RF_REGISTRO)'
      'JOIN PRD_GRUPO grp ON'#9'(grp.PGR_CODIGO = prd.PGR_CODIGO)'
      'LEFT JOIN MOLA_MATERIA mm ON'#9'(mm.PRD_CODIGO = prd.PRD_CODIGO )'
      'LEFT JOIN ARAME ara ON'#9'(ara.ARA_CODIGO = mm.ARA_CODIGO)'
      
        'LEFT JOIN CLASSIFICACAO_MOLA cm ON'#9'(cm.CMO_CODIGO = mm.CMO_CODIG' +
        'O)'
      
        'LEFT JOIN ACABAMENTO_SUPERFICIAL as2 ON'#9'(as2.ASU_CODIGO = mm.ASU' +
        '_CODIGO)'
      'LEFT JOIN ORDEMPRODUCAO op ON'#9'(op.PED_CODIGO = pi2.PED_CODIGO)'
      
        'LEFT JOIN ITEM_ORDEMPRODUCAO iop ON'#9'(iop.OPR_CODIGO = op.OPR_COD' +
        'IGO'#9#9'AND pi2.PRD_REFER = prd.PRD_REFER'#9#9'AND iop.PRf_REGISTRO = p' +
        'i2.PRf_REGISTRO)'
      
        'LEFT JOIN CLIENTE_ORIGEM co ON (co.CORI_CODIGO = ped.CORI_CODIGO' +
        ')'
      'LEFT JOIN REP0000 r ON (r.REP_CODIGO = ped.REP_CODIGO)'
      'LEFT JOIN ARTEFATO a ON (a.ART_CODIGO = mm.ART_CODIGO)'
      'WHERE'
      #9'ped.PED_DTENTRADA >= '#39'2023-06-29'#39
      #9'AND DEP_SITUACAO <> '#39'C'#39
      #9'AND PED_SITUACAO <> '#39'C'#39)
    SQLConnection = DBInicio.MainDB
    Left = 356
    Top = 465
    object qExportaExcelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qExportaExcelPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object qExportaExcelCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object qExportaExcelREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qExportaExcelCLI_CONSU_PROPRIO: TStringField
      FieldName = 'CLI_CONSU_PROPRIO'
      Required = True
      FixedChar = True
      Size = 33
    end
    object qExportaExcelCORI_DESCRICAO: TStringField
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
    object qExportaExcelEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 60
    end
    object qExportaExcelPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object qExportaExcelPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qExportaExcelPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 255
    end
    object qExportaExcelART_NOME: TStringField
      FieldName = 'ART_NOME'
      Size = 100
    end
    object qExportaExcelPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object qExportaExcelPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object qExportaExcelCMO_NOME: TStringField
      FieldName = 'CMO_NOME'
      Size = 151
    end
    object qExportaExcelASU_NOME: TStringField
      FieldName = 'ASU_NOME'
      Size = 100
    end
    object qExportaExcelIOP_PESO: TFMTBCDField
      FieldName = 'IOP_PESO'
      Precision = 18
      Size = 10
    end
    object qExportaExcelPRF_PRAZO_ENTREGA: TDateField
      FieldName = 'PRF_PRAZO_ENTREGA'
    end
    object qExportaExcelIOP_STATUS: TStringField
      FieldName = 'IOP_STATUS'
      Required = True
      FixedChar = True
      Size = 10
    end
    object qExportaExcelTOTAL_PROD: TFMTBCDField
      FieldName = 'TOTAL_PROD'
      Precision = 18
      Size = 10
    end
  end
  object mtEtiqueta: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 396
    Top = 297
    object mtEtiquetaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 255
    end
    object mtEtiquetaACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      Size = 255
    end
    object mtEtiquetaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object mtEtiquetaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 255
    end
    object mtEtiquetaPESO: TFMTBCDField
      FieldName = 'PESO'
    end
  end
  object mtTemp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 396
    Top = 353
    object mtTempCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 255
    end
    object mtTempACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      Size = 255
    end
    object mtTempDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object mtTempNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 255
    end
    object mtTempPESO: TFMTBCDField
      FieldName = 'PESO'
    end
  end
  object frxDBEtiqueta: TfrxDBDataset
    UserName = 'frxDBEtiqueta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_RAZAO=CLI_RAZAO'
      'ACO_NOME=ACO_NOME'
      'DTENTREGA=DTENTREGA'
      'NOTA_FISCAL=NOTA_FISCAL'
      'PESO=PESO')
    DataSet = mtEtiqueta
    BCDToCurrency = False
    Left = 468
    Top = 353
  end
end
