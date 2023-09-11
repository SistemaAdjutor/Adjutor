inherited frmParamResultados: TfrmParamResultados
  Caption = 'Resultados de inspe'#231#227'o de produ'#231#227'o'
  ClientHeight = 448
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 416
    ExplicitTop = 416
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 903
    Height = 416
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
      object cxGrid1DBTableView1EOR_SEQ: TcxGridDBColumn
        Caption = 'Sequencia'
        DataBinding.FieldName = 'EOR_SEQ'
      end
      object cxGrid1DBTableView1EOR_NOME: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'EOR_NOME'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  inherited cdsEdit: TFDQuery
    OnNewRecord = cdsEditNewRecord
    SQL.Strings = (
      
        ' SELECT EOR_CODIGO, EOR_SEQ, eop.OPE_CODIGO, EOR_NOME, op.OPE_NO' +
        'ME'
      
        'FROM MODLESPE_OPERACAO_RESUL eop JOIN OPERACOES op ON (op.OPE_CO' +
        'DIGO = eop.OPE_CODIGO)'
      'WHERE eop.OPE_CODIGO = :ID'
      'ORDER BY EOR_SEQ ')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditEOR_CODIGO: TIntegerField
      FieldName = 'EOR_CODIGO'
      Origin = 'EOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditEOR_SEQ: TIntegerField
      FieldName = 'EOR_SEQ'
      Origin = 'EOR_SEQ'
    end
    object cdsEditOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      Required = True
    end
    object cdsEditEOR_NOME: TStringField
      FieldName = 'EOR_NOME'
      Origin = 'EOR_NOME'
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
  object JvErrorIndicator2: TJvErrorIndicator
    BlinkStyle = ebsAlwaysBlink
    ImageIndex = 0
    Left = 321
    Top = 362
  end
end
