object FormGimpCxFixo: TFormGimpCxFixo
  Left = 163
  Top = 227
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Impress'#227'o'
  ClientHeight = 230
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group03: TGroupBox
    Left = 0
    Top = 199
    Width = 413
    Height = 41
    TabOrder = 3
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = '&Configura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
    end
    object BitOk: TBitBtn
      Left = 207
      Top = 11
      Width = 74
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 325
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object Group01: TGroupBox
    Left = 0
    Top = 119
    Width = 413
    Height = 41
    Caption = 'Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadCxAberto: TRadioButton
      Left = 209
      Top = 16
      Width = 99
      Height = 17
      Caption = 'Caixa em &Aberto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadCxAbertoClick
    end
    object RadCxTodos: TRadioButton
      Left = 45
      Top = 16
      Width = 120
      Height = 17
      Caption = 'Todos &Lan'#231'amentos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadCxTodosClick
    end
  end
  object Group02: TGroupBox
    Left = 0
    Top = 160
    Width = 413
    Height = 41
    Caption = '&Peri'#243'do'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object LabData: TLabel
      Left = 65
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabAte: TLabel
      Left = 200
      Top = 16
      Width = 19
      Height = 13
      Caption = 'At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditDataI: TJvDateEdit
      Left = 93
      Top = 13
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnClick = EditDataIClick
      OnExit = EditDataIExit
    end
    object EditDataf: TJvDateEdit
      Left = 226
      Top = 13
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnClick = EditDatafClick
      OnExit = EditDatafExit
    end
  end
  object GroupTipoRel: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 119
    Caption = 'Tipos de Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBoxRelatorio: TListBox
      Left = 3
      Top = 15
      Width = 282
      Height = 100
      Style = lbOwnerDrawVariable
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LTBoxRelatorioClick
      OnDblClick = LTBoxRelatorioDblClick
    end
  end
  object GroupDispositivo: TGroupBox
    Left = 291
    Top = 0
    Width = 121
    Height = 119
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object RadVideo: TRadioButton
      Left = 14
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
      Left = 14
      Top = 46
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
    object RadText: TRadioButton
      Left = 14
      Top = 70
      Width = 90
      Height = 17
      Caption = '&Arquivo Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 288
    Top = 208
  end
  object SqlCdsRelCxFixo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select * from CAIXA001 ORDER BY CXA_DATA,CXA_TIPODOC Desc, CXA_L' +
      'ANCTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from CAIXA001 ORDER BY CXA_DATA,CXA_TIPODOC Desc, CXA_L' +
      'ANCTO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 415
    Top = 6
    object SqlCdsRelCxFixoCXA_LANCTO: TStringField
      FieldName = 'CXA_LANCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object SqlCdsRelCxFixoCXA_DATA: TSQLTimeStampField
      FieldName = 'CXA_DATA'
    end
    object SqlCdsRelCxFixoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsRelCxFixoCXA_HISTORICO: TStringField
      FieldName = 'CXA_HISTORICO'
      Size = 50
    end
    object SqlCdsRelCxFixoCXA_DOCUMENTO: TStringField
      FieldName = 'CXA_DOCUMENTO'
      Size = 12
    end
    object SqlCdsRelCxFixoCXA_TIPODOC: TStringField
      FieldName = 'CXA_TIPODOC'
      Size = 1
    end
    object SqlCdsRelCxFixoCXA_SAIDA: TFMTBCDField
      FieldName = 'CXA_SAIDA'
      Precision = 15
    end
    object SqlCdsRelCxFixoCXA_ENTRADA: TFMTBCDField
      FieldName = 'CXA_ENTRADA'
      Precision = 15
    end
    object SqlCdsRelCxFixoCXA_SITUACAO: TStringField
      FieldName = 'CXA_SITUACAO'
      Size = 1
    end
    object SqlCdsRelCxFixoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRelCxFixo: TDataSource
    DataSet = CdsRelCxFixo
    Left = 480
    Top = 6
  end
  object ppDBCxFixo: TppDBPipeline
    DataSource = DsRelCxFixo
    UserName = 'DBCxFixo'
    Left = 512
    Top = 6
    object ppDBCxFixoppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 0
    end
    object ppDBCxFixoppField2: TppField
      FieldAlias = 'LANCTO'
      FieldName = 'LANCTO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 1
    end
    object ppDBCxFixoppField3: TppField
      FieldAlias = 'DOCUMENTO'
      FieldName = 'DOCUMENTO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 2
    end
    object ppDBCxFixoppField4: TppField
      FieldAlias = 'TIPODOC'
      FieldName = 'TIPODOC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBCxFixoppField5: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBCxFixoppField6: TppField
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppDBCxFixoppField7: TppField
      FieldAlias = 'SAIDA'
      FieldName = 'SAIDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object ppDBCxFixoppField8: TppField
      FieldAlias = 'ACUMULADO'
      FieldName = 'ACUMULADO'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object ppDBCxFixoppField9: TppField
      FieldAlias = 'SALDO_CC'
      FieldName = 'SALDO_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
  end
  object ppRelCxFixo00: TppReport
    AutoStop = False
    DataPipeline = ppDBCxFixo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCXFIXO00.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
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
    Left = 544
    Top = 6
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCxFixo'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 155046
        mmTop = 794
        mmWidth = 40746
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 170127
        mmTop = 7673
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15610
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LANCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 11906
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 11906
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 31750
        mmTop = 11906
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HIST'#211'RICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 53975
        mmTop = 11906
        mmWidth = 79375
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 135202
        mmTop = 11906
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SAIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 157957
        mmTop = 11906
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3344
        mmLeft = 186257
        mmTop = 11906
        mmWidth = 9271
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'LANCTO'
        DataPipeline = ppDBCxFixo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA'
        DataPipeline = ppDBCxFixo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DOCUMENTO'
        DataPipeline = ppDBCxFixo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3175
        mmLeft = 31750
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'HISTORICO'
        DataPipeline = ppDBCxFixo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3175
        mmLeft = 53975
        mmTop = 0
        mmWidth = 79111
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADA'
        DataPipeline = ppDBCxFixo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3246
        mmLeft = 135202
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAIDA'
        DataPipeline = ppDBCxFixo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3246
        mmLeft = 157957
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACUMULADO'
        DataPipeline = ppDBCxFixo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 135202
        mmTop = 0
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_CC'
        DataPipeline = ppDBCxFixo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCxFixo'
        mmHeight = 3440
        mmLeft = 158486
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DATA'
      DataPipeline = ppDBCxFixo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBCxFixo'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'ENTRADA'
          DataPipeline = ppDBCxFixo
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCxFixo'
          mmHeight = 3440
          mmLeft = 135467
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'SAIDA'
          DataPipeline = ppDBCxFixo
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCxFixo'
          mmHeight = 3440
          mmLeft = 158221
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
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
  object CdsRelCxFixo: TClientDataSet
    PersistDataPacket.Data = {
      060100009619E0BD010000001800000008000000000003000000060104444154
      410400060000000000064C414E43544F01004900000001000557494454480200
      0200060009444F43554D454E544F010049000000010005574944544802000200
      0C00075449504F444F4301004900000001000557494454480200020001000948
      4953544F5249434F010049000000010005574944544802000200320007454E54
      52414441080004000000010007535542545950450200490006004D6F6E657900
      055341494441080004000000010007535542545950450200490006004D6F6E65
      7900094143554D554C41444F0800040000000100075355425459504502004900
      06004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = CdsRelCxFixoCalcFields
    Left = 448
    Top = 8
    object CdsRelCxFixoDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsRelCxFixoLANCTO: TStringField
      FieldName = 'LANCTO'
      Size = 6
    end
    object CdsRelCxFixoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 12
    end
    object CdsRelCxFixoTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 1
    end
    object CdsRelCxFixoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CdsRelCxFixoENTRADA: TCurrencyField
      FieldName = 'ENTRADA'
    end
    object CdsRelCxFixoSAIDA: TCurrencyField
      FieldName = 'SAIDA'
    end
    object CdsRelCxFixoACUMULADO: TCurrencyField
      FieldName = 'ACUMULADO'
    end
    object CdsRelCxFixoSALDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SALDO_CC'
      Calculated = True
    end
  end
end
