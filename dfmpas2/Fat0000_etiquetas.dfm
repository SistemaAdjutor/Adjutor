inherited FrmFat0000_etiquetas: TFrmFat0000_etiquetas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'FrmFat0000_etiquetas'
  ClientHeight = 235
  ClientWidth = 537
  Position = poDesktopCenter
  ExplicitWidth = 543
  ExplicitHeight = 260
  PixelsPerInch = 96
  TextHeight = 13
  object chkSolicitarQuantidade: TCheckBox [0]
    Left = 8
    Top = 200
    Width = 241
    Height = 17
    Caption = 'Revisar Quantidade de Volume'
    TabOrder = 0
  end
  object BitImprimeEtiq: TBitBtn [1]
    Left = 367
    Top = 200
    Width = 80
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitImprimeEtiqClick
  end
  object BitEtiqFechar: TBitBtn [2]
    Left = 451
    Top = 200
    Width = 80
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitEtiqFecharClick
  end
  object grpMensagem: TGroupBox [3]
    Left = 5
    Top = 146
    Width = 524
    Height = 44
    Caption = 'Mensagem'
    TabOrder = 3
    object edtMensagem: TEdit
      Left = 5
      Top = 16
      Width = 512
      Height = 21
      MaxLength = 50
      TabOrder = 0
      Text = 'edtMensagem'
    end
  end
  object Gb_Estilo_Etiqueta: TGroupBox [4]
    Left = 268
    Top = 25
    Width = 261
    Height = 119
    Caption = 'Tipo da Etiqueta'
    TabOrder = 4
    object rbModelo1: TRadioButton
      Left = 10
      Top = 18
      Width = 231
      Height = 17
      Caption = 'Modelo 1 - 1 Coluna (21,00 x 14,85 cm)'
      TabOrder = 0
    end
    object rbModelo3: TRadioButton
      Left = 10
      Top = 57
      Width = 247
      Height = 17
      Caption = 'Modelo 3 - '#218'nica (10,00 x 15,50 cm) - Retrato'
      TabOrder = 2
    end
    object rbModelo2: TRadioButton
      Left = 10
      Top = 37
      Width = 215
      Height = 17
      Caption = 'Modelo 2 - 2 Colunas  (10,50 x 7,50 cm)'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbModelo4: TRadioButton
      Left = 10
      Top = 76
      Width = 247
      Height = 17
      Caption = 'Modelo 4 - Cont'#237'nuo (6,50 cm ) - Retrato'
      TabOrder = 3
    end
    object rbModelo5: TRadioButton
      Left = 10
      Top = 96
      Width = 247
      Height = 17
      Caption = 'Modelo 5 - '#218'nica (10,00 x 05,00 cm)'
      TabOrder = 4
    end
  end
  object GrBEtiqueta: TGroupBox [5]
    Left = 4
    Top = 24
    Width = 261
    Height = 120
    Caption = 'Etiquetas de volumes da nota'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 21
      Top = 52
      Width = 84
      Height = 14
      Caption = 'Nota Fiscal Final :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 13
      Top = 26
      Width = 91
      Height = 14
      Caption = 'Nota Fiscal  Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditFinal: TEdit
      Left = 108
      Top = 49
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
    end
    object EditInicial: TEdit
      Left = 108
      Top = 22
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
    end
    object Rad_Etiq_Sistema: TRadioButton
      Left = 10
      Top = 76
      Width = 139
      Height = 17
      Caption = 'Etiqueta do Destinat'#225'rio'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object Rad_Etiq_Pre_Impressa: TRadioButton
      Left = 10
      Top = 97
      Width = 215
      Height = 17
      Caption = 'Etiqueta Pr'#233'-Impressa (configurada)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 792
    Top = 408
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 840
    Top = 416
  end
  inherited DBConn: TSQLConnection
    Left = 736
    Top = 409
  end
  inherited qAux: TSQLQuery
    Left = 1002
    Top = 389
  end
  inherited qAux2: TSQLQuery
    Left = 1042
    Top = 388
  end
  inherited qAux3: TSQLQuery
    Left = 1082
    Top = 388
  end
  object SqlCdsEtiqueta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 114
    Top = 274
    object SqlCdsEtiquetaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsEtiquetaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SqlCdsEtiquetaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsEtiquetaCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
    object SqlCdsEtiquetaCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsEtiquetaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsEtiquetaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SqlCdsEtiquetaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsEtiquetaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsEtiquetaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsEtiquetaCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object SqlCdsEtiquetaCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object SqlCdsEtiquetaCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object SqlCdsEtiquetaCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object SqlCdsEtiquetaCLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      Size = 11
    end
    object SqlCdsEtiquetaCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsEtiquetaTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsEtiquetaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsEtiquetaCLI_BAIENTR: TStringField
      FieldName = 'CLI_BAIENTR'
      FixedChar = True
      Size = 25
    end
  end
  object CdsEtiqueta: TClientDataSet
    PersistDataPacket.Data = {
      5C0100009619E0BD01000000180000000B0000000000030000005C0109434C49
      5F52415A414F010049000000010005574944544802000200320008434C495F45
      4E444501004900000001000557494454480200020032000A434C495F42414952
      524F010049000000010005574944544802000200280007434C495F4345500100
      490000000100055749445448020002000A000A434C495F434944414445010049
      000000010005574944544802000200280006434C495F55460100490000000100
      055749445448020002000200064E465F4E554D01004900000001000557494454
      48020002000600094E465F564F4C554D45010049000000010005574944544802
      00020007000B4E465F4D454E534147454D010049000000010005574944544802
      0002003200065452414E53500100490000000100055749445448020002002800
      0952454D4554454E544501004900000001000557494454480200020032000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 538
    Top = 266
    object CdsEtiquetaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object CdsEtiquetaCLI_ENDE: TStringField
      FieldName = 'CLI_ENDE'
      Size = 50
    end
    object CdsEtiquetaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 40
    end
    object CdsEtiquetaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object CdsEtiquetaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 40
    end
    object CdsEtiquetaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsEtiquetaNF_NUM: TStringField
      FieldName = 'NF_NUM'
      Size = 6
    end
    object CdsEtiquetaNF_VOLUME: TStringField
      FieldName = 'NF_VOLUME'
      Size = 7
    end
    object CdsEtiquetaNF_MENSAGEM: TStringField
      FieldName = 'NF_MENSAGEM'
      Size = 50
    end
    object CdsEtiquetaTRANSP: TStringField
      FieldName = 'TRANSP'
      Size = 40
    end
    object CdsEtiquetaREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Size = 50
    end
  end
  object DsEtiqueta: TDataSource
    DataSet = CdsEtiqueta
    Left = 642
    Top = 162
  end
  object ppDBPEtiqueta: TppDBPipeline
    DataSource = DsEtiqueta
    AutoCreateFields = False
    UserName = 'DBPEtiqueta'
    Left = 622
    Top = 274
    object ppDBPEtiquetappField1: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppDBPEtiquetappField2: TppField
      FieldAlias = 'CLI_ENDE'
      FieldName = 'CLI_ENDE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPEtiquetappField3: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBPEtiquetappField4: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPEtiquetappField5: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object ppDBPEtiquetappField6: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppDBPEtiquetappField7: TppField
      FieldAlias = 'NF_NUM'
      FieldName = 'NF_NUM'
      FieldLength = 6
      DisplayWidth = 6
      Position = 6
    end
    object ppDBPEtiquetappField8: TppField
      FieldAlias = 'NF_VOLUME'
      FieldName = 'NF_VOLUME'
      FieldLength = 7
      DisplayWidth = 7
      Position = 7
    end
    object ppDBPEtiquetappField9: TppField
      FieldAlias = 'NF_MENSAGEM'
      FieldName = 'NF_MENSAGEM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDBPEtiquetappField10: TppField
      FieldAlias = 'TRANSP'
      FieldName = 'TRANSP'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object ppDBPEtiquetappField11: TppField
      FieldAlias = 'REMETENTE'
      FieldName = 'REMETENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
  end
  object prprtModelo1: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMA.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 738
    Top = 42
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand16: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 133000
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 66675
        mmTop = 16669
        mmWidth = 47625
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5842
        mmLeft = 4763
        mmTop = 29633
        mmWidth = 187590
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5715
        mmLeft = 29369
        mmTop = 38629
        mmWidth = 162984
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5821
        mmLeft = 132292
        mmTop = 56356
        mmWidth = 60325
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5715
        mmLeft = 4763
        mmTop = 56356
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5821
        mmLeft = 23548
        mmTop = 48154
        mmWidth = 168275
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_MENSAGEM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5715
        mmLeft = 10000
        mmTop = 10000
        mmWidth = 187325
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5715
        mmLeft = 4763
        mmTop = 64558
        mmWidth = 32978
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5842
        mmLeft = 39423
        mmTop = 64558
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5715
        mmLeft = 45508
        mmTop = 85990
        mmWidth = 147109
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5842
        mmLeft = 4763
        mmTop = 85990
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5821
        mmLeft = 116417
        mmTop = 56092
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5715
        mmLeft = 4763
        mmTop = 48154
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5821
        mmLeft = 141023
        mmTop = 75142
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppBarCode1: TppBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'BarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Data = 'BarCode'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 9737
        mmLeft = 39423
        mmTop = 71438
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5842
        mmLeft = 117211
        mmTop = 75142
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5821
        mmLeft = 5027
        mmTop = 38629
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REMETENTE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5821
        mmLeft = 37571
        mmTop = 95779
        mmWidth = 153988
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REMETENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5715
        mmLeft = 4763
        mmTop = 95779
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand16: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object prprtModelo2: TppReport
    AutoStop = False
    Columns = 2
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMAPEQ.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 802
    Top = 58
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand3: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand4: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand5: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 64294
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 36904
        mmTop = 1588
        mmWidth = 26204
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 11113
        mmWidth = 95779
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 18256
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 33867
        mmTop = 32015
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 32015
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 24871
        mmWidth = 94721
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_MENSAGEM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 529
        mmTop = 57679
        mmWidth = 97102
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 39423
        mmWidth = 23326
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 39423
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 17198
        mmTop = 46038
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TRANSP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 529
        mmTop = 46038
        mmWidth = 15240
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 53975
        mmTop = 39423
        mmWidth = 14690
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4191
        mmLeft = 69850
        mmTop = 39423
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REMETENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 529
        mmTop = 51858
        mmWidth = 22691
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REMETENTE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4022
        mmLeft = 24077
        mmTop = 51594
        mmWidth = 73025
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand4: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand5: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object prprtModelo3: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 130000
    PrinterSetup.mmPaperWidth = 170000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMA.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 858
    Top = 34
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand7: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand8: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 98425
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 2117
        mmTop = 25400
        mmWidth = 47625
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 33602
        mmWidth = 131498
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 18521
        mmTop = 40746
        mmWidth = 115094
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4129
        mmLeft = 2381
        mmTop = 54769
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 47625
        mmWidth = 118798
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_MENSAGEM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 85461
        mmWidth = 129911
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 61648
        mmWidth = 33073
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5821
        mmLeft = 37306
        mmTop = 61648
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 78846
        mmWidth = 102659
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4254
        mmLeft = 2646
        mmTop = 79111
        mmWidth = 27027
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4129
        mmLeft = 2381
        mmTop = 47625
        mmWidth = 12012
        BandType = 4
        LayerName = Foreground2
      end
      object ppBarCode2: TppBarCode
        DesignLayer = ppDesignLayer3
        UserName = 'BarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Data = 'BarCode'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 9790
        mmLeft = 37306
        mmTop = 68527
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground2
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4129
        mmLeft = 2117
        mmTop = 40746
        mmWidth = 15891
        BandType = 4
        LayerName = Foreground2
      end
      object pmgLogo: TppImage
        DesignLayer = ppDesignLayer3
        UserName = 'pmgLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        mmHeight = 19050
        mmLeft = 1852
        mmTop = 1852
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground2
      end
      object plblRemetente: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5556
        mmLeft = 42333
        mmTop = 2381
        mmWidth = 92075
        BandType = 4
        LayerName = Foreground2
      end
      object plblEndereco: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plblEndereco'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5556
        mmLeft = 42333
        mmTop = 7673
        mmWidth = 92075
        BandType = 4
        LayerName = Foreground2
      end
      object plblTelefone: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plblEndereco1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5556
        mmLeft = 42863
        mmTop = 15346
        mmWidth = 91546
        BandType = 4
        LayerName = Foreground2
      end
      object plblLine: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plblLine'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '___________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 529
        mmTop = 17198
        mmWidth = 133615
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3969
        mmLeft = 70644
        mmTop = 55033
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 96838
        mmTop = 71438
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 112713
        mmTop = 71438
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4064
        mmLeft = 58738
        mmTop = 55033
        mmWidth = 10499
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppColumnFooterBand8: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand6: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object prprtModelo4: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 3000
    PrinterSetup.mmMarginTop = 3000
    PrinterSetup.mmPaperHeight = 60000
    PrinterSetup.mmPaperWidth = 100000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMA.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 964
    Top = 82
    Version = '16.02'
    mmColumnWidth = 98000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand11: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand9: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand10: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 53000
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 794
        mmTop = 529
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 6085
        mmWidth = 122238
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 11377
        mmWidth = 105834
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 20902
        mmWidth = 87842
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 20902
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 16140
        mmWidth = 109802
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_MENSAGEM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 48419
        mmWidth = 122767
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5027
        mmLeft = 529
        mmTop = 25929
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5027
        mmLeft = 19844
        mmTop = 25929
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 38894
        mmWidth = 97102
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 38894
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 20902
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16140
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 5027
        mmLeft = 19844
        mmTop = 32808
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 32544
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 11377
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REMETENTE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 43656
        mmWidth = 99219
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REMETENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 43656
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground3
      end
      object pbrcd1: TppBarCode
        DesignLayer = ppDesignLayer4
        UserName = 'pbrcd1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Data = '123456789'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 9525
        mmLeft = 44715
        mmTop = 26988
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground3
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand11: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand9: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand10: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 130000
    PrinterSetup.mmPaperWidth = 170000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMA.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 948
    Top = 18
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand13: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand14: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 51065
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 17198
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 97631
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 27517
        mmWidth = 97631
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 33073
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 32808
        mmWidth = 71173
        BandType = 4
        LayerName = Foreground6
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 65088
        mmTop = 1852
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 65088
        mmTop = 6350
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 42863
        mmWidth = 96838
        BandType = 4
        LayerName = Foreground6
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 38100
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground6
      end
      object ppBarCode4: TppBarCode
        DesignLayer = ppDesignLayer7
        UserName = 'BarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Data = 'BarCode'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 8467
        mmLeft = 65088
        mmTop = 11642
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground6
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1058
        mmTop = 1852
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground6
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'plblEndereco'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground6
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'plblEndereco1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 11377
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppColumnFooterBand14: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand13: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object prprtModelo5: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 2000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 55000
    PrinterSetup.mmPaperWidth = 105000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\ETIQUETASISTEMA.rtm'
    Template.ShowBusyCursor = False
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 916
    Top = 138
    Version = '16.02'
    mmColumnWidth = 103000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppColumnHeaderBand6: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand12: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 48154
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'Destinat'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3655
        mmLeft = 1588
        mmTop = 14817
        mmWidth = 16849
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 1500
        mmTop = 19050
        mmWidth = 94721
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 1500
        mmTop = 23019
        mmWidth = 94721
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 27517
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3969
        mmLeft = 1500
        mmTop = 27517
        mmWidth = 71173
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 1852
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 6350
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 37835
        mmWidth = 93927
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3655
        mmLeft = 1500
        mmTop = 33602
        mmWidth = 21336
        BandType = 4
        LayerName = Foreground5
      end
      object ppBarCode3: TppBarCode
        DesignLayer = ppDesignLayer6
        UserName = 'BarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Data = 'BarCode'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6615
        mmLeft = 61119
        mmTop = 11642
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground5
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 1500
        mmTop = 1852
        mmWidth = 59267
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblEndereco'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 1500
        mmTop = 6085
        mmWidth = 59267
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblEndereco1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 9525
        mmWidth = 59267
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_MENSAGEM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 42333
        mmWidth = 93927
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 59531
        mmTop = 32808
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 32808
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppColumnFooterBand12: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand7: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object SqlCdsParamEtiq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 284
    Top = 280
    object SqlCdsParamEtiqCET_CODIGO: TStringField
      FieldName = 'CET_CODIGO'
      Required = True
      Size = 2
    end
    object SqlCdsParamEtiqCET_DTCADA: TDateField
      FieldName = 'CET_DTCADA'
    end
    object SqlCdsParamEtiqCET_DESCRIETIQ: TStringField
      FieldName = 'CET_DESCRIETIQ'
      Size = 40
    end
    object SqlCdsParamEtiqCET_ATIVO: TStringField
      FieldName = 'CET_ATIVO'
      Size = 1
    end
    object SqlCdsParamEtiqCET_TPIMP: TStringField
      FieldName = 'CET_TPIMP'
      Size = 1
    end
    object SqlCdsParamEtiqCET_QTDETIQ: TStringField
      FieldName = 'CET_QTDETIQ'
      Size = 1
    end
    object SqlCdsParamEtiqCET_ROTULO: TStringField
      FieldName = 'CET_ROTULO'
      Size = 1
    end
    object SqlCdsParamEtiqCET_INICOL1: TStringField
      FieldName = 'CET_INICOL1'
      Size = 3
    end
    object SqlCdsParamEtiqCET_INICOL2: TStringField
      FieldName = 'CET_INICOL2'
      Size = 3
    end
    object SqlCdsParamEtiqCET_INICOL3: TStringField
      FieldName = 'CET_INICOL3'
      Size = 3
    end
    object SqlCdsParamEtiqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsParamEtiqCET_CLIENTE: TStringField
      FieldName = 'CET_CLIENTE'
      Size = 7
    end
    object SqlCdsParamEtiqCET_ENDERECO: TStringField
      FieldName = 'CET_ENDERECO'
      Size = 7
    end
    object SqlCdsParamEtiqCET_CIDADE: TStringField
      FieldName = 'CET_CIDADE'
      Size = 7
    end
    object SqlCdsParamEtiqCET_ESTADO: TStringField
      FieldName = 'CET_ESTADO'
      Size = 7
    end
    object SqlCdsParamEtiqCET_CEP: TStringField
      FieldName = 'CET_CEP'
      Size = 7
    end
    object SqlCdsParamEtiqCET_NFISCAL: TStringField
      FieldName = 'CET_NFISCAL'
      Size = 7
    end
    object SqlCdsParamEtiqCET_QTDE: TStringField
      FieldName = 'CET_QTDE'
      Size = 7
    end
    object SqlCdsParamEtiqCET_PESO: TStringField
      FieldName = 'CET_PESO'
      Size = 7
    end
    object SqlCdsParamEtiqCET_CODPRODUTO: TStringField
      FieldName = 'CET_CODPRODUTO'
      Size = 7
    end
    object SqlCdsParamEtiqCET_PRODUTO: TStringField
      FieldName = 'CET_PRODUTO'
      Size = 7
    end
    object SqlCdsParamEtiqCET_TRANSPORT: TStringField
      FieldName = 'CET_TRANSPORT'
      Size = 7
    end
    object SqlCdsParamEtiqCET_ENDTRANSP: TStringField
      FieldName = 'CET_ENDTRANSP'
      Size = 7
    end
    object SqlCdsParamEtiqCET_CIDTRANSP: TStringField
      FieldName = 'CET_CIDTRANSP'
      Size = 7
    end
    object SqlCdsParamEtiqCET_CEPTRANSP: TStringField
      FieldName = 'CET_CEPTRANSP'
      Size = 7
    end
    object SqlCdsParamEtiqCET_LINHAS: TStringField
      FieldName = 'CET_LINHAS'
      Size = 3
    end
  end
  object RdPrintEtiq1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 0
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Etiquetas Padr'#227'o Matricial ou Jato/Laser'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 70
    TamanhoQteColunas = 220
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 812
    Top = 227
  end
  object CdsImpNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 418
    Top = 274
    object CdsImpNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object CdsImpNotaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object CdsImpNotaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object CdsImpNotaNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object CdsImpNotaNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
    end
    object CdsImpNotaNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      Size = 35
    end
    object CdsImpNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsImpNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object CdsImpNotaOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object CdsImpNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object CdsImpNotaREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsImpNotaNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      Size = 1
    end
    object CdsImpNotaNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      Size = 1
    end
    object CdsImpNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsImpNotaNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      Precision = 15
    end
    object CdsImpNotaNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      Precision = 15
    end
    object CdsImpNotaNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      Precision = 15
    end
    object CdsImpNotaNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      Precision = 15
    end
    object CdsImpNotaNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      Precision = 15
    end
    object CdsImpNotaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 15
    end
    object CdsImpNotaNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      Precision = 15
    end
    object CdsImpNotaNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object CdsImpNotaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 15
    end
    object CdsImpNotaNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 15
    end
    object CdsImpNotaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      Precision = 15
    end
    object CdsImpNotaNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object CdsImpNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object CdsImpNotaNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      Precision = 15
    end
    object CdsImpNotaNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      Precision = 15
    end
    object CdsImpNotaNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      Size = 60
    end
    object CdsImpNotaNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      Size = 60
    end
    object CdsImpNotaNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 10
    end
    object CdsImpNotaNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      Size = 1
    end
    object CdsImpNotaNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object CdsImpNotaPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsImpNotaNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      FixedChar = True
      Size = 1
    end
    object CdsImpNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsImpNotaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object CdsImpNotaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object CdsImpNotaCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsImpNotaCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object CdsImpNotaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CdsImpNotaCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object CdsImpNotaCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object CdsImpNotaCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object CdsImpNotaCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object CdsImpNotaCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object CdsImpNotaCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object CdsImpNotaCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object CdsImpNotaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsImpNotaCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object CdsImpNotaCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object CdsImpNotaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object CdsImpNotaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object CdsImpNotaPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object CdsImpNotaPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object CdsImpNotaPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object CdsImpNotaTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsImpNotaTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object CdsImpNotaREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object CdsImpNotaNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      Size = 1000
    end
    object CdsImpNotaNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      Size = 60
    end
    object CdsImpNotaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object CdsImpNotaOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object CdsImpNotaNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      Size = 80
    end
    object CdsImpNotaNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      Size = 80
    end
    object CdsImpNotaNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      Size = 80
    end
    object CdsImpNotaNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      Size = 80
    end
    object CdsImpNotaNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      Size = 80
    end
    object CdsImpNotaNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      Size = 80
    end
    object CdsImpNotaCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object CdsImpNotaNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      Size = 1
    end
    object CdsImpNotaNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      Precision = 15
    end
    object CdsImpNotaNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      Precision = 15
    end
    object CdsImpNotaNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      Precision = 15
    end
    object CdsImpNotaNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      Precision = 15
    end
    object CdsImpNotaOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 15
    end
    object CdsImpNotaNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      Size = 1000
    end
    object CdsImpNotaOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object CdsImpNotaOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object CdsImpNotaNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
    end
    object CdsImpNotaPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
    end
  end
  object RdPrintNotaFiscal: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Nota Fiscal'
    TitulodoRelatorio = 'Nota Fiscal'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 100
    TamanhoQteColunas = 150
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 959
    Top = 215
  end
end
