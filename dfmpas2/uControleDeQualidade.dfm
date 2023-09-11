inherited frmControleDeQualidade: TfrmControleDeQualidade
  Caption = 'Controle de Qualidade'
  ClientHeight = 541
  ClientWidth = 885
  WindowState = wsMinimized
  ExplicitWidth = 893
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 885
    Height = 464
    ExplicitWidth = 885
    ExplicitHeight = 464
    inherited tsNotas: TTabSheet
      ExplicitWidth = 877
      ExplicitHeight = 436
      inherited pnlControle: TPanel
        Width = 877
        ExplicitWidth = 877
        inherited pnlFiltro: TPanel
          Width = 877
          ExplicitWidth = 877
          inherited pnlpn1: TPanel
            Width = 877
            ExplicitWidth = 877
            inherited btnPesquisa: TSpeedButton
              Left = 784
              ExplicitLeft = 748
            end
            inherited btnLimpar: TSpeedButton
              Left = 784
              ExplicitLeft = 748
            end
            object edPesquisa: TLabeledEdit
              Left = 9
              Top = 20
              Width = 313
              Height = 21
              CharCase = ecUpperCase
              EditLabel.Width = 391
              EditLabel.Height = 13
              EditLabel.Caption = 
                'Pesquisa Lote, Ordem de Produ'#231#227'o, produto, refer'#234'ncia ou descri'#231 +
                #227'o do produto '
              TabOrder = 0
              OnChange = edPesquisaChange
            end
            object GroupBox1: TGroupBox
              Left = 9
              Top = 43
              Width = 281
              Height = 34
              Caption = 'Mostrar'
              TabOrder = 1
              object cbPendente: TCheckBox
                Left = 9
                Top = 13
                Width = 97
                Height = 17
                Caption = 'Pendentes'
                Checked = True
                State = cbChecked
                TabOrder = 0
                OnClick = cbPendenteClick
              end
              object cbEmProcesso: TCheckBox
                Left = 104
                Top = 13
                Width = 81
                Height = 17
                Caption = 'Em Processo'
                Checked = True
                State = cbChecked
                TabOrder = 1
                OnClick = cbEmProcessoClick
              end
              object cbFinalizado: TCheckBox
                Left = 207
                Top = 13
                Width = 71
                Height = 17
                Caption = 'Finalizado'
                TabOrder = 2
                OnClick = cbFinalizadoClick
              end
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 877
        Height = 234
        ExplicitWidth = 877
        ExplicitHeight = 234
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          object cxgrd1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'ORDEM_LOTE'
            Width = 20
          end
          object cxgrd1DBTableView1PRDL_LOTE: TcxGridDBColumn
            DataBinding.FieldName = 'PRDL_LOTE'
            Options.Editing = False
            Width = 86
          end
          object cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_NORDEM'
            Options.Editing = False
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 339
          end
          object cxgrd1DBTableView1IOP_DATA_CONCLUSAO: TcxGridDBColumn
            DataBinding.FieldName = 'IOP_DATA_CONCLUSAO'
            Options.Editing = False
            Width = 127
          end
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsqAux3
          DataController.DetailKeyFieldNames = 'ORDEM_LOTE'
          DataController.KeyFieldNames = 'ORDEM_LOTE'
          DataController.MasterKeyFieldNames = 'ORDEM_LOTE'
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
          object cxgrd1DBTableView2PAR_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PAR_DESCRICAO'
            Width = 300
          end
          object cxgrd1DBTableView2CQUA_RESULTADO: TcxGridDBColumn
            Caption = 'Resultado'
            DataBinding.FieldName = 'CQUA_RESULTADO'
            Width = 100
          end
          object cxgrd1DBTableView2CQUA_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'CQUA_OBSERVACAO'
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [2]
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = cxgrd1DBBandedTableView1FocusedRecordChanged
          DataController.DataSource = dsBusca
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanding = cxgrd1DBBandedTableView1DataControllerDetailExpanding
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Bands = <
            item
            end>
          object cxgrd1DBBandedTableView1PRDL_LOTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRDL_LOTE'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_REFER'
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_DESCRI'
            Width = 247
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_DATA_CONCLUSAO'
            Width = 107
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_NORDEM'
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1ORDEM_LOTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORDEM_LOTE'
            MinWidth = 0
            Width = 0
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IOP_CODIGO'
            MinWidth = 0
            Width = 0
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBBandedTableView1
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView2
            OnGetGridView = cxgrd1Level1GetGridView
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 313
        Width = 877
        Height = 123
        Align = alBottom
        TabOrder = 2
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
            DataBinding.FieldName = 'HCQ_DATA_HORA'
            Width = 120
          end
          object cxGrid1DBTableView1HOP_DESCRICAO: TcxGridDBColumn
            Caption = 'Hist'#243'rico'
            DataBinding.FieldName = 'HCQ_DESCRICAO'
            Width = 408
          end
          object cxGrid1DBTableView1USU_NOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'USU_NOME'
            Width = 140
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
  inherited pnl1: TPanel
    Top = 505
    Width = 885
    ExplicitTop = 505
    ExplicitWidth = 885
    inherited btnSelect: TSpeedButton
      Left = 741
      Top = 14
      ExplicitLeft = 613
      ExplicitTop = 14
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 885
    ExplicitWidth = 885
    inherited btnExclui: TSpeedButton
      Left = 252
      Visible = False
      ExplicitLeft = 252
    end
    inherited btnNovo: TSpeedButton
      Width = 125
      Caption = 'Incluir / Editar (Ctrl+N)'
      ExplicitWidth = 125
    end
    inherited btnConsulta: TSpeedButton
      Left = 341
      ExplicitLeft = 341
    end
    inherited btnEdita: TSpeedButton
      Left = 165
      Width = 86
      Visible = False
      ExplicitLeft = 165
      ExplicitWidth = 86
    end
    inherited btnFechar: TSpeedButton
      Left = 821
      ExplicitLeft = 785
    end
    inherited btnExtra: TSpeedButton
      Left = 430
      ExplicitLeft = 430
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 720
      Visible = False
      ExplicitLeft = 684
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 619
      DropDown = PopupMenu2
      OnClick = btnrelatoriosClick
      ExplicitLeft = 583
    end
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 536
    Top = 104
  end
  inherited qAux: TFDQuery
    SQL.Strings = (
      
        'SELECT pr.PRD_REFER, pr.PRD_DESCRI, PQ.PAR_DESCRICAO, CQP.CQP_VA' +
        'LOR_MIN, CQP.CQP_VALOR_MAX,        '
      
        'CQ.CQUA_RESULTADO, CQ.CQUA_PRDL_LOTE, iop.IOP_DATA_CONCLUSAO, io' +
        'p.iop_nordem,        '
      'CQ.CQUA_DATA_CONCLUSAO, CQ.CQUA_OBSERVACAO  '
      'FROM CONTROLE_DE_QUALIDADE CQ  '
      
        'JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_' +
        'CODIGO)  '
      
        'LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODI' +
        'GO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER)  '
      
        'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM' +
        ' )  '
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)  '
      'WHERE IOP.IOP_NORDEM = '#39'5974'#39' AND CQ.CQUA_PRDL_LOTE = '#39'092'#39)
    Left = 179
    Top = 184
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 448
    Top = 48
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 440
    Top = 96
  end
  inherited FDTransac: TFDTransaction
    Left = 520
    Top = 48
  end
  inherited qAux2: TFDQuery
    SQL.Strings = (
      'SELECT DISTINCT CQ.CQUA_PRDL_LOTE, iop.iop_nordem  '
      'FROM CONTROLE_DE_QUALIDADE CQ  '
      
        'JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_' +
        'CODIGO)  '
      
        'LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODI' +
        'GO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER)  '
      
        'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM' +
        ' )  '
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)  '
      
        'WHERE IOP.IOP_NORDEM = '#39'3215'#39' AND CQ.CQUA_PRDL_LOTE = '#39'3001-2023' +
        #39)
    Left = 451
    Top = 183
  end
  inherited qAux3: TFDQuery
    SQL.Strings = (
      
        'SELECT CQUA_IOP_NORDEM || CQUA_PRDL_LOTE  ORDEM_LOTE, CQ.*, PQ.*' +
        ' '
      ' FROM CONTROLE_DE_QUALIDADE CQ '
      
        '  INNER JOIN PARAMETROS_DA_QUALIDADE PQ ON (CQ.CQUA_PAR_CODIGO =' +
        ' PQ.PAR_CODIGO) '
      'WHERE CQ.CQUA_PRDL_LOTE = '#39#39' AND  CQ.CQUA_IOP_NORDEM = 84')
    Left = 227
    Top = 183
    object qAux3ORDEM_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORDEM_LOTE'
      Origin = 'ORDEM_LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qAux3CQUA_CODIGO: TIntegerField
      FieldName = 'CQUA_CODIGO'
      Origin = 'CQUA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAux3CQUA_PRDL_LOTE: TStringField
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object qAux3CQUA_IOP_NORDEM: TStringField
      FieldName = 'CQUA_IOP_NORDEM'
      Origin = 'CQUA_IOP_NORDEM'
    end
    object qAux3CQUA_PAR_CODIGO: TIntegerField
      FieldName = 'CQUA_PAR_CODIGO'
      Origin = 'CQUA_PAR_CODIGO'
    end
    object qAux3CQUA_DATA_INICIALIZACAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_INICIALIZACAO'
      Origin = 'CQUA_DATA_INICIALIZACAO'
    end
    object qAux3CQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object qAux3CQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
    object qAux3CQUA_RESULTADO: TStringField
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object qAux3PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qAux3PAR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qAux3PAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qAux3PAR_OBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'PAR_OBSERVACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited qAux4: TFDQuery
    SQL.Strings = (
      
        'SELECT pr.PRD_REFER, pr.PRD_DESCRI, PQ.PAR_DESCRICAO, CQP.CQP_VA' +
        'LOR_MIN, CQP.CQP_VALOR_MAX,        '
      
        'CQ.CQUA_RESULTADO, CQ.CQUA_PRDL_LOTE, iop.IOP_DATA_CONCLUSAO, io' +
        'p.iop_nordem,        '
      'CQ.CQUA_DATA_CONCLUSAO, CQ.CQUA_OBSERVACAO  '
      'FROM CONTROLE_DE_QUALIDADE CQ  '
      
        'JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODIGO = ' +
        'CQP.PAR_CODIGO AND CQP.PAR_CODIGO = CQ.CQUA_PAR_CODIGO)  '
      
        'JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_' +
        'CODIGO)  '
      
        'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM' +
        ' )  '
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)  '
      'WHERE IOP.IOP_NORDEM = '#39'76'#39' AND CQ.CQUA_PRDL_LOTE = '#39#39)
    Left = 35
    Top = 71
    object qAux4PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qAux4PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qAux4PAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 255
    end
    object qAux4CQP_VALOR_MIN: TStringField
      FieldName = 'CQP_VALOR_MIN'
      Origin = 'CQP_VALOR_MIN'
      Size = 60
    end
    object qAux4CQP_VALOR_MAX: TStringField
      FieldName = 'CQP_VALOR_MAX'
      Origin = 'CQP_VALOR_MAX'
      Size = 60
    end
    object qAux4CQUA_RESULTADO: TStringField
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object qAux4CQUA_PRDL_LOTE: TStringField
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object qAux4IOP_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'IOP_DATA_CONCLUSAO'
      Origin = 'IOP_DATA_CONCLUSAO'
    end
    object qAux4IOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object qAux4CQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object qAux4CQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\exemplo.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 35
    Top = 224
  end
  inherited dsBusca: TDataSource
    Left = 132
    Top = 224
  end
  inherited cdsBusca: TFDQuery
    AfterScroll = cdsBuscaAfterScroll
    SQL.Strings = (
      'SELECT iop.iop_nordem|| lot.PRDL_LOTE ORDEM_LOTE ,  '
      #9'CASE '
      
        #9' WHEN COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '#39#39') = '#39#39' THEN '#39'Pende' +
        'nte'#39
      
        #9' WHEN COALESCE(CQ.CQUA_DATA_INICIALIZACAO, '#39#39') <> '#39#39' THEN '#39'Em P' +
        'rocesso'#39
      
        #9' WHEN COALESCE(CQ.CQUA_DATA_CONCLUSAO, '#39#39') <> '#39#39' THEN '#39'Finaliza' +
        'do'#39
      #9'END Status,'
      
        'lot.PRDL_LOTE, pr.PRD_REFER, pr.PRD_DESCRI, iop.IOP_DATA_CONCLUS' +
        'AO, '
      
        'iop.iop_nordem, iop.iop_codigo, cq.cqua_data_inicializacao, cq.c' +
        'qua_data_conclusao, cq.cqua_codigo, op.PED_CODIGO'
      'FROM ORDEMPRODUCAO OP'
      'JOIN ITEM_ORDEMPRODUCAO iop ON'#9'(Iop.OPR_CODIGO = OP.OPR_CODIGO )'
      'LEFT JOIN PRD_LOTE lot ON'#9'(lot.IOP_CODIGO = iop.IOP_CODIGO)'
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)'
      
        'LEFT JOIN CONTROLE_DE_QUALIDADE CQ ON (COALESCE(CQ.CQUA_IOP_NORD' +
        'EM, '#39#39') = COALESCE(IOP.IOP_NORDEM, '#39#39') AND COALESCE(CQ.CQUA_PRDL' +
        '_LOTE, '#39#39')  = COALESCE(LOT.PRDL_LOTE, '#39#39'))'
      'WHERE  iop_status = '#39'F'#39' AND '
      #9'EXISTS ('
      #9#9'SELECT * FROM DEMANDA_PRODUCAO dpr'
      #9#9#9'WHERE dpr.PED_CODIGO = op.PED_CODIGO'
      #9#9#9'AND dpr.EMP_CODIGO = op.EMP_CODIGO )')
    Left = 83
    Top = 224
    object cdsBuscaPRDL_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object cdsBuscaPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsBuscaPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscaIOP_DATA_CONCLUSAO: TSQLTimeStampField
      DisplayLabel = 'Data Conclus'#227'o O.P.'
      FieldName = 'IOP_DATA_CONCLUSAO'
      Origin = 'IOP_DATA_CONCLUSAO'
    end
    object cdsBuscaIOP_NORDEM: TStringField
      DisplayLabel = 'N'#186' da Ordem'
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsBuscaORDEM_LOTE: TStringField
      FieldName = 'ORDEM_LOTE'
      Origin = 'ORDEM_LOTE'
      Size = 50
    end
    object cdsBuscaIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      Required = True
    end
    object cdsBuscaCQUA_DATA_CONCLUSAO: TSQLTimeStampField
      DisplayLabel = 'Data Conclus'#227'o'
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object cdsBuscaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 11
    end
    object cdsBuscaCQUA_DATA_INICIALIZACAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_INICIALIZACAO'
      Origin = 'CQUA_DATA_INICIALIZACAO'
    end
    object cdsBuscaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 744
  end
  inherited PopupMenu2: TPopupMenu
    Left = 648
    Top = 48
    object OrdemdeProduo1: TMenuItem
      Caption = 'Ordem de Produ'#231#227'o'
      OnClick = OrdemdeProduo1Click
    end
    object ImpressodoCertificadodeQualidade1: TMenuItem
      Caption = 'Impress'#227'o do Certificado de Qualidade'
      OnClick = ImpressodoCertificadodeQualidade1Click
    end
  end
  inherited frxPadrao: TfrxReport
    ScriptText.Strings = (
      'var'
      
        '  razao, endereco, cep, cidade, uf, fone, email, cnpj, inscr: st' +
        'ring;                                                 '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxPadraoBeginDoc
    OnGetValue = frxPadraoGetValue
    Left = 596
    Top = 129
    Datasets = <
      item
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
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
      PrintIfEmpty = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 113.149660000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
        end
        object frxDBQualidadeCQUA_PRDL_LOTE: TfrxMemoView
          Left = 47.149660000000000000
          Top = 118.948551530000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_PRDL_LOTE"]')
        end
        object Memo1: TfrxMemoView
          Left = 8.721992310000000000
          Top = 119.274416150000000000
          Width = 32.852837690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lote:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 141.000000000000000000
          Top = 119.274416150000000000
          Width = 69.866752310000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Ordem:')
          ParentFont = False
        end
        object frxDBQualidadeIOP_NORDEM: TfrxMemoView
          Left = 215.433210000000000000
          Top = 118.948551530000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidade."IOP_NORDEM"]')
        end
        object Memo3: TfrxMemoView
          Left = 4.000000000000000000
          Top = 150.826840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 150.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 2.000000000000000000
          Top = 147.165430000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 706.772110000000000000
          Top = 147.165430000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 2.779530000000000000
          Top = 147.165430000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 5.559060000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 205.567100000000000000
          Top = 23.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 205.551330000000000000
          Top = 40.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 272.464750000000000000
          Top = 40.795300000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 462.338900000000000000
          Top = 40.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 489.016080000000000000
          Top = 40.795300000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 205.330860000000000000
          Top = 57.692950000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 488.866420000000000000
          Top = 57.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 451.323130000000000000
          Top = 57.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 606.929500000000000000
          Top = 57.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 654.401980000000000000
          Top = 57.692950000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 590.709030000000000000
          Top = 4.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 279.685220000000000000
          Top = 83.149660000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Controle de Qualidade')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 50.574830000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
        RowCount = 0
        object frxDBQualidadePRD_REFER: TfrxMemoView
          Left = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBQualidade."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBQualidadePRD_DESCRI: TfrxMemoView
          Left = 113.385900000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBQualidade."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 31.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Especifica'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Top = 31.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Resultado')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 366.614410000000000000
          Top = 31.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#237'nimo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 449.764070000000000000
          Top = 31.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#225'ximo')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 3.071120000000000000
          Top = 19.763760000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Left = 707.063700000000000000
          Top = 0.102350000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 2.291590000000000000
          Top = 0.322820000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          Left = 560.913730000000000000
          Top = 20.338590000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data'
            'Conclus'#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 2.000000000000000000
          Top = 49.133890000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        Child = frxPadrao.Child1
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
        RowCount = 0
        object frxDBQualidadePAR_DESCRICAO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."PAR_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBQualidadeCQUA_RESULTADO: TfrxMemoView
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_RESULTADO"]')
          ParentFont = False
        end
        object frxDBQualidadePAR_VALOR_MIN: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_VALOR_MIN"]')
          ParentFont = False
        end
        object frxDBQualidadePAR_VALOR_MAX: TfrxMemoView
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_VALOR_MAX"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[iif(ValidDate(<frxDBQualidade."CQUA_DATA_CONCLUSAO">),<frxDBQua' +
              'lidade."CQUA_DATA_CONCLUSAO">, '#39#39')]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        KeepChild = True
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_OBSERVACAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 1.779530000000000000
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  inherited SaveDialog1: TSaveDialog
    Left = 260
    Top = 305
  end
  inherited qUsuMenu: TFDQuery
    Top = 304
  end
  inherited cdsBuscaDetalhes: TFDQuery
    Left = 355
    Top = 304
  end
  inherited dsBuscaDetalhes: TDataSource
    Top = 304
  end
  object frxDBQualidadeOLD: TfrxDBDataset [24]
    UserName = 'frxDBQualidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PAR_DESCRICAO=PAR_DESCRICAO'
      'CQP_VALOR_MIN=CQP_VALOR_MIN'
      'CQP_VALOR_MAX=CQP_VALOR_MAX'
      'CQUA_RESULTADO=CQUA_RESULTADO'
      'CQUA_PRDL_LOTE=CQUA_PRDL_LOTE'
      'IOP_DATA_CONCLUSAO=IOP_DATA_CONCLUSAO'
      'IOP_NORDEM=IOP_NORDEM'
      'CQUA_DATA_CONCLUSAO=CQUA_DATA_CONCLUSAO'
      'CQUA_OBSERVACAO=CQUA_OBSERVACAO')
    DataSet = cdsQualidade
    BCDToCurrency = False
    Left = 276
    Top = 73
  end
  object cdsQualidade: TClientDataSet [25]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQualidade'
    Left = 164
    Top = 73
    object cdsQualidadePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsQualidadePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsQualidadePAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 255
    end
    object cdsQualidadeCQP_VALOR_MIN: TStringField
      FieldName = 'CQP_VALOR_MIN'
      Origin = 'CQP_VALOR_MIN'
      Size = 60
    end
    object cdsQualidadeCQP_VALOR_MAX: TStringField
      FieldName = 'CQP_VALOR_MAX'
      Origin = 'CQP_VALOR_MAX'
      Size = 60
    end
    object cdsQualidadeCQUA_RESULTADO: TStringField
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object cdsQualidadeCQUA_PRDL_LOTE: TStringField
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object cdsQualidadeIOP_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'IOP_DATA_CONCLUSAO'
      Origin = 'IOP_DATA_CONCLUSAO'
    end
    object cdsQualidadeIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsQualidadeCQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object cdsQualidadeCQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
  end
  object dspQualidade: TDataSetProvider [26]
    DataSet = qAux4
    Left = 92
    Top = 73
  end
  object dsqAux3: TDataSource [27]
    DataSet = qAux3
    Left = 228
    Top = 233
  end
  object cdsHistorico: TFDQuery [28]
    AfterOpen = cdsBuscaAfterOpen
    IndexesActive = False
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT HCQ.HCQ_DATA_HORA, HCQ.HCQ_DESCRICAO, U.USU_NOME'
      '  FROM HIST_CONTROLE_DE_QUALIDADE HCQ'
      '  JOIN USUARIO U ON (U.USU_CODIGO = HCQ.USU_CODIGO) '
      ' WHERE HCQ.CQUA_CODIGO = 17')
    Left = 99
    Top = 416
    object cdsHistoricoHCQ_DATA_HORA: TSQLTimeStampField
      FieldName = 'HCQ_DATA_HORA'
      Origin = 'HCQ_DATA_HORA'
    end
    object cdsHistoricoHCQ_DESCRICAO: TStringField
      FieldName = 'HCQ_DESCRICAO'
      Origin = 'HCQ_DESCRICAO'
      Size = 255
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
  object dsHistorico: TDataSource [29]
    DataSet = cdsHistorico
    Left = 156
    Top = 417
  end
  object frxOP5: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOP5BeginDoc
    OnGetValue = frxOP5GetValue
    Left = 817
    Top = 217
    Datasets = <
      item
        DataSet = frxDBMateriaPrimaOP5
        DataSetName = 'frxDBMateriaPrimaOP5'
      end
      item
        DataSet = frxDBProdutoOP5
        DataSetName = 'frxDBProdutoOP5'
      end
      item
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
      end
      item
        DataSet = frxDBQualidadeCabecalho
        DataSetName = 'frxDBQualidadeCabecalho'
      end
      item
        DataSet = frxDBSoma
        DataSetName = 'frxDBSoma'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 124.842610000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Top = 63.031540000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 46.354360000000000000
          Top = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBProdutoOP5."PRD_REFER"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 64.252010000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBProdutoOP5."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 440.425480000000000000
          Top = 64.252010000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtd. a Produzir/[frxDBProdutoOP5."PRD_UND"]:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fab.: [frxDBProdutoOP5."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 82.149660000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Top = 105.944960000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 260.787570000000000000
          Top = 105.944960000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Mat'#233'ria Prima')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 105.944960000000000000
          Width = 158.740115980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Lote')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 623.622450000000000000
          Top = 105.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade(KG)')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 64.252010000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Top = 64.252010000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBProdutoOP5."PRF_QTDE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 85.929190000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PESAGEM E PRODU'#199#195'O')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 103.047310000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 119.724490000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 304.141930000000000000
          Top = 18.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ordem de Produ'#231#227'o / Lote')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 309.921460000000000000
          Top = 37.795300000000000000
          Width = 154.960585980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBProdutoOP5."IOP_NORDEM"] / [frxDBProdutoOP5."PRDL_LOTE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMateriaPrimaOP5
        DataSetName = 'frxDBMateriaPrimaOP5'
        RowCount = 0
        object Memo25: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBMateriaPrimaOP5."PRD_REFER"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBMateriaPrimaOP5."MP_CONSUMOTOTAL"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 105.826840000000000000
          Width = 154.960585980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBMateriaPrimaOP5."ITEMLOTE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 264.567100000000000000
          Width = 347.716615980000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBMateriaPrimaOP5."PRD_DESCRI"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Top = 13.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 215.094620000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSoma
        DataSetName = 'frxDBSoma'
        RowCount = 0
        object Line8: TfrxLineView
          Left = 3.779530000000000000
          Top = 17.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Qtd. total de Insumos (KG)')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 574.488560000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSoma."SOMA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.338590000000000000
          Width = 718.110700000000000000
          Height = 166.299320000000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '<b>Processo de Produ'#231#227'o:</b>'
            '[frxDBProdutoOP5."FTC_ETAPAS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 6.779530000000000000
          Top = 195.858380000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data Inicial:_______________')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 196.756030000000000000
          Top = 195.858380000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora Inicial:_______________')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 377.953000000000000000
          Top = 195.858380000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data Final:_______________')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 560.370440000000000000
          Top = 195.858380000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora Final:_______________')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 3.779530000000000000
          Top = 189.078850000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 54.354360000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
        RowCount = 0
        object Memo12: TfrxMemoView
          Top = 35.236240000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Especifica'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 234.330860000000000000
          Top = 35.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Resultado')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 424.086890000000000000
          Top = 35.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#237'nimo')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 504.457020000000000000
          Top = 35.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#225'ximo')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 4.291590000000000000
          Top = 23.543290000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo29: TfrxMemoView
          Left = 585.826771653543300000
          Top = 35.456710000000000000
          Width = 117.165430000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Conclus'#227'o')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = -1.779530000000000000
          Top = 52.913420000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line18: TfrxLineView
          Left = 708.480520000000000000
          Top = 0.661410000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo42: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBQualidade."PRD_REFER"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 109.606370000000000000
          Top = 3.779530000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBQualidade."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 332.598640000000000000
          Top = 35.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Esperado')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 672.756340000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
        RowCount = 0
        object frxDBQualidadeCQUA_RESULTADO: TfrxMemoView
          Left = 234.330708660000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_RESULTADO"]')
          ParentFont = False
        end
        object frxDBQualidadePAR_VALOR_MIN: TfrxMemoView
          Left = 424.062992125984300000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_VALOR_MIN"]')
          ParentFont = False
        end
        object frxDBQualidadePAR_VALOR_MAX: TfrxMemoView
          Left = 504.566929133858300000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_VALOR_MAX"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy HH:MM:SS'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[iif(ValidDate(<frxDBQualidade."CQUA_DATA_CONCLUSAO">),<frxDBQua' +
              'lidade."CQUA_DATA_CONCLUSAO">, '#39#39')]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 105.826840000000000000
          Top = 26.456710000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_OBSERVACAO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Top = 45.354360000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBQualidade."PAR_DESCRICAO"]')
        end
        object Memo45: TfrxMemoView
          Left = 332.598425200000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_ESPERADO"]')
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 94.252010000000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQualidadeCabecalho
        DataSetName = 'frxDBQualidadeCabecalho'
        RowCount = 0
        object Line10: TfrxLineView
          Left = 4.071120000000000000
          Top = 64.354360000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 9.721992310000000000
          Top = 36.124756150000000000
          Width = 32.852837690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lote:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 4.779530000000000000
          Top = 30.000000000000000000
          Width = 355.275820000000000000
          Height = 26.456710000000000000
        end
        object frxDBQualidadeCQUA_PRDL_LOTE: TfrxMemoView
          Left = 48.149660000000000000
          Top = 35.798891530000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidadeCabecalho."CQUA_PRDL_LOTE"]')
        end
        object Memo36: TfrxMemoView
          Left = 179.795300000000000000
          Top = 36.124756150000000000
          Width = 69.866752310000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Ordem:')
          ParentFont = False
        end
        object frxDBQualidadeIOP_NORDEM: TfrxMemoView
          Left = 254.228510000000000000
          Top = 35.798891530000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidadeCabecalho."IOP_NORDEM"]')
        end
        object Memo37: TfrxMemoView
          Left = 5.000000000000000000
          Top = 67.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 114.385900000000000000
          Top = 67.677180000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 707.772110000000000000
          Top = 64.015770000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 3.779530000000000000
          Top = 64.015770000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo39: TfrxMemoView
          Left = 280.685220000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Controle de Qualidade')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 1.779530000000000000
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBProdutoOP5: TfrxDBDataset
    Description = 'frxDBProdutoOP5'
    UserName = 'frxDBProdutoOP5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'IOP_DTENTREGA=IOP_DTENTREGA'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'PRD_UND=PRD_UND'
      'PRDL_LOTE=PRDL_LOTE'
      'OPR_EMISSAO=OPR_EMISSAO'
      'PRD_FATOR_PROD=PRD_FATOR_PROD'
      'PRD_DIV_MULT_PROD=PRD_DIV_MULT_PROD'
      'FTC_ETAPAS=FTC_ETAPAS'
      'IOP_CODIGO=IOP_CODIGO'
      'IOP_NORDEM=IOP_NORDEM'
      'PRF_QTDE=PRF_QTDE')
    DataSet = cdsProdutoOP5
    BCDToCurrency = False
    Left = 753
    Top = 249
  end
  object frxDBMateriaPrimaOP5: TfrxDBDataset
    Description = 'frxDBMateriaPrimaOP5'
    UserName = 'frxDBMateriaPrimaOP5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRDL_LOTE=PRDL_LOTE'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_CODIGO=PRD_CODIGO'
      'PED_CODIGO=PED_CODIGO'
      'PRD_FATOR_PROD=PRD_FATOR_PROD'
      'PRD_DIV_MULT_PROD=PRD_DIV_MULT_PROD'
      'MP_CODIGO=MP_CODIGO'
      'IOP_CODIGO=IOP_CODIGO'
      'MP_UCONSUMO=MP_UCONSUMO'
      'MP_SITUACAO=MP_SITUACAO'
      'MP_EMPENHADO=MP_EMPENHADO'
      'MP_CONSUMOTOTAL=MP_CONSUMOTOTAL'
      'PRD_UND=PRD_UND'
      'PRD_GERENCIA_LOTE=PRD_GERENCIA_LOTE'
      'ESTOQUEDISPONIVEL=ESTOQUEDISPONIVEL'
      'MP_CUSTO=MP_CUSTO'
      'ITEMLOTE=ITEMLOTE')
    DataSet = cdsMateriaPrimaOP5
    BCDToCurrency = False
    Left = 657
    Top = 249
  end
  object cdsProdutoOP5: TFDQuery
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT it.PRF_QTDE, pr.PRD_REFER, pr.PRD_DESCRI, IOP_DTENTREGA, ' +
        'iop.IOP_QUANTIDADE, pr.prd_und, '
      
        'lt.PRDL_LOTE, op.OPR_EMISSAO, pr.PRD_FATOR_PROD, pr.PRD_DIV_MULT' +
        '_PROD, ft.FTC_ETAPAS,'
      'iop.IOP_CODIGO, iop.IOP_NORDEM'
      'FROM ORDEMPRODUCAO OP  '
      'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO )'
      'JOIN prd_lote lt ON (lt.IOP_CODIGO = iop.IOP_CODIGO)'
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)'
      'LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER)'
      'JOIN PED_IT01 it ON (it.PED_CODIGO = op.PED_CODIGO)  '
      'WHERE EXISTS'
      
        '(SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PE' +
        'D_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO )'
      'and op.PED_CODIGO = '#39'003047'#39)
    Left = 745
    Top = 184
    object cdsProdutoOP5PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsProdutoOP5PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsProdutoOP5IOP_DTENTREGA: TDateField
      FieldName = 'IOP_DTENTREGA'
      Origin = 'IOP_DTENTREGA'
    end
    object cdsProdutoOP5IOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object cdsProdutoOP5PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsProdutoOP5PRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object cdsProdutoOP5OPR_EMISSAO: TSQLTimeStampField
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
    end
    object cdsProdutoOP5PRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      Origin = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOP5FTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      Origin = 'FTC_ETAPAS'
    end
    object cdsProdutoOP5IOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      Required = True
    end
    object cdsProdutoOP5IOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object cdsProdutoOP5PRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsProdutoOP5PRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      Origin = 'PRD_FATOR_PROD'
      Precision = 18
      Size = 5
    end
  end
  object cdsMateriaPrimaOP5: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT '
      '  (SELECT FIRST 1 a.PRDL_LOTE '
      #9'from PRD_LOTE A    '
      
        #9'WHERE A.prd_CODIGO = mp.prd_codigo AND a.PRDL_DATA_FABRICACAO =' +
        ' (SELECT MAX(a.PRDL_DATA_FABRICACAO) AS fab '
      #9'from PRD_LOTE A    '
      #9'WHERE A.prd_CODIGO = mp.prd_codigo )) AS ItemLote, '
      
        'LT.PRDL_LOTE, pr.PRD_REFER, pr.PRD_DESCRI, mp.prd_codigo, mp.ped' +
        '_codigo,'
      'pr.PRD_FATOR_PROD, pr.PRD_DIV_MULT_PROD,'
      'MP.MP_CODIGO,  MP.iop_codigo, mp.MP_UCONSUMO, mp_situacao,    '
      ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,pr.prd_und,PRD_GERENCIA_LOTE,'
      
        '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kar' +
        'dex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) Estoq' +
        'ueDisponivel, MP_CUSTO                                 '
      
        ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                             ' +
        '   '
      
        ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)             ' +
        '   '
      'JOIN prd_lote lt ON (lt.IOP_CODIGO = MP.IOP_CODIGO)'
      ' where MP.PED_CODIGO = '#39'003047'#39)
    Left = 657
    Top = 144
    object cdsMateriaPrimaOP5PRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Origin = 'PRDL_LOTE'
      Size = 30
    end
    object cdsMateriaPrimaOP5PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsMateriaPrimaOP5PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsMateriaPrimaOP5PRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsMateriaPrimaOP5PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object cdsMateriaPrimaOP5PRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      Origin = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsMateriaPrimaOP5MP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
      Origin = 'MP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMateriaPrimaOP5IOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
      Required = True
    end
    object cdsMateriaPrimaOP5MP_UCONSUMO: TFMTBCDField
      FieldName = 'MP_UCONSUMO'
      Origin = 'MP_UCONSUMO'
      Required = True
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaOP5MP_SITUACAO: TStringField
      FieldName = 'MP_SITUACAO'
      Origin = 'MP_SITUACAO'
      Size = 1
    end
    object cdsMateriaPrimaOP5MP_EMPENHADO: TFMTBCDField
      FieldName = 'MP_EMPENHADO'
      Origin = 'MP_EMPENHADO'
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaOP5MP_CONSUMOTOTAL: TFMTBCDField
      FieldName = 'MP_CONSUMOTOTAL'
      Origin = 'MP_CONSUMOTOTAL'
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaOP5PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsMateriaPrimaOP5PRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Origin = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
    object cdsMateriaPrimaOP5ESTOQUEDISPONIVEL: TFMTBCDField
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaOP5MP_CUSTO: TFMTBCDField
      FieldName = 'MP_CUSTO'
      Origin = 'MP_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsMateriaPrimaOP5ITEMLOTE: TStringField
      FieldName = 'ITEMLOTE'
      Origin = 'ITEMLOTE'
      Size = 30
    end
    object cdsMateriaPrimaOP5PRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      Origin = 'PRD_FATOR_PROD'
      Precision = 18
      Size = 5
    end
  end
  object frxDBQualidade: TfrxDBDataset
    Description = 'frxDBQualidade'
    UserName = 'frxDBQualidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PAR_DESCRICAO=PAR_DESCRICAO'
      'CQP_VALOR_MIN=CQP_VALOR_MIN'
      'CQP_VALOR_MAX=CQP_VALOR_MAX'
      'CQUA_RESULTADO=CQUA_RESULTADO'
      'CQUA_PRDL_LOTE=CQUA_PRDL_LOTE'
      'IOP_DATA_CONCLUSAO=IOP_DATA_CONCLUSAO'
      'IOP_NORDEM=IOP_NORDEM'
      'CQUA_DATA_CONCLUSAO=CQUA_DATA_CONCLUSAO'
      'CQUA_OBSERVACAO=CQUA_OBSERVACAO'
      'CQP_ESPERADO=CQP_ESPERADO'
      'CLI_RAZAO=CLI_RAZAO'
      'NF_NOTANUMBER=NF_NOTANUMBER'
      'PRDL_DATA_FABRICACAO=PRDL_DATA_FABRICACAO'
      'PRDL_DATA_VALIDADE=PRDL_DATA_VALIDADE'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'PRD_UNIDESCRI=PRD_UNIDESCRI')
    DataSet = qQualidade
    BCDToCurrency = False
    Left = 569
    Top = 241
  end
  object frxDBQualidadeCabecalho: TfrxDBDataset
    Description = 'frxDBQualidadeCabecalho'
    UserName = 'frxDBQualidadeCabecalho'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CQUA_PRDL_LOTE=CQUA_PRDL_LOTE'
      'IOP_NORDEM=IOP_NORDEM')
    DataSet = qAux2
    BCDToCurrency = False
    Left = 457
    Top = 241
  end
  object frxDBSoma: TfrxDBDataset
    Description = 'frxDBSoma'
    UserName = 'frxDBSoma'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SOMA=SOMA')
    DataSet = qSoma
    BCDToCurrency = False
    Left = 340
    Top = 241
  end
  object qQualidade: TFDQuery
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT '
      'pu.PRD_UNIDESCRI ,'
      'iop.IOP_QUANTIDADE ,'
      'cl.CLI_RAZAO ,'
      'nf.NF_NOTANUMBER,'
      'pl.PRDL_DATA_FABRICACAO, '
      'case'
      
        '  WHEN DATEDIFF (month from pl.PRDL_DATA_FABRICACAO to pl.PRDL_D' +
        'ATA_VALIDADE)  = 0 THEN  DATEDIFF (DAY from pl.PRDL_DATA_FABRICA' +
        'CAO to pl.PRDL_DATA_VALIDADE) || '#39' dias'#39
      '  WHEN COALESCE(pl.PRDL_DATA_VALIDADE, '#39#39') = '#39#39' THEN '#39' 24 meses'#39
      
        '  ELSE DATEDIFF (month from pl.PRDL_DATA_FABRICACAO to pl.PRDL_D' +
        'ATA_VALIDADE) || '#39' meses'#39
      'END AS PRDL_DATA_VALIDADE,'
      
        'pr.PRD_REFER, pr.PRD_DESCRI, PQ.PAR_DESCRICAO, CQP.CQP_VALOR_MIN' +
        ', CQP.CQP_VALOR_MAX,        '
      
        'CQ.CQUA_RESULTADO, CQ.CQUA_PRDL_LOTE, iop.IOP_DATA_CONCLUSAO, io' +
        'p.iop_nordem,        '
      'CQ.CQUA_DATA_CONCLUSAO, CQ.CQUA_OBSERVACAO, CQP.CQP_ESPERADO  '
      'FROM CONTROLE_DE_QUALIDADE CQ  '
      
        'JOIN PARAMETROS_DA_QUALIDADE PQ ON (PQ.PAR_CODIGO = CQ.CQUA_PAR_' +
        'CODIGO)  '
      
        'LEFT JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQ.CQUA_PAR_CODI' +
        'GO = CQP.PAR_CODIGO AND CQP.PRD_REFER = CQ.PRD_REFER)  '
      
        'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.IOP_NORDEM = CQUA_IOP_NORDEM' +
        ' )  '
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)  '
      'JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO) '
      
        'JOIN PED0000 ped ON (ped.PED_CODIGO = op.PED_CODIGO AND ped.EMP_' +
        'CODIGO = op.EMP_CODIGO)'
      'JOIN CLI0000 cl ON (cl.CLI_CODIGO = ped.CLI_CODIGO)'
      
        'LEFT JOIN NF0001 nf ON (nf.PED_CODIGO = ped.PED_CODIGO AND nf.EM' +
        'P_CODIGO = ped.EMP_CODIGO) '
      'LEFT JOIN PRD_LOTE pl ON (pl.PRDL_LOTE = cq.CQUA_PRDL_LOTE)'
      'LEFT JOIN PRD_UNIDADE pu ON (pu.PRD_UNISIGLA = pr.PRD_UND)'
      
        'WHERE IOP.IOP_NORDEM = '#39'3215'#39' AND CQ.CQUA_PRDL_LOTE = '#39'3001-2023' +
        #39)
    Left = 569
    Top = 184
    object qQualidadePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qQualidadePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qQualidadePAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 255
    end
    object qQualidadeCQP_VALOR_MIN: TStringField
      FieldName = 'CQP_VALOR_MIN'
      Origin = 'CQP_VALOR_MIN'
      Size = 60
    end
    object qQualidadeCQP_VALOR_MAX: TStringField
      FieldName = 'CQP_VALOR_MAX'
      Origin = 'CQP_VALOR_MAX'
      Size = 60
    end
    object qQualidadeCQUA_RESULTADO: TStringField
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object qQualidadeCQUA_PRDL_LOTE: TStringField
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object qQualidadeIOP_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'IOP_DATA_CONCLUSAO'
      Origin = 'IOP_DATA_CONCLUSAO'
    end
    object qQualidadeIOP_NORDEM: TStringField
      FieldName = 'IOP_NORDEM'
      Origin = 'IOP_NORDEM'
    end
    object qQualidadeCQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object qQualidadeCQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
    object qQualidadeCQP_ESPERADO: TStringField
      FieldName = 'CQP_ESPERADO'
      Origin = 'CQP_ESPERADO'
      Size = 60
    end
    object qQualidadeCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      Size = 70
    end
    object qQualidadeNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Origin = 'NF_NOTANUMBER'
      Size = 6
    end
    object qQualidadePRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      Origin = 'PRDL_DATA_FABRICACAO'
    end
    object qQualidadePRDL_DATA_VALIDADE: TStringField
      FieldName = 'PRDL_DATA_VALIDADE'
      Origin = 'PRDL_DATA_VALIDADE'
      Size = 26
    end
    object qQualidadeIOP_QUANTIDADE: TFMTBCDField
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qQualidadePRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Origin = 'PRD_UNIDESCRI'
      Size = 30
    end
  end
  object qSoma: TFDQuery
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT SUM(iop.IOP_QUANTIDADE * pr.PRD_FATOR_PROD) AS Soma'
      'FROM ORDEMPRODUCAO OP  '
      'JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO )'
      'JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO)'
      'and op.PED_CODIGO = '#39'027796'#39)
    Left = 337
    Top = 184
    object qSomaSOMA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SOMA'
      Origin = 'SOMA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 9
    end
  end
  object frxCertificadoQualidade: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43578.601956828700000000
    ReportOptions.LastChange = 43578.601956828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  razao, endereco, cep, cidade, uf, bairro, fone, email, cnpj, i' +
        'nscr, hoje: string;                                             ' +
        '    '
      'begin                                       '
      '         '
      'end.')
    OnBeginDoc = frxCertificadoQualidadeBeginDoc
    OnGetValue = frxPadraoGetValue
    Left = 820
    Top = 161
    Datasets = <
      item
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
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
      PrintIfEmpty = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 295.362400000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 506.457020000000000000
          Top = 269.126160000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
        end
        object Shape2: TfrxShapeView
          Left = 272.126160000000000000
          Top = 269.126160000000000000
          Width = 234.330860000000000000
          Height = 26.456710000000000000
        end
        object frxDBQualidadeCQUA_PRDL_LOTE: TfrxMemoView
          Left = 561.842920000000000000
          Top = 131.287141530000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_PRDL_LOTE"]')
        end
        object Memo1: TfrxMemoView
          Left = 522.076662310000000000
          Top = 131.450073840000000000
          Width = 36.632367690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lote:')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 196.535433070000000000
          Height = 98.267780000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 244.551330000000000000
          Top = 22.559060000000000000
          Width = 468.661720000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 244.567100000000000000
          Top = 47.559060000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENDERECO] | [BAIRRO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 244.551330000000000000
          Top = 64.133890000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP. [CEP] | [CIDADE] | [UF] | PABX [FONE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          Top = 208.094620000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CERTIFICADO DE AN'#193'LISE')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 23.354360000000000000
          Top = 109.606370000000000000
          Width = 55.530017690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 79.826840000000000000
          Top = 109.443437690000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidade."CLI_RAZAO"]')
        end
        object Memo16: TfrxMemoView
          Left = 553.679987690000000000
          Top = 109.443437690000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            '[frxDBQualidade."NF_NOTANUMBER"]')
        end
        object Memo17: TfrxMemoView
          Left = 522.076662310000000000
          Top = 109.606370000000000000
          Width = 32.852837690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NF.:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 579.679987690000000000
          Top = 152.181200000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Memo.UTF8W = (
            
              '[frxDBQualidade."IOP_QUANTIDADE"] [frxDBQualidade."PRD_UNIDESCRI' +
              '"]')
        end
        object Memo19: TfrxMemoView
          Left = 522.076662310000000000
          Top = 152.344132310000000000
          Width = 55.530017690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Volume:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 83.826840000000000000
          Top = 131.287141530000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 23.354360000000000000
          Top = 131.450073840000000000
          Width = 59.309547690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 102.826840000000000000
          Top = 152.181200000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."PRDL_DATA_FABRICACAO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 23.354360000000000000
          Top = 152.344132310000000000
          Width = 78.207197690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fabrica'#231#227'o:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 317.480520000000000000
          Top = 152.181200000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBQualidade."PRDL_DATA_VALIDADE"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 240.330860000000000000
          Top = 152.344132310000000000
          Width = 74.427667690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Validade:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 514.016231340000000000
          Top = 272.905690000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADOS')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 279.685371340000000000
          Top = 272.905690000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAR'#194'METROS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 272.905690000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'AN'#193'LISE')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 34.015770000000000000
          Top = 269.126160000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQualidade
        DataSetName = 'frxDBQualidade'
        RowCount = 0
        object Shape6: TfrxShapeView
          Left = 506.457020000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
        end
        object Shape5: TfrxShapeView
          Left = 272.126160000000000000
          Width = 234.330860000000000000
          Height = 26.456710000000000000
        end
        object Shape4: TfrxShapeView
          Left = 34.015770000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
        end
        object Memo28: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQualidade."CQUA_RESULTADO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 279.685156540000000000
          Top = 3.779530000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQualidade."CQP_ESPERADO"]')
          ParentFont = False
        end
        object frxDBQualidadePAR_DESCRICAO: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBQualidade."PAR_DESCRICAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 249.448980000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 119.782027690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Os dados neste documento foram preparados conforme procedimento ' +
              'de ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 77.590600000000000000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE], [HOJE]')
          ParentFont = False
          Formats = <
            item
              FormatStr = 'dd de mmmm de yyyy'
              Kind = fkDateTime
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          Left = 151.181200000000000000
          Top = 139.842610000000000000
          Width = 195.372627690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qu'#237'mico Respons'#225'vel:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 350.275820000000000000
          Top = 139.842610000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ruy Carlos Guimar'#227'es')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Top = 158.740260000000000000
          Width = 44.191427690000000000
          Height = 16.571785380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CRQ:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 298.362400000000000000
          Top = 158.740260000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '09400719 - IX Regi'#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 14.779530000000000000
          Top = 18.897650000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQualidadeOLD
          DataSetName = 'frxDBQualidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'amostragem, na data de produ'#231#227'o.')
          ParentFont = False
        end
      end
    end
  end
end
