inherited frmExecutarEnvase: TfrmExecutarEnvase
  Caption = 'Executando envase'
  ClientHeight = 403
  ClientWidth = 970
  Font.Height = -16
  ExplicitWidth = 986
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 19
  object cxgrd1: TcxGrid [0]
    Left = 0
    Top = 97
    Width = 970
    Height = 274
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxgrd1DBTableView1: TcxGridDBTableView
      PopupMenu = pmEnvase
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataSource = dsMateriaPrima
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        Width = 106
      end
      object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'PRD_DESCRI'
        SortIndex = 0
        SortOrder = soAscending
        Width = 304
      end
      object cxgrd1DBTableView1MP_UCONSUMO: TcxGridDBColumn
        Caption = 'Consumo unit.'
        DataBinding.FieldName = 'MP_UCONSUMO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxgrd1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'MP_CONSUMOTOTAL'
        Width = 96
      end
      object cxgrd1DBTableView1PRD_UND: TcxGridDBColumn
        Caption = 'Und'
        DataBinding.FieldName = 'PRD_UND'
      end
      object cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn
        Caption = 'Estoque disponivel'
        DataBinding.FieldName = 'ESTOQUEDISPONIVEL'
        Options.Editing = False
        Options.Filtering = False
        Width = 145
      end
      object cxgrd1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn
        Caption = 'Controla Lote'
        DataBinding.FieldName = 'PRD_GERENCIA_LOTE'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 79
      end
      object cxgrd1DBTableView1MP_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'MP_SITUACAO'
        Visible = False
      end
      object cxgrd1DBTableView1MP_EMPENHADO: TcxGridDBColumn
        AlternateCaption = 'Empenhado'
        Caption = 'Empenhado'
        DataBinding.FieldName = 'MP_EMPENHADO'
        Visible = False
        VisibleForCustomization = False
        Width = 90
      end
      object cxgrd1DBTableView1PercConsumido: TcxGridDBColumn
        Caption = 'Percentual consumido'
        DataBinding.FieldName = 'PercConsumido'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AnimationRestartDelay = 1
        Properties.AnimationSpeed = 1
        Properties.AssignedValues.Min = True
        Properties.Max = 100.000000000000000000
        Properties.OverloadBeginColor = clRed
        Properties.OverloadValue = 100.000000000000000000
        Properties.PeakColor = clLime
        Properties.PeakValue = 2.000000000000000000
        Properties.ShowOverload = True
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
        Width = 166
      end
      object cxgrd1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'PercConsumido'
        Visible = False
        VisibleForCustomization = False
      end
      object cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxgrd1DBTableView1MP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'MP_CODIGO'
        Visible = False
      end
      object cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PED_CODIGO'
        Visible = False
      end
      object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
      end
      object cxgrd1DBTableView1MP_CODIGO_SUBST: TcxGridDBColumn
        DataBinding.FieldName = 'MP_CODIGO_SUBST'
        Visible = False
      end
      object cxgrd1DBTableView1SUBST: TcxGridDBColumn
        DataBinding.FieldName = 'SUBST'
        Visible = False
      end
      object cxgrd1DBTableView1MP_CUSTO: TcxGridDBColumn
        Caption = 'Custo'
        DataBinding.FieldName = 'MP_CUSTO'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.Filter.DateTimeFormat = 'YYYY-MM-DD'
      DataController.Filter.TranslateBetween = True
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfMonths]
      DateTimeHandling.DateFormat = 'YYYY-MM-DD'
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.HeaderHeight = 40
      OptionsView.BandHeaderEndEllipsis = True
      OptionsView.BandHeaderHeight = 20
      OptionsView.BandHeaderLineCount = 2
      Bands = <
        item
        end
        item
          Caption = 'Datas'
          Width = 90
        end
        item
          Caption = 'Entrega'
        end
        item
          Caption = 'Produto'
          Width = 310
        end
        item
          Caption = 'Quantidade'
        end
        item
          Width = 89
        end
        item
          Caption = 'Custos'
          Width = 590
        end>
      object cxgrd1DBBandedTableView1OPR_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPR_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1OPR_EMISSAO: TcxGridDBBandedColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'OPR_EMISSAO'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn
        Caption = 'Produzir'
        DataBinding.FieldName = 'IOP_QUANTIDADE'
        Width = 44
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn
        Caption = 'Ordem Produ'#231#227'o'
        DataBinding.FieldName = 'IOP_NORDEM'
        HeaderAlignmentHorz = taCenter
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        Width = 89
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'PRD_DESCRI'
        Width = 186
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn
        Caption = 'UND'
        DataBinding.FieldName = 'PRD_UND'
        Width = 34
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1OPR_DTENTREGA: TcxGridDBBandedColumn
        Caption = 'Data'
        DataBinding.FieldName = 'IOP_DTENTREGA'
        Width = 68
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn
        Caption = 'Conclus'#227'o'
        DataBinding.FieldName = 'IOP_DATA_CONCLUSAO'
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
        Caption = 'Pedido'
        DataBinding.FieldName = 'PED_CODIGO'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1OPR_CONCLUSAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPR_CONCLUSAO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1LEFTDAYS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEFTDAYS'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA: TcxGridDBBandedColumn
        Caption = 'Concluida'
        DataBinding.FieldName = 'IOP_QTDE_CONCLUIDA'
        Width = 55
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_QTDE_PRODUZINDO: TcxGridDBBandedColumn
        Caption = 'Produzindo'
        DataBinding.FieldName = 'IOP_QTDE_PRODUZINDO'
        Width = 70
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_QTDE_REFUGADA: TcxGridDBBandedColumn
        Caption = 'Refugada'
        DataBinding.FieldName = 'IOP_QTDE_REFUGADA'
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1Prazo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Prazo'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AnimationSpeed = 1
        Properties.AssignedValues.Max = True
        Properties.AssignedValues.Min = True
        Properties.PeakSize = 1
        Properties.PeakValue = 1.000000000000000000
        Properties.ShowOverload = True
        Properties.SolidTextColor = True
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1FALTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FALTA'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AssignedValues.Min = True
        Properties.Max = 100.000000000000000000
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Grouping = False
        Options.ShowCaption = False
        Width = 52
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 1
        IsCaptionAssigned = True
      end
      object cxgrd1DBBandedTableView1IOP_STATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'IOP_STATUS'
        SortIndex = 0
        SortOrder = soAscending
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTOMP: TcxGridDBBandedColumn
        Caption = 'Mat'#233'ria-prima'
        DataBinding.FieldName = 'IOP_CUSTOMP'
        Width = 88
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1DEADLINE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEADLINE'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLI_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1OPR_VALIDADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPR_VALIDADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_SEQUENCIA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_SEQUENCIA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_PESO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_PESO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_DATA_INICIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DATA_PREVISTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_DATA_PREVISTA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DATA_AJUSTADA: TcxGridDBBandedColumn
        Caption = 'Data ajustada'
        DataBinding.FieldName = 'IOP_DATA_AJUSTADA'
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DIAS_CORRIDOS: TcxGridDBBandedColumn
        Caption = 'Dias corridos'
        DataBinding.FieldName = 'IOP_DIAS_CORRIDOS'
        Width = 72
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_STATUS_ENTREGA: TcxGridDBBandedColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'IOP_STATUS_ENTREGA'
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'CLI_RAZAO'
        Width = 295
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_PRECO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_PRECO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_CUSTO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTOOPERACAO: TcxGridDBBandedColumn
        Caption = 'Opera'#231#227'o'
        DataBinding.FieldName = 'IOP_CUSTOOPERACAO'
        Width = 96
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTOCOLABORADOR: TcxGridDBBandedColumn
        Caption = 'M'#227'o-de-obra'
        DataBinding.FieldName = 'IOP_CUSTOCOLABORADOR'
        Width = 77
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTOEQUIPAMENTO: TcxGridDBBandedColumn
        Caption = 'Equipamento'
        DataBinding.FieldName = 'IOP_CUSTOEQUIPAMENTO'
        Width = 83
        Position.BandIndex = 6
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_CUSTOSERVICOS: TcxGridDBBandedColumn
        Caption = 'Servi'#231'os'
        DataBinding.FieldName = 'IOP_CUSTOSERVICOS'
        Width = 66
        Position.BandIndex = 6
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRF_REGISTRO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRF_REGISTRO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRO_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRO_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1FTI_REGISTRO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FTI_REGISTRO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1EMP_CODIGO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMP_CODIGO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_DATALIBERACAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_DATALIBERACAO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1OPR_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPR_STATUS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IOP_SEQ_PRG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IOP_SEQ_PRG'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1CustoSubOrdens: TcxGridDBBandedColumn
        Caption = 'Subordens'
        DataBinding.FieldName = 'CustoSubOrdens'
        Width = 75
        Position.BandIndex = 6
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1CustoTotal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustoTotal'
        Width = 84
        Position.BandIndex = 6
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1IndicadorFinanceiro: TcxGridDBBandedColumn
        Caption = 'Indicador Financeiro'
        DataBinding.FieldName = 'IndicadorFinanceiro'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cxgrd1DBBandedTableView1IOP_PREFIXO: TcxGridDBBandedColumn
        Caption = 'Prefixo'
        DataBinding.FieldName = 'IOP_PREFIXO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrd1DBTableView1
    end
  end
  inherited pnUtil: TPanel
    Top = 371
    Width = 970
    ExplicitTop = 371
    ExplicitWidth = 970
    DesignSize = (
      970
      32)
    inherited btnOk: TSpeedButton
      Left = 722
      Caption = 'Confirmar'
      Font.Height = -13
      ParentFont = False
      ExplicitLeft = 285
    end
    inherited btnCancelar: TSpeedButton
      Left = 847
      Font.Height = -13
      ParentFont = False
      ExplicitLeft = 410
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 970
    Height = 97
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 47
      Top = 8
      Width = 93
      Height = 19
      Caption = 'Colaborador:'
    end
    object Label2: TLabel
      Left = 41
      Top = 38
      Width = 99
      Height = 19
      Caption = 'Equipamento:'
    end
    object Label3: TLabel
      Left = 16
      Top = 69
      Width = 124
      Height = 19
      Caption = 'Tipo de medi'#231#227'o:'
    end
    object Label4: TLabel
      Left = 713
      Top = 8
      Width = 66
      Height = 19
      Caption = 'Validade:'
    end
    object lLote: TLabel
      Left = 520
      Top = 48
      Width = 5
      Height = 19
    end
    object Label5: TLabel
      Left = 498
      Top = 8
      Width = 80
      Height = 19
      Caption = 'Fabrica'#231#227'o:'
    end
    object EdColaboradorCodigo: TEdit
      Left = 146
      Top = 8
      Width = 61
      Height = 27
      TabOrder = 0
      OnExit = EdColaboradorCodigoExit
    end
    object edColaborador: TSgDbSearchCombo
      Left = 208
      Top = 8
      Width = 251
      Height = 27
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
      LookupOrderBy = 'COL_NOME'
      LookupTable = 'COLABORADOR'
      LookupDispl = 'COL_NOME'
      OnSelect = edColaboradorSelect
      GridAutoSize = False
      LookupSource = qColaborador
      DataField = 'COL_CODIGO'
      DataSource = dsEdits
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
    object edEquipamento: TEdit
      Left = 146
      Top = 38
      Width = 61
      Height = 27
      TabOrder = 2
      OnExit = edEquipamentoExit
    end
    object DBComboBox1: TDBComboBox
      Left = 146
      Top = 66
      Width = 335
      Height = 27
      DataField = 'ENO_TIPO'
      DataSource = dsEdits
      Items.Strings = (
        'GRAVIM'#201'TRICO'
        'POR SENSOR DE N'#205'VEL'
        'POR VOLUME'
        'DO FLUXO DE MASSA ')
      TabOrder = 4
    end
    object dtValidade: TJvDateEdit
      Left = 780
      Top = 5
      Width = 121
      Height = 27
      ShowNullDate = False
      TabOrder = 5
    end
    object edPesquisaEquipamento: TSgDbSearchCombo
      Left = 208
      Top = 38
      Width = 251
      Height = 27
      TabOrder = 6
      CharCase = ecUpperCase
      LookupSelect = 'eqp_codigo, eqp_descricao'
      LookupOrderBy = 'EQP_descricao'
      LookupTable = 'EQUIPAMENTO'
      LookupDispl = 'EQP_DESCRICAO'
      OnSelect = edPesquisaEquipamentoSelect
      GridAutoSize = False
      LookupSource = qEquipamento
      DataField = 'EQP_CODIGO'
      DataSource = dsEdits
      LookupKeyField = 'EQP_codigo'
      FiltroTabela = 'eqp_descricao is not null'
      ShowButton = True
      AutoF8WinTitulo = 'Cadastro de equipamentos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Equipamento'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object dtFabricacao: TJvDateEdit
      Left = 579
      Top = 5
      Width = 121
      Height = 27
      ShowNullDate = False
      TabOrder = 3
    end
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 384
    Top = 104
  end
  inherited dsEdits: TDataSource
    Left = 69
    Top = 31
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      'SELECT *'
      'FROM envase_ordem'
      'where eno_codigo = :eno_codigo')
    Left = 19
    Top = 32
    ParamData = <
      item
        Name = 'ENO_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditENO_CODIGO: TIntegerField
      FieldName = 'ENO_CODIGO'
      Origin = 'ENO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Origin = 'COL_CODIGO'
    end
    object cdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
    end
    object cdsEditENO_TIPO: TIntegerField
      FieldName = 'ENO_TIPO'
      Origin = 'ENO_TIPO'
      OnGetText = cdsEditENO_TIPOGetText
      OnSetText = cdsEditENO_TIPOSetText
    end
    object cdsEditIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 11
    Top = 96
  end
  inherited dsEditDetail: TDataSource
    Left = 93
    Top = 143
  end
  inherited JvValidators1: TJvValidators
    Left = 369
    Top = 66
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 424
    Top = 32
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 465
    Top = 66
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COL_CODIGO, COL_nome,COL_FUNC,COL_SETOR FROM COLABORADOR')
    SQLConnection = dbConn
    Left = 24
    Top = 172
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select eqp_codigo, eqp_descricao'
      'from equipamento')
    SQLConnection = dbConn
    Left = 64
    Top = 168
  end
  object cdsMateriaPrima: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT  MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo, MP.MP_COD' +
        'IGO,  iop_codigo, mp.MP_UCONSUMO, mp_situacao, pr.PRD_REFER, pr.' +
        'PRD_DESCRI,   '
      ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,pr.prd_und,PRD_GERENCIA_LOTE,'
      '     (SELECT prd_descri '
      
        '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                    ' +
        '             '
      
        '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)' +
        ' '
      '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,'
      
        '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kar' +
        'dex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) Estoq' +
        'ueDisponivel, '
      '   MP_CUSTO                                 '
      
        ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                             ' +
        '   '
      
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)             ' +
        '   '
      ' where iop_codigo = 375')
    Left = 443
    Top = 264
    object cdsMateriaPrimaMP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
      Origin = 'MP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMateriaPrimaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsMateriaPrimaMP_UCONSUMO: TFMTBCDField
      FieldName = 'MP_UCONSUMO'
      Origin = 'MP_UCONSUMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_SITUACAO: TStringField
      FieldName = 'MP_SITUACAO'
      Origin = 'MP_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsMateriaPrimaPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsMateriaPrimaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 100
    end
    object cdsMateriaPrimaMP_EMPENHADO: TFMTBCDField
      FieldName = 'MP_EMPENHADO'
      Origin = 'MP_EMPENHADO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_CONSUMOTOTAL: TFMTBCDField
      FieldName = 'MP_CONSUMOTOTAL'
      Origin = 'MP_CONSUMOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 7
    end
    object cdsMateriaPrimaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object cdsMateriaPrimaMP_CODIGO_SUBST: TIntegerField
      FieldName = 'MP_CODIGO_SUBST'
      Origin = 'MP_CODIGO_SUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMateriaPrimaSUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBST'
      Origin = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 100
    end
    object cdsMateriaPrimaPercConsumido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PercConsumido'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object cdsMateriaPrimaPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 6
    end
    object cdsMateriaPrimaPRD_GERENCIA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_GERENCIA_LOTE'
      Origin = 'PRD_GERENCIA_LOTE'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 1
    end
    object cdsMateriaPrimaESTOQUEDISPONIVEL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_CUSTO: TFMTBCDField
      FieldName = 'MP_CUSTO'
      Origin = 'MP_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
  end
  object dsMateriaPrima: TDataSource
    DataSet = cdsMateriaPrima
    Left = 516
    Top = 265
  end
  object pmEnvase: TPopupMenu
    Left = 716
    Top = 265
    object Adicionaritem1: TMenuItem
      Caption = 'Adicionar item'
      OnClick = Adicionaritem1Click
    end
    object miExcluiritem: TMenuItem
      Caption = 'Excluir item'
      OnClick = miExcluiritemClick
    end
  end
end
