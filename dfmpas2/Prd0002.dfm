object FormProdGrupo: TFormProdGrupo
  Left = 261
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Grupo do Produto'
  ClientHeight = 389
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 31
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
    Left = 75
    Top = 52
    Width = 33
    Height = 14
    Caption = 'Grupo:'
  end
  object Label3: TLabel
    Left = 17
    Top = 112
    Width = 62
    Height = 14
    Caption = 'Comissionar:'
  end
  object Label4: TLabel
    Left = 255
    Top = 118
    Width = 57
    Height = 14
    Caption = 'Percentual :'
  end
  object Label5: TLabel
    Left = 22
    Top = 77
    Width = 88
    Height = 14
    Caption = 'Atualizar Estoque:'
  end
  object Panel2: TPanel
    Left = 17
    Top = 343
    Width = 395
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 6
    object Bit_Cancelar: TBitBtn
      Left = 229
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
      Left = 229
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
      Left = 4
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
      Left = 79
      Top = 4
      Width = 75
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
      Left = 154
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
    object Bit_Relatorio: TBitBtn
      Left = 304
      Top = 4
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
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
      TabOrder = 5
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object DBePgr_descri: TDBEdit
    Left = 109
    Top = 48
    Width = 255
    Height = 22
    CharCase = ecUpperCase
    DataField = 'PGR_DESCRI'
    DataSource = DataCadastros.DsPrdGrupo
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 5
    Top = 40
    Width = 399
    Height = 4
    Color = 12681984
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 279
    Top = 10
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsPrdGrupo
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object EdtPgr_codigo: TEdit
    Left = 69
    Top = 10
    Width = 41
    Height = 22
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 0
    OnClick = EdtPgr_codigoEnter
    OnEnter = EdtPgr_codigoEnter
    OnExit = EdtPgr_codigoExit
    OnKeyPress = EdtPgr_codigoKeyPress
  end
  object DbRadComissao: TDBRadioGroup
    Left = 85
    Top = 98
    Width = 148
    Height = 39
    Columns = 2
    Ctl3D = True
    DataField = 'PGR_COMISS'
    DataSource = DataCadastros.DsPrdGrupo
    Items.Strings = (
      'Sim'
      'N'#227'o')
    ParentCtl3D = False
    TabOrder = 2
    TabStop = True
    Values.Strings = (
      'S'
      'N')
  end
  object DbePercentual: TDBEdit
    Left = 315
    Top = 115
    Width = 34
    Height = 22
    DataField = 'PGR_COM_PERC'
    DataSource = DataCadastros.DsPrdGrupo
    TabOrder = 3
  end
  object CbxAtualizaEstoque: TComboBox
    Left = 109
    Top = 73
    Width = 55
    Height = 22
    Style = csDropDownList
    MaxLength = 3
    TabOrder = 7
    OnChange = CbxAtualizaEstoqueChange
    Items.Strings = (
      'SIM'
      'N'#195'O')
  end
  object GroupBox1: TGroupBox
    Left = 17
    Top = 146
    Width = 395
    Height = 184
    Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
    TabOrder = 8
    object Label6: TLabel
      Left = 185
      Top = 50
      Width = 86
      Height = 14
      Caption = 'Margem de venda'
    end
    object Label7: TLabel
      Left = 185
      Top = 76
      Width = 85
      Height = 14
      Caption = 'Margem de oferta'
    end
    object Label9: TLabel
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
    object Label8: TLabel
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
    object Label10: TLabel
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
    object Label11: TLabel
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
    object Label12: TLabel
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
    object Label13: TLabel
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
      Left = 205
      Top = 126
      Width = 181
      Height = 36
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = 'Atualizar Pre'#231'os dos Produtos'
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
      DataField = 'PGR_PER_ICMS'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 46
      Width = 89
      Height = 22
      DataField = 'PGR_PER_PISCONFINS'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 75
      Top = 72
      Width = 89
      Height = 22
      DataField = 'PGR_PER_IPI'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 277
      Top = 20
      Width = 89
      Height = 22
      DataField = 'PGR_PER_LUCRO'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 75
      Top = 127
      Width = 89
      Height = 22
      DataField = 'PGR_PER_OUTROS'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 75
      Top = 99
      Width = 89
      Height = 22
      DataField = 'PGR_PER_FRETE'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 277
      Top = 46
      Width = 89
      Height = 22
      Color = 14145495
      DataField = 'PGR_MARGEMVENDA'
      DataSource = DataCadastros.DsPrdGrupo
      Enabled = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 277
      Top = 72
      Width = 89
      Height = 22
      DataField = 'PGR_MARGEMOFERTA'
      DataSource = DataCadastros.DsPrdGrupo
      TabOrder = 7
    end
  end
  object ppRPRelGruProdu01: TppReport
    AutoStop = False
    DataPipeline = ppDBGruProdu
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
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELGruProdu01.r' +
      'tm'
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
    Left = 240
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBGruProdu'
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
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME DO GRUPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 9260
        mmTop = 11642
        mmWidth = 22987
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
        Caption = 'COMISSIONAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 134409
        mmTop = 11642
        mmWidth = 18796
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PERC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 169334
        mmTop = 11642
        mmWidth = 7620
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'At.Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 116417
        mmTop = 11642
        mmWidth = 12488
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
        DataField = 'PGR_CODIGO'
        DataPipeline = ppDBGruProdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBGruProdu'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PGR_DESCRI'
        DataPipeline = ppDBGruProdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBGruProdu'
        mmHeight = 3302
        mmLeft = 9260
        mmTop = 0
        mmWidth = 100277
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
        mmLeft = 141552
        mmTop = 0
        mmWidth = 10922
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PGR_COM_PERC'
        DataPipeline = ppDBGruProdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBGruProdu'
        mmHeight = 3302
        mmLeft = 169334
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBAtEstoque: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBAtEstoque'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PGR_ATUALIZA_ESTOQUE'
        DataPipeline = ppDBGruProdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBGruProdu'
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 0
        mmWidth = 12700
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
        Caption = 'Total de Grupo de Produtos Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 529
        mmWidth = 47890
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBGruProdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBGruProdu'
        mmHeight = 3175
        mmLeft = 48683
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
        747450726F63656475726506536F7572636514A400000070726F636564757265
        205661726961626C65314F6E476574546578742876617220546578743A205374
        72696E67293B0D0A626567696E0D0A20202020696620444247727550726F6475
        5B275047525F434F4D495353275D3D20275327207468656E0D0A202020202020
        2054657874203A3D202753494D270D0A20202020656C73650D0A202020202020
        2054657874203A3D20274EC3834F273B2020200D0A656E643B0D0A0D436F6D70
        6F6E656E744E616D6506095661726961626C6531094576656E744E616D650609
        4F6E47657454657874074576656E7449440235084361726574506F7301020002
        00000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        650610444254657874334F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636506B270726F6365647572652044
        4254657874334F6E476574546578742876617220546578743A20537472696E67
        293B0D0A626567696E0D0A20202020696620444247727550726F64755B275047
        525F434F4D495353275D3D20275327207468656E0D0A20202020202020546578
        74203A3D20444247727550726F64755B275047525F434F4D5F50455243275D0D
        0A20202020656C73650D0A2020202020202054657874203A3D27273B2020200D
        0A656E643B0D0A0D436F6D706F6E656E744E616D650607444254657874330945
        76656E744E616D6506094F6E47657454657874074576656E7449440235084361
        726574506F730102000200000001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D650614444241744573746F7175654F6E476574546578
        740B50726F6772616D54797065070B747450726F63656475726506536F757263
        6514B400000070726F63656475726520444241744573746F7175654F6E476574
        546578742876617220546578743A20537472696E67293B0D0A626567696E0D0A
        20202020696620444247727550726F64755B275047525F415455414C495A415F
        4553544F515545275D3D20275327207468656E0D0A2020202020202054657874
        203A3D202753494D270D0A20202020656C73650D0A2020202020202054657874
        203A3D20274EC3834F273B20202020200D0A0D0A656E643B0D0A0D436F6D706F
        6E656E744E616D65060B444241744573746F717565094576656E744E616D6506
        094F6E47657454657874074576656E7449440235084361726574506F73010200
        0200000000}
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
  object ppDBGruProdu: TppDBPipeline
    DataSource = DsGruProdu
    UserName = 'DBGruProdu'
    Left = 208
  end
  object SqlCdsRelGruProdu: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_GRUPO ORDER BY PGR_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_GRUPO ORDER BY PGR_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 144
    object SqlCdsRelGruProduPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRelGruProduPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsRelGruProduPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object SqlCdsRelGruProduPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 15
    end
    object SqlCdsRelGruProduPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsRelGruProduEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelGruProduPGR_PER_ICMS: TFMTBCDField
      FieldName = 'PGR_PER_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PGR_PER_PISCONFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_PER_IPI: TFMTBCDField
      FieldName = 'PGR_PER_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_PER_FRETE: TFMTBCDField
      FieldName = 'PGR_PER_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_PER_OUTROS: TFMTBCDField
      FieldName = 'PGR_PER_OUTROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_PER_LUCRO: TFMTBCDField
      FieldName = 'PGR_PER_LUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PGR_MARGEMOFERTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlCdsRelGruProduPGR_MARGEMVENDA: TFMTBCDField
      FieldName = 'PGR_MARGEMVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
  end
  object DsGruProdu: TDataSource
    DataSet = SqlCdsRelGruProdu
    Left = 176
  end
end
