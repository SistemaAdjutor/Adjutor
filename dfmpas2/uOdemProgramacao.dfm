inherited frmOrdemProgramacao: TfrmOrdemProgramacao
  Caption = 'Ordem de produ'#231#227'o programada'
  ClientHeight = 307
  ClientWidth = 694
  ExplicitWidth = 710
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 275
    Width = 694
    ExplicitTop = 275
    ExplicitWidth = 694
    inherited btnOk: TSpeedButton
      Left = 446
      ExplicitLeft = 142
    end
    inherited btnCancelar: TSpeedButton
      Left = 571
      ExplicitLeft = 267
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 694
    Height = 275
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEdits
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '000.00#'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      object cxGrid1DBTableView1OPA_SEQUENCIAL: TcxGridDBColumn
        Caption = 'Sequ'#234'ncia'
        DataBinding.FieldName = 'OPA_SEQUENCIAL'
        Options.Editing = False
        Options.Filtering = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1OPA_DATA_ENTREGA: TcxGridDBColumn
        Caption = 'Data entrega'
        DataBinding.FieldName = 'OPA_DATA_ENTREGA'
        Options.Editing = False
        Width = 132
      end
      object cxGrid1DBTableView1OPA_DATA_AJUSTADA: TcxGridDBColumn
        Caption = 'Data ajustada'
        DataBinding.FieldName = 'OPA_DATA_AJUSTADA'
        Width = 98
      end
      object cxGrid1DBTableView1OPA_QTDE_PRODUZIR: TcxGridDBColumn
        Caption = 'Quantidade produzir'
        DataBinding.FieldName = 'OPA_QTDE_PRODUZIR'
      end
      object cxGrid1DBTableView1OPA_DATA_FABRICACAO: TcxGridDBColumn
        Caption = 'Data fabrica'#231#227'o'
        DataBinding.FieldName = 'OPA_DATA_FABRICACAO'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1OPA_DIAS_CORRIDOS: TcxGridDBColumn
        Caption = 'Dias corridos'
        DataBinding.FieldName = 'OPA_DIAS_CORRIDOS'
        Options.Editing = False
        Width = 73
      end
      object cxGrid1DBTableView1OPA_STATUS: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'OPA_STATUS'
        Options.Editing = False
        Width = 89
      end
      object cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PED_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'EMP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DEP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1OPA_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'OPA_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 400
    Top = 104
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 256
    Top = 104
  end
  inherited dsEdits: TDataSource
    Left = 173
    Top = 103
  end
  inherited cdsEdit: TFDQuery
    OnNewRecord = cdsEditNewRecord
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'seq'
        Fields = 'OPA_SEQUENCIAL'
      end>
    IndexName = 'seq'
    SQL.Strings = (
      
        'SELECT OPA_CODIGO, OPA_SEQUENCIAL, PED_CODIGO, EMP_CODIGO, DEP_C' +
        'ODIGO, PRD_CODIGO, OPA_DATA_ENTREGA,OPA_DATA_FABRICACAO, OPA_DAT' +
        'A_AJUSTADA,OPA_DIAS_CORRIDOS,'
      'OPA_STATUS, OPA_QTDE_PRODUZIR, IOP_CODIGO'
      'FROM ORDEM_PROGRAMADA'
      'WHERE DEP_CODIGO =:DEP_CODIGO')
    Left = 123
    Top = 104
    ParamData = <
      item
        Name = 'DEP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditOPA_CODIGO: TIntegerField
      FieldName = 'OPA_CODIGO'
      Origin = 'OPA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditOPA_SEQUENCIAL: TIntegerField
      FieldName = 'OPA_SEQUENCIAL'
      Origin = 'OPA_SEQUENCIAL'
      Required = True
    end
    object cdsEditPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object cdsEditDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DEP_CODIGO'
      Required = True
    end
    object cdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsEditOPA_DATA_ENTREGA: TSQLTimeStampField
      FieldName = 'OPA_DATA_ENTREGA'
      Origin = 'OPA_DATA_ENTREGA'
      Required = True
    end
    object cdsEditOPA_QTDE_PRODUZIR: TFMTBCDField
      FieldName = 'OPA_QTDE_PRODUZIR'
      Origin = 'OPA_QTDE_PRODUZIR'
      Precision = 18
      Size = 5
    end
    object cdsEditIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsEditOPA_DATA_FABRICACAO: TSQLTimeStampField
      FieldName = 'OPA_DATA_FABRICACAO'
      Origin = 'OPA_DATA_FABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_DATA_AJUSTADA: TSQLTimeStampField
      FieldName = 'OPA_DATA_AJUSTADA'
      Origin = 'OPA_DATA_AJUSTADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_DIAS_CORRIDOS: TIntegerField
      FieldName = 'OPA_DIAS_CORRIDOS'
      Origin = 'OPA_DIAS_CORRIDOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_STATUS: TStringField
      FieldName = 'OPA_STATUS'
      Origin = 'OPA_STATUS'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsEditOPA_STATUSGetText
      Size = 1
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 19
    Top = 128
  end
  inherited dsEditDetail: TDataSource
    Left = 165
    Top = 167
  end
  object cxEditRepository1: TcxEditRepository
    Left = 52
    Top = 164
    PixelsPerInch = 96
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D460300000000000036000000280000000E0000000E000000010020000000
            000000000000C40E0000C40E0000000000000000000000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000000000FF000000FF000000FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            80000080800000808000000000FF000000FF000000FF00808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000FF000000FF000000FF008080000080800000808000008080000080
            8000008080000080800000808000000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF0080800000808000008080000080
            800000808000000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF00808000008080000080800000808000008080000000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF008080000080800000808000008080000080800000808000008080000080
            8000000000FF000000FF000000FF008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000000000FF0000
            00FF000000FF0080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000000000FF000000FF000000FF0080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000}
          Hint = 'Adicionar'
          Kind = bkGlyph
        end
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF000303
            34FF020231FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000028FF000028FFFF00FF00FF00FF00FF00FF00070742FF0101
            89FF01018BFF030336FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000028FF000081FF000086FF000028FFFF00FF000F0F53FF01018CFF0202
            90FF020290FF020290FF05053CFFFF00FF00FF00FF00FF00FF00FF00FF000101
            2CFF000082FF000086FF000084FF000086FF000028FF151460FF010190FF0202
            93FF030392FF030393FF030393FF080842FFFF00FF00FF00FF00040337FF0000
            87FF000088FF000083FF000086FF000082FF000028FFFF00FF0019186BFF0202
            95FF030397FF040497FF030397FF030396FF0B0A4AFF090945FF02028CFF0101
            8EFF000088FF000088FF000083FF01012FFFFF00FF00FF00FF00FF00FF001D1D
            74FF03039AFF04049CFF05059AFF04049AFF040497FF030395FF030393FF0202
            8FFF01018EFF000088FF05053BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0022227FFF05059FFF05059FFF05059DFF05059CFF040498FF030396FF0303
            93FF02028CFF0B0B4AFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00272789FF0404A3FF0606A0FF06069EFF05059CFF040498FF0303
            95FF13135DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF002E2F9AFF0A0AA9FF0707A4FF0505A0FF04049DFF04049AFF0303
            96FF1A196DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF003A3AB1FF2D2DBCFF2B2BBAFF2222B4FF1616ACFF0E0EA5FF07079EFF0303
            98FF020293FF1E1F76FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF004544
            C7FF2B2BBFFF2D2DBDFF2D2DBCFF2D2DBAFF2D2DB8FF2B2BB6FF2424AFFF1D1D
            A7FF1616A1FF11119CFF232381FFFF00FF00FF00FF00FF00FF004F4FDCFF2B2B
            C0FF2D2DBFFF2E2EC0FF2C2CBCFF2D2DBBFF3E3EB8FF3A3BB2FF2828B1FF2828
            ADFF2626AAFF2525A7FF2323A5FF28288BFFFF00FF005656EAFF2B2BBBFF2C2C
            BCFF2E2EC0FF2D2DBDFF2D2DBDFF4849CEFFFF00FF00FF00FF004040BCFF2626
            ADFF2323A9FF2323A5FF2121A3FF2020A0FF2D2D96FF5858EEFF2D2DBCFF2B2B
            BAFF2C2CBBFF2D2DBDFF5151E1FFFF00FF00FF00FF00FF00FF00FF00FF004444
            C6FF2323A9FF2222A5FF2020A3FF1F1F9DFF3535A6FFFF00FF005858EEFF2E2E
            BDFF2D2DBAFF5858EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF004849CFFF2222A4FF2020A0FF4041BDFFFF00FF00FF00FF00FF00FF005858
            EEFF5858EEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF004D4DD8FF4A4AD3FFFF00FF00FF00FF00}
          Hint = 'Excluir'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
end
