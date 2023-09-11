inherited frmPCP: TfrmPCP
  Caption = 'Planejamento Controle Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnlControle: TPanel
        inherited pnlFiltro: TPanel
          inherited pnlpn1: TPanel
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
            object Label2: TLabel
              Left = 344
              Top = 13
              Width = 45
              Height = 13
              Caption = 'Situa'#231#227'o:'
            end
            object PesqCliente: TSgDbSearchCombo
              Left = 50
              Top = 10
              Width = 255
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
              LookupSource = qCli
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
            object NumOS: TLabeledEdit
              Left = 9
              Top = 50
              Width = 104
              Height = 21
              EditLabel.Width = 54
              EditLabel.Height = 13
              EditLabel.Caption = 'N'#250'mero OS'
              TabOrder = 1
              OnExit = NumOSExit
            end
            object numPedido: TLabeledEdit
              Left = 119
              Top = 50
              Width = 104
              Height = 21
              EditLabel.Width = 32
              EditLabel.Height = 13
              EditLabel.Caption = 'Pedido'
              TabOrder = 2
              OnExit = numPedidoExit
            end
            object numCarga: TLabeledEdit
              Left = 229
              Top = 50
              Width = 104
              Height = 21
              EditLabel.Width = 69
              EditLabel.Height = 13
              EditLabel.Caption = 'N'#250'mero Carga'
              TabOrder = 3
              OnExit = numCargaExit
            end
            object cbSituacaoPCP: TComboBox
              Left = 395
              Top = 10
              Width = 145
              Height = 21
              TabOrder = 4
              Text = 'Aguardando carga'
              OnChange = cbSituacaoPCPChange
              Items.Strings = (
                'Todas situa'#231#245'es'
                'Aguardando carga'
                'Carga confirmada'
                'Carga em andamento'
                'Carga conclu'#237'da')
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        PopupMenu = pmGerarCarga
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          object cxgrd1DBTableView1Column1: TcxGridDBColumn
            Caption = '*'
            DataBinding.FieldName = 'MARCADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
          end
          object cxgrd1DBTableView1OPE_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'OPE_NOME'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn
            Caption = 'N OS'
            DataBinding.FieldName = 'IOP_NORDEM'
          end
          object cxgrd1DBTableView1CAR_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CAR_CODIGO'
          end
          object cxgrd1DBTableView1DATA_CARGA: TcxGridDBColumn
            Caption = 'Data carga'
            DataBinding.FieldName = 'DATA_CARGA'
          end
          object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Width = 75
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'PRD_DESCRI'
          end
          object cxgrd1DBTableView1PRO_DESCRICAO: TcxGridDBColumn
            Caption = 'PROCESSO'
            DataBinding.FieldName = 'PRO_DESCRICAO'
          end
          object cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CLI_CODIGO'
          end
          object cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn
            DataBinding.FieldName = 'CLI_RAZAO'
          end
          object cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PED_CODIGO'
          end
          object cxgrd1DBTableView1IOP_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_QUANTIDADE'
          end
          object cxgrd1DBTableView1IOP_PESO: TcxGridDBColumn
            Caption = 'Peso unit'#225'rio'
            DataBinding.FieldName = 'IOP_PESO'
          end
          object cxgrd1DBTableView1IOP_CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_CUSTO'
          end
          object cxgrd1DBTableView1IOP_PRECO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_PRECO'
          end
          object cxgrd1DBTableView1PESO_TOTAL: TcxGridDBColumn
            Caption = 'Peso tOTAL'
            DataBinding.FieldName = 'PESO_TOTAL'
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [1]
          Navigator.Buttons.CustomButtons = <>
          OnEditing = cxgrd1DBBandedTableView1Editing
          DataController.DataSource = dsBusca
          DataController.Options = [dcoAssignGroupingValues, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          Bands = <
            item
              Width = 106
            end
            item
              Caption = 'Carga'
              Width = 337
            end
            item
              Caption = 'Produto'
              Width = 407
            end
            item
            end
            item
              Caption = 'Cliente'
              Width = 235
            end
            item
              Caption = 'Valores'
            end>
          object cxgrd1DBBandedTableView1selecionado: TcxGridDBBandedColumn
            Caption = '*'
            DataBinding.FieldName = 'MARCADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_CODIGO'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1OPE_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OPE_NOME'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_NORDEM'
            Options.Editing = False
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CAR_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CAR_CODIGO'
            Options.Editing = False
            Width = 74
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1DATA_CARGA: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA_CARGA'
            Options.Editing = False
            Width = 101
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1Situacao: TcxGridDBBandedColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'CAR_STATUS'
            Options.Editing = False
            Width = 161
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
            Width = 108
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 298
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRO_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRO_DESCRICAO'
            Options.Editing = False
            Width = 278
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_CODIGO'
            Options.Editing = False
            Width = 53
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_RAZAO'
            Options.Editing = False
            Width = 181
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PED_CODIGO'
            Options.Editing = False
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_CUSTO: TcxGridDBBandedColumn
            Caption = 'Custo'
            DataBinding.FieldName = 'IOP_CUSTO'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_PRECO: TcxGridDBBandedColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'IOP_PRECO'
            Options.Editing = False
            Width = 82
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PESO_TOTAL: TcxGridDBBandedColumn
            Caption = 'Peso'
            DataBinding.FieldName = 'PESO_TOTAL'
            Options.Editing = False
            Width = 67
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBBandedTableView1
        end
      end
    end
  end
  inherited pnlUtilTop: TPanel
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Top = 1
      Visible = False
      ExplicitTop = 1
    end
    inherited btnrelatorios: TJvArrowButton
      Visible = False
    end
  end
  inherited FDTransac: TFDTransaction
    Left = 584
    Top = 104
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 488
    Top = 120
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 99
    Top = 128
  end
  inherited FDStoredProc1: TFDStoredProc
    Top = 120
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      
        'SELECT 0 marcado, iop.iop_codigo,ope.ope_codigo, ope.ope_nome, I' +
        'OP_NORDEM, ca.car_codigo, ca.DATA_CARGA, coalesce(PCP_STATUS,'#39'G'#39 +
        ') PCP_STATUS, coalesce(car_status,'#39'P'#39') car_status , IOP_PESO* IO' +
        'P_QUANTIDADE  peso_total, pr.prd_refer, pr.prd_codigo, pr.prd_de' +
        'scri, pro.pro_descricao,'
      
        ' cl.cli_codigo, cl.cli_razao, OP.ped_codigo, IOP_QUANTIDADE, IOP' +
        '_PESO, IOP_CUSTO, IOP_PRECO, ope.ope_descricao'
      ' from item_ordemproducao iop'
      ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo)'
      ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo)'
      ' join cli0000 cl on (cl.cli_codigo = op.cli_codigo)'
      ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)'
      ' join processos pro on (pro.pro_codigo = pr.pro_codigo)'
      ' join PROCESSOS_OPERACOES po on (po.pro_codigo = pro.pro_codigo)'
      ' join operacoes ope on (ope.ope_codigo = po.ope_codigo)'
      
        ' left join PROCESSOS_PRODUCAO pp on (pp.ope_codigo = ope.ope_cod' +
        'igo)'
      ' left join carga ca on (ca.car_codigo = pp.car_codigo)')
    object cdsBuscaMARCADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MARCADO'
      Origin = 'MARCADO'
      ProviderFlags = []
    end
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
      DisplayLabel = 'Fase'
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      Size = 15
    end
    object cdsBuscaPCP_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsBuscaPCP_STATUSGetText
      Size = 1
    end
    object cdsBuscaIOP_NORDEM: TStringField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsBuscaCAR_CODIGO: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      OnGetText = cdsBuscaCAR_CODIGOGetText
    end
    object cdsBuscaDATA_CARGA: TSQLTimeStampField
      DisplayLabel = 'Data Caraga'
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
      DisplayFormat = 'DD/MM/YYYY hh:nn'
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
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaPRD_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscaPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscaPRO_DESCRICAO: TStringField
      DisplayLabel = 'Processo'
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      Size = 100
    end
    object cdsBuscaCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscaCLI_RAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      Size = 55
    end
    object cdsBuscaPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object cdsBuscaIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsBuscaPESO_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_TOTAL'
      Origin = 'PESO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 10
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
    object cdsBuscaOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaPRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Origin = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 18
      Size = 5
    end
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
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
    Left = 207
    Top = 228
  end
  object pmGerarCarga: TPopupMenu
    Left = 76
    Top = 289
    object Incluirnovacarga1: TMenuItem
      Caption = 'Incluir nova carga'
      OnClick = Incluirnovacarga1Click
    end
    object Incluirnacarga1: TMenuItem
      Caption = 'Incluir na carga...'
      OnClick = Incluirnacarga1Click
    end
    object EditarCarga1: TMenuItem
      Caption = 'Editar Carga'
      OnClick = EditarCarga1Click
    end
  end
end
