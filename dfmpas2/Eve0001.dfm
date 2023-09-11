object FormEvento: TFormEvento
  Left = 223
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Eventos'
  ClientHeight = 195
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 31
    Top = 12
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 54
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 43
    Top = 90
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label4: TLabel
    Left = 39
    Top = 128
    Width = 28
    Height = 13
    Caption = 'IRRF:'
  end
  object DbeEve_descri: TDBEdit
    Left = 70
    Top = 50
    Width = 248
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EVE_DESCRI'
    DataSource = DataCadastros.DsEvento
    TabOrder = 1
  end
  object DbRadIRRF: TDBRadioGroup
    Left = 70
    Top = 112
    Width = 249
    Height = 41
    Columns = 2
    DataField = 'EVE_IRRF'
    DataSource = DataCadastros.DsEvento
    Items.Strings = (
      '&Incidente'
      'N'#227'&o Incidente')
    TabOrder = 3
    TabStop = True
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadTipo: TDBRadioGroup
    Left = 70
    Top = 71
    Width = 249
    Height = 41
    Columns = 2
    DataField = 'EVE_TIPODC'
    DataSource = DataCadastros.DsEvento
    Items.Strings = (
      'D'#233'&bito'
      'Cr'#233'&dito')
    TabOrder = 2
    TabStop = True
    Values.Strings = (
      'D'
      'C')
  end
  object EdtEve_codigo: TEdit
    Left = 69
    Top = 10
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 0
    Text = 'EdtEve_codigo'
    OnClick = EdtEve_codigoClick
    OnEnter = EdtEve_codigoClick
    OnExit = EdtEve_codigoExit
    OnKeyPress = EdtEve_codigoKeyPress
  end
  object Panel1: TPanel
    Left = 6
    Top = 40
    Width = 379
    Height = 4
    Color = 12681984
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 264
    Top = 7
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsEvento
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 95
    Top = 159
    Width = 289
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 6
    object Bit_Cancelar: TBitBtn
      Left = 214
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 215
      Top = 4
      Width = 70
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 4
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 74
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 144
      Top = 4
      Width = 70
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
  end
  object Panel3: TPanel
    Left = 2
    Top = 159
    Width = 90
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 7
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object SQLCDSRELEVENTO: TSqlClientDataSet
    Active = True
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from EVE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from EVE0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 104
    Top = 8
    object SQLCDSRELEVENTOEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object SQLCDSRELEVENTOEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object SQLCDSRELEVENTOEVE_TIPODC: TStringField
      FieldName = 'EVE_TIPODC'
      Size = 1
    end
    object SQLCDSRELEVENTOEVE_IRRF: TStringField
      FieldName = 'EVE_IRRF'
      Size = 1
    end
    object SQLCDSRELEVENTOEVE_SITUAC: TStringField
      FieldName = 'EVE_SITUAC'
      Size = 1
    end
    object SQLCDSRELEVENTOEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DSRELEVENTO: TDataSource
    DataSet = SQLCDSRELEVENTO
    Left = 136
    Top = 8
  end
  object ppDBRELEVENTO: TppDBPipeline
    DataSource = DSRELEVENTO
    UserName = 'DBRELEVENTO'
    Left = 168
    Top = 8
    object ppDBRELEVENTOppField1: TppField
      FieldAlias = 'EVE_CODIGO'
      FieldName = 'EVE_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBRELEVENTOppField2: TppField
      FieldAlias = 'EVE_DESCRI'
      FieldName = 'EVE_DESCRI'
      FieldLength = 25
      DisplayWidth = 25
      Position = 1
    end
    object ppDBRELEVENTOppField3: TppField
      FieldAlias = 'EVE_TIPODC'
      FieldName = 'EVE_TIPODC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppDBRELEVENTOppField4: TppField
      FieldAlias = 'EVE_IRRF'
      FieldName = 'EVE_IRRF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBRELEVENTOppField5: TppField
      FieldAlias = 'EVE_SITUAC'
      FieldName = 'EVE_SITUAC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object ppDBRELEVENTOppField6: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
  end
  object ppRPRelEvento01: TppReport
    AutoStop = False
    DataPipeline = ppDBRELEVENTO
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELEVENTO.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    Left = 200
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRELEVENTO'
    object pp00HeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLine5: TppLine
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
      object ppLine6: TppLine
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
      object ppSystemVariable3: TppSystemVariable
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
      object ppSystemVariable4: TppSystemVariable
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
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 11642
        mmWidth = 5969
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 8202
        mmTop = 11642
        mmWidth = 15621
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196000
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
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 11642
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IRRF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 130175
        mmTop = 11642
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SITUA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 143669
        mmTop = 11642
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
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
        DataField = 'EVE_CODIGO'
        DataPipeline = ppDBRELEVENTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRELEVENTO'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextDescri: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTextDescri'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'EVE_DESCRI'
        DataPipeline = ppDBRELEVENTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRELEVENTO'
        mmHeight = 3302
        mmLeft = 8202
        mmTop = 0
        mmWidth = 94192
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'EVE_SITUAC'
        DataPipeline = ppDBRELEVENTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRELEVENTO'
        mmHeight = 3302
        mmLeft = 143669
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 104246
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 130440
        mmTop = 0
        mmWidth = 10922
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Evento Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 35190
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRELEVENTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRELEVENTO'
        mmHeight = 3175
        mmLeft = 36513
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650612
        5661726961626C65314F6E476574546578740B50726F6772616D54797065070B
        747450726F63656475726506536F7572636514AD00000070726F636564757265
        205661726961626C65314F6E476574546578742876617220546578743A205374
        72696E67293B0D0A626567696E0D0A20202020696620444252454C4556454E54
        4F5B274556455F5449504F4443275D3D20274327207468656E0D0A2020202020
        202054657874203A3D20274352C3894449444F270D0A20202020656C73650D0A
        2020202020202054657874203A3D202744C3894249544F273B2020200D0A656E
        643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6531094576
        656E744E616D6506094F6E47657454657874074576656E744944023508436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D6506125661726961626C65324F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F7572636514A3
        00000070726F636564757265205661726961626C65324F6E4765745465787428
        76617220546578743A20537472696E67293B0D0A626567696E0D0A2020202069
        6620444252454C4556454E544F5B274556455F49525246275D3D202753272074
        68656E0D0A2020202020202054657874203A3D202753494D270D0A2020202065
        6C73650D0A2020202020202054657874203A3D20274EC3834F273B2020200D0A
        656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C653209
        4576656E744E616D6506094F6E47657454657874074576656E74494402350843
        61726574506F730102000200000001060F5472614576656E7448616E646C6572
        0B50726F6772616D4E616D6506154442546578744465736372694F6E47657454
        6578740B50726F6772616D54797065070B747450726F63656475726506536F75
        726365067770726F636564757265204442546578744465736372694F6E476574
        546578742876617220546578743A20537472696E67293B0D0A626567696E0D0A
        0D0A202054657874203A3D205570706572436173652820444252454C4556454E
        544F5B274556455F444553435249275D293B0D0A0D0A656E643B0D0A0D436F6D
        706F6E656E744E616D65060C444254657874446573637269094576656E744E61
        6D6506094F6E47657454657874074576656E7449440235084361726574506F73
        0102000200000000}
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
