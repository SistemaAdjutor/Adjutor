object FormCustoGlobal: TFormCustoGlobal
  Left = 157
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fun'#231#227'o atualiza pre'#231'os de produtos compostos'
  ClientHeight = 527
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpBotoes: TGroupBox
    Left = 8
    Top = 482
    Width = 408
    Height = 41
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 98
      Top = 11
      Width = 185
      Height = 25
      Caption = '&Configura'#231#227'o de Impress'#227'o'
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 312
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn4Click
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 171
    Width = 408
    Height = 227
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 80
      Top = 185
      Width = 233
      Height = 33
      Caption = '&Lista dos Produtos a serem atualizados'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 4
      TabStop = False
      OnClick = BitBtn1Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 139
      Width = 393
      Height = 40
      Caption = 'Dispositivo de sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object RadVideo: TRadioButton
        Left = 11
        Top = 18
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
        Left = 90
        Top = 18
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
    end
    object CbSeg: TComboBox
      Left = 38
      Top = 112
      Width = 363
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 2
      OnClick = CbSegClick
      OnEnter = CbSegEnter
      OnExit = CbSegExit
    end
    object EdtSeg: TEdit
      Left = 8
      Top = 112
      Width = 29
      Height = 21
      MaxLength = 3
      TabOrder = 1
      OnClick = EdtSegClick
      OnEnter = EdtSegEnter
      OnExit = EdtSegExit
      OnKeyPress = EdtSegKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 4
      Width = 393
      Height = 105
      Caption = 'Filtro para Relat'#243'rio e Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object RadFichaTec: TRadioButton
        Left = 8
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Todas &Fichas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadFichaTecClick
      end
      object RadProdutos: TRadioButton
        Left = 8
        Top = 46
        Width = 153
        Height = 17
        Caption = 'Pro&dutos de Tabelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadFichaTecClick
      end
      object RadSegmento: TRadioButton
        Left = 8
        Top = 68
        Width = 137
        Height = 17
        Caption = 'Se&gmento de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = RadFichaTecClick
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 404
    Width = 408
    Height = 72
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 0
    object BitProcessar: TBitBtn
      Left = 80
      Top = 12
      Width = 233
      Height = 33
      Caption = '&Processar Atualiza'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BitProcessarClick
    end
    object PrBar: TProgressBar
      Left = 13
      Top = 51
      Width = 388
      Height = 16
      TabOrder = 1
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 408
    Height = 157
    Lines.Strings = (
      
        'A fun'#231#227'o vai atualizar pre'#231'os dos produtos que possuem ficha t'#233'c' +
        'nica de '
      'composi'#231#227'o.'
      'O seguintes pre'#231'os ser'#227'o atualizados:'
      '1 - Custo Liquido = soma dos materiais que compoem a ficha'
      '2 - Custo de Entrada = soma dos materiais que compoem a ficha'
      
        '3 - Pre'#231'o de Venda = composi'#231#227'o dos materiais + variaveis (%) da' +
        ' planilha de custo'
      ''
      
        'Por favor selecione o filtro desejado e clique no Bot'#227'o [Lista d' +
        'e Produtos] para '
      'visualizar os produtos que ser'#227'o atualizados.'
      ''
      
        'Para confirmar atualiza'#231#227'o clique no bot'#227'o [ Processar Atualiza'#231 +
        #227'o]')
    ReadOnly = True
    TabOrder = 3
  end
  object SqlCdsLinha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'L1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI'#13#10'FROM PRD_LINHA L1'#13#10'ORDER ' +
      'BY '#13#10'L1.LIN_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'L1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI'#13#10'FROM PRD_LINHA L1'#13#10'ORDER ' +
      'BY '#13#10'L1.LIN_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 144
    Top = 261
    object SqlCdsLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 2
    end
    object SqlCdsLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
  end
  object SqlCdsItensFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F2.PRD_REFER,'#13#10'F2.PRD_REFER_ITENS,'#13#10'F2.FTI_UC,'#13#10'F2.FTI_M' +
      'ODE1,'#13#10'P1.PRD_PCUSTO'#13#10'FROM FTC_IT01 F2'#13#10'JOIN PRD0000 P1 ON (P1.P' +
      'RD_REFER = F2.PRD_REFER)'#13#10'ORDER BY '#13#10'F2.PRD_REFER,'#13#10'F2.PRD_REFER' +
      '_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F2.PRD_REFER,'#13#10'F2.PRD_REFER_ITENS,'#13#10'F2.FTI_UC,'#13#10'F2.FTI_M' +
      'ODE1,'#13#10'P1.PRD_PCUSTO'#13#10'FROM FTC_IT01 F2'#13#10'JOIN PRD0000 P1 ON (P1.P' +
      'RD_REFER = F2.PRD_REFER)'#13#10'ORDER BY '#13#10'F2.PRD_REFER,'#13#10'F2.PRD_REFER' +
      '_ITENS'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 222
    object SqlCdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichaFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      DisplayFormat = '#,####0.000000'
    end
    object SqlCdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
    end
  end
  object SqlCdsFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.PRD_REFER,'#13#10'F1.FTC_TUP'#13#10'FROM FTC0000 F1'#13#10'ORDER BY '#13#10'F' +
      '1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F1.PRD_REFER,'#13#10'F1.FTC_TUP'#13#10'FROM FTC0000 F1'#13#10'ORDER BY '#13#10'F' +
      '1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 136
    Top = 203
    object SqlCdsFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsFichaTecFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsFichaTecPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
  end
  object DsItensFicha: TDataSource
    DataSet = SqlCdsItensFicha
    Left = 272
    Top = 174
  end
  object DsFichaTec: TDataSource
    DataSet = SqlCdsFichaTec
    Left = 272
    Top = 203
  end
  object SqlCdsParam: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P1.PMT_EMPRESACLASSE,'#13#10'P1.PMT_UNFORMULA'#13#10'from PRMT0001 ' +
      'P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PMT_EMPRESACLASSE,'#13#10'P1.PMT_UNFORMULA'#13#10'from PRMT0001 ' +
      'P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 97
    Top = 112
    object SqlCdsParamPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
    object SqlCdsParamPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 216
    Top = 304
  end
  object SqlCdsRelCusto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'P1.PRD_DESCRI, '#13#10'P1.PRD_REFER, '#13#10'P1.PRD_PCUSTO, '#13#10'P1.PR' +
      'D_PVENDA, '#13#10'P1.PRD_PMATPRI, '#13#10'P1.PRD_MAOOBRA,'#13#10'P1.LIN_CODIGO'#13#10'FR' +
      'OM PRD0000 P1'#13#10'ORDER BY P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRelCustoCalcFields
    CommandText = 
      'SELECT '#13#10'P1.PRD_DESCRI, '#13#10'P1.PRD_REFER, '#13#10'P1.PRD_PCUSTO, '#13#10'P1.PR' +
      'D_PVENDA, '#13#10'P1.PRD_PMATPRI, '#13#10'P1.PRD_MAOOBRA,'#13#10'P1.LIN_CODIGO'#13#10'FR' +
      'OM PRD0000 P1'#13#10'ORDER BY P1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 56
    Top = 184
    object SqlCdsRelCustoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRelCustoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsRelCustoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsRelCustoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlCdsRelCustoPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      Precision = 15
    end
    object SqlCdsRelCustoPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      Precision = 15
    end
    object SqlCdsRelCustoLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object SqlCdsRelCustoFINAN_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FINAN_CC'
      Calculated = True
    end
  end
  object DsRelCusto: TDataSource
    DataSet = SqlCdsRelCusto
    Left = 176
    Top = 144
  end
  object ppDBRelCusto: TppDBPipeline
    DataSource = DsRelCusto
    UserName = 'DBRelCusto'
    Left = 200
    Top = 104
    object ppDBRelCustoppField1: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBRelCustoppField2: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppDBRelCustoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object ppDBRelCustoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PVENDA'
      FieldName = 'PRD_PVENDA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object ppDBRelCustoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PMATPRI'
      FieldName = 'PRD_PMATPRI'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBRelCustoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_MAOOBRA'
      FieldName = 'PRD_MAOOBRA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBRelCustoppField7: TppField
      FieldAlias = 'LIN_CODIGO'
      FieldName = 'LIN_CODIGO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBRelCustoppField8: TppField
      FieldAlias = 'FINAN_CC'
      FieldName = 'FINAN_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
  end
  object ppRelCusto: TppReport
    AutoStop = False
    DataPipeline = ppDBRelCusto
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCUSTOGLOBAL.' +
      'rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 280
    Top = 128
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelCusto'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FORMA'#199#195'O DE PRE'#199'O DE CUSTOS DOS PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163725
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14287
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 18785
        mmTop = 14817
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Mat.Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 112448
        mmTop = 14817
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'M'#227'o-de-Obra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 134409
        mmTop = 14817
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Finan.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 154782
        mmTop = 14817
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pre'#231'o Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 175155
        mmTop = 14817
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_REFER'
        DataPipeline = ppDBRelCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBRelCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 18785
        mmTop = 0
        mmWidth = 91811
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_PMATPRI'
        DataPipeline = ppDBRelCusto
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 112448
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
        Border.mmPadding = 0
        DataField = 'PRD_MAOOBRA'
        DataPipeline = ppDBRelCusto
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 134409
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBRelCusto
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 175155
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FINAN_CC'
        DataPipeline = ppDBRelCusto
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCusto'
        mmHeight = 3598
        mmLeft = 154782
        mmTop = 0
        mmWidth = 19315
        BandType = 4
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
end
