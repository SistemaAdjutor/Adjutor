inherited frmIBS: TfrmIBS
  Caption = 'Imposto sobre Bens e Servi'#231'os'
  ClientHeight = 561
  ClientWidth = 784
  OnActivate = FormActivate
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 529
    Width = 784
    ExplicitTop = 529
    ExplicitWidth = 784
    inherited btnOk: TSpeedButton
      Left = 536
      ExplicitLeft = 536
    end
    inherited btnCancelar: TSpeedButton
      Left = 661
      ExplicitLeft = 661
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
        Width = 109
      end
      object cxGrid1DBTableView1IBS_DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'IBS_DESCRICAO'
        Width = 256
      end
      object cxGrid1DBTableView1IBS_ALIQUOTA: TcxGridDBColumn
        Caption = 'Al'#237'quota Municipal'
        DataBinding.FieldName = 'IBS_ALIQUOTA'
        Width = 62
      end
      object cxGrid1DBTableView1CID_CODIGO: TcxGridDBColumn
        Caption = 'Munic'#237'pio'
        DataBinding.FieldName = 'CID_CODIGO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CaseSensitiveSearch = True
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownRows = 10
        Properties.DropDownSizeable = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CID_CODIGO'
        Properties.ListColumns = <
          item
            Caption = 'Escolha o Munic'#237'pio'
            FieldName = 'CID_CIDADE'
          end>
        Properties.ListSource = dsCidade
        Width = 259
      end
      object cxGrid1DBTableView1IBS_ALIQUOTA_UF: TcxGridDBColumn
        Caption = 'Al'#237'quota da UF'
        DataBinding.FieldName = 'IBS_ALIQUOTA_UF'
        Width = 82
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Top = 24
  end
  inherited dbConn: TFDConnection
    TxOptions.AutoStop = True
  end
  inherited cdsEdit: TFDQuery
    BeforeOpen = cdsEditBeforeOpen
    SQL.Strings = (
      'SELECT * FROM IBS ORDER BY IBS_CODIGO')
  end
  object qCidade: TFDQuery
    Connection = dbConn
    Left = 568
    Top = 144
  end
  object dsCidade: TDataSource
    DataSet = qCidade
    Left = 616
    Top = 144
  end
end
