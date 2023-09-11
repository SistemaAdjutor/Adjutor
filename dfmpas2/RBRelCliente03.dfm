object RelRBCliente03: TRelRBCliente03
  Left = 356
  Top = 211
  Width = 175
  Height = 94
  Caption = 'RelRBCliente03'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppDB03: TppDBPipeline
    DataSource = FormGImpClie.DsClienteRB
    UserName = 'DB03'
  end
  object ppReport03: TppReport
    AutoStop = False
    DataPipeline = ppDB03
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELCLIENTES04.rtm'
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
    Left = 32
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB03'
    object pp03HeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 3175
        mmWidth = 205000
        BandType = 0
      end
      object LBL_03_EMPRESA: TppLabel
        UserName = 'LBL_03_EMPRESA'
        Caption = 'LBL_03_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 3969
        mmWidth = 29775
        BandType = 0
      end
      object LBL_03_LTITULO1: TppLabel
        UserName = 'LBL_03_LTITULO1'
        Caption = 'LBL_03_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 8731
        mmWidth = 23142
        BandType = 0
      end
      object LBL_03_TITULO2: TppLabel
        UserName = 'LBL_03_TITULO2'
        Caption = 'LBL_03_TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14023
        mmWidth = 21590
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 18521
        mmWidth = 205000
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
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 3969
        mmWidth = 26194
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
        mmHeight = 3704
        mmLeft = 190765
        mmTop = 14023
        mmWidth = 14023
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
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19050
        mmWidth = 8731
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
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 19050
        mmWidth = 11377
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
        mmHeight = 3704
        mmLeft = 83608
        mmTop = 19050
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 19050
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 19050
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 19050
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 19050
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 19050
        mmWidth = 4498
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 23018
        mmWidth = 205000
        BandType = 0
      end
    end
    object pp03DetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 42069
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 0
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 83608
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CLI_CEP'
        DataPipeline = ppDB03
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CLI_UF'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CLI_FONE'
        DataPipeline = ppDB03
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CLI_FAX'
        DataPipeline = ppDB03
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB03'
        mmHeight = 3704
        mmLeft = 184150
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
    end
    object pp03SummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 794
        mmWidth = 38894
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB03'
        mmHeight = 3440
        mmLeft = 41010
        mmTop = 794
        mmWidth = 20373
        BandType = 7
      end
    end
  end
end
