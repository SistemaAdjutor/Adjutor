inherited frmEmpenharLote: TfrmEmpenharLote
  Caption = 'Empenhar lote'
  ClientHeight = 401
  ClientWidth = 876
  ExplicitTop = -50
  ExplicitWidth = 884
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 229
    Width = 876
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -8
    ExplicitTop = 364
    ExplicitWidth = 612
  end
  inherited pnUtil: TPanel
    Top = 369
    Width = 876
    ExplicitTop = 369
    ExplicitWidth = 876
    inherited btnOk: TSpeedButton
      Left = 628
      ExplicitLeft = 364
    end
    inherited btnCancelar: TSpeedButton
      Left = 753
      ExplicitLeft = 489
    end
    object lpadrao: TLabel
      Left = 16
      Top = 8
      Width = 111
      Height = 13
      Caption = 'Empenhar com a data :'
    end
    object DataPadrao: TJvDateEdit
      Left = 133
      Top = 6
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object grpNovos: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 876
    Height = 229
    Align = alClient
    Caption = 'Empenhar'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 872
      Height = 212
      Align = alClient
      TabOrder = 0
      OnEnter = cxGrid1Enter
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEdits
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '000.00#'
            Kind = skSum
            Column = cxGrid1DBTableView1Quantidade
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          RepositoryItem = cxEditRepository1ButtonItem1
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Options.Moving = False
          Options.ShowCaption = False
          Options.Sorting = False
        end
        object cxGrid1DBTableView1Data: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
          Width = 88
        end
        object cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'PRDL_REGISTRO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'PRDL_REGISTRO'
          Properties.ListColumns = <
            item
              FieldName = 'PRDL_LOTE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsLote
          Width = 108
        end
        object cxGrid1DBTableView1Quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'Quantidade'
          Width = 130
        end
        object cxGrid1DBTableView1Validade: TcxGridDBColumn
          DataBinding.FieldName = 'Validade'
          Options.Editing = False
          Width = 105
        end
        object cxGrid1DBTableView1Saldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Options.Editing = False
          Width = 98
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object grpHistorico: TGroupBox [3]
    Left = 0
    Top = 232
    Width = 876
    Height = 137
    Align = alBottom
    Caption = 'Hist'#243'rico de empenho'
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 2
      Top = 15
      Width = 872
      Height = 120
      Align = alClient
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHistorico
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,#####'
            Kind = skSum
            FieldName = 'EMP_QUANTIDADE'
            Column = cxGrid2DBTableView1EMP_QUANTIDADE
          end
          item
            Format = '#,#####'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid2DBTableView1TOTAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ColumnHeaderHints = False
        OptionsCustomize.ColumnFiltering = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Estorno: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FF835C2A
                835C2A835C2A835C2A835C2A835C2A835C2A835C2A835C2A835C2A835C2A835C
                2A835C2A835C2AFF00FF835C2A835C2ABC8C5BBA8A59BA8958BA8957BA8957BA
                8957BA8957BA8957BA8A58BA8A59BA8A59BC8B5A835C2A835C2A835C2AA16D3A
                9F6A379F6A379E6A379B68379C69389C69389B69389B68379964309B642FA06B
                379F6A37A26D3A835C2A835C2A98612D98602D98602D98602DE2E3E2E2E3E2E2
                E3E2E2E3E2E2E3E2CABEB1A27F5B91582399602D99612D835C2A835C2A9A622E
                9A622E9A622E9A622EE2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E8ECEFAC8F
                72955B259B622E835C2A835C2AA06936A06936A06A369F68349B612B9B632E9D
                65319C64309B632DA7794CE1DEDADAD8D59B6A3BA16834835C2A835C2AA66F3D
                A66F3DA6703DA26833AB855FE2E3E2A56D38A66F3CA66F3CA0652ECBB7A1EDF1
                F5A77F59A66C38835C2A835C2AAB7645AC7544A76E3AB38B65E2E3E2E2E3E2A9
                703BAC7542AC7542A56A34C9B49FF2F6FAAF8760AB733F835C2A835C2AB17D4B
                AE7643B18C67E5E4E3F4F7FAE2E3E2A87544AA794BAB794AB48F6ADFDEDBDCDA
                D6AD7C4EB27B49835C2A835C2AB47F4DB78E67E2E1E0E5E6E8EEF0F2EEF0F2EE
                F0F2EEF0F2EEF0F2F0F4F7EBECEDBB9B7BB27C4AB78454835C2A835C2AC09266
                C29E7AECEAE7ECEEEFEEF0F2EEF0F2EEF0F2EEF0F2DAD3CBD3C3B2C4A17EBB8B
                5EC09267C3966C835C2A835C2ACCA580C89D76CCAD8FEEEDEBEEF0F2EEF0F2C5
                9B73C69E78C69D77C59B73C89E77CAA27CC9A17CCCA480835C2A835C2AD4B191
                D1AD8BCEA885D3B79CEDECEAEEF0F2D0AA87D1AC8BD1AC8BD1AD8BD1AC8BD1AC
                8BD1AC8BD5B190835C2A835C2AD9BDA2DAB99DD8B99CD6B596D7C0A9EEF0F2D8
                B89AD8B99BD8B99BD8B99BD8B99BD8B99BD9B99CDCBFA4835C2A835C2A835C2A
                E2CAB4E4CBB4E4CBB3E2C8B0E2C9B1E4CAB4E3CAB3E3CAB3E3CAB3E3CAB3E4CB
                B4E3CBB5835C2A835C2AFF00FF835C2A835C2A835C2A835C2A835C2A835C2A83
                5C2A835C2A835C2A835C2A835C2A835C2A835C2A835C2AFF00FF}
              Kind = bkGlyph
            end>
          Properties.OnButtonClick = cxGrid2DBTableView1Column1PropertiesButtonClick
          OnGetCellHint = cxGrid1DBTableView1EstornoGetCellHint
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Width = 22
        end
        object cxGrid2DBTableView1EMP_QUANTIDADE: TcxGridDBColumn
          Caption = 'Empenhado'
          DataBinding.FieldName = 'EMP_QUANTIDADE'
          Width = 81
        end
        object cxGrid2DBTableView1EMP_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'EMP_TIPO'
          Width = 30
        end
        object cxGrid2DBTableView1EMP_DATAEMPENHO: TcxGridDBColumn
          Caption = 'Data da ocorr'#234'ncia'
          DataBinding.FieldName = 'EMP_DATAEMPENHO'
          Width = 110
        end
        object cxGrid2DBTableView1PRDL_DATA_FABRICACAO: TcxGridDBColumn
          Caption = 'Data Fab Lote'
          DataBinding.FieldName = 'PRDL_DATA_FABRICACAO'
          Width = 77
        end
        object cxGrid2DBTableView1PRDL_LOTE: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'PRDL_LOTE'
          Width = 139
        end
        object cxGrid2DBTableView1USU_NOME: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USU_NOME'
          Width = 174
        end
        object cxGrid2DBTableView1EPE_CUSTO: TcxGridDBColumn
          Caption = 'Custo unit'#225'rio'
          DataBinding.FieldName = 'EPE_CUSTO'
          Width = 99
        end
        object cxGrid2DBTableView1PRDL_SALDO: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'PRDL_SALDO'
          Visible = False
        end
        object cxGrid2DBTableView1PRDL_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'PRDL_REGISTRO'
          Visible = False
        end
        object cxGrid2DBTableView1EPE_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'EPE_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1IOP_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'IOP_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1MP_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'MP_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1PRD_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Custo total'
          DataBinding.FieldName = 'TOTAL'
          Width = 108
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 112
    Top = 104
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 280
    Top = 120
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 208
    Top = 104
  end
  inherited FDTransac: TFDTransaction
    Left = 176
    Top = 144
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 272
    Top = 136
  end
  inherited dbConn: TFDConnection
    Left = 19
    Top = 144
  end
  inherited dsEdits: TDataSource
    DataSet = cdsEmpenho
  end
  inherited cdsEdit: TFDQuery
    Left = 547
    Top = 32
    object cdsEditData: TDateField
      FieldName = 'Data'
    end
    object cdsEditPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object cdsEditQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object cdsEditSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 507
    Top = 72
  end
  inherited JvValidators1: TJvValidators
    Left = 89
    Top = 82
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 64
    Top = 112
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 9
    Top = 90
  end
  object qLote: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      ' SELECT * from PRD_LOTE '
      'where PRD_CODIGO =:prd_codigo '
      'AND prdl_saldo >0 '
      'ORDER BY PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE')
    Left = 403
    Top = 72
    ParamData = <
      item
        Name = 'PRD_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qLotePRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLoteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object qLotePRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
    end
    object qLotePRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      Origin = 'PRDL_DATA_VALIDADE'
    end
    object qLotePRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object qLotePRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Origin = 'PRDL_PRECO_MAXIMO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Origin = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
    object qLotePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 10
    end
    object qLotePRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      Origin = 'PRDL_CADASTRO'
    end
    object qLotePRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      Origin = 'PRDL_DESCRICAO'
      Size = 100
    end
    object qLotePRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      Origin = 'PRDL_CUSTO'
      Precision = 18
      Size = 5
    end
    object qLotePRDL_NFE: TStringField
      FieldName = 'PRDL_NFE'
      Origin = 'PRDL_NFE'
      Size = 10
    end
    object qLoteFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 4
    end
    object qLotePRDL_QTDELOTE: TFMTBCDField
      FieldName = 'PRDL_QTDELOTE'
      Origin = 'PRDL_QTDELOTE'
      Precision = 18
      Size = 5
    end
  end
  object dsLote: TDataSource
    DataSet = qLote
    Left = 456
    Top = 80
  end
  object cdsEmpenho: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsEmpenhoAfterInsert
    Left = 480
    Top = 160
    object cdsEmpenhoData: TDateField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsEmpenhoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      OnValidate = cdsEmpenhoPRDL_REGISTROValidate
    end
    object cdsEmpenhoQuantidade: TFloatField
      FieldName = 'Quantidade'
      OnValidate = cdsEmpenhoQuantidadeValidate
    end
    object cdsEmpenhoValidade: TSQLTimeStampField
      FieldName = 'Validade'
    end
    object cdsEmpenhoSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object cdsEmpenhotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 100
    Top = 132
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = actInserir
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
          Hint = 'Adicionar'
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
          Hint = 'Excluir'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 152
    object actInserir: TAction
      Caption = 'ActInserir'
    end
    object actdelete: TAction
      Caption = 'actdelete'
    end
  end
  object cdsHistoricoEmpenho: TFDQuery
    OnCalcFields = cdsHistoricoEmpenhoCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT e.prdl_registro, EPE_CODIGO, e. IOP_CODIGO, MP_CODIGO, e.' +
        'PRD_CODIGO, EMP_QUANTIDADE,emp_tipo, '
      
        'EMP_DATAEMPENHO,prdl_data_fabricacao, prdl_lote, u.usu_nome, E.E' +
        'PE_CUSTO'
      'FROM EMPENHO e '
      'LEFT JOIN PRD_LOTE lo ON (lo.PRDL_REGISTRO = e.PRDL_REGISTRO) '
      'JOIN USUARIO U on (u.usu_codigo = e.usu_codigo)'
      'where mp_codigo = :mp_codigo'
      'and emp_tipo <> '#39'E'#39)
    Left = 80
    Top = 293
    ParamData = <
      item
        Name = 'MP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsHistoricoEmpenhoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
    end
    object cdsHistoricoEmpenhoEPE_CODIGO: TIntegerField
      FieldName = 'EPE_CODIGO'
      Origin = 'EPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHistoricoEmpenhoIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsHistoricoEmpenhoMP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
      Origin = 'MP_CODIGO'
    end
    object cdsHistoricoEmpenhoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Size = 5
    end
    object cdsHistoricoEmpenhoEMP_QUANTIDADE: TFMTBCDField
      FieldName = 'EMP_QUANTIDADE'
      Origin = 'EMP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsHistoricoEmpenhoEMP_TIPO: TStringField
      FieldName = 'EMP_TIPO'
      Origin = 'EMP_TIPO'
      Size = 1
    end
    object cdsHistoricoEmpenhoEMP_DATAEMPENHO: TSQLTimeStampField
      FieldName = 'EMP_DATAEMPENHO'
      Origin = 'EMP_DATAEMPENHO'
    end
    object cdsHistoricoEmpenhoPRDL_DATA_FABRICACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsHistoricoEmpenhoPRDL_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object cdsHistoricoEmpenhoUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsHistoricoEmpenhoEPE_CUSTO: TFMTBCDField
      FieldName = 'EPE_CUSTO'
      Origin = 'EPE_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsHistoricoEmpenhoTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistoricoEmpenho
    Left = 160
    Top = 301
  end
end
