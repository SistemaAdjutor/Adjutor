object FormGimpEveRep: TFormGimpEveRep
  Left = 84
  Top = 128
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o de Eventos Lan'#231'ados'
  ClientHeight = 179
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group07: TGroupBox
    Left = 119
    Top = 93
    Width = 241
    Height = 97
    TabOrder = 3
    object BitConfig: TBitBtn
      Left = 15
      Top = 22
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 15
      Top = 53
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      TabOrder = 0
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 125
      Top = 53
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitCancelarClick
    end
  end
  object Grp00: TGroupBox
    Left = 0
    Top = 48
    Width = 360
    Height = 41
    Caption = 'Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object CbxRepre: TComboBox
      Left = 4
      Top = 15
      Width = 350
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      MaxLength = 35
      ParentFont = False
      TabOrder = 0
      Text = 'TODOS'
      OnClick = CbxRepreClick
      OnExit = CbxRepreExit
      Items.Strings = (
        'TODOS')
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 93
    Width = 118
    Height = 97
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
  object Group05: TGroupBox
    Left = 0
    Top = 1
    Width = 360
    Height = 50
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 67
      Top = 24
      Width = 17
      Height = 13
      Caption = '&De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 194
      Top = 24
      Width = 16
      Height = 13
      Caption = '&At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditDataI: TJvDateEdit
      Left = 86
      Top = 20
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
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
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 217
      Top = 20
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
      OnExit = EditDataFExit
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 213
    Top = 145
  end
  object SqlCdsRepre: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select REP_CODIGO, REP_NOME, EMP_CODIGO from REP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select REP_CODIGO, REP_NOME, EMP_CODIGO from REP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 64
    object SqlCdsRepreREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRepreREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepreEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRelEve00: TSqlClientDataSet
    Active = True
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'E1.ERP_CODIGO,'#13#10'E1.ERP_VALOR,'#13#10'E1.ERP_TIPO,'#13#10'E1.ERP_DATA' +
      ','#13#10'E1.ERP_COMPL,'#13#10'E1.ERP_IMPOSTO,'#13#10'E1.EVE_CODIGO,'#13#10'V1.EVE_DESCRI' +
      ','#13#10'E1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'R1.REP_SITUACAO,'#13#10'E1.EMP_CODIGO' +
      #13#10'FROM EVE_RP01 E1'#13#10'LEFT JOIN rep0000 R1 ON E1.rep_codigo = R1.r' +
      'ep_codigo'#13#10'LEFT JOIN EVE0000 V1 ON E1.eve_codigo = V1.eve_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRelEve00CalcFields
    CommandText = 
      'SELECT'#13#10'E1.ERP_CODIGO,'#13#10'E1.ERP_VALOR,'#13#10'E1.ERP_TIPO,'#13#10'E1.ERP_DATA' +
      ','#13#10'E1.ERP_COMPL,'#13#10'E1.ERP_IMPOSTO,'#13#10'E1.EVE_CODIGO,'#13#10'V1.EVE_DESCRI' +
      ','#13#10'E1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'R1.REP_SITUACAO,'#13#10'E1.EMP_CODIGO' +
      #13#10'FROM EVE_RP01 E1'#13#10'LEFT JOIN rep0000 R1 ON E1.rep_codigo = R1.r' +
      'ep_codigo'#13#10'LEFT JOIN EVE0000 V1 ON E1.eve_codigo = V1.eve_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 368
    Top = 8
    object SqlCdsRelEve00ERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRelEve00ERP_VALOR: TFMTBCDField
      FieldName = 'ERP_VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRelEve00ERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      Size = 1
    end
    object SqlCdsRelEve00ERP_DATA: TSQLTimeStampField
      FieldName = 'ERP_DATA'
    end
    object SqlCdsRelEve00ERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      Size = 30
    end
    object SqlCdsRelEve00ERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      Size = 1
    end
    object SqlCdsRelEve00EVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object SqlCdsRelEve00EVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object SqlCdsRelEve00REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsRelEve00REP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRelEve00Total_Debito_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Debito_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object SqlCdsRelEve00Total_Credito_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Credito_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object SqlCdsRelEve00Total_Resulta_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Resulta_CC'
      Calculated = True
    end
    object SqlCdsRelEve00EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRelEve00: TDataSource
    DataSet = SqlCdsRelEve00
    Left = 400
    Top = 8
  end
  object ppDBRelEve00: TppDBPipeline
    DataSource = DsRelEve00
    UserName = 'DBRelEve00'
    Left = 432
    Top = 8
    object ppDBRelEve00ppField1: TppField
      FieldAlias = 'ERP_CODIGO'
      FieldName = 'ERP_CODIGO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 0
    end
    object ppDBRelEve00ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ERP_VALOR'
      FieldName = 'ERP_VALOR'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 1
    end
    object ppDBRelEve00ppField3: TppField
      FieldAlias = 'ERP_TIPO'
      FieldName = 'ERP_TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppDBRelEve00ppField4: TppField
      FieldAlias = 'ERP_DATA'
      FieldName = 'ERP_DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 3
    end
    object ppDBRelEve00ppField5: TppField
      FieldAlias = 'ERP_COMPL'
      FieldName = 'ERP_COMPL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppDBRelEve00ppField6: TppField
      FieldAlias = 'ERP_IMPOSTO'
      FieldName = 'ERP_IMPOSTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object ppDBRelEve00ppField7: TppField
      FieldAlias = 'EVE_CODIGO'
      FieldName = 'EVE_CODIGO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBRelEve00ppField8: TppField
      FieldAlias = 'EVE_DESCRI'
      FieldName = 'EVE_DESCRI'
      FieldLength = 25
      DisplayWidth = 25
      Position = 7
    end
    object ppDBRelEve00ppField9: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppDBRelEve00ppField10: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 35
      DisplayWidth = 35
      Position = 9
    end
    object ppDBRelEve00ppField11: TppField
      FieldAlias = 'Total_Debito_CC'
      FieldName = 'Total_Debito_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object ppDBRelEve00ppField12: TppField
      FieldAlias = 'Total_Credito_CC'
      FieldName = 'Total_Credito_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object ppDBRelEve00ppField13: TppField
      FieldAlias = 'Total_Resulta_CC'
      FieldName = 'Total_Resulta_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object ppDBRelEve00ppField14: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 13
    end
  end
  object ppRelEve00: TppReport
    AutoStop = False
    DataPipeline = ppDBRelEve00
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELEve00.rtm'
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
    Left = 464
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelEve00'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 11377
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
        mmHeight = 3302
        mmLeft = 0
        mmTop = 794
        mmWidth = 22479
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RELAT'#211'RIO DE EVENTOS LAN'#199'ADOS PARA VENDEDORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3705
        mmLeft = 0
        mmTop = 4233
        mmWidth = 80698
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO2: TppLabel
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
        mmWidth = 19844
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
        mmTop = 11112
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
        mmLeft = 169069
        mmTop = 794
        mmWidth = 26988
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
        mmLeft = 169069
        mmTop = 7673
        mmWidth = 26988
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
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ERP_CODIGO'
        DataPipeline = ppDBRelEve00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'EVE_DESCRI'
        DataPipeline = ppDBRelEve00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ERP_COMPL'
        DataPipeline = ppDBRelEve00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object DbIrrf: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DbIrrf'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ERP_IMPOSTO'
        DataPipeline = ppDBRelEve00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total_Debito_CC'
        DataPipeline = ppDBRelEve00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ERP_DATA'
        DataPipeline = ppDBRelEve00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total_Credito_CC'
        DataPipeline = ppDBRelEve00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelEve00'
        mmHeight = 3175
        mmLeft = 137848
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = ppDBRelEve00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelEve00'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Representante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'REP_CODIGO'
          DataPipeline = ppDBRelEve00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRelEve00'
          mmHeight = 3175
          mmLeft = 19050
          mmTop = 0
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'REP_NOME'
          DataPipeline = ppDBRelEve00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRelEve00'
          mmHeight = 3175
          mmLeft = 24606
          mmTop = 0
          mmWidth = 78317
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 1058
          mmTop = 4498
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Descri'#231#227'o do Evento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 10848
          mmTop = 4498
          mmWidth = 55033
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 66411
          mmTop = 4498
          mmWidth = 55033
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'IRRF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 176213
          mmTop = 4498
          mmWidth = 7408
          BandType = 3
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
          mmTop = 8202
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'D'#233'bito R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 157427
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 121973
          mmTop = 4498
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cr'#233'dito R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 137848
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'Total_Credito_CC'
          DataPipeline = ppDBRelEve00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDBRelEve00'
          mmHeight = 3175
          mmLeft = 29104
          mmTop = 794
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
          DataField = 'Total_Debito_CC'
          DataPipeline = ppDBRelEve00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDBRelEve00'
          mmHeight = 3175
          mmLeft = 92075
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total de Cr'#233'ditos R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 794
          mmTop = 794
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total de Debitos R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 65881
          mmTop = 794
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Resultado R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 119592
          mmTop = 794
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'Total_Resulta_CC'
          DataPipeline = ppDBRelEve00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDBRelEve00'
          mmHeight = 3175
          mmLeft = 138113
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        4462497272664F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636514A000000070726F636564757265204462
        497272664F6E476574546578742876617220546578743A20537472696E67293B
        0D0A626567696E0D0A20202020696620444252656C45766530305B274552505F
        494D504F53544F275D203D20275327207468656E0D0A20202020202020546578
        74203A3D202753696D270D0A20202020656C73650D0A20202020202020546578
        74203A3D20274EC3A36F273B0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D650606446249727266094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000000}
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
end
