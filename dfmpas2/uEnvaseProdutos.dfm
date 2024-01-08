inherited frmEnvaseProdutos: TfrmEnvaseProdutos
  Caption = 'Envase de produtos'
  ClientHeight = 479
  ClientWidth = 1370
  ExplicitWidth = 1386
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1370
    Height = 402
    ExplicitWidth = 1370
    ExplicitHeight = 402
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1362
      ExplicitHeight = 374
      inherited pnlControle: TPanel
        Width = 1362
        ExplicitWidth = 1362
        inherited pnlFiltro: TPanel
          Width = 1362
          ExplicitWidth = 1362
          inherited pnlpn1: TPanel
            Width = 1362
            ExplicitWidth = 1362
            DesignSize = (
              1362
              79)
            inherited btnPesquisa: TSpeedButton
              Left = 1269
              ExplicitLeft = 1035
            end
            inherited btnLimpar: TSpeedButton
              Left = 1269
              ExplicitLeft = 1035
            end
            object chkConcluido: TCheckBox
              Left = 8
              Top = 48
              Width = 155
              Height = 17
              Caption = 'N'#227'o mostrar o concluido'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = chkConcluidoClick
            end
            object edBusca: TLabeledEdit
              Left = 5
              Top = 21
              Width = 300
              Height = 21
              EditLabel.Width = 14
              EditLabel.Height = 13
              EditLabel.Caption = 'OE'
              TabOrder = 1
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 1362
        Height = 171
        ExplicitWidth = 1362
        ExplicitHeight = 171
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsMateriaPrima
          DataController.DetailKeyFieldNames = 'IOP_CODIGO'
          DataController.KeyFieldNames = 'IOP_CODIGO'
          DataController.MasterKeyFieldNames = 'IOP_CODIGO'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'PRD_REFER'
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Insumo'
            DataBinding.FieldName = 'PRD_DESCRI'
            SortIndex = 0
            SortOrder = soAscending
            Width = 304
          end
          object cxgrd1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'MP_CONSUMOTOTAL'
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
          end
          object cxgrd1DBTableView1MP_UCONSUMO: TcxGridDBColumn
            Caption = 'Consumo unit.'
            DataBinding.FieldName = 'MP_UCONSUMO'
            Visible = False
          end
          object cxgrd1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn
            Caption = 'Controla Lote'
            DataBinding.FieldName = 'PRD_GERENCIA_LOTE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
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
            Width = 113
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
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [1]
          PopupMenu = pmEnvase
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = cxgrd1DBBandedTableView1FocusedRecordChanged
          DataController.DataSource = dsBusca
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanding = cxgrd1DBBandedTableView1DataControllerDetailExpanding
          OptionsView.BandHeaders = False
          Bands = <
            item
            end
            item
              Visible = False
            end>
          object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
            Options.Editing = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 220
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'IOP_QUANTIDADE'
            Options.Editing = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn
            Caption = 'UND'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_PESOKG: TcxGridDBBandedColumn
            Caption = 'Peso (Kg)'
            DataBinding.FieldName = 'PRD_PESOKG'
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_STATUS_ENVASE: TcxGridDBBandedColumn
            Caption = 'Envase'
            DataBinding.FieldName = 'IOP_STATUS_ENVASE'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1ORE_CODIGO: TcxGridDBBandedColumn
            Caption = 'OE'
            DataBinding.FieldName = 'ORE_CODIGO'
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1ORE_DATAENVASE: TcxGridDBBandedColumn
            Caption = 'Data envase'
            DataBinding.FieldName = 'ORE_DATAENVASE'
            Options.Editing = False
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn
            Caption = 'Inicio envase'
            DataBinding.FieldName = 'IOP_DATA_INICIO'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_RAZAO'
            Options.Editing = False
            Width = 281
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CLI_CODIGO'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1REP_NOME: TcxGridDBBandedColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'REP_NOME'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_CODIGO'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OPR_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OPR_CODIGO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRDL_LOTE: TcxGridDBBandedColumn
            Caption = 'Lote'
            DataBinding.FieldName = 'PRDL_LOTE'
            Options.Editing = False
            Width = 146
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBBandedTableView1
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView1
            OnGetGridView = cxgrd1Level1GetGridView
          end
        end
      end
      object Phistorico: TPanel
        Left = 0
        Top = 250
        Width = 1362
        Height = 124
        Align = alBottom
        TabOrder = 2
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1360
          Height = 122
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
            object cxGrid1DBTableView1HOP_DATAMVTO: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'HOP_DATAMVTO'
              Width = 91
            end
            object cxGrid1DBTableView1HOP_DESCRICAO: TcxGridDBColumn
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'HOP_DESCRICAO'
              Width = 516
            end
            object cxGrid1DBTableView1USU_NOME: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'USU_NOME'
            end
            object cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'USU_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'IOP_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1MP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'MP_CODIGO'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1HOP_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'HOP_CODIGO'
              Visible = False
              VisibleForCustomization = False
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
    Top = 443
    Width = 1370
    Visible = False
    ExplicitTop = 443
    ExplicitWidth = 1370
    DesignSize = (
      1370
      36)
    inherited btnSelect: TSpeedButton
      Left = 1226
      ExplicitLeft = 940
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1370
    ExplicitWidth = 1370
    DesignSize = (
      1370
      41)
    inherited btnExclui: TSpeedButton
      Left = 800
      Top = -4
      Visible = False
      ExplicitLeft = 800
      ExplicitTop = -4
    end
    inherited btnNovo: TSpeedButton
      Width = 126
      Hint = 'Incluir envase a partir de um pedido'
      Caption = 'Buscar Pedido'
      ExplicitWidth = 126
    end
    inherited btnConsulta: TSpeedButton
      Left = 752
      Top = 2
      ExplicitLeft = 752
      ExplicitTop = 2
    end
    inherited btnEdita: TSpeedButton
      Left = 832
      Top = -4
      Visible = False
      ExplicitLeft = 832
      ExplicitTop = -4
    end
    inherited btnFechar: TSpeedButton
      Left = 1319
      ExplicitLeft = 1033
    end
    inherited btnExtra: TSpeedButton
      Left = 859
      Top = 2
      ExplicitLeft = 859
      ExplicitTop = 2
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1218
      Visible = False
      ExplicitLeft = 932
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 1117
      DropDown = pmListar
      ExplicitLeft = 831
    end
    object btnProduto: TSpeedButton
      Tag = 1
      Left = 131
      Top = 0
      Width = 126
      Height = 39
      Hint = 'Incluir envase a partir de um produto'
      Caption = 'Buscar Produto'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btnProdutoClick
    end
    object btnIniciar: TSpeedButton
      Tag = 1
      Left = 257
      Top = 0
      Width = 101
      Height = 39
      Hint = 'Iniciar o envase e baixar do estoque'
      Caption = 'Iniciar envase'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btnIniciarClick
    end
    object SpeedButton1: TSpeedButton
      Tag = 1
      Left = 358
      Top = 0
      Width = 101
      Height = 39
      Hint = 'Iniciar o envase e baixar do estoque'
      Caption = 'Executar envase'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object btnConcluirEnvase: TSpeedButton
      Tag = 1
      Left = 981
      Top = -4
      Width = 101
      Height = 39
      Hint = 'Concluir envase e dar entrada no estoque'
      Caption = 'Concluir envase'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnConcluirEnvaseClick
    end
    object btnPrevisao: TButton
      Left = 460
      Top = 1
      Width = 149
      Height = 38
      Caption = 'Previs'#227'o de faltas'
      TabOrder = 0
      OnClick = btnPrevisaoClick
    end
    object btnEstornar: TButton
      Left = 609
      Top = 1
      Width = 88
      Height = 38
      Caption = 'Estornar'
      TabOrder = 1
      OnClick = btnEstornarClick
    end
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 144
    Top = 64
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  inherited cdsBusca: TFDQuery
    AfterScroll = cdsBuscaAfterScroll
    AfterRefresh = cdsBuscaAfterRefresh
    SQL.Strings = (
      
        'SELECT PE.PED_CODIGO, IOP.PRD_CODIGO, PR.PRD_REFER , COALESCE( P' +
        'IT.PRF_PRDDESCRI,PR.PRD_DESCRI) PRD_DESCRI  ,'
      
        'IOP.IOP_QUANTIDADE, COALESCE(PIT.PRD_UND, PR.PRD_UND) PRD_UND, C' +
        'OALESCE( PIT.PRF_PESOKG, PR.PRD_PESOKG) PRD_PESOKG,'
      
        'IOP_STATUS_ENVASE, ORE_CODIGO, ORE_DATAENVASE, CL.CLI_RAZAO, CL.' +
        'CLI_CODIGO, VE.REP_NOME, iop_codigo, opr.OPR_CODIGO, IOP_DATA_IN' +
        'ICIO'
      'FROM ITEM_ORDEMPRODUCAO IOP'
      'JOIN PRD0000 PR ON PR.PRD_CODIGO = IOP.PRD_CODIGO'
      'JOIN ORDEMPRODUCAO OPR  ON OPR.OPR_CODIGO = IOP.OPR_CODIGO'
      
        'LEFT JOIN PED0000 PE ON PE.PED_CODIGO = OPR.PED_CODIGO AND PE.EM' +
        'P_CODIGO = OPR.EMP_CODIGO'
      
        'LEFT JOIN PED_IT01 PIT ON PE.PED_CODIGO = PIT.PED_CODIGO AND PE.' +
        'EMP_CODIGO = PIT.EMP_CODIGO AND IOP.PRD_CODIGO = PIT.PRD_CODIGO'
      'JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO )'
      'JOIN REP0000 ve ON (ve.REP_CODIGO = pe.REP_CODIGO) ')
    Left = 1139
    Top = 144
    object cdsBuscaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object cdsBuscaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
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
    object cdsBuscaIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsBuscaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsBuscaPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Origin = 'PRD_PESOKG'
      Precision = 18
      Size = 5
    end
    object cdsBuscaIOP_STATUS_ENVASE: TStringField
      FieldName = 'IOP_STATUS_ENVASE'
      Origin = 'IOP_STATUS_ENVASE'
      OnGetText = cdsBuscaIOP_STATUS_ENVASEGetText
      Size = 1
    end
    object cdsBuscaORE_CODIGO: TIntegerField
      FieldName = 'ORE_CODIGO'
      Origin = 'ORE_CODIGO'
    end
    object cdsBuscaORE_DATAENVASE: TSQLTimeStampField
      FieldName = 'ORE_DATAENVASE'
      Origin = 'ORE_DATAENVASE'
      DisplayFormat = 'dd/mm/yyyy HH:nn'
    end
    object cdsBuscaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      Size = 70
    end
    object cdsBuscaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscaREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Origin = 'REP_NOME'
      Size = 35
    end
    object cdsBuscaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaOPR_CODIGO: TIntegerField
      FieldName = 'OPR_CODIGO'
      Origin = 'OPR_CODIGO'
      Required = True
    end
    object cdsBuscaIOP_DATA_INICIO: TSQLTimeStampField
      FieldName = 'IOP_DATA_INICIO'
      Origin = 'IOP_DATA_INICIO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscaPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object cdsBuscaPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
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
        'ueDisponivel, MP_CUSTO                                 '
      
        ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                             ' +
        '   '
      
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)             ' +
        '   '
      ' where iop_codigo = 375')
    Left = 923
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
      Required = True
    end
    object cdsMateriaPrimaMP_UCONSUMO: TFMTBCDField
      FieldName = 'MP_UCONSUMO'
      Origin = 'MP_UCONSUMO'
      Required = True
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_SITUACAO: TStringField
      FieldName = 'MP_SITUACAO'
      Origin = 'MP_SITUACAO'
      Size = 1
    end
    object cdsMateriaPrimaPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsMateriaPrimaPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsMateriaPrimaMP_EMPENHADO: TFMTBCDField
      FieldName = 'MP_EMPENHADO'
      Origin = 'MP_EMPENHADO'
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_CONSUMOTOTAL: TFloatField
      FieldName = 'MP_CONSUMOTOTAL'
      Origin = 'MP_CONSUMOTOTAL'
    end
    object cdsMateriaPrimaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsMateriaPrimaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsMateriaPrimaMP_CODIGO_SUBST: TIntegerField
      FieldName = 'MP_CODIGO_SUBST'
      Origin = 'MP_CODIGO_SUBST'
    end
    object cdsMateriaPrimaSUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBST'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsMateriaPrimaPercConsumido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PercConsumido'
      Calculated = True
    end
    object cdsMateriaPrimaPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsMateriaPrimaPRD_GERENCIA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_GERENCIA_LOTE'
      Origin = 'PRD_GERENCIA_LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object cdsMateriaPrimaESTOQUEDISPONIVEL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaMP_CUSTO: TFMTBCDField
      FieldName = 'MP_CUSTO'
      Origin = 'MP_CUSTO'
      Precision = 18
      Size = 5
    end
  end
  object dsMateriaPrima: TDataSource
    DataSet = cdsMateriaPrima
    Left = 1004
    Top = 265
  end
  object pmEnvase: TPopupMenu
    Left = 716
    Top = 265
    object Iniciarenvase1: TMenuItem
      Caption = 'Iniciar envase'
      OnClick = Iniciarenvase1Click
    end
    object AnexarpedidoOE1: TMenuItem
      Caption = 'Anexar pedido '#224' OE'
      OnClick = AnexarpedidoOE1Click
    end
    object Adicionaritem1: TMenuItem
      Caption = 'Adicionar item'
      OnClick = Adicionaritem1Click
    end
    object miExcluiritem: TMenuItem
      Caption = 'Excluir item'
      OnClick = miExcluiritemClick
    end
  end
  object cdsHistorico: TFDQuery
    AfterOpen = cdsBuscaAfterOpen
    IndexesActive = False
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      ' SELECT dh.hop_codigo, dh.hop_datamvto, hop_descricao ,       '
      ' dh.USU_CODIGO, dh.IOP_CODIGO, dh.MP_CODIGO,                '
      ' u.USU_NOME , PR.PRD_REFER                             '
      ' FROM HISTORICO_ORDEMPRODUCAO  dh                            '
      ' JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)   '
      
        ' LEFT JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = dh.M' +
        'P_CODIGO) '
      ' LEFT JOIN PRD0000 PR ON (PR.PRD_CODIGO = MP.PRD_CODIGO) '
      ' WHERE dh.IOP_CODIGO = 452 '
      'order by dh.hop_datamvto desc ')
    Left = 27
    Top = 344
    object cdsHistoricoHOP_CODIGO: TIntegerField
      FieldName = 'HOP_CODIGO'
      Origin = 'HOP_CODIGO'
      Required = True
    end
    object cdsHistoricoHOP_DATAMVTO: TSQLTimeStampField
      FieldName = 'HOP_DATAMVTO'
      Origin = 'HOP_DATAMVTO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsHistoricoHOP_DESCRICAO: TStringField
      FieldName = 'HOP_DESCRICAO'
      Origin = 'HOP_DESCRICAO'
      Required = True
      OnGetText = cdsHistoricoHOP_DESCRICAOGetText
      Size = 150
    end
    object cdsHistoricoUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      Required = True
    end
    object cdsHistoricoIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      Required = True
    end
    object cdsHistoricoMP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
      Origin = 'MP_CODIGO'
    end
    object cdsHistoricoUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsHistoricoPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 44
    Top = 385
  end
  object frxRelOSP10: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43990.467595023100000000
    ReportOptions.LastChange = 43998.474293240700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRelOSP10GetValue
    Left = 1204
    Top = 41
    Datasets = <
      item
        DataSet = frxDBBusca
        DataSetName = 'frxDBBusca'
      end
      item
        DataSet = frxDBMateriaPrima
        DataSetName = 'frxDBMateriaPrima'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.740260000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 19.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 20.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ORDEM DE ENVASE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 20.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176'.: [frxDBBusca."ORE_CODIGO"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Top = 39.795300000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 62.472480000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUZIR:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 62.472480000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBusca."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 62.472480000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_UND"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 62.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENTREGA:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 62.472480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 41.795300000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_REFER"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 41.795300000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_DESCRI"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = -0.236240000000000000
          Top = 60.692950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 82.590599999999990000
          Width = 517.795610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 82.590599999999990000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LOTE N'#176': [frxDBBusca."PRDL_LOTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 117.385900000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Essencia(s)=>')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 132.504020000000000000
          Width = 306.141930000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'MAT'#201'RIA-PRIMA')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 305.464750000000000000
          Top = 117.385900000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 305.464750000000000000
          Top = 132.504020000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 573.488560000000000000
          Top = 117.385900000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 645.299630000000000000
          Top = 117.385900000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 573.488560000000000000
          Top = 132.504020000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ADI'#199#195'O DE MAT. PRIMA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 573.488560000000000000
          Top = 147.622140000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INICIAL')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 645.299630000000000000
          Top = 147.622140000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FINAL')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 419.173470000000000000
          Top = 117.385900000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 419.173470000000000000
          Top = 132.504020000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'LOTE')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000001000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 384.275820000000000000
          Top = 132.504020000000000000
          Width = 34.015770000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' UND')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 384.275820000000000000
          Top = 117.385900000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMateriaPrima
        DataSetName = 'frxDBMateriaPrima'
        RowCount = 0
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBMateriaPrima."PRD_REFER"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBMateriaPrima."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 305.464750000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBMateriaPrima."MP_CONSUMOTOTAL"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 419.173470000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 573.488560000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 645.299630000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 384.275820000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' [frxDBMateriaPrima."PRD_UND"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 570.929500000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 0.779530000000022500
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 75.913420000000000000
          Top = 0.779530000000022500
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBMateriaPrima."MP_CONSUMOTOTAL">)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 0.779530000000022500
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 15.897650000000000000
          Width = 718.110700000000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'PROCESSO DA FABRICA'#199#195'O')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 151.960730000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 170.858380000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 185.976500000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 201.315090000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 215.433210000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 230.551330000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Top = 245.669450000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CONTROLE DE QUALIDADE')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Top = 268.346629999999900000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'AN'#193'LISE')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 257.228510000000000000
          Top = 268.346629999999900000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ESPECIFICA'#199#195'O')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 268.346629999999900000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESULTADO 1')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 268.346629999999900000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RESULTADO 2')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Top = 283.464750000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- ASPECTO:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 257.228510000000000000
          Top = 283.464750000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 381.512060000000000000
          Top = 283.464750000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 536.472790000000000000
          Top = 283.464750000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Top = 298.803340000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- COR:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 298.803340000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 298.803340000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 298.803340000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Top = 312.921460000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- ODOR:')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 312.921460000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 312.921460000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 312.921460000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Top = 328.039579999999900000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- DENSIDADE:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 328.039579999999900000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 328.039579999999900000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 328.039579999999900000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 343.937230000000100000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- VISCOSIDADE:')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 343.937230000000100000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 343.937230000000100000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 343.937230000000100000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Top = 358.055350000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- PH:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 358.055350000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 358.055350000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 358.055350000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Top = 373.173470000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- REFRA'#199#195'O:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 373.173470000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 373.173470000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 373.173470000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Top = 449.984540000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Provid'#234'ncias:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Top = 472.661720000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '     Aprovado')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 472.661720000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '    Reprovado')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 472.661720000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'VISTO T'#201'CNICO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 475.661720000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 113.267780000000000000
          Top = 475.661720000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 389.291590000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- PENETRA'#199#195'O N'#195'O TRABALHADA:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 389.291590000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 389.291590000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 389.291590000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Top = 405.189240000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- PENETRA'#199#195'O TRABALHADA:')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 405.189240000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 405.189240000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 405.189240000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Top = 419.307360000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- PONTO DE GOTA:')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 419.307360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 419.307360000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 419.307360000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Top = 434.425480000000100000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '- PONTO DE FULGOR:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 257.448980000000000000
          Top = 434.425480000000100000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 434.425480000000100000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 434.425480000000100000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Top = 529.354669999999900000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 529.354669999999900000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Top = 506.677490000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 506.677490000000000000
          Width = 642.520100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Top = 491.559370000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'EXPEDI'#199#195'O')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBusca: TfrxDBDataset
    UserName = 'frxDBBusca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_CODIGO=PED_CODIGO'
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'PRD_UND=PRD_UND'
      'PRD_PESOKG=PRD_PESOKG'
      'IOP_STATUS_ENVASE=IOP_STATUS_ENVASE'
      'ORE_CODIGO=ORE_CODIGO'
      'ORE_DATAENVASE=ORE_DATAENVASE'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_CODIGO=CLI_CODIGO'
      'REP_NOME=REP_NOME'
      'IOP_CODIGO=IOP_CODIGO'
      'OPR_CODIGO=OPR_CODIGO'
      'IOP_DATA_INICIO=IOP_DATA_INICIO'
      'PRDL_LOTE=PRDL_LOTE'
      'PRDL_REGISTRO=PRDL_REGISTRO')
    DataSet = cdsBusca
    BCDToCurrency = False
    Left = 1140
    Top = 89
  end
  object frxDBMateriaPrima: TfrxDBDataset
    UserName = 'frxDBMateriaPrima'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MP_CODIGO=MP_CODIGO'
      'IOP_CODIGO=IOP_CODIGO'
      'MP_UCONSUMO=MP_UCONSUMO'
      'MP_SITUACAO=MP_SITUACAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'MP_EMPENHADO=MP_EMPENHADO'
      'MP_CONSUMOTOTAL=MP_CONSUMOTOTAL'
      'PED_CODIGO=PED_CODIGO'
      'PRD_CODIGO=PRD_CODIGO'
      'MP_CODIGO_SUBST=MP_CODIGO_SUBST'
      'SUBST=SUBST'
      'PercConsumido=PercConsumido'
      'PRD_UND=PRD_UND'
      'PRD_GERENCIA_LOTE=PRD_GERENCIA_LOTE'
      'ESTOQUEDISPONIVEL=ESTOQUEDISPONIVEL'
      'MP_CUSTO=MP_CUSTO')
    DataSet = cdsMateriaPrima
    BCDToCurrency = False
    Left = 1228
    Top = 91
  end
  object frxOE2: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44301.473713472200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOE2BeginDoc
    OnGetValue = frxOE2GetValue
    OnNewGetValue = frxOE2NewGetValue
    Left = 1164
    Top = 43
    Datasets = <
      item
        DataSet = frxDBBusca
        DataSetName = 'frxDBBusca'
      end
      item
        DataSet = frxDBMateriaPrima
        DataSetName = 'frxDBMateriaPrima'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.504020000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 17.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 18.897650000000000000
          Width = 211.653680000000000000
          Height = 21.165356770000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ordem de envase N'#186' [frxDBBusca."OPR_CODIGO"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 40.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 41.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_REFER"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 41.795300000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 478.220780000000000000
          Top = 41.795300000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produzir:[frxDBBusca."IOP_QUANTIDADE"] [frxDBBusca."PRD_UND"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 21.165356770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 59.692950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 60.692950000000000000
          Width = 370.393940000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PEDIDO: [frxDBBusca."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 75.811070000000000000
          Width = 540.472790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE: [frxDBBusca."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 60.692950000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 98.488250000000000000
          Width = 377.953000000001000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Essencia(s)=>')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 113.606370000000000000
          Width = 377.953000000001000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'MAT. PRIMA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 113.606370000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PESO KG')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 113.606370000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'LOTE FABRICA'#199#195'O')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000001000000
          Top = 113.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VISTO')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 98.488250000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'x')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 98.488250000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000001000000
          Top = 98.488250000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LOTE: [frxDBBusca."PRDL_LOTE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBMateriaPrima
        DataSetName = 'frxDBMateriaPrima'
        RowCount = 0
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          DataSet = frxDBMateriaPrima
          DataSetName = 'frxDBMateriaPrima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBMateriaPrima."PRD_REFER"] [frxDBMateriaPrima."PRD_DESCRI"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBMateriaPrima."MP_CONSUMOTOTAL"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 755.906000000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBMateriaPrima."MP_CONSUMOTOTAL">)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Observa'#231#245'es da Ordem de Produ'#231#227'o')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 249.448980000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Processo de Envase:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rotulagem:_____________________')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 34.015770000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Carimbo:_______________________')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 362.834880000000000000
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5. Volume Final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 362.834880000000000000
          Width = 139.842610000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Embal.:'
            'Peso bruto:'
            'Peso l'#237'quido:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 423.307360000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Peso l'#237'quido(g)')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 423.307360000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Vol. calculado')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 423.307360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Vol. M'#233'dio')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 423.307360000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Especifica'#231#245'es')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 423.307360000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Resultado')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 442.205010000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '1-')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 442.205010000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '2-')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 480.000310000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '3-')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 480.000310000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Top = 498.897960000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '4-')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 498.897960000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 517.795610000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '5-')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 517.795610000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 536.693260000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '6-')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 536.693260000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Top = 555.590910000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '7-')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 555.590910000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 574.488560000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '8-')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 574.488560000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 593.386210000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '9-')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 593.386210000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 612.283860000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '10-')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 140.504020000000000000
          Top = 612.283860000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 442.205010000000000000
          Width = 143.622140000000000000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 188.976500000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Volume m'#233'dio n'#227'o deve ser inferior         ao volume declarado'
            ''
            
              'Volume individual calculado n'#227'o deve                 ser inferio' +
              'r a 95% ou superior a 110%            do volume declarado')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 442.205010000000000000
          Width = 147.401670000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 536.693260000000000000
          Width = 143.622140000000000000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 502.677490000000000000
          Width = 147.401670000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 563.149970000000000000
          Width = 147.401670000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 70.590600000000000000
          Top = 687.653990000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Inicial:___/___/___')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 687.653990000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Visto:_______________')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 634.961040000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Volume: Calculado pelo setor de envase.')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 717.110700000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Final:___/___/___')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 114.385900000000000000
          Width = 710.551640000000000000
          Height = 230.551330000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FTC_ETAPAS]')
          ParentFont = False
        end
      end
    end
  end
  object pmListar: TPopupMenu
    Left = 1116
    Top = 41
    object OrdemdeenvaseModelo11: TMenuItem
      Caption = 'Ordem de envase Modelo 1'
      OnClick = OrdemdeenvaseModelo11Click
    end
    object OrdemdeenvaseModelo21: TMenuItem
      Caption = 'Ordem de envase Modelo 2'
      OnClick = OrdemdeenvaseModelo21Click
    end
  end
end
