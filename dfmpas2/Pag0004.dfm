inherited FormContasPagarGrid: TFormContasPagarGrid
  Left = 311
  Top = 242
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Lista de Contas '#224' Pagar'
  ClientHeight = 602
  ClientWidth = 1112
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCanResize = FormCanResize
  ExplicitWidth = 1118
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  object Lb_lista: TLabel [0]
    Left = 321
    Top = 1
    Width = 3
    Height = 14
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 156
    Width = 1112
    Height = 327
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Parcelas'
    TabOrder = 1
    object Panel1: TPanel
      Left = 4
      Top = 455
      Width = 786
      Height = 42
      BevelOuter = bvLowered
      TabOrder = 0
      object Label5: TLabel
        Left = 4
        Top = 15
        Width = 82
        Height = 13
        Caption = 'Total '#224' Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 202
        Top = 15
        Width = 67
        Height = 13
        Caption = 'Total Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 385
        Top = 15
        Width = 70
        Height = 13
        Caption = 'Falta Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 597
        Top = 7
        Width = 46
        Height = 13
        Caption = 'Pendente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 670
        Top = 6
        Width = 41
        Height = 13
        Caption = 'Previs'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 597
        Top = 24
        Width = 46
        Height = 13
        Caption = 'Liquidada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 670
        Top = 24
        Width = 42
        Height = 13
        Caption = 'Exclu'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 735
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Vencidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrTotalPagar: TCurrencyEdit
        Left = 85
        Top = 11
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrTotalPago: TCurrencyEdit
        Left = 268
        Top = 11
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object CurrFaltaPagar: TCurrencyEdit
        Left = 454
        Top = 11
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object Panel9: TPanel
        Left = 581
        Top = 6
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clBlack
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 654
        Top = 6
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clPurple
        TabOrder = 4
      end
      object Panel2: TPanel
        Left = 581
        Top = 23
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clBlue
        TabOrder = 5
      end
      object Panel4: TPanel
        Left = 654
        Top = 23
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = 47360
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 47360
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object Panel5: TPanel
        Left = 719
        Top = 23
        Width = 14
        Height = 15
        BevelOuter = bvLowered
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 47360
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 16
      Width = 1108
      Height = 309
      Align = alClient
      PopupMenu = PMMarcar
      TabOrder = 1
      OnEnter = cxGrid1Enter
      OnExit = cxGrid1Exit
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxGrid1DBTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        DataController.DataSource = DsPesquisaPagar
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDayPeriods, dtfRelativeWeeks, dtfMonths, dtfYears]
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1PPC_SIT_LIBERACAO: TcxGridDBColumn
          Caption = 'Controle'
          DataBinding.FieldName = 'PPC_SIT_LIBERACAO'
          Width = 42
        end
        object cxGrid1DBTableView1SELECAO_FAT: TcxGridDBColumn
          Caption = '**'
          DataBinding.FieldName = 'SELECAO_FAT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayGrayed = 'False'
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
          Properties.OnChange = cxGrid1DBTableView1SELECAO_FATPropertiesChange
          Width = 21
        end
        object cxGrid1DBTableView1PPC_SITPAG: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'PPC_SITPAG'
          Options.Editing = False
          Width = 23
        end
        object cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn
          Caption = 'Emp.'
          DataBinding.FieldName = 'EMP_CODIGO'
          Options.Editing = False
          Width = 35
        end
        object cxGrid1DBTableView1PAG_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PAG_CODIGO'
          Options.Editing = False
          Width = 47
        end
        object cxGrid1DBTableView1PAG_NUMDOC: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'PAG_NUMDOC'
          Options.Editing = False
          Width = 92
        end
        object cxGrid1DBTableView1PPC_NUMER: TcxGridDBColumn
          Caption = 'PC'
          DataBinding.FieldName = 'PPC_NUMER'
          Options.Editing = False
          Width = 66
        end
        object cxGrid1DBTableView1BAN_APELIDO: TcxGridDBColumn
          Caption = 'Conta Banco'
          DataBinding.FieldName = 'BAN_APELIDO'
          Options.Editing = False
        end
        object cxGrid1DBTableView1PAG_DTEMIS: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'PAG_DTEMIS'
          Options.Editing = False
          Width = 69
        end
        object cxGrid1DBTableView1FOR_RAZAO: TcxGridDBColumn
          Caption = 'Favorecido'
          DataBinding.FieldName = 'FOR_RAZAO'
          Options.Editing = False
          Width = 172
        end
        object cxGrid1DBTableView1PPC_VENCTO: TcxGridDBColumn
          Caption = 'Vencto'
          DataBinding.FieldName = 'PPC_VENCTO'
          Options.Editing = False
          Width = 75
        end
        object cxGrid1DBTableView1PPC_VLPARC: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'PPC_VLPARC'
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_PAGTO: TcxGridDBColumn
          Caption = 'Pagamento'
          DataBinding.FieldName = 'PPC_PAGTO'
          Options.Editing = False
          Width = 86
        end
        object cxGrid1DBTableView1PPC_VLPAGO: TcxGridDBColumn
          Caption = 'Valor pago'
          DataBinding.FieldName = 'PPC_VLPAGO'
          Options.Editing = False
        end
        object cxGrid1DBTableView1CCPendente: TcxGridDBColumn
          Caption = 'Pendente'
          DataBinding.FieldName = 'CCPendente'
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_NPARCELAS: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_NPARCELAS'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1CCT_DESCRI: TcxGridDBColumn
          DataBinding.FieldName = 'CCT_DESCRI'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_MULTA: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_MULTA'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_JUROS: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_JUROS'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_DESCTO: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_DESCTO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_EXCLUSAO: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_EXCLUSAO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PAG_FAVORECIDO: TcxGridDBColumn
          DataBinding.FieldName = 'PAG_FAVORECIDO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'FOR_CODIGO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PAG_OBS: TcxGridDBColumn
          DataBinding.FieldName = 'PAG_OBS'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_PREVISAO: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_PREVISAO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_STATUS'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PAG_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'PAG_REGISTRO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PPC_VALOR_APONTADO: TcxGridDBColumn
          DataBinding.FieldName = 'PPC_VALOR_APONTADO'
          Visible = False
        end
      end
      object cxGrid1DBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dscontrole
        DataController.DetailKeyFieldNames = 'PAG_REGISTRO'
        DataController.KeyFieldNames = 'PAG_REGISTRO'
        DataController.MasterKeyFieldNames = 'PAG_REGISTRO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.CardExpanding = True
        OptionsCustomize.RowMoving = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CardIndent = 4
        object cxGrid1DBCardView1CTP_DESCRI: TcxGridDBCardViewRow
          Caption = 'A'#231#227'o'
          DataBinding.FieldName = 'CTP_DESCRI'
          Options.Editing = False
          Options.Filtering = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1CTP_DATA_MOV: TcxGridDBCardViewRow
          Caption = 'Movimento'
          DataBinding.FieldName = 'CTP_DATA_MOV'
          Options.Editing = False
          Options.Filtering = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1USU_NOME: TcxGridDBCardViewRow
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USU_NOME'
          Options.Editing = False
          Options.Filtering = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1PAG_CODIGO: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PAG_CODIGO'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1PAG_REGISTRO: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PAG_REGISTRO'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Position.BeginsLayer = True
        end
      end
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        OnDblClick = cxGrid1DBBandedTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        OnEditing = cxGrid1DBBandedTableView1Editing
        DataController.DataSource = DsPesquisaPagar
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
        DataController.Filter.Active = True
        DataController.Filter.OnGetValueList = cxGrid1DBBandedTableView1DataControllerFilterGetValueList
        DataController.Filter.TranslateBetween = True
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfMonths, dtfYears]
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaderLineCount = 2
        Bands = <
          item
            Caption = 'Controle Financeiro'
            FixedKind = fkLeft
            Width = 222
          end
          item
          end>
        object cxGrid1DBBandedTableView1PPC_SIT_LIBERACAO: TcxGridDBBandedColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'PPC_SIT_LIBERACAO'
          Options.Editing = False
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_VALOR_APONTADO: TcxGridDBBandedColumn
          Caption = 'Valor Autorizado'
          DataBinding.FieldName = 'PPC_VALOR_APONTADO'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Estornar: TcxGridDBBandedColumn
          RepositoryItem = btnEstornar
          OnGetCellHint = cxGrid1DBBandedTableView1EstornarGetCellHint
          Options.Filtering = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Width = 24
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Reprovar: TcxGridDBBandedColumn
          RepositoryItem = btnReprovar
          OnGetCellHint = cxGrid1DBBandedTableView1ReprovarGetCellHint
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1SELECAO_FAT: TcxGridDBBandedColumn
          Caption = '**'
          DataBinding.FieldName = 'SELECAO_FAT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayGrayed = 'False'
          Properties.NullStyle = nssUnchecked
          Options.Filtering = False
          Options.Grouping = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1EMP_CODIGO: TcxGridDBBandedColumn
          Caption = 'Emp'
          DataBinding.FieldName = 'EMP_CODIGO'
          Options.Editing = False
          Width = 28
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_SITPAG: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_SITPAG'
          OnCustomDrawCell = cxGrid1DBBandedTableView1PPC_SITPAGCustomDrawCell
          OnGetCellHint = cxGrid1DBBandedTableView1PPC_SITPAGGetCellHint
          Options.Editing = False
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object cxGrid1DBBandedTableView1PAG_CODIGO: TcxGridDBBandedColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PAG_CODIGO'
          Options.Editing = False
          Width = 43
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PAG_NUMDOC: TcxGridDBBandedColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'PAG_NUMDOC'
          Options.Editing = False
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_NUMER: TcxGridDBBandedColumn
          Caption = 'PC'
          DataBinding.FieldName = 'PPC_NUMER'
          Options.Editing = False
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1BAN_APELIDO: TcxGridDBBandedColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'BAN_APELIDO'
          Options.Editing = False
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PAG_DTEMIS: TcxGridDBBandedColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'PAG_DTEMIS'
          Options.Editing = False
          Width = 81
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn
          Caption = 'Fornecedor'
          DataBinding.FieldName = 'FOR_RAZAO'
          Options.Editing = False
          Width = 95
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_VENCTO: TcxGridDBBandedColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'PPC_VENCTO'
          Options.Editing = False
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_VLPARC: TcxGridDBBandedColumn
          Caption = 'Valor Parcela'
          DataBinding.FieldName = 'PPC_VLPARC'
          Options.Editing = False
          Options.Filtering = False
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_PAGTO: TcxGridDBBandedColumn
          Caption = 'Pagamento'
          DataBinding.FieldName = 'PPC_PAGTO'
          Options.Editing = False
          Width = 75
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_VLPAGO: TcxGridDBBandedColumn
          Caption = 'Valor pago'
          DataBinding.FieldName = 'PPC_VLPAGO'
          Options.Editing = False
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object fpg: TcxGridDBBandedColumn
          Caption = 'Forma pag.'
          DataBinding.FieldName = 'fpg_descricao'
          Width = 143
          Position.BandIndex = 1
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CCPendente: TcxGridDBBandedColumn
          Caption = 'Pendente'
          DataBinding.FieldName = 'CCPendente'
          Options.Editing = False
          Options.Filtering = False
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_STATUS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_STATUS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_PREVISAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_PREVISAO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PAG_OBS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAG_OBS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FOR_CODIGO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FOR_CODIGO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PAG_FAVORECIDO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAG_FAVORECIDO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_EXCLUSAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_EXCLUSAO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_DESCTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_DESCTO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_JUROS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_JUROS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_MULTA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_MULTA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CCT_DESCRI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCT_DESCRI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PPC_NPARCELAS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PPC_NPARCELAS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PAG_REGISTRO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAG_REGISTRO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
        object cxgrdlvlGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBCardView1
          OnGetGridView = cxgrdlvlGrid1Level2GetGridView
        end
      end
    end
  end
  object GroupBox4: TGroupBox [2]
    Left = 0
    Top = 558
    Width = 1112
    Height = 44
    Align = alBottom
    Caption = 'Observa'#231#227'o'
    TabOrder = 2
    object DBEdit3: TDBEdit
      Left = 8
      Top = 16
      Width = 949
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PAG_OBS'
      DataSource = DsPesquisaPagar
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel6: TPanel [3]
    Left = 0
    Top = 483
    Width = 1112
    Height = 37
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label13: TLabel
      Left = 146
      Top = 9
      Width = 80
      Height = 16
      Caption = 'Total '#224' Pagar:'
    end
    object Label14: TLabel
      Left = 742
      Top = 9
      Width = 65
      Height = 16
      Caption = 'Total Pago:'
    end
    object Label15: TLabel
      Left = 913
      Top = 9
      Width = 90
      Height = 16
      Caption = 'Total Pendente:'
    end
    object Label16: TLabel
      Left = 325
      Top = 9
      Width = 112
      Height = 16
      Caption = 'Total em Desconto:'
    end
    object Label17: TLabel
      Left = 537
      Top = 9
      Width = 88
      Height = 16
      Caption = 'Total em Juros:'
    end
    object Label18: TLabel
      Left = 7
      Top = 9
      Width = 70
      Height = 16
      Caption = 'Quantidade:'
    end
    object CurrTotalReceber: TCurrencyEdit
      Left = 233
      Top = 7
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrTotalRecebido: TCurrencyEdit
      Left = 820
      Top = 7
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrFaltaReceber: TCurrencyEdit
      Left = 1010
      Top = 7
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrTotalDesconto: TCurrencyEdit
      Left = 444
      Top = 7
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object CurrTotalJuros: TCurrencyEdit
      Left = 632
      Top = 7
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CurrTotalQuantidade: TCurrencyEdit
      Left = 84
      Top = 7
      Width = 54
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object grpContaFinanceira: TGroupBox [4]
    Left = 0
    Top = 520
    Width = 1112
    Height = 38
    Align = alBottom
    Caption = 'Conta Financeira'
    TabOrder = 4
    object dbedtContaFinanceira: TDBEdit
      Left = 8
      Top = 13
      Width = 949
      Height = 22
      Color = 14145495
      DataField = 'CCT_DESCRI'
      DataSource = DsPesquisaPagar
      TabOrder = 0
    end
  end
  object pnPesq: TPanel [5]
    Left = 0
    Top = 0
    Width = 1112
    Height = 156
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnImprimir: TJvArrowButton
      Left = 887
      Top = 125
      Width = 100
      Height = 25
      Hint = 'Relat'#243'rios de t'#237'tulos listados'
      GroupIndex = 1
      DropDown = PopupMenu1
      Caption = '&Imprimir'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object BitPesquisar: TBitBtn
      Left = 993
      Top = 10
      Width = 100
      Height = 25
      Hint = 'Pesquisar t'#237'tulos de acordo com parametros'
      Caption = '&Pesquisar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitPesquisarClick
    end
    object GbFornecedor: TGroupBox
      Left = 3
      Top = 41
      Width = 447
      Height = 41
      Caption = 'Fornecedor'
      TabOrder = 1
      object CbFornecedor: TSgDbSearchCombo
        Left = 9
        Top = 14
        Width = 406
        Height = 22
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'FOR_CODIGO, FOR_RAZAO, CCT_CODIGO'
        LookupOrderBy = 'for_razao'
        LookupTable = 'for0000'
        LookupDispl = 'FOR_RAZAO'
        OnButtonClick = CbFornecedorButtonClick
        OnSelect = CbFornecedorSelect
        GridAutoSize = False
        LookupSource = qForconsulta
        LookupKeyField = 'for_codigo'
        ShowButton = True
        LookupTableShare = 'FORNECEDORES'
        AutoF8WinTitulo = 'Favorecidos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
    end
    object GbData: TGroupBox
      Left = 2
      Top = 1
      Width = 447
      Height = 41
      TabOrder = 2
      object Label1: TLabel
        Left = 120
        Top = 17
        Width = 54
        Height = 14
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 277
        Top = 17
        Width = 53
        Height = 14
        Caption = 'Data Final :'
      end
      object cbbTipoData: TComboBox
        Left = 8
        Top = 12
        Width = 97
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 1
        TabOrder = 0
        Text = 'VENCIMENTO'
        Items.Strings = (
          'EMISSAO'
          'VENCIMENTO')
      end
      object RxDataInicial: TJvDateEdit
        Left = 178
        Top = 13
        Width = 89
        Height = 22
        DateAutoBetween = False
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
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnChange = RxDataInicialChange
        OnExit = RxDataInicialExit
      end
      object RxDataFinal: TJvDateEdit
        Left = 350
        Top = 13
        Width = 90
        Height = 22
        DateAutoBetween = False
        AutoSelect = False
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
        HideSelection = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
        OnChange = RxDataInicialChange
        OnExit = RxDataFinalExit
      end
    end
    object BitSair: TBitBtn
      Left = 993
      Top = 125
      Width = 100
      Height = 25
      Hint = 'Sair da tela'
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitSairClick
    end
    object BitBaixar: TBitBtn
      Left = 993
      Top = 40
      Width = 100
      Height = 25
      Hint = 'Baixar t'#237'tulos'
      Caption = '&Baixar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003366FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600
        99CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600CCCC0099CC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600FFFF00CCCC00
        CCCC0099CC0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00336600FFFF00FFFF00FFFF00CCCC00CCCC0099CC0099CC003366FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600336600336600FFFF00
        CCCC0099CC003366003366003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600FFFF00CCCC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFCC66FFCC66FFCC66FFCC66FF
        CC66FF9933FF9933FF9933CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FF9933CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFFF99FFFF99FFFF99FFCC66FF
        CC66FFCC66FFCC66FFCC66CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBaixarClick
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 115
      Width = 214
      Height = 41
      Caption = 'Filtrar (Desconsidera a pesquisa anterior)'
      TabOrder = 5
      object ChkPrevisao: TCheckBox
        Left = 12
        Top = 16
        Width = 73
        Height = 17
        Caption = '&Previs'#227'o'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        OnClick = ChkPrevisaoClick
      end
      object CheckVencidas: TCheckBox
        Left = 118
        Top = 16
        Width = 77
        Height = 17
        Caption = '&Vencidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckVencidasClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 456
      Top = 115
      Width = 393
      Height = 41
      Caption = 'Status'
      TabOrder = 6
      object Image1: TImage
        Left = 14
        Top = 16
        Width = 16
        Height = 15
        Center = True
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
        Stretch = True
      end
      object Label38: TLabel
        Left = 32
        Top = 17
        Width = 45
        Height = 14
        Caption = 'Pendente'
      end
      object Image4: TImage
        Left = 91
        Top = 15
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFD8F2F89ADDEE72D0E772D0E872D0E872D0E872D0E872D0E872D0E8
          72D0E872D0E872D0E872D0E872D0E872D0E872D0E79ADDEED8F2F8FFFFFFD8F2
          F80AADD600AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
          AAD400AAD400AAD400AAD400AAD400AAD400AAD40AADD6D8F2F896DCED00AAD4
          00AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AA
          D400AAD400AAD400AAD400AAD400AAD400AAD492DAEC77D2E804ABD507ACD508
          ADD509ADD60AADD60BAED60BAED60BAED60BAED60BAED60BAED60AADD60AADD6
          09ADD508ADD506ACD504ABD502ABD472D0E87CD4E916B1D818B2D819B2D81AB3
          D81BB3D91BB3D91CB3D91CB3D91CB3D91CB3D91CB3D91BB3D91AB3D819B2D819
          B2D817B2D815B1D814B1D775D1E986D7EB26B7DA28B7DB29B8DB2AB8DB2CB9DB
          2CB9DB2DB9DC2DB9DC2EB9DC2DB9DC2DB9DC2CB9DB2BB8DB2AB8DB29B8DB27B7
          DB25B6DA23B6DA7BD3E98BD8EB34BBDD37BCDD39BDDE3ABDDE3CBEDE3DBEDE3E
          BFDE3EBFDE3EBFDE3EBFDE3EBFDE3DBEDE3CBEDE3ABDDE38BDDE36BCDD34BBDD
          32BBDC80D5EB90DAEC42C0DF45C1E048C2E04AC3E04CC3E14DC4E14EC4E14FC4
          E14FC4E14FC4E14EC4E14DC4E14CC3E14AC3E048C2E046C1E043C0DF40BFDF83
          D6EB95DCED4EC4E151C5E255C6E258C7E35BC8E35DC9E45FCAE460CAE461CAE4
          60CAE45FCAE45EC9E45CC9E359C8E356C7E253C6E24FC4E14BC3E185D6EB98DD
          EE55C6E25AC8E35EC9E462CBE566CCE56ACDE66DCEE670CFE771D0E771D0E76F
          CFE76CCEE668CDE664CBE561CAE45CC9E458C7E353C6E288D7EC98DDEE56C7E2
          5BC8E35FCAE464CBE568CDE66CCEE671D0E775D1E877D2E877D2E874D1E870CF
          E76CCEE667CCE563CBE55EC9E45AC8E355C6E289D8EC96DCED50C5E154C6E258
          C7E35BC8E35FCAE461CAE464CBE565CCE566CCE566CCE565CCE564CBE562CBE4
          5FCAE45BC8E358C7E354C6E250C5E187D7EB91DBEC45C1E048C2E04BC3E14EC4
          E150C5E252C5E254C6E255C6E255C6E255C6E255C6E254C6E253C6E251C5E24E
          C4E14CC3E149C2E046C1E085D7EB8CD9EB38BDDD3ABDDE3DBEDE3FBFDF41C0DF
          42C0DF43C0DF44C1DF45C1E045C1E044C1DF44C1DF43C0DF41C0DF40BFDF3EBF
          DE3BBEDE39BDDE81D5EA86D7EA29B8DB2BB8DB2DB9DC2FBADC30BADC32BBDC32
          BBDD33BBDD33BBDD33BBDD33BBDD33BBDD32BBDC31BADC30BADC2EB9DC2DB9DC
          2BB8DB7DD4EA7FD4E919B2D81BB3D91DB4D91EB4D920B5D921B5DA21B5DA22B5
          DA22B5DA22B5DA22B5DA22B5DA21B5DA21B5DA1FB4D91EB4D91DB4D91BB3D977
          D2E999DEEE09ADD60BAED60DAED60EAFD60FAFD710AFD711B0D711B0D711B0D7
          12B0D711B0D711B0D711B0D710AFD70FAFD70EAFD60DAED60AADD694DBEDDBF3
          F90DAED600AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
          AAD400AAD400AAD400AAD400AAD400AAD400AAD40DAED6DBF3F9FFFFFFDBF3F9
          9BDEEF72D0E772D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0
          E872D0E872D0E872D0E872D0E79BDEEFDBF3F9FFFFFF}
        Stretch = True
      end
      object Label41: TLabel
        Left = 112
        Top = 17
        Width = 32
        Height = 14
        Caption = 'Parcial'
      end
      object Image2: TImage
        Left = 163
        Top = 15
        Width = 16
        Height = 16
        Center = True
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
        Stretch = True
      end
      object Label39: TLabel
        Left = 184
        Top = 17
        Width = 46
        Height = 14
        Caption = 'Liquidado'
      end
      object Image3: TImage
        Left = 243
        Top = 15
        Width = 16
        Height = 16
        Center = True
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
        Stretch = True
      end
      object Label40: TLabel
        Left = 264
        Top = 17
        Width = 39
        Height = 14
        Caption = 'Vencida'
      end
      object Image5: TImage
        Left = 315
        Top = 15
        Width = 16
        Height = 16
        Center = True
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
        Stretch = True
      end
      object Label42: TLabel
        Left = 336
        Top = 17
        Width = 42
        Height = 14
        Caption = 'Previs'#227'o'
        Color = clBtnFace
        ParentColor = False
      end
    end
    object GroupBox6: TGroupBox
      Left = 456
      Top = 1
      Width = 393
      Height = 41
      Caption = 'Situa'#231#227'o'
      TabOrder = 7
      object CbSituacao: TComboBox
        Left = 8
        Top = 13
        Width = 379
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 0
        Text = 'TODAS'
        OnChange = CbSituacaoChange
        Items.Strings = (
          'TODAS'
          'Bloqueada'
          'Cancelada'
          'Cart'#243'rio'
          'Devolu'#231#227'o'
          'Exclu'#237'da'
          'Indicado C'
          'Liq.p/Descto'
          'Liquidada'
          'Outros'
          'Pendente'
          'Protestada'
          'Parcial')
      end
    end
    object GroupBox7: TGroupBox
      Left = 3
      Top = 81
      Width = 846
      Height = 36
      TabOrder = 8
      object LblProjCx: TLabel
        Left = 454
        Top = 14
        Width = 81
        Height = 14
        Caption = 'Centro de Custo:'
      end
      object Label19: TLabel
        Left = 2
        Top = 14
        Width = 84
        Height = 14
        Caption = 'Conta Financeira:'
      end
      object CbContaFinanceira: TComboBoxRw
        Left = 90
        Top = 11
        Width = 325
        Height = 22
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'CCT_CODIGO,CCT_DESCRI'
        LookupOrderBy = 'CCT_DESCRI'
        LookupTable = 'CCT_0000'
        LookupDispl = 'CCT_DESCRI'
        OnSelect = CbContaFinanceiraSelect
        GridAutoSize = False
        LookupSource = CbContaFinanceira.InternalSource
        LookupKeyField = 'CCT_CODIGO'
        FiltroTabela = 'CCT_CONTA= '#39'S'#39' and CCT_STATUS = '#39'L'#39
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Contas Financeiras'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'CCT_0000'
        CamposCarregar = 'CCT_CODIGO,CCT_DESCRI'
        CamposRetornar = 'CCT_CODIGO'
        Condicao = 'CCT_CONTA= '#39'S'#39' and CCT_STATUS = '#39'L'#39
        CamposOrdernar = 'CCT_DESCRI'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'TABELAS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object CbCentroCusto: TComboBoxRw
        Left = 538
        Top = 11
        Width = 275
        Height = 22
        TabOrder = 1
        OnChange = CbCentroCustoChange
        CharCase = ecUpperCase
        LookupSelect = 'PCX_CODIGO,PCX_DESCRI'
        LookupOrderBy = 'PCX_DESCRI'
        LookupTable = 'PCX0000'
        LookupDispl = 'PCX_DESCRI'
        OnSelect = CbCentroCustoSelect
        GridAutoSize = False
        LookupSource = CbCentroCusto.InternalSource
        LookupKeyField = 'PCX_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Centros de Custo'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'PCX0000'
        CamposCarregar = 'PCX_CODIGO,PCX_DESCRI'
        CamposRetornar = 'PCX_CODIGO'
        CamposOrdernar = 'PCX_DESCRI'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'TABELAS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
    end
    object BitPagamentos: TBitBtn
      Left = 993
      Top = 70
      Width = 100
      Height = 25
      Hint = 'Verificar pagamentos efetuados'
      Caption = 'Pagamentos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003366FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600
        99CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600CCCC0099CC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600FFFF00CCCC00
        CCCC0099CC0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00336600FFFF00FFFF00FFFF00CCCC00CCCC0099CC0099CC003366FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600336600336600FFFF00
        CCCC0099CC003366003366003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600FFFF00CCCC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFCC66FFCC66FFCC66FFCC66FF
        CC66FF9933FF9933FF9933CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FF9933CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFFF99FFFF99FFFF99FFCC66FF
        CC66FFCC66FFCC66FFCC66CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitPagamentosClick
    end
    object grp1: TGroupBox
      Left = 456
      Top = 41
      Width = 393
      Height = 41
      Caption = 'Busca Direta'
      TabOrder = 10
      object cbbOutros: TComboBox
        Left = 6
        Top = 15
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 1
        TabOrder = 0
        Text = 'DOCUMENTO'
        Items.Strings = (
          'CODIGO'
          'DOCUMENTO'
          'VALOR'
          'OBSERVA'#199#195'O')
      end
      object edtOutros: TEdit
        Left = 157
        Top = 15
        Width = 228
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 30
        TabOrder = 1
        OnKeyPress = edtOutrosKeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 341
      Top = 115
      Width = 108
      Height = 41
      Caption = 'Visualizar'
      TabOrder = 11
      object chkMultiEmpresa: TCheckBox
        Left = 8
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Multi Empresa'
        TabOrder = 0
        OnClick = chkMultiEmpresaClick
      end
    end
    object btnCadastro: TButton
      Left = 993
      Top = 98
      Width = 100
      Height = 25
      Hint = 'Inclus'#227'o de um pagamento'
      Caption = 'Cadastro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = btnCadastroClick
    end
    object chkExcluidos: TCheckBox
      Left = 223
      Top = 129
      Width = 114
      Height = 17
      Caption = 'Ocultar exclu'#237'dos'
      Checked = True
      State = cbChecked
      TabOrder = 13
      OnClick = chkExcluidosClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 64
    Top = 65528
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 112
    Top = 8
  end
  object CdsPesquisaPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisaPagar'
    OnCalcFields = CdsPesquisaPagarCalcFields
    Left = 416
    Top = 408
    object CdsPesquisaPagarPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object CdsPesquisaPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object CdsPesquisaPagarPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      OnGetText = CdsPesquisaPagarPPC_NUMERGetText
      Size = 2
    end
    object CdsPesquisaPagarPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object CdsPesquisaPagarPAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object CdsPesquisaPagarPPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPesquisaPagarPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object CdsPesquisaPagarPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object CdsPesquisaPagarPPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPesquisaPagarPPC_STATUS: TStringField
      FieldName = 'PPC_STATUS'
      Size = 12
    end
    object CdsPesquisaPagarPPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      Size = 1
    end
    object CdsPesquisaPagarPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      Size = 1
    end
    object CdsPesquisaPagarPAG_OBS: TStringField
      DisplayWidth = 500
      FieldName = 'PAG_OBS'
      Size = 500
    end
    object CdsPesquisaPagarFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsPesquisaPagarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsPesquisaPagarPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      Size = 40
    end
    object CdsPesquisaPagarPPC_EXCLUSAO: TStringField
      FieldName = 'PPC_EXCLUSAO'
      Size = 1
    end
    object CdsPesquisaPagarSELECAO_FAT: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO_FAT'
    end
    object CdsPesquisaPagarCCPendente: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CCPendente'
      DisplayFormat = '#,##0.00'
    end
    object CdsPesquisaPagarPPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPesquisaPagarPPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPesquisaPagarPPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      Precision = 15
      Size = 4
    end
    object CdsPesquisaPagarBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsPesquisaPagarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPesquisaPagarCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
    object CdsPesquisaPagarPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
    object CdsPesquisaPagarPPC_SIT_LIBERACAO: TStringField
      FieldName = 'PPC_SIT_LIBERACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsPesquisaPagarPPC_SIT_LIBERACAOGetText
      Size = 1
    end
    object CdsPesquisaPagarPPC_VALOR_APONTADO: TFMTBCDField
      FieldName = 'PPC_VALOR_APONTADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsPesquisaPagarfpg_descricao: TStringField
      FieldName = 'fpg_descricao'
      Size = 100
    end
    object CdsPesquisaPagarPAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      Size = 5
    end
    object CdsPesquisaPagarFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
  end
  object DsPesquisaPagar: TDataSource
    DataSet = CdsPesquisaPagar
    Left = 520
    Top = 408
  end
  object ImageList1: TImageList
    Left = 404
    Top = 175
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000D8D8F2007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000D8D8F2000000000000000000D8EBD80072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200D8EBD800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D8F2000A0AAD000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000A0AAD00D8D8F200D8ECD8000A850A00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000A850A00D8ECD80000000000C8C8FF00B0B0FF00AFAF
      FF00ABABFF00E8E8FF000000000000000000000000000000000000000000D1D1
      FF00ABABFF00ABABFF00AAAAFF00DBDBFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA0096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C9920000000000FAFAFF00C2C2FF00B9B9
      FF00B4B4FF00B1B1FF00F7F7FF00000000000000000000000000E7E7FF00B2B2
      FF00B0B0FF00AFAFFF00C7C7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D1007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA75000000000000000000F0F0FF00BEBE
      FF00BCBCFF00B2B2FF00C0C0FF00FEFEFF0000000000F6F6FF00BDBDFF00B5B5
      FF00B4B4FF00BBBBFF00FBFBFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD30086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B00000000000000000000000000E3E3
      FF00C0C0FF00BFBFFF00AEAEFF00D6D6FF00FEFEFF00CACAFF00BABAFF00B8B8
      FF00B8B8FF00F0F0FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D5008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C080000000000000000000000000000000
      0000D6D6FF00C3C3FF00BFBFFF00ACACFF00D1D1FF00BFBFFF00BDBDFF00BBBB
      FF00DFDFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D60090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C183000000000000000000000000000000
      0000FBFBFF00CDCDFF00C6C6FF00C1C1FF00C3C3FF00C2C2FF00C0C0FF00CFCF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D60095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C285000000000000000000000000000000
      000000000000F4F4FF00CBCBFF00C8C8FF00C7C7FF00C5C5FF00C7C7FF00FCFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D80098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C489000000000000000000000000000000
      000000000000FDFDFF00D4D4FF00CBCBFF00CACAFF00C4C4FF00C5C5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D70096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C387000000000000000000000000000000
      000000000000DEDEFF00D0D0FF00CECEFF00CCCCFF00C9C9FF00AFAFFF00DCDC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D70091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C385000000000000000000000000000000
      0000EAEAFF00D5D5FF00D3D3FF00D1D1FF00D8D8FF00CCCCFF00C4C4FF00AEAE
      FF00F0F0FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D5008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C08100000000000000000000000000F5F5
      FF00DBDBFF00D7D7FF00D5D5FF00D5D5FF00FEFEFF00D7D7FF00CBCBFF00BCBC
      FF00B8B8FF00FCFCFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD40086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D000000000000000000FDFDFF00E0E0
      FF00DADAFF00D8D8FF00D0D0FF00F8F8FF0000000000F7F7FF00CDCDFF00C9C9
      FF00B3B3FF00CBCBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB0099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C994000000000000000000E3E3FF00DADA
      FF00D8D8FF00D4D4FF00E9E9FF00000000000000000000000000E8E8FF00C9C9
      FF00C5C5FF00ADADFF00E2E2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB0000000000EBEBFF00D7D7FF00D7D7
      FF00D6D6FF00D8D8FF000000000000000000000000000000000000000000D6D6
      FF00C6C6FF00BEBEFF00AFAFFF00F4F4FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBDBF3007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000DBDBF3000000000000000000DBEDDB0072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200DBEDDB000000000000000000FDFDFF00FCFCFF00FCFC
      FF00FBFBFF00FEFEFF000000000000000000000000000000000000000000FEFE
      FF00FBFBFF00FBFBFF00FAFAFF00FDFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8F2F80072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700D8F2F8000000000000000000F8E5D800E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F8E5D8000000000000000000F3F3F300D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F3F3F3000000000000000000E0E0E0008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E0E0E00000000000D8F2F8000AADD60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000AADD600D8F2F800F8E5D800D65C0A00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65C0A00F8E5D800F3F3F300B6B6B600B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B6B6B600F3F3F300E0E0E0003B3B3B00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003B3B3B00DFDFDF0096DCED0000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40092DAEC00EDB99600D4550000D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D4550000ECB69200E0E0E000B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300DEDEDE00ABABAB0033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300A8A8A8007CD4E90016B1D80019B2D8001AB3
      D8001BB3D9001BB3D9001CB3D9001CB3D9001CB3D9001CB3D9001AB3D80019B2
      D80019B2D80017B2D80014B1D70075D1E900E9A87C00D8641600D8661900D866
      1A00D9671B00D9671B00D9681C00D9681C00D9681C00D9681C00D8671A00D866
      1900D8651900D8641700D7621400E9A37500D9D9D900BABABA00BABABA00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BABABA00BABABA00B9B9B900D7D7D7009797970045454500474747004848
      480049494900494949004A4A4A004A4A4A004A4A4A0049494900484848004747
      47004747470045454500434343009090900086D7EB0026B7DA0029B8DB002AB8
      DB002CB9DB002CB9DB002DB9DC002EB9DC002DB9DC002DB9DC002BB8DB002AB8
      DB0029B8DB0027B7DB0023B6DA007BD3E900EBAE8600DA6E2600DB702900DB71
      2A00DB722C00DB722C00DC732D00DC732E00DC732D00DC732D00DB722B00DB71
      2A00DB702900DB6F2700DA6D2300E9A77B00DCDCDC00BEBEBE00BFBFBF00C0C0
      C000C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C0C0C000C0C0C000C0C0
      C000BFBFBF00BFBFBF00BEBEBE00D8D8D8009F9F9F0051515100545454005555
      5500565656005656560057575700575757005757570057575700565656005555
      550054545400525252004F4F4F00959595008BD8EB0034BBDD0039BDDE003ABD
      DE003CBEDE003DBEDE003EBFDE003EBFDE003EBFDE003EBFDE003CBEDE003ABD
      DE0038BDDE0036BCDD0032BBDC0080D5EB00EBB18B00DD783400DE7B3900DE7C
      3A00DE7D3C00DE7E3D00DE7F3E00DE7F3E00DE7F3E00DE7E3E00DE7D3C00DE7C
      3A00DE7B3800DD793600DC763200EBAA8000DDDDDD00C3C3C300C4C4C400C4C4
      C400C5C5C500C5C5C500C6C6C600C6C6C600C6C6C600C5C5C500C5C5C500C4C4
      C400C4C4C400C3C3C300C2C2C200DADADA00A3A3A3005D5D5D00606060006262
      6200636363006464640065656500656565006565650064646400636363006262
      6200606060005F5F5F005B5B5B009999990090DAEC0042C0DF0048C2E0004AC3
      E0004CC3E1004DC4E1004FC4E1004FC4E1004FC4E1004EC4E1004CC3E1004AC3
      E00048C2E00046C1E00040BFDF0083D6EB00ECB59000DF814200E0854800E086
      4A00E1884C00E1894D00E18A4F00E18A4F00E18A4F00E1894E00E1884C00E086
      4A00E0854800E0834600DF7F4000EBAC8300DEDEDE00C7C7C700C8C8C800C9C9
      C900CACACA00CACACA00CBCBCB00CBCBCB00CBCBCB00CACACA00CACACA00C9C9
      C900C8C8C800C8C8C800C6C6C600DBDBDB00A7A7A700686868006C6C6C006E6E
      6E00707070007171710073737300737373007373730072727200707070006E6E
      6E006D6D6D006B6B6B00666666009C9C9C0095DCED004EC4E10055C6E20058C7
      E3005BC8E3005DC9E40060CAE40061CAE40060CAE4005FCAE4005CC9E30059C8
      E30056C7E20053C6E2004BC3E10085D6EB00EDB89500E1894E00E28E5500E38F
      5800E3915B00E4935D00E4956000E4956100E4956000E4945F00E3925C00E390
      5900E28E5600E28C5300E1874B00EBAE8500E0E0E000CACACA00CCCCCC00CDCD
      CD00CECECE00CFCFCF00D0D0D000D0D0D000D0D0D000CFCFCF00CECECE00CDCD
      CD00CDCDCD00CCCCCC00C9C9C900DBDBDB00AAAAAA0071717100777777007979
      79007C7C7C007E7E7E008080800080808000808080007F7F7F007C7C7C007A7A
      7A0078787800757575006F6F6F009E9E9E0098DDEE0056C7E2005FCAE40064CB
      E50068CDE6006CCEE60075D1E80077D2E80077D2E80074D1E8006CCEE60067CC
      E50063CBE5005EC9E40055C6E20089D8EC00EEBA9800E28E5600E4945F00E597
      6400E69A6800E69D6C00E8A37500E8A47700E8A47700E8A27400E69D6C00E59A
      6700E5976300E4945E00E28E5500ECB08900E1E1E100CDCDCD00CFCFCF00D1D1
      D100D2D2D200D3D3D300D6D6D600D7D7D700D7D7D700D5D5D500D3D3D300D2D2
      D200D1D1D100CFCFCF00CCCCCC00DDDDDD00ADADAD00787878007F7F7F008383
      8300868686008A8A8A0090909000929292009292920090909000898989008686
      8600828282007E7E7E0077777700A0A0A00096DCED0050C5E10058C7E3005BC8
      E3005FCAE40061CAE40065CCE50066CCE50066CCE50065CCE50062CBE4005FCA
      E4005BC8E30058C7E30050C5E10087D7EB00EDB89600E18A5000E38F5800E392
      5B00E4945F00E4966100E5996500E5996600E5996600E5996500E4966200E494
      5F00E3925B00E38F5800E18A5000EBAF8700E0E0E000CBCBCB00CDCDCD00CECE
      CE00CFCFCF00D0D0D000D1D1D100D2D2D200D2D2D200D1D1D100D0D0D000CFCF
      CF00CECECE00CDCDCD00CBCBCB00DCDCDC00ABABAB0073737300797979007C7C
      7C007F7F7F008181810084848400858585008585850084848400818181007F7F
      7F007C7C7C0079797900737373009F9F9F0091DBEC0045C1E0004BC3E1004EC4
      E10050C5E20052C5E20055C6E20055C6E20055C6E20055C6E20053C6E20051C5
      E2004EC4E1004CC3E10046C1E00085D7EB00ECB69100E0834500E1874B00E189
      4E00E28B5000E28C5200E28E5500E28E5500E28E5500E28E5500E28C5300E28B
      5100E1894E00E1884C00E0844600EBAE8500DFDFDF00C8C8C800C9C9C900CACA
      CA00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CBCB
      CB00CACACA00CACACA00C8C8C800DCDCDC00A8A8A8006A6A6A006F6F6F007171
      7100737373007575750077777700777777007777770077777700757575007474
      740072727200707070006B6B6B009D9D9D008CD9EB0038BDDD003DBEDE003FBF
      DF0041C0DF0042C0DF0044C1DF0045C1E00045C1E00044C1DF0043C0DF0041C0
      DF0040BFDF003EBFDE0039BDDE0081D5EA00EBB28C00DD7A3800DE7E3D00DF7F
      3F00DF804100DF814200DF824400E0834500E0834500DF824400DF814300DF80
      4100DF7F4000DE7E3E00DE7B3900EAAB8100DDDDDD00C4C4C400C5C5C500C6C6
      C600C6C6C600C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C6C6
      C600C6C6C600C5C5C500C4C4C400DADADA00A4A4A40060606000646464006565
      650067676700686868006A6A6A006A6A6A006A6A6A006A6A6A00686868006767
      67006666660064646400606060009A9A9A0086D7EA0029B8DB002DB9DC002FBA
      DC0030BADC0032BBDC0033BBDD0033BBDD0033BBDD0033BBDD0032BBDC0031BA
      DC0030BADC002EB9DC002BB8DB007DD4EA00EAAE8600DB702900DC732D00DC74
      2F00DC753000DC763200DD773300DD773300DD773300DD773300DC763200DC76
      3100DC753000DC742E00DB712B00EAA87D00DBDBDB00BFBFBF00C0C0C000C1C1
      C100C1C1C100C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C1C1C100C1C1C100C0C0C000D9D9D9009F9F9F0054545400575757005858
      5800595959005B5B5B005C5C5C005C5C5C005C5C5C005C5C5C005B5B5B005A5A
      5A005959590058585800555555009797970099DEEE0009ADD6000DAED6000EAF
      D6000FAFD70010AFD70011B0D70011B0D70012B0D70011B0D70011B0D70010AF
      D7000FAFD7000EAFD6000AADD60094DBED00EEBC9900D65B0900D65D0D00D65E
      0E00D75F0F00D75F1000D7601100D7601100D7611200D7601100D7601100D760
      1000D75F0F00D65E0E00D65C0A00EDB89400E2E2E200B6B6B600B7B7B700B7B7
      B700B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B7B7B700B6B6B600DFDFDF00AEAEAE003A3A3A003D3D3D003E3E
      3E003F3F3F004040400041414100414141004141410041414100404040004040
      40003F3F3F003E3E3E003B3B3B00A9A9A900DBF3F9000DAED60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000DAED600DBF3F900F9E7DB00D65E0D00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65E0D00F9E7DB00F5F5F500B7B7B700B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B7B7B700F4F4F400E2E2E2003D3D3D00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003D3D3D00E2E2E20000000000DBF3F90072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700DBF3F9000000000000000000F9E7DB00E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F9E7DB000000000000000000F4F4F400D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F4F4F4000000000000000000E2E2E2008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E2E2E20000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0080018001FFFF00000000000083E00000
      0000000081C1000000000000C081000000000000E003000000000000F0070000
      00000000F00F000000000000F80F000000000000F81F000000000000F80F0000
      00000000F007000000000000E003000000000000C083000000000000C1C10000
      0000000083E000008001800183E0000080018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180018001800100000000000000000000000000000000
      000000000000}
  end
  object frxReportReceber: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 41185.621060555600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   Empresa: string;                                             ' +
        '    '
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalPago,'
      '   totalPendente:Real;'
      '     '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;            '
      '   totalValor := 0;'
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalPago := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if (<frxDBDatasetReceber."PPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."PPC_VL' +
        'PARC">;'
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'PPC_DESCTO">;'
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."PPC_JU' +
        'ROS">;'
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."PPC_MU' +
        'LTA">;'
      
        '         totalPago := totalPago + <frxDBDatasetReceber."PPC_VLPA' +
        'GO">;'
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                                     '
      '      end;                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 720
    Top = 405
    Datasets = <
      item
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          Left = 544.252320000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VENCTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 321.260050000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxDBDatasetReceber."FOR_CODIGO"] [frxDBDatasetReceber."FOR_RAZ' +
              'AO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 30.236240000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_NUMDOC'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PAG_NUMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 136.063080000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 177.637910000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_STATUS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 249.448980000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_DTEMIS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PAG_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VLPARC'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 687.874460000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_DESCTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_DESCTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 759.685530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 903.307670000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'CCPendente'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 831.496600000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_MULTA'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."PPC_MULTA"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 687.874460000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 759.685530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalJuros]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 831.496600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalMulta]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 903.307670000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPago]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Pagar')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 30.236240000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 56.692950000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 321.260050000000000000
          Top = 56.692950000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 687.874460000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 759.685530000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 903.307670000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 975.118740000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 831.496600000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 56.692950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 784
    Top = 181
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = True
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 864
    Top = 181
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 888
    Top = 229
  end
  object frxDBDatasetReceber: TfrxDBDataset
    UserName = 'frxDBDatasetReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAG_REGISTRO=PAG_REGISTRO'
      'PAG_CODIGO=PAG_CODIGO'
      'PPC_NUMER=PPC_NUMER'
      'PAG_NUMDOC=PAG_NUMDOC'
      'PAG_DTEMIS=PAG_DTEMIS'
      'PPC_VLPARC=PPC_VLPARC'
      'PPC_VENCTO=PPC_VENCTO'
      'PPC_PAGTO=PPC_PAGTO'
      'PPC_VLPAGO=PPC_VLPAGO'
      'PPC_STATUS=PPC_STATUS'
      'PPC_PREVISAO=PPC_PREVISAO'
      'PPC_SITPAG=PPC_SITPAG'
      'PAG_OBS=PAG_OBS'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PAG_FAVORECIDO=PAG_FAVORECIDO'
      'PPC_EXCLUSAO=PPC_EXCLUSAO'
      'SELECAO_FAT=SELECAO_FAT'
      'CCPendente=CCPendente'
      'PPC_DESCTO=PPC_DESCTO'
      'PPC_JUROS=PPC_JUROS'
      'PPC_MULTA=PPC_MULTA'
      'BAN_APELIDO=BAN_APELIDO'
      'EMP_CODIGO=EMP_CODIGO')
    DataSource = DsPesquisaPagar
    BCDToCurrency = False
    Left = 608
    Top = 405
  end
  object ImageListaSelect: TImageList
    Left = 128
    Top = 288
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00999999009A9A
      9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A009A9A9A0099999900ABABAB00FAFAFA000000000000000000000000000000
      0000CACACA00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00B3B3B300E0E0E00000000000A8A8A800A0A0A000A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A100A0A0A000A7A7A700F9F9F9000000000000000000000000000000
      0000D0D0D000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B6B6B600E1E1E100A7A7A700DADADA00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DADADA00ACACAC00000000000000000000000000FBFB
      FB00ADADAD00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600B1B1B100A9A9A900DDDDDD00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DDDDDD00AFAFAF00000000000000000000000000F9F9
      F900B6B6B600ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B4B4B4009B9B9B00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009D9D9D00E4E4E400E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009E9E9E00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E6E6E600E6E6E600B8B8B80006060600D5D5D500E6E6
      E600E6E6E600E6E6E600E6E6E600AEAEAE009D9D9D00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009F9F9F00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600171717000000000029292900E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E6E6E600D8D8D8001E1E1E00000000006E6E6E00E6E6
      E600E6E6E600E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E2E2E2000000000000000000000000009A9A9A00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E5E5E5004646460000000000515151000D0D0D00D7D7
      D700E6E6E600E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E60069696900000000000E0E0E000000000028282800E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00B3B3B300E3E3E300E6E6E600ADAD
      AD00E6E6E600E6E6E600040404000E0E0E00C6C6C600E6E6E6000D0D0D000E0E
      0E00D8D8D800E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00B3B3B300E3E3E300E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E6009B9B9B0000000000505050009E9E9E000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00ACACAC00E6E6E600E6E6E600ADAD
      AD00E6E6E600E6E6E600444444009E9E9E00E6E6E600E6E6E6006E6E6E000000
      000074747400E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00ACACAC00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600C3C3
      C3000C0C0C0000000000DCDCDC00E5E5E5002B2B2B0000000000E5E5E500E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600D5D5D5000B0B
      0B000F0F0F00D9D9D900E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600C3C3C3001B1B
      1B00000000009A9A9A00E6E6E600E6E6E600E5E5E5002B2B2B0027272700E5E5
      E500E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E6008989
      8900E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600D3D3
      D3000A0A0A0011111100E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600D3D3
      D3008B8B8B00E6E6E600E6E6E600E6E6E600E6E6E6009E9E9E00000000009898
      9800E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600D1D1D1001F1F
      1F00CCCCCC00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E6008484840097979700E6E6E600ACACAC009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600BDBD
      BD00D9D9D900ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B0B0B0009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500000000002727
      2700E4E4E400E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E6003A3A3A000000
      00007F7F7F00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E3E3E300B3B3B3009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600A9A9A900ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00E9E9E900B5B5B5009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      000098989800E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600DFDFDF00D2D2
      D200E6E6E600E6E6E600DFDFDF001717170006060600CDCDCD00E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6002B2B2B000000
      000026262600E4E4E400E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600828282000000000061616100E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD000000000000000000000000009C9C9C00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E5009393
      9300E0E0E000E6E6E600E6E6E6009D9D9D00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600DEDEDE001515150007070700E6E6E600E6E6
      E600BDBDBD000000000000000000000000009D9D9D00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009F9F9F00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD00000000000000000000000000A6A6A600DADADA00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DADADA00ADADAD00B1B1B100E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E4E4E400E6E6E600E6E6E600B2B2
      B200F9F9F900000000000000000000000000A9A9A900DDDDDD00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DDDDDD00AFAFAF00B1B1B100E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600AAAA
      AA00F9F9F90000000000000000000000000000000000ABABAB00999999009A9A
      9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A009A9A9A0099999900ABABAB00FAFAFA00E0E0E000B3B3B300AEAEAE00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AFAFAF00CFCF
      CF000000000000000000000000000000000000000000A8A8A800A0A0A000A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A100A0A0A000A7A7A700F9F9F900E0E0E000B3B3B300AEAEAE00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00ADADAD00CACA
      CA0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000F0008000F0000000E0000000E000
      0000E0000000E0000000E0000000E0000000E0000000E0000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000070000000700000007000000070000000700000007
      00000007000000078000000F8000000F00000000000000000000000000000000
      000000000000}
  end
  object PMMarcar: TPopupMenu
    Images = ImageListaSelect
    Left = 816
    Top = 408
    object SelecionarTodas1: TMenuItem
      Caption = 'Marcar Todas'
      ImageIndex = 0
      OnClick = SelecionarTodas1Click
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      ImageIndex = 2
      OnClick = DesmarcarTodas1Click
    end
    object Apontar1: TMenuItem
      Caption = 'Solicitar pagamento'
      Enabled = False
      OnClick = Apontar1Click
    end
    object Aprovar1: TMenuItem
      Caption = 'Aprovar pagamento'
      Enabled = False
      OnClick = Aprovar1Click
    end
    object miLimparFiltros: TMenuItem
      Caption = 'Limpar filtros'
      OnClick = miLimparFiltrosClick
    end
  end
  object qPesquisaPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 232
    Top = 412
  end
  object dspPesquisaPagar: TDataSetProvider
    DataSet = qPesquisaPagar
    Left = 320
    Top = 408
  end
  object qForconsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 596
    Top = 188
  end
  object cxEditRepository1: TcxEditRepository
    Left = 44
    Top = 409
    object btnEstornar: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = 'Estornar'
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF694117
            6941176941176941176941176941176941176941176941176941176941176941
            17694117694117FF00FF694117694117AA7341A7703FA76F3EA76F3DA76F3DA7
            6F3DA76F3DA76F3DA7703EA7703FA7703FAA72406941176941176941178A5223
            884F21884F21874F21834D21844E22844E22834E22834D2181491C83491B8950
            21884F218B5223694117694117804619804519804519804519D9DAD9D9DAD9D9
            DAD9D9DAD9D9DAD9BBAC9D8B6541783E1281451981461969411769411782471A
            82471A82471A82471AD9DAD9D9DAD9D9DAD9D9DAD9D9DAD9D9DAD9E1E6EA9776
            577D411383471A694117694117894E20894E20894F20884D1F83461883481A86
            4A1C84491C834819915E33D8D4CFCFCCC9834F248A4D1F694117694117905426
            9054269055268B4D1E966B44D9DAD98F5222905425905425894A1ABCA48AE7ED
            F291653F905122694117694117965B2D975A2C9153239F724AD9DAD9D9DAD993
            5524975A2A975A2A8F4F1FBAA088EEF3F89A6D459658286941176941179D6332
            995B2B9D734CDDDCDAF0F4F8D9DAD9925A2C955E32965E31A0764FD5D4D0D1CF
            CA9862359E6030694117694117A06534A4754CD9D8D7DDDEE1E9EBEEE9EBEEE9
            EBEEE9EBEEE9EBEEEBF0F4E5E6E7A983609E6231A46A3A694117694117AF794B
            B1875FE6E3E0E6E9EAE9EBEEE9EBEEE9EBEEE9EBEECFC6BCC6B29EB48A64A972
            43AF794CB27E51694117694117BD8F66B8865BBD9876E9E7E5E9EBEEE9EBEEB5
            8358B6875DB6865CB58358B8875CBB8B62BA8A62BD8E66694117694117C79D78
            C49872C0926BC6A484E7E6E3E9EBEEC2956DC49772C49772C49872C49772C497
            72C49772C99D77694117694117CEAB8BCFA686CCA684CAA17ECBAF93E9EBEECC
            A582CCA683CCA683CCA683CCA683CCA683CEA684D1AD8E694117694117694117
            D9BBA0DCBCA0DCBC9FD9B89CD9BA9DDCBBA0DABB9FDABB9FDABB9FDABB9FDCBC
            A0DABCA1694117694117FF00FF69411769411769411769411769411769411769
            4117694117694117694117694117694117694117694117FF00FF}
          Kind = bkGlyph
          LeftAlignment = True
        end>
      Properties.UseNullString = True
      Properties.ViewStyle = vsButtonsOnly
      Properties.OnButtonClick = btnEstornarPropertiesButtonClick
    end
    object btnReprovar: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = 'Reprovar pagamento'
          Default = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000013000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF7F7FDCFCFF6B5B5F3ABABF0B3B3F3D0D0F6F7F7FDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF8F8
            FEACACF03D3DDE0000D40000CE0000CC0000CE0000D43F3FDEACACF1F8F8FEFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4F4FD7D7DE90000D1
            1919D66464E5B2B2F1CACAF6B3B3F16363E51414D40000CF7979E9F4F4FDFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFF9F9FD7B7BE80000CF2323DBDDDDF9FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4FA5353DF0000CF7A7AE8F8F8FDFFFFFF
            FFFFFF000000FFFFFFFFFFFFADADF10000D12525DA0E0ED66767E4F3F3FCFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5353DF0000CFADADF1FFFFFFFFFFFF00
            0000FFFFFFF6F6FD3E3EDE1919D5E0E0FA6A6AE60303D25F5FE3EAEAFBFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE5E5F91313D53E3EDEF7F7FDFFFFFF000000FFFF
            FFCFCFF60000D46464E5FFFFFFF4F4FD6464E40707D36161E4EAEAFCFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF6262E50000D4D0D0F6FFFFFF000000FFFFFFB3B3F2
            0000CEB3B3F2FFFFFFFFFFFFECECFC6666E50000D16262E4EFEFFCFFFFFFFFFF
            FFFFFFFFFFFFFFB3B3F20000CEB4B4F2FFFFFF000000FFFFFFABABF00000CCC9
            C9F7FFFFFFFFFFFFFFFFFFECECFC6666E30A0AD26161E3EAEAFBFFFFFFFFFFFF
            FFFFFFC8C8F70000CCABABF0FFFFFF000000FFFFFFB3B3F20000CDB4B4F2FFFF
            FFFFFFFFFFFFFFFFFFFFF0F0FC6565E40000D16161E4EAEAFCFFFFFFFFFFFFB2
            B2F20000CEB4B4F2FFFFFF000000FFFFFFCFCFF60000D46565E5FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFECECFC6565E40707D46060E4F2F2FCFFFFFF6464E50000
            D4D0D0F6FFFFFF000000FFFFFFF6F6FD3E3EDE1515D5E9E9FBFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFECECFB6565E40404D26565E5DDDDF91919D53E3EDEF7F7FD
            FFFFFF000000FFFFFFFFFFFFACACF10000CF5555E0FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFF4F4FD6A6AE50D0DD42828DB0000D1ACACF0FFFFFFFFFFFF00
            0000FFFFFFFFFFFFF8F8FD7878E80000CF5555E0E8E8FBFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFDFFB2929DB0000CF7C7CE8F8F8FDFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFF4F4FD7878E90000CF1515D56565E5B3B3F1CBCBF6B4B4F164
            64E61919D50000D17B7BE9F4F4FDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFF8F8FEABABF13E3EDE0000D40000CE0000CC0000CE0000D43D3D
            DEABABF0F8F8FEFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF7F7FDD0D0F6B3B3F3ABABF0B4B4F3CFCFF6F7F7FDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = btnReprovarPropertiesButtonClick
    end
  end
  object QControle: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQL.Strings = (
      
        'SELECT CTP_DESCRI, ct.PAG_CODIGO, PAG_REGISTRO, CTP_DATA_MOV, u.' +
        'USU_NOME  FROM CONTROLE_TIT_PAGAR ct '
      ' JOIN USUARIO u ON  u.USU_CODIGO = ct.COD_USU'
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 136
    Top = 340
  end
  object cdscontrole: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspControle'
    Left = 200
    Top = 340
    object cdscontroleCTP_DESCRI: TStringField
      FieldName = 'CTP_DESCRI'
      Size = 30
    end
    object cdscontrolePAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 15
    end
    object cdscontrolePAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
    end
    object cdscontroleCTP_DATA_MOV: TSQLTimeStampField
      FieldName = 'CTP_DATA_MOV'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdscontroleUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object dspControle: TDataSetProvider
    DataSet = QControle
    Left = 264
    Top = 340
  end
  object dscontrole: TDataSource
    DataSet = cdscontrole
    Left = 328
    Top = 340
  end
  object BalloonHint1: TBalloonHint
    Left = 248
    Top = 180
  end
  object cxHintPagar: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
      end>
    HintStyle.ScreenTipActionLinks = <>
    Left = 56
    Top = 292
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 48
    Top = 348
  end
  object PopupMenu1: TPopupMenu
    Left = 920
    Top = 80
    object miPagamentos: TMenuItem
      Caption = 'Pagamentos'
      OnClick = miPagamentosClick
    end
    object miPagarAgrupado: TMenuItem
      Caption = 'Pagar agrupado por forma de pagto'
      OnClick = miPagarAgrupadoClick
    end
    object PagarAgrupadoPorBanco: TMenuItem
      Caption = 'Pagar agrupado por Banco'
      OnClick = PagarAgrupadoPorBancoClick
    end
    object ExportarparaCSV1: TMenuItem
      Caption = 'Exportar para CSV'
      OnClick = ExportarparaCSV1Click
    end
  end
  object qPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      #9'(CCT.CCT_CODIGO || '#39'-'#39' || CCT.CCT_DESCRI) AS CCT_DESCRI,'
      #9'B1.ban_apelido,'
      #9'PC01.PAG_REGISTRO,'
      #9'PC01.PPC_DESCTO,'
      #9'PC01.PPC_MULTA,'
      #9'PC01.PPC_JUROS,'
      #9'PC01.PAG_CODIGO,'
      #9'PC01.PPC_NUMER,'
      #9'PAG.PAG_NUMDOC,'
      #9'PAG.PAG_DTEMIS,'
      #9'PC01.PPC_VLPARC,'
      #9'PC01.PPC_VENCTO,'
      #9'PC01.PPC_PAGTO,'
      #9'PC01.PPC_VLPAGO,'
      #9'PC01.PPC_STATUS,'
      #9'PC01.PPC_PREVISAO,'
      #9'PC01.EMP_CODIGO,'
      #9'PC01.PPC_SITPAG,'
      #9'PC01.PPC_EXCLUSAO,'
      #9'CASE'
      
        #9#9'WHEN (PC01.PPC_EXCLUSAO = '#39'S'#39') THEN '#39'REGISTRO EXCLU'#205'DO: '#39' || P' +
        'C01.PPC_MOTIVO_EXCLUSAO'
      #9#9'ELSE PAG.PAG_OBS'
      #9'END AS PAG_OBS,'
      #9'PAG.FOR_CODIGO,'
      #9'FORN.FOR_RAZAO,'
      #9'PAG.PAG_FAVORECIDO,'
      #9'PPC_NPARCELAS,'
      #9'COALESCE(PPC_SIT_LIBERACAO,'
      #9#39'S'#39') PPC_SIT_LIBERACAO ,'
      #9'fpg_descricao,'
      #9'COALESCE(PPC_VALOR_APONTADO,'
      #9'0) AS PPC_VALOR_APONTADO'
      'FROM'
      #9'PAG_PC01 PC01'
      
        'JOIN PAG0000 PAG ON (PC01.PAG_CODIGO = PAG.PAG_CODIGO) AND (PC01' +
        '.EMP_CODIGO = PAG.EMP_CODIGO)'
      'LEFT JOIN FOR0000 FORN ON pag.FOR_CODIGO = FORN.FOR_CODIGO'
      'LEFT JOIN ban0000 B1 ON B1.ban_codigo = PC01.ban_codigo'
      'LEFT JOIN CCT_0000 CCT ON (CCT.CCT_CODIGO = PC01.CCT_CODIGO)'
      
        'LEFT JOIN FORMA_PAGAMENTO AS fpg ON (fpg.fpg_registro = PC01.fpg' +
        '_registro)'
      'WHERE'
      #9'PPC_SITPAG <> '#39'X'#39
      #9'AND PC01.Emp_Codigo = 001'
      #9'AND PC01.PPC_VENCTO >= '#39'2021-11-09'#39
      'ORDER BY'
      #9'PC01.PPC_VENCTO,'
      #9'PC01.PPC_NUMER')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 652
    Top = 274
  end
  object DSPPagar: TDataSetProvider
    DataSet = qPagar
    Left = 716
    Top = 274
  end
  object CdsPagar: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DSPPagar'
    Left = 788
    Top = 272
    object CdsPagarCCPendente: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CCPendente'
      DisplayFormat = '#,##0.00'
    end
    object CdsPagarCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 86
    end
    object CdsPagarBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsPagarPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object CdsPagarPPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      Precision = 18
      Size = 5
    end
    object CdsPagarPPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      Precision = 18
      Size = 5
    end
    object CdsPagarPPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      Precision = 18
      Size = 5
    end
    object CdsPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 15
    end
    object CdsPagarPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object CdsPagarPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object CdsPagarPAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object CdsPagarPPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 18
      Size = 5
    end
    object CdsPagarPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object CdsPagarPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object CdsPagarPPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      Precision = 18
      Size = 5
    end
    object CdsPagarPPC_STATUS: TStringField
      FieldName = 'PPC_STATUS'
      Size = 12
    end
    object CdsPagarPPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      Size = 1
    end
    object CdsPagarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPagarPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      Size = 1
    end
    object CdsPagarPPC_EXCLUSAO: TStringField
      FieldName = 'PPC_EXCLUSAO'
      Size = 1
    end
    object CdsPagarPAG_OBS: TStringField
      FieldName = 'PAG_OBS'
      Size = 500
    end
    object CdsPagarFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsPagarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object CdsPagarPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      Size = 40
    end
    object CdsPagarPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
    object CdsPagarPPC_SIT_LIBERACAO: TStringField
      FieldName = 'PPC_SIT_LIBERACAO'
      Size = 1
    end
    object CdsPagarFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsPagarPPC_VALOR_APONTADO: TFMTBCDField
      FieldName = 'PPC_VALOR_APONTADO'
      Precision = 18
      Size = 5
    end
    object CdsPagarPAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      Size = 5
    end
    object CdsPagarFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object CdsPagarCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Size = 8
    end
    object CdsPagarPPC_FORMA: TStringField
      FieldName = 'PPC_FORMA'
      Size = 1
    end
    object CdsPagarCCT_DESCRICAO: TStringField
      FieldName = 'CCT_DESCRICAO'
      Size = 80
    end
    object CdsPagarPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsPagarPPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
    end
  end
  object DsPagar: TDataSource
    DataSet = CdsPagar
    Left = 852
    Top = 272
  end
  object frxDatasetPagar: TfrxDBDataset
    UserName = 'frxDatasetPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CCPendente=CCPendente'
      'CCT_DESCRI=CCT_DESCRI'
      'BAN_APELIDO=BAN_APELIDO'
      'PAG_REGISTRO=PAG_REGISTRO'
      'PPC_DESCTO=PPC_DESCTO'
      'PPC_MULTA=PPC_MULTA'
      'PPC_JUROS=PPC_JUROS'
      'PAG_CODIGO=PAG_CODIGO'
      'PPC_NUMER=PPC_NUMER'
      'PAG_NUMDOC=PAG_NUMDOC'
      'PAG_DTEMIS=PAG_DTEMIS'
      'PPC_VLPARC=PPC_VLPARC'
      'PPC_VENCTO=PPC_VENCTO'
      'PPC_PAGTO=PPC_PAGTO'
      'PPC_VLPAGO=PPC_VLPAGO'
      'PPC_STATUS=PPC_STATUS'
      'PPC_PREVISAO=PPC_PREVISAO'
      'EMP_CODIGO=EMP_CODIGO'
      'PPC_SITPAG=PPC_SITPAG'
      'PPC_EXCLUSAO=PPC_EXCLUSAO'
      'PAG_OBS=PAG_OBS'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PAG_FAVORECIDO=PAG_FAVORECIDO'
      'PPC_NPARCELAS=PPC_NPARCELAS'
      'PPC_SIT_LIBERACAO=PPC_SIT_LIBERACAO'
      'FPG_DESCRICAO=FPG_DESCRICAO'
      'PPC_VALOR_APONTADO=PPC_VALOR_APONTADO')
    DataSource = DsPagar
    BCDToCurrency = False
    Left = 924
    Top = 269
  end
  object frxPagarPorBanco: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.391380821800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   Empresa: string;                                             ' +
        '             '
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalPago,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDatasetPagar."PPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDatasetPagar."PPC_VLPARC' +
        '">;       '
      
        '         totalDesconto := totalDesconto + <frxDatasetPagar."PPC_' +
        'DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDatasetPagar."PPC_JUROS"' +
        '>;       '
      
        '         totalMulta := totalMulta + <frxDatasetPagar."PPC_MULTA"' +
        '>;    '
      
        '         totalPago := totalPago + <frxDatasetPagar."PPC_VLPAGO">' +
        ';       '
      
        '         totalPendente := totalPendente + <frxDatasetPagar."CCPe' +
        'ndente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalPago := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '//       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '//       case Length(CNPJ) of '
      
        '//         11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '//         14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)' +
        '+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '//       else'
      '//         frxCNPJ.Text := CNPJ;                      '
      '//       end; '
      'end;'
      '  '
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 772
    Top = 333
    Datasets = <
      item
        DataSet = frxDatasetPagar
        DataSetName = 'frxDatasetPagar'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDatasetPagar
        DataSetName = 'frxDatasetPagar'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          Left = 544.252320000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 321.260050000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."FOR_CODIGO"] [frxDatasetPagar."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 30.236240000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PAG_NUMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 136.063080000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 177.637910000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 249.448980000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatasetPagar."PAG_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 687.874460000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_DESCTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 759.685530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 903.307670000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 831.496600000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_MULTA"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 625.827150000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 700.197280000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 915.032160000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPago]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 981.843230000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Contas a Pagar')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 582.047620000000000000
          Top = 18.677180000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 30.236240000000000000
          Top = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 321.260050000000000000
          Top = 41.574830000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 687.874460000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 759.685530000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 903.307670000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 975.118740000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 831.496600000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 41.574830000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDatasetPagar."BAN_APELIDO"'
        KeepChild = True
        KeepTogether = True
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          Left = 26.677180000000000000
          Top = 3.779530000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Banco: [IIF( <frxDatasetPagar."BAN_APELIDO">='#39#39','#39'SEM BANCO'#39',<frx' +
              'DatasetPagar."BAN_APELIDO">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Left = 625.706571460000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 698.076701460000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 912.911581460000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 984.722651460000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."CCPendente">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 109.606370000000000000
          Top = 0.843673170000000000
          Width = 405.792464880000000000
          Height = 16.593058540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."CCT_DESCRI"] Total:')
          ParentFont = False
        end
      end
    end
  end
  object frxPagarpoForma: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.390490995400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   empresa: string;                                             ' +
        '             '
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalPago,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDatasetPagar."PPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDatasetPagar."PPC_VLPARC' +
        '">;       '
      
        '         totalDesconto := totalDesconto + <frxDatasetPagar."PPC_' +
        'DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDatasetPagar."PPC_JUROS"' +
        '>;       '
      
        '         totalMulta := totalMulta + <frxDatasetPagar."PPC_MULTA"' +
        '>;    '
      
        '         totalPago := totalPago + <frxDatasetPagar."PPC_VLPAGO">' +
        ';       '
      
        '         totalPendente := totalPendente + <frxDatasetPagar."CCPe' +
        'ndente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalPago := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '//       CNPJ := <frxDatasetPagar."CLI_CGC">;'
      '//       case Length(CNPJ) of '
      
        '//         11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '//         14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)' +
        '+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '//       else'
      '//         frxCNPJ.Text := CNPJ;                      '
      '//       end; '
      'end;'
      '  '
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 884
    Top = 333
    Datasets = <
      item
        DataSet = frxDatasetPagar
        DataSetName = 'frxDatasetPagar'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDatasetPagar
        DataSetName = 'frxDatasetPagar'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          Left = 544.252320000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 321.260050000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."FOR_CODIGO"] [frxDatasetPagar."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo20: TfrxMemoView
          Left = 30.236240000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PAG_NUMDOC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 136.063080000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 177.637910000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 249.448980000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDatasetPagar."PAG_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 687.874460000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_DESCTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 759.685530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 903.307670000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 975.118740000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 831.496600000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetPagar."PPC_MULTA"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDatasetPagar."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 624.102660000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 696.472790000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 912.307670000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPago]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 984.118740000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Contas a Pagar')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 582.047620000000000000
          Top = 18.677180000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 30.236240000000000000
          Top = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 321.260050000000000000
          Top = 41.574830000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 687.874460000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 759.685530000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 903.307670000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 975.118740000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 831.496600000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 41.574830000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDatasetPagar."FPG_DESCRICAO">'
        KeepTogether = True
        object Memo17: TfrxMemoView
          Left = 6.559060000000000000
          Top = 3.000000000000000000
          Width = 721.890188500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Forma de pagamento :  [iif(<frxDatasetPagar."FPG_DESCRICAO">='#39#39',' +
              #39'SEM DEFINI'#199#195'O'#39',<frxDatasetPagar."FPG_DESCRICAO">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Left = 623.842920000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 696.213050000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 911.047930000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."PPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 982.859000000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetPagar."CCPendente">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 107.742718540000000000
          Top = 0.843673170000000000
          Width = 405.792464880000000000
          Height = 16.593058540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[iif(<frxDatasetPagar."FPG_DESCRICAO">='#39#39','#39'SEM DEFINI'#199#195'O'#39',<frxDa' +
              'tasetPagar."FPG_DESCRICAO">)] Total:')
          ParentFont = False
        end
      end
    end
  end
  object cdsExportaExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisaPagar'
    Left = 560
    Top = 276
    object cdsExportaExcelPAG_CODIGO: TStringField
      DisplayLabel = 'NUMERO DA FATURA'
      FieldName = 'PAG_CODIGO'
      Size = 15
    end
    object cdsExportaExcelPPC_NUMER: TStringField
      DisplayLabel = 'PARCELA'
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object cdsExportaExcelPPC_NPARCELAS: TSmallintField
      DisplayLabel = 'NUMERO PARCELA'
      FieldName = 'PPC_NPARCELAS'
    end
    object cdsExportaExcelPPC_DTEMIS: TSQLTimeStampField
      DisplayLabel = 'DATA DE EMISSAO'
      FieldName = 'PPC_DTEMIS'
    end
    object cdsExportaExcelPPC_VENCTO: TSQLTimeStampField
      DisplayLabel = 'DATA DE VENCIMENTO'
      FieldName = 'PPC_VENCTO'
    end
    object cdsExportaExcelPPC_PAGTO: TSQLTimeStampField
      DisplayLabel = 'DATA DE PAGAMENTO'
      FieldName = 'PPC_PAGTO'
    end
    object cdsExportaExcelPPC_VLPARC: TFMTBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'PPC_VLPARC'
      Size = 5
    end
    object cdsExportaExcelPPC_VLPAGO: TFMTBCDField
      DisplayLabel = 'VALOR PAGO'
      FieldName = 'PPC_VLPAGO'
      Size = 5
    end
    object cdsExportaExcelPAG_VLNOTA: TFMTBCDField
      DisplayLabel = 'VALOR TOTAL'
      FieldName = 'PAG_VLNOTA'
      Size = 5
    end
    object cdsExportaExcelFOR_CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object cdsExportaExcelFOR_RAZAO: TStringField
      DisplayLabel = 'FORNECEDOR'
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object cdsExportaExcelCONTA_BANCARIA: TStringField
      DisplayLabel = 'CONTA BANCARIA'
      FieldName = 'CONTA_BANCARIA'
      Size = 8
    end
    object cdsExportaExcelPPC_FORMA: TStringField
      DisplayLabel = 'FORMA DE PAGAMENTO'
      FieldName = 'PPC_FORMA'
      Size = 1
    end
    object cdsExportaExcelCCT_DESCRI: TStringField
      DisplayLabel = 'CATEGORIA DE CONTA'
      FieldName = 'CCT_DESCRICAO'
      Size = 80
    end
    object cdsExportaExcelPAG_NUMDOC: TStringField
      DisplayLabel = 'NUMERO DO DOCUMENTO'
      FieldName = 'PAG_NUMDOC'
      Size = 30
    end
    object cdsExportaExcelPCX_ESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTOS'
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsExportaExcelFPG_DESCRICAO: TStringField
      DisplayLabel = 'FORMA DE PAGAMENTO'
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object cdsExportaExcelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsExportaExcel
    Left = 560
    Top = 340
  end
end
