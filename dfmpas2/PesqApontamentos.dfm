inherited frmApontamentosCargas: TfrmApontamentosCargas
  Caption = 'Gerenciamento de Apontamentos'
  ClientHeight = 574
  ClientWidth = 1054
  ExplicitWidth = 1062
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1054
    Height = 497
    ExplicitWidth = 1054
    ExplicitHeight = 497
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1046
      ExplicitHeight = 469
      inherited pnlControle: TPanel
        Width = 1046
        Height = 89
        ExplicitWidth = 1046
        ExplicitHeight = 89
        inherited pnlFiltro: TPanel
          Width = 1046
          Height = 89
          ExplicitWidth = 1046
          ExplicitHeight = 89
          inherited pnlpn1: TPanel
            Width = 1046
            Height = 89
            ExplicitWidth = 1046
            ExplicitHeight = 89
            DesignSize = (
              1046
              89)
            inherited btnPesquisa: TSpeedButton
              Left = 953
              ExplicitLeft = 953
            end
            inherited btnLimpar: TSpeedButton
              Left = 953
              ExplicitLeft = 953
            end
            object Label5: TLabel
              Left = 376
              Top = 43
              Width = 30
              Height = 13
              Caption = 'Setor:'
            end
            object Label1: TLabel
              Left = 9
              Top = 13
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
            object Label3: TLabel
              Left = 12
              Top = 40
              Width = 38
              Height = 13
              Caption = 'Num OS'
            end
            object Label4: TLabel
              Left = 123
              Top = 40
              Width = 32
              Height = 13
              Caption = 'Pedido'
            end
            object Label6: TLabel
              Left = 232
              Top = 40
              Width = 29
              Height = 13
              Caption = 'Carga'
            end
            object Label7: TLabel
              Left = 647
              Top = 1
              Width = 42
              Height = 14
              Alignment = taRightJustify
              Caption = 'Situa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object PesqCliente: TSgDbSearchCombo
              Left = 51
              Top = 9
              Width = 275
              Height = 21
              EmptyText = 'TODOS OS CLIENTES'
              TabOrder = 0
              CharCase = ecUpperCase
              LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
              LookupOrderBy = 'CLI_RAZAO'
              LookupTable = 'cli0000'
              LookupDispl = 'CLI_RAZAO'
              OnButtonClick = PesqClienteButtonClick
              OnSelect = PesqClienteSelect
              GridAutoSize = False
              LookupSource = qcli
              LookupKeyField = 'CLI_CODIGO'
              ShowButton = True
              LookupTableShare = 'clientes'
              AutoF8WinTitulo = 'Clientes'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object PesqSetor: TSgDbSearchCombo
              Left = 376
              Top = 59
              Width = 275
              Height = 21
              EmptyText = 'TODOS OS SETORES'
              TabOrder = 1
              CharCase = ecUpperCase
              LookupSelect = 'SET_CODIGO, SET_DESCRICAO'
              LookupOrderBy = 'SET_DESCRICAO'
              LookupTable = 'SETOR'
              LookupDispl = 'SET_DESCRICAO'
              OnSelect = PesqSetorSelect
              GridAutoSize = False
              LookupSource = qcli
              LookupKeyField = 'SET_CODIGO'
              ShowButton = True
              LookupTableShare = 'PRODUCAO'
              AutoF8WinTitulo = 'SETOR'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object chkFinalizados: TCheckBox
              Left = 704
              Top = 64
              Width = 177
              Height = 17
              Caption = 'Processos finalizados'
              TabOrder = 3
              Visible = False
              OnClick = chkFinalizadosClick
            end
            object cbsituacao: TComboBox
              Left = 647
              Top = 18
              Width = 186
              Height = 21
              TabOrder = 2
              OnChange = cbsituacaoChange
              Items.Strings = (
                'PENDENTE'
                'CONFIRMADO'
                'CONCLU'#205'DO'
                'CANCELADO'
                'EM ANDAMENTO'
                'PARADO')
            end
            object chkFaturada: TCheckBox
              Left = 704
              Top = 45
              Width = 113
              Height = 17
              Caption = 'Ordens Faturadas'
              TabOrder = 4
              OnClick = chkFinalizadosClick
            end
          end
        end
        object numCarga: TEdit
          Left = 229
          Top = 59
          Width = 104
          Height = 21
          TabOrder = 1
          OnExit = numCargaExit
        end
        object numPedido: TEdit
          Left = 119
          Top = 59
          Width = 104
          Height = 21
          TabOrder = 2
          OnExit = numCargaExit
        end
        object NumOS: TEdit
          Left = 9
          Top = 59
          Width = 104
          Height = 21
          TabOrder = 3
          OnExit = numCargaExit
        end
      end
      inherited cxgrd1: TcxGrid
        Top = 89
        Width = 1046
        Height = 380
        LevelTabs.CaptionAlignment = taLeftJustify
        RootLevelOptions.DetailTabsPosition = dtpTop
        OnActiveTabChanged = cxgrd1ActiveTabChanged
        ExplicitTop = 89
        ExplicitWidth = 1046
        ExplicitHeight = 380
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          PopupMenu = pAponta
          FilterBox.CustomizeDialog = False
          DataController.Filter.DateTimeFormat = 'yyyy-mm-dd'
          DataController.Filter.TranslateBetween = True
          DateTimeHandling.Filters = [dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfPastFuture]
          DateTimeHandling.DateFormat = 'yyyy-mm-dd'
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_NORDEM'
            Width = 91
          end
          object cxgrd1DBTableView1OPE_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'OPE_NOME'
            Width = 79
          end
          object cxgrd1DBTableView1OPE_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'OPE_DESCRICAO'
          end
          object cxgrd1DBTableView1CAR_CODIGO: TcxGridDBColumn
            Caption = 'Carga'
            DataBinding.FieldName = 'CAR_CODIGO'
            Width = 71
          end
          object cxgrd1DBTableView1DATA_CARGA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA_CARGA'
            Options.Editing = False
          end
          object cxgrd1DBTableView1CAR_STATUS: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'CAR_STATUS'
            Width = 103
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'PRD_DESCRI'
            Width = 588
          end
          object cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CLI_CODIGO'
            Width = 83
          end
          object cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn
            DataBinding.FieldName = 'CLI_RAZAO'
          end
          object cxgrd1DBTableView1CAR_TEMPOGASTO: TcxGridDBColumn
            Caption = 'Tempo gasto'
            DataBinding.FieldName = 'CAR_TEMPOGASTO'
          end
          object cxgrd1DBTableView1EQP_DESCRICAO: TcxGridDBColumn
            Caption = 'Equipamento'
            DataBinding.FieldName = 'EQP_DESCRICAO'
          end
          object cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SET_DESCRICAO'
          end
          object cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_CODIGO'
            Visible = False
          end
          object cxgrd1DBTableView1OPE_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'OPE_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1OPR_EMISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'OPR_EMISSAO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PCP_DATAINI: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_DATAINI'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PCP_DATAFIM: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_DATAFIM'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PCP_TEMPO_GASTO: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_TEMPO_GASTO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PCP_STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_STATUS'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PED_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1IOP_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_QUANTIDADE'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PCP_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1IOP_PESO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_PESO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1IOP_CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_CUSTO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1IOP_PRECO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_PRECO'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaSemCarga
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView2IOP_NORDEM: TcxGridDBColumn
            Caption = 'OS'
            DataBinding.FieldName = 'IOP_NORDEM'
            Width = 96
          end
          object cxgrd1DBTableView2OPR_EMISSAO: TcxGridDBColumn
            Caption = 'Data de Emiss'#227'o'
            DataBinding.FieldName = 'OPR_EMISSAO'
            Options.Editing = False
            Width = 180
          end
          object cxgrd1DBTableView2PCP_STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'PCP_STATUS'
            Width = 102
          end
          object cxgrd1DBTableView2OPE_NOME: TcxGridDBColumn
            Caption = 'Fase'
            DataBinding.FieldName = 'OPE_NOME'
          end
          object cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
          end
          object cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'PRD_DESCRI'
            Width = 313
          end
          object cxgrd1DBTableView2CLI_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CLI_CODIGO'
            Width = 51
          end
          object cxgrd1DBTableView2CLI_RAZAO: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_RAZAO'
          end
          object cxgrd1DBTableView2PED_CODIGO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
          end
          object cxgrdbclmncxgrd1DBTableView2PCP_DATAINI: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'PCP_DATAINI'
            Options.Editing = False
          end
          object cxgrd1DBTableView2PCP_TEMPO_GASTO: TcxGridDBColumn
            Caption = 'Tempo gasto'
            DataBinding.FieldName = 'PCP_TEMPO_GASTO'
          end
          object cxgrd1DBTableView2EQP_DESCRICAO: TcxGridDBColumn
            Caption = 'Equipamento'
            DataBinding.FieldName = 'EQP_DESCRICAO'
          end
          object cxgrd1DBTableView2SET_DESCRICAO: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SET_DESCRICAO'
          end
        end
        object cxgrd1DBTableView3: TcxGridDBTableView [2]
          PopupMenu = pAponta
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'CAR_CODIGO'
          DataController.KeyFieldNames = 'CAR_CODIGO'
          DataController.MasterKeyFieldNames = 'CAR_CODIGO'
          DataController.MultiThreadedOptions.Filtering = bTrue
          DataController.MultiThreadedOptions.Sorting = bTrue
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.FocusRect = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView3APP_STATUS: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'APP_STATUS'
            Width = 106
          end
          object cxgrd1DBTableView3APP_DATAINI: TcxGridDBColumn
            Caption = 'Inicio'
            DataBinding.FieldName = 'APP_DATAINI'
          end
          object cxgrd1DBTableView3EQP_DESCRICAO: TcxGridDBColumn
            Caption = 'Equipamento'
            DataBinding.FieldName = 'EQP_DESCRICAO'
          end
          object cxgrd1DBTableView3USU_NOME: TcxGridDBColumn
            Caption = 'Colaborador'
            DataBinding.FieldName = 'USU_NOME'
          end
          object cxgrd1DBTableView3APP_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'APP_CODIGO'
            Visible = False
          end
          object cxgrd1DBTableView3PCP_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PCP_CODIGO'
            Visible = False
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          Caption = 'Cargas'
          object cxgrd1Level2: TcxGridLevel
            GridView = cxgrd1DBTableView3
          end
        end
        object cxgrd1Level1: TcxGridLevel
          Caption = 'Ordem'
          GridView = cxgrd1DBTableView2
          object cxgrd1Level3: TcxGridLevel
          end
        end
      end
      object Data: TGroupBox
        Left = 376
        Top = -2
        Width = 265
        Height = 43
        Caption = 'Data'
        TabOrder = 2
        object Ate: TLabel
          Left = 133
          Top = 18
          Width = 17
          Height = 13
          Caption = 'Ate'
        end
        object Label2: TLabel
          Left = 10
          Top = 18
          Width = 13
          Height = 13
          Caption = 'De'
        end
        object DataCargaFim: TJvDateEdit
          Left = 158
          Top = 15
          Width = 87
          Height = 21
          ShowNullDate = False
          TabOrder = 1
        end
        object DataCargaIni: TJvDateEdit
          Left = 29
          Top = 15
          Width = 98
          Height = 21
          ShowNullDate = False
          TabOrder = 0
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 538
    Width = 1054
    ExplicitTop = 538
    ExplicitWidth = 1054
    DesignSize = (
      1054
      36)
    inherited btnSelect: TSpeedButton
      Left = 906
      ExplicitLeft = 906
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1054
    ExplicitWidth = 1054
    DesignSize = (
      1054
      41)
    inherited btnExclui: TSpeedButton
      Left = 454
      Top = 2
      Caption = 'Excluir'
      Glyph.Data = {00000000}
      Visible = False
      ExplicitLeft = 454
      ExplicitTop = 2
    end
    inherited btnNovo: TSpeedButton
      Hint = 'Apontar'
      Caption = 'Apontar'
    end
    inherited btnEdita: TSpeedButton
      OnClick = btnEditaClick
    end
    inherited btnFechar: TSpeedButton
      Left = 990
      ExplicitLeft = 990
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 889
      ExplicitLeft = 889
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 788
      OnClick = btnrelatoriosClick
      ExplicitLeft = 788
    end
    object JvArrowButton1: TJvArrowButton
      Left = 181
      Top = 0
      Width = 87
      Height = 39
      DropDown = pAponta
      Caption = 'Excluir'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 592
    Top = 288
  end
  inherited cxLocalizer1: TcxLocalizer
    FileName = 'C:\Developer\Adjutor\TRADDEV_EXPRESS_en.INI'
    Left = 456
    Top = 144
  end
  inherited qAux: TFDQuery
    Left = 747
    Top = 64
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 544
    Top = 128
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 528
    Top = 192
  end
  inherited FDTransac: TFDTransaction
    Left = 672
    Top = 264
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 952
    Top = 208
  end
  inherited qAux2: TFDQuery
    Top = 111
  end
  inherited qAux3: TFDQuery
    Left = 331
    Top = 119
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  inherited dsBusca: TDataSource
    Left = 236
    Top = 296
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      ' '
      
        'SELECT  iop.iop_codigo,ope_descricao, IOP_NORDEM, ca.car_codigo,' +
        ' ca.DATA_CARGA, coalesce(PCP_STATUS,'#39'G'#39') PCP_STATUS, coalesce(ca' +
        'r_status,'#39'P'#39') car_status , ope.ope_codigo, ope.ope_nome, '
      
        'IOP_PESO* IOP_QUANTIDADE  peso_total, pr.prd_refer, pr.prd_codig' +
        'o, pr.prd_descri,  cl.cli_codigo, cl.cli_razao, OP.ped_codigo, I' +
        'OP_QUANTIDADE, IOP_PESO, IOP_CUSTO, IOP_PRECO, pp.PCP_CODIGO, CA' +
        'R_TEMPOGASTO, OPR_EMISSAO, '
      
        'eqp_Descricao, se.SET_DESCRICAO, pp.PCP_DATAINI, pp.PCP_DATAFIM,' +
        ' pp.PCP_STATUS'
      ' from item_ordemproducao iop'
      ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)'
      ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)'
      ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)'
      ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)'
      ' join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo)'
      ' join carga ca on (ca.car_codigo = pp.car_codigo)'
      ' join operacoes ope on (ope.ope_codigo = pp.ope_codigo)'
      ' JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO)'
      ' LEFT JOIN SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO)')
    Left = 171
    Top = 288
    object cdsBuscaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fase'
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsBuscaIOP_NORDEM: TStringField
      DisplayLabel = 'OS'
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsBuscaOPR_EMISSAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaSET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaPCP_DATAINI: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAINI'
      Origin = 'PCP_DATAINI'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaPCP_DATAFIM: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAFIM'
      Origin = 'PCP_DATAFIM'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaPCP_TEMPO_GASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_TEMPO_GASTO'
      Origin = 'PCP_TEMPO_GASTO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object cdsBuscaCAR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_CODIGOGetText
    end
    object cdsBuscaDATA_CARGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaPCP_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object cdsBuscaCAR_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_STATUS'
      Origin = 'CAR_STATUS'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_STATUSGetText
      Size = 1
    end
    object cdsBuscaPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaPRD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsBuscaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsBuscaCLI_CODIGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsBuscaCLI_RAZAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object cdsBuscaPED_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object cdsBuscaIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsBuscaPCP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaIOP_PESO: TFMTBCDField
      FieldName = 'IOP_PESO'
      Origin = 'IOP_PESO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_CUSTO: TFMTBCDField
      FieldName = 'IOP_CUSTO'
      Origin = 'IOP_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_PRECO: TFMTBCDField
      FieldName = 'IOP_PRECO'
      Origin = 'IOP_PRECO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaCAR_TEMPOGASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_TEMPOGASTO'
      Origin = 'CAR_TEMPOGASTO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object cdsBuscaOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 720
    Top = 232
  end
  inherited PopupMenu2: TPopupMenu
    Left = 848
    Top = 224
  end
  inherited frxPadrao: TfrxReport
    Left = 628
    Top = 273
    Datasets = <>
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
    end
  end
  inherited cdsBuscaDetalhes: TFDQuery
    SQL.Strings = (
      
        ' SELECT app_codigo, PCP_CODIGO, APP_STATUS, APP_DATAINI, APP_DAT' +
        'AFIM, eq.EQP_CODIGO, eq.EQP_DESCRICAO, co.COL_NOME '
      '  FROM APONTAMENTO_PROCESSO ap'
      '  LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ap.EQP_CODIGO)'
      '  LEFT JOIN COLABORADOR co ON (co.COL_CODIGO = ap.COL_CODIGO)'
      'WHERE APP_CANCELADO <> '#39'S'#39)
    Left = 171
    Top = 336
    object cdsBuscaDetalhesAPP_CODIGO: TIntegerField
      FieldName = 'APP_CODIGO'
      Origin = 'APP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaDetalhesPCP_CODIGO: TIntegerField
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaDetalhesAPP_STATUS: TStringField
      FieldName = 'APP_STATUS'
      Origin = 'APP_STATUS'
      OnGetText = cdsBuscaDetalhesAPP_STATUSGetText
      Size = 1
    end
    object cdsBuscaDetalhesAPP_DATAINI: TSQLTimeStampField
      FieldName = 'APP_DATAINI'
      Origin = 'APP_DATAINI'
    end
    object cdsBuscaDetalhesAPP_DATAFIM: TSQLTimeStampField
      FieldName = 'APP_DATAFIM'
      Origin = 'APP_DATAFIM'
    end
    object cdsBuscaDetalhesEQP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaDetalhesEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaDetalhesUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsBuscaDetalhesCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
    end
  end
  inherited dsBuscaDetalhes: TDataSource
    Left = 260
    Top = 336
  end
  object qcli: TSQLQuery
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
    Left = 215
    Top = 244
  end
  object cdsBuscasemCarga: TFDQuery
    BeforeOpen = cdsBuscasemCargaBeforeOpen
    AfterOpen = cdsBuscaAfterOpen
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        ' SELECT iop.iop_codigo, IOP_NORDEM, coalesce(PCP_STATUS,'#39'P'#39') PCP' +
        '_STATUS,  '#39'P'#39'  car_status , ope.ope_codigo, ope.ope_nome, '
      
        ' pr.prd_refer, pr.prd_codigo, pr.prd_descri,  cl.cli_codigo, cl.' +
        'cli_razao, OP.ped_codigo ,pp.PCP_CODIGO, PCP_TEMPO_GASTO, OPR_EM' +
        'ISSAO,'
      '  eqp_Descricao, se.SET_DESCRICAO'
      ' from item_ordemproducao iop'
      ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)'
      ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)'
      ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)'
      ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)'
      
        ' join PROCESSOS_OPERACOES pop on (pr.pro_codigo = pop.pro_codigo' +
        ')'
      
        ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_' +
        'NAOUSACARGA = '#39'S'#39')'
      
        ' LEFT JOIN PROCESSOS_PRODUCAO pp ON (pp.OPE_CODIGO = ope.OPE_COD' +
        'IGO AND iop.iop_codigo = pp.iop_codigo)'
      ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = pp.EQP_CODIGO)'
      ' LEFT JOIN SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO)'
      ' ')
    Left = 171
    Top = 384
    object cdsBuscasemCargaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscasemCargaOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsBuscasemCargaIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsBuscasemCargaOPR_EMISSAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscasemCargaSET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscasemCargaPCP_DATAINI: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAINI'
      Origin = 'PCP_DATAINI'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaPCP_DATAFIM: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAFIM'
      Origin = 'PCP_DATAFIM'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaPCP_TEMPO_GASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_TEMPO_GASTO'
      Origin = 'PCP_TEMPO_GASTO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object cdsBuscasemCargaCAR_CODIGO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CAR_CODIGO'
    end
    object cdsBuscasemCargaDATA_CARGA: TSQLTimeStampField
      FieldKind = fkInternalCalc
      FieldName = 'DATA_CARGA'
    end
    object cdsBuscasemCargaPCP_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscasemCargaPCP_STATUSGetText
      Size = 1
    end
    object cdsBuscasemCargaCAR_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_STATUS'
      Origin = 'CAR_STATUS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsBuscasemCargaPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaPRD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsBuscasemCargaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsBuscasemCargaCLI_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsBuscasemCargaCLI_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object cdsBuscasemCargaPED_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object cdsBuscasemCargaIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsBuscasemCargaPCP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscasemCargaIOP_PESO: TFMTBCDField
      FieldName = 'IOP_PESO'
      Origin = 'IOP_PESO'
      Precision = 18
      Size = 5
    end
    object cdsBuscasemCargaIOP_CUSTO: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'IOP_CUSTO'
      Origin = 'IOP_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsBuscasemCargaIOP_PRECO: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'IOP_PRECO'
      Origin = 'IOP_PRECO'
      Precision = 18
      Size = 5
    end
    object cdsBuscasemCargaCAR_TEMPOGASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'CAR_TEMPOGASTO'
      Origin = 'CAR_TEMPOGASTO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object cdsBuscasemCargaOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkInternalCalc
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object dsBuscaSemCarga: TDataSource
    DataSet = cdsBuscasemCarga
    Left = 268
    Top = 385
  end
  object pAponta: TPopupMenu
    Left = 60
    Top = 257
    object miExcluirapontamento: TMenuItem
      Caption = 'Excluir apontamento'
      OnClick = miExcluirapontamentoClick
    end
    object ExcluirOrdemdacarga1: TMenuItem
      Caption = 'Excluir Ordem da carga'
      OnClick = ExcluirOrdemdacarga1Click
    end
  end
  object frxRelatorioApont: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43710.682645902800000000
    ReportOptions.LastChange = 43851.479093553200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var TotalDia,TotalCarga, TotalEquipamento, totalSetor: integer; ' +
        '                                                                ' +
        '                              '
      'function retornacomZeros(const numero: string): string;'
      'begin'
      '  if Length(numero) = 1 then'
      '    result := '#39'0'#39'+numero'
      '  else'
      
        '    result := numero;                                           ' +
        '        '
      ''
      'end;          '
      ''
      
        'procedure GroupHeaderEquipamentoOnBeforePrint(Sender: TfrxCompon' +
        'ent);'
      'begin'
      '      '
      'end;'
      ''
      ''
      'procedure GrupoFooterDiaOnBeforePrint(Sender: TfrxComponent);'
      'var horas, minutos, segundos : integer;    '
      'begin'
      ' if TotalDia >0 then'
      ' begin             '
      '   horas:=  int(TotalDia/3600);'
      '   minutos := int((TotalDia - (horas*3600))/60);'
      '   segundos := (TotalDia- ( horas*3600)-(minutos*60));    '
      '  // TotalHorasDia.text := IntToStr(TotalDia);'
      '   TotalHorasDia.text :=   retornacomZeros(intToStr(horas))+'#39':'#39'+'
      
        '                           retornacomZeros(intToStr(minutos))+'#39':' +
        #39'+'
      
        '                           retornacomZeros(intToStr(segundos)) ;' +
        '//+'#39' - '#39'+ intToStr(TotalDia);'
      ' end;                                        '
      'end;'
      ''
      'procedure GrupoFooterCargaOnBeforePrint(Sender: TfrxComponent);'
      
        'var horas, minutos, segundos : integer;                         ' +
        '                                                          '
      'begin'
      '                       '
      '  TotalCarga :=<frxDBDataset1."pcp_tempo_seg">   ;'
      '      '
      '  if TotalCarga >0 then           '
      '  begin'
      '    TotalDia :=TotalCarga + TotalDia;'
      '    TotalEquipamento := TotalEquipamento + TotalCarga ;'
      '    totalSetor := totalsetor +   TotalCarga ;      '
      '    horas:=  int(TotalCarga/3600);'
      '    minutos := int((TotalCarga - (horas*3600))/60);'
      
        '    segundos := (TotalCarga- ( horas*3600)-(minutos*60));       ' +
        '                                                          '
      '    TotalHorasCarga.text:= retornacomZeros(intToStr(horas))+'#39':'#39'+'
      
        '                           retornacomZeros(intToStr(minutos))+'#39':' +
        #39'+'
      
        '                           retornacomZeros(intToStr(segundos));/' +
        '/ +'#39' - '#39'+ intToStr(TotalCarga);'
      ' end;                                     '
      'end;'
      ''
      ''
      'procedure GroupHeaderCargaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  //  TotalCarga :=  <frxDBDataset1."pcp_tempo_seg">  '
      'end;'
      ''
      ''
      
        'procedure GroupFooterEquipamentoOnBeforePrint(Sender: TfrxCompon' +
        'ent);'
      'var horas, minutos, segundos : integer;    '
      'begin'
      '  if TotalEquipamento >0 then              '
      '  begin             '
      '    horas:=  int(TotalEquipamento/3600);'
      '    minutos := int((TotalEquipamento - (horas*3600))/60);'
      
        '    segundos := (TotalEquipamento- ( horas*3600)-(minutos*60)); ' +
        '   '
      
        '    TotalHorasEquipamento.Text :=  retornacomZeros(intToStr(hora' +
        's))+'#39':'#39'+'
      
        '                                 retornacomZeros(intToStr(minuto' +
        's))+'#39':'#39'+'
      
        '                                 retornacomZeros(intToStr(segund' +
        'os));      '
      '  // IntToStr(TotalEquipamento);'
      '  end;            '
      'end;'
      ''
      'procedure GrupoFooterDiaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   TotalDia:=0;          '
      'end;'
      ''
      
        'procedure GroupFooterEquipamentoOnAfterPrint(Sender: TfrxCompone' +
        'nt);'
      'begin'
      '  TotalEquipamento := 0;    '
      'end;'
      ''
      'procedure FooterRelatorioOnBeforePrint(Sender: TfrxComponent);'
      'var horas, minutos, segundos : integer;    '
      'begin       '
      '  if (totalSetor > 0) then'
      '  begin              '
      '    horas:=  int(totalSetor/3600);'
      '    minutos := int((totalSetor - (horas*3600))/60);'
      '    segundos := (totalSetor- ( horas*3600)-(minutos*60));    '
      
        '    TotalHorasSetor.Text :=   retornacomZeros(intToStr(horas))+'#39 +
        ':'#39'+'
      
        '                              retornacomZeros(intToStr(minutos))' +
        '+'#39':'#39'+'
      
        '                             retornacomZeros(intToStr(segundos))' +
        ';'
      '  end;                                       '
      'end;'
      ''
      'begin'
      '  TotalEquipamento := 0;'
      '  TotalDia:=0;'
      '  totalCarga := 0;'
      '  totalSetor := 0 ;                                         '
      'end.')
    OnGetValue = frxRelatorioApontGetValue
    Left = 884
    Top = 289
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 69.283417530000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 1.176470590000000000
          Top = 2.871615850000001000
          Width = 83.477028170000000000
          Height = 31.560951770000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Left = 0.465116280000000000
          Top = 2.105541980000002000
          Width = 717.574099410000000000
          Height = 0.072959420000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 320.000000000000000000
          Top = 3.427931399999999000
          Width = 86.116156970000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'EMBRATERM')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 287.441860470000000000
          Top = 23.427931390000000000
          Width = 154.488249990000000000
          Height = 14.711603490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Apontamentos')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 0.465116280000000000
          Top = 38.776768600000000000
          Width = 717.574099410000000000
          Height = 0.072959420000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Top = 52.730256979999990000
          Width = 717.574099410000000000
          Height = 0.072959420000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 0.477686990000000000
          Top = 38.701344340000000000
          Width = 716.989821330000000000
          Height = 14.246487210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FILTRO]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 16.216216220000000000
          Top = 54.075322970000000000
          Width = 38.272033790000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Carga')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = -0.540540540000000000
          Top = 69.210458110000000000
          Width = 719.736261570000000000
          Height = 0.072959420000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 78.378378370000000000
          Top = 53.534782430000010000
          Width = 53.390153790000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 142.567567570000000000
          Top = 53.534782430000010000
          Width = 57.169683790000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Peso')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 212.459459460000000000
          Top = 53.534782430000010000
          Width = 55.577838650000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data Inicio')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 354.135135140000000000
          Top = 53.534782430000010000
          Width = 55.577838650000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data Final')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 269.859608190000000000
          Top = 52.994241890000000000
          Width = 55.577838650000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora Inicio')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 495.513513510000000000
          Top = 54.075322970000000000
          Width = 54.492503790000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtd Horas')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 560.108108110000000000
          Top = 53.534782430000010000
          Width = 28.035793790000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'O.S.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 411.445193780000000000
          Top = 54.075322970000000000
          Width = 55.577838650000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora Final')
          ParentFont = False
        end
      end
      object FooterRelatorio: TfrxFooter
        FillType = ftBrush
        Height = 20.094788700000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'FooterRelatorioOnBeforePrint'
        object Line6: TfrxLineView
          Left = 0.540540540000000000
          Top = 0.817036490000020900
          Width = 718.378378380000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 1.290322580000000000
          Top = 2.331507419999980000
          Width = 66.101153230000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Setor')
          ParentFont = False
        end
        object TotalHorasSetor: TfrxMemoView
          Left = 483.779840000000000000
          Top = 2.331507419999980000
          Width = 87.816326670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[totalSetor]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 79.333333330000000000
          Top = 2.331507419999980000
          Width = 53.390153790000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_QUANTIDADE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 144.288806670000000000
          Top = 2.331507419999980000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_PESO">,MasterData1,1)]')
          ParentFont = False
        end
      end
      object GroupHeaderEquipamento: TfrxGroupHeader
        FillType = ftBrush
        Height = 49.540765860000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupHeaderEquipamentoOnAfterPrint'
        OnBeforePrint = 'GroupHeaderEquipamentoOnBeforePrint'
        Condition = 'frxDBDataset1."EQP_DESCRICAO"'
        KeepTogether = True
        StartNewPage = True
        object Memo12: TfrxMemoView
          Left = 4.860611080000000000
          Top = 8.872854059999995000
          Width = 33.947709460000000000
          Height = 11.874876760000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Setor:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 38.247998470000000000
          Top = 8.314295490000006000
          Width = 132.866628380000000000
          Height = 11.870622970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."SET_DESCRICAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 8.108108110000000000
          Top = 30.300773510000000000
          Width = 71.785547290000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Equipamento:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 80.000000000000000000
          Top = 30.300773510000000000
          Width = 321.260050000000000000
          Height = 14.573325680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."EQP_DESCRICAO"]')
          ParentFont = False
        end
      end
      object GroupHeaderDia: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.496706760000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeaderDiaOnBeforePrint'
        Condition = 'FormatDateTime('#39'dd/mm/yyyy'#39',<frxDBDataset1."PCP_DATAINI">)'
        object Carga: TfrxMemoView
          Left = 8.657156220000000000
          Top = 0.378586759999990300
          Width = 209.663432710000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd/mm/yyyy'#39',<frxDBDataset1."PCP_DATAINI">)]')
          ParentFont = False
        end
      end
      object GrupoFooterDia: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.760216030000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GrupoFooterDiaOnAfterPrint'
        OnBeforePrint = 'GrupoFooterDiaOnBeforePrint'
        object Line5: TfrxLineView
          Left = 0.779530000000000000
          Top = 0.285989459999996100
          Width = 717.837837840000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 17.995746220000000000
          Top = 3.529232700000023000
          Width = 50.163925680000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total dia')
          ParentFont = False
        end
        object TotalHorasDia: TfrxMemoView
          Left = 484.337085680000000000
          Top = 3.396103330000017000
          Width = 87.816326670000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'TotalHorasDiaOnBeforePrint'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[TotalDia]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 78.666666660000000000
          Top = 3.529232700000023000
          Width = 53.390153790000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_QUANTIDADE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.529232700000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_PESO">,MasterData1,1)]')
          ParentFont = False
        end
      end
      object GroupFooterEquipamento: TfrxGroupFooter
        FillType = ftBrush
        Height = 17.224205410000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupFooterEquipamentoOnAfterPrint'
        OnBeforePrint = 'GroupFooterEquipamentoOnBeforePrint'
        object Memo22: TfrxMemoView
          Left = 1.081081080000000000
          Top = 0.488717570000005700
          Width = 73.389150900000000000
          Height = 16.735487840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Equip.')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Width = 717.837837840000000000
          Color = clBlack
          Diagonal = True
        end
        object TotalHorasEquipamento: TfrxMemoView
          Left = 483.779840000000000000
          Width = 87.816326670000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'TotalHorasDiaOnBeforePrint'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[TotalEquipamento]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 79.333333330000000000
          Top = 0.395342700000014700
          Width = 53.390153790000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_QUANTIDADE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 144.288806670000000000
          Top = 0.395342700000014700
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_PESO">,MasterData1,1)]')
          ParentFont = False
        end
      end
      object GroupHeaderCarga: TfrxGroupHeader
        FillType = ftBrush
        Height = 10.000000000000000000
        Top = 219.212740000000000000
        Visible = False
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupHeaderCargaOnAfterPrint'
        OnBeforePrint = 'GroupHeaderCargaOnBeforePrint'
        Condition = 
          'IIF(<frxDBDataset1."CAR_CODIGO">=0,<frxDBDataset1."IOP_NORDEM">,' +
          'VarToStr(<frxDBDataset1."CAR_CODIGO">))'
        KeepTogether = True
      end
      object GrupoFooterCarga: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GrupoFooterCargaOnAfterPrint'
        OnBeforePrint = 'GrupoFooterCargaOnBeforePrint'
        Stretched = True
        object Memo36: TfrxMemoView
          Left = 211.792792790000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PCP_DATAINI"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 16.216216220000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo33OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CargaouOrdem]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 354.135135140000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PCP_DATAFIM"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 553.522021080000000000
          Width = 148.724490000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdemCarga]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 79.370130000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_QUANTIDADE">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 144.288806670000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."IOP_PESO">,MasterData1,1)]')
          ParentFont = False
        end
        object TotalHorasCarga: TfrxMemoView
          Left = 484.000310000000000000
          Top = 0.666666659999975800
          Width = 60.472480000000000000
          Height = 17.637806670000000000
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TotalCarga]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object PESOTOTAL: TfrxMemoView
          Left = 514.016080000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<frxDBDataset1."IOP_QUANTIDADE">*<frxDBDataset1."IOP_PESO">]')
          ParentFont = False
        end
        object frxDBDataset1IOP_QUANTIDADE1: TfrxMemoView
          Left = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object frxDBDataset1CAR_CODIGO: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CAR_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CAR_CODIGO"]')
        end
        object Memo16: TfrxMemoView
          Left = 166.299320000000000000
          Top = 1.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."IOP_PESO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IOP_CODIGO=IOP_CODIGO'
      'OPE_CODIGO=OPE_CODIGO'
      'OPE_NOME=OPE_NOME'
      'IOP_NORDEM=IOP_NORDEM'
      'OPR_EMISSAO=OPR_EMISSAO'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'SET_DESCRICAO=SET_DESCRICAO'
      'PCP_DATAINI=PCP_DATAINI'
      'PCP_DATAFIM=PCP_DATAFIM'
      'PCP_TEMPO_GASTO=PCP_TEMPO_GASTO'
      'PCP_STATUS=PCP_STATUS'
      'CAR_CODIGO=CAR_CODIGO'
      'DATA_CARGA=DATA_CARGA'
      'CAR_STATUS=CAR_STATUS'
      'PRD_REFER=PRD_REFER'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_DESCRI=PRD_DESCRI'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'PED_CODIGO=PED_CODIGO'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'IOP_PESO=IOP_PESO'
      'IOP_CUSTO=IOP_CUSTO'
      'IOP_PRECO=IOP_PRECO'
      'PCP_CODIGO=PCP_CODIGO'
      'CAR_TEMPOGASTO=CAR_TEMPOGASTO'
      'pcp_tempo_seg=pcp_tempo_seg'
      'OPE_DESCRICAO=OPE_DESCRICAO')
    DataSet = MtbRelUnido
    BCDToCurrency = False
    Left = 796
    Top = 281
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 216
    Top = 207
  end
  object cdsSetor: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM SETOR')
    Left = 168
    Top = 208
    object cdsSetorSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSetorSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsSetorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsBuscaGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 380
    Top = 385
  end
  object MtbRelUnido: TFDMemTable
    OnCalcFields = MtbRelUnidoCalcFields
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'EQP_DESCRICAO;SET_DESCRICAO;PCP_DATAINI;CAR_CODIGO;IOP_NORDEM'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 732
    Top = 281
    object MtbRelUnidoIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MtbRelUnidoOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
    end
    object MtbRelUnidoOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fase'
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      Size = 15
    end
    object MtbRelUnidoIOP_NORDEM: TStringField
      DisplayLabel = 'OS'
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object MtbRelUnidoOPR_EMISSAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
      ProviderFlags = []
    end
    object MtbRelUnidoEQP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object MtbRelUnidoSET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object MtbRelUnidoPCP_DATAINI: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAINI'
      Origin = 'PCP_DATAINI'
      ProviderFlags = []
    end
    object MtbRelUnidoPCP_DATAFIM: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_DATAFIM'
      Origin = 'PCP_DATAFIM'
      ProviderFlags = []
    end
    object MtbRelUnidoPCP_TEMPO_GASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_TEMPO_GASTO'
      Origin = 'PCP_TEMPO_GASTO'
      ProviderFlags = []
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object MtbRelUnidoCAR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = []
      OnGetText = cdsBuscaCAR_CODIGOGetText
    end
    object MtbRelUnidoDATA_CARGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
      ProviderFlags = []
    end
    object MtbRelUnidoPCP_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = []
      Size = 1
    end
    object MtbRelUnidoCAR_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_STATUS'
      Origin = 'CAR_STATUS'
      ProviderFlags = []
      OnGetText = cdsBuscaCAR_STATUSGetText
      Size = 1
    end
    object MtbRelUnidoPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object MtbRelUnidoPRD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object MtbRelUnidoPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object MtbRelUnidoCLI_CODIGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object MtbRelUnidoCLI_RAZAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 55
    end
    object MtbRelUnidoPED_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object MtbRelUnidoIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object MtbRelUnidoPCP_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = []
    end
    object MtbRelUnidoIOP_PESO: TFMTBCDField
      FieldName = 'IOP_PESO'
      Origin = 'IOP_PESO'
      Precision = 18
      Size = 5
    end
    object MtbRelUnidoIOP_CUSTO: TFMTBCDField
      FieldName = 'IOP_CUSTO'
      Origin = 'IOP_CUSTO'
      Precision = 18
      Size = 5
    end
    object MtbRelUnidoIOP_PRECO: TFMTBCDField
      FieldName = 'IOP_PRECO'
      Origin = 'IOP_PRECO'
      Precision = 18
      Size = 5
    end
    object MtbRelUnidoCAR_TEMPOGASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CAR_TEMPOGASTO'
      Origin = 'CAR_TEMPOGASTO'
      ProviderFlags = []
      OnGetText = cdsBuscaCAR_TEMPOGASTOGetText
      Precision = 18
    end
    object MtbRelUnidoOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object MtbRelUnidopcp_tempo_seg: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'pcp_tempo_seg'
      Calculated = True
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
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 676
    Top = 345
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 748
    Top = 337
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 820
    Top = 337
  end
end
