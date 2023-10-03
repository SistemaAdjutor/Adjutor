inherited frmQualidadeOperacao: TfrmQualidadeOperacao
  Caption = 'Qualidade de produ'#231#227'o'
  ClientWidth = 763
  ExplicitWidth = 779
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Width = 763
    ExplicitWidth = 763
    inherited btnOk: TSpeedButton
      Left = 515
      ExplicitLeft = 515
    end
    inherited btnCancelar: TSpeedButton
      Left = 640
      ExplicitLeft = 640
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 763
    Height = 49
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Panel1'
    TabOrder = 1
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 49
    Width = 763
    Height = 370
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Width = 4
      Navigator.Visible = True
      DataController.DataSource = dsEdits
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NavigatorOffset = 40
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 128
    Top = 96
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 264
    Top = 152
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 224
    Top = 112
  end
  inherited dsEdits: TDataSource
    DataSet = cdsEspecificacao
    Left = 413
    Top = 215
  end
  inherited cdsEdit: TFDQuery
    Left = 27
    Top = 152
  end
  inherited cdsEditDetail: TFDQuery
    Left = 179
    Top = 240
  end
  inherited dsEditDetail: TDataSource
    Left = 109
    Top = 295
  end
  object qParametros: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM MODL_ESPECIFICACOES_OPERACAO'
      'WHERE OPE_CODIGO = :OPE_CODIGO'
      'ORDER BY EOP_SEQ ')
    Left = 43
    Top = 310
    ParamData = <
      item
        Name = 'OPE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qParametrosEOP_CODIGO: TIntegerField
      FieldName = 'EOP_CODIGO'
      Origin = 'EOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qParametrosEOP_SEQ: TIntegerField
      FieldName = 'EOP_SEQ'
      Origin = 'EOP_SEQ'
      Required = True
    end
    object qParametrosOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      Required = True
    end
    object qParametrosEOP_NOME: TStringField
      FieldName = 'EOP_NOME'
      Origin = 'EOP_NOME'
      Size = 30
    end
    object qParametrosEOP_DESCRICAO: TStringField
      FieldName = 'EOP_DESCRICAO'
      Origin = 'EOP_DESCRICAO'
      Size = 100
    end
  end
  object qqualidade: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    CachedUpdates = True
    AggregatesActive = True
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT  pop.POP_CODIGO, QPR_CODIGO, eop.eop_codigo , EOP_SEQ ,  ' +
        'eop.OPE_CODIGO ,'
      
        'eop_nome, eop_Descricao, op.OPE_NOME, qp.qpr_sequencia, qp.qpr_v' +
        'alor'
      'FROM MODL_ESPECIFICACOES_OPERACAO eop '
      'JOIN OPERACOES op ON (op.OPE_CODIGO = eop.OPE_CODIGO)'
      
        'JOIN MODL_QUALIDADE_PRODUCAO qp ON (qp.EOP_CODIGO = eop.EOP_CODI' +
        'GO)'
      
        'JOIN MODL_PROCESSOS_OPERACOES pop ON (pop.OPE_CODIGO = op.OPE_CO' +
        'DIGO AND pop.PRO_CODIGO = qp.PRO_CODIGO)'
      
        'WHERE eop.OPE_CODIGO = :OPE_CODIGO AND qp.pro_codigo = :pro_codi' +
        'go'
      'order by EOP_SEQ ')
    Left = 155
    Top = 198
    ParamData = <
      item
        Name = 'OPE_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qqualidadeEOP_CODIGO: TIntegerField
      FieldName = 'EOP_CODIGO'
      Origin = 'EOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qqualidadeEOP_SEQ: TIntegerField
      FieldName = 'EOP_SEQ'
      Origin = 'EOP_SEQ'
      Required = True
    end
    object qqualidadeOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      Required = True
    end
    object qqualidadeEOP_NOME: TStringField
      FieldName = 'EOP_NOME'
      Origin = 'EOP_NOME'
      Size = 30
    end
    object qqualidadeEOP_DESCRICAO: TStringField
      FieldName = 'EOP_DESCRICAO'
      Origin = 'EOP_DESCRICAO'
      Size = 100
    end
    object qqualidadeOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qqualidadeQPR_SEQUENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QPR_SEQUENCIA'
      Origin = 'QPR_SEQUENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qqualidadeQPR_VALOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QPR_VALOR'
      Origin = 'QPR_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qqualidadeQPR_CODIGO: TIntegerField
      FieldName = 'QPR_CODIGO'
      Origin = 'QPR_CODIGO'
      Required = True
    end
    object qqualidadePOP_CODIGO: TIntegerField
      FieldName = 'POP_CODIGO'
      Origin = 'POP_CODIGO'
      Required = True
    end
    object qqualidadeMAXSEQ: TAggregateField
      FieldName = 'MAXSEQ'
      Active = True
      DisplayName = ''
      Expression = 'MAX(qpr_sequencia)'
    end
  end
  object cdsEspecificacao: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsEspecificacaoNewRecord
    Left = 496
    Top = 206
  end
end
