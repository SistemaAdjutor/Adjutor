object FormGimpFichas: TFormGimpFichas
  Left = 97
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o do Hist'#243'rico do Cliente'
  ClientHeight = 319
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 143
    Top = 8
    Width = 185
    Height = 35
    Caption = '1 - Ficha &Cadastro/Financeira   '
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 143
    Top = 53
    Width = 185
    Height = 35
    Caption = '2 - Ficha de Produtos Vendidos'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 143
    Top = 98
    Width = 185
    Height = 35
    Caption = 'Ambas (Fichas 1 e 2)'
    OnClick = SpeedButton3Click
  end
  object BitConfig: TBitBtn
    Left = 7
    Top = 98
    Width = 123
    Height = 35
    Cursor = crHandPoint
    Caption = '&Conf. de Impress'#227'o'
    TabOrder = 0
    OnClick = BitConfigClick
  end
  object GroupBox3: TGroupBox
    Left = 7
    Top = 4
    Width = 123
    Height = 87
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadVideo: TRadioButton
      Left = 13
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadImpressora: TRadioButton
      Left = 13
      Top = 43
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadArqTexto: TRadioButton
      Left = 13
      Top = 64
      Width = 58
      Height = 17
      Caption = '&Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Bit_Sair: TBitBtn
    Left = 228
    Top = 151
    Width = 100
    Height = 35
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = Bit_SairClick
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 448
    Top = 184
  end
  object SqlCdsRel05: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'C1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_CGC,'#13#10'C1.CLI_ENDE' +
      'RE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_CEP,'#13#10'C1' +
      '.CLI_CXPOST,'#13#10'C1.CLI_INSC,'#13#10'C1.CLI_FONE,'#13#10'C1.CLI_FAX,'#13#10'C1.CLI_DT' +
      'ULTCOM,'#13#10'C1.CLI_CONTATO,'#13#10'C1.CLI_FUNCONT,'#13#10'C1.CLI_EMAIL,'#13#10'C1.CLI' +
      '_HOME,'#13#10'C1.CLI_ENDFAT,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CE' +
      'PFAT,'#13#10'C1.CLI_ENDENTR,'#13#10'C1.CLI_FONENTR,'#13#10'C1.CLI_CIDENTR,'#13#10'C1.CLI' +
      '_CEPENTR,'#13#10'C1.CLI_UFENTR,'#13#10'C1.REP_CODIGO,'#13#10'R1.REP_NOME'#13#10'FROM CLI' +
      '0000 C1'#13#10'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO)' +
      #13#10'WHERE C1.CLI_CODIGO = '#39'00021'#39#13#10'ORDER BY '#13#10'C1.CLI_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'C1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_CGC,'#13#10'C1.CLI_ENDE' +
      'RE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_CEP,'#13#10'C1' +
      '.CLI_CXPOST,'#13#10'C1.CLI_INSC,'#13#10'C1.CLI_FONE,'#13#10'C1.CLI_FAX,'#13#10'C1.CLI_DT' +
      'ULTCOM,'#13#10'C1.CLI_CONTATO,'#13#10'C1.CLI_FUNCONT,'#13#10'C1.CLI_EMAIL,'#13#10'C1.CLI' +
      '_HOME,'#13#10'C1.CLI_ENDFAT,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CE' +
      'PFAT,'#13#10'C1.CLI_ENDENTR,'#13#10'C1.CLI_FONENTR,'#13#10'C1.CLI_CIDENTR,'#13#10'C1.CLI' +
      '_CEPENTR,'#13#10'C1.CLI_UFENTR,'#13#10'C1.REP_CODIGO,'#13#10'R1.REP_NOME'#13#10'FROM CLI' +
      '0000 C1'#13#10'LEFT JOIN REP0000 R1 ON (R1.REP_CODIGO = C1.REP_CODIGO)' +
      #13#10'WHERE C1.CLI_CODIGO = '#39'00021'#39#13#10'ORDER BY '#13#10'C1.CLI_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 392
    Top = 40
    object SqlCdsRel05CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRel05CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsRel05CLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object SqlCdsRel05CLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsRel05CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsRel05CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsRel05CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsRel05CLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SqlCdsRel05CLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      Size = 6
    end
    object SqlCdsRel05CLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SqlCdsRel05CLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsRel05CLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlCdsRel05CLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object SqlCdsRel05CLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsRel05CLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object SqlCdsRel05CLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object SqlCdsRel05CLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object SqlCdsRel05CLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object SqlCdsRel05CLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object SqlCdsRel05CLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object SqlCdsRel05CLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object SqlCdsRel05CLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object SqlCdsRel05CLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      Size = 11
    end
    object SqlCdsRel05CLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object SqlCdsRel05CLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object SqlCdsRel05CLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object SqlCdsRel05REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsRel05REP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object DsRel05: TDataSource
    DataSet = SqlCdsRel05
    Left = 424
    Top = 40
  end
  object ppRepRel05: TppReport
    AutoStop = False
    DataPipeline = ppDBRel05
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFichaCli05.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 488
    Top = 40
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel05'
    object pp05HeaderBand1: TppHeaderBand
      BeforePrint = pp05HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_05_TITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_05_TITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163460
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground1
      end
    end
    object pp05DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 57944
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENDERE'#199'O DE COBRAN'#199'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 78846
        mmTop = 30956
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 35983
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDFAT'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 35983
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 65088
        mmTop = 40217
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UFFAT'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 70379
        mmTop = 40217
        mmWidth = 14676
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 85196
        mmTop = 40217
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEPFAT'
        DataPipeline = ppDBRel05
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 92340
        mmTop = 40217
        mmWidth = 16228
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDFAT'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 40217
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 40217
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENDERE'#199'O DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 79904
        mmTop = 45244
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12171
        mmTop = 265
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 265
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 265
        mmWidth = 114036
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 6085
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 6085
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 6085
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 6085
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 9790
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 9790
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5292
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 9790
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 69586
        mmTop = 9790
        mmWidth = 4163
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 9790
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBRel05
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 87842
        mmTop = 9790
        mmWidth = 10795
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cx.Postal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 9790
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CXPOST'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 9790
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscr.Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 7408
        mmTop = 13494
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_INSC'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 13494
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 13494
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONE'
        DataPipeline = ppDBRel05
        DisplayFormat = '\(999)\ 9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 55827
        mmTop = 13494
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 2910
        mmLeft = 81756
        mmTop = 13758
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FAX'
        DataPipeline = ppDBRel05
        DisplayFormat = '\(999)\ 9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 2910
        mmLeft = 87842
        mmTop = 13758
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Representante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 17198
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 17198
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_NOME'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 17198
        mmWidth = 70908
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = #218'ltima Compra: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 17198
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_DTULTCOM'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 17198
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 20902
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 20902
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Func'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 21167
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FUNCONT'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 21167
        mmWidth = 45508
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 15610
        mmTop = 24871
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 24871
        mmWidth = 75406
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Home-Page:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 107156
        mmTop = 25135
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_HOME'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 25135
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 57679
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 49213
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDENTR'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 25135
        mmTop = 49213
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 53446
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDENTR'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 53446
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 65617
        mmTop = 53446
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText201'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UFENTR'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 70379
        mmTop = 53446
        mmWidth = 16722
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 53181
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEPENTR'
        DataPipeline = ppDBRel05
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 117211
        mmTop = 53446
        mmWidth = 18274
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 115094
        mmTop = 49213
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONENTR'
        DataPipeline = ppDBRel05
        DisplayFormat = '\(999)\ 9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 122767
        mmTop = 49213
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground1
      end
      object nomeCPFCNPJ: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'nomeCPFCNPJ'
        Caption = 'nomeCPFCNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 150809
        mmTop = 441
        mmWidth = 13053
        BandType = 4
        LayerName = Foreground1
      end
      object CPFCNPJ: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'CPFCNPJ'
        OnGetText = CPFCNPJGetText
        Caption = 'CPFCNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 164479
        mmTop = 441
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object SubRepFinanc: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubRepFinanc'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = True
        DataPipelineName = 'ppDBRel051'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBRel051
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 10000
          PrinterSetup.mmMarginTop = 15000
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBRel051'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label28'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3316
              mmLeft = 2117
              mmTop = 0
              mmWidth = 15081
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dupl.No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3316
              mmLeft = 19315
              mmTop = 0
              mmWidth = 12965
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3316
              mmLeft = 34396
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label301'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3316
              mmLeft = 55827
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label32'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Data Pagto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3316
              mmLeft = 76465
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label33'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vl.Pago R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3316
              mmLeft = 96309
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label34'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 116681
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Atraso-dias'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3316
              mmLeft = 134938
              mmTop = 0
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 3704
              mmWidth = 196000
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_DTEMIS'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3440
              mmLeft = 2117
              mmTop = 0
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText29'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FAT_CODIGO'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3440
              mmLeft = 19315
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText30'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_VLPARC'
              DataPipeline = ppDBRel051
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 34396
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText301'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_VENCTO'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 55827
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_PAGTO'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 76465
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_VLPAGO'
              DataPipeline = ppDBRel051
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 96309
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText34'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_STATUS'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 116681
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText35'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'ATRASO_CC'
              DataPipeline = ppDBRel051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3387
              mmLeft = 134938
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 0
              mmWidth = 196000
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_VLPARC'
              DataPipeline = ppDBRel051
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3316
              mmLeft = 34396
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FPC_VLPAGO'
              DataPipeline = ppDBRel051
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBRel051'
              mmHeight = 3316
              mmLeft = 96309
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4233
              mmWidth = 196000
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel61: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label35'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'TOTAL R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3316
              mmLeft = 2117
              mmTop = 529
              mmWidth = 14817
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRepRel06: TppReport
    AutoStop = False
    DataPipeline = ppDBRel06
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFichaCli06.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 487
    Top = 104
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel06'
    object pp06HeaderBand1: TppHeaderBand
      BeforePrint = pp06HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_06_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 794
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_06_TITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_06_TITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 7673
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 40481
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 12084
        mmTop = 11642
        mmWidth = 11994
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 4163
        mmLeft = 24606
        mmTop = 11642
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 4163
        mmLeft = 34925
        mmTop = 11642
        mmWidth = 111919
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBLCNPJ'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 150813
        mmTop = 11642
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBTextCnpj'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CGC'
        DataPipeline = ppDBRel05
        DisplayFormat = '99\.999\.999\/9999-99;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 4163
        mmLeft = 161396
        mmTop = 11642
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 17463
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 17463
        mmWidth = 85196
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 17463
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 17463
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 15081
        mmTop = 21167
        mmWidth = 8890
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 21167
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 16669
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 64823
        mmTop = 21167
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3387
        mmLeft = 69586
        mmTop = 21167
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 74613
        mmTop = 21167
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBRel05
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3246
        mmLeft = 81756
        mmTop = 21167
        mmWidth = 12982
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cx.Postal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 110331
        mmTop = 21167
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CXPOST'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3246
        mmLeft = 123031
        mmTop = 21167
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscr.Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 7408
        mmTop = 24871
        mmWidth = 16651
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_INSC'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 24871
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 48154
        mmTop = 24871
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONE'
        DataPipeline = ppDBRel05
        DisplayFormat = '\(999)\ 9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 55827
        mmTop = 24871
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 81756
        mmTop = 24871
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FAX'
        DataPipeline = ppDBRel05
        DisplayFormat = '\(999)\ 9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 87842
        mmTop = 24871
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Representante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 28575
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 28575
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_NOME'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 28575
        mmWidth = 70908
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = #218'ltima Compra: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 102394
        mmTop = 28575
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_DTULTCOM'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 28575
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 32279
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 24871
        mmTop = 32279
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Func'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 32544
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FUNCONT'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 32544
        mmWidth = 45508
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 15610
        mmTop = 36248
        mmWidth = 8396
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 36248
        mmWidth = 75406
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Home-Page:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 107156
        mmTop = 36513
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_HOME'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 36513
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 45508
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'No.Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 41275
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3316
        mmLeft = 17992
        mmTop = 41275
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label38'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 35983
        mmTop = 41275
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 53975
        mmTop = 41275
        mmWidth = 80433
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 137054
        mmTop = 41275
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 160602
        mmTop = 41275
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 181769
        mmTop = 41275
        mmWidth = 4022
        BandType = 0
        LayerName = Foreground2
      end
    end
    object pp06DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel06
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3387
        mmLeft = 19844
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3387
        mmLeft = 35983
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 53975
        mmTop = 0
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_QTDE'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 137054
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_PRECO'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 160867
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_IPIALIQ'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 182034
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade de Produtos Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 5450
        mmTop = 793
        mmWidth = 40852
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3316
        mmLeft = 47096
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_QTDE'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 137054
        mmTop = 794
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_PRECO'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3440
        mmLeft = 160867
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
        444254657874436E706A4F6E5072696E740B50726F6772616D54797065070B74
        7450726F63656475726506536F757263650CA401000070726F63656475726520
        444254657874436E706A4F6E5072696E743B0D0A5661720D0A2020774367633A
        737472696E673B0D0A626567696E0D0A20202020774367633A3D5472696D5269
        67687428444252656C30355B27434C495F434743275D293B0D0A202020206966
        206C656E6774682877436763293D3134207468656E0D0A202020202020206265
        67696E0D0A20202020202020202020204C626C436E706A2E43617074696F6E3A
        3D27434E504A3A273B0D0A2020202020202020202020444254657874436E706A
        2E446973706C6179466F726D61743A3D2739395C2E3939395C2E3939395C2F39
        3939392D39393B303B5F270D0A20202020202020656E64202020200D0A202020
        20656C73650D0A20202020202020626567696E0D0A2020202020202020202020
        4C626C436E706A2E43617074696F6E3A3D274350463A273B0D0A202020202020
        2020202020444254657874436E706A2E446973706C6179466F726D61743A3D27
        3939395C2E3939395C2E3939395C2D39393B303B5F273B0D0A20202020202020
        656E643B202020200D0A20202020656E643B0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060A444254657874436E706A094576656E744E616D650607
        4F6E5072696E74074576656E7449440220084361726574506F73010200020000
        0000}
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object DsRel06: TDataSource
    DataSet = SqlCdsRel06
    Left = 424
    Top = 104
  end
  object SqlCdsRel06: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT Y1.NF_NOTANUMBER,'#13#10'Y1.NF_EMISSAO,'#13#10'Y1.NF_CANCELADA,'#13#10'Y1.C' +
      'LI_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.NF_QTDE,'#13#10'P1.NF_PR' +
      'ECO,'#13#10'P1.NF_IPIALIQ '#13#10'FROM NF_IT01 P1 '#13#10'JOIN NF0001 Y1 ON (Y1.NF' +
      '_NOTANUMBER = P1.NF_IT_NOTANUMER) AND (P1.EMP_CODIGO = Y1.EMP_CO' +
      'DIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT Y1.NF_NOTANUMBER,'#13#10'Y1.NF_EMISSAO,'#13#10'Y1.NF_CANCELADA,'#13#10'Y1.C' +
      'LI_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.NF_QTDE,'#13#10'P1.NF_PR' +
      'ECO,'#13#10'P1.NF_IPIALIQ '#13#10'FROM NF_IT01 P1 '#13#10'JOIN NF0001 Y1 ON (Y1.NF' +
      '_NOTANUMBER = P1.NF_IT_NOTANUMER) AND (P1.EMP_CODIGO = Y1.EMP_CO' +
      'DIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 392
    Top = 104
    object SqlCdsRel06NF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsRel06NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsRel06NF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object SqlCdsRel06CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel06PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsRel06PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRel06NF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SqlCdsRel06NF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
    end
    object SqlCdsRel06NF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 15
    end
  end
  object ppDBRel06: TppDBPipeline
    DataSource = DsRel06
    UserName = 'DBRel06'
    Left = 456
    Top = 104
    object ppDBRel06ppField1: TppField
      FieldAlias = 'NF_NOTANUMBER'
      FieldName = 'NF_NOTANUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField2: TppField
      FieldAlias = 'NF_EMISSAO'
      FieldName = 'NF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField3: TppField
      FieldAlias = 'NF_CANCELADA'
      FieldName = 'NF_CANCELADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField4: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField5: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField6: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField7: TppField
      FieldAlias = 'NF_QTDE'
      FieldName = 'NF_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField8: TppField
      FieldAlias = 'NF_PRECO'
      FieldName = 'NF_PRECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRel06ppField9: TppField
      FieldAlias = 'NF_IPIALIQ'
      FieldName = 'NF_IPIALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object SqlCdsRel051: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_VE' +
      'NCTO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VLPAGO,'#13#10'F1.CLI_COD' +
      'IGO,'#13#10'F1.FPC_STATUS,'#13#10'F2.FAT_CANCELADA'#13#10'FROM FAT_PC01 F1'#13#10'JOIN F' +
      'AT0000 F2 on F1.fat_codigo = F2.fat_codigo'#13#10'WHERE F2.FAT_CANCELA' +
      'DA='#39'N'#39' AND F1.CLI_CODIGO = '#39'00021'#39#13#10'ORDER BY F1.FPC_DTEMIS, F1.F' +
      'PC_NUMER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel051CalcFields
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_VE' +
      'NCTO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VLPAGO,'#13#10'F1.CLI_COD' +
      'IGO,'#13#10'F1.FPC_STATUS,'#13#10'F2.FAT_CANCELADA'#13#10'FROM FAT_PC01 F1'#13#10'JOIN F' +
      'AT0000 F2 on F1.fat_codigo = F2.fat_codigo'#13#10'WHERE F2.FAT_CANCELA' +
      'DA='#39'N'#39' AND F1.CLI_CODIGO = '#39'00021'#39#13#10'ORDER BY F1.FPC_DTEMIS, F1.F' +
      'PC_NUMER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 392
    Top = 72
    object SqlCdsRel051FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel051FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRel051FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRel051FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRel051FPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRel051FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsRel051FPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsRel051CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel051FPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsRel051FAT_CANCELADA: TStringField
      FieldName = 'FAT_CANCELADA'
      Size = 1
    end
    object SqlCdsRel051ATRASO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ATRASO_CC'
      Calculated = True
    end
  end
  object DsRel051: TDataSource
    DataSet = SqlCdsRel051
    Left = 424
    Top = 72
  end
  object ppDBRel051: TppDBPipeline
    DataSource = DsRel051
    UserName = 'DBRel051'
    Left = 456
    Top = 72
  end
  object ppDBRel05: TppDBPipeline
    DataSource = DsRel05
    UserName = 'DBRel05'
    Left = 456
    Top = 40
    object ppDBRel05ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField3: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField6: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField7: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField8: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField9: TppField
      FieldAlias = 'CLI_CXPOST'
      FieldName = 'CLI_CXPOST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField10: TppField
      FieldAlias = 'CLI_INSC'
      FieldName = 'CLI_INSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField11: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField12: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField13: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField14: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField15: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField16: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField17: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField18: TppField
      FieldAlias = 'CLI_ENDFAT'
      FieldName = 'CLI_ENDFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField19: TppField
      FieldAlias = 'CLI_CIDFAT'
      FieldName = 'CLI_CIDFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField20: TppField
      FieldAlias = 'CLI_UFFAT'
      FieldName = 'CLI_UFFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField21: TppField
      FieldAlias = 'CLI_CEPFAT'
      FieldName = 'CLI_CEPFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField22: TppField
      FieldAlias = 'CLI_ENDENTR'
      FieldName = 'CLI_ENDENTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField23: TppField
      FieldAlias = 'CLI_FONENTR'
      FieldName = 'CLI_FONENTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField24: TppField
      FieldAlias = 'CLI_CIDENTR'
      FieldName = 'CLI_CIDENTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField25: TppField
      FieldAlias = 'CLI_CEPENTR'
      FieldName = 'CLI_CEPENTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField26: TppField
      FieldAlias = 'CLI_UFENTR'
      FieldName = 'CLI_UFENTR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField27: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField28: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
end
