inherited frmGerarCarga: TfrmGerarCarga
  BorderIcons = []
  Caption = 'Gerar Carga de industrializa'#231#227'o'
  ClientHeight = 534
  ClientWidth = 877
  OnResize = FormResize
  ExplicitWidth = 893
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 502
    Width = 877
    ExplicitTop = 502
    ExplicitWidth = 877
    inherited btnOk: TSpeedButton
      Left = 629
      ExplicitLeft = 706
    end
    inherited btnCancelar: TSpeedButton
      Left = 754
      ExplicitLeft = 831
    end
  end
  object TPanel [1]
    Left = 0
    Top = 0
    Width = 877
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 121
      Top = 11
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object DBText1: TDBText
      Left = 159
      Top = 11
      Width = 123
      Height = 17
      DataField = 'DATA_CARGA'
      DataSource = dsEdits
    end
    object DBText2: TDBText
      Left = 460
      Top = 11
      Width = 400
      Height = 17
      DataField = 'OPE_DESCRICAO'
      DataSource = dsEdits
    end
    object Label3: TLabel
      Left = 323
      Top = 11
      Width = 51
      Height = 13
      Caption = 'Opera'#231#227'o:'
    end
    object DBText3: TDBText
      Left = 379
      Top = 11
      Width = 75
      Height = 17
      DataField = 'OPE_NOME'
      DataSource = dsEdits
    end
    object Label6: TLabel
      Left = 6
      Top = 11
      Width = 36
      Height = 13
      Caption = 'Carga :'
    end
    object DBText4: TDBText
      Left = 48
      Top = 11
      Width = 65
      Height = 17
      DataField = 'CAR_CODIGO'
      DataSource = dsEdits
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 41
    Width = 877
    Height = 359
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 875
      Height = 316
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEditDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.000'
            Kind = skSum
            FieldName = 'IOP_PESO'
            Column = cxGrid1DBTableView1IOP_PESO
            DisplayText = 'Peso'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1IOP_NORDEM: TcxGridDBColumn
          Caption = 'N'#250'mero OS'
          DataBinding.FieldName = 'IOP_NORDEM'
        end
        object cxGrid1DBTableView1IOP_PESO: TcxGridDBColumn
          Caption = 'Peso'
          DataBinding.FieldName = 'IOP_PESO'
        end
        object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'PRD_REFER'
        end
        object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRD_DESCRI'
          Width = 276
        end
        object cxGrid1DBTableView1CLI_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo Cliente'
          DataBinding.FieldName = 'CLI_CODIGO'
          Width = 43
        end
        object cxGrid1DBTableView1CLI_RAZAO: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLI_RAZAO'
          Width = 184
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 317
      Width = 875
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNovo: TSpeedButton
        Tag = 1
        Left = 689
        Top = 1
        Width = 88
        Height = 39
        Hint = 'Inserir Novo'
        Caption = 'Incluir (Ctrl+N)'
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
        OnClick = btnNovoClick
      end
      object btnExclui: TSpeedButton
        Tag = 4
        Left = 783
        Top = 1
        Width = 89
        Height = 39
        Hint = 'Excluir'
        Caption = 'Exclui(Ctrl+Del)'
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333333333333300333333333333
          3300333333333333330033000000000033003300000000003300330000000000
          3300333333333333330033333333333333003333333333333300333333333333
          33003333333333333300}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = btnExcluiClick
      end
    end
  end
  object panel4: TPanel [3]
    Left = 0
    Top = 400
    Width = 877
    Height = 102
    Align = alBottom
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 11
      Width = 66
      Height = 13
      Caption = 'Equipamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edPesquisaEquipamento: TSgDbSearchCombo
      Left = 88
      Top = 8
      Width = 300
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'eqp_codigo, eqp_descricao'
      LookupOrderBy = 'EQP_descricao'
      LookupTable = 'EQUIPAMENTO'
      LookupDispl = 'EQP_DESCRICAO'
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
    object grpPrevisao: TGroupBox
      Left = 8
      Top = 33
      Width = 865
      Height = 63
      Caption = 'Previs'#227'o'
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 32
        Width = 25
        Height = 13
        Caption = 'In'#237'cio'
      end
      object Término: TLabel
        Left = 482
        Top = 33
        Width = 38
        Height = 13
        Caption = 'T'#233'rmino'
      end
      object Label5: TLabel
        Left = 280
        Top = 33
        Width = 85
        Height = 13
        Caption = 'Tempo execu'#231#227'o:'
      end
      object DataIni: TcxDateEdit
        Left = 40
        Top = 30
        TabOrder = 0
        Width = 121
      end
      object HoraIni: TcxTimeEdit
        Left = 168
        Top = 30
        TabOrder = 1
        Width = 90
      end
      object DataFim: TcxDateEdit
        Left = 532
        Top = 30
        TabOrder = 3
        Width = 121
      end
      object HoraFim: TcxTimeEdit
        Left = 660
        Top = 30
        TabOrder = 4
        OnExit = HoraFimExit
        Width = 90
      end
      object tempoExecucao: TcxTimeEdit
        Left = 373
        Top = 30
        TabOrder = 2
        OnExit = tempoExecucaoExit
        Width = 90
      end
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 400
    Top = 96
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 176
    Top = 96
  end
  inherited dsEdits: TDataSource
    Left = 597
    Top = 7
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      ' SELECT c.*, ope.OPE_DESCRICAO, OPE.OPE_NOME FROM CARGA c'
      ' LEFT JOIN OPERACOES ope ON (ope.OPE_CODIGO = c.ope_codigo)'
      'where car_codigo = :id')
    Left = 507
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditDATA_CARGA: TSQLTimeStampField
      FieldName = 'DATA_CARGA'
      Origin = 'DATA_CARGA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsEditCAR_STATUS: TStringField
      FieldName = 'CAR_STATUS'
      Origin = 'CAR_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEditCAR_DATAINI: TSQLTimeStampField
      FieldName = 'CAR_DATAINI'
      Origin = 'CAR_DATAINI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCAR_DATAFIM: TSQLTimeStampField
      FieldName = 'CAR_DATAFIM'
      Origin = 'CAR_DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCAR_PESOTOTAL: TBCDField
      FieldName = 'CAR_PESOTOTAL'
      Origin = 'CAR_PESOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object cdsEditCAR_CUSTO: TBCDField
      FieldName = 'CAR_CUSTO'
      Origin = 'CAR_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object cdsEditCAR_PRECOTOTAL: TBCDField
      FieldName = 'CAR_PRECOTOTAL'
      Origin = 'CAR_PRECOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object cdsEditCAR_TEMPOGASTO: TBCDField
      FieldName = 'CAR_TEMPOGASTO'
      Origin = 'CAR_TEMPOGASTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object cdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCAR_DTPREVINI: TSQLTimeStampField
      FieldName = 'CAR_DTPREVINI'
      Origin = 'CAR_DTPREVINI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCAR_DTPREVFIM: TSQLTimeStampField
      FieldName = 'CAR_DTPREVFIM'
      Origin = 'CAR_DTPREVFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsEditOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      Size = 15
    end
  end
  inherited cdsEditDetail: TFDQuery
    AggregatesActive = True
    SQL.Strings = (
      
        'SELECT  PCP_CODIGO, PCP.IOP_CODIGO, PCP.OPE_CODIGO, PCP.CAR_CODI' +
        'GO, PCP_STATUS, IOP.IOP_NORDEM, IOP_PESO, PRD_REFER, PR.PRD_DESC' +
        'RI'
      
        ' , CL.CLI_CODIGO, CLI_RAZAO, PCP.PCP_DATAINI, PCP.PCP_DATAFIM, P' +
        'CP.EQP_CODIGO, PCP_TEMPO_GASTO'
      
        'FROM PROCESSOS_PRODUCAO PCP LEFT JOIN ITEM_ORDEMPRODUCAO IOP ON ' +
        '(PCP.IOP_CODIGO = IOP.IOP_CODIGO)'
      'LEFT JOIN  PRD0000 PR ON (PR.PRD_CODIGO = IOP.PRD_CODIGO)'
      'LEFT JOIN ORDEMPRODUCAO OP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO)'
      'LEFT JOIN CLI0000 CL ON (CL.CLI_CODIGO = OP.CLI_CODIGO)'
      'WHERE CAR_CODIGO = :ID')
    object cdsEditDetailPCP_CODIGO: TIntegerField
      FieldName = 'PCP_CODIGO'
      Origin = 'PCP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditDetailIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditDetailOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditDetailCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'CAR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPCP_STATUS: TStringField
      FieldName = 'PCP_STATUS'
      Origin = 'PCP_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEditDetailIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
      ProviderFlags = []
    end
    object cdsEditDetailIOP_PESO: TFMTBCDField
      FieldName = 'IOP_PESO'
      Origin = 'IOP_PESO'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsEditDetailPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsEditDetailPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsEditDetailCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object cdsEditDetailCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 55
    end
    object cdsEditDetailPCP_DATAINI: TSQLTimeStampField
      FieldName = 'PCP_DATAINI'
      Origin = 'PCP_DATAINI'
    end
    object cdsEditDetailPCP_DATAFIM: TSQLTimeStampField
      FieldName = 'PCP_DATAFIM'
      Origin = 'PCP_DATAFIM'
    end
    object cdsEditDetailEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
    end
    object cdsEditDetailPCP_TEMPO_GASTO: TBCDField
      FieldName = 'PCP_TEMPO_GASTO'
      Origin = 'PCP_TEMPO_GASTO'
      Precision = 18
    end
    object cdsEditDetailpesototal: TAggregateField
      FieldName = 'pesototal'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(iop_peso)'
    end
  end
  inherited JvValidators1: TJvValidators
    Left = 233
    Top = 314
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Top = 322
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select eqp_codigo, eqp_descricao'
      'from equipamento')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 472
    Top = 372
  end
end
