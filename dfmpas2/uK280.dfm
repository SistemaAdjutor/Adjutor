inherited frmK280: TfrmK280
  Caption = 'Bloco K280'
  ClientWidth = 782
  ExplicitWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Width = 782
    ExplicitWidth = 782
    inherited btnOk: TSpeedButton
      Left = 534
      ExplicitLeft = 534
    end
    inherited btnCancelar: TSpeedButton
      Left = 659
      ExplicitLeft = 659
    end
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 140
      Height = 13
      Caption = '[INS/INSERT] - Novo registro'
    end
  end
  object cxgrd1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 782
    Height = 419
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Hint = 'Excluir corre'#231#227'o k280'
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Enabled = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      OnCellClick = cxgrd1DBBandedTableView1CellClick
      DataController.DataSource = dsEdits
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Refer'#234'ncia'
        end
        item
          Caption = 'Produto'
          Width = 390
        end
        item
          Caption = 'Quantidade'
          Width = 180
        end>
      object cxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn
        RepositoryItem = cxEditRepository1ButtonItem1
        Options.ShowEditButtons = isebAlways
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1REF_ANO: TcxGridDBBandedColumn
        Caption = 'Ano'
        DataBinding.FieldName = 'REF_ANO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1REF_MES: TcxGridDBBandedColumn
        Caption = 'M'#234's'
        DataBinding.FieldName = 'REF_MES'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn
        Caption = 'COD SPED'
        DataBinding.FieldName = 'PRD_CODIGO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxgrd1DBBandedTableView1PRD_CODIGOPropertiesButtonClick
        Width = 72
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxgrd1DBBandedTableView1PRD_REFERPropertiesButtonClick
        Width = 92
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'PRD_DESCRI'
        Width = 225
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrd1DBBandedTableView1QTDE_DIF: TcxGridDBBandedColumn
        Caption = 'Quantidade diferente'
        DataBinding.FieldName = 'QTDE_DIF'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrd1DBBandedTableView1
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 96
    Top = 88
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 344
    Top = 216
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 232
    Top = 224
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=D:\jobdados\burda\burda2702.fdb'
      'User_Name=sysdba'
      'Password=novirw#'
      'CharacterSet=ISO8859_1'
      'Protocol=TCPIP'
      'Server=192.168.0.250'
      'DriverID=FB')
  end
  inherited dsEdits: TDataSource
    Left = 653
    Top = 71
  end
  inherited cdsEdit: TFDQuery
    OnNewRecord = cdsEditNewRecord
    Indexes = <
      item
        Active = True
        Name = 'idxUnico'
        Fields = 'EMP_CODIGO;ANO;MES;PRD_CODIGO;REF_ANO;REF_MES'
        Options = [soUnique]
      end>
    IndexesActive = False
    SQL.Strings = (
      
        'SELECT KSP_CODIGO, K.emp_codigo , ano, mes, ref_ano, REF_MES,QTD' +
        'E_DECLA,QTDE_DIF,k.PRD_CODIGO,PR.PRD_REFER, PR.PRD_DESCRI FROM S' +
        'PED_K280 K'
      'JOIN PRD0000 PR ON (PR.PRD_CODIGO = K.PRD_CODIGO)'
      'WHERE K.EMP_CODIGO = :EMP_CODIGO'
      '  AND ANO = :ANO'
      '  AND MES = :MES')
    Left = 499
    Top = 72
    ParamData = <
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = '001'
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '2020'
      end
      item
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
        Value = '2'
      end>
    object cdsEditKSP_CODIGO: TIntegerField
      FieldName = 'KSP_CODIGO'
      Origin = 'KSP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEditANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditREF_ANO: TIntegerField
      FieldName = 'REF_ANO'
      Origin = 'REF_ANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditREF_MES: TIntegerField
      FieldName = 'REF_MES'
      Origin = 'REF_MES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditQTDE_DECLA: TFMTBCDField
      FieldName = 'QTDE_DECLA'
      Origin = 'QTDE_DECLA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cdsEditQTDE_DIF: TFMTBCDField
      FieldName = 'QTDE_DIF'
      Origin = 'QTDE_DIF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEditPRD_REFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsEditPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 260
    Top = 289
    PixelsPerInch = 96
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = Action1
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
          Kind = bkGlyph
        end
        item
          Action = actdelete
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
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 152
    object Action1: TAction
      Caption = 'ActInserir'
      OnExecute = Action1Execute
    end
    object actdelete: TAction
      Caption = 'actdelete'
      OnExecute = actdeleteExecute
    end
  end
end
