object FrmGimpCheques: TFrmGimpCheques
  Left = 56
  Top = 194
  Caption = 'Gerenciador de Relat'#243'rios de Cheques.'
  ClientHeight = 293
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group02: TGroupBox
    Left = 0
    Top = 160
    Width = 413
    Height = 41
    Caption = '&Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 31
      Height = 13
      Caption = 'Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbBanco: TComboBox
      Left = 84
      Top = 15
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'TODAS'
      OnClick = CbBancoClick
      OnExit = CbBancoClick
      Items.Strings = (
        'TODAS CONTAS')
    end
    object Cconta: TEdit
      Left = 44
      Top = 15
      Width = 40
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '9999'
      OnExit = CcontaExit
    end
  end
  object Group01: TGroupBox
    Left = 0
    Top = 119
    Width = 413
    Height = 41
    Caption = '&Faturas no Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 67
      Top = 19
      Width = 17
      Height = 13
      Caption = 'De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 194
      Top = 19
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
    object EditDataI: TJvDateEdit
      Left = 86
      Top = 15
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
      TabOrder = 0
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 217
      Top = 15
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
      TabOrder = 1
      OnExit = EditDataFExit
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 119
    Caption = 'Tipos de Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBoxRelatorio: TListBox
      Left = 3
      Top = 15
      Width = 282
      Height = 100
      Style = lbOwnerDrawVariable
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = LTBoxRelatorioDblClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 291
    Top = 0
    Width = 121
    Height = 119
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
      Top = 46
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
      Top = 70
      Width = 90
      Height = 17
      Caption = '&Arquivo Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Group07: TGroupBox
    Left = 0
    Top = 201
    Width = 413
    Height = 41
    TabOrder = 4
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = 'Config&ura'#231#227'o de Impress'#227'o'
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
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 294
    Top = 210
  end
  object SqlcdsContas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select BAN_CODIGO, BAN_RAZAO, BAN_APELIDO, EMP_CODIGO from BAN00' +
      '00 ORDER BY BAN_APELIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select BAN_CODIGO, BAN_RAZAO, BAN_APELIDO, EMP_CODIGO from BAN00' +
      '00 ORDER BY BAN_APELIDO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 224
    Top = 169
    object SqlcdsContasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlcdsContasBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
  end
  object SqlCdsRelCheques: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN000' +
      '0 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'ORDER BY'#13#10'T2.BAN_APELID' +
      'O,'#13#10'T1.CHQ_EMISSAO,'#13#10'T1.CHQ_NUMERO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRelChequesCalcFields
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN000' +
      '0 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'ORDER BY'#13#10'T2.BAN_APELID' +
      'O,'#13#10'T1.CHQ_EMISSAO,'#13#10'T1.CHQ_NUMERO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 8
    object SqlCdsRelChequesCHQ_REGISTRO: TIntegerField
      FieldName = 'CHQ_REGISTRO'
      Required = True
    end
    object SqlCdsRelChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelChequesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRelChequesCHQ_EMISSAO: TDateField
      FieldName = 'CHQ_EMISSAO'
    end
    object SqlCdsRelChequesCHQ_BOMPARA: TDateField
      FieldName = 'CHQ_BOMPARA'
    end
    object SqlCdsRelChequesCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      Size = 10
    end
    object SqlCdsRelChequesCHQ_NUMERO_DV: TStringField
      FieldName = 'CHQ_NUMERO_DV'
      Size = 1
    end
    object SqlCdsRelChequesCHQ_VALOR: TFMTBCDField
      FieldName = 'CHQ_VALOR'
      Precision = 15
      Size = 4
    end
    object SqlCdsRelChequesCHQ_SITUACAO: TStringField
      FieldName = 'CHQ_SITUACAO'
      Size = 1
    end
    object SqlCdsRelChequesCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      Size = 1
    end
    object SqlCdsRelChequesCHQ_TIPO_FAVORECIDO: TStringField
      FieldName = 'CHQ_TIPO_FAVORECIDO'
      Size = 1
    end
    object SqlCdsRelChequesCHQ_CODIGO_FAVORECIDO: TStringField
      FieldName = 'CHQ_CODIGO_FAVORECIDO'
      Size = 5
    end
    object SqlCdsRelChequesCHQ_NOME_FAVORECIDO: TStringField
      FieldName = 'CHQ_NOME_FAVORECIDO'
      Size = 50
    end
    object SqlCdsRelChequesCHQ_OBSERVACAO: TStringField
      FieldName = 'CHQ_OBSERVACAO'
      Size = 50
    end
    object SqlCdsRelChequesCHQ_LIQUIDAR: TStringField
      FieldName = 'CHQ_LIQUIDAR'
      Size = 1
    end
    object SqlCdsRelChequesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlCdsRelChequesUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object SqlCdsRelChequesCHQ_PAG_REGISTRO: TIntegerField
      FieldName = 'CHQ_PAG_REGISTRO'
    end
    object SqlCdsRelChequesCHQ_EXCLUSAO: TStringField
      FieldName = 'CHQ_EXCLUSAO'
      Size = 1
    end
    object SqlCdsRelChequesCHQ_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'CHQ_MOTIVO_EXCLUSAO'
      Size = 30
    end
    object SqlCdsRelChequesCHQ_DATA_EXCLUSAO: TDateField
      FieldName = 'CHQ_DATA_EXCLUSAO'
    end
    object SqlCdsRelChequesCHQ_HORA_EXCLUSAO: TTimeField
      FieldName = 'CHQ_HORA_EXCLUSAO'
    end
    object SqlCdsRelChequesUSU_CODIGO_EXCLUSAO: TIntegerField
      FieldName = 'USU_CODIGO_EXCLUSAO'
    end
    object SqlCdsRelChequesUSU_LOGIN_EXCLUSAO: TStringField
      FieldName = 'USU_LOGIN_EXCLUSAO'
      Size = 15
    end
    object SqlCdsRelChequesBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsRelChequesCC_IMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_IMP'
      Size = 3
      Calculated = True
    end
    object SqlCdsRelChequesCC_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_SITUACAO'
      Size = 10
      Calculated = True
    end
    object SqlCdsRelChequesCC_EXCLUSAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_EXCLUSAO'
      Size = 3
      Calculated = True
    end
  end
  object DsRelCheques: TDataSource
    DataSet = SqlCdsRelCheques
    Left = 448
    Top = 8
  end
  object ppDBRel01: TppDBPipeline
    DataSource = DsRelCheques
    UserName = 'DBRel01'
    Left = 480
    Top = 8
    object ppDBRel01ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHQ_REGISTRO'
      FieldName = 'CHQ_REGISTRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBRel01ppField2: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object ppDBRel01ppField3: TppField
      FieldAlias = 'BAN_CODIGO'
      FieldName = 'BAN_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 2
    end
    object ppDBRel01ppField4: TppField
      FieldAlias = 'CHQ_EMISSAO'
      FieldName = 'CHQ_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBRel01ppField5: TppField
      FieldAlias = 'CHQ_BOMPARA'
      FieldName = 'CHQ_BOMPARA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBRel01ppField6: TppField
      FieldAlias = 'CHQ_NUMERO'
      FieldName = 'CHQ_NUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppDBRel01ppField7: TppField
      FieldAlias = 'CHQ_NUMERO_DV'
      FieldName = 'CHQ_NUMERO_DV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBRel01ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHQ_VALOR'
      FieldName = 'CHQ_VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppDBRel01ppField9: TppField
      FieldAlias = 'CHQ_SITUACAO'
      FieldName = 'CHQ_SITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBRel01ppField10: TppField
      FieldAlias = 'CHQ_IMP'
      FieldName = 'CHQ_IMP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object ppDBRel01ppField11: TppField
      FieldAlias = 'CHQ_TIPO_FAVORECIDO'
      FieldName = 'CHQ_TIPO_FAVORECIDO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBRel01ppField12: TppField
      FieldAlias = 'CHQ_CODIGO_FAVORECIDO'
      FieldName = 'CHQ_CODIGO_FAVORECIDO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 11
    end
    object ppDBRel01ppField13: TppField
      FieldAlias = 'CHQ_NOME_FAVORECIDO'
      FieldName = 'CHQ_NOME_FAVORECIDO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppDBRel01ppField14: TppField
      FieldAlias = 'CHQ_OBSERVACAO'
      FieldName = 'CHQ_OBSERVACAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBRel01ppField15: TppField
      FieldAlias = 'CHQ_LIQUIDAR'
      FieldName = 'CHQ_LIQUIDAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBRel01ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'USU_CODIGO'
      FieldName = 'USU_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBRel01ppField17: TppField
      FieldAlias = 'USU_LOGIN'
      FieldName = 'USU_LOGIN'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
    object ppDBRel01ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHQ_PAG_REGISTRO'
      FieldName = 'CHQ_PAG_REGISTRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBRel01ppField19: TppField
      FieldAlias = 'CHQ_EXCLUSAO'
      FieldName = 'CHQ_EXCLUSAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object ppDBRel01ppField20: TppField
      FieldAlias = 'CHQ_MOTIVO_EXCLUSAO'
      FieldName = 'CHQ_MOTIVO_EXCLUSAO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object ppDBRel01ppField21: TppField
      FieldAlias = 'CHQ_DATA_EXCLUSAO'
      FieldName = 'CHQ_DATA_EXCLUSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 20
    end
    object ppDBRel01ppField22: TppField
      FieldAlias = 'CHQ_HORA_EXCLUSAO'
      FieldName = 'CHQ_HORA_EXCLUSAO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 21
    end
    object ppDBRel01ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'USU_CODIGO_EXCLUSAO'
      FieldName = 'USU_CODIGO_EXCLUSAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppDBRel01ppField24: TppField
      FieldAlias = 'USU_LOGIN_EXCLUSAO'
      FieldName = 'USU_LOGIN_EXCLUSAO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 23
    end
    object ppDBRel01ppField25: TppField
      FieldAlias = 'BAN_APELIDO'
      FieldName = 'BAN_APELIDO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 24
    end
    object ppDBRel01ppField26: TppField
      FieldAlias = 'CC_IMP'
      FieldName = 'CC_IMP'
      FieldLength = 3
      DisplayWidth = 3
      Position = 25
    end
    object ppDBRel01ppField27: TppField
      FieldAlias = 'CC_SITUACAO'
      FieldName = 'CC_SITUACAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppDBRel01ppField28: TppField
      FieldAlias = 'CC_EXCLUSAO'
      FieldName = 'CC_EXCLUSAO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 27
    end
  end
  object ppRelCheq01: TppReport
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
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCHEQ01.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = True
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
    PDFSettings.Title = 'RELA'#199#195'O DE CHEQUES'
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
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel01'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLine20: TppLine
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
        AutoSize = False
        Border.Weight = 1.000000000000000000
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
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
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
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
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
        LayerName = Foreground
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable23: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 794
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable24: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 9790
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 7408
        mmTop = 15346
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
        Caption = 'N'#186' CHEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 15346
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 46302
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'BOM PARA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 15346
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 15346
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SITUA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 15346
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Impresso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 166159
        mmTop = 15346
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19050
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Exclu'#237'do'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 180711
        mmTop = 15346
        mmWidth = 10795
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_EMISSAO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 7408
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_NUMERO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_VALOR'
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
        mmLeft = 46302
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_BOMPARA'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_NOME_FAVORECIDO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_SITUACAO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_IMP'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 166159
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_EXCLUSAO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 31485
        mmTop = 529
        mmWidth = 13547
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHQ_VALOR'
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
        mmLeft = 46831
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4498
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BAN_CODIGO'
      DataPipeline = ppDBRel01
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel01'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_CODIGO'
          DataPipeline = ppDBRel01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3175
          mmLeft = 11377
          mmTop = 265
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_APELIDO'
          DataPipeline = ppDBRel01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3175
          mmLeft = 19579
          mmTop = 265
          mmWidth = 106098
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'CONTA:'
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
          mmTop = 265
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
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
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 32808
          mmTop = 794
          mmWidth = 11853
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CHQ_VALOR'
          DataPipeline = ppDBRel01
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3175
          mmLeft = 46567
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4762
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F75726365067E70726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D20444252656C30315B27434851
        5F4E554D45524F275D2B272D272B444252656C30315B274348515F4E554D4552
        4F5F4456275D0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650607
        44425465787434094576656E744E616D6506094F6E4765745465787407457665
        6E7449440235084361726574506F730102000200000000}
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
