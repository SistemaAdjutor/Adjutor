inherited frmIBS: TfrmIBS
  Caption = 'Imposto sobre Bens e Servi'#231'os'
  ClientHeight = 561
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 529
    Width = 784
    inherited btnOk: TSpeedButton
      Left = 536
    end
    inherited btnCancelar: TSpeedButton
      Left = 661
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 784
    Height = 529
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    ExplicitTop = 49
    ExplicitWidth = 763
    ExplicitHeight = 370
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
      object cxGrid1DBTableView1IBS_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'IBS_CODIGO'
        Width = 118
      end
      object cxGrid1DBTableView1IBS_DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'IBS_DESCRICAO'
        Width = 365
      end
      object cxGrid1DBTableView1IBS_ALIQUOTA: TcxGridDBColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'IBS_ALIQUOTA'
        Width = 52
      end
      object cxGrid1DBTableView1CID_CODIGO: TcxGridDBColumn
        Caption = 'Munic'#237'pio'
        DataBinding.FieldName = 'CID_CODIGO'
        Width = 233
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited cdsEdit: TFDQuery
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IBS ORDER BY IBS_CODIGO')
  end
end
