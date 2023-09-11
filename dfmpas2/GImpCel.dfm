object FormGImpCel: TFormGImpCel
  Left = 136
  Top = 145
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Relat'#243'rio de C'#233'lulas'
  ClientHeight = 332
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group06: TGroupBox
    Left = 0
    Top = 300
    Width = 413
    Height = 41
    TabOrder = 5
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
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
  object GroupCelSelecao: TGroupBox
    Left = 0
    Top = 101
    Width = 413
    Height = 56
    Caption = 'Selecionar C'#233'lula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 26
      Width = 32
      Height = 13
      Caption = 'Celula:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object CbCelulas: TComboBox
      Left = 70
      Top = 23
      Width = 336
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CbCelulasClick
      OnExit = CbCelulasClick
    end
    object EdtCel_codigo: TEdit
      Left = 44
      Top = 23
      Width = 25
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
      OnClick = EdtCel_codigoClick
      OnEnter = EdtCel_codigoClick
      OnExit = EdtCel_codigoExit
      OnKeyPress = EdtCel_codigoKeyPress
    end
  end
  object GroupPeriodo: TGroupBox
    Left = 0
    Top = 157
    Width = 413
    Height = 72
    Caption = 'Per'#237'odo '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Lbl_De: TLabel
      Left = 44
      Top = 45
      Width = 14
      Height = 13
      Caption = 'De'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Lbl_Ate: TLabel
      Left = 171
      Top = 45
      Width = 16
      Height = 13
      Caption = 'At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RadTodas: TRadioButton
      Left = 20
      Top = 15
      Width = 81
      Height = 17
      Caption = 'To&das'
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
    object RadConcluidas: TRadioButton
      Left = 117
      Top = 15
      Width = 81
      Height = 17
      Caption = 'Conc&lu'#237'das'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadPendentes: TRadioButton
      Left = 236
      Top = 15
      Width = 81
      Height = 17
      Caption = '&Pendentes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditDataI: TJvDateEdit
      Left = 61
      Top = 41
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
      TabOrder = 3
      OnEnter = EditDataIEnter
    end
    object EditDataF: TJvDateEdit
      Left = 197
      Top = 41
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
      TabOrder = 4
      OnEnter = EditDataFEnter
    end
  end
  object GroupData: TGroupBox
    Left = 0
    Top = 230
    Width = 413
    Height = 72
    Caption = 'Conclu'#237'das no Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Lb_Inicio: TLabel
      Left = 35
      Top = 27
      Width = 30
      Height = 13
      Caption = 'In'#237'cio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Lb_Fim: TLabel
      Left = 46
      Top = 50
      Width = 19
      Height = 13
      Caption = 'Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 137
      Top = 8
      Width = 24
      Height = 13
      Caption = 'M'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 222
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Cb_Ano_Inicial: TComboBox
      Left = 197
      Top = 23
      Width = 70
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Sorted = True
      TabOrder = 1
      OnClick = Cb_Ano_InicialClick
      OnKeyPress = Cb_Ano_InicialKeyPress
    end
    object Cb_Ano_Final: TComboBox
      Left = 197
      Top = 46
      Width = 70
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Sorted = True
      TabOrder = 3
      OnKeyPress = Cb_Ano_InicialKeyPress
    end
    object Cb_MesInicial: TComboBox
      Left = 66
      Top = 23
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Cb_MesInicialClick
      OnExit = Cb_MesInicialClick
    end
    object Cb_MesFinal: TComboBox
      Left = 66
      Top = 46
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Cb_MesFinalClick
      OnExit = Cb_MesFinalClick
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
    object LTBoxCelulas: TListBox
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
      OnClick = LTBoxCelulasClick
      OnDblClick = LTBoxCelulasDblClick
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
  object PrintStp: TPrinterSetupDialog
    Left = 294
    Top = 309
  end
  object DsQReciboMov: TDataSource
    Left = 480
    Top = 3
  end
  object SqlCdsCelula: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 120
    object SqlCdsCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
  object SqlCdsMes: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from MES0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from MES0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 120
    Top = 264
    object SqlCdsMesMES_NUMERO: TStringField
      FieldName = 'MES_NUMERO'
      Size = 2
    end
    object SqlCdsMesMES_DESCRI: TStringField
      FieldName = 'MES_DESCRI'
      Size = 9
    end
    object SqlCdsMesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SQLClientDataSet1: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 445
    Top = 4
  end
  object SqlCdsRel01: TSqlClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C3.cme_codigo,'#13#10'SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) AS WRE' +
      'ALIZADO,'#13#10'SUM(C3.OSV_QTDE * C3.cem_precounit) AS WFATURAMENTO,'#13#10 +
      'C3.vct_tup,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.cme_percpaticipa,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP'#13#10'FROM CEL_MOV03 C3'#13#10'JOIN ' +
      'CEL0000  C1 ON (C1.cel_codigo = C3.CEL_CODIGO) AND (C3.emp_codig' +
      'o = C1.EMP_CODIGO)'#13#10'JOIN cel_me02 C2 ON (C2.CME_CODIGO = C3.CME_' +
      'CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO)'#13#10'WHERE C3.cme_codigo' +
      ' LIKE '#39'200409%'#39'   -- todas as celulas'#13#10'--WHERE C3.CME_CODIGO = '#39 +
      '200205006'#39'  -- Uma celula escolhida.'#13#10'GROUP BY'#13#10'C3.CME_CODIGO,'#13#10 +
      'C3.vct_tup,'#13#10'C3.CEL_CODIGO,'#13#10'C1.cel_nome,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.cme_percpaticipa,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP'#13#10'ORDER BY C3.CME_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel01CalcFields
    CommandText = 
      'SELECT'#13#10'C3.cme_codigo,'#13#10'SUM(C3.OSV_QTDE * C3.CEM_TUPTRAB) AS WRE' +
      'ALIZADO,'#13#10'SUM(C3.OSV_QTDE * C3.cem_precounit) AS WFATURAMENTO,'#13#10 +
      'C3.vct_tup,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.cme_percpaticipa,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP'#13#10'FROM CEL_MOV03 C3'#13#10'JOIN ' +
      'CEL0000  C1 ON (C1.cel_codigo = C3.CEL_CODIGO) AND (C3.emp_codig' +
      'o = C1.EMP_CODIGO)'#13#10'JOIN cel_me02 C2 ON (C2.CME_CODIGO = C3.CME_' +
      'CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO)'#13#10'WHERE C3.cme_codigo' +
      ' LIKE '#39'200409%'#39'   -- todas as celulas'#13#10'--WHERE C3.CME_CODIGO = '#39 +
      '200205006'#39'  -- Uma celula escolhida.'#13#10'GROUP BY'#13#10'C3.CME_CODIGO,'#13#10 +
      'C3.vct_tup,'#13#10'C3.CEL_CODIGO,'#13#10'C1.cel_nome,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.cme_percpaticipa,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP'#13#10'ORDER BY C3.CME_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 80
    object SqlCdsRel01CME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object SqlCdsRel01WREALIZADO: TFMTBCDField
      FieldName = 'WREALIZADO'
      Precision = 15
    end
    object SqlCdsRel01WFATURAMENTO: TFMTBCDField
      FieldName = 'WFATURAMENTO'
      Precision = 15
    end
    object SqlCdsRel01VCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlCdsRel01CEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsRel01CEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsRel01CME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      Precision = 15
    end
    object SqlCdsRel01CME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      Precision = 15
    end
    object SqlCdsRel01CME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      Precision = 15
    end
    object SqlCdsRel01CME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      Precision = 15
    end
    object SqlCdsRel01CME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      Precision = 15
    end
    object SqlCdsRel01CME_TOT_DIAS_COMP: TFMTBCDField
      FieldName = 'CME_TOT_DIAS_COMP'
      Precision = 15
    end
    object SqlCdsRel01CTP_REALIZADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_REALIZADO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_FATURAMENTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_FATURAMENTO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_PREVISTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_PREVISTO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_DIFERENCA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_DIFERENCA_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_COMISSAO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_COMISSAO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_TUPDIA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_TUPDIA_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_PER_REALI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_PER_REALI_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01CTP_TUPFATUR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_TUPFATUR_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel01AG_TOTAL_REALIZADO: TAggregateField
      FieldName = 'AG_TOTAL_REALIZADO'
      Active = True
      DisplayName = ''
      Expression = 'sum(WREALIZADO)'
    end
    object SqlCdsRel01AG_TOTAL_FAT: TAggregateField
      FieldName = 'AG_TOTAL_FAT'
      Active = True
      DisplayName = ''
      Expression = 'SUM(WFATURAMENTO)'
    end
  end
  object DsRel01: TDataSource
    DataSet = SqlCdsRel01
    Left = 448
    Top = 80
  end
  object ppRel01: TppReport
    AutoStop = False
    DataPipeline = ppDBRel01
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMONCELREL01.' +
      'rtm'
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 80
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel01'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
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
        mmLeft = 265
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
        mmWidth = 19844
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
      object ppSystemVariable11: TppSystemVariable
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
        mmLeft = 169334
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
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
        mmLeft = 170392
        mmTop = 7673
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11112
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
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15875
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#233'lula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 15875
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 11906
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Realizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 15875
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 72231
        mmTop = 11906
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Previsto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 72231
        mmTop = 15875
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 11906
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Diferen'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 15875
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 107421
        mmTop = 11906
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 107421
        mmTop = 15875
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 11906
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP por dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 15875
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 11906
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 15875
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 11906
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Realizado %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 15875
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 11906
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 15875
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19314
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 179123
        mmTop = 11906
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.TUP Fat.'
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
        mmTop = 15875
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
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
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_CODIGO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 1852
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEL_NOME'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 1852
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CME_DIASUTEIS'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 107421
        mmTop = 1852
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_TUPDIA_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 1852
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_REALIZADO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 1852
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_FATURAMENTO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_PREVISTO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 72496
        mmTop = 1852
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_DIFERENCA_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 1852
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_COMISSAO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 1852
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_PER_REALI_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,###0.000%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 1852
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_TUPFATUR_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6879
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'A ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'B ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3704
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7408
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'D ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 11113
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'E ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'F ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 18521
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'G ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 22225
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'H ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 25929
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'I ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 29506
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Realizado + Cr'#233'ditos de TUP'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 4763
        mmTop = 0
        mmWidth = 43688
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Meta/M'#234's + D'#233'bitos de TUP'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 4763
        mmTop = 3704
        mmWidth = 42757
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Realizado - TUP Previsto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 4763
        mmTop = 7408
        mmWidth = 36915
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dias Uteis do M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 4763
        mmTop = 11113
        mmWidth = 22183
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP Previsto : Dias Uteis do M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 4763
        mmTop = 14817
        mmWidth = 40640
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '(TUP Realizado - TUP Previsto) x Percentual de Comiss'#227'o x TUP F'#225 +
          'brica/ Minuto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 18521
        mmWidth = 106098
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade de Produtos x Pre'#231'o dos Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 25929
        mmWidth = 58473
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Faturamento : Pelo TUP Realizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 29633
        mmWidth = 45508
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Percentual do TUP Realizado em rela'#231#227'o ao TUP Previsto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 22225
        mmWidth = 78052
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4762
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 794
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_REALIZADO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3302
        mmLeft = 52917
        mmTop = 0
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_PREVISTO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 72496
        mmTop = 0
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_DIFERENCA_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 0
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_TUPDIA_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 0
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_COMISSAO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 0
        mmWidth = 13494
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_FATURAMENTO_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        OnPrint = ppDBCalc8Print
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTP_TUPFATUR_CC'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
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
    object ppParameterList1: TppParameterList
    end
  end
  object SqlCdsRel02: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C3.cme_codigo,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'SUM(C3.OSV' +
      '_QTDE * C3.CEM_TUPTRAB) AS WREALIZADO,'#13#10'SUM(C3.OSV_QTDE * C3.cem' +
      '_precounit) AS WFATURAMENTO,'#13#10'C3.vct_tup,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.CME_PERCPATICIPA,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP,'#13#10'C4.MEC_TUPDIARIO,'#13#10'C4.M' +
      'EC_DIAS,'#13#10'C4.CCP_CODIGO,'#13#10'C5.CCP_NOME,'#13#10'C5.CCP_FUNCAO,'#13#10'C5.CCP_T' +
      'UPDIARIO'#13#10'FROM CEL_MOV03 C3'#13#10'JOIN CEL0000  C1 ON (C1.CEL_CODIGO ' +
      '= C3.CEL_CODIGO) AND (C3.EMP_CODIGO = C1.EMP_CODIGO)'#13#10'JOIN CEL_M' +
      'E02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) AND (C3.EMP_CODIGO = C' +
      '2.EMP_CODIGO)'#13#10'JOIN CEL_MTC04 C4 ON (C4.CME_CODIGO = C3.CME_CODI' +
      'GO) AND (C3.EMP_CODIGO = C4.EMP_CODIGO)'#13#10'JOIN CEL_CP01 C5 ON (C5' +
      '.CCP_CODIGO = C4.CCP_CODIGO) AND (C3.EMP_CODIGO = C5.EMP_CODIGO)' +
      #13#10'WHERE C3.CME_CODIGO LIKE '#39'200401%'#39'   -- todas as celulas'#13#10'--WH' +
      'ERE C3.CME_CODIGO = '#39'200205006'#39'  -- Uma celula escolhida.'#13#10'GROUP' +
      ' BY'#13#10'C3.CME_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C3.VCT_TUP,'#13#10 +
      'C2.CME_TUPACRECENT,'#13#10'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2' +
      '.CME_PERCPATICIPA,'#13#10'C2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP,'#13#10'C4' +
      '.MEC_TUPDIARIO,'#13#10'C4.MEC_DIAS,'#13#10'C4.CCP_CODIGO,'#13#10'C5.CCP_NOME,'#13#10'C5.' +
      'CCP_FUNCAO,'#13#10'C5.CCP_TUPDIARIO'#13#10'ORDER BY C3.CEL_CODIGO, C5.CCP_NO' +
      'ME'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel02CalcFields
    CommandText = 
      'SELECT'#13#10'C3.cme_codigo,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'SUM(C3.OSV' +
      '_QTDE * C3.CEM_TUPTRAB) AS WREALIZADO,'#13#10'SUM(C3.OSV_QTDE * C3.cem' +
      '_precounit) AS WFATURAMENTO,'#13#10'C3.vct_tup,'#13#10'C2.CME_TUPACRECENT,'#13#10 +
      'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2.CME_PERCPATICIPA,'#13#10'C' +
      '2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP,'#13#10'C4.MEC_TUPDIARIO,'#13#10'C4.M' +
      'EC_DIAS,'#13#10'C4.CCP_CODIGO,'#13#10'C5.CCP_NOME,'#13#10'C5.CCP_FUNCAO,'#13#10'C5.CCP_T' +
      'UPDIARIO'#13#10'FROM CEL_MOV03 C3'#13#10'JOIN CEL0000  C1 ON (C1.CEL_CODIGO ' +
      '= C3.CEL_CODIGO) AND (C3.EMP_CODIGO = C1.EMP_CODIGO)'#13#10'JOIN CEL_M' +
      'E02 C2 ON (C2.CME_CODIGO = C3.CME_CODIGO) AND (C3.EMP_CODIGO = C' +
      '2.EMP_CODIGO)'#13#10'JOIN CEL_MTC04 C4 ON (C4.CME_CODIGO = C3.CME_CODI' +
      'GO) AND (C3.EMP_CODIGO = C4.EMP_CODIGO)'#13#10'JOIN CEL_CP01 C5 ON (C5' +
      '.CCP_CODIGO = C4.CCP_CODIGO) AND (C3.EMP_CODIGO = C5.EMP_CODIGO)' +
      #13#10'WHERE C3.CME_CODIGO LIKE '#39'200401%'#39'   -- todas as celulas'#13#10'--WH' +
      'ERE C3.CME_CODIGO = '#39'200205006'#39'  -- Uma celula escolhida.'#13#10'GROUP' +
      ' BY'#13#10'C3.CME_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C3.VCT_TUP,'#13#10 +
      'C2.CME_TUPACRECENT,'#13#10'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPNEGATIVO,'#13#10'C2' +
      '.CME_PERCPATICIPA,'#13#10'C2.CME_DIASUTEIS,'#13#10'C2.CME_TOT_DIAS_COMP,'#13#10'C4' +
      '.MEC_TUPDIARIO,'#13#10'C4.MEC_DIAS,'#13#10'C4.CCP_CODIGO,'#13#10'C5.CCP_NOME,'#13#10'C5.' +
      'CCP_FUNCAO,'#13#10'C5.CCP_TUPDIARIO'#13#10'ORDER BY C3.CEL_CODIGO, C5.CCP_NO' +
      'ME'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 112
    object SqlCdsRel02CME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object SqlCdsRel02CEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsRel02CEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsRel02WREALIZADO: TFMTBCDField
      FieldName = 'WREALIZADO'
      Precision = 15
    end
    object SqlCdsRel02WFATURAMENTO: TFMTBCDField
      FieldName = 'WFATURAMENTO'
      Precision = 15
    end
    object SqlCdsRel02VCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlCdsRel02CME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      Precision = 15
    end
    object SqlCdsRel02CME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      Precision = 15
    end
    object SqlCdsRel02CME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      Precision = 15
    end
    object SqlCdsRel02CME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      Precision = 15
    end
    object SqlCdsRel02CME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      Precision = 15
    end
    object SqlCdsRel02CME_TOT_DIAS_COMP: TFMTBCDField
      FieldName = 'CME_TOT_DIAS_COMP'
      Precision = 15
    end
    object SqlCdsRel02MEC_TUPDIARIO: TFMTBCDField
      FieldName = 'MEC_TUPDIARIO'
      Precision = 15
    end
    object SqlCdsRel02MEC_DIAS: TFMTBCDField
      FieldName = 'MEC_DIAS'
      Precision = 15
    end
    object SqlCdsRel02CCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsRel02CCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      Size = 30
    end
    object SqlCdsRel02CCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      Size = 18
    end
    object SqlCdsRel02CCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
    end
    object SqlCdsRel02CTP_REALIZADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_REALIZADO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_FATURAMENTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_FATURAMENTO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_PREVISTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_PREVISTO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_DIFERENCA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_DIFERENCA_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_COMISSAO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_COMISSAO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_TUPDIA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_TUPDIA_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_PER_REALI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_PER_REALI_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02CTP_TUPFATUR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CTP_TUPFATUR_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02COMISSAOGRUPO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'COMISSAOGRUPO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02COMISSAO_AUX_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'COMISSAO_AUX_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02COMISSAO_INTEG_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'COMISSAO_INTEG_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel02TOTAL_COMISSAO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_COMISSAO_CC'
      Calculated = True
    end
  end
  object DsRel02: TDataSource
    DataSet = SqlCdsRel02
    Left = 448
    Top = 112
  end
  object ppDBRel02: TppDBPipeline
    DataSource = DsRel02
    UserName = 'DBRel02'
    Left = 480
    Top = 112
    object ppDBRel02ppField1: TppField
      FieldAlias = 'CME_CODIGO'
      FieldName = 'CME_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField2: TppField
      FieldAlias = 'CEL_CODIGO'
      FieldName = 'CEL_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField3: TppField
      FieldAlias = 'CEL_NOME'
      FieldName = 'CEL_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField4: TppField
      FieldAlias = 'WREALIZADO'
      FieldName = 'WREALIZADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField5: TppField
      FieldAlias = 'WFATURAMENTO'
      FieldName = 'WFATURAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField6: TppField
      FieldAlias = 'VCT_TUP'
      FieldName = 'VCT_TUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField7: TppField
      FieldAlias = 'CME_TUPACRECENT'
      FieldName = 'CME_TUPACRECENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField8: TppField
      FieldAlias = 'CME_TUPMETAMES'
      FieldName = 'CME_TUPMETAMES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField9: TppField
      FieldAlias = 'CME_TUPNEGATIVO'
      FieldName = 'CME_TUPNEGATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField10: TppField
      FieldAlias = 'CME_PERCPATICIPA'
      FieldName = 'CME_PERCPATICIPA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField11: TppField
      FieldAlias = 'CME_DIASUTEIS'
      FieldName = 'CME_DIASUTEIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField12: TppField
      FieldAlias = 'CME_TOT_DIAS_COMP'
      FieldName = 'CME_TOT_DIAS_COMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField13: TppField
      FieldAlias = 'MEC_TUPDIARIO'
      FieldName = 'MEC_TUPDIARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField14: TppField
      FieldAlias = 'MEC_DIAS'
      FieldName = 'MEC_DIAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField15: TppField
      FieldAlias = 'CCP_CODIGO'
      FieldName = 'CCP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField16: TppField
      FieldAlias = 'CCP_NOME'
      FieldName = 'CCP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField17: TppField
      FieldAlias = 'CCP_FUNCAO'
      FieldName = 'CCP_FUNCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField18: TppField
      FieldAlias = 'CCP_TUPDIARIO'
      FieldName = 'CCP_TUPDIARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField19: TppField
      FieldAlias = 'CTP_REALIZADO_CC'
      FieldName = 'CTP_REALIZADO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField20: TppField
      FieldAlias = 'CTP_FATURAMENTO_CC'
      FieldName = 'CTP_FATURAMENTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField21: TppField
      FieldAlias = 'CTP_PREVISTO_CC'
      FieldName = 'CTP_PREVISTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField22: TppField
      FieldAlias = 'CTP_DIFERENCA_CC'
      FieldName = 'CTP_DIFERENCA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField23: TppField
      FieldAlias = 'CTP_COMISSAO_CC'
      FieldName = 'CTP_COMISSAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField24: TppField
      FieldAlias = 'CTP_TUPDIA_CC'
      FieldName = 'CTP_TUPDIA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField25: TppField
      FieldAlias = 'CTP_PER_REALI_CC'
      FieldName = 'CTP_PER_REALI_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField26: TppField
      FieldAlias = 'CTP_TUPFATUR_CC'
      FieldName = 'CTP_TUPFATUR_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField27: TppField
      FieldAlias = 'COMISSAOGRUPO_CC'
      FieldName = 'COMISSAOGRUPO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField28: TppField
      FieldAlias = 'COMISSAO_AUX_CC'
      FieldName = 'COMISSAO_AUX_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField29: TppField
      FieldAlias = 'COMISSAO_INTEG_CC'
      FieldName = 'COMISSAO_INTEG_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBRel02ppField30: TppField
      FieldAlias = 'TOTAL_COMISSAO_CC'
      FieldName = 'TOTAL_COMISSAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object ppRel02: TppReport
    AutoStop = False
    DataPipeline = ppDBRel02
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMONCELREL02.' +
      'rtm'
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
    Left = 512
    Top = 112
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel02'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLine4: TppLine
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
      object LBL_01_EMPRESA: TppLabel
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
        mmLeft = 265
        mmTop = 794
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO1: TppLabel
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
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO2: TppLabel
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
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
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
      object ppSystemVariable2: TppSystemVariable
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
      object ppLine5: TppLine
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
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCP_CODIGO'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 794
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCP_NOME'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3175
        mmLeft = 15875
        mmTop = 794
        mmWidth = 48948
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCP_TUPDIARIO'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3175
        mmLeft = 71173
        mmTop = 794
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'MEC_DIAS'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 529
        mmWidth = 6519
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'COMISSAO_INTEG_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3302
        mmLeft = 95779
        mmTop = 529
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL DAS COMISS'#213'ES AUXILIARES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 126577
        mmTop = 0
        mmWidth = 51223
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_COMISSAO_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3302
        mmLeft = 178330
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CEL_NOME'
      DataPipeline = ppDBRel02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel02'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CEL_NOME'
          DataPipeline = ppDBRel02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 8467
          mmTop = 0
          mmWidth = 56092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CEL_CODIGO'
          DataPipeline = ppDBRel02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3302
          mmLeft = 2117
          mmTop = 0
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label40'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TUP Previsto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 70379
          mmTop = 0
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel41: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label401'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TUP Realizado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3302
          mmLeft = 69056
          mmTop = 4233
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label402'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Comiss'#227'o do Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 104511
          mmTop = 0
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label403'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Comiss'#227'o Aux.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3302
          mmLeft = 112713
          mmTop = 4233
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label44'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total das Comiss'#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 148167
          mmTop = 0
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8202
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CTP_PREVISTO_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3302
          mmLeft = 88636
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CTP_REALIZADO_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 88371
          mmTop = 4233
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CTP_COMISSAO_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 178065
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line7'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 8202
          mmTop = 12964
          mmWidth = 103188
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel45: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label45'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'INTEGRANTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3302
          mmLeft = 8467
          mmTop = 8996
          mmWidth = 19981
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel46: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label46'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TUP DI'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 71173
          mmTop = 8996
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label47'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'DIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3302
          mmLeft = 88371
          mmTop = 8996
          mmWidth = 6519
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel48: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label48'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'COMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 95779
          mmTop = 8996
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText21'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMISSAOGRUPO_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 131763
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMISSAO_AUX_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 132027
          mmTop = 4233
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line8'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 8202
          mmTop = 0
          mmWidth = 103188
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label49'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3302
          mmLeft = 8467
          mmTop = 1058
          mmWidth = 10245
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line9'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 5027
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMISSAO_INTEG_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3175
          mmLeft = 96044
          mmTop = 1058
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
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
  object SqlCdsRel03: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C3.OSV_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C3.PRD_REF' +
      'ER,'#13#10'P1.PRD_DESCRI,'#13#10'C3.CME_CODIGO,'#13#10'C3.OSV_EMISSAO,'#13#10'C3.OSV_QTD' +
      'E,'#13#10'C3.PED_CODIGO,'#13#10'C3.CEM_DTENTROU,'#13#10'C3.CEM_DTCONCLUIU,'#13#10'C3.CEM' +
      '_PRECOUNIT,'#13#10'C3.CEM_TUPUNIT,'#13#10'C3.CEM_CELAUX,'#13#10'C3.CEM_TRABALHO,'#13#10 +
      'C3.CEM_TUPTRAB,'#13#10'C3.VCT_TUP,'#13#10'C3.CEM_SITUACAO,'#13#10'C2.CME_DIASUTEIS' +
      ','#13#10'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPACRECENT,'#13#10'C2.CME_TUPNEGATIVO,'#13 +
      #10'C2.CME_TUPREALIZADO,'#13#10'C2.CME_FATURAMENTO,'#13#10'C2.CME_PERCPATICIPA'#13 +
      #10'FROM CEL_MOV03 C3'#13#10'LEFT JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3' +
      '.CME_CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO)'#13#10'LEFT JOIN CEL0' +
      '000  C1 ON (C1.CEL_CODIGO = C2.CEL_CODIGO) AND (C3.EMP_CODIGO = ' +
      'C1.EMP_CODIGO)'#13#10'LEFT JOIN PRD0000  P1 ON (P1.PRD_REFER = C3.PRD_' +
      'REFER)'#13#10'WHERE C3.CME_CODIGO = '#39'200401007'#39' AND C3.CEL_CODIGO = '#39'0' +
      '07'#39#13#10'ORDER BY C3.CEL_CODIGO,C3.CME_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel03CalcFields
    CommandText = 
      'SELECT'#13#10'C3.OSV_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL_NOME,'#13#10'C3.PRD_REF' +
      'ER,'#13#10'P1.PRD_DESCRI,'#13#10'C3.CME_CODIGO,'#13#10'C3.OSV_EMISSAO,'#13#10'C3.OSV_QTD' +
      'E,'#13#10'C3.PED_CODIGO,'#13#10'C3.CEM_DTENTROU,'#13#10'C3.CEM_DTCONCLUIU,'#13#10'C3.CEM' +
      '_PRECOUNIT,'#13#10'C3.CEM_TUPUNIT,'#13#10'C3.CEM_CELAUX,'#13#10'C3.CEM_TRABALHO,'#13#10 +
      'C3.CEM_TUPTRAB,'#13#10'C3.VCT_TUP,'#13#10'C3.CEM_SITUACAO,'#13#10'C2.CME_DIASUTEIS' +
      ','#13#10'C2.CME_TUPMETAMES,'#13#10'C2.CME_TUPACRECENT,'#13#10'C2.CME_TUPNEGATIVO,'#13 +
      #10'C2.CME_TUPREALIZADO,'#13#10'C2.CME_FATURAMENTO,'#13#10'C2.CME_PERCPATICIPA'#13 +
      #10'FROM CEL_MOV03 C3'#13#10'LEFT JOIN CEL_ME02 C2 ON (C2.CME_CODIGO = C3' +
      '.CME_CODIGO) AND (C3.EMP_CODIGO = C2.EMP_CODIGO)'#13#10'LEFT JOIN CEL0' +
      '000  C1 ON (C1.CEL_CODIGO = C2.CEL_CODIGO) AND (C3.EMP_CODIGO = ' +
      'C1.EMP_CODIGO)'#13#10'LEFT JOIN PRD0000  P1 ON (P1.PRD_REFER = C3.PRD_' +
      'REFER)'#13#10'WHERE C3.CME_CODIGO = '#39'200401007'#39' AND C3.CEL_CODIGO = '#39'0' +
      '07'#39#13#10'ORDER BY C3.CEL_CODIGO,C3.CME_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 144
    object SqlCdsRel03OSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel03CEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsRel03CEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsRel03PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsRel03PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRel03CME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object SqlCdsRel03OSV_EMISSAO: TDateField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsRel03OSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object SqlCdsRel03PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsRel03CEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
    end
    object SqlCdsRel03CEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
    end
    object SqlCdsRel03CEM_PRECOUNIT: TFMTBCDField
      FieldName = 'CEM_PRECOUNIT'
      Precision = 15
    end
    object SqlCdsRel03CEM_TUPUNIT: TFMTBCDField
      FieldName = 'CEM_TUPUNIT'
      Precision = 15
    end
    object SqlCdsRel03CEM_CELAUX: TStringField
      FieldName = 'CEM_CELAUX'
      Size = 1
    end
    object SqlCdsRel03CEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Size = 30
    end
    object SqlCdsRel03CEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      Precision = 15
    end
    object SqlCdsRel03VCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlCdsRel03CEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      Size = 1
    end
    object SqlCdsRel03CME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      Precision = 15
    end
    object SqlCdsRel03CME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      Precision = 15
    end
    object SqlCdsRel03CME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      Precision = 15
    end
    object SqlCdsRel03CME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      Precision = 15
    end
    object SqlCdsRel03CME_TUPREALIZADO: TFMTBCDField
      FieldName = 'CME_TUPREALIZADO'
      Precision = 15
    end
    object SqlCdsRel03CME_FATURAMENTO: TFMTBCDField
      FieldName = 'CME_FATURAMENTO'
      Precision = 15
    end
    object SqlCdsRel03CME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      Precision = 15
    end
    object SqlCdsRel03TUPTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TUPTOTAL_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsRel03PRECOTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECOTOTAL_CC'
      currency = False
      Calculated = True
    end
  end
  object DsRel03: TDataSource
    DataSet = SqlCdsRel03
    Left = 448
    Top = 144
  end
  object ppDBRel03: TppDBPipeline
    DataSource = DsRel03
    UserName = 'DBRel03'
    Left = 480
    Top = 144
    object ppDBRel03ppField1: TppField
      FieldAlias = 'OSV_CODIGO'
      FieldName = 'OSV_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBRel03ppField2: TppField
      FieldAlias = 'CEL_CODIGO'
      FieldName = 'CEL_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object ppDBRel03ppField3: TppField
      FieldAlias = 'CEL_NOME'
      FieldName = 'CEL_NOME'
      FieldLength = 35
      DisplayWidth = 35
      Position = 2
    end
    object ppDBRel03ppField4: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 11
      DisplayWidth = 11
      Position = 3
    end
    object ppDBRel03ppField5: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBRel03ppField6: TppField
      FieldAlias = 'CME_CODIGO'
      FieldName = 'CME_CODIGO'
      FieldLength = 9
      DisplayWidth = 9
      Position = 5
    end
    object ppDBRel03ppField7: TppField
      FieldAlias = 'OSV_EMISSAO'
      FieldName = 'OSV_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppDBRel03ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSV_QTDE'
      FieldName = 'OSV_QTDE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppDBRel03ppField9: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 8
    end
    object ppDBRel03ppField10: TppField
      FieldAlias = 'CEM_DTENTROU'
      FieldName = 'CEM_DTENTROU'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppDBRel03ppField11: TppField
      FieldAlias = 'CEM_DTCONCLUIU'
      FieldName = 'CEM_DTCONCLUIU'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBRel03ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CEM_PRECOUNIT'
      FieldName = 'CEM_PRECOUNIT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBRel03ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CEM_TUPUNIT'
      FieldName = 'CEM_TUPUNIT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object ppDBRel03ppField14: TppField
      FieldAlias = 'CEM_CELAUX'
      FieldName = 'CEM_CELAUX'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDBRel03ppField15: TppField
      FieldAlias = 'CEM_TRABALHO'
      FieldName = 'CEM_TRABALHO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppDBRel03ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CEM_TUPTRAB'
      FieldName = 'CEM_TUPTRAB'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
    object ppDBRel03ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VCT_TUP'
      FieldName = 'VCT_TUP'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppDBRel03ppField18: TppField
      FieldAlias = 'CEM_SITUACAO'
      FieldName = 'CEM_SITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object ppDBRel03ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_DIASUTEIS'
      FieldName = 'CME_DIASUTEIS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBRel03ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_TUPMETAMES'
      FieldName = 'CME_TUPMETAMES'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBRel03ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_TUPACRECENT'
      FieldName = 'CME_TUPACRECENT'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppDBRel03ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_TUPNEGATIVO'
      FieldName = 'CME_TUPNEGATIVO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppDBRel03ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_TUPREALIZADO'
      FieldName = 'CME_TUPREALIZADO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppDBRel03ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_FATURAMENTO'
      FieldName = 'CME_FATURAMENTO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object ppDBRel03ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'CME_PERCPATICIPA'
      FieldName = 'CME_PERCPATICIPA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object ppDBRel03ppField26: TppField
      FieldAlias = 'TUPTOTAL_CC'
      FieldName = 'TUPTOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object ppDBRel03ppField27: TppField
      FieldAlias = 'PRECOTOTAL_CC'
      FieldName = 'PRECOTOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
  end
  object ppReL03: TppReport
    AutoStop = False
    DataPipeline = ppDBRel03
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMONCELREL03.' +
      'rtm'
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 512
    Top = 144
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel03'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 201877
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmLeft = 265
        mmTop = 794
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
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
        LayerName = Foreground2
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 201877
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 667
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 794
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3175
        mmLeft = 26723
        mmTop = 794
        mmWidth = 66411
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 94456
        mmTop = 667
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEM_TUPTRAB'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 105569
        mmTop = 667
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TUPTOTAL_CC'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 117211
        mmTop = 667
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 129911
        mmTop = 667
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEM_DTENTROU'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 140229
        mmTop = 667
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEM_DTCONCLUIU'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 155840
        mmTop = 667
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEM_PRECOUNIT'
        DataPipeline = ppDBRel03
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 172773
        mmTop = 667
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECOTOTAL_CC'
        DataPipeline = ppDBRel03
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3302
        mmLeft = 186532
        mmTop = 667
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label58'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 794
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3175
        mmLeft = 94456
        mmTop = 794
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TUPTOTAL_CC'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3175
        mmLeft = 117211
        mmTop = 794
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRECOTOTAL_CC'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3175
        mmLeft = 186532
        mmTop = 794
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 201877
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CEL_NOME'
      DataPipeline = ppDBRel03
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel03'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label51'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'C'#201'LULA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3725
          mmLeft = 0
          mmTop = 265
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText24: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText24'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CEL_CODIGO'
          DataPipeline = ppDBRel03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel03'
          mmHeight = 3704
          mmLeft = 14023
          mmTop = 265
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText25: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText25'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CEL_NOME'
          DataPipeline = ppDBRel03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRel03'
          mmHeight = 3704
          mmLeft = 20902
          mmTop = 265
          mmWidth = 51594
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 4498
          mmWidth = 202142
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'O.P.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3302
          mmLeft = 0
          mmTop = 5292
          mmWidth = 5588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'REF.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 10054
          mmTop = 5292
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label54'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 26723
          mmTop = 5292
          mmWidth = 66411
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line13'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8996
          mmWidth = 202142
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 94456
          mmTop = 5292
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tup Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 105569
          mmTop = 5292
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel57: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label57'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tup Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 117211
          mmTop = 5292
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label59'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 129911
          mmTop = 5292
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label60'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'D.Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 140229
          mmTop = 5292
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel61: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label601'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'D.Conclus'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 155840
          mmTop = 5292
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel62: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label62'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pre'#231'o Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 172773
          mmTop = 5292
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel63: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label63'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pre'#231'o Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 186532
          mmTop = 5292
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line15'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel64: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label64'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'SUB-TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 74083
          mmTop = 1058
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OSV_QTDE'
          DataPipeline = ppDBRel03
          DisplayFormat = '#,#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel03'
          mmHeight = 3302
          mmLeft = 94456
          mmTop = 1058
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc11: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TUPTOTAL_CC'
          DataPipeline = ppDBRel03
          DisplayFormat = '#,#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel03'
          mmHeight = 3175
          mmLeft = 117211
          mmTop = 1058
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRECOTOTAL_CC'
          DataPipeline = ppDBRel03
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel03'
          mmHeight = 3175
          mmLeft = 186532
          mmTop = 1058
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line17'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4763
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
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
  object ppDBRel01: TppDBPipeline
    DataSource = DsRel01
    UserName = 'DBRel01'
    Left = 480
    Top = 80
    object ppDBRel01ppField1: TppField
      FieldAlias = 'CME_CODIGO'
      FieldName = 'CME_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField2: TppField
      FieldAlias = 'WREALIZADO'
      FieldName = 'WREALIZADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField3: TppField
      FieldAlias = 'WFATURAMENTO'
      FieldName = 'WFATURAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField4: TppField
      FieldAlias = 'VCT_TUP'
      FieldName = 'VCT_TUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField5: TppField
      FieldAlias = 'CEL_CODIGO'
      FieldName = 'CEL_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField6: TppField
      FieldAlias = 'CEL_NOME'
      FieldName = 'CEL_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField7: TppField
      FieldAlias = 'CME_TUPACRECENT'
      FieldName = 'CME_TUPACRECENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField8: TppField
      FieldAlias = 'CME_TUPMETAMES'
      FieldName = 'CME_TUPMETAMES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField9: TppField
      FieldAlias = 'CME_TUPNEGATIVO'
      FieldName = 'CME_TUPNEGATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField10: TppField
      FieldAlias = 'CME_PERCPATICIPA'
      FieldName = 'CME_PERCPATICIPA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField11: TppField
      FieldAlias = 'CME_DIASUTEIS'
      FieldName = 'CME_DIASUTEIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField12: TppField
      FieldAlias = 'CME_TOT_DIAS_COMP'
      FieldName = 'CME_TOT_DIAS_COMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField13: TppField
      FieldAlias = 'CTP_REALIZADO_CC'
      FieldName = 'CTP_REALIZADO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField14: TppField
      FieldAlias = 'CTP_FATURAMENTO_CC'
      FieldName = 'CTP_FATURAMENTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField15: TppField
      FieldAlias = 'CTP_PREVISTO_CC'
      FieldName = 'CTP_PREVISTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField16: TppField
      FieldAlias = 'CTP_DIFERENCA_CC'
      FieldName = 'CTP_DIFERENCA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField17: TppField
      FieldAlias = 'CTP_COMISSAO_CC'
      FieldName = 'CTP_COMISSAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField18: TppField
      FieldAlias = 'CTP_TUPDIA_CC'
      FieldName = 'CTP_TUPDIA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField19: TppField
      FieldAlias = 'CTP_PER_REALI_CC'
      FieldName = 'CTP_PER_REALI_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBRel01ppField20: TppField
      FieldAlias = 'CTP_TUPFATUR_CC'
      FieldName = 'CTP_TUPFATUR_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
end
