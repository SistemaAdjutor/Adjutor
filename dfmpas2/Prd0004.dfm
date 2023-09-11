object FormPrd_IPI: TFormPrd_IPI
  Left = 667
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Classifica'#231#227'o Fiscal - Tabela NCM'
  ClientHeight = 311
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
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
  TextHeight = 14
  object Label1: TLabel
    Left = 6
    Top = 15
    Width = 78
    Height = 13
    Caption = 'C'#243'digo da NCM:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 14
    Top = 111
    Width = 68
    Height = 14
    Alignment = taRightJustify
    Caption = 'Aliquota IPI %:'
  end
  object Label2: TLabel
    Left = 11
    Top = 135
    Width = 71
    Height = 14
    Alignment = taRightJustify
    Caption = 'Apelido (letra):'
  end
  object Label3: TLabel
    Left = 30
    Top = 160
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object TLabel
    Left = 43
    Top = 51
    Width = 39
    Height = 14
    Alignment = taRightJustify
    Caption = 'G'#234'nero:'
  end
  object TLabel
    Left = 133
    Top = 110
    Width = 256
    Height = 14
    Alignment = taRightJustify
    Caption = 'Valor do IPI quando o mesmo '#233' tributado por Unidade:'
  end
  object lbl1: TLabel
    Left = 123
    Top = 135
    Width = 87
    Height = 14
    Alignment = taRightJustify
    Caption = 'Exce'#231#227'o TIPI/IBPT:'
  end
  object DBeIPI_aliq: TDBEdit
    Left = 84
    Top = 107
    Width = 43
    Height = 22
    CharCase = ecUpperCase
    DataField = 'IPI_ALIQ'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 2
  end
  object TPanel
    Left = 6
    Top = 40
    Width = 501
    Height = 3
    Color = 12681984
    TabOrder = 10
  end
  object DBNavigator1: TDBNavigator
    Left = 366
    Top = 10
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsPrdClassIPI
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 195
    Top = 272
    Width = 311
    Height = 33
    BevelOuter = bvNone
    TabOrder = 7
    object Bit_Cancelar: TBitBtn
      Left = 231
      Top = 4
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
      Left = 231
      Top = 4
      Width = 75
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
      Left = 5
      Top = 4
      Width = 75
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
      Left = 80
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Cancel = True
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
      Left = 155
      Top = 4
      Width = 75
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
  object Panel2: TPanel
    Left = 10
    Top = 272
    Width = 94
    Height = 33
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 8
    object Bit_Relatorio: TBitBtn
      Left = 5
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object DbeIpi_Apelido: TDBEdit
    Left = 84
    Top = 131
    Width = 29
    Height = 22
    CharCase = ecUpperCase
    DataField = 'IPI_APELIDO'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 4
  end
  object EdtIPI_codigo: TDBEdit
    Left = 87
    Top = 10
    Width = 63
    Height = 22
    TabStop = False
    DataField = 'IPI_CODIGO'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 0
    OnChange = EdtIPI_codigoChange
    OnEnter = EdtIPI_codigoEnter
    OnExit = EdtIPI_codigoExit
    OnKeyPress = EdtIPI_codigoKeyPress
  end
  object DbckCredito: TDBCheckBox
    Left = 84
    Top = 243
    Width = 421
    Height = 17
    Caption = 'Classifica'#231#227'o Fiscal com Cr'#233'dito ou Diferenciada para Impostos'
    Color = clBtnFace
    Ctl3D = True
    DataField = 'NCM_TEMCREDITO'
    DataSource = DataCadastros.DsPrdClassIPI
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object EdGenero: TMemo
    Left = 84
    Top = 51
    Width = 421
    Height = 50
    TabStop = False
    Lines.Strings = (
      'EdGenero')
    ReadOnly = True
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 5
    Top = 262
    Width = 507
    Height = 2
    TabOrder = 11
  end
  object grpAliquotaEstado: TGroupBox
    Left = 527
    Top = 0
    Width = 231
    Height = 311
    Align = alRight
    Caption = 'Al'#237'quota Espec'#237'fica de ICMS por Estado'
    TabOrder = 12
    object Label4: TLabel
      Left = 8
      Top = 30
      Width = 33
      Height = 14
      Caption = 'Estado'
    end
    object Label5: TLabel
      Left = 104
      Top = 30
      Width = 39
      Height = 14
      Caption = 'Al'#237'quota'
    end
    object dbgrdICMS: TDBGrid
      Left = 2
      Top = 174
      Width = 227
      Height = 135
      Align = alBottom
      DataSource = DataCadastros.DsPrdClassIPIICMS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IPII_ESTADO'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPII_ALIQUOTA'
          Title.Alignment = taCenter
          Title.Caption = 'Al'#237'quota ICMS'
          Width = 126
          Visible = True
        end>
    end
    object DBNavigator2: TDBNavigator
      Left = 2
      Top = 149
      Width = 227
      Height = 25
      DataSource = DataCadastros.DsPrdClassIPIICMS
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 1
    end
    object dbcbbIPII_ESTADO: TDBComboBox
      Left = 8
      Top = 45
      Width = 49
      Height = 22
      Style = csDropDownList
      CharCase = ecUpperCase
      DataField = 'IPII_ESTADO'
      DataSource = DataCadastros.DsPrdClassIPIICMS
      Items.Strings = (
        'PR'
        'SP'
        'RJ'
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'EX'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PE'
        'PI'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SE'
        'TO')
      TabOrder = 2
    end
    object dbedtIPII_ALIQUOTA: TDBEdit
      Left = 104
      Top = 45
      Width = 121
      Height = 22
      DataField = 'IPII_ALIQUOTA'
      DataSource = DataCadastros.DsPrdClassIPIICMS
      TabOrder = 3
    end
  end
  object dbedtIPI_VALOR_POR_ITEM: TDBEdit
    Left = 392
    Top = 106
    Width = 114
    Height = 22
    CharCase = ecUpperCase
    DataField = 'IPI_VALOR_POR_ITEM'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 3
  end
  object edIpiEx: TDBEdit
    Left = 212
    Top = 131
    Width = 29
    Height = 22
    CharCase = ecUpperCase
    DataField = 'IPI_EX'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 5
    OnExit = edIpiExExit
    OnKeyPress = edIpiExKeyPress
  end
  object DBCheckBox1: TDBCheckBox
    Left = 244
    Top = 132
    Width = 264
    Height = 17
    Caption = 'Desconto no valor liquido da nota ref PIS E COFINS'
    DataField = 'IPI_REDVLLIQ'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 13
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object btnImportar: TBitBtn
    Left = 125
    Top = 276
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 14
    OnClick = btnImportarClick
  end
  object dbmNCM_DESC_FAMILIA: TDBMemo
    Left = 87
    Top = 157
    Width = 418
    Height = 68
    DataField = 'NCM_DESC_FAMILIA'
    DataSource = DataCadastros.DsPrdClassIPI
    TabOrder = 16
  end
  object pnProgresso: TPanel
    Left = 133
    Top = 115
    Width = 261
    Height = 59
    TabOrder = 15
    Visible = False
    object progresso: TGauge
      Left = 8
      Top = 22
      Width = 244
      Height = 35
      Progress = 0
    end
    object lbProgresso: TLabel
      Left = 8
      Top = 6
      Width = 58
      Height = 14
      Caption = 'lbProgresso'
    end
  end
  object SqlCdsRelClassIPI: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from IPI0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DisableStringTrim = True
    Params = <>
    CommandText = 'select * from IPI0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    object SqlCdsRelClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object SqlCdsRelClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      Precision = 15
    end
    object SqlCdsRelClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      Size = 2
    end
    object SqlCdsRelClassIPINCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object SqlCdsRelClassIPIIPI_REDVLLIQ: TStringField
      FieldName = 'IPI_REDVLLIQ'
      Size = 1
    end
    object SqlCdsRelClassIPINCM_DESC_FAMILIA: TMemoField
      FieldName = 'NCM_DESC_FAMILIA'
      BlobType = ftMemo
    end
  end
  object DsRelClassIPI: TDataSource
    DataSet = SqlCdsRelClassIPI
    Left = 216
    Top = 56
  end
  object ppDBRelClassIPI: TppDBPipeline
    DataSource = DsRelClassIPI
    UserName = 'DBRelClassIPI'
    Left = 312
    Top = 56
    object ppDBRelClassIPIppField1: TppField
      FieldAlias = 'IPI_CODIGO'
      FieldName = 'IPI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField2: TppField
      FieldAlias = 'IPI_ALIQ'
      FieldName = 'IPI_ALIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField3: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField4: TppField
      FieldAlias = 'IPI_APELIDO'
      FieldName = 'IPI_APELIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField5: TppField
      FieldAlias = 'NCM_TEMCREDITO'
      FieldName = 'NCM_TEMCREDITO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField6: TppField
      FieldAlias = 'IPI_REDVLLIQ'
      FieldName = 'IPI_REDVLLIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRelClassIPIppField7: TppField
      FieldAlias = 'NCM_DESC_FAMILIA'
      FieldName = 'NCM_DESC_FAMILIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppRPRelClassificIPI01: TppReport
    AutoStop = False
    DataPipeline = ppDBRelClassIPI
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
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELCLASSIFICIPI00.rtm'
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
    Left = 280
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelClassIPI'
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
        mmLeft = 1323
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
        mmLeft = 1323
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
        mmLeft = 1323
        mmTop = 7673
        mmWidth = 14817
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
        Caption = 'CODIGO NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3344
        mmLeft = 1588
        mmTop = 11642
        mmWidth = 18034
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'APELIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 182034
        mmTop = 11377
        mmWidth = 13229
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
        Caption = 'ALIQ.IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3344
        mmLeft = 25929
        mmTop = 11642
        mmWidth = 10499
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CR'#201'DITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3344
        mmLeft = 40746
        mmTop = 11377
        mmWidth = 12150
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O DO TIPO DE PRODUTO OU FAMILIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 58473
        mmTop = 11642
        mmWidth = 81756
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
        DataField = 'IPI_CODIGO'
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3344
        mmLeft = 794
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'IPI_APELIDO'
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3440
        mmLeft = 187855
        mmTop = 265
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'IPI_ALIQ'
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 36777
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NCM_TEMCREDITO'
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3440
        mmLeft = 40481
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NCM_DESC_FAMILIA'
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3440
        mmLeft = 50536
        mmTop = 265
        mmWidth = 135467
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
        Caption = 'Total de NCM'#180's Listadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3344
        mmLeft = 0
        mmTop = 529
        mmWidth = 29422
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelClassIPI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelClassIPI'
        mmHeight = 3175
        mmLeft = 32279
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
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xlsx'
    Filter = 'Excel|*.xlsx'
    Left = 408
    Top = 56
  end
  object qNCM: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxIpiEmp'
        Fields = 'IPI_CODIGO;EMP_CODIGO'
      end>
    IndexName = 'idxIpiEmp'
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT * FROM IPI0000')
    Left = 32
    Top = 176
  end
  object qExecSQL: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT * FROM IPI0000')
    Left = 32
    Top = 224
  end
end
