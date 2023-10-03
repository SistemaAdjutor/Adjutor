inherited frmNovoApontamento: TfrmNovoApontamento
  Caption = 'Apontamentos de Opera'#231#245'es'
  ClientHeight = 638
  ClientWidth = 1436
  Font.Height = -13
  ExplicitWidth = 1452
  ExplicitHeight = 677
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgc1: TPageControl
    Top = 59
    Width = 1436
    Height = 543
    ExplicitTop = 59
    ExplicitWidth = 1436
    ExplicitHeight = 543
    inherited tsNotas: TTabSheet
      ExplicitTop = 27
      ExplicitWidth = 1428
      ExplicitHeight = 512
      inherited pnlControle: TPanel
        Width = 1428
        Visible = False
        ExplicitWidth = 1428
        inherited pnlFiltro: TPanel
          Width = 1428
          Visible = False
          ExplicitWidth = 1428
          inherited pnlpn1: TPanel
            Left = 1
            Top = -1
            Width = 1270
            Align = alNone
            Visible = False
            ExplicitLeft = 1
            ExplicitTop = -1
            ExplicitWidth = 1270
            DesignSize = (
              1270
              79)
            inherited btnPesquisa: TSpeedButton
              Left = 1177
              ExplicitLeft = 1140
            end
            inherited btnLimpar: TSpeedButton
              Left = 1177
              ExplicitLeft = 1140
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Top = 215
        Width = 1428
        Height = 173
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        ExplicitTop = 215
        ExplicitWidth = 1428
        ExplicitHeight = 173
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          PopupMenu = miocorrencias
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsOcorrencias
          DataController.DetailKeyFieldNames = 'FAB_CODIGO'
          DataController.KeyFieldNames = 'FAB_CODIGO'
          DataController.MasterKeyFieldNames = 'FAB_CODIGO'
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1OCO_DESCRICAO: TcxGridDBColumn
            Caption = 'Ocorrido'
            DataBinding.FieldName = 'OCO_DESCRICAO'
            Width = 138
          end
          object cxgrd1DBTableView1OCE_MOTIVO: TcxGridDBColumn
            Caption = 'Motivo'
            DataBinding.FieldName = 'OCE_MOTIVO'
            Width = 184
          end
          object cxgrd1DBTableView1COL_NOME: TcxGridDBColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'COL_NOME'
            Width = 180
          end
          object cxgrd1DBTableView1OCE_DATAOCORRENCIA: TcxGridDBColumn
            Caption = 'Ocorrido'
            DataBinding.FieldName = 'OCE_DATAOCORRENCIA'
            Width = 104
          end
          object cxgrd1DBTableView1OCE_DATAPREVISAO: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'OCE_DATAPREVISAO'
            Width = 115
          end
          object cxgrd1DBTableView1OCE_DATAFIM: TcxGridDBColumn
            Caption = 'Resolvido'
            DataBinding.FieldName = 'OCE_DATAFIM'
            Width = 131
          end
          object cxgrd1DBTableView1OCE_COMENTARIO: TcxGridDBColumn
            Caption = 'Coment'#225'rio'
            DataBinding.FieldName = 'OCE_COMENTARIO'
          end
          object cxgrd1DBTableView1OCE_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'OCE_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1OCO_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'OCO_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1FAB_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'FAB_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1COL_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'COL_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1OCE_ESTORNO: TcxGridDBColumn
            DataBinding.FieldName = 'OCE_ESTORNO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1APF_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'APF_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBusca
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfPastFuture]
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Ordem Produ'#231#227'o'
              Width = 663
            end
            item
              Caption = 'Tempo'
              Width = 73
            end
            item
              Caption = 'Produto'
              Width = 369
            end
            item
              Caption = 'Quantidades'
              Width = 493
            end>
          object cxgrd1DBBandedTableView1OSV_CODIGO: TcxGridDBBandedColumn
            Caption = 'No'
            DataBinding.FieldName = 'OSV_CODIGO'
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OPE_CODIGO: TcxGridDBBandedColumn
            Caption = 'Cod'
            DataBinding.FieldName = 'OPE_CODIGO'
            Visible = False
            VisibleForCustomization = False
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OPE_DESCRICAO: TcxGridDBBandedColumn
            Caption = 'Opera'#231#227'o'
            DataBinding.FieldName = 'OpeCompleto'
            VisibleForCustomization = False
            Width = 157
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1EQP_DESCRICAO: TcxGridDBBandedColumn
            Caption = 'Equipamento'
            DataBinding.FieldName = 'EQP_DESCRICAO'
            OnGetDataText = cxgrd1DBBandedTableView1EQP_DESCRICAOGetDataText
            Width = 161
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1TEMPO_ESTIMADO: TcxGridDBBandedColumn
            Caption = 'Estimado'
            DataBinding.FieldName = 'TEMPO_ESTIMADO'
            Width = 74
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OSV_DTENTREGA: TcxGridDBBandedColumn
            Caption = 'Data Entrega'
            DataBinding.FieldName = 'OSV_DTENTREGA'
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1RESTANTES: TcxGridDBBandedColumn
            Caption = 'Dias'
            DataBinding.FieldName = 'RESTANTES'
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_FANTASIA: TcxGridDBBandedColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_FANTASIA'
            Width = 162
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            Caption = 'Refer'#234'ncia '
            DataBinding.FieldName = 'PRD_REFER'
            Width = 72
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Width = 251
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'PRD_UND'
            Width = 45
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn
            Caption = 'Solicitada'
            DataBinding.FieldName = 'IOP_QUANTIDADE'
            Width = 104
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1Concluidos: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Concluidos'
            PropertiesClassName = 'TcxProgressBarProperties'
            Width = 96
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FAB_PRODUZINDO: TcxGridDBBandedColumn
            Caption = 'Produzindo'
            DataBinding.FieldName = 'FAB_PRODUZINDO'
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FAB_REFUGADA: TcxGridDBBandedColumn
            Caption = 'Refugada'
            DataBinding.FieldName = 'FAB_REFUGADA'
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FAB_REBARBA: TcxGridDBBandedColumn
            Caption = 'Rebarba KG'
            DataBinding.FieldName = 'FAB_REBARBA'
            Position.BandIndex = 3
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FAB_PRODUZIDA: TcxGridDBBandedColumn
            Caption = 'Concluido'
            DataBinding.FieldName = 'FAB_PRODUZIDA'
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA: TcxGridDBBandedColumn
            Caption = 'Concluido'
            DataBinding.FieldName = 'IOP_QTDE_CONCLUIDA'
            Visible = False
            Width = 104
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_QTDE_PRODUZINDO: TcxGridDBBandedColumn
            Caption = 'Produzindo'
            DataBinding.FieldName = 'IOP_QTDE_PRODUZINDO'
            Visible = False
            Width = 104
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 1
          end
          object cxgrd1DBBandedTableView1IOP_QTDE_REFUGADA: TcxGridDBBandedColumn
            Caption = 'Refugada'
            DataBinding.FieldName = 'IOP_QTDE_REFUGADA'
            Visible = False
            Width = 84
            Position.BandIndex = 3
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FAB_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FAB_CODIGO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SEQUENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEQUENCIA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_CODIGO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBBandedTableView1
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView1
            Options.DetailTabsPosition = dtpTop
            OnGetGridView = cxgrd1Level1GetGridView
          end
        end
      end
      object Phistorico: TPanel
        Left = 0
        Top = 388
        Width = 1428
        Height = 124
        Align = alBottom
        TabOrder = 2
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1426
          Height = 122
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsApontar
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1COL_NOME: TcxGridDBColumn
              Caption = 'Colaborador'
              DataBinding.FieldName = 'COL_NOME'
            end
            object cxGrid1DBTableView1APF_DATA_INI: TcxGridDBColumn
              Caption = 'In'#237'cio'
              DataBinding.FieldName = 'APF_DATA_INI'
              Width = 108
            end
            object cxGrid1DBTableView1APF_DATA_FIM: TcxGridDBColumn
              Caption = 'Fim'
              DataBinding.FieldName = 'APF_DATA_FIM'
              Width = 116
            end
            object cxGrid1DBTableView1APF_INICIADA: TcxGridDBColumn
              Caption = 'Produzindo'
              DataBinding.FieldName = 'APF_INICIADA'
            end
            object cxGrid1DBTableView1APF_REFUGADO: TcxGridDBColumn
              Caption = 'Refugado'
              DataBinding.FieldName = 'APF_REFUGADO'
              Width = 91
            end
            object cxGrid1DBTableView1APF_REBARBA: TcxGridDBColumn
              Caption = 'Rebarba KG'
              DataBinding.FieldName = 'APF_REBARBA'
            end
            object cxGrid1DBTableView1APF_FINALIZADAS: TcxGridDBColumn
              Caption = 'Concluidas'
              DataBinding.FieldName = 'APF_FINALIZADAS'
              Width = 99
            end
            object cxGrid1DBTableView1APF_CANCELADO: TcxGridDBColumn
              Caption = 'Cancelado'
              DataBinding.FieldName = 'APF_CANCELADO'
              Width = 67
            end
            object cxGrid1DBTableView1EQP_DESCRICAO: TcxGridDBColumn
              Caption = 'Equipamento'
              DataBinding.FieldName = 'EQP_DESCRICAO'
            end
            object cxGrid1DBTableView1APF_MOTIVOCANCELAMENTO: TcxGridDBColumn
              DataBinding.FieldName = 'APF_MOTIVOCANCELAMENTO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1EQP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'EQP_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1APF_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'APF_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1FAB_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'FAB_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1COL_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'COL_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object poperacoes: TPanel
        Left = 0
        Top = 79
        Width = 1428
        Height = 136
        Align = alTop
        Caption = 'poperacoes'
        TabOrder = 3
        object DBCtrlGrid1: TDBCtrlGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 1420
          Height = 128
          Align = alClient
          AllowDelete = False
          AllowInsert = False
          ColCount = 6
          DataSource = dsOperacoes
          PanelHeight = 21
          PanelWidth = 233
          TabOrder = 0
          RowCount = 6
          SelectedColor = clRed
          OnPaintPanel = DBCtrlGrid1PaintPanel
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 233
            Height = 21
            Align = alClient
            TabOrder = 0
            object DBText1: TDBText
              Left = 1
              Top = 1
              Width = 231
              Height = 19
              Align = alClient
              Alignment = taCenter
              DataField = 'OPE_NOME'
              DataSource = dsOperacoes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnMouseDown = DBText1MouseDown
              OnMouseUp = DBText1MouseUp
              ExplicitLeft = 8
              ExplicitTop = 7
              ExplicitWidth = 65
              ExplicitHeight = 17
            end
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 602
    Width = 1436
    Visible = False
    ExplicitTop = 602
    ExplicitWidth = 1436
    DesignSize = (
      1436
      36)
    inherited btnCalc: TSpeedButton
      Visible = False
    end
    inherited btnSelect: TSpeedButton
      Left = 1288
      ExplicitLeft = 1093
    end
    inherited lblCntRegistros: TLabel
      Width = 85
      Height = 16
      ExplicitWidth = 85
      ExplicitHeight = 16
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1436
    Height = 59
    ExplicitWidth = 1436
    ExplicitHeight = 59
    DesignSize = (
      1436
      59)
    inherited btnExclui: TSpeedButton
      Left = 1036
      Height = 53
      Hint = 'Cancelar apontamento'
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        08094D06064AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        40000040FF00FFFF00FFFF00FF12125D0303A00303A20A0A50FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00004001019902029D000040FF00FF1E1E6E0404A3
        0606A60606A60606A60E0E56FF00FFFF00FFFF00FFFF00FF03034400009A0101
        9D01019C02029D00004027267B0404A60707A90808A80808A90808A913135DFF
        00FFFF00FF0B0A5102029E00009F00009B01019D02029A000040FF00FF2D2C85
        0707AA0A0AAC0B0BAC0A0AAC0909AB1817651515600606A30404A402029F0000
        9F01019B050548FF00FFFF00FFFF00FF32328D0909AF0C0CB00D0DAF0C0CAF0B
        0BAC0909AA0808A90606A50404A402029F0D0E55FF00FFFF00FFFF00FFFF00FF
        FF00FF3838970D0DB30E0EB30E0EB10D0DB00B0BAD0A0AAB0808A90606A31818
        65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3E3EA00C0CB61010B40F
        0FB20D0DB00B0BAD0909AA252478FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF4748AF1616BB1111B70D0DB40C0CB10B0BAF0A0AAB2E2D87FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5454C24545CB4343C93838C429
        29BE1D1DB81212B20A0AAD0606A933348FFF00FFFF00FFFF00FFFF00FFFF00FF
        605FD44343CD4545CC4646CB4545C94545C84343C63B3BC03232BA2828B52121
        B0393999FF00FFFF00FFFF00FF6A6AE44343CE4646CD4747CE4444CB4545CA58
        58C85455C34040C23F3FBF3D3DBC3C3CBA3939B83F3FA2FF00FF7171EF4343CA
        4444CB4747CE4545CC4646CC6364D9FF00FFFF00FF5A5ACB3D3DBF3A3ABB3939
        B83737B63636B44545AB7373F24646CB4343C94444CA4646CC6C6CE8FF00FFFF
        00FFFF00FFFF00FF5F5FD33A3ABB3838B83636B63434B14F4EB9FF00FF7373F2
        4747CC4545C97373F2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6364DA3838
        B73636B45A5BCCFF00FFFF00FFFF00FF7373F27373F2FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF6868E16565DDFF00FFFF00FF}
      Layout = blGlyphLeft
      Visible = False
      ExplicitLeft = 1036
      ExplicitHeight = 53
    end
    inherited btnNovo: TSpeedButton
      Left = 1040
      Width = 85
      Height = 53
      Hint = 'Apontar na opera'#231#227'o'
      Margins.Top = 1
      Anchors = [akTop, akRight]
      Caption = 'Iniciar'
      Layout = blGlyphLeft
      Spacing = 2
      Visible = False
      ExplicitLeft = 1040
      ExplicitWidth = 85
      ExplicitHeight = 53
    end
    inherited btnConsulta: TSpeedButton
      Left = 1040
      Width = 85
      Height = 53
      Anchors = [akTop, akRight]
      Caption = 'Parada'
      Glyph.Data = {00000000}
      ExplicitLeft = 1040
      ExplicitWidth = 85
      ExplicitHeight = 53
    end
    inherited btnEdita: TSpeedButton
      Left = 723
      Width = 90
      Height = 53
      Hint = 'Finalizar apontamento'
      Caption = 'Finalizar apontar'
      Glyph.Data = {00000000}
      ParentBiDiMode = False
      Visible = False
      ExplicitLeft = 723
      ExplicitWidth = 90
      ExplicitHeight = 53
    end
    inherited btnFechar: TSpeedButton
      Left = 1370
      Height = 53
      ExplicitLeft = 1175
      ExplicitHeight = 53
    end
    inherited btnExtra: TSpeedButton
      Left = 399
      Width = 239
      Height = 53
      Caption = 'Alterar colaborador ou equipamento'
      Enabled = True
      Glyph.Data = {00000000}
      Visible = True
      OnClick = btnExtraClick
      ExplicitLeft = 399
      ExplicitWidth = 239
      ExplicitHeight = 53
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1271
      Height = 53
      ExplicitLeft = 1076
      ExplicitHeight = 53
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 1139
      Width = 128
      Height = 53
      Caption = 'Relat'#243'rios (F6)'
      OnClick = btnrelatoriosClick
      ExplicitLeft = 944
      ExplicitWidth = 128
      ExplicitHeight = 53
    end
    object JvArrowButton1: TJvArrowButton
      Left = 227
      Top = 0
      Width = 170
      Height = 53
      DropDown = pmregistroOcorrencia
      Caption = 'Registrar ocorr'#234'ncia'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
    end
    object Label1: TLabel
      Left = 648
      Top = 19
      Width = 119
      Height = 16
      Caption = 'Cod barra - apontar:'
    end
    object chkConcluidos: TCheckBox
      Left = 644
      Top = 1
      Width = 169
      Height = 17
      Caption = 'N'#227'o mostrar concluidos'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkConcluidosClick
    end
    object edPesquisar: TEdit
      Left = 644
      Top = 35
      Width = 169
      Height = 24
      TabOrder = 1
      OnChange = edPesquisarChange
    end
    object btnIniciar: TButton
      Left = 0
      Top = 1
      Width = 75
      Height = 52
      Caption = 'Iniciar apontar'
      TabOrder = 2
      WordWrap = True
      OnClick = btnIniciarClick
    end
    object btnFinalizar: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 52
      Caption = 'Finalizar apontar'
      TabOrder = 3
      WordWrap = True
      OnClick = btnFinalizarClick
    end
    object btncancelar: TButton
      Left = 152
      Top = 1
      Width = 75
      Height = 52
      Caption = 'Cancelar apontar'
      TabOrder = 4
      WordWrap = True
      OnClick = btncancelarClick
    end
    object BitBtn1: TBitBtn
      Left = 1040
      Top = -1
      Width = 97
      Height = 54
      Anchors = [akTop, akRight]
      Caption = 'Etiquetas'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000FFFFFF000000000000000000000000000000000000000000F7F7F7EBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEAEAEAFFFFFFFFFFFFEAEAEAEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBF4F4F400000000000000000000000000000000000000000000
        0000FFFFFF000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000FFFFFF000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000FFFFFF000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000FFFFFF000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object chkFinalizados: TCheckBox
      Left = 819
      Top = 1
      Width = 182
      Height = 17
      Hint = 
        'Mostra todos os pedidos finalizados, caso contr'#225'rio s'#243' mostra os' +
        ' finalizados das '#250'ltimas semanas'
      Caption = 'N'#227'o mostrar O.P finalizada'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 6
      OnClick = chkFinalizadosClick
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 88
    Top = 56
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 144
    Top = 272
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Left = 83
    Top = 168
  end
  inherited dsBusca: TDataSource
    Left = 236
    Top = 384
  end
  inherited cdsBusca: TFDQuery
    AfterScroll = cdsBuscaAfterScroll
    OnCalcFields = cdsBuscaCalcFields
    SQL.Strings = (
      
        'SELECT cl.CLI_FANTASIA, iop_nordem OSV_CODIGO, FAB_CODIGO,P1.PRD' +
        '_REFER, OP.Ope_Codigo, OP.OPE_DESCRICAO, FB.SEQUENCIA, P1.PRD_DE' +
        'SCRI, '
      'OPR.OPR_DTENTREGA OSV_DTENTREGA, p1.prd_und, fb.tempo_estimado,'
      
        ' DATEDIFF(DAY,CURRENT_DATE, OPR.OPR_DTENTREGA) RESTANTES, OS.IOP' +
        '_QUANTIDADE, '
      
        ' OS.IOP_QTDE_CONCLUIDA, OS.IOP_QTDE_PRODUZINDO,OS.IOP_QTDE_REFUG' +
        'ADA ,'
      
        ' FB.FAB_PRODUZINDO, FB.FAB_REFUGADA, FB.FAB_REBARBA, FB.FAB_PROD' +
        'UZIDA , '
      ' FB.IOP_CODIGO , IOP_SEQ_PRG, eq.EQP_DESCRICAO, opr.PED_CODIGO'
      ' FROM FABRICACAO FB                                        '
      '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '
      
        '  INNER JOIN ITEM_ORDEMPRODUCAO OS ON (OS.iop_CODIGO = FB.iop_CO' +
        'DIGO  '
      '  AND P1.PRD_codigo = os.PRD_codigo) '
      
        '  INNER JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = OS.OPR_CODIG' +
        'O)'
      '  INNER JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO) '
      '  LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO)'
      '  JOIN CLI0000 cl ON (cl.CLI_CODIGO = opr.CLI_CODIGO)'
      '  ORDER BY SEQUENCIA')
    Left = 171
    Top = 384
    object cdsBuscaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'OSV_CODIGO'
      OnGetText = cdsBuscaOSV_CODIGOGetText
      Size = 12
    end
    object cdsBuscaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      Origin = 'FAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaOpeCompleto: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OpeCompleto'
      Size = 120
    end
    object cdsBuscaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
    end
    object cdsBuscaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsBuscaOSV_DTENTREGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'OSV_DTENTREGA'
      Origin = 'OPR_DTENTREGA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaRESTANTES: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'RESTANTES'
      Origin = 'RESTANTES'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaIOP_QUANTIDADE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_QTDE_CONCLUIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_QTDE_CONCLUIDA'
      Origin = 'IOP_QTDE_CONCLUIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_QTDE_PRODUZINDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_QTDE_PRODUZINDO'
      Origin = 'IOP_QTDE_PRODUZINDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_QTDE_REFUGADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_QTDE_REFUGADA'
      Origin = 'IOP_QTDE_REFUGADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsBuscaPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaConcluidos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Concluidos'
      Calculated = True
    end
    object cdsBuscaFAB_PRODUZINDO: TFMTBCDField
      FieldName = 'FAB_PRODUZINDO'
      Origin = 'FAB_PRODUZINDO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaFAB_REFUGADA: TFMTBCDField
      FieldName = 'FAB_REFUGADA'
      Origin = 'FAB_REFUGADA'
      Precision = 18
      Size = 5
    end
    object cdsBuscaFAB_PRODUZIDA: TFMTBCDField
      FieldName = 'FAB_PRODUZIDA'
      Origin = 'FAB_PRODUZIDA'
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsBuscaPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsBuscaTEMPO_ESTIMADO: TIntegerField
      FieldName = 'TEMPO_ESTIMADO'
      Origin = 'TEMPO_ESTIMADO'
    end
    object cdsBuscaIOP_SEQ_PRG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IOP_SEQ_PRG'
      Origin = 'IOP_SEQ_PRG'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaFAB_REBARBA: TFMTBCDField
      FieldName = 'FAB_REBARBA'
      Origin = 'FAB_REBARBA'
      Precision = 18
      Size = 5
    end
    object cdsBuscaCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 55
    end
    object cdsBuscaEQP_DESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 60
      Calculated = True
    end
    object cdsBuscaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 936
    Top = 56
  end
  inherited PopupMenu2: TPopupMenu
    Left = 576
    Top = 64
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited SaveDialog1: TSaveDialog
    Left = 612
    Top = 249
  end
  inherited qUsuMenu: TFDQuery
    Left = 187
    Top = 264
  end
  inherited cdsBuscaDetalhes: TFDQuery
    SQL.Strings = (
      
        ' SELECT  APF_CODIGO, FAB_CODIGO, COL.COL_NOME, APF.COL_CODIGO, C' +
        'OL_NOME,  APF_DATA_INI,  '
      
        '  APF_DATA_FIM,  CASE WHEN APF_DATA_FIM IS NULL THEN APF_INICIAD' +
        'A ELSE 0 end AS APF_INICIADA, APF_REFUGADO, APF_FINALIZADAS ,  '
      
        '  case when APF_CANCELADO= '#39'S'#39' then '#39'SIM'#39' else '#39'N'#195'O'#39' end as APF_' +
        'CANCELADO '
      ' , APF_MOTIVOCANCELAMENTO, EQP_DESCRICAO, EQ.EQP_CODIGO  '
      
        ' FROM APONTAMENTO_FAB APF LEFT JOIN COLABORADOR COL ON (COL.COL_' +
        'CODIGO = APF.COL_CODIGO) '
      ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO) '
      ' WHERE FAB_CODIGO = :fab_codigo')
    Top = 256
    ParamData = <
      item
        Name = 'FAB_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited dsBuscaDetalhes: TDataSource
    Top = 256
  end
  inherited coCalcula: TACBrCalculadora
    Left = 68
    Top = 345
  end
  object cdsOperacoes: TFDQuery
    AutoCalcFields = False
    AfterScroll = cdsOperacoesAfterScroll
    Connection = dbConn
    SQL.Strings = (
      'SELECT ope_codigo, ope_nome, OPE_DESCRICAO FROM OPERACOES'
      'UNION ALL'
      'SELECT FIRST 1 0, '#39'TODOS'#39',  '#39'TODOS'#39' FROM OPERACOES'
      'ORDER BY 1')
    Left = 59
    Top = 224
    object cdsOperacoesOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      Size = 15
    end
    object cdsOperacoesOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsOperacoesOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
    end
  end
  object dsOperacoes: TDataSource
    DataSet = cdsOperacoes
    Left = 60
    Top = 273
  end
  object cdsApontar: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        '   SELECT  APF_CODIGO, FAB_CODIGO, COL.COL_NOME, APF.COL_CODIGO,' +
        ' APF_DATA_INI, '
      
        '  APF_DATA_FIM,  CASE WHEN APF_DATA_FIM IS NULL THEN APF_INICIAD' +
        'A ELSE 0 end AS APF_INICIADA, APF_REFUGADO, APF_REBARBA, APF_FIN' +
        'ALIZADAS ,  '
      
        '  case when APF_CANCELADO= '#39'S'#39' then '#39'SIM'#39' else '#39'N'#195'O'#39' end as APF_' +
        'CANCELADO '
      ' , APF_MOTIVOCANCELAMENTO, EQP_DESCRICAO, EQ.EQP_CODIGO '
      
        ' FROM APONTAMENTO_FAB APF LEFT JOIN COLABORADOR COL ON (COL.COL_' +
        'CODIGO = APF.COL_CODIGO) '
      ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO) ')
    Left = 379
    Top = 344
    object cdsApontarAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      Origin = 'APF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsApontarFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      Origin = 'FAB_CODIGO'
      Required = True
    end
    object cdsApontarCOL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COL_NOME'
      Origin = 'COL_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsApontarCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Origin = 'COL_CODIGO'
    end
    object cdsApontarCOL_NOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COL_NOME_1'
      Origin = 'COL_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsApontarAPF_DATA_INI: TSQLTimeStampField
      FieldName = 'APF_DATA_INI'
      Origin = 'APF_DATA_INI'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsApontarAPF_DATA_FIM: TSQLTimeStampField
      FieldName = 'APF_DATA_FIM'
      Origin = 'APF_DATA_FIM'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsApontarAPF_INICIADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'APF_INICIADA'
      Origin = 'APF_INICIADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsApontarAPF_REFUGADO: TFMTBCDField
      FieldName = 'APF_REFUGADO'
      Origin = 'APF_REFUGADO'
      Precision = 18
      Size = 5
    end
    object cdsApontarAPF_FINALIZADAS: TFMTBCDField
      FieldName = 'APF_FINALIZADAS'
      Origin = 'APF_FINALIZADAS'
      Precision = 18
      Size = 5
    end
    object cdsApontarAPF_CANCELADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APF_CANCELADO'
      Origin = 'APF_CANCELADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsApontarAPF_MOTIVOCANCELAMENTO: TStringField
      FieldName = 'APF_MOTIVOCANCELAMENTO'
      Origin = 'APF_MOTIVOCANCELAMENTO'
      Size = 60
    end
    object cdsApontarEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsApontarEQP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsApontarAPF_REBARBA: TFMTBCDField
      FieldName = 'APF_REBARBA'
      Origin = 'APF_REBARBA'
      Precision = 18
      Size = 5
    end
  end
  object dsApontar: TDataSource
    DataSet = cdsApontar
    Left = 444
    Top = 345
  end
  object cdsOcorrencias: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        ' SELECT OE.OCE_CODIGO, OE.OCO_CODIGO, OE.FAB_CODIGO, OE.COL_CODI' +
        'GO, OCE_ESTORNO, OCE_MOTIVO, OCE_DATAOCORRENCIA,'
      
        'OCE_DATAPREVISAO, OCE_DATAFIM, OCO_DESCRICAO, COL_NOME, APF_CODI' +
        'GO, OCE_COMENTARIO                             '
      
        'FROM OCORRENCIA_EVENTO OE                                       ' +
        '                                                '
      
        'INNER JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)     ' +
        '                                                '
      
        'LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = OE.COL_CODIGO)   ' +
        '                                                ')
    Left = 548
    Top = 257
    object cdsOcorrenciasOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
      Origin = 'OCE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOcorrenciasOCO_CODIGO: TIntegerField
      FieldName = 'OCO_CODIGO'
      Origin = 'OCO_CODIGO'
    end
    object cdsOcorrenciasFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      Origin = 'FAB_CODIGO'
    end
    object cdsOcorrenciasCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Origin = 'COL_CODIGO'
    end
    object cdsOcorrenciasOCE_ESTORNO: TIntegerField
      FieldName = 'OCE_ESTORNO'
      Origin = 'OCE_ESTORNO'
    end
    object cdsOcorrenciasOCE_MOTIVO: TStringField
      FieldName = 'OCE_MOTIVO'
      Origin = 'OCE_MOTIVO'
      Size = 60
    end
    object cdsOcorrenciasOCE_DATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'OCE_DATAOCORRENCIA'
      Origin = 'OCE_DATAOCORRENCIA'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsOcorrenciasOCE_DATAPREVISAO: TSQLTimeStampField
      FieldName = 'OCE_DATAPREVISAO'
      Origin = 'OCE_DATAPREVISAO'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsOcorrenciasOCE_DATAFIM: TSQLTimeStampField
      FieldName = 'OCE_DATAFIM'
      Origin = 'OCE_DATAFIM'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsOcorrenciasOCO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OCO_DESCRICAO'
      Origin = 'OCO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsOcorrenciasCOL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COL_NOME'
      Origin = 'COL_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsOcorrenciasAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      Origin = 'APF_CODIGO'
    end
    object cdsOcorrenciasOCE_COMENTARIO: TStringField
      FieldName = 'OCE_COMENTARIO'
      Origin = 'OCE_COMENTARIO'
      Size = 100
    end
  end
  object dsOcorrencias: TDataSource
    DataSet = cdsOcorrencias
    Left = 692
    Top = 225
  end
  object miocorrencias: TPopupMenu
    Left = 684
    Top = 265
    object Resolverocorrncia1: TMenuItem
      Caption = 'Resolver ocorr'#234'ncia'
      OnClick = Resolverocorrncia1Click
    end
  end
  object pmregistroOcorrencia: TPopupMenu
    Left = 880
    Top = 56
    object Noapontamento1: TMenuItem
      Caption = 'No apontamento'
      OnClick = Noapontamento1Click
    end
    object Naoperao1: TMenuItem
      Caption = 'Na opera'#231#227'o'
      OnClick = Naoperao1Click
    end
  end
end
