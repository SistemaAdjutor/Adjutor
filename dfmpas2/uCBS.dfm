inherited frmCBS: TfrmCBS
  Caption = 'Contribui'#231#227'o sobre Bens e Servi'#231'os'
  ClientHeight = 612
  ClientWidth = 1035
  OnActivate = FormActivate
  ExplicitWidth = 1051
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 580
    Width = 1035
    ExplicitTop = 580
    ExplicitWidth = 1035
    inherited btnOk: TSpeedButton
      Left = 787
      ExplicitLeft = 536
    end
    inherited btnCancelar: TSpeedButton
      Left = 912
      ExplicitLeft = 661
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 1035
    Height = 580
    Align = alClient
    TabOrder = 1
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
      object cxGrid1DBTableView1CBS_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CBS_CODIGO'
        Width = 123
      end
      object cxGrid1DBTableView1CBS_DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'CBS_DESCRICAO'
        Width = 444
      end
      object cxGrid1DBTableView1CBS_ALIQUOTA: TcxGridDBColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'CBS_ALIQUOTA'
        Width = 163
      end
      object cxGrid1DBTableView1CBS_CST: TcxGridDBColumn
        Caption = 'CST'
        DataBinding.FieldName = 'CBS_CST'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'CST_CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CST_DESCRICAO'
          end>
        Properties.ListSource = dsCST
        Width = 145
      end
      object cxGrid1DBTableView1CBS_CLASS_TRIB: TcxGridDBColumn
        Caption = 'Classifica'#231#227'o Fiscal'
        DataBinding.FieldName = 'CBS_CLASS_TRIB'
        Width = 144
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited dbConn: TFDConnection
    TxOptions.AutoStop = True
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CBS ORDER BY CBS_CODIGO')
  end
  object qCST: TFDQuery
    Connection = dbConn
    Left = 568
    Top = 200
  end
  object dsCST: TDataSource
    DataSet = qCST
    Left = 624
    Top = 200
  end
end
