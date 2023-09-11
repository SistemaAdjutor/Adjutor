object FormGimpManutMov: TFormGimpManutMov
  Left = 42
  Top = 66
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Manuten'#231#227'o de Movimentos'
  ClientHeight = 421
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group06: TGroupBox
    Left = 0
    Top = 375
    Width = 413
    Height = 41
    TabOrder = 5
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = 'Con&figura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 215
      Top = 11
      Width = 75
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
  object Group05: TGroupBox
    Left = 0
    Top = 335
    Width = 413
    Height = 41
    Caption = 'Selecione o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label5: TLabel
      Left = 6
      Top = 18
      Width = 40
      Height = 13
      Caption = 'P&roduto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbxProduMov: TComboBox
      Left = 130
      Top = 15
      Width = 280
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 0
      OnClick = CbxProduMovClick
      OnExit = CbxProduMovClick
    end
    object Edt_Refer: TEdit
      Left = 47
      Top = 15
      Width = 82
      Height = 21
      MaxLength = 11
      TabOrder = 1
      OnEnter = Edt_ReferEnter
      OnExit = Edt_ReferExit
    end
  end
  object Group04: TGroupBox
    Left = 0
    Top = 263
    Width = 413
    Height = 71
    Caption = 'Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 6
      Top = 22
      Width = 24
      Height = 13
      Caption = 'Ti&po:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 45
      Width = 32
      Height = 13
      Caption = 'Gr&upo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbxTipoMov: TComboBox
      Left = 65
      Top = 19
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      MaxLength = 25
      ParentFont = False
      TabOrder = 1
      Text = 'TODOS OS TIPOS'
      OnClick = CbxTipoMovClick
      OnExit = CbxTipoMovClick
      Items.Strings = (
        'TODOS OS TIPOS')
    end
    object CbxGrupoMov: TComboBox
      Left = 65
      Top = 42
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      MaxLength = 25
      ParentFont = False
      TabOrder = 3
      Text = 'TODOS OS GRUPOS'
      OnClick = CbxGrupoMovClick
      OnExit = CbxGrupoMovClick
      Items.Strings = (
        'TODOS OS GRUPOS')
    end
    object Edt_Tipo: TEdit
      Left = 40
      Top = 19
      Width = 24
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      Text = '999'
      OnExit = Edt_TipoExit
      OnKeyPress = Edt_AlmoxKeyPress
    end
    object Edt_Grupo: TEdit
      Left = 40
      Top = 42
      Width = 24
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      Text = '999'
      OnExit = Edt_GrupoExit
      OnKeyPress = Edt_AlmoxKeyPress
    end
  end
  object Group07: TGroupBox
    Left = 0
    Top = 222
    Width = 413
    Height = 41
    Caption = 'Selecione o Almoxarifado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object Label6: TLabel
      Left = 6
      Top = 18
      Width = 63
      Height = 13
      Caption = 'Almo&xarifado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbxAlmox: TComboBox
      Left = 96
      Top = 15
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 1
      Text = 'TODOS OS ALMOXARIFADOS'
      OnClick = CbxAlmoxClick
      OnExit = CbxAlmoxClick
      Items.Strings = (
        'TODOS OS ALMOXARIFADOS')
    end
    object Edt_Almox: TEdit
      Left = 70
      Top = 15
      Width = 24
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      Text = '999'
      OnEnter = Edt_AlmoxEnter
      OnExit = Edt_AlmoxExit
      OnKeyPress = Edt_AlmoxKeyPress
    end
  end
  object Group03: TGroupBox
    Left = 0
    Top = 182
    Width = 413
    Height = 41
    Caption = 'Filtrar Movimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object RadTodas: TRadioButton
      Left = 24
      Top = 17
      Width = 60
      Height = 13
      Caption = 'Toda&s'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadTodasClick
    end
    object RadSoSaidas: TRadioButton
      Left = 249
      Top = 17
      Width = 102
      Height = 13
      Caption = 'Somente &Sa'#237'das'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadSoSaidasClick
    end
    object RadSoEntradas: TRadioButton
      Left = 110
      Top = 17
      Width = 110
      Height = 13
      Caption = 'Somente &Entradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadSoEntradasClick
    end
  end
  object Group01: TGroupBox
    Left = 0
    Top = 99
    Width = 413
    Height = 41
    Caption = 'Ficha de Movimento de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object RadInd: TRadioButton
      Left = 110
      Top = 17
      Width = 67
      Height = 17
      Caption = 'I&ndividual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadIndClick
    end
    object RadGlobal: TRadioButton
      Left = 24
      Top = 17
      Width = 52
      Height = 17
      Caption = '&Global'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadGlobalClick
    end
  end
  object Group02: TGroupBox
    Left = 0
    Top = 140
    Width = 413
    Height = 41
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 9
      Top = 19
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
    object Label4: TLabel
      Left = 136
      Top = 19
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
    object EditDataI: TDateEdit
      Left = 28
      Top = 15
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = EditDataIEnter
    end
    object EditDataF: TDateEdit
      Left = 159
      Top = 15
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = EditDataFEnter
    end
  end
  object Group00: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 100
    Caption = 'Tipos de Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBoxProdu: TListBox
      Left = 3
      Top = 15
      Width = 282
      Height = 82
      Style = lbOwnerDrawVariable
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LTBoxProduClick
    end
  end
  object GrpDispositivo: TGroupBox
    Left = 292
    Top = 0
    Width = 121
    Height = 100
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      Top = 48
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
      Top = 73
      Width = 90
      Height = 17
      Caption = 'Arquivo &Texto'
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
    Left = 294
    Top = 345
  end
  object SqlCdsTipoMov: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 208
    Top = 281
    object SqlCdsTipoMovPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsTipoMovPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsTipoMovEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsGrupoMovi: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_GRUPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_GRUPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 303
    object SqlCdsGrupoMoviPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsGrupoMoviPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsGrupoMoviPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object SqlCdsGrupoMoviPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 15
    end
    object SqlCdsGrupoMoviEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRelManutMov: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'Y1.PTI_CODIGO,'#13#10'Y2.PTI_DESCRI,'#13#10'Y3.PGR_DESCRI,'#13#10'Y1.PGR_C' +
      'ODIGO,'#13#10'Y1.PRD_REFER,'#13#10'Y1.PRD_DESCRI,'#13#10'Y1.PRD_UND,'#13#10'Y1.EMP_CODIG' +
      'O,'#13#10'Y4.PES_DATA,'#13#10'Y4.PES_QTDE,'#13#10'Y4.PES_VALOR,'#13#10'Y4.PES_TIPDOC,'#13#10'Y' +
      '4.PES_NUMDOC,'#13#10'Y4.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'Y4.PES_TIPO'#13#10'FROM' +
      ' PRD_ENSA Y4'#13#10'JOIN PRD0000        Y1 ON Y1.prd_refer  = Y4.prd_r' +
      'efer'#13#10'LEFT JOIN prd_tipo  Y2 ON Y2.pti_codigo = Y1.pti_codigo'#13#10'L' +
      'EFT JOIN prd_grupo Y3 ON Y3.pgr_codigo = Y1.pgr_codigo'#13#10'LEFT JOI' +
      'N ALMOX0000 A1 ON Y4.AMX_CODIGO = A1.AMX_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRelManutMovCalcFields
    CommandText = 
      'SELECT'#13#10'Y1.PTI_CODIGO,'#13#10'Y2.PTI_DESCRI,'#13#10'Y3.PGR_DESCRI,'#13#10'Y1.PGR_C' +
      'ODIGO,'#13#10'Y1.PRD_REFER,'#13#10'Y1.PRD_DESCRI,'#13#10'Y1.PRD_UND,'#13#10'Y1.EMP_CODIG' +
      'O,'#13#10'Y4.PES_DATA,'#13#10'Y4.PES_QTDE,'#13#10'Y4.PES_VALOR,'#13#10'Y4.PES_TIPDOC,'#13#10'Y' +
      '4.PES_NUMDOC,'#13#10'Y4.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'Y4.PES_TIPO'#13#10'FROM' +
      ' PRD_ENSA Y4'#13#10'JOIN PRD0000        Y1 ON Y1.prd_refer  = Y4.prd_r' +
      'efer'#13#10'LEFT JOIN prd_tipo  Y2 ON Y2.pti_codigo = Y1.pti_codigo'#13#10'L' +
      'EFT JOIN prd_grupo Y3 ON Y3.pgr_codigo = Y1.pgr_codigo'#13#10'LEFT JOI' +
      'N ALMOX0000 A1 ON Y4.AMX_CODIGO = A1.AMX_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 448
    Top = 8
    object SqlCdsRelManutMovPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsRelManutMovPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsRelManutMovPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsRelManutMovPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsRelManutMovPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsRelManutMovPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRelManutMovPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsRelManutMovPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlCdsRelManutMovPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      Precision = 15
    end
    object SqlCdsRelManutMovPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      Precision = 15
    end
    object SqlCdsRelManutMovPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlCdsRelManutMovPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object SqlCdsRelManutMovPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 7
    end
    object SqlCdsRelManutMovPES_ENTRADA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_ENTRADA_CC'
      Calculated = True
    end
    object SqlCdsRelManutMovPES_SAIDA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_SAIDA_CC'
      Calculated = True
    end
    object SqlCdsRelManutMovEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelManutMovAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsRelManutMovAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 35
    end
  end
  object DsManutMov: TDataSource
    DataSet = SqlCdsRelManutMov
    Left = 480
    Top = 8
  end
  object ppRelManutMov00: TppReport
    AutoStop = False
    DataPipeline = ppDBManutMov
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMANUTMOV00.r' +
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
    Left = 544
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBManutMov'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
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
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163460
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 14288
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_TITULO3'
        HyperlinkEnabled = False
        Caption = 'TITULO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 14288
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'PES_DATA'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'PRD_REFER'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 15610
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'PRD_UND'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 98161
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'PES_VALOR'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
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
        DataField = 'PES_TIPDOC'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 176213
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'PES_NUMDOC'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 185473
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 32808
        mmTop = 0
        mmWidth = 64558
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'PES_ENTRADA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 106627
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'PES_SAIDA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 131763
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'PES_ENTRADA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '###,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3316
        mmLeft = 102923
        mmTop = 265
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'PES_SAIDA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '###,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3316
        mmLeft = 126207
        mmTop = 265
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3968
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 265
        mmWidth = 15593
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        DataField = 'PES_VALOR'
        DataPipeline = ppDBManutMov
        DisplayFormat = '###,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3316
        mmLeft = 150813
        mmTop = 265
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PTI_CODIGO'
      DataPipeline = ppDBManutMov
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBManutMov'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          HyperlinkEnabled = False
          Caption = 'TIPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 13229
          mmTop = 0
          mmWidth = 7479
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'PTI_CODIGO'
          DataPipeline = ppDBManutMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 22225
          mmTop = 0
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          HyperlinkEnabled = False
          Caption = 'Data Mov.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 4498
          mmWidth = 13123
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          HyperlinkEnabled = False
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 15610
          mmTop = 4498
          mmWidth = 14252
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          HyperlinkEnabled = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32808
          mmTop = 4498
          mmWidth = 13406
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          HyperlinkEnabled = False
          Caption = 'Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 98161
          mmTop = 4498
          mmWidth = 6914
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          HyperlinkEnabled = False
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 112924
          mmTop = 4498
          mmWidth = 10372
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 141482
          mmTop = 4498
          mmWidth = 7479
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          Caption = 'Pre'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 167323
          mmTop = 4498
          mmWidth = 7832
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          HyperlinkEnabled = False
          Caption = 'Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 178083
          mmTop = 4498
          mmWidth = 6068
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          HyperlinkEnabled = False
          Caption = 'N'#186' Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 185473
          mmTop = 4498
          mmWidth = 9948
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3969
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'PTI_DESCRI'
          DataPipeline = ppDBManutMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 28575
          mmTop = 0
          mmWidth = 76729
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8202
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
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
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
          DataField = 'PES_ENTRADA_CC'
          DataPipeline = ppDBManutMov
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 106627
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'PES_SAIDA_CC'
          DataPipeline = ppDBManutMov
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 131763
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          HyperlinkEnabled = False
          Caption = 'Total do Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 529
          mmWidth = 18415
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText21'
          HyperlinkEnabled = False
          DataField = 'PTI_CODIGO'
          DataPipeline = ppDBManutMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3246
          mmLeft = 23019
          mmTop = 529
          mmWidth = 5821
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText22'
          HyperlinkEnabled = False
          DataField = 'PTI_DESCRI'
          DataPipeline = ppDBManutMov
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3246
          mmLeft = 29369
          mmTop = 529
          mmWidth = 76729
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          DataField = 'PES_VALOR'
          DataPipeline = ppDBManutMov
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 157957
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PRD_DESCRI'
      DataPipeline = ppDBManutMov
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBManutMov'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBCalcEntrada: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalcEntrada'
          HyperlinkEnabled = False
          DataField = 'PES_ENTRADA_CC'
          DataPipeline = ppDBManutMov
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 106627
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalcSaida: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalcSaida'
          HyperlinkEnabled = False
          DataField = 'PES_SAIDA_CC'
          DataPipeline = ppDBManutMov
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBManutMov'
          mmHeight = 3316
          mmLeft = 131763
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Saldo do Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 71438
          mmTop = 529
          mmWidth = 25929
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196057
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppVarSaldo: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'VarSaldo'
          HyperlinkEnabled = False
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = '###,0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 157957
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        56617253616C646F4F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F75726365067570726F6365647572652056617253616C
        646F4F6E43616C63287661722056616C75653A2056617269616E74293B0D0A62
        6567696E0D0A0D0A202056616C7565203A3D2028444243616C63456E74726164
        612E76616C75652D444243616C6353616964612E76616C7565293B0D0A0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D65060856617253616C646F094576
        656E744E616D6506064F6E43616C63074576656E744944022108436172657450
        6F730102000200000000}
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
  object SqlCdsProduMov: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select PRD_REFER, PRD_DESCRI, EMP_CODIGO from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select PRD_REFER, PRD_DESCRI, EMP_CODIGO from PRD0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 247
    Top = 346
    object SqlCdsProduMovPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProduMovPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProduMovEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object ppDBManutMov: TppDBPipeline
    DataSource = DsManutMov
    UserName = 'DBManutMov'
    Left = 512
    Top = 8
  end
  object ppRelManutMovIND: TppReport
    AutoStop = False
    DataPipeline = ppDBManutMov
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMANUTMOV00IN' +
      'D.rtm'
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
    Left = 544
    Top = 40
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBManutMov'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_TITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_TITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163460
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 14288
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 32808
        mmTop = 19315
        mmWidth = 13406
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 15610
        mmTop = 19315
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Data Mov.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 19315
        mmWidth = 13123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 86254
        mmTop = 19315
        mmWidth = 6914
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 94986
        mmTop = 19315
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 111390
        mmTop = 19315
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'P.Unitario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127265
        mmTop = 19315
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3316
        mmLeft = 143140
        mmTop = 19315
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'N'#186' Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 151077
        mmTop = 19315
        mmWidth = 9948
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_TITULO3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_01_TITULO3'
        HyperlinkEnabled = False
        Caption = 'TITULO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 14288
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        HyperlinkEnabled = False
        Caption = 'Almoxarifado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 161661
        mmTop = 19315
        mmWidth = 17709
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'PES_DATA'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'PRD_REFER'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 15610
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'PRD_UND'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 86254
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'PES_VALOR'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 127265
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'PES_TIPDOC'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 143140
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'PES_NUMDOC'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 151077
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextProduto: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'ppDBTextProduto'
        HyperlinkEnabled = False
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 32808
        mmTop = 0
        mmWidth = 52917
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'PES_ENTRADA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 94986
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'PES_SAIDA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3246
        mmLeft = 111390
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'AMX_CODIGO'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        HyperlinkEnabled = False
        DataField = 'AMX_DESCRI'
        DataPipeline = ppDBManutMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'PES_ENTRADA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3316
        mmLeft = 94986
        mmTop = 793
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        DataField = 'PES_SAIDA_CC'
        DataPipeline = ppDBManutMov
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBManutMov'
        mmHeight = 3316
        mmLeft = 111390
        mmTop = 793
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'TOTAL DO PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 11113
        mmTop = 794
        mmWidth = 30974
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650618
        707044425465787450726F6475746F4F6E476574546578740B50726F6772616D
        54797065070B747450726F63656475726506536F75726365067870726F636564
        75726520707044425465787450726F6475746F4F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874
        203A3D20436F70792844424D616E75744D6F765B275052445F44455343524927
        5D2C312C3330293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        060F707044425465787450726F6475746F094576656E744E616D6506094F6E47
        657454657874074576656E7449440235084361726574506F7301020002000000
        00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select AMX_CODIGO, AMX_DESCRI from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select AMX_CODIGO, AMX_DESCRI from ALMOX0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 233
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 47
    end
  end
  object SqlCdsKardexSAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO,'#13#10'SUM(E1.PES_' +
      'QTDE) AS WQTDE,'#13#10'CAST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI' +
      ')/100) *E1.PES_QTDE) AS FLOAT) AS WPRECOMEDIO'#13#10'FROM PRD_ENSA E1'#13 +
      #10'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER)'#13#10'WHERE E1' +
      '.PES_DATA BETWEEN '#39'01.01.2004'#39' AND '#39'31.12.2004'#39#13#10#13#10'GROUP BY'#13#10'E1.' +
      'PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO'#13#10'ORDER BY'#13#10'E1.PRD_REFER,' +
      #13#10'E1.PES_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsKardexSAlmoxCalcFields
    CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO,'#13#10'SUM(E1.PES_' +
      'QTDE) AS WQTDE,'#13#10'CAST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI' +
      ')/100) *E1.PES_QTDE) AS FLOAT) AS WPRECOMEDIO'#13#10'FROM PRD_ENSA E1'#13 +
      #10'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER)'#13#10'WHERE E1' +
      '.PES_DATA BETWEEN '#39'01.01.2004'#39' AND '#39'31.12.2004'#39#13#10#13#10'GROUP BY'#13#10'E1.' +
      'PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO'#13#10'ORDER BY'#13#10'E1.PRD_REFER,' +
      #13#10'E1.PES_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 56
    object SqlCdsKardexSAlmoxPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsKardexSAlmoxPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsKardexSAlmoxPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsKardexSAlmoxWQTDE: TFMTBCDField
      FieldName = 'WQTDE'
      Precision = 15
    end
    object SqlCdsKardexSAlmoxWPRECOMEDIO: TFloatField
      FieldName = 'WPRECOMEDIO'
    end
  end
  object CdsKardex: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 448
    Top = 72
    object CdsKardexAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object CdsKardexAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 45
    end
    object CdsKardexPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsKardexPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object CdsKardexPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 5
    end
    object CdsKardexPRD_ENTRADA: TCurrencyField
      FieldName = 'PRD_ENTRADA'
    end
    object CdsKardexPRD_SAIDA: TCurrencyField
      FieldName = 'PRD_SAIDA'
    end
    object CdsKardexPRD_ESTOQUE: TCurrencyField
      FieldName = 'PRD_ESTOQUE'
    end
    object CdsKardexPRD_PMEDIO: TCurrencyField
      FieldName = 'PRD_PMEDIO'
    end
  end
  object DsKardex: TDataSource
    DataSet = CdsKardex
    Left = 480
    Top = 72
  end
  object ppRelKardex: TppReport
    AutoStop = False
    DataPipeline = ppDBKardex
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELKARDEX.rtm'
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
    Left = 544
    Top = 72
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBKardex'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
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
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174378
        mmTop = 14288
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object ppLineGrupo00: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'LineGrupo00'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblRef: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblRef'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 19579
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblDescri: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblDescri'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 19579
        mmWidth = 79375
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_LTITULO3: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_02_LTITULO3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TITULO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14288
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblUnd: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblUnd'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'UNID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 19579
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblEntrada: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblEntrada'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 106627
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblSaida: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblSaida'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblEstoque: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblPmedio: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblPmedio'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pre'#231'o M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 161132
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLblTotal: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblTotal'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 179123
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'PRD_REFER'
        DataPipeline = ppDBKardex
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBTextDescri: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'ppDBTextDescri'
        HyperlinkEnabled = False
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBKardex
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 18256
        mmTop = 0
        mmWidth = 79904
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'PRD_UND'
        DataPipeline = ppDBKardex
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 98161
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'PRD_SAIDA'
        DataPipeline = ppDBKardex
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 124619
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText201'
        HyperlinkEnabled = False
        DataField = 'PRD_ENTRADA'
        DataPipeline = ppDBKardex
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 106627
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText202'
        HyperlinkEnabled = False
        DataField = 'PRD_ESTOQUE'
        DataPipeline = ppDBKardex
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3246
        mmLeft = 142875
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataField = 'PRD_PMEDIO'
        DataPipeline = ppDBKardex
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBKardex'
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppVarTotal: TppVariable
        DesignLayer = ppDesignLayer3
        UserName = 'VarTotal'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'AMX_CODIGO'
      DataPipeline = ppDBKardex
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBKardex'
      NewFile = False
      object ppGroupHeaderGrupo: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label14'
          HyperlinkEnabled = False
          Caption = 'Almoxarifado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 0
          mmTop = 0
          mmWidth = 17004
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText15'
          HyperlinkEnabled = False
          DataField = 'AMX_CODIGO'
          DataPipeline = ppDBKardex
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBKardex'
          mmHeight = 3246
          mmLeft = 18521
          mmTop = 0
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText27: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'AMX_DESCRI'
          DataPipeline = ppDBKardex
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBKardex'
          mmHeight = 3246
          mmLeft = 24606
          mmTop = 0
          mmWidth = 60061
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLineGrupo01: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line7'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLineGrupo02: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8202
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 0
          mmTop = 4498
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label16'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 18256
          mmTop = 4498
          mmWidth = 79375
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'UNID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 98161
          mmTop = 4498
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 106627
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label19'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 124619
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label20'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 142875
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label202'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Pre'#231'o M'#233'dio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 161132
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label34'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 179123
          mmTop = 4498
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLineGrupo03: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196586
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppVariable: TppVariable
          DesignLayer = ppDesignLayer3
          UserName = 'ppVariable'
          HyperlinkEnabled = False
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 183057
          mmTop = 529
          mmWidth = 13264
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650617
        70704442546578744465736372694F6E476574546578740B50726F6772616D54
        797065070B747450726F63656475726506536F75726365067470726F63656475
        72652070704442546578744465736372694F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D436F70792844424B61726465785B275052445F444553435249275D2C312C33
        35293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060E707044
        4254657874446573637269094576656E744E616D6506094F6E47657454657874
        074576656E7449440235084361726574506F730102000200000001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D65060E566172546F74
        616C4F6E43616C630B50726F6772616D54797065070B747450726F6365647572
        6506536F7572636506C270726F63656475726520566172546F74616C4F6E4361
        6C63287661722056616C75653A2056617269616E74293B0D0A626567696E0D0A
        20206966202844424B61726465785B275052445F4553544F515545275D3E3020
        7468656E200D0A202020202056616C7565203A3D202844424B61726465785B27
        5052445F504D4544494F275D2A44424B61726465785B275052445F4553544F51
        5545275D290D0A2020656C73650D0A202020202056616C7565203A3D20303B20
        20200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060856617254
        6F74616C094576656E744E616D6506064F6E43616C63074576656E7449440221
        084361726574506F730102000200000000}
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object SqlCdsKardexCAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO,'#13#10'E1.AMX_CODI' +
      'GO,'#13#10'A1.AMX_DESCRI,'#13#10'P1.PRD_UND,'#13#10'SUM(E1.PES_QTDE) AS WQTDE,'#13#10'CA' +
      'ST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI)/100) *E1.PES_QTDE' +
      ') AS FLOAT) AS WPRECOMEDIO'#13#10'FROM PRD_ENSA E1'#13#10'LEFT JOIN PRD0000 ' +
      'P1 ON (P1.PRD_REFER = E1.PRD_REFER)'#13#10'LEFT JOIN almox0000 A1 ON (' +
      'A1.AMX_CODIGO = E1.AMX_CODIGO)'#13#10'WHERE E1.PES_DATA BETWEEN '#39'01.01' +
      '.2004'#39' AND '#39'31.12.2004'#39#13#10'GROUP BY'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,' +
      #13#10'E1.PES_TIPO,'#13#10'E1.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'P1.PRD_UND'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsKardexCAlmoxCalcFields
    CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'E1.PES_TIPO,'#13#10'E1.AMX_CODI' +
      'GO,'#13#10'A1.AMX_DESCRI,'#13#10'P1.PRD_UND,'#13#10'SUM(E1.PES_QTDE) AS WQTDE,'#13#10'CA' +
      'ST(SUM((E1.PES_VALOR+(E1.PES_Valor*E1.PES_IPI)/100) *E1.PES_QTDE' +
      ') AS FLOAT) AS WPRECOMEDIO'#13#10'FROM PRD_ENSA E1'#13#10'LEFT JOIN PRD0000 ' +
      'P1 ON (P1.PRD_REFER = E1.PRD_REFER)'#13#10'LEFT JOIN almox0000 A1 ON (' +
      'A1.AMX_CODIGO = E1.AMX_CODIGO)'#13#10'WHERE E1.PES_DATA BETWEEN '#39'01.01' +
      '.2004'#39' AND '#39'31.12.2004'#39#13#10'GROUP BY'#13#10'E1.PRD_REFER,'#13#10'P1.PRD_DESCRI,' +
      #13#10'E1.PES_TIPO,'#13#10'E1.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'P1.PRD_UND'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 88
    object StringField1: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'AMX_DESCRI'
      ProviderFlags = []
      Size = 35
    end
    object StringField3: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
      Size = 11
    end
    object StringField4: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'PES_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'WQTDE'
      ProviderFlags = []
      Precision = 15
    end
    object CurrencyField1: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ESTOQUE_CC'
      Calculated = True
    end
    object CurrencyField2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SAIDA_CC'
      Calculated = True
    end
    object CurrencyField3: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ENTRADA_CC'
      Calculated = True
    end
    object SqlCdsKardexCAlmoxWPRECOMEDIO: TFloatField
      FieldName = 'WPRECOMEDIO'
    end
  end
  object ppDBKardex: TppDBPipeline
    DataSource = DsKardex
    UserName = 'DBKardex'
    Left = 512
    Top = 72
    object ppDBKardexppField1: TppField
      FieldAlias = 'AMX_CODIGO'
      FieldName = 'AMX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField2: TppField
      FieldAlias = 'AMX_DESCRI'
      FieldName = 'AMX_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField3: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField4: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField5: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField6: TppField
      FieldAlias = 'PRD_ENTRADA'
      FieldName = 'PRD_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField7: TppField
      FieldAlias = 'PRD_SAIDA'
      FieldName = 'PRD_SAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField8: TppField
      FieldAlias = 'PRD_ESTOQUE'
      FieldName = 'PRD_ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBKardexppField9: TppField
      FieldAlias = 'PRD_PMEDIO'
      FieldName = 'PRD_PMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
end
