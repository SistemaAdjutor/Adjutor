object FormCelula: TFormCelula
  Left = 66
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro das C'#233'lulas de Produ'#231#227'o'
  ClientHeight = 316
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 13
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
    Left = 19
    Top = 54
    Width = 78
    Height = 13
    Caption = 'Nome da C'#233'lula:'
  end
  object Label3: TLabel
    Left = 31
    Top = 79
    Width = 66
    Height = 13
    Caption = 'Raz'#227'o Social:'
  end
  object Label4: TLabel
    Left = 47
    Top = 104
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label5: TLabel
    Left = 60
    Top = 155
    Width = 36
    Height = 13
    Caption = 'Cidade:'
  end
  object Label7: TLabel
    Left = 67
    Top = 129
    Width = 30
    Height = 13
    Caption = 'Bairro:'
  end
  object Label6: TLabel
    Left = 42
    Top = 180
    Width = 55
    Height = 13
    Caption = 'CNPJ/CPF:'
  end
  object Label8: TLabel
    Left = 9
    Top = 205
    Width = 88
    Height = 13
    Caption = 'Insc.Estadual/RG:'
  end
  object Label9: TLabel
    Left = 69
    Top = 229
    Width = 27
    Height = 13
    Caption = 'Fone:'
  end
  object Label10: TLabel
    Left = 215
    Top = 230
    Width = 20
    Height = 13
    Caption = 'Fax:'
  end
  object Label11: TLabel
    Left = 359
    Top = 230
    Width = 35
    Height = 13
    Caption = 'Celular:'
  end
  object Label12: TLabel
    Left = 69
    Top = 255
    Width = 28
    Height = 13
    Caption = 'OBS.:'
  end
  object Label13: TLabel
    Left = 312
    Top = 155
    Width = 24
    Height = 13
    Caption = 'CEP:'
  end
  object DBNavigator1: TDBNavigator
    Left = 445
    Top = 7
    Width = 116
    Height = 25
    DataSource = DmProducao.DsCelula
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object EdtCel_codigo: TEdit
    Left = 65
    Top = 10
    Width = 35
    Height = 21
    MaxLength = 3
    TabOrder = 1
    OnExit = EdtCel_codigoExit
    OnKeyPress = EdtCel_codigoKeyPress
  end
  object Panel2: TPanel
    Left = 1
    Top = 40
    Width = 563
    Height = 4
    Color = clHighlight
    TabOrder = 14
  end
  object DbeCEL_NOME: TDBEdit
    Left = 99
    Top = 50
    Width = 250
    Height = 21
    AutoSelect = False
    CharCase = ecUpperCase
    DataField = 'CEL_NOME'
    DataSource = DmProducao.DsCelula
    TabOrder = 2
    OnEnter = DbeCEL_NOMEEnter
  end
  object Panel1: TPanel
    Left = 192
    Top = 280
    Width = 373
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 10841658
    TabOrder = 15
    object Bit_Cancelar: TBitBtn
      Left = 278
      Top = 4
      Width = 90
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 278
      Top = 4
      Width = 90
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 96
      Top = 4
      Width = 90
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 187
      Top = 4
      Width = 90
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 90
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 280
    Width = 183
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 16
    object Bit_Relatorio: TBitBtn
      Left = 88
      Top = 4
      Width = 90
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
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ListaClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 99
    Top = 75
    Width = 314
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_RAZAO'
    DataSource = DmProducao.DsCelula
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 99
    Top = 100
    Width = 314
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_ENDE'
    DataSource = DmProducao.DsCelula
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 99
    Top = 125
    Width = 192
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_BAIRRO'
    DataSource = DmProducao.DsCelula
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 99
    Top = 151
    Width = 192
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_CIDADE'
    DataSource = DmProducao.DsCelula
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 99
    Top = 176
    Width = 148
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_CNPJ'
    DataSource = DmProducao.DsCelula
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 99
    Top = 201
    Width = 147
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_INSC'
    DataSource = DmProducao.DsCelula
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 99
    Top = 226
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_FONE1'
    DataSource = DmProducao.DsCelula
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 242
    Top = 227
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_FAX'
    DataSource = DmProducao.DsCelula
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 394
    Top = 227
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_CELULAR'
    DataSource = DmProducao.DsCelula
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 99
    Top = 251
    Width = 400
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_OBS'
    DataSource = DmProducao.DsCelula
    TabOrder = 13
  end
  object DBEdit11: TDBEdit
    Left = 338
    Top = 151
    Width = 74
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEL_CEP'
    DataSource = DmProducao.DsCelula
    TabOrder = 7
  end
  object SqlCdsExcluirCelula: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CEL_CODIGO, EMP_CODIGO from CEL_CP01'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CEL_CODIGO, EMP_CODIGO from CEL_CP01'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 184
    object SqlCdsExcluirCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsExcluirCelulaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRelCelula: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'C1.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C1.CEL_RAZAO,'#13#10'C1.CEL_CID' +
      'ADE,'#13#10'C1.CEL_FONE1,'#13#10'C1.CEL_ENDE,'#13#10'C1.CEL_OBS'#13#10'from CEL0000 C1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'C1.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C1.CEL_RAZAO,'#13#10'C1.CEL_CID' +
      'ADE,'#13#10'C1.CEL_FONE1,'#13#10'C1.CEL_ENDE,'#13#10'C1.CEL_OBS'#13#10'from CEL0000 C1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 456
    Top = 48
    object SqlCdsRelCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRelCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsRelCelulaCEL_RAZAO: TStringField
      FieldName = 'CEL_RAZAO'
      Size = 40
    end
    object SqlCdsRelCelulaCEL_CIDADE: TStringField
      FieldName = 'CEL_CIDADE'
      Size = 25
    end
    object SqlCdsRelCelulaCEL_FONE1: TStringField
      FieldName = 'CEL_FONE1'
      Size = 11
    end
    object SqlCdsRelCelulaCEL_ENDE: TStringField
      FieldName = 'CEL_ENDE'
      Size = 40
    end
    object SqlCdsRelCelulaCEL_OBS: TStringField
      FieldName = 'CEL_OBS'
      Size = 100
    end
  end
  object DsRelCelula: TDataSource
    DataSet = SqlCdsRelCelula
    Left = 456
    Top = 80
  end
  object ppRepCelula: TppReport
    AutoStop = False
    DataPipeline = ppDBPRelCelula
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCELULA.rtm'
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
    Left = 456
    Top = 144
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPRelCelula'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 169334
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 170392
        mmTop = 7673
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11112
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 11642
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 11642
        mmWidth = 56356
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'RAZ'#195'O SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 79640
        mmTop = 11642
        mmWidth = 49213
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 11642
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 11642
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_CODIGO'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_NOME'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 0
        mmWidth = 56356
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_NOME'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 79904
        mmTop = 0
        mmWidth = 50006
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_CIDADE'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 0
        mmWidth = 41804
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_FONE1'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 0
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 3439
        mmWidth = 196000
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPRelCelula
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
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPRelCelula'
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
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
        end
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_ENDE'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3440
        mmWidth = 70115
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 79904
        mmTop = 3440
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_OBS'
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3175
        mmLeft = 87842
        mmTop = 3440
        mmWidth = 89165
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade Listado(s):'
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
        mmWidth = 27517
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBPRelCelula
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPRelCelula'
        mmHeight = 3302
        mmLeft = 28046
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPRelCelula: TppDBPipeline
    DataSource = DsRelCelula
    UserName = 'DBPRelCelula'
    Left = 456
    Top = 112
  end
end
