object RelRBCliente00: TRelRBCliente00
  Left = 290
  Top = 242
  Width = 151
  Height = 65
  Caption = 'RbRelCli00'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELCLIENTES01.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.Visible = True
    Left = 40
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3175
        mmTop = 3175
        mmWidth = 189442
        BandType = 0
      end
      object LABEL_EMPRESA: TppLabel
        UserName = 'LABEL_EMPRESA'
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 3969
        mmWidth = 29210
        BandType = 0
      end
      object LTITULO1: TppLabel
        UserName = 'LTITULO1'
        Caption = 'LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 8996
        mmWidth = 14817
        BandType = 0
      end
      object LTITULO2: TppLabel
        UserName = 'LTITULO2'
        Caption = 'LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 3175
        mmTop = 14023
        mmWidth = 14817
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3175
        mmTop = 18521
        mmWidth = 189442
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 2910
        mmTop = 19050
        mmWidth = 8043
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 73290
        mmTop = 19050
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 136261
        mmTop = 19050
        mmWidth = 7338
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 19050
        mmWidth = 3387
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3175
        mmTop = 22754
        mmWidth = 189442
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 173832
        mmTop = 19050
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 164836
        mmTop = 3969
        mmWidth = 26988
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 177007
        mmTop = 14023
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3528
        mmLeft = 5027
        mmTop = 0
        mmWidth = 67733
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 4763
        mmTop = 3969
        mmWidth = 9454
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 73290
        mmTop = 0
        mmWidth = 62706
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 136261
        mmTop = 0
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CLI_UF'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 167217
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 19315
        mmTop = 3969
        mmWidth = 39423
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 60061
        mmTop = 3969
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CLI_FONE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 69586
        mmTop = 3969
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 92604
        mmTop = 3969
        mmWidth = 4939
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CLI_FAX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 100013
        mmTop = 3969
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Ultima Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 124884
        mmTop = 3969
        mmWidth = 24871
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3175
        mmTop = 7937
        mmWidth = 189442
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CLI_DTULTCOM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 150284
        mmTop = 3969
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 173832
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 3440
        mmTop = 529
        mmWidth = 39952
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 58208
        mmTop = 529
        mmWidth = 14288
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_CIDADE'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3387
          mmLeft = 4498
          mmTop = 265
          mmWidth = 45773
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'CLI_UF'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3387
          mmLeft = 50536
          mmTop = 265
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CLI_CIDADE'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = FormGImpClie.DsClienteRB
    UserName = 'DBPipeline1'
    Left = 8
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CLI_DTINATIVO'
      FieldName = 'CLI_DTINATIVO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CLI_MOTIVO'
      FieldName = 'CLI_MOTIVO'
      FieldLength = 35
      DisplayWidth = 35
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 45
      DisplayWidth = 45
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 45
      DisplayWidth = 45
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'CLI_CXPOST'
      FieldName = 'CLI_CXPOST'
      FieldLength = 6
      DisplayWidth = 6
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 35
      DisplayWidth = 35
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 35
      DisplayWidth = 35
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 11
      DisplayWidth = 11
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 11
      DisplayWidth = 11
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'TRP_CODIGO'
      FieldName = 'TRP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'CLI_INSC'
      FieldName = 'CLI_INSC'
      FieldLength = 18
      DisplayWidth = 18
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'CLI_PESSOA'
      FieldName = 'CLI_PESSOA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 15
      DisplayWidth = 15
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'CLI_DTINICIO'
      FieldName = 'CLI_DTINICIO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'CLI_ENDENTR'
      FieldName = 'CLI_ENDENTR'
      FieldLength = 45
      DisplayWidth = 45
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'CLI_CIDENTR'
      FieldName = 'CLI_CIDENTR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'CLI_CEPENTR'
      FieldName = 'CLI_CEPENTR'
      FieldLength = 8
      DisplayWidth = 8
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'CLI_FONENTR'
      FieldName = 'CLI_FONENTR'
      FieldLength = 11
      DisplayWidth = 11
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'CLI_ENDFAT'
      FieldName = 'CLI_ENDFAT'
      FieldLength = 45
      DisplayWidth = 45
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'CLI_CIDFAT'
      FieldName = 'CLI_CIDFAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'CLI_CEPFAT'
      FieldName = 'CLI_CEPFAT'
      FieldLength = 8
      DisplayWidth = 8
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'CLI_UFENTR'
      FieldName = 'CLI_UFENTR'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'CLI_UFFAT'
      FieldName = 'CLI_UFFAT'
      FieldLength = 2
      DisplayWidth = 2
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'CLI_OBS'
      FieldName = 'CLI_OBS'
      FieldLength = 160
      DisplayWidth = 160
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'PRECOTOTAL_CC'
      FieldName = 'PRECOTOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 38
    end
  end
end
