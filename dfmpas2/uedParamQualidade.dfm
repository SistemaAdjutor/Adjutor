inherited frmParametrosQualidade: TfrmParametrosQualidade
  Caption = 'Especifica'#231#245'es da Qualidade'
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 41
    Width = 903
    Height = 378
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Visible = True
      DataController.DataSource = dsEdits
      DataController.MultiThreadedOptions.Filtering = bFalse
      DataController.MultiThreadedOptions.Sorting = bTrue
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1EOP_SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'EOP_SEQ'
      end
      object cxGrid1DBTableView1EOP_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'EOP_NOME'
      end
      object cxGrid1DBTableView1EOP_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'EOP_DESCRICAO'
        Width = 445
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object poperacoes: TPanel [2]
    Left = 0
    Top = 0
    Width = 903
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 88
      Top = 14
      Width = 216
      Height = 13
      Caption = '* Para quebrar linha no relat'#243'rio colocar [QL]'
    end
    object btnAscII: TButton
      Left = 616
      Top = 8
      Width = 195
      Height = 25
      Caption = 'Caracteres especiais'
      TabOrder = 0
      OnClick = btnAscIIClick
    end
  end
  inherited cdsEdit: TFDQuery
    OnNewRecord = cdsEditNewRecord
    SQL.Strings = (
      
        'SELECT eop_codigo , EOP_SEQ ,  eop.OPE_CODIGO , eop_nome, eop_De' +
        'scricao, op.OPE_NOME'
      
        'FROM MODL_ESPECIFICACOES_OPERACAO eop JOIN OPERACOES op ON (op.O' +
        'PE_CODIGO = eop.OPE_CODIGO)'
      'WHERE eop.OPE_CODIGO = :ID'
      'ORDER BY EOP_SEQ')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditEOP_CODIGO: TIntegerField
      DisplayLabel = 'codigo'
      FieldName = 'EOP_CODIGO'
      Origin = 'EOP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEditEOP_SEQ: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'EOP_SEQ'
      Origin = 'EOP_SEQ'
      Required = True
    end
    object cdsEditOPE_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      Required = True
    end
    object cdsEditEOP_NOME: TStringField
      DisplayLabel = 'Parametro'
      FieldName = 'EOP_NOME'
      Origin = 'EOP_NOME'
      Size = 30
    end
    object cdsEditEOP_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EOP_DESCRICAO'
      Origin = 'EOP_DESCRICAO'
      Size = 100
    end
    object cdsEditOPE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  inherited JvValidators1: TJvValidators
    Left = 121
    Top = 330
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 176
    Top = 328
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 233
    Top = 322
  end
end
