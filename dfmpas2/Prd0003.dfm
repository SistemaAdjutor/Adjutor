inherited FormProdTipo: TFormProdTipo
  Left = 742
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipo do Produto'
  ClientHeight = 453
  ClientWidth = 828
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 834
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 88
    Top = 32
    Width = 36
    Height = 14
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 57
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'Tipo/Linha:'
  end
  object Label3: TLabel [2]
    Left = 98
    Top = 80
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Sigla:'
  end
  object Label4: TLabel [3]
    Left = 74
    Top = 103
    Width = 50
    Height = 14
    Alignment = taRightJustify
    Caption = 'Comiss'#227'o:'
  end
  object Label5: TLabel [4]
    Left = 36
    Top = 126
    Width = 88
    Height = 14
    Alignment = taRightJustify
    Caption = 'Atualizar Estoque:'
  end
  object Label8: TLabel [5]
    Left = 72
    Top = 150
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'Tipo SPED:'
  end
  object Label9: TLabel [6]
    Left = 4
    Top = 177
    Width = 120
    Height = 14
    Alignment = taRightJustify
    Caption = 'Sincronizar Adjutor Web:'
  end
  object DBePti_descri: TDBEdit [7]
    Left = 127
    Top = 53
    Width = 308
    Height = 22
    CharCase = ecUpperCase
    DataField = 'PTI_DESCRI'
    DataSource = DsPrdTipo
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator [8]
    Left = 285
    Top = 10
    Width = 120
    Height = 25
    DataSource = DsPrdTipo
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 8
    OnClick = DBNavigator1Click
  end
  object TPanel [9]
    Left = 29
    Top = 413
    Width = 402
    Height = 33
    BevelOuter = bvNone
    TabOrder = 9
    object Bit_Cancelar: TBitBtn
      Left = 234
      Top = 3
      Width = 75
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
      Left = 233
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Gravar: TBitBtn
      Left = 156
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 81
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui o registro atual'
      Cancel = True
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Panel4: TPanel
      Left = 17
      Top = 293
      Width = 96
      Height = 33
      BevelOuter = bvNone
      TabOrder = 6
    end
    object Bit_Relatorio: TBitBtn
      Left = 309
      Top = 3
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
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
      TabOrder = 5
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object EdtPti_codigo: TEdit [10]
    Left = 127
    Top = 29
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 0
    OnClick = EdtPti_codigoEnter
    OnEnter = EdtPti_codigoEnter
    OnExit = EdtPti_codigoExit
    OnKeyPress = EdtPti_codigoKeyPress
  end
  object CbSigla: TComboBox [11]
    Left = 127
    Top = 76
    Width = 45
    Height = 22
    Style = csDropDownList
    CharCase = ecUpperCase
    TabOrder = 2
    OnClick = CbSiglaChange
    Items.Strings = (
      ''
      'PA'
      'PI'
      'MP'
      'MC'
      'IM'
      'EM'
      'XX'
      'KT'
      'FE')
  end
  object CbxAtualizaEstoque: TComboBox [12]
    Left = 127
    Top = 122
    Width = 45
    Height = 22
    Style = csDropDownList
    MaxLength = 3
    TabOrder = 4
    OnClick = CbSiglaChange
    Items.Strings = (
      'SIM'
      'N'#195'O')
  end
  object cComissao: TCurrencyEdit [13]
    Left = 127
    Top = 99
    Width = 45
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    MaxLength = 10
    TabOrder = 3
    OnChange = cComissaoChange
  end
  object dblkcbbSPED_GENCODIGO: TDBLookupComboBox [14]
    Left = 127
    Top = 148
    Width = 310
    Height = 22
    DataField = 'SPED_GENCODIGO'
    DataSource = DsPrdTipo
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'SPED_TIPCODIGO'
    ListField = 'SPED_TIPCODIGO;SPED_TIPDESCRI'
    ListFieldIndex = 1
    ListSource = dsSpedTipo
    ParentFont = False
    TabOrder = 5
  end
  object cbbSicronizarAdjutorWeb: TComboBox [15]
    Left = 127
    Top = 173
    Width = 45
    Height = 22
    Style = csDropDownList
    MaxLength = 3
    TabOrder = 6
    OnClick = CbSiglaChange
    Items.Strings = (
      'SIM'
      'N'#195'O')
  end
  object chkDisponivelVendas: TDBCheckBox [16]
    Left = 202
    Top = 177
    Width = 130
    Height = 17
    Caption = 'Dispon'#237'vel vendas'
    DataField = 'PTI_DISPONIVEL_VENDAS'
    DataSource = DsPrdTipo
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object GroupBox2: TGroupBox [17]
    Left = 29
    Top = 223
    Width = 395
    Height = 184
    Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
    TabOrder = 10
    object Label10: TLabel
      Left = 185
      Top = 50
      Width = 86
      Height = 14
      Caption = 'Margem de venda'
    end
    object Label11: TLabel
      Left = 185
      Top = 76
      Width = 85
      Height = 14
      Caption = 'Margem de oferta'
    end
    object Label12: TLabel
      Left = 45
      Top = 24
      Width = 24
      Height = 14
      Alignment = taRightJustify
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 7
      Top = 50
      Width = 62
      Height = 14
      Alignment = taRightJustify
      Caption = 'PIS/CONFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 59
      Top = 76
      Width = 10
      Height = 14
      Alignment = taRightJustify
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 207
      Top = 24
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Margem lucro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 38
      Top = 133
      Width = 33
      Height = 14
      Alignment = taRightJustify
      Caption = 'Outros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 46
      Top = 101
      Width = 25
      Height = 14
      Alignment = taRightJustify
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BitAtualizaMargens: TBitBtn
      Left = 211
      Top = 126
      Width = 181
      Height = 36
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = 'Atualizar pre'#231'os dos produtos'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      TabStop = False
      OnClick = BitAtualizaMargensClick
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 20
      Width = 89
      Height = 22
      DataField = 'PTI_PER_ICMS'
      DataSource = DsPrdTipo
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 46
      Width = 89
      Height = 22
      DataField = 'PTI_PER_PISCONFINS'
      DataSource = DsPrdTipo
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 75
      Top = 73
      Width = 89
      Height = 22
      DataField = 'PTI_PER_IPI'
      DataSource = DsPrdTipo
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 277
      Top = 20
      Width = 89
      Height = 22
      DataField = 'PTI_PER_LUCRO'
      DataSource = DsPrdTipo
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 75
      Top = 127
      Width = 89
      Height = 22
      DataField = 'PTI_PER_OUTROS'
      DataSource = DsPrdTipo
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 75
      Top = 99
      Width = 89
      Height = 22
      DataField = 'PTI_PER_FRETE'
      DataSource = DsPrdTipo
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 277
      Top = 46
      Width = 89
      Height = 22
      Color = 14145495
      DataField = 'PTI_MARGEM'
      DataSource = DsPrdTipo
      Enabled = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 277
      Top = 72
      Width = 89
      Height = 22
      DataField = 'PTI_MARGEMOF'
      DataSource = DsPrdTipo
      TabOrder = 7
    end
  end
  inherited coCalcula: TACBrCalculadora
    CalcLeft = 835
    Left = 344
    Top = 88
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 208
    Top = 88
  end
  inherited DBConn: TSQLConnection
    Left = 280
    Top = 89
  end
  object SQLCdsRelPrdTipo: TSqlClientDataSet [23]
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD_TIPO ORDER BY PTI_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_TIPO ORDER BY PTI_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 568
    Top = 16
    object SQLCdsRelPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SQLCdsRelPrdTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SQLCdsRelPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLCdsRelPrdTipoSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
  end
  object DsPrdTipo: TDataSource [24]
    DataSet = CdsPrdTipo
    Left = 664
    Top = 216
  end
  object ppDBPrdTipo: TppDBPipeline [25]
    DataSource = dsSQLCdsRelPrdTipo
    UserName = 'DBPrdTipo'
    Left = 736
    Top = 8
  end
  object ppRPRelTipoProd01: TppReport [26]
    AutoStop = False
    DataPipeline = ppDBPrdTipo
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELTipoProd01'
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
    LanguageID = 'Default'
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
    TextSearchSettings.Enabled = True
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
    Left = 744
    Top = 64
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPrdTipo'
    object pp00HeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
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
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
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
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
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
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
        Caption = 'COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 11642
        mmWidth = 5786
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3246
        mmLeft = 9260
        mmTop = 11642
        mmWidth = 15522
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PTI_CODIGO'
        DataPipeline = ppDBPrdTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPrdTipo'
        mmHeight = 3246
        mmLeft = 794
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PTI_DESCRI'
        DataPipeline = ppDBPrdTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPrdTipo'
        mmHeight = 3246
        mmLeft = 9260
        mmTop = 0
        mmWidth = 100277
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
        Caption = 'Total de Tipos de Produtos Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 529
        mmWidth = 43462
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBPrdTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPrdTipo'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
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
  object dsSpedTipo: TDataSource [27]
    DataSet = CdsSpedTipo
    Left = 697
    Top = 363
  end
  object CdsSpedTipo: TSqlClientDataSet [28]
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_TIPOITEM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_TIPOITEM'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 617
    Top = 363
    object CdsSpedTipoSPED_TIPREGISTRO: TIntegerField
      FieldName = 'SPED_TIPREGISTRO'
      Required = True
    end
    object CdsSpedTipoSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object CdsSpedTipoSPED_TIPDESCRI: TStringField
      FieldName = 'SPED_TIPDESCRI'
      Size = 40
    end
    object CdsSpedTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlPrdTipo: TSQLQuery [29]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_TIPO')
    Left = 441
    Top = 216
    object SqlPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlPrdTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlPrdTipoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdTipoPTI_COMISSAO: TFMTBCDField
      FieldName = 'PTI_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdTipoPTI_MARGEM: TFMTBCDField
      FieldName = 'PTI_MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object SqlPrdTipoPTI_MARGEMOF: TFMTBCDField
      FieldName = 'PTI_MARGEMOF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 15
    end
    object SqlPrdTipoSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdTipoPTI_SINCRONIZA: TStringField
      FieldName = 'PTI_SINCRONIZA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdTipoPTI_DISPONIVEL_VENDAS: TStringField
      FieldName = 'PTI_DISPONIVEL_VENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlPrdTipoPTI_PER_ICMS: TFMTBCDField
      FieldName = 'PTI_PER_ICMS'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdTipoPTI_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PTI_PER_PISCONFINS'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdTipoPTI_PER_IPI: TFMTBCDField
      FieldName = 'PTI_PER_IPI'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdTipoPTI_PER_FRETE: TFMTBCDField
      FieldName = 'PTI_PER_FRETE'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdTipoPTI_PER_OUTROS: TFMTBCDField
      FieldName = 'PTI_PER_OUTROS'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlPrdTipoPTI_PER_LUCRO: TFMTBCDField
      FieldName = 'PTI_PER_LUCRO'
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
  end
  object DspPrdTipo: TDataSetProvider [30]
    DataSet = SqlPrdTipo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 516
    Top = 217
  end
  object CdsPrdTipo: TClientDataSet [31]
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPrdTipo'
    BeforeEdit = CdsPrdTipoBeforeEdit
    Left = 591
    Top = 217
    object CdsPrdTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPrdTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsPrdTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsPrdTipoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdTipoPTI_COMISSAO: TFMTBCDField
      FieldName = 'PTI_COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 2
    end
    object CdsPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdTipoPTI_MARGEM: TFMTBCDField
      FieldName = 'PTI_MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      EditFormat = '0.00'
      Precision = 15
    end
    object CdsPrdTipoPTI_MARGEMOF: TFMTBCDField
      FieldName = 'PTI_MARGEMOF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      EditFormat = '0.00'
      Precision = 15
    end
    object CdsPrdTipoSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdTipoPTI_SINCRONIZA: TStringField
      FieldName = 'PTI_SINCRONIZA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdTipoPTI_DISPONIVEL_VENDAS: TStringField
      FieldName = 'PTI_DISPONIVEL_VENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsPrdTipoPTI_PER_LUCRO: TFMTBCDField
      FieldName = 'PTI_PER_LUCRO'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdTipoPTI_PER_OUTROS: TFMTBCDField
      FieldName = 'PTI_PER_OUTROS'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdTipoPTI_PER_FRETE: TFMTBCDField
      FieldName = 'PTI_PER_FRETE'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdTipoPTI_PER_IPI: TFMTBCDField
      FieldName = 'PTI_PER_IPI'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdTipoPTI_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PTI_PER_PISCONFINS'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsPrdTipoPTI_PER_ICMS: TFMTBCDField
      FieldName = 'PTI_PER_ICMS'
      OnChange = CdsPrdTipoPTI_PER_COMPOChange
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
  end
  object dsSQLCdsRelPrdTipo: TDataSource [32]
    DataSet = SQLCdsRelPrdTipo
    Left = 568
    Top = 64
  end
end
