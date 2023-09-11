inherited frmNovaEtiquetaEntrada: TfrmNovaEtiquetaEntrada
  Caption = 'Etiqueta de entrada'
  ClientHeight = 562
  ClientWidth = 1012
  ExplicitWidth = 1020
  ExplicitHeight = 589
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1012
    Height = 81
    Align = alTop
    TabOrder = 0
    object lNotaFiscal: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'lNotaFiscal'
    end
    object lfornecedor: TLabel
      Left = 8
      Top = 43
      Width = 55
      Height = 13
      Caption = 'lfornecedor'
    end
    object lemissao: TLabel
      Left = 342
      Top = 16
      Width = 40
      Height = 13
      Caption = 'lemissao'
    end
    object lresp: TLabel
      Left = 616
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Respons'#225'vel :'
    end
    object lentrada: TLabel
      Left = 342
      Top = 43
      Width = 40
      Height = 13
      Caption = 'lentrada'
    end
    object edResponsavel: TEdit
      Left = 690
      Top = 13
      Width = 159
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 81
    Width = 1012
    Height = 317
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1010
      Height = 315
      Align = alClient
      BiDiMode = bdLeftToRight
      DataSource = dsitens
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'selecionado'
          ImeMode = imClose
          ReadOnly = True
          Title.Caption = '   *'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          ReadOnly = True
          Title.Caption = 'Refer'#234'ncia'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o do produto'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          ReadOnly = True
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMLOTE'
          Title.Caption = 'Lote'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDL_DATA_FABRICACAO'
          Title.Caption = 'Fabrica'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDL_DATA_VALIDADE'
          Title.Caption = 'Validade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdeItens'
          Title.Caption = 'Qtde itens'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdeEtiquetas'
          Title.Caption = 'Qtde etiquetas'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 520
    Width = 1012
    Height = 42
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 839
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 920
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 398
    Width = 1012
    Height = 122
    Align = alBottom
    TabOrder = 3
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 1010
      Height = 120
      Align = alClient
      Caption = 'Modelo'
      ItemIndex = 0
      Items.Strings = (
        'Modelo 1 - Produto (100mm x 75mm)')
      TabOrder = 0
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 568
    Top = 232
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 344
    Top = 280
  end
  inherited DBConn: TSQLConnection
    Left = 520
    Top = 233
  end
  inherited qAux: TSQLQuery
    Left = 482
    Top = 229
  end
  inherited qAux2: TSQLQuery
    Left = 402
    Top = 244
  end
  inherited qAux3: TSQLQuery
    Left = 442
    Top = 244
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 112
    Top = 313
    object cdsItemselecionado: TBooleanField
      FieldName = 'selecionado'
      OnGetText = cdsItemselecionadoGetText
    end
    object cdsItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsItemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object cdsItemENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object cdsItemPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object cdsItemNUMLOTE: TStringField
      FieldName = 'NUMLOTE'
      OnChange = cdsItemNUMLOTEChange
      Size = 30
    end
    object cdsItemPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      OnChange = cdsItemNUMLOTEChange
    end
    object cdsItemPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      OnChange = cdsItemNUMLOTEChange
    end
    object cdsItemQtdeEtiquetas: TIntegerField
      FieldName = 'QtdeEtiquetas'
      OnChange = cdsItemNUMLOTEChange
    end
    object cdsItemQtdeItens: TFMTBCDField
      FieldName = 'QtdeItens'
      OnChange = cdsItemNUMLOTEChange
      Size = 0
    end
  end
  object dsitens: TDataSource
    DataSet = cdsItem
    Left = 208
    Top = 259
  end
  object prModelo1: TppReport
    AutoStop = False
    DataPipeline = pipItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 75000
    PrinterSetup.mmPaperWidth = 110000
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
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 108
    Top = 174
    Version = '16.02'
    mmColumnWidth = 90000
    DataPipelineName = 'pipItens'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 75000
      mmPrintPosition = 0
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 15346
        mmLeft = 30956
        mmTop = 1323
        mmWidth = 36513
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'PRD_DESCRI'
        DataPipeline = pipItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 4498
        mmLeft = 15875
        mmTop = 31221
        mmWidth = 69056
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Produto: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 31221
        mmWidth = 14023
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'PRD_REFER'
        DataPipeline = pipItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 8467
        mmLeft = 27252
        mmTop = 19315
        mmWidth = 43656
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 35983
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'NUMLOTE'
        DataPipeline = pipItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 4234
        mmLeft = 9790
        mmTop = 35983
        mmWidth = 16404
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'PRDL_DATA_FABRICACAO'
        DataPipeline = pipItens
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 4498
        mmLeft = 21696
        mmTop = 40481
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Data de Fab.: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 40481
        mmWidth = 21960
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Fornecedor: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 45508
        mmWidth = 19315
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Validade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 40481
        mmWidth = 14288
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'PRDL_DATA_VALIDADE'
        DataPipeline = pipItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 4233
        mmLeft = 64294
        mmTop = 40481
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 50536
        mmWidth = 5556
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Quantidade: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 55827
        mmWidth = 19579
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Respons'#225'vel recebimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 61119
        mmWidth = 42333
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        Caption = 'Label9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 45773
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'QtdeItens'
        DataPipeline = pipItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipItens'
        mmHeight = 4498
        mmLeft = 21696
        mmTop = 55827
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 61119
        mmWidth = 40746
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        Caption = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 50536
        mmWidth = 11906
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        Caption = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 50536
        mmWidth = 11906
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        Caption = 'Label13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 55563
        mmWidth = 11906
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Caption = 'Resp. e data : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 66146
        mmWidth = 22754
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        OnGetText = ppLabel10GetText
        Caption = 'Label101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 25135
        mmTop = 66146
        mmWidth = 36248
        BandType = 4
        LayerName = BandLayer4
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64294
        mmTop = 66146
        mmWidth = 16933
        BandType = 4
        LayerName = BandLayer4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Caption = 'APROVADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 82550
        mmTop = 66146
        mmWidth = 19579
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pipItens: TppDBPipeline
    DataSource = dsItensrel
    CloseDataSource = True
    UserName = 'pipItens'
    Left = 28
    Top = 180
    object pipItensppField1: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipItensppField2: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipItensppField3: TppField
      FieldAlias = 'ENF_QTDE'
      FieldName = 'ENF_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipItensppField4: TppField
      FieldAlias = 'PRDL_REGISTRO'
      FieldName = 'PRDL_REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipItensppField5: TppField
      FieldAlias = 'NUMLOTE'
      FieldName = 'NUMLOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipItensppField6: TppField
      FieldAlias = 'PRDL_DATA_FABRICACAO'
      FieldName = 'PRDL_DATA_FABRICACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipItensppField7: TppField
      FieldAlias = 'PRDL_DATA_VALIDADE'
      FieldName = 'PRDL_DATA_VALIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipItensppField8: TppField
      FieldAlias = 'QtdeEtiquetas'
      FieldName = 'QtdeEtiquetas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipItensppField9: TppField
      FieldAlias = 'QtdeItens'
      FieldName = 'QtdeItens'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object cdsItensRel: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 264
    Top = 113
    object cdsItensRelPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsItensRelPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object cdsItensRelENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object cdsItensRelPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object cdsItensRelNUMLOTE: TStringField
      FieldName = 'NUMLOTE'
      Size = 30
    end
    object cdsItensRelPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object cdsItensRelPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object cdsItensRelQtdeEtiquetas: TIntegerField
      FieldName = 'QtdeEtiquetas'
    end
    object cdsItensRelQtdeItens: TFMTBCDField
      FieldName = 'QtdeItens'
      Size = 0
    end
  end
  object dsItensrel: TDataSource
    DataSet = cdsItensRel
    Left = 280
    Top = 211
  end
end
