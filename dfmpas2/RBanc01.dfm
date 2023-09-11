object RBRelBanco01: TRBRelBanco01
  Left = 175
  Top = 148
  Width = 228
  Height = 144
  Caption = 'RelBanco01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsRBRelBanc01
    UserName = 'DBPipeline1'
    Left = 8
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'BAN_CODIGO'
      FieldName = 'BAN_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'BAN_APELIDO'
      FieldName = 'BAN_APELIDO'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'BAN_FONE'
      FieldName = 'BAN_FONE'
      FieldLength = 11
      DisplayWidth = 11
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'BAN_CONTATO'
      FieldName = 'BAN_CONTATO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 40
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object LabelEmpresa: TppLabel
        UserName = 'LabelEmpresa'
        Caption = 'LabelEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 0
        mmWidth = 32808
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 0
        mmWidth = 16933
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 4763
        mmWidth = 1852
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 157163
        mmTop = 5027
        mmWidth = 12171
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 265
        mmTop = 9260
        mmWidth = 197380
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Data.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 0
        mmWidth = 9454
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'C'#243'd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5159
        mmTop = 0
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 0
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 104246
        mmTop = 0
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 0
        mmWidth = 11906
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'BAN_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'BAN_APELIDO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 0
        mmWidth = 80698
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'BAN_FONE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 103981
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'BAN_CONTATO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 151077
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
  end
  object SqlCdsRelBanc01: TSQLClientDataSet
    Active = True
    CommandText = 
      'select BAN_CODIGO, BAN_APELIDO, BAN_FONE, BAN_CONTATO from BAN00' +
      '00'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 72
    object SqlCdsRelBanc01BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsRelBanc01BAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsRelBanc01BAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object SqlCdsRelBanc01BAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
  end
  object DsRBRelBanc01: TDataSource
    DataSet = SqlCdsRelBanc01
    Left = 104
  end
end
