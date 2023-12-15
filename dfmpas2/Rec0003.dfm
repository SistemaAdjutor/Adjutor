inherited FormContasRecParceGrid: TFormContasRecParceGrid
  Left = 312
  Top = 85
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Lista de Contas '#224' Receber'
  ClientHeight = 602
  ClientWidth = 1530
  Constraints.MinWidth = 1269
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCanResize = FormCanResize
  ExplicitWidth = 1536
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 489
    Width = 1530
    Height = 37
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Label5: TLabel
      Left = 153
      Top = 15
      Width = 94
      Height = 16
      Caption = 'Total '#224' Receber:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 824
      Top = 15
      Width = 89
      Height = 16
      Caption = 'Total Recebido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1047
      Top = 15
      Width = 90
      Height = 16
      Caption = 'Total Pendente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 369
      Top = 15
      Width = 112
      Height = 16
      Caption = 'Total em Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 609
      Top = 15
      Width = 88
      Height = 16
      Caption = 'Total em Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 15
      Width = 70
      Height = 16
      Caption = 'Quantidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CurrTotalReceber: TCurrencyEdit
      Left = 248
      Top = 12
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrTotalRecebido: TCurrencyEdit
      Left = 916
      Top = 12
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrFaltaReceber: TCurrencyEdit
      Left = 1143
      Top = 12
      Width = 122
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrTotalDesconto: TCurrencyEdit
      Left = 482
      Top = 12
      Width = 124
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object CurrTotalJuros: TCurrencyEdit
      Left = 700
      Top = 12
      Width = 119
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CurrTotalQuantidade: TCurrencyEdit
      Left = 93
      Top = 12
      Width = 54
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object GroupBox4: TGroupBox [1]
    Left = 0
    Top = 167
    Width = 1530
    Height = 322
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Parcelas'
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 2
      Top = 16
      Width = 1526
      Height = 304
      Align = alClient
      TabOrder = 0
      OnEnter = cxgrd1Enter
      OnExit = cxgrd1Exit
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxgrdReceber: TcxGridDBTableView
        PopupMenu = PMMarcar
        OnDblClick = cxgrdReceberDblClick
        OnKeyDown = cxgrdReceberKeyDown
        OnMouseMove = cxgrdReceberMouseMove
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        OnEditing = cxgrdReceberEditing
        DataController.DataSource = DsReceber
        DataController.Filter.OnChanged = cxgrdReceberDataControllerFilterChanged
        DataController.Filter.Active = True
        DataController.Filter.OnGetValueList = cxgrdReceberDataControllerFilterGetValueList
        DataController.Filter.TranslateBetween = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfMonths]
        DateTimeHandling.DateFormat = 'yyyy-mm-dd'
        DateTimeHandling.Grouping = dtgByDate
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxgrdReceberSELECAO_FAT: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'SELECAO_FAT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayGrayed = 'False'
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
          Options.Filtering = False
        end
        object cxgrdReceberFPC_SITPAG: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'FPC_SITPAG'
          OnCustomDrawCell = cxgrdReceberFPC_SITPAGCustomDrawCell
          OnGetCellHint = cxgrdReceberFPC_SITPAGGetCellHint
          Options.Editing = False
          Options.Filtering = False
        end
        object cxgrdReceberEMP_CODIGO: TcxGridDBColumn
          Caption = 'Emp.'
          DataBinding.FieldName = 'EMP_CODIGO'
          Options.Editing = False
          Width = 30
        end
        object cxgrdReceberNF_NUM_NFE: TcxGridDBColumn
          Caption = 'NFE'
          DataBinding.FieldName = 'NF_NUM_NFE'
          Options.Editing = False
        end
        object cxgrdReceberNFSE: TcxGridDBColumn
          DataBinding.FieldName = 'NFSE'
          Options.Editing = False
          Width = 79
        end
        object cxgrdReceberSELECAO_NFSE: TcxGridDBColumn
          Caption = 'RPS'
          DataBinding.FieldName = 'SELECAO_NFSE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Options.Filtering = False
        end
        object cxgrdReceberFAT_CODIGO: TcxGridDBColumn
          Caption = 'Fatura'
          DataBinding.FieldName = 'FAT_CODIGO'
          Options.Editing = False
        end
        object cxgrdReceberFPC_NUMER: TcxGridDBColumn
          Caption = 'PC'
          DataBinding.FieldName = 'FPC_NUMER'
          Options.Editing = False
        end
        object cxgrdReceberBAN_APELIDO: TcxGridDBColumn
          Caption = 'Conta Banco'
          DataBinding.FieldName = 'BAN_APELIDO'
          Options.Editing = False
        end
        object cxgrdReceberFPC_DTEMIS: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'FPC_DTEMIS'
          Options.Editing = False
          Options.FilteringPopupMultiSelect = False
          Width = 97
        end
        object cxgrdReceberPED_CODIGO: TcxGridDBColumn
          Caption = 'Pedido'
          DataBinding.FieldName = 'PED_CODIGO'
          Options.Editing = False
        end
        object cxgrdReceberCLI_RAZAO: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLI_RAZAO'
          Options.Editing = False
        end
        object cxgrdReceberFPC_VENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'FPC_VENCTO'
          Options.Editing = False
          Width = 129
        end
        object cxgrdReceberFPC_VLPARC: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'FPC_VLPARC'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxgrdReceberFPC_PAGTO: TcxGridDBColumn
          Caption = 'Recebido em'
          DataBinding.FieldName = 'FPC_PAGTO'
          Options.Editing = False
          Width = 89
        end
        object cxgrdReceberFPC_VLPAGO: TcxGridDBColumn
          Caption = 'Valor Recebido'
          DataBinding.FieldName = 'FPC_VLPAGO'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 84
        end
        object cxgrdReceberFPG_DESCRICAO: TcxGridDBColumn
          Caption = 'Forma pgto'
          DataBinding.FieldName = 'FPG_DESCRICAO'
          Options.Editing = False
          Width = 219
        end
        object cxgrdReceberCCPendente: TcxGridDBColumn
          Caption = 'Pendente'
          DataBinding.FieldName = 'CCPendente'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxgrdReceberFPC_STATUS_REMESSA: TcxGridDBColumn
          Caption = 'Remessa'
          DataBinding.FieldName = 'FPC_STATUS_REMESSA'
          Options.Editing = False
        end
        object cxgrdReceberCLI_UND_CONSUMIDORA: TcxGridDBColumn
          Caption = 'Und Consumidora'
          DataBinding.FieldName = 'CLI_UND_CONSUMIDORA'
          Options.Editing = False
        end
        object cxgrdReceberFAT_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_REGISTRO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberCLI_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CLI_CODIGO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_STATUS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_PREVISAO: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_PREVISAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_COBNUM: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_COBNUM'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_EXCLUSAO: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_EXCLUSAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_DESCTO: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_DESCTO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_JUROS: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_JUROS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_MULTA: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_MULTA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberOBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBSERVACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberCCT_DESCRI: TcxGridDBColumn
          DataBinding.FieldName = 'CCT_DESCRI'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberCLI_CGC: TcxGridDBColumn
          DataBinding.FieldName = 'CLI_CGC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_NPARCELAS: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_NPARCELAS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberObstransf: TcxGridDBColumn
          DataBinding.FieldName = 'Obs transf'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_IMPDUP: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_IMPDUP'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberRPS_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'RPS_CODIGO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_VL_RET: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_VL_RET'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFPC_VALR_SERVICOS: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_VALR_SERVICOS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_CID_CODIGO_PRESTACAO: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_CID_CODIGO_PRESTACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_NUMSERIE: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_NUMSERIE'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_IRPJ_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_IRPJ_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_PIS_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_PIS_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_COFINS_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_COFINS_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_INSS_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_INSS_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_ISS_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_ISS_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFAT_CONTSOCIAL_PERC: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_CONTSOCIAL_PERC'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdReceberFRE_DATA_RECEBIMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_DATA_RECEBIMENTO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxgrdRecebervendedor: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'vendedor'
        end
        object cxgrdReceberFPC_ANTECIPACAO_CONCLUIDA: TcxGridDBColumn
          DataBinding.FieldName = 'FPC_ANTECIPACAO_CONCLUIDA'
          Visible = False
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdReceber
      end
    end
  end
  object GroupBox6: TGroupBox [2]
    Left = 0
    Top = 564
    Width = 1530
    Height = 38
    Align = alBottom
    Caption = 'Observa'#231#227'o'
    Enabled = False
    TabOrder = 3
    object DBEdit2: TDBEdit
      Left = 8
      Top = 13
      Width = 945
      Height = 22
      Color = 14145495
      DataField = 'OBSERVACAO'
      DataSource = DsReceber
      TabOrder = 0
    end
  end
  object PaninfCli: TPanel [3]
    Left = 106
    Top = 339
    Width = 370
    Height = 96
    BevelInner = bvRaised
    Color = clInfoBk
    TabOrder = 4
    Visible = False
    object Label4: TLabel
      Left = 8
      Top = 23
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 23
      Top = 39
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label50: TLabel
      Left = 46
      Top = 55
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 74
      Top = 23
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_ENDERE'
      DataSource = DsConsultaClie
    end
    object DBText2: TDBText
      Left = 74
      Top = 39
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CIDADE'
      DataSource = DsConsultaClie
    end
    object DBText3: TDBText
      Left = 74
      Top = 55
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_UF'
      DataSource = DsConsultaClie
    end
    object Label36: TLabel
      Left = 27
      Top = 8
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 74
      Top = 8
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CODIGO'
      DataSource = DsConsultaClie
    end
    object Lbl_Pessoa: TLabel
      Left = 5
      Top = 70
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cnpj/Cnpf :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 74
      Top = 70
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CGC'
      DataSource = DsConsultaClie
    end
    object LBL_RAZAO: TLabel
      Left = 110
      Top = 8
      Width = 63
      Height = 14
      Caption = 'LBL_RAZAO'
    end
  end
  object grpContaFinanceira: TGroupBox [4]
    Left = 0
    Top = 526
    Width = 1530
    Height = 38
    Align = alBottom
    Caption = 'Conta Financeira'
    TabOrder = 5
    object dbedtContaFinanceira: TDBEdit
      Left = 8
      Top = 13
      Width = 945
      Height = 22
      Color = 14145495
      DataField = 'CCT_DESCRI'
      DataSource = DsReceber
      TabOrder = 0
    end
  end
  object pnFiltro: TPanel [5]
    Left = 0
    Top = 0
    Width = 1530
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label10: TLabel
      Left = 862
      Top = 19
      Width = 78
      Height = 14
      Alignment = taRightJustify
      Caption = 'Forma de Pagto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 903
      Top = 45
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = 'Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnImprimir: TJvArrowButton
      Left = 1017
      Top = 139
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
      OnClick = btnImprimirClick
    end
    object Label13: TLabel
      Left = 887
      Top = 74
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
    object GroupBox1: TGroupBox
      Left = 386
      Top = 130
      Width = 101
      Height = 39
      Caption = 'Visualizar'
      TabOrder = 0
      object chkMultiEmpresa: TCheckBox
        Left = 8
        Top = 18
        Width = 97
        Height = 17
        Caption = 'Multi Empresa'
        TabOrder = 0
      end
    end
    object grp1: TGroupBox
      Left = 464
      Top = 45
      Width = 393
      Height = 41
      Caption = 'Busca Direta'
      TabOrder = 1
      object cbbOutros: TComboBox
        Left = 8
        Top = 16
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
        Items.Strings = (
          'FATURA'
          'PEDIDO'
          'NFE'
          'VALOR'
          'LOTE'
          'N'#186' COBRAN'#199'A'
          'NFSE'
          'RPS'
          'UNID CONSUMIDORA')
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
    object BitPesquisar: TBitBtn
      Left = 1129
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Pesquisar t'#237'tulos a receber'
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
      TabOrder = 2
      OnClick = BitPesquisarClick
    end
    object GbPesquisaData: TGroupBox
      Left = 0
      Top = 1
      Width = 457
      Height = 42
      Caption = 'Informe o Per'#237'odo'
      TabOrder = 3
      object Label1: TLabel
        Left = 118
        Top = 20
        Width = 57
        Height = 14
        Caption = 'Data Inicial :'
      end
      object Label2: TLabel
        Left = 280
        Top = 20
        Width = 53
        Height = 14
        Caption = 'Data Final :'
      end
      object cbbTipoData: TComboBox
        Left = 8
        Top = 16
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
      object RxDataFinal: TJvDateEdit
        Left = 337
        Top = 16
        Width = 89
        Height = 22
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
        TabOrder = 2
      end
      object RxDataInicial: TJvDateEdit
        Left = 180
        Top = 16
        Width = 88
        Height = 22
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
      end
    end
    object GbCliente: TGroupBox
      Left = 0
      Top = 44
      Width = 457
      Height = 42
      Caption = 'Informe o cliente:'
      TabOrder = 4
      object cbClientes1: TSgDbSearchCombo
        Left = 3
        Top = 15
        Width = 421
        Height = 22
        TabOrder = 0
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
        OnButtonClick = cbClientes1ButtonClick
        OnSelect = cbClientes1Select
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
    object BitBaixar: TBitBtn
      Left = 1129
      Top = 37
      Width = 100
      Height = 25
      Hint = 'Baixar '
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
      TabOrder = 5
      OnClick = BitBaixarClick
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 130
      Width = 266
      Height = 39
      Caption = 'Filtrar'
      TabOrder = 6
      object ChkPrevisao: TCheckBox
        Left = 6
        Top = 18
        Width = 67
        Height = 17
        Caption = '&Previs'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4144959
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ChkPrevisaoClick
      end
      object CheckVencidas: TCheckBox
        Left = 78
        Top = 18
        Width = 66
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
      object chkRemessa: TCheckBox
        Left = 150
        Top = 18
        Width = 114
        Height = 17
        Caption = 'Remessa Enviada'
        TabOrder = 2
        OnClick = chkRemessaClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 485
      Top = 130
      Width = 477
      Height = 39
      Caption = 'Status'
      TabOrder = 7
      object Image1: TImage
        Left = 14
        Top = 15
        Width = 16
        Height = 16
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
        Top = 16
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
        Top = 16
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
        Top = 16
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
        Top = 16
        Width = 39
        Height = 14
        Caption = 'Vencida'
      end
      object Image5: TImage
        Left = 405
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
        Left = 426
        Top = 17
        Width = 42
        Height = 14
        Caption = 'Previs'#227'o'
        Color = clBtnFace
        ParentColor = False
      end
      object Image6: TImage
        Left = 318
        Top = 15
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00E6E6E600D2D2D200CECECE00CECECE00CECECE00CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00D2D2D200E6E6E600FF00
          FF00E6E6E600B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
          B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300E6E6
          E600D2D2D200B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
          B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300D2D2
          D200D0D0D000B8B8B800B9B9B900B9B9B900B9B9B900BABABA00BABABA00BABA
          BA00BABABA00BABABA00B9B9B900B9B9B900B9B9B900B8B8B800B7B7B700D0D0
          D000D4D4D400BEBEBE00BEBEBE00BFBFBF00BFBFBF00C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000BFBFBF00BFBFBF00BEBEBE00BEBEBE00BDBDBD00D2D2
          D200D6D6D600C3C3C300C4C4C400C5C5C500C5C5C500C5C5C500C6C6C600C6C6
          C600C6C6C600C6C6C600C5C5C500C5C5C500C4C4C400C3C3C300C2C2C200D5D5
          D500D9D9D900C8C8C800C9C9C900CACACA00CBCBCB00CBCBCB00CCCCCC00CCCC
          CC00CCCCCC00CBCBCB00CBCBCB00CACACA00C9C9C900C8C8C800C7C7C700D6D6
          D600DBDBDB00CCCCCC00CDCDCD00CECECE00D0D0D000D1D1D100D1D1D100D2D2
          D200D2D2D200D1D1D100D0D0D000CFCFCF00CECECE00CDCDCD00CBCBCB00D7D7
          D700DCDCDC00CDCDCD00CFCFCF00D1D1D100D2D2D200D4D4D400D6D6D600D8D8
          D800D7D7D700D5D5D500D4D4D400D2D2D200D0D0D000CFCFCF00CDCDCD00D8D8
          D800DBDBDB00CCCCCC00CDCDCD00CFCFCF00D0D0D000D1D1D100D2D2D200D3D3
          D300D3D3D300D2D2D200D1D1D100D0D0D000CFCFCF00CDCDCD00CCCCCC00D8D8
          D800D9D9D900C8C8C800C9C9C900CACACA00CBCBCB00CCCCCC00CCCCCC00CDCD
          CD00CDCDCD00CCCCCC00CCCCCC00CBCBCB00CACACA00C9C9C900C8C8C800D7D7
          D700D6D6D600C3C3C300C4C4C400C5C5C500C6C6C600C6C6C600C6C6C600C7C7
          C700C7C7C700C6C6C600C6C6C600C6C6C600C5C5C500C4C4C400C4C4C400D5D5
          D500D5D5D500BEBEBE00BFBFBF00BFBFBF00C0C0C000C0C0C000C0C0C000C1C1
          C100C1C1C100C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00BEBEBE00D3D3
          D300D4D4D400B8B8B800B9B9B900B9B9B900BABABA00BABABA00BABABA00BBBB
          BB00BBBBBB00BBBBBB00BABABA00BABABA00BABABA00B9B9B900B9B9B900D3D3
          D300E7E7E700B3B3B300B3B3B300B3B3B300B4B4B400B4B4B400B4B4B400B4B4
          B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B3B3B300B3B3B300E7E7
          E700FCFCFC00E7E7E700D4D4D400D1D1D100D1D1D100D1D1D100D1D1D100D1D1
          D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D4D4D400E7E7E700FCFC
          FC00}
        Stretch = True
      end
      object Label12: TLabel
        Left = 340
        Top = 16
        Width = 47
        Height = 14
        Caption = 'Devolvido'
      end
    end
    object Bit_Sair: TBitBtn
      Left = 1129
      Top = 139
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
      TabOrder = 8
      OnClick = Bit_SairClick
    end
    object GroupBox5: TGroupBox
      Left = 464
      Top = 1
      Width = 393
      Height = 42
      Caption = 'Situa'#231#227'o'
      TabOrder = 9
      object CbSituacao: TComboBox
        Left = 12
        Top = 16
        Width = 378
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
          'Agrupada'
          'Parcial')
      end
    end
    object GroupBox7: TGroupBox
      Left = 1
      Top = 87
      Width = 856
      Height = 36
      TabOrder = 10
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
        Width = 333
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
        FiltroTabela = 'CCT_CONTA= '#39'E'#39' and CCT_STATUS = '#39'L'#39
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Contas Financeiras'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'CCT_0000'
        CamposCarregar = 'CCT_CODIGO,CCT_DESCRI'
        CamposRetornar = 'CCT_CODIGO'
        Condicao = 'CCT_CONTA= '#39'E'#39' and CCT_STATUS = '#39'L'#39
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
        Left = 541
        Top = 11
        Width = 287
        Height = 22
        TabOrder = 1
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
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
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
    object BitRecebimento: TBitBtn
      Left = 1129
      Top = 71
      Width = 100
      Height = 25
      Hint = 'Recebimentos efetivados'
      Caption = 'Recebimentos'
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
      TabOrder = 11
      OnClick = BitRecebimentoClick
    end
    object edFPagto: TSgDbSearchCombo
      Left = 943
      Top = 15
      Width = 151
      Height = 22
      TabOrder = 12
      CharCase = ecUpperCase
      LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
      LookupOrderBy = 'FPG_DESCRICAO'
      LookupTable = 'FORMA_PAGAMENTO'
      LookupDispl = 'FPG_DESCRICAO'
      OnSelect = edFPagtoSelect
      GridAutoSize = False
      LookupSource = qFPagto
      LookupKeyField = 'FPG_REGISTRO'
      ShowButton = True
      AutoF8WinTitulo = 'Formas de Pagamento'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object CbBancos: TComboBoxRw
      Left = 943
      Top = 43
      Width = 151
      Height = 22
      TabOrder = 13
      CharCase = ecUpperCase
      LookupSelect = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
      LookupOrderBy = 'ban_apelido'
      LookupTable = 'ban0000'
      LookupDispl = 'BAN_APELIDO'
      OnSelect = CbBancosSelect
      GridAutoSize = False
      LookupSource = CbBancos.InternalSource
      DataField = 'BAN_CODIGO'
      LookupKeyField = 'BAN_CODIGO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Bancos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'ban0000'
      CamposCarregar = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
      CamposOrdernar = 'ban_apelido'
      Compartilhar = 'BANCOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object btnCadastro: TButton
      Left = 1017
      Top = 108
      Width = 100
      Height = 25
      Hint = 'Inclus'#227'o de t'#237'tulo a receber'
      Caption = 'Cadastro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnCadastroClick
    end
    object btnTransferir: TBitBtn
      Left = 1129
      Top = 108
      Width = 100
      Height = 25
      Hint = 
        'Transfer'#234'ncia de t'#237'tulos de bancos (n'#227'o liquidados e n'#227'o realiza' +
        'do remessa)'
      Caption = 'Transferir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF936035936035936035936035936035936035FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF936035936035C6923DE3B444F7
        CE4AF7CF4BE3BB47C79940936035936035FF00FFFF00FFFF00FFFF00FFFF00FF
        936035B57A36DD9938EFAC38F2B438F5BC3BF6BE3CF6BC3BF5B73BE2A33CB87F
        38936035FF00FFFF00FFFF00FF936035B27233DB872FE5942FD7A969D6C09AD8
        C096D8C197D8C095DBAF6AE69C35E09232B47634936035FF00FFFF00FF936035
        CD6F28DC7F2BDF8527F9FDFEF9FDFEF9FDFEF9FDFEF9FDFEF9FDFED2B89ADD86
        2CD0782B936035FF00FF936035B4652BD26822D77327DA7B2BDC7F27D68029DD
        892FDF8A2EDD8628D4A16FF9FDFED28E55D76E1FB5682C936035936035C05A21
        CE5E1ED26723D5691DDC9D6DF9FDFED97927DB7C29DC7925D3772CF9FDFED29D
        78D26017C25E24936035936035C64C18CA541BCC5718D78C61F9FDFEF9FDFECD
        5F13D0661BD06216D18C5DF9FDFECE865CCD5514C7521B936035936035C24212
        C5440FD3805AF9FDFEF9FFFFF9FDFEF9FDFEF9FDFEF9FDFEF9FDFEE1C8BCC855
        1CC94F17C34917936035936035C15F39C95229D48467F9FDFEFFFFFFF9FDFEE6
        C6B9E7C9BCE6C4B5D6987DC44E1BC64511C44414B84618936035936035B5704B
        D3765CD37455DA9B86F9FDFEF9FDFEC8572BCA572AC74F20C54717C6481CC446
        1BC24018AD5428936035FF00FF936035CD7C64D6826BD67D64D48C75F9FDFED6
        8268D88469D78267D67E63D57B5FD3775CC86F55936035FF00FFFF00FF936035
        B17855D88B7ADA8E7CDA8C78D58B77DA8E79DA8C78DA8B76D98A75D98973D483
        70B07450936035FF00FFFF00FFFF00FF936035B37F5DD79886E09E90E09E8EDF
        9D8EDF9C8CDF9A8BDE9889D38F7DB27B59936035FF00FFFF00FFFF00FFFF00FF
        FF00FF936035936035BE8E71D6A28FE4AEA1E4ADA0D5A08CBE8B6E9360359360
        35FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93603593603593
        6035936035936035936035FF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = btnTransferirClick
    end
    object chkExcluidos: TCheckBox
      Left = 272
      Top = 152
      Width = 114
      Height = 17
      Caption = 'Ocultar exclu'#237'dos'
      Checked = True
      State = cbChecked
      TabOrder = 16
      OnClick = chkExcluidosClick
    end
    object btnServico: TBitBtn
      Left = 1234
      Top = 6
      Width = 99
      Height = 25
      Hint = 'Gerar v'#225'rias NFSe automaticamente'
      Caption = 'Gerar NFSE'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFADADADADADADADADADADADADADADADADADADADADADADAD
        ADADADADADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADADADE5E5E5E2
        E2E2E2E2E2E3E3E3E2E2E2E2E2E2E1E1E1E0E0E0ADADADFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFADADADE9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E6E6E6E5E5
        E5E3E3E3ADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADADADEBEBEBEA
        EAEAEBEBEBEBEBEBEBEBEBEAEAEAE9E9E9E7E7E7ADADADFF00FFFF00FFADADAD
        ADADADADADAD818181ADADADEFEFEFEEEEEEEFEFEFEFEFEFEFEFEFEEEEEEEDED
        EDEBEBEBADADADFF00FFFF00FFADADADE5E5E5E2E2E2A9A9A9ADADADF2F2F2F2
        F2F2F2F2F2F3F3F3F2F2F2F2F2F2F0F0F0EEEEEEADADADFF00FFFF00FFADADAD
        E9E9E9E7E7E7ACACACADADADF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F3F3F2F2
        F2F0F0F0ADADADFF00FFFF00FFADADADEBEBEBEAEAEAAFAFAFADADADF7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F6F6F6F4F4F4F4F4F4ADADADFF00FFFF00FFADADAD
        EFEFEFEEEEEEB2B2B2ADADADF8F8F8F8F8F8F8F8F8FAFAFAF8F8F8ADADADADAD
        ADADADADADADADFF00FFFF00FFADADADF2F2F2F2F2F2B4B4B4ADADADFAFAFAFA
        FAFAFBFBFBFBFBFBFAFAFAADADADE3E3E3CECECEADADADFF00FFFF00FFADADAD
        F4F4F4F4F4F4B6B6B6ADADADFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFADADADCECE
        CEADADADFF00FFFF00FFFF00FFADADADF7F7F7F7F7F7B7B7B7ADADADADADADAD
        ADADADADADADADADADADADADADADADADADFF00FFFF00FFFF00FFFF00FFADADAD
        F8F8F8F8F8F8B8B8B8BABABAB8B8B8818181818181818181818181FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFADADADFAFAFAFAFAFAFBFBFBFBFBFBFAFAFAAD
        ADADE3E3E3CECECEADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADADAD
        FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFADADADCECECEADADADFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFADADADADADADADADADADADADADADADADADADAD
        ADADADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = btnServicoClick
    end
    object grpNfSE: TGroupBox
      Left = 1235
      Top = 37
      Width = 185
      Height = 124
      Caption = 'NFSe'
      TabOrder = 18
      object CHKSemRPS: TCheckBox
        Left = 15
        Top = 16
        Width = 114
        Height = 17
        Caption = 'RPS N'#227'o geradas'
        TabOrder = 0
        OnClick = CHKSemRPSClick
      end
      object chkNFSE: TCheckBox
        Left = 15
        Top = 39
        Width = 114
        Height = 17
        Caption = 'NFSE Autorizadas'
        TabOrder = 1
        OnClick = CHKSemRPSClick
      end
      object chkPendTrans: TCheckBox
        Left = 16
        Top = 62
        Width = 150
        Height = 17
        Caption = 'Pendente de Transmiss'#227'o'
        TabOrder = 2
        OnClick = CHKSemRPSClick
      end
    end
    object pesqVendedor: TSgDbSearchCombo
      Left = 943
      Top = 71
      Width = 151
      Height = 22
      EmptyText = 'TODOS OS VENDEDORES'
      TabOrder = 19
      OnChange = pesqVendedorChange
      CharCase = ecUpperCase
      LookupSelect = 'rep_codigo, rep_nome'
      LookupOrderBy = 'rep_nome'
      LookupTable = 'rep0000'
      LookupDispl = 'REP_NOME'
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
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object BitBtn1: TBitBtn
      Left = 911
      Top = 108
      Width = 100
      Height = 25
      Hint = 'Agrupar Faturas'
      Caption = '  &Renegociar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFF000000000000000000
        000000000000000000000000000000000000000000000000FFFFFF000000FFFF
        FF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFF
        FF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFF
        FF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFF
        FF000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFF
        FF000000FFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = BitBtn1Click
    end
    object chkAgrupados: TCheckBox
      Left = 272
      Top = 135
      Width = 114
      Height = 17
      Caption = 'Ocultar Agrupados'
      Checked = True
      State = cbChecked
      TabOrder = 21
      OnClick = chkExcluidosClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 256
    Top = 256
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 200
    Top = 272
  end
  inherited DBConn: TSQLConnection
    Left = 128
    Top = 241
  end
  inherited qAux: TSQLQuery
    Left = 234
    Top = 61
  end
  inherited qAux2: TSQLQuery
    Left = 290
    Top = 60
  end
  inherited qAux3: TSQLQuery
    Left = 330
    Top = 60
  end
  object CdsReceber: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DSPReceber'
    OnCalcFields = CdsReceberCalcFields
    OnFilterRecord = CdsReceberFilterRecord
    Left = 1248
    Top = 256
    object CdsReceberFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object CdsReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 6
    end
    object CdsReceberFPC_DTEMIS: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'FPC_DTEMIS'
    end
    object CdsReceberFPC_VENCTO: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'FPC_VENCTO'
    end
    object CdsReceberFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsReceberCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 30
    end
    object CdsReceberFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
      OnGetText = CdsReceberFPC_PAGTOGetText
    end
    object CdsReceberFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsReceberFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      OnGetText = CdsReceberFPC_NUMERGetText
      Size = 2
    end
    object CdsReceberFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsReceberFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object CdsReceberFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object CdsReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsReceberFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 16
    end
    object CdsReceberFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object CdsReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsReceberSELECAO_FAT: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO_FAT'
      OnGetText = CdsReceberSELECAO_FATGetText
    end
    object CdsReceberSELECAO_NFSE: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO_NFSE'
      OnGetText = CdsReceberSELECAO_FATGetText
    end
    object CdsReceberNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsReceberFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberNFSE: TStringField
      FieldName = 'NFSE'
      ProviderFlags = []
      Size = 40
    end
    object CdsReceberFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberCCPendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCPendente'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CdsReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object CdsReceberBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsReceberCCT_DESCRI: TStringField
      DisplayLabel = 'Centro Custo'
      FieldName = 'CCT_DESCRI'
      Origin = 'Centro de Custo'
      Size = 82
    end
    object CdsReceberCLI_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsReceberFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsReceberFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      OnGetText = CdsReceberFPC_STATUS_REMESSAGetText
      Size = 1
    end
    object CdsReceberFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object CdsReceberObstransf: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Obs transf'
      Size = 100
    end
    object CdsReceberFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object CdsReceberCLI_UND_CONSUMIDORA: TIntegerField
      FieldName = 'CLI_UND_CONSUMIDORA'
    end
    object CdsReceberRPS_CODIGO: TIntegerField
      FieldName = 'RPS_CODIGO'
    end
    object CdsReceberFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
    end
    object CdsReceberFPC_VALR_SERVICOS: TFMTBCDField
      FieldName = 'FPC_VALR_SERVICOS'
      Precision = 15
      Size = 5
    end
    object CdsReceberFAT_CID_CODIGO_PRESTACAO: TIntegerField
      FieldName = 'FAT_CID_CODIGO_PRESTACAO'
    end
    object CdsReceberFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 5
    end
    object CdsReceberFAT_IRPJ_PERC: TFMTBCDField
      FieldName = 'FAT_IRPJ_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_PIS_PERC: TFMTBCDField
      FieldName = 'FAT_PIS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_COFINS_PERC: TFMTBCDField
      FieldName = 'FAT_COFINS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_INSS_PERC: TFMTBCDField
      FieldName = 'FAT_INSS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_ISS_PERC: TFMTBCDField
      FieldName = 'FAT_ISS_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFAT_CONTSOCIAL_PERC: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_PERC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      Precision = 15
    end
    object CdsReceberFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CdsRecebervendedor: TStringField
      FieldName = 'vendedor'
      Size = 100
    end
    object CdsReceberOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object CdsReceberFAT_COMIS1: TFMTBCDField
      FieldName = 'FAT_COMIS1'
      Size = 5
    end
    object CdsReceberFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Size = 500
    end
    object CdsReceberFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 4
    end
    object CdsReceberFAT_BASESUB: TFMTBCDField
      FieldName = 'FAT_BASESUB'
      Size = 5
    end
    object CdsReceberFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      Size = 5
    end
    object CdsReceberFAT_DESP_ACES: TFMTBCDField
      FieldName = 'FAT_DESP_ACES'
      Size = 5
    end
    object CdsReceberFAT_BASEICMS: TFMTBCDField
      FieldName = 'FAT_BASEICMS'
      Size = 5
    end
    object CdsReceberFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      Size = 5
    end
    object CdsReceberFAT_ALIQUOTA: TFMTBCDField
      FieldName = 'FAT_ALIQUOTA'
      Size = 5
    end
    object CdsReceberFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object CdsReceberFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object CdsReceberFAT_LIVRO: TStringField
      FieldName = 'FAT_LIVRO'
      Size = 2
    end
    object CdsReceberFAT_VL_RET: TFMTBCDField
      FieldName = 'FAT_VL_RET'
      Size = 5
    end
    object CdsReceberFAT_IRPJ_RET: TFMTBCDField
      FieldName = 'FAT_IRPJ_RET'
      Size = 5
    end
    object CdsReceberFAT_PIS_RET: TFMTBCDField
      FieldName = 'FAT_PIS_RET'
      Size = 5
    end
    object CdsReceberFAT_COFINS_RET: TFMTBCDField
      FieldName = 'FAT_COFINS_RET'
      Size = 5
    end
    object CdsReceberFAT_INSS_RET: TFMTBCDField
      FieldName = 'FAT_INSS_RET'
      Size = 5
    end
    object CdsReceberFAT_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_RET'
      Size = 5
    end
    object CdsReceberFAT_BASE_ISS: TFMTBCDField
      FieldName = 'FAT_BASE_ISS'
      Size = 5
    end
    object CdsReceberFAT_BASE_INSS: TFMTBCDField
      FieldName = 'FAT_BASE_INSS'
      Size = 5
    end
    object CdsReceberFAT_ISS_RET: TFMTBCDField
      FieldName = 'FAT_ISS_RET'
      Size = 5
    end
    object CdsReceberCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object CdsReceberOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsReceberFAT_REEMBOLSO: TStringField
      FieldName = 'FAT_REEMBOLSO'
      Size = 1
    end
    object CdsReceberFAT_LOTE: TStringField
      FieldName = 'FAT_LOTE'
      Size = 50
    end
    object CdsReceberFAT_COMISSAO_VEN: TFMTBCDField
      FieldName = 'FAT_COMISSAO_VEN'
      Size = 2
    end
    object CdsReceberREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      Size = 3
    end
    object CdsReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsReceberFAT_VLFAT: TFMTBCDField
      DisplayWidth = 18
      FieldName = 'FAT_VLFAT'
      Size = 5
    end
    object CdsReceberCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Size = 8
    end
    object CdsReceberCCT_DESCRICAO: TStringField
      FieldName = 'CCT_DESCRICAO'
      Size = 80
    end
    object CdsReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsReceberCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object CdsReceberFPC_ANTECIPACAO_CONCLUIDA: TStringField
      FieldName = 'FPC_ANTECIPACAO_CONCLUIDA'
      Size = 1
    end
  end
  object DsReceber: TDataSource
    DataSet = CdsReceber
    Left = 1320
    Top = 256
  end
  object qReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT F1.FAT_REGISTRO,'
      'F1.FAT_CODIGO,'
      'F1.FPC_COBNUM,'
      'F1.FPC_DTEMIS,'
      'F1.FPC_VENCTO,'
      'F1.FPC_VLPARC,'
      'F1.FPC_VLPAGO,'
      'F1.CLI_CODIGO,'
      'C1.CLI_RAZAO,'
      'F1.FPC_PAGTO,'
      'F1.FPC_NUMER,'
      'F1.FPC_SITPAG,'
      'F1.FPC_STATUS,'
      'F1.FPC_PREVISAO,'
      'F1.FPC_EXCLUSAO,'
      'F1.EMP_CODIGO,'
      'T1.PED_CODIGO,'
      'NF0001.NF_NUM_NFE,'
      
        'NF0001.NF_NOTANUMBER FROM FAT_PC01 F1 LEFT JOIN FAT0000 T1 ON (T' +
        '1.FAT_CODIGO = F1.FAT_CODIGO)'
      
        'AND (F1.EMP_CODIGO = T1.EMP_CODIGO) LEFT JOIN CLI0000 C1 ON (F1.' +
        'CLI_CODIGO = C1.CLI_CODIGO)'
      
        'LEFT JOIN NF0001 ON (T1.FAT_CODIGO = NF0001.NF_NOTANUMBER) AND (' +
        'C1.CLI_CODIGO = NF0001.CLI_CODIGO) '#39';'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1110
    Top = 258
  end
  object DSPReceber: TDataSetProvider
    DataSet = qReceber
    Options = [poFetchDetailsOnDemand, poAutoRefresh, poAllowCommandText]
    Left = 1174
    Top = 258
  end
  object ImageList1: TImageList
    Left = 524
    Top = 330
    Bitmap = {
      494C010108000D00180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      FF00ABABFF00ABABFF00AAAAFF00DBDBFF00000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA0096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C9920000000000FAFAFF00C2C2FF00B9B9
      FF00B4B4FF00B1B1FF00F7F7FF00000000000000000000000000E7E7FF00B2B2
      FF00B0B0FF00AFAFFF00C7C7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D1007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA75000000000000000000F0F0FF00BEBE
      FF00BCBCFF00B2B2FF00C0C0FF00FEFEFF0000000000F6F6FF00BDBDFF00B5B5
      FF00B4B4FF00BBBBFF00FBFBFF0000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000007F7F7F00000000008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD30086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B00000000000000000000000000E3E3
      FF00C0C0FF00BFBFFF00AEAEFF00D6D6FF00FEFEFF00CACAFF00BABAFF00B8B8
      FF00B8B8FF00F0F0FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00000000008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D5008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C080000000000000000000000000000000
      0000D6D6FF00C3C3FF00BFBFFF00ACACFF00D1D1FF00BFBFFF00BDBDFF00BBBB
      FF00DFDFFF00000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D60090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C183000000000000000000000000000000
      0000FBFBFF00CDCDFF00C6C6FF00C1C1FF00C3C3FF00C2C2FF00C0C0FF00CFCF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D60095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C285000000000000000000000000000000
      000000000000F4F4FF00CBCBFF00C8C8FF00C7C7FF00C5C5FF00C7C7FF00FCFC
      FF0000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D80098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C489000000000000000000000000000000
      000000000000FDFDFF00D4D4FF00CBCBFF00CACAFF00C4C4FF00C5C5FF000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D70096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C387000000000000000000000000000000
      000000000000DEDEFF00D0D0FF00CECEFF00CCCCFF00C9C9FF00AFAFFF00DCDC
      FF0000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D70091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C385000000000000000000000000000000
      0000EAEAFF00D5D5FF00D3D3FF00D1D1FF00D8D8FF00CCCCFF00C4C4FF00AEAE
      FF00F0F0FF00000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D5008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C08100000000000000000000000000F5F5
      FF00DBDBFF00D7D7FF00D5D5FF00D5D5FF00FEFEFF00D7D7FF00CBCBFF00BCBC
      FF00B8B8FF00FCFCFF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD40086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D000000000000000000FDFDFF00E0E0
      FF00DADAFF00D8D8FF00D0D0FF00F8F8FF0000000000F7F7FF00CDCDFF00C9C9
      FF00B3B3FF00CBCBFF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB0099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C994000000000000000000E3E3FF00DADA
      FF00D8D8FF00D4D4FF00E9E9FF00000000000000000000000000E8E8FF00C9C9
      FF00C5C5FF00ADADFF00E2E2FF0000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F0000000000DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB0000000000EBEBFF00D7D7FF00D7D7
      FF00D6D6FF00D8D8FF000000000000000000000000000000000000000000D6D6
      FF00C6C6FF00BEBEFF00AFAFFF00F4F4FF00000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F000000000000000000DBDBF3007272D0007272
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080018001FFFFFFFF0000000083E08001
      0000000081C1FFFD00000000C081800500000000E003FFF500000000F0078015
      00000000F00FFFD500000000F80F805500000000F81F805500000000F80F8055
      00000000F007805500000000E003805500000000C083805500000000C1C18055
      0000000083E080558001800183E0FFFF80018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180018001800100000000000000000000000000000000
      000000000000}
  end
  object frxReportReceber: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.391219479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      '   totalPendente:real;'
      
        '   empresa: string;                                             ' +
        '          '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FPC_VL' +
        'PARC">;       '
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'FPC_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FPC_JU' +
        'ROS">;       '
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FPC_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                    '
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
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 1224
    Top = 317
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
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 608.252320000000000000
          Width = 56.692913390000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 379.527830000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 95.590600000000000000
          Width = 41.574805590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 163.858380000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_STATUS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 216.330860000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DTEMIS'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 665.063390000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VLPARC'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 728.874460000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DESCTO'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DESCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 793.307670000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 858.118740000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 24.566929130000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 277.126160000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 515.118430000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Width = 124.724448500000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 137.283550000000000000
          Width = 26.456685590000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 62.362204720000000000
          Width = 34.015745590000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NFSE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 656.063390000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 722.874460000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 790.307670000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 857.118740000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 24.566929130000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 97.590600000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 137.283550000000000000
          Top = 42.472480000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 161.858380000000000000
          Top = 42.472480000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 214.330860000000000000
          Top = 42.472480000000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 375.748300000000000000
          Top = 42.472480000000000000
          Width = 139.842610000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 608.252320000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 665.063390000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 728.874460000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 793.307670000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 858.118740000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 277.126160000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 532.236550000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 930.764380000000000000
          Top = 42.472480000000000000
          Width = 113.385858500000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 62.362204720000000000
          Top = 42.472480000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NFSE')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetReceber: TfrxDBDataset
    UserName = 'frxDBDatasetReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FAT_REGISTRO=FAT_REGISTRO'
      'FAT_CODIGO=FAT_CODIGO'
      'FPC_DTEMIS=FPC_DTEMIS'
      'FPC_VENCTO=FPC_VENCTO'
      'FPC_VLPARC=FPC_VLPARC'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'FPC_PAGTO=FPC_PAGTO'
      'FPC_VLPAGO=FPC_VLPAGO'
      'FPC_NUMER=FPC_NUMER'
      'FPC_STATUS=FPC_STATUS'
      'FPC_PREVISAO=FPC_PREVISAO'
      'FPC_SITPAG=FPC_SITPAG'
      'EMP_CODIGO=EMP_CODIGO'
      'FPC_COBNUM=FPC_COBNUM'
      'FPC_EXCLUSAO=FPC_EXCLUSAO'
      'PED_CODIGO=PED_CODIGO'
      'SELECAO_FAT=SELECAO_FAT'
      'SELECAO_NFSE=SELECAO_NFSE'
      'NF_NUM_NFE=NF_NUM_NFE'
      'FPC_DESCTO=FPC_DESCTO'
      'NFSE=NFSE'
      'FPC_JUROS=FPC_JUROS'
      'FPC_MULTA=FPC_MULTA'
      'CCPendente=CCPendente'
      'OBSERVACAO=OBSERVACAO'
      'BAN_APELIDO=BAN_APELIDO'
      'CCT_DESCRI=CCT_DESCRI'
      'CLI_CGC=CLI_CGC'
      'FPG_DESCRICAO=FPG_DESCRICAO'
      'FPC_STATUS_REMESSA=FPC_STATUS_REMESSA'
      'FPC_NPARCELAS=FPC_NPARCELAS'
      'Obs transf=Obs transf'
      'FPC_IMPDUP=FPC_IMPDUP'
      'CLI_UND_CONSUMIDORA=CLI_UND_CONSUMIDORA'
      'RPS_CODIGO=RPS_CODIGO'
      'FPC_VL_RET=FPC_VL_RET'
      'FPC_VALR_SERVICOS=FPC_VALR_SERVICOS'
      'FAT_CID_CODIGO_PRESTACAO=FAT_CID_CODIGO_PRESTACAO'
      'FAT_NUMSERIE=FAT_NUMSERIE'
      'FAT_IRPJ_PERC=FAT_IRPJ_PERC'
      'FAT_PIS_PERC=FAT_PIS_PERC'
      'FAT_COFINS_PERC=FAT_COFINS_PERC'
      'FAT_INSS_PERC=FAT_INSS_PERC'
      'FAT_ISS_PERC=FAT_ISS_PERC'
      'FAT_CONTSOCIAL_PERC=FAT_CONTSOCIAL_PERC'
      'FRE_DATA_RECEBIMENTO=FRE_DATA_RECEBIMENTO'
      'vendedor=vendedor'
      'OPV_CODIGO=OPV_CODIGO'
      'FAT_COMIS1=FAT_COMIS1'
      'FAT_OBS=FAT_OBS'
      'FAT_OPERACAO=FAT_OPERACAO'
      'FAT_BASESUB=FAT_BASESUB'
      'FAT_ICMSRET=FAT_ICMSRET'
      'FAT_DESP_ACES=FAT_DESP_ACES'
      'FAT_BASEICMS=FAT_BASEICMS'
      'FAT_VL_IPI=FAT_VL_IPI'
      'FAT_ALIQUOTA=FAT_ALIQUOTA'
      'FAT_OBSLIVRO=FAT_OBSLIVRO'
      'FAT_OPERUF=FAT_OPERUF'
      'FAT_LIVRO=FAT_LIVRO'
      'FAT_VL_RET=FAT_VL_RET'
      'FAT_IRPJ_RET=FAT_IRPJ_RET'
      'FAT_PIS_RET=FAT_PIS_RET'
      'FAT_COFINS_RET=FAT_COFINS_RET'
      'FAT_INSS_RET=FAT_INSS_RET'
      'FAT_CONTSOCIAL_RET=FAT_CONTSOCIAL_RET'
      'FAT_BASE_ISS=FAT_BASE_ISS'
      'FAT_BASE_INSS=FAT_BASE_INSS'
      'FAT_ISS_RET=FAT_ISS_RET'
      'CCT_NOVO=CCT_NOVO'
      'OPE_CODIGO=OPE_CODIGO'
      'FAT_REEMBOLSO=FAT_REEMBOLSO'
      'FAT_LOTE=FAT_LOTE'
      'FAT_COMISSAO_VEN=FAT_COMISSAO_VEN'
      'REP_CODIGO_INTERNO=REP_CODIGO_INTERNO'
      'REP_CODIGO=REP_CODIGO'
      'FAT_VLFAT=FAT_VLFAT'
      'CONTA_BANCARIA=CONTA_BANCARIA'
      'CCT_DESCRICAO=CCT_DESCRICAO'
      'PCX_DESCRI=PCX_DESCRI'
      'CLI_PESSOA=CLI_PESSOA')
    DataSource = DsReceber
    BCDToCurrency = False
    Left = 1408
    Top = 253
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
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
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 592
    Top = 309
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 680
    Top = 309
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 640
    Top = 333
  end
  object PMMarcar: TPopupMenu
    Images = ImageListaSelect
    Left = 880
    Top = 264
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
  end
  object ImageListaSelect: TImageList
    Left = 528
    Top = 392
    Bitmap = {
      494C010104000900180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object DsConsultaClie: TDataSource
    DataSet = CdsConsultaClie
    Left = 1142
    Top = 345
  end
  object CdsConsultaClie: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DspConsultaClie'
    Left = 1054
    Top = 345
    object CdsConsultaClieREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsConsultaClieTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsConsultaClieCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsConsultaClieCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object CdsConsultaClieCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object CdsConsultaClieCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      Size = 35
    end
    object CdsConsultaClieCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
    end
    object CdsConsultaClieCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsConsultaClieCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsConsultaClieCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CdsConsultaClieCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object CdsConsultaCliePCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsConsultaClieCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      Precision = 15
      Size = 5
    end
    object CdsConsultaClieCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      Precision = 15
      Size = 5
    end
    object CdsConsultaClieCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
  end
  object DspConsultaClie: TDataSetProvider
    DataSet = SqlCdsConsultaClie
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 974
    Top = 345
  end
  object SqlCdsConsultaClie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 880
    Top = 347
  end
  object qFPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 822
    Top = 260
  end
  object frxReceberpoForma: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.390490995370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FPC_VL' +
        'PARC">;       '
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'FPC_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FPC_JU' +
        'ROS">;       '
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FPC_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                    '
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
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 1320
    Top = 325
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
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
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
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 716.252320000000000000
          Width = 56.692913390000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 359.527830000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 37.795275590551200000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 64.590600000000000000
          Width = 41.574805590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 106.047322210000000000
          Width = 26.456685590000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 133.858380000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_STATUS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 186.330860000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DTEMIS'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 776.063390000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VLPARC'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 842.874460000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DESCTO'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DESCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 910.307670000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 977.118740000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 249.126160000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 623.118430000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 778.063390000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 844.874460000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 979.118740000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000100000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 58.590599999999990000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 66.590600000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 106.283550000000000000
          Top = 42.472480000000000000
          Width = 22.677155590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 131.858380000000000000
          Top = 42.472480000000000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 184.330860000000000000
          Top = 42.472480000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 355.748300000000000000
          Top = 42.472480000000000000
          Width = 264.567100000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 716.252320000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 776.063390000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 842.874460000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 910.307670000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 977.118740000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 249.126160000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 640.236550000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDatasetReceber."FPG_DESCRICAO"'
        KeepTogether = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 3.000000000000000000
          Width = 404.409668500000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Forma de pagamento :  [iif(<frxDBDatasetReceber."FPG_DESCRICAO">' +
              '='#39#39','#39'SEM DEFINI'#199#195'O'#39',<frxDBDatasetReceber."FPG_DESCRICAO">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 776.803650000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 843.614720000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 977.859000000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."CCPendente">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 368.530288540000000000
          Top = 0.843673170000000000
          Width = 405.792464880000000000
          Height = 16.593058540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"] Total:')
          ParentFont = False
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 1048
    Top = 160
    object miRecebimentos: TMenuItem
      Caption = 'Recebimentos'
      OnClick = Recebimentos1Click
    end
    object mireceberagrupado: TMenuItem
      Caption = 'Receber agrupado por forma de pagto'
      OnClick = mireceberagrupadoClick
    end
    object ReceberagrupadoporBanco1: TMenuItem
      Caption = 'Receber agrupado por Banco'
      OnClick = ReceberagrupadoporBanco1Click
    end
    object ReceberagrupadoporClienteBanco1: TMenuItem
      Caption = 'Receber agrupado por Cliente/Banco'
      OnClick = ReceberagrupadoporClienteBanco1Click
    end
    object ReceberagrupadoporClienteFatura1: TMenuItem
      Caption = 'Receber agrupado por Cliente/Fatura'
      OnClick = ReceberagrupadoporClienteFatura1Click
    end
    object ExportarparaCSV1: TMenuItem
      Caption = 'Exportar para CSV'
      OnClick = ExportarparaCSV1Click
    end
  end
  object frxReceberporBanco: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 44680.714467395830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade, quantidadeTotal:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      '         quantidadeTotal := quantidadeTotal + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FPC_VL' +
        'PARC">;       '
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'FPC_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FPC_JU' +
        'ROS">;       '
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FPC_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      '   quantidadeTotal := 0;                     '
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      ''
      'procedure Memo44OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '    quantidade := 0;         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 1424
    Top = 325
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
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
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
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 592.252320000000000000
          Width = 56.692913390000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 359.527830000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 37.795275590551200000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 64.590600000000000000
          Width = 41.574805590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 106.047322210000000000
          Width = 26.456685590000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 133.858380000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_STATUS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 186.330860000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DTEMIS'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 652.063390000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VLPARC'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 718.874460000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DESCTO'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DESCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 786.307670000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 853.118740000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 249.126160000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 921.205320000000000000
          Width = 124.724448500000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo34OnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidadeTotal]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 656.063390000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 722.874460000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 790.307670000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 857.118740000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000100000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 66.590600000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 106.283550000000000000
          Top = 42.472480000000000000
          Width = 22.677155590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 131.858380000000000000
          Top = 42.472480000000000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 184.330860000000000000
          Top = 42.472480000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 355.748300000000000000
          Top = 42.472480000000000000
          Width = 230.551330000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 592.252320000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 652.063390000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 718.874460000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 786.307670000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 853.118740000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 249.126160000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 929.764380000000000000
          Top = 42.472480000000000000
          Width = 117.165388500000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDatasetReceber."BAN_APELIDO"'
        KeepChild = True
        KeepTogether = True
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Banco: [IIF( <frxDBDatasetReceber."BAN_APELIDO">='#39#39','#39'SEM BANCO'#39',' +
              '<frxDBDatasetReceber."BAN_APELIDO">)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 3.779530000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 720.669760000000000000
          Top = 3.779530000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 788.102970000000000000
          Top = 3.779530000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 854.914040000000000000
          Top = 3.779530000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."CCPendente">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [frxDBDatasetReceber."BAN_APELIDO"] Total :')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo44OnAfterPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxReceberporBancoCliente: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.448567222220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade, qcliente :Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FPC_VL' +
        'PARC">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FPC_JU' +
        'ROS">;'
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FPC_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                    '
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
      '   totalRecebido := 0;'
      '   totalPendente := 0;'
      '   qcliente := 0;                     '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  qcliente := 0;                '
      'end;'
      ''
      'procedure GroupFooter2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  inc(qcliente);      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 688
    Top = 269
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 257.008040000000000000
        Visible = False
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 368.252320000000000000
          Width = 56.692913390000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 428.063390000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VLPARC'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 494.874460000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DESCTO'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DESCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 562.307670000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 629.118740000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 517.063390000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 584.307670000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 651.118740000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 540.472790000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber'
            'Exclusivamente emitido no peri'#243'do entre o dia [Filtro]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 58.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 77.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 576.087200000000000000
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
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 576.087200000000000000
          Top = 18.897650000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 22.590329060000000000
          Top = 62.724490000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 107.370130000000000000
          Top = 62.724490000000000000
          Width = 226.771800000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 512.503951650000000000
          Top = 62.724490000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 581.465060000000000000
          Top = 62.724490000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 648.276130000000000000
          Top = 62.724490000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 339.685220000000000000
          Top = 62.724490000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 445.307360000000000000
          Top = 62.252010000000000000
          Width = 64.251973390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcelas')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxDBDatasetReceber."BAN_APELIDO"'
        KeepChild = True
        KeepTogether = True
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Banco: [IIF( <frxDBDatasetReceber."BAN_APELIDO">='#39#39','#39'SEM BANCO'#39',' +
              '<frxDBDatasetReceber."BAN_APELIDO">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 510.331170000000000000
          Top = 3.779530000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPARC">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 584.102970000000000000
          Top = 3.779530000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 650.914040000000000000
          Top = 3.779530000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."CCPendente">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 25.157700000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [frxDBDatasetReceber."BAN_APELIDO"] Total :')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1,1)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total t'#237'tulos :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total clientes :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qcliente]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Visible = False
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetReceber."CLI_CODIGO"'
        KeepTogether = True
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupFooter2OnAfterPrint'
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677165350000000000
          Top = 1.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DTEMIS'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 339.244280000000000000
          Top = 1.779530000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 108.488250000000000000
          Top = 1.779530000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 489.858690000000000000
          Top = 1.779530000000000000
          Width = 86.929148500000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPARC">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 582.323440000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPAGO">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 649.134510000000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."CCPendente">,MasterData1,1)]')
          ParentFont = False
        end
        object frxDBDatasetReceberFPC_NPARCELAS: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 1.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NPARCELAS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NPARCELAS"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 560
    Top = 243
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    Left = 432
    Top = 267
  end
  object cdsTotalizador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotalizador'
    Left = 784
    Top = 419
  end
  object dspTotalizador: TDataSetProvider
    DataSet = qAux
    Left = 864
    Top = 419
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
    Left = 496
    Top = 24
  end
  object frxClienteFatura: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.391219479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   totalClientes, quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FPC_VL' +
        'PARC">;       '
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'FPC_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FPC_JU' +
        'ROS">;       '
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FPC_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBDatasetReceber."' +
        'CCPendente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      
        '   totalClientes := 0;                                          ' +
        '              '
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  totalClientes := totalClientes + 1;                           ' +
        '          '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 1224
    Top = 373
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 346.141930000000000000
          Width = 56.692913390000000000
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 23.566929130000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 63.055118110000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 126.425196850000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_STATUS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_STATUS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 185.771800000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DTEMIS'
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DTEMIS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 405.543307090000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VLPARC'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 472.764070000000000000
          Width = 60.472438500000000000
          Height = 15.118120000000000000
          DataField = 'FPC_DESCTO'
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_DESCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 534.197280000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 599.008350000000000000
          Width = 64.251968500000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CCPendente"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 24.566929130000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 249.008040000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 668.094930000000000000
          Width = 124.724448500000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 102.078740160000000000
          Top = 1.000000000000000000
          Width = 22.677155590000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 403.188976380000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 467.173228350000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 531.803149610000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 598.322834650000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPendente]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 598.165740000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 83.149618500000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 18.897650000000000000
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
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtro: [Filtro]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 63.472480000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'frxDBDatasetReceber."CLI_RAZAO"'
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 46.929190000000000000
          Top = 3.559060000000000000
          Width = 438.425480000000000000
          Height = 15.118110240000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDatasetReceber."CLI_CODIGO"] - [frxDBDatasetReceber."CLI_R' +
              'AZAO"]     ')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 20.574830000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 24.566929130000000000
          Top = 23.354360000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 39.472480000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 63.133890000000000000
          Top = 23.354360000000000000
          Width = 34.015745590000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 100.165430000000000000
          Top = 23.354360000000000000
          Width = 22.677155590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 128.519790000000000000
          Top = 23.354360000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 183.771800000000000000
          Top = 23.354360000000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1.574830000000000000
          Top = 3.559060000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 346.141930000000000000
          Top = 23.354360000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 405.543307086614000000
          Top = 23.354360000000000000
          Width = 64.251968503937000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 472.764070000000000000
          Top = 23.354360000000000000
          Width = 60.472438500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 534.197280000000000000
          Top = 23.354360000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 599.008350000000000000
          Top = 23.354360000000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pendente')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 23.354360000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 266.126160000000000000
          Top = 23.354360000000000000
          Width = 56.692913390000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 667.653990000000000000
          Top = 23.354360000000000000
          Width = 113.385858500000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma pgto.')
          ParentFont = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 3.559060000000000000
          Width = 177.637873390000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 3.559060000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CNPJ]:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1, 0)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976377952800000
          Width = 60.850393700787400000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPARC">,MasterData1,0)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 472.173228350000000000
          Width = 60.850393700000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_DESCTO">,MasterData1,0)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 534.803149606299200000
          Width = 64.629921259842520000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FPC_VLPAGO">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 601.322834650000000000
          Width = 60.850391260000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."CCPendente">, MasterData1, 0)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 360.496290000000000000
          Width = 306.141930000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 336.937230000000000000
          Width = 60.472438500000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Clientes:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[totalClientes]')
          ParentFont = False
        end
      end
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsExportaExcel
    Left = 968
    Top = 231
  end
  object cdsExportaExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPReceber'
    Left = 968
    Top = 183
    object cdsExportaExcelFAT_CODIGO: TStringField
      DisplayLabel = 'NUMERO DA FATURA'
      FieldName = 'FAT_CODIGO'
      Visible = False
      Size = 15
    end
    object cdsExportaExcelFAT_NUMSERIE: TStringField
      DisplayLabel = 'SERIE'
      FieldName = 'FAT_NUMSERIE'
      Size = 5
    end
    object cdsExportaExcelFPC_NUMER: TStringField
      DisplayLabel = 'NUMERO DA PARCELA'
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object cdsExportaExcelFPC_NPARCELAS: TIntegerField
      DisplayLabel = 'TOTAL PARCELA'
      FieldName = 'FPC_NPARCELAS'
    end
    object cdsExportaExcelFPC_DTEMIS: TSQLTimeStampField
      DisplayLabel = 'DATA DE EMISSAO'
      FieldName = 'FPC_DTEMIS'
    end
    object cdsExportaExcelFPC_PAGTO: TSQLTimeStampField
      DisplayLabel = 'DATA DE PAGAMENTO'
      FieldName = 'FPC_PAGTO'
    end
    object cdsExportaExcelFPC_VENCTO: TSQLTimeStampField
      DisplayLabel = 'DATA DE VENCIMENTO'
      FieldName = 'FPC_VENCTO'
    end
    object cdsExportaExcelFPC_VLPARC: TFMTBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'FPC_VLPARC'
    end
    object cdsExportaExcelFPC_VLPAGO: TFMTBCDField
      DisplayLabel = 'VALOR RECEBIDO'
      FieldName = 'FPC_VLPAGO'
    end
    object cdsExportaExcelFAT_VLFAT: TFMTBCDField
      DisplayLabel = 'VALOR TOTAL'
      FieldName = 'FAT_VLFAT'
    end
    object cdsExportaExcelCLI_CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsExportaExcelCLI_RAZAO: TStringField
      DisplayLabel = 'NOME DO CLIENTE'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsExportaExcelPED_CODIGO: TStringField
      DisplayLabel = 'PEDIDO NUMERO'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsExportaExcelNF_NUM_NFE: TIntegerField
      DisplayLabel = 'NOTA FISCAL'
      FieldName = 'NF_NUM_NFE'
    end
    object cdsExportaExcelCONTA_BANCARIA: TStringField
      DisplayLabel = 'CONTA BANCARIA'
      FieldName = 'CONTA_BANCARIA'
      Size = 8
    end
    object cdsExportaExcelVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 35
    end
    object cdsExportaExcelCCT_DESCRI: TStringField
      DisplayLabel = 'CATEGORIA DE CONTA'
      FieldName = 'CCT_DESCRICAO'
      Size = 80
    end
    object cdsExportaExcelFPG_DESCRICAO: TStringField
      DisplayLabel = 'FORMA DE PAGAMENTO'
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object cdsExportaExcelPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsExportaExcelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
