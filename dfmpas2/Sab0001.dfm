object FormSaldoBanco: TFormSaldoBanco
  Left = 100
  Top = 158
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Saldo Banc'#225'rio'
  ClientHeight = 198
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 30
    Top = 7
    Width = 59
    Height = 14
    Caption = 'Lan'#231'amento'
  end
  object Label2: TLabel
    Left = 55
    Top = 42
    Width = 34
    Height = 14
    Caption = 'Banco:'
  end
  object label3: TLabel
    Left = 63
    Top = 66
    Width = 25
    Height = 14
    Caption = 'Data:'
  end
  object Label4: TLabel
    Left = 361
    Top = 67
    Width = 82
    Height = 14
    Caption = 'Saldo Dispon'#237'vel:'
  end
  object Label5: TLabel
    Left = 5
    Top = 91
    Width = 84
    Height = 14
    Caption = 'Saldo Bloqueado:'
  end
  object Label6: TLabel
    Left = 370
    Top = 91
    Width = 74
    Height = 14
    Caption = 'Saldo Aplicado:'
  end
  object Label7: TLabel
    Left = 0
    Top = 116
    Width = 88
    Height = 14
    Caption = 'Tipo de Aplica'#231#227'o:'
  end
  object Label8: TLabel
    Left = 67
    Top = 141
    Width = 23
    Height = 14
    Caption = 'Obs:'
  end
  object Panel2: TPanel
    Left = 182
    Top = 165
    Width = 371
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 12681984
    TabOrder = 10
    object Bit_Cancelar: TBitBtn
      Left = 275
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 275
      Top = 4
      Width = 90
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
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 90
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
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
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
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 185
      Top = 4
      Width = 90
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
      OnClick = Bit_GravarClick
    end
  end
  object Panel1: TPanel
    Left = 6
    Top = 32
    Width = 545
    Height = 4
    Color = 12681984
    TabOrder = 11
  end
  object DBNavigator1: TDBNavigator
    Left = 431
    Top = 0
    Width = 120
    Height = 25
    DataSource = DataMovimento.DsSaldoBanco
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 9
    OnClick = DBNavigator1Click
  end
  object EdtSAB_CODIGO: TEdit
    Left = 93
    Top = 4
    Width = 44
    Height = 22
    MaxLength = 4
    TabOrder = 0
    OnEnter = EdtSAB_CODIGOEnter
    OnExit = EdtSAB_CODIGOExit
    OnKeyPress = EdtSAB_CODIGOKeyPress
  end
  object DbeSAB_SALDO: TDBEdit
    Left = 446
    Top = 63
    Width = 100
    Height = 22
    DataField = 'SAB_SALDO'
    DataSource = DataMovimento.DsSaldoBanco
    MaxLength = 13
    TabOrder = 4
  end
  object DbeSAB_BLOQUEADO: TDBEdit
    Left = 91
    Top = 88
    Width = 100
    Height = 22
    DataField = 'SAB_BLOQUEADO'
    DataSource = DataMovimento.DsSaldoBanco
    MaxLength = 13
    TabOrder = 5
  end
  object DbeSAB_APLICADO: TDBEdit
    Left = 446
    Top = 88
    Width = 100
    Height = 22
    DataField = 'SAB_APLICADO'
    DataSource = DataMovimento.DsSaldoBanco
    MaxLength = 13
    TabOrder = 6
  end
  object DbeSAB_TIPOAPL: TDBEdit
    Left = 91
    Top = 113
    Width = 454
    Height = 22
    CharCase = ecUpperCase
    DataField = 'SAB_TIPOAPL'
    DataSource = DataMovimento.DsSaldoBanco
    TabOrder = 7
  end
  object DbeSAB_OBS: TDBEdit
    Left = 91
    Top = 138
    Width = 454
    Height = 22
    CharCase = ecUpperCase
    DataField = 'SAB_OBS'
    DataSource = DataMovimento.DsSaldoBanco
    TabOrder = 8
  end
  object Panel3: TPanel
    Left = 1
    Top = 165
    Width = 177
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 12
    object Bit_Lista: TBitBtn
      Left = 4
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 86
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
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
      TabOrder = 1
      OnClick = Bit_RelatorioClick
    end
  end
  object CbBanco: TComboBox
    Left = 127
    Top = 38
    Width = 420
    Height = 22
    CharCase = ecUpperCase
    TabOrder = 2
    OnClick = CbBancoClick
    OnExit = CbBancoClick
  end
  object DbCodBanco: TDBEdit
    Left = 92
    Top = 38
    Width = 34
    Height = 22
    DataField = 'BAN_CODIGO'
    DataSource = DataMovimento.DsSaldoBanco
    TabOrder = 1
    OnExit = DbCodBancoExit
    OnKeyPress = DbCodBancoKeyPress
  end
  object DbeSAB_DIA: TJvDBDateEdit
    Left = 91
    Top = 63
    Width = 90
    Height = 22
    DataField = 'SAB_DIA'
    DataSource = DataMovimento.DsSaldoBanco
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
    TabOrder = 3
  end
  object CdsBancos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select BAN_CODIGO, BAN_APELIDO, EMP_CODIGO from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select BAN_CODIGO, BAN_APELIDO, EMP_CODIGO from BAN0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 312
    Top = 32
    object CdsBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object CdsBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object CdsBancosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRelSBco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT B1.BAN_CODIGO,'#13#10'B1.BAN_RAZAO,'#13#10'B1.BAN_APELIDO,'#13#10'S1.SAB_DI' +
      'A,'#13#10'S1.SAB_SALDO,'#13#10'S1.SAB_BLOQUEADO,'#13#10'S1.SAB_APLICADO '#13#10'FROM SAL' +
      'DOBCO S1'#13#10'JOIN BAN0000 B1 ON S1.BAN_CODIGO = B1.BAN_CODIGO'#13#10'ORDE' +
      'R BY B1.BAN_APELIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT B1.BAN_CODIGO,'#13#10'B1.BAN_RAZAO,'#13#10'B1.BAN_APELIDO,'#13#10'S1.SAB_DI' +
      'A,'#13#10'S1.SAB_SALDO,'#13#10'S1.SAB_BLOQUEADO,'#13#10'S1.SAB_APLICADO '#13#10'FROM SAL' +
      'DOBCO S1'#13#10'JOIN BAN0000 B1 ON S1.BAN_CODIGO = B1.BAN_CODIGO'#13#10'ORDE' +
      'R BY B1.BAN_APELIDO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 496
    Top = 40
    object SqlCdsRelSBcoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRelSBcoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SqlCdsRelSBcoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsRelSBcoSAB_DIA: TSQLTimeStampField
      FieldName = 'SAB_DIA'
    end
    object SqlCdsRelSBcoSAB_SALDO: TFMTBCDField
      FieldName = 'SAB_SALDO'
      Precision = 15
    end
    object SqlCdsRelSBcoSAB_BLOQUEADO: TFMTBCDField
      FieldName = 'SAB_BLOQUEADO'
      Precision = 15
    end
    object SqlCdsRelSBcoSAB_APLICADO: TFMTBCDField
      FieldName = 'SAB_APLICADO'
      Precision = 15
    end
  end
  object DsSaldo: TDataSource
    DataSet = SqlCdsRelSBco
    Left = 496
    Top = 72
  end
  object ppDBCOSaldo: TppDBPipeline
    DataSource = DsSaldo
    UserName = 'DBCOSaldo'
    Left = 496
    Top = 104
  end
  object ppRelBCOSaldo: TppReport
    AutoStop = False
    DataPipeline = ppDBCOSaldo
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELSALDOBCO00'
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
    Left = 496
    Top = 136
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCOSaldo'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14817
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
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 11642
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 11642
        mmWidth = 53975
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
        DataField = 'SAB_DIA'
        DataPipeline = ppDBCOSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3246
        mmLeft = 111125
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_SALDO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3246
        mmLeft = 130969
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_BLOQUEADO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3246
        mmLeft = 153988
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_APLICADO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3246
        mmLeft = 180711
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 265
        mmTop = 529
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_SALDO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3440
        mmLeft = 131498
        mmTop = 265
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_BLOQUEADO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3440
        mmLeft = 153988
        mmTop = 265
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAB_APLICADO'
        DataPipeline = ppDBCOSaldo
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCOSaldo'
        mmHeight = 3440
        mmLeft = 180711
        mmTop = 265
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BAN_CODIGO'
      DataPipeline = ppDBCOSaldo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBCOSaldo'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_CODIGO'
          DataPipeline = ppDBCOSaldo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCOSaldo'
          mmHeight = 3387
          mmLeft = 0
          mmTop = 529
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_RAZAO'
          DataPipeline = ppDBCOSaldo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBCOSaldo'
          mmHeight = 3387
          mmLeft = 13494
          mmTop = 529
          mmWidth = 53975
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 113506
          mmTop = 529
          mmWidth = 7761
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SALDO R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 134409
          mmTop = 529
          mmWidth = 13688
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'BLOQUEADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 153988
          mmTop = 529
          mmWidth = 18203
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'APLICADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 181769
          mmTop = 529
          mmWidth = 14676
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
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
          DataField = 'SAB_SALDO'
          DataPipeline = ppDBCOSaldo
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCOSaldo'
          mmHeight = 3387
          mmLeft = 131498
          mmTop = 265
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
          DataField = 'SAB_BLOQUEADO'
          DataPipeline = ppDBCOSaldo
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCOSaldo'
          mmHeight = 3387
          mmLeft = 153988
          mmTop = 265
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'SAB_APLICADO'
          DataPipeline = ppDBCOSaldo
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBCOSaldo'
          mmHeight = 3387
          mmLeft = 180711
          mmTop = 265
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 265
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule3: TraCodeModule
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
end
