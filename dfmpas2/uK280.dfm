inherited frmK280: TfrmK280
  Caption = 'Bloco K280'
  ClientWidth = 782
  ExplicitWidth = 790
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
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Action = Action1
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
