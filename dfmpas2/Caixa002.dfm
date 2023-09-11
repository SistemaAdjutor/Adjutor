inherited FormCaixaFecha: TFormCaixaFecha
  Left = 109
  Top = 104
  BorderIcons = [biSystemMenu]
  Caption = 'Fechamento de Caixa'
  ClientHeight = 397
  ClientWidth = 880
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  ExplicitWidth = 896
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 880
    Height = 115
    Align = alTop
    Caption = 'Fechamento de Caixa'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 22
      Width = 215
      Height = 14
      Caption = 'Realizar fechamento de caixa entre os dias :'
    end
    object Label3: TLabel
      Left = 13
      Top = 55
      Width = 25
      Height = 14
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 154
      Top = 56
      Width = 20
      Height = 14
      Caption = 'At'#233':'
    end
    object CheckTransporte: TCheckBox
      Left = 13
      Top = 85
      Width = 244
      Height = 17
      Hint = 'Considera o saldo final do caixa como inicio do pr'#243'ximo caixa'
      Caption = 'Transportar saldo para o pr'#243'ximo caixa'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 2
    end
    object EditDataI: TJvDateEdit
      Left = 41
      Top = 51
      Width = 105
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = EditDataIExit
    end
    object EditDataf: TJvDateEdit
      Left = 181
      Top = 51
      Width = 105
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 115
    Width = 880
    Height = 249
    Hint = 'D'#234' duplo click no Fechamento desejado para Estornar/Excluir....'
    Align = alClient
    Color = 16776176
    DataSource = DsFechaCaixa
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CXF_DATAFECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fechamento'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXF_DINICIO'
        Title.Alignment = taCenter
        Title.Caption = 'D.Inicio'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXF_DFIM'
        Title.Alignment = taCenter
        Title.Caption = 'D.Final'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXF_ENTRADAS'
        Title.Alignment = taCenter
        Title.Caption = 'Entradas'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXF_SAIDAS'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'das'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXF_ANTERIOR'
        Title.Alignment = taCenter
        Title.Caption = 'Anterior'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CC_SALDOCAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Saldo do Caixa'
        Width = 79
        Visible = True
      end>
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 364
    Width = 880
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Bit_Sair: TBitBtn
      Left = 454
      Top = 4
      Width = 100
      Height = 25
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Gera: TBitBtn
      Left = 4
      Top = 4
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gerar Fechamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GeraClick
    end
    object BitBtnEstornar: TBitBtn
      Left = 119
      Top = 4
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Caption = '&Estornar Fechamento'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtnEstornarClick
    end
    object BitExcluirCaixa: TBitBtn
      Left = 234
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = 'E&xcluir Caixa'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = BitExcluirCaixaClick
    end
    object Bit_Imprimir: TBitBtn
      Left = 344
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_ImprimirClick
    end
  end
  object SqlCdsRelFechaCx: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 
      'SELECT Y2.CCT_DESCRI,Y1.* FROM CAIXA001 Y1'#13#10'LEFT JOIN CCT_0000 Y' +
      '2 ON Y2.CCT_CODIGO = Y1.CCT_CODIGO'#13#10'ORDER BY Y1.CXA_DATA,Y1.CXA_' +
      'TIPODOC Desc, Y1.CXA_LANCTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT Y2.CCT_DESCRI,Y1.* FROM CAIXA001 Y1'#13#10'LEFT JOIN CCT_0000 Y' +
      '2 ON Y2.CCT_CODIGO = Y1.CCT_CODIGO'#13#10'ORDER BY Y1.CXA_DATA,Y1.CXA_' +
      'TIPODOC Desc, Y1.CXA_LANCTO'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 160
    Top = 240
    object SqlCdsRelFechaCxCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsRelFechaCxCXA_LANCTO: TStringField
      FieldName = 'CXA_LANCTO'
      Required = True
      Size = 6
    end
    object SqlCdsRelFechaCxCXA_DATA: TSQLTimeStampField
      FieldName = 'CXA_DATA'
    end
    object SqlCdsRelFechaCxCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsRelFechaCxCXA_HISTORICO: TStringField
      FieldName = 'CXA_HISTORICO'
      Size = 50
    end
    object SqlCdsRelFechaCxCXA_DOCUMENTO: TStringField
      FieldName = 'CXA_DOCUMENTO'
      Size = 12
    end
    object SqlCdsRelFechaCxCXA_TIPODOC: TStringField
      FieldName = 'CXA_TIPODOC'
      Size = 1
    end
    object SqlCdsRelFechaCxCXA_SAIDA: TFMTBCDField
      FieldName = 'CXA_SAIDA'
      Precision = 15
    end
    object SqlCdsRelFechaCxCXA_ENTRADA: TFMTBCDField
      FieldName = 'CXA_ENTRADA'
      Precision = 15
    end
    object SqlCdsRelFechaCxCXA_SITUACAO: TStringField
      FieldName = 'CXA_SITUACAO'
      Size = 1
    end
    object SqlCdsRelFechaCxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelFechaCxCXA_SALDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CXA_SALDO_CC'
      Calculated = True
    end
  end
  object DsRelFechaCx: TDataSource
    DataSet = CdsRelFechaCx
    Left = 296
    Top = 264
  end
  object ppDBFechaCx: TppDBPipeline
    DataSource = DsRelFechaCx
    UserName = 'DBFechaCx'
    Left = 416
    Top = 224
  end
  object ppRELFechaCx: TppReport
    AutoStop = False
    DataPipeline = ppDBFechaCx
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
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELFECHACX00.rtm'
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
    Left = 400
    Top = 280
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFechaCx'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16933
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
        mmHeight = 3217
        mmLeft = 0
        mmTop = 794
        mmWidth = 23029
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
        mmTop = 11906
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
        mmTop = 8202
        mmWidth = 26988
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
        mmTop = 16668
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Lancto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 12700
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
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
        mmLeft = 0
        mmTop = 12700
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 25929
        mmTop = 12700
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 12700
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 12700
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 12700
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Conta Analise'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 43921
        mmTop = 12700
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 12700
        mmWidth = 17198
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
        DataPipeline = ppDBFechaCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA'
        DataPipeline = ppDBFechaCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
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
        DataPipeline = ppDBFechaCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3175
        mmLeft = 25929
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'HISTORICO'
        DataPipeline = ppDBFechaCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 0
        mmWidth = 55827
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADA'
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3246
        mmLeft = 139700
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
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3246
        mmLeft = 157957
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CONTANALISE'
        DataPipeline = ppDBFechaCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3175
        mmLeft = 43921
        mmTop = 0
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACUMULADO'
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 8466
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO ATUAL R$.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 131234
        mmTop = 4763
        mmWidth = 25665
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_CC'
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 4763
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADA'
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3440
        mmLeft = 139700
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAIDA'
        DataPipeline = ppDBFechaCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFechaCx'
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 529
        mmWidth = 17198
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
    object ppParameterList1: TppParameterList
    end
  end
  object CdsRelFechaCx: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = CdsRelFechaCxCalcFields
    Left = 288
    Top = 192
    object CdsRelFechaCxDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsRelFechaCxLANCTO: TStringField
      FieldName = 'LANCTO'
      Size = 6
    end
    object CdsRelFechaCxDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 12
    end
    object CdsRelFechaCxCONTANALISE: TStringField
      FieldName = 'CONTANALISE'
      Size = 25
    end
    object CdsRelFechaCxHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CdsRelFechaCxENTRADA: TCurrencyField
      FieldName = 'ENTRADA'
    end
    object CdsRelFechaCxSAIDA: TCurrencyField
      FieldName = 'SAIDA'
    end
    object CdsRelFechaCxACUMULADO: TCurrencyField
      FieldName = 'ACUMULADO'
    end
    object CdsRelFechaCxSALDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SALDO_CC'
      Calculated = True
    end
  end
  object qFechaCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CAIXA002')
    SQLConnection = DBConn
    Left = 473
    Top = 160
    object qFechaCaixaCXF_CODIGO: TStringField
      FieldName = 'CXF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qFechaCaixaCXF_ANTERIOR: TFMTBCDField
      FieldName = 'CXF_ANTERIOR'
      Precision = 15
    end
    object qFechaCaixaCXF_DATAFECHA: TSQLTimeStampField
      FieldName = 'CXF_DATAFECHA'
    end
    object qFechaCaixaCXF_ENTRADAS: TFMTBCDField
      FieldName = 'CXF_ENTRADAS'
      Precision = 15
    end
    object qFechaCaixaCXF_SAIDAS: TFMTBCDField
      FieldName = 'CXF_SAIDAS'
      Precision = 15
    end
    object qFechaCaixaCXF_DINICIO: TSQLTimeStampField
      FieldName = 'CXF_DINICIO'
    end
    object qFechaCaixaCXF_DFIM: TSQLTimeStampField
      FieldName = 'CXF_DFIM'
    end
    object qFechaCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DspFechaCaixa: TDataSetProvider
    DataSet = qFechaCaixa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 562
    Top = 161
  end
  object CdsFechaCaixa: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspFechaCaixa'
    OnCalcFields = CdsFechaCaixaCalcFields
    Left = 654
    Top = 160
    object CdsFechaCaixaCXF_CODIGO: TStringField
      FieldName = 'CXF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CdsFechaCaixaCXF_ANTERIOR: TFMTBCDField
      FieldName = 'CXF_ANTERIOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_DATAFECHA: TSQLTimeStampField
      FieldName = 'CXF_DATAFECHA'
    end
    object CdsFechaCaixaCXF_ENTRADAS: TFMTBCDField
      FieldName = 'CXF_ENTRADAS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_SAIDAS: TFMTBCDField
      FieldName = 'CXF_SAIDAS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsFechaCaixaCXF_DINICIO: TSQLTimeStampField
      FieldName = 'CXF_DINICIO'
    end
    object CdsFechaCaixaCXF_DFIM: TSQLTimeStampField
      FieldName = 'CXF_DFIM'
    end
    object CdsFechaCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsFechaCaixaCC_SALDOCAIXA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_SALDOCAIXA'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsFechaCaixa: TDataSource
    DataSet = CdsFechaCaixa
    Left = 733
    Top = 160
  end
end
