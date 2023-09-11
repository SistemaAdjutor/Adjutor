inherited frmEtqFaturamento: TfrmEtqFaturamento
  Caption = 'frmEtqFaturamento'
  ClientHeight = 418
  ClientWidth = 978
  ExplicitTop = -115
  ExplicitWidth = 986
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  object PanEtiqueta: TPanel [0]
    Left = 0
    Top = 0
    Width = 857
    Height = 273
    TabOrder = 0
    object GrBEtiqueta: TGroupBox
      Left = 2
      Top = 7
      Width = 261
      Height = 170
      Caption = 'Etiquetas de volumes da nota'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
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
        AutoSize = False
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
        Top = 85
        Width = 139
        Height = 17
        Caption = 'Etiqueta do Destinat'#225'rio'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
      object Rad_Etiq_Pre_Impressa: TRadioButton
        Left = 10
        Top = 113
        Width = 215
        Height = 17
        Caption = 'Etiqueta Pr'#233'-Impressa (configurada)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object BitEtiqFechar: TBitBtn
      Left = 757
      Top = 236
      Width = 80
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitEtiqFecharClick
    end
    object BitImprimeEtiq: TBitBtn
      Left = 673
      Top = 236
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitImprimeEtiqClick
    end
    object Gb_Estilo_Etiqueta: TGroupBox
      Left = 269
      Top = 8
      Width = 572
      Height = 170
      Caption = 'Tipo da Etiqueta'
      TabOrder = 1
      object rbModelo1: TRadioButton
        Left = 13
        Top = 21
        Width = 231
        Height = 17
        Caption = 'Modelo 1 - 1 Coluna (21,00 x 14,85 cm)'
        TabOrder = 0
      end
      object rbModelo3: TRadioButton
        Left = 13
        Top = 67
        Width = 247
        Height = 17
        Caption = 'Modelo 3 - '#218'nica (10,00 x 15,50 cm) - Retrato'
        TabOrder = 2
      end
      object rbModelo2: TRadioButton
        Left = 13
        Top = 44
        Width = 215
        Height = 17
        Caption = 'Modelo 2 - 2 Colunas  (10,50 x 7,50 cm)'
        TabOrder = 1
      end
      object rbModelo4: TRadioButton
        Left = 13
        Top = 90
        Width = 247
        Height = 17
        Caption = 'Modelo 4 - Cont'#237'nuo (6,50 cm ) - Retrato'
        TabOrder = 3
      end
      object rbModelo5: TRadioButton
        Left = 13
        Top = 113
        Width = 247
        Height = 17
        Caption = 'Modelo 5 - '#218'nica ( 10,00 x 05,00  cm)'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object rbModelo6: TRadioButton
        Left = 13
        Top = 136
        Width = 247
        Height = 17
        Hint = 'Argox OS 214-TT'
        Caption = 'Modelo 6 - '#218'nica (10,00 x 4,00 cm) '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object rbModelo7: TRadioButton
        Left = 266
        Top = 21
        Width = 247
        Height = 17
        Caption = 'Modelo 7 - '#218'nica (7,50 x 9,50 cm) '
        Checked = True
        TabOrder = 6
        TabStop = True
      end
      object rbModelo8: TRadioButton
        Left = 266
        Top = 44
        Width = 247
        Height = 17
        Caption = 'Modelo 8  -  (7,50 x 9,50 cm) '
        TabOrder = 7
      end
      object rbModelo9: TRadioButton
        Left = 266
        Top = 67
        Width = 247
        Height = 17
        Caption = 'Modelo 9  -  (6,00 x 8,00 cm) '
        TabOrder = 8
      end
      object rbModelo10: TRadioButton
        Left = 266
        Top = 90
        Width = 247
        Height = 17
        Caption = 'Modelo 10 -  (10,00 x 7,50 cm) '
        TabOrder = 9
      end
      object rbModelo11: TRadioButton
        Left = 266
        Top = 113
        Width = 247
        Height = 17
        Caption = 'Modelo 11 - '#218'nica (10,00 x 5,00 cm) '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
    end
    object grpMensagem: TGroupBox
      Left = 5
      Top = 184
      Width = 836
      Height = 44
      Caption = 'Mensagem'
      TabOrder = 4
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
    object chkSolicitarQuantidade: TCheckBox
      Left = 7
      Top = 241
      Width = 241
      Height = 17
      Caption = 'Revisar Quantidade de Volume'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1000
    Top = 544
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1048
    Top = 552
  end
  inherited DBConn: TSQLConnection
    Left = 944
    Top = 545
  end
  inherited qAux: TSQLQuery
    Left = 1210
    Top = 525
  end
  inherited qAux2: TSQLQuery
    Left = 1250
    Top = 524
  end
  inherited qAux3: TSQLQuery
    Left = 1290
    Top = 524
  end
  object SqlCdsEtiqueta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT T1.NF_NOTANUMBER,T1.NF_NUM_NFE,T1.NF_QTDE,T4.TRP_RAZAO,T2' +
        '.CLI_RAZAO,T2.CLI_FANTASIA,T2.CLI_ENDERE,T2.CLI_BAIRRO,T2.CLI_CE' +
        'P,T2.CLI_CIDADE,T2.CLI_UF,T2.CLI_FONE,T2.CLI_ENDENTR,'
      
        'T2.CLI_CIDENTR,T2.CLI_CEPENTR,T2.CLI_UFENTR,T2.CLI_FONENTR,T2.CL' +
        'I_BAIENTR,T2.CLI_CONTATO,'
      
        'T4.TRP_ENDERE, (T4.TRP_CIDADE ||'#39'-'#39'|| T4.TRP_UF) as TRP_CIDADE, ' +
        'T4.TRP_CEP'
      ' FROM NF0001 T1'
      
        'LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) LEFT JOI' +
        'N PED0000 T3 ON (T1.PED_CODIGO = T3.PED_CODIGO) LEFT JOIN TRP000' +
        '0 T4 ON (T3.TRP_CODIGO = T4.TRP_CODIGO)'
      '')
    SQLConnection = DBConn
    Left = 474
    Top = 226
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
    object SqlCdsEtiquetaTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object SqlCdsEtiquetaTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      Size = 33
    end
    object SqlCdsEtiquetaTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object SqlCdsEtiquetaENDERECO_ENTREGA: TIntegerField
      FieldName = 'ENDERECO_ENTREGA'
    end
    object SqlCdsEtiquetaend_entr: TStringField
      FieldName = 'end_entr'
      Size = 150
    end
    object SqlCdsEtiquetaBAIRRO_ENTR: TStringField
      FieldName = 'BAIRRO_ENTR'
      Size = 30
    end
    object SqlCdsEtiquetaCEP_ENTR: TStringField
      FieldName = 'CEP_ENTR'
      Size = 8
    end
    object SqlCdsEtiquetaCID_ENTR: TStringField
      FieldName = 'CID_ENTR'
      Size = 30
    end
    object SqlCdsEtiquetaestado_entr: TStringField
      FieldName = 'estado_entr'
      Size = 2
    end
    object SqlCdsEtiquetanumero: TStringField
      FieldName = 'numero'
      Size = 12
    end
  end
  object CdsEtiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 482
    Top = 274
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
    object CdsEtiquetaTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object CdsEtiquetaTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object CdsEtiquetaTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
  end
  object DsEtiqueta: TDataSource
    DataSet = CdsEtiqueta
    Left = 562
    Top = 274
  end
  object ppDBPEtiqueta: TppDBPipeline
    DataSource = DsEtiqueta
    AutoCreateFields = False
    UserName = 'DBPEtiqueta'
    Left = 54
    Top = 282
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
    object ppDBPEtiquetappField12: TppField
      FieldAlias = 'TRP_ENDERE'
      FieldName = 'TRP_ENDERE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPEtiquetappField13: TppField
      FieldAlias = 'TRP_CIDADE'
      FieldName = 'TRP_CIDADE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object EP: TppField
      FieldAlias = 'TRP_CEP'
      FieldName = 'TRP_CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
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
    Left = 138
    Top = 178
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
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
    object ppColumnHeaderBand1: TppColumnHeaderBand
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
    object ppColumnFooterBand2: TppColumnFooterBand
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
    Left = 210
    Top = 178
    Version = '16.02'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBPEtiqueta'
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
    object ppColumnHeaderBand3: TppColumnHeaderBand
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
    object ppColumnFooterBand3: TppColumnFooterBand
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
    Left = 289
    Top = 176
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
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        mmHeight = 13229
        mmLeft = 119856
        mmTop = 54769
        mmWidth = 13229
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
    Left = 372
    Top = 178
    Version = '16.02'
    mmColumnWidth = 98000
    DataPipelineName = 'ppDBPEtiqueta'
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
    object ppColumnHeaderBand11: TppColumnHeaderBand
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
    object ppColumnFooterBand11: TppColumnFooterBand
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
    Left = 598
    Top = 224
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
    Left = 452
    Top = 178
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
    Left = 348
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
    Left = 692
    Top = 283
  end
  object CdsImpNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 418
    Top = 282
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
    Left = 783
    Top = 287
  end
  object CdsTransportadora: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspTransportadora'
    Left = 456
    Top = 353
    object CdsTransportadoraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsTransportadoraTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsTransportadoraTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object CdsTransportadoraTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsTransportadoraTRP_UF: TStringField
      FieldName = 'TRP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsTransportadoraTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsTransportadoraTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsTransportadoraTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsTransportadoraTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsTransportadoraTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsTransportadoraTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsTransportadoraTRP_OBSERVACAO: TMemoField
      FieldName = 'TRP_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsTransportadoraCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object CdsTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      Size = 150
    end
    object CdsTransportadoraTRP_BAIRRO: TStringField
      FieldName = 'TRP_BAIRRO'
      Size = 40
    end
    object CdsTransportadoraTRP_PLACA: TStringField
      FieldName = 'TRP_PLACA'
      EditMask = 'AAA-9999;0; '
      Size = 10
    end
    object CdsTransportadoraTRP_PLACAUF: TStringField
      FieldName = 'TRP_PLACAUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object DspTransportadora: TDataSetProvider
    DataSet = SqlTransportadora
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 369
  end
  object SqlTransportadora: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TRP0000')
    SQLConnection = DBConn
    Left = 248
    Top = 369
    object SqlTransportadoraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlTransportadoraTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object SqlTransportadoraTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object SqlTransportadoraTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlTransportadoraTRP_UF: TStringField
      FieldName = 'TRP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlTransportadoraTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlTransportadoraTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlTransportadoraTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqlTransportadoraTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlTransportadoraTRP_FAX: TStringField
      FieldName = 'TRP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlTransportadoraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object SqlTransportadoraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlTransportadoraTRP_HOME: TStringField
      FieldName = 'TRP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlTransportadoraTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlTransportadoraTRP_OBSERVACAO: TMemoField
      FieldName = 'TRP_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object SqlTransportadoraCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object SqlTransportadoraTRP_EMAIL: TStringField
      FieldName = 'TRP_EMAIL'
      Size = 150
    end
    object SqlTransportadoraTRP_BAIRRO: TStringField
      FieldName = 'TRP_BAIRRO'
      Size = 40
    end
    object SqlTransportadoraTRP_PLACA: TStringField
      FieldName = 'TRP_PLACA'
      Size = 10
    end
    object SqlTransportadoraTRP_PLACAUF: TStringField
      FieldName = 'TRP_PLACAUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
  end
  object prprtModelo7: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 95000
    PrinterSetup.mmPaperWidth = 80000
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
    Left = 604
    Top = 178
    Version = '16.02'
    mmColumnWidth = 103000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 90000
      mmPrintPosition = 0
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 21431
        mmWidth = 25929
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText54'
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
        WordWrap = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 26376
        mmWidth = 70081
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText55'
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
        WordWrap = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 8000
        mmLeft = 2288
        mmTop = 30791
        mmWidth = 69850
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText56'
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
        mmLeft = 2117
        mmTop = 39248
        mmWidth = 69850
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'TRANSPORTADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 50800
        mmWidth = 38806
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText57'
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
        mmHeight = 3528
        mmLeft = 2117
        mmTop = 55565
        mmWidth = 69815
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText59'
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
        mmLeft = 2381
        mmTop = 43929
        mmWidth = 21696
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3881
        mmLeft = 16669
        mmTop = 70304
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 70476
        mmWidth = 11907
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label48'
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
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 76465
        mmWidth = 18521
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1235
        mmLeft = 181
        mmTop = 48977
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1235
        mmLeft = 93
        mmTop = 75001
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer3
      end
      object lbRazaoMod7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lbRazaoMod7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6174
        mmLeft = 1588
        mmTop = 796
        mmWidth = 70379
        BandType = 4
        LayerName = BandLayer3
      end
      object lbEndeMod7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'plblEndereco2'
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
        mmLeft = 1592
        mmTop = 7678
        mmWidth = 70379
        BandType = 4
        LayerName = BandLayer3
      end
      object lbFoneMod7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lbFoneMod7'
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
        mmTop = 12259
        mmWidth = 70355
        BandType = 4
        LayerName = BandLayer3
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1235
        mmLeft = 0
        mmTop = 17644
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBBarCode1: TppDBBarCode
        DesignLayer = ppDesignLayer5
        UserName = 'DBBarCode1'
        Anchors = []
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clBlack
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        PrintHumanReadable = False
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 10372
        mmLeft = 30427
        mmTop = 76465
        mmWidth = 41444
        BandType = 4
        LayerName = BandLayer3
        mmBarWidth = 230
        mmWideBarRatio = 76200
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText58'
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 80963
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText61'
        DataField = 'TRP_ENDERE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 2114
        mmTop = 59531
        mmWidth = 70029
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText62'
        DataField = 'TRP_CIDADE'
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
        mmTop = 64294
        mmWidth = 70027
        BandType = 4
        LayerName = BandLayer3
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'BandLayer3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object prprtModelo6: TppReport
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
    PrinterSetup.mmPaperHeight = 45000
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
    Left = 532
    Top = 178
    Version = '16.02'
    mmColumnWidth = 103000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand8: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41000
      mmPrintPosition = 0
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2644
        mmTop = 13057
        mmWidth = 16849
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 17290
        mmWidth = 94721
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 21259
        mmWidth = 94721
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 75669
        mmTop = 25405
        mmWidth = 21696
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 25405
        mmWidth = 71173
        BandType = 4
        LayerName = BandLayer8
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 62175
        mmTop = 1148
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 62175
        mmTop = 5646
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 3173
        mmTop = 33963
        mmWidth = 93927
        BandType = 4
        LayerName = BandLayer8
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 29730
        mmWidth = 21336
        BandType = 4
        LayerName = BandLayer8
      end
      object ppBarCode5: TppBarCode
        DesignLayer = ppDesignLayer8
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
        mmLeft = 62175
        mmTop = 9882
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer8
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object lblRazaoMod6: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 1148
        mmWidth = 59267
        BandType = 4
        LayerName = BandLayer8
      end
      object lblEnderecoMod6: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2556
        mmTop = 4853
        mmWidth = 59267
        BandType = 4
        LayerName = BandLayer8
      end
      object lblTelefoneMod6: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 2644
        mmTop = 8821
        mmWidth = 59267
        BandType = 4
        LayerName = BandLayer8
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer8
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
        mmLeft = 60587
        mmTop = 29640
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer8
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
        mmLeft = 76990
        mmTop = 29640
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer8
      end
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'BandLayer8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object prprModelo8: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 95000
    PrinterSetup.mmPaperWidth = 80000
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
    Left = 660
    Top = 178
    Version = '16.02'
    mmColumnWidth = 103000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand9: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 90000
      mmPrintPosition = 0
      object plempresaMod8: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'plempresaMod8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lFantasia'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial Narrow'
        Font.Size = 20
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 17194
        mmLeft = 794
        mmTop = 2112
        mmWidth = 74083
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label7'
        AutoSize = False
        Caption = 'DESTINO/CIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 20
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 15610
        mmLeft = 794
        mmTop = 21253
        mmWidth = 74083
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText1'
        Color = clBlack
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 17546
        mmLeft = 794
        mmTop = 37578
        mmWidth = 74083
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label9'
        AutoSize = False
        Caption = 'NOTA FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 20
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 15610
        mmLeft = 794
        mmTop = 56451
        mmWidth = 74083
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText71'
        Color = clBlack
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial Narrow'
        Font.Size = 28
        Font.Style = [fsBold]
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 15610
        mmLeft = 794
        mmTop = 72235
        mmWidth = 74083
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object prprtModelo9: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 80000
    PrinterSetup.mmPaperWidth = 60000
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
    Left = 732
    Top = 178
    Version = '16.02'
    mmColumnWidth = 55000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand10: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 78000
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 17727
        mmWidth = 25929
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText54'
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
        WordWrap = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 7576
        mmLeft = 2117
        mmTop = 22144
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText55'
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
        WordWrap = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3881
        mmLeft = 2288
        mmTop = 30263
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText56'
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
        mmLeft = 2117
        mmTop = 34840
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Caption = 'TRANSPORTADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 43920
        mmWidth = 38806
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText57'
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
        mmHeight = 3528
        mmLeft = 2117
        mmTop = 48509
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText59'
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
        mmLeft = 2381
        mmTop = 39169
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3881
        mmLeft = 16669
        mmTop = 60000
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 60000
        mmWidth = 11907
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label48'
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
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 66675
        mmWidth = 18521
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1235
        mmLeft = 181
        mmTop = 43153
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 794
        mmTop = 63765
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer10
      end
      object lbRazaoMod9: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'lbRazaoMod9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBLRAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6174
        mmLeft = 1588
        mmTop = 796
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object lbEndeMod9: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'lbEndeMod9'
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
        mmLeft = 1592
        mmTop = 7678
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object lbFoneMod9: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'lbFoneMod9'
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
        mmTop = 12259
        mmWidth = 51968
        BandType = 4
        LayerName = BandLayer10
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1235
        mmLeft = 0
        mmTop = 16764
        mmWidth = 74877
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBBarCode2: TppDBBarCode
        DesignLayer = ppDesignLayer10
        UserName = 'DBBarCode1'
        Anchors = []
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clBlack
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        PrintHumanReadable = False
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 11727
        mmLeft = 20903
        mmTop = 65443
        mmWidth = 33513
        BandType = 4
        LayerName = BandLayer10
        mmBarWidth = 230
        mmWideBarRatio = 76200
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText58'
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3704
        mmLeft = 4234
        mmTop = 71087
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText61'
        DataField = 'TRP_ENDERE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3528
        mmLeft = 2381
        mmTop = 52300
        mmWidth = 51858
        BandType = 4
        LayerName = BandLayer10
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText62'
        DataField = 'TRP_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 3528
        mmLeft = 2380
        mmTop = 56180
        mmWidth = 51858
        BandType = 4
        LayerName = BandLayer10
      end
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'BandLayer10'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object prprtModelo10: TppReport
    AutoStop = False
    DataPipeline = ppDBPEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 2000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 75000
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
    Left = 812
    Top = 178
    Version = '16.02'
    mmColumnWidth = 98000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand12: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 73000
      mmPrintPosition = 0
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dest.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4762
        mmLeft = 2646
        mmTop = 19315
        mmWidth = 10848
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4716
        mmLeft = 13758
        mmTop = 19315
        mmWidth = 83603
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4371
        mmLeft = 2556
        mmTop = 26343
        mmWidth = 94822
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4716
        mmLeft = 13189
        mmTop = 36490
        mmWidth = 84092
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4716
        mmLeft = 17223
        mmTop = 41662
        mmWidth = 80112
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 2692
        mmTop = 46757
        mmWidth = 22432
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4498
        mmLeft = 25650
        mmTop = 46757
        mmWidth = 23928
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSP'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4256
        mmLeft = 33053
        mmTop = 60123
        mmWidth = 64331
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4762
        mmLeft = 2381
        mmTop = 60061
        mmWidth = 30255
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volumes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4762
        mmLeft = 51019
        mmTop = 46790
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VOLUME'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4486
        mmLeft = 68270
        mmTop = 46895
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer12
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText88'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPEtiqueta'
        mmHeight = 4371
        mmLeft = 15471
        mmTop = 31465
        mmWidth = 81823
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label59'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4418
        mmLeft = 2646
        mmTop = 31485
        mmWidth = 12435
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label60'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 36448
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer12
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label61'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 2646
        mmTop = 41636
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer12
      end
      object lbl3: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label3'
        Caption = 'Remetente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 65018
        mmWidth = 22087
        BandType = 4
        LayerName = BandLayer12
      end
      object Remetente: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Remetente'
        Caption = 'Remetente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 24871
        mmTop = 65018
        mmWidth = 72498
        BandType = 4
        LayerName = BandLayer12
      end
      object empresa: TppImage
        DesignLayer = ppDesignLayer12
        UserName = 'pmgLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        mmHeight = 18130
        mmLeft = 29369
        mmTop = 230
        mmWidth = 39688
        BandType = 4
        LayerName = BandLayer12
      end
    end
    object ppDesignLayers12: TppDesignLayers
      object ppDesignLayer12: TppDesignLayer
        UserName = 'BandLayer12'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList12: TppParameterList
    end
  end
  object prprtModelo11: TppReport
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
    PrinterSetup.mmPaperHeight = 50000
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
    Left = 892
    Top = 178
    Version = '16.02'
    mmColumnWidth = 98000
    DataPipelineName = 'ppDBPEtiqueta'
    object ppDetailBand11: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41000
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2644
        mmTop = 17157
        mmWidth = 16849
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2556
        mmTop = 20775
        mmWidth = 94721
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText90: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2556
        mmTop = 24334
        mmWidth = 94721
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 75669
        mmTop = 28070
        mmWidth = 21696
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2556
        mmTop = 28070
        mmWidth = 71173
        BandType = 4
        LayerName = BandLayer13
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 58473
        mmTop = 1058
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 58473
        mmTop = 5556
        mmWidth = 35190
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 3173
        mmTop = 36218
        mmWidth = 93927
        BandType = 4
        LayerName = BandLayer13
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2556
        mmTop = 32190
        mmWidth = 24016
        BandType = 4
        LayerName = BandLayer13
      end
      object ppBarCode6: TppBarCode
        DesignLayer = ppDesignLayer11
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
        mmLeft = 57653
        mmTop = 9790
        mmWidth = 38873
        BandType = 4
        LayerName = BandLayer13
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object lblRazaoMod11: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2556
        mmTop = 1148
        mmWidth = 55167
        BandType = 4
        LayerName = BandLayer13
      end
      object lblEnderecoMod11: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmHeight = 7734
        mmLeft = 2556
        mmTop = 4853
        mmWidth = 55167
        BandType = 4
        LayerName = BandLayer13
      end
      object lblTelefoneMod11: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 2646
        mmTop = 12700
        mmWidth = 55100
        BandType = 4
        LayerName = BandLayer13
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer11
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
        mmLeft = 60587
        mmTop = 32100
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer11
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
        mmLeft = 76990
        mmTop = 31895
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer13
      end
    end
    object ppDesignLayers11: TppDesignLayers
      object ppDesignLayer11: TppDesignLayer
        UserName = 'BandLayer13'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList11: TppParameterList
    end
  end
end
