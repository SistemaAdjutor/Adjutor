object FormGImpForn: TFormGImpForn
  Left = 177
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Impress'#227'o (Fornecedores)'
  ClientHeight = 342
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp03: TGroupBox
    Left = 0
    Top = 221
    Width = 413
    Height = 41
    TabOrder = 6
    object BitBtn1: TBitBtn
      Left = 16
      Top = 11
      Width = 185
      Height = 25
      Caption = 'Confi&gura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitBtn2: TBitBtn
      Left = 217
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object BitBtn3: TBitBtn
      Left = 315
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object grp02: TGroupBox
    Left = 267
    Top = 141
    Width = 145
    Height = 41
    Caption = 'Ordem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object RadCodigo: TRadioButton
      Left = 7
      Top = 17
      Width = 54
      Height = 17
      Caption = '&C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadAlfa: TRadioButton
      Left = 70
      Top = 18
      Width = 73
      Height = 17
      Caption = '&Alfab'#233'tica'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
  end
  object grp01: TGroupBox
    Left = 0
    Top = 141
    Width = 269
    Height = 41
    Caption = '&Sele'#231#227'o por Conta de An'#225'lise'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object CbAnalise: TComboBox
      Left = 30
      Top = 16
      Width = 236
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'TODAS AS CONTAS ANALISE'
      OnClick = CbAnaliseClick
      OnExit = CbAnaliseExit
      Items.Strings = (
        'TODAS AS CONTAS ANALISE')
    end
    object EdtCCT: TEdit
      Left = 3
      Top = 16
      Width = 26
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      Text = '999'
      OnClick = EdtCCTClick
      OnEnter = EdtCCTClick
      OnExit = EdtCCTExit
      OnKeyPress = EdtForKeyPress
    end
  end
  object grp00: TGroupBox
    Left = 0
    Top = 100
    Width = 412
    Height = 41
    Caption = '&Modelo de Etiqueta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object CbBoxTipoEtiq: TComboBox
      Left = 3
      Top = 16
      Width = 405
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CbBoxTipoEtiq'
      OnClick = CbBoxTipoEtiqClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 100
    Caption = 'Tipos de &Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBoxFornec: TListBox
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
      OnClick = LTBoxFornecClick
    end
  end
  object GrpDispositivo: TGroupBox
    Left = 290
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
  object grp04: TGroupBox
    Left = 0
    Top = 182
    Width = 412
    Height = 41
    Caption = 'Selecione o &Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object CbFor: TComboBox
      Left = 34
      Top = 16
      Width = 375
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'TODOS OS FORNECEDORES'
      OnClick = CbForClick
      OnExit = CbForExit
      Items.Strings = (
        '')
    end
    object EdtFor: TEdit
      Left = 3
      Top = 16
      Width = 31
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '9999'
      OnClick = EdtForClick
      OnEnter = EdtForClick
      OnExit = EdtForExit
      OnKeyPress = EdtForKeyPress
    end
  end
  object grpTipo: TGroupBox
    Left = 0
    Top = 181
    Width = 412
    Height = 41
    Caption = 'Tipo do Produto'
    TabOrder = 5
    object cbTipoProduto: TComboBoxRw
      Left = 4
      Top = 15
      Width = 384
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'PTI_CODIGO,PTI_DESCRI'
      LookupOrderBy = 'PTI_DESCRI'
      LookupTable = 'PRD_TIPO'
      LookupDispl = 'PTI_DESCRI'
      GridAutoSize = False
      LookupSource = cbTipoProduto.InternalSource
      LookupKeyField = 'PTI_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Tipos de Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'PRD_TIPO'
      CamposCarregar = 'PTI_CODIGO,PTI_DESCRI'
      CamposRetornar = 'PTI_CODIGO'
      CamposOrdernar = 'PTI_DESCRI'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'TABELAS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 295
    Top = 234
  end
  object SqlCdsAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 151
    object SqlCdsAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsFornece: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select FOR_CODIGO, FOR_RAZAO,FOR_ENDERE,FOR_BAIRRO,'#13#10'FOR_CEP, FO' +
      'R_CIDADE, FOR_UF, FOR_FONE, FOR_CONTATO, FOR_FONCONT, CCT_CODIGO' +
      ', EMP_CODIGO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select FOR_CODIGO, FOR_RAZAO,FOR_ENDERE,FOR_BAIRRO,'#13#10'FOR_CEP, FO' +
      'R_CIDADE, FOR_UF, FOR_FONE, FOR_CONTATO, FOR_FONCONT, CCT_CODIGO' +
      ', EMP_CODIGO from FOR0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 344
    Top = 8
    object SqlCdsForneceFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object SqlCdsForneceFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsForneceFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsForneceFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsForneceFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object SqlCdsForneceFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsForneceFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object SqlCdsForneceCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsForneceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsForneceFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object SqlCdsForneceFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object SqlCdsForneceFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object SqlCdsForneceFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      OnGetText = SqlCdsForneceFOR_CGCGetText
      Size = 14
    end
  end
  object DsFornece: TDataSource
    DataSet = SqlCdsFornece
    Left = 448
    Top = 8
  end
  object ppDBFornece: TppDBPipeline
    DataSource = DsFornece
    UserName = 'DBFornece'
    Left = 480
    Top = 8
    object ppDBForneceppField1: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField2: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField3: TppField
      FieldAlias = 'FOR_CIDADE'
      FieldName = 'FOR_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField4: TppField
      FieldAlias = 'FOR_UF'
      FieldName = 'FOR_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField5: TppField
      FieldAlias = 'FOR_FONE'
      FieldName = 'FOR_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField6: TppField
      FieldAlias = 'FOR_CONTATO'
      FieldName = 'FOR_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField7: TppField
      FieldAlias = 'FOR_FONCONT'
      FieldName = 'FOR_FONCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField8: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField9: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField10: TppField
      FieldAlias = 'FOR_ENDERE'
      FieldName = 'FOR_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField11: TppField
      FieldAlias = 'FOR_BAIRRO'
      FieldName = 'FOR_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField12: TppField
      FieldAlias = 'FOR_CEP'
      FieldName = 'FOR_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBForneceppField13: TppField
      FieldAlias = 'FOR_CGC'
      FieldName = 'FOR_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object ppRP00: TppReport
    AutoStop = False
    DataPipeline = ppDBFornece
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFORNECE00.rt' +
      'm'
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
    Left = 512
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFornece'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18785
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 29845
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14393
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14393
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
        mmTop = 14288
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 164095
        mmTop = 794
        mmWidth = 31962
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 174467
        mmTop = 9790
        mmWidth = 21590
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 14817
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 71438
        mmTop = 14817
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 14817
        mmWidth = 3810
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 14817
        mmWidth = 7832
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 140494
        mmTop = 14817
        mmWidth = 6615
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
        mmTop = 18520
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 172509
        mmTop = 14817
        mmWidth = 13229
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
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 0
        mmWidth = 62971
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CIDADE'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 71173
        mmTop = 0
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_UF'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_FONE'
        DataPipeline = ppDBFornece
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        OnGetText = ppDBText6GetText
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CGC'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'FOR_CONTATO'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 0
        mmWidth = 21696
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
        Caption = 'Total de Fornecedor(es) Listada(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 42968
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
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
  object ppRP01: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '12000'
      '111500')
    DataPipeline = ppDBFornece
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 12000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFORNECE01.rt' +
      'm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OnPreviewFormCreate = ppRP01PreviewFormCreate
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
    Top = 39
    Version = '16.02'
    mmColumnWidth = 99500
    DataPipelineName = 'ppDBFornece'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailEtiq: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 2000
      mmHeight = 21431
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 1323
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_ENDERE'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 5292
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_BAIRRO'
        DataPipeline = ppDBFornece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 9260
        mmWidth = 50006
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextCep: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTextCep'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CEP'
        DataPipeline = ppDBFornece
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornece'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 13229
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 13229
        mmWidth = 12912
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'Variable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 17463
        mmWidth = 12912
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650612
        5661726961626C65314F6E476574546578740B50726F6772616D54797065070B
        747450726F63656475726506536F75726365067E70726F636564757265205661
        726961626C65314F6E476574546578742876617220546578743A20537472696E
        67293B0D0A626567696E0D0A2020202054657874203A3D204442466F726E6563
        655B27464F525F434944414445275D2B27202D20272B4442466F726E6563655B
        27464F525F5546275D3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06095661726961626C6531094576656E744E616D6506094F6E47657454657874
        074576656E7449440235084361726574506F730102000200000001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D650612566172696162
        6C65324F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F757263650CE501000070726F636564757265205661726961
        626C65324F6E476574546578742876617220546578743A20537472696E67293B
        0D0A5661720D0A202077466F6E652C77436F6E743A537472696E673B0D0A6265
        67696E0D0A2020202077466F6E65203A3D204442466F726E6563655B27464F52
        5F464F4E45275D3B0D0A2020202077436F6E74203A3D204442466F726E656365
        5B27464F525F434F4E5441544F275D3B0D0A2020202069662877466F6E65203D
        2027272029616E642877436F6E74203D20272729207468656E0D0A2020202020
        202054657874203A3D27270D0A20202020656C73650D0A202020202020206966
        202877436F6E743C3E272729616E642877436F6E743C3E272729207468656E0D
        0A2020202020202020202054657874203A3D20274174742E3A20272B77436F6E
        742B2720272B77466F6E650D0A20202020202020656C73650D0A202020202020
        202020206966202877436F6E743D272729207468656E0D0A2020202020202020
        202020202054657874203A3D77466F6E650D0A20202020202020202020656C73
        650D0A202020202020202020202020206966202877466F6E653D272729207468
        656E0D0A2020202020202020202020202020202054657874203A3D2027417474
        2E3A20272B77436F6E743B2020200D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D6506095661726961626C6532094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F730102000200000000}
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
  object SqlCdsFor02: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT F1.FOR_CODIGO,F1.FOR_RAZAO,F1.FOR_ENDERE,F1.FOR_BAIRRO,F1' +
      '.FOR_CEP,F1.FOR_CIDADE,F1.FOR_UF,F1.FOR_FONE,F1.FOR_CONTATO,F1.F' +
      'OR_FONCONT,F1.EMP_CODIGO,F1.CCT_CODIGO FROM FOR0000 F1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT F1.FOR_CODIGO,F1.FOR_RAZAO,F1.FOR_ENDERE,F1.FOR_BAIRRO,F1' +
      '.FOR_CEP,F1.FOR_CIDADE,F1.FOR_UF,F1.FOR_FONE,F1.FOR_CONTATO,F1.F' +
      'OR_FONCONT,F1.EMP_CODIGO,F1.CCT_CODIGO FROM FOR0000 F1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 360
    Top = 80
    object SqlCdsFor02FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsFor02FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsFor02FOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object SqlCdsFor02FOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object SqlCdsFor02FOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object SqlCdsFor02FOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsFor02FOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsFor02FOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object SqlCdsFor02FOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsFor02FOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object SqlCdsFor02EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsFor02CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object DsFor02: TDataSource
    DataSet = SqlCdsFor02
    Left = 448
    Top = 80
  end
  object ppDBFor02: TppDBPipeline
    DataSource = DsFor02
    UserName = 'DBFor02'
    Left = 480
    Top = 80
    object ppDBFor02ppField1: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object ppDBFor02ppField2: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object ppDBFor02ppField3: TppField
      FieldAlias = 'FOR_ENDERE'
      FieldName = 'FOR_ENDERE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBFor02ppField4: TppField
      FieldAlias = 'FOR_BAIRRO'
      FieldName = 'FOR_BAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppDBFor02ppField5: TppField
      FieldAlias = 'FOR_CEP'
      FieldName = 'FOR_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppDBFor02ppField6: TppField
      FieldAlias = 'FOR_CIDADE'
      FieldName = 'FOR_CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppDBFor02ppField7: TppField
      FieldAlias = 'FOR_UF'
      FieldName = 'FOR_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBFor02ppField8: TppField
      FieldAlias = 'FOR_FONE'
      FieldName = 'FOR_FONE'
      FieldLength = 11
      DisplayWidth = 11
      Position = 7
    end
    object ppDBFor02ppField9: TppField
      FieldAlias = 'FOR_CONTATO'
      FieldName = 'FOR_CONTATO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBFor02ppField10: TppField
      FieldAlias = 'FOR_FONCONT'
      FieldName = 'FOR_FONCONT'
      FieldLength = 11
      DisplayWidth = 11
      Position = 9
    end
    object ppDBFor02ppField11: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppDBFor02ppField12: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 11
    end
  end
  object ppRelFor02: TppReport
    AutoStop = False
    DataPipeline = ppDBFor02
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFor02.rtm'
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
    Left = 512
    Top = 80
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFor02'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_02_EMPRESA'
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
        LayerName = Foreground3
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_02_LTITULO1'
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
        LayerName = Foreground3
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_02_LTITULO2'
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
        LayerName = Foreground3
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer4
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
        mmHeight = 4163
        mmLeft = 163725
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer4
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
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 6879
        mmTop = 0
        mmWidth = 62971
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CIDADE'
        DataPipeline = ppDBFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 0
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_UF'
        DataPipeline = ppDBFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_FONE'
        DataPipeline = ppDBFor02
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CONTATO'
        DataPipeline = ppDBFor02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 141288
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_FONCONT'
        DataPipeline = ppDBFor02
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFor02'
        mmHeight = 3175
        mmLeft = 172509
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'FOR_CODIGO'
      DataPipeline = ppDBFor02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBFor02'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'COD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'RAZAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 6879
          mmTop = 0
          mmWidth = 9737
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 70908
          mmTop = 0
          mmWidth = 11007
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 111919
          mmTop = 0
          mmWidth = 3810
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 118269
          mmTop = 0
          mmWidth = 7832
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'CONTATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 141288
          mmTop = 0
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'FONE/CONTATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 172509
          mmTop = 0
          mmWidth = 22437
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppSubFor021: TppSubReport
          DesignLayer = ppDesignLayer4
          UserName = 'SubFor021'
          ExpandAll = True
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = True
          DataPipelineName = 'ppDBFor021'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBFor021
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
            DataPipelineName = 'ppDBFor021'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppLine4: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 0
                mmTop = 3968
                mmWidth = 196057
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel15: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label15'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'Refer'#234'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3246
                mmLeft = 12700
                mmTop = 529
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel16: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label16'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'Descri'#231#227'o do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3175
                mmLeft = 31750
                mmTop = 529
                mmWidth = 91811
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel17: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label17'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'P.Custo'
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
                mmTop = 529
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel18: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label18'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'P.Custo+IPI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3246
                mmLeft = 159544
                mmTop = 529
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
              object ppLine7: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line7'
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 0
                mmTop = 0
                mmWidth = 196057
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel19: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label19'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'UND'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                FormField = False
                Transparent = True
                mmHeight = 3246
                mmLeft = 128059
                mmTop = 529
                mmWidth = 7144
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel20: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label20'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ultima Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                FormField = False
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3260
                mmLeft = 176827
                mmTop = 529
                mmWidth = 18965
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 3175
              mmPrintPosition = 0
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText15'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_REFER'
                DataPipeline = ppDBFor021
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3246
                mmLeft = 12700
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText16: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText16'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_DESCRI'
                DataPipeline = ppDBFor021
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3175
                mmLeft = 31750
                mmTop = 0
                mmWidth = 91811
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText17: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText17'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_PCUSTO'
                DataPipeline = ppDBFor021
                DisplayFormat = '#,###0.000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3175
                mmLeft = 140229
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText18: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText18'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_CUSTOCOMIPI'
                DataPipeline = ppDBFor021
                DisplayFormat = '#,###0.000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3175
                mmLeft = 159544
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText19: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText19'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_UND'
                DataPipeline = ppDBFor021
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3175
                mmLeft = 128059
                mmTop = 0
                mmWidth = 7144
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText20: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText20'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENF_ENTRADA'
                DataPipeline = ppDBFor021
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBFor021'
                mmHeight = 3175
                mmLeft = 177536
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
            end
            object ppDesignLayers3: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'Foreground2'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object DsFor021: TDataSource
    DataSet = SqlCdsFor021
    Left = 448
    Top = 112
  end
  object SqlCdsFor021: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UN' +
      'D,'#13#10'(select'#13#10'first 1'#13#10'T1.ENF_CUSTO'#13#10'from'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0' +
      '001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_C' +
      'ODIGO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = ' +
      'P1.PRD_REFER)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_RE' +
      'FER = F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGIST' +
      'RO DESC) as PRD_PCUSTO,'#13#10'(select'#13#10'first 1'#13#10'T1.ENF_CUSTO + (T1.EN' +
      'F_CUSTO * (T1.ENF_IPIALIQ/100))'#13#10'from'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001' +
      ' T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODI' +
      'GO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.' +
      'PRD_REFER)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER' +
      ' = F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO ' +
      'DESC) as PRD_CUSTOCOMIPI,'#13#10'(select'#13#10'first 1'#13#10'T2.ENF_ENTRADA'#13#10'fro' +
      'm'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_I' +
      'T_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD00' +
      '00 P1 ON (T1.PRD_REFER = P1.PRD_REFER and p1.EMP_CODIGO = t1.EMP' +
      '_CODIGO)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER =' +
      ' F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO DE' +
      'SC) as ENF_ENTRADA'#13#10'FROM FOR_PROD F1'#13#10'LEFT JOIN PRD0000 P1 ON (F' +
      '1.PRD_REFER = P1.PRD_REFER)'#13#10'ORDER BY F1.FOR_CODIGO,P1.PRD_DESCR' +
      'I'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UN' +
      'D,'#13#10'(select'#13#10'first 1'#13#10'T1.ENF_CUSTO'#13#10'from'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0' +
      '001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_C' +
      'ODIGO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = ' +
      'P1.PRD_REFER)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_RE' +
      'FER = F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGIST' +
      'RO DESC) as PRD_PCUSTO,'#13#10'(select'#13#10'first 1'#13#10'T1.ENF_CUSTO + (T1.EN' +
      'F_CUSTO * (T1.ENF_IPIALIQ/100))'#13#10'from'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001' +
      ' T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODI' +
      'GO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.' +
      'PRD_REFER)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER' +
      ' = F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO ' +
      'DESC) as PRD_CUSTOCOMIPI,'#13#10'(select'#13#10'first 1'#13#10'T2.ENF_ENTRADA'#13#10'fro' +
      'm'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_I' +
      'T_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO)'#13#10'LEFT JOIN PRD00' +
      '00 P1 ON (T1.PRD_REFER = P1.PRD_REFER and p1.EMP_CODIGO = t1.EMP' +
      '_CODIGO)'#13#10'WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER =' +
      ' F1.PRD_REFER'#13#10'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO DE' +
      'SC) as ENF_ENTRADA'#13#10'FROM FOR_PROD F1'#13#10'LEFT JOIN PRD0000 P1 ON (F' +
      '1.PRD_REFER = P1.PRD_REFER)'#13#10'ORDER BY F1.FOR_CODIGO,P1.PRD_DESCR' +
      'I'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 112
    object SqlCdsFor021FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsFor021PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsFor021PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsFor021PRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsFor021PRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsFor021PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsFor021ENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
  end
  object SqlCdsFor: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM FOR0000 F1'#13#10'ORDER BY ' +
      #13#10'F1.FOR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM FOR0000 F1'#13#10'ORDER BY ' +
      #13#10'F1.FOR_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 111
    object SqlCdsForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsForFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object ppDBFor021: TppDBPipeline
    DataSource = DsFor021
    UserName = 'DBFor021'
    Left = 480
    Top = 112
    MasterDataPipelineName = 'ppDBFor02'
    object ppDBFor021ppField1: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBFor021ppField2: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppDBFor021ppField3: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBFor021ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object ppDBFor021ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_CUSTOCOMIPI'
      FieldName = 'PRD_CUSTOCOMIPI'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBFor021ppField6: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object ppDBFor021ppField7: TppField
      FieldAlias = 'ENF_ENTRADA'
      FieldName = 'ENF_ENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppDBFor021ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'FOR_CODIGO'
      GuidCollationType = gcString
      DetailFieldName = 'FOR_CODIGO'
      DetailSortOrder = soAscending
    end
  end
  object CdsFornecedorMateria: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'FOR1.FOR_RAZAO,'#13#10'FOR1.FOR_CIDADE,'#13#10'FOR1.' +
      'FOR_UF,'#13#10'FOR1.FOR_FONE,'#13#10'FOR1.FOR_CONTATO,'#13#10'FOR1.FOR_FAX,'#13#10'F1.PR' +
      'D_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'(select first 1 T1.ENF_CU' +
      'STO from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.' +
      'ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN P' +
      'RD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO =' +
      ' F1.FOR_CODIGO AND T1.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_E' +
      'NTRADA DESC , T2.ENF_REGISTRO DESC) as PRD_PCUSTO,'#13#10'(select firs' +
      't 1 T1.ENF_CUSTO + (T1.ENF_CUSTO * (T1.ENF_IPIALIQ/100)) from EN' +
      'F_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTA' +
      'NUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN PRD0000 P1 O' +
      'N (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO = F1.FOR_COD' +
      'IGO AND T1.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_ENTRADA DESC' +
      ' , T2.ENF_REGISTRO DESC) as PRD_CUSTOCOMIPI,'#13#10'(select first 1 T2' +
      '.ENF_ENTRADA from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUM' +
      'BER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LE' +
      'FT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER and p1.EMP_CO' +
      'DIGO = t1.EMP_CODIGO) WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1' +
      '.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_' +
      'REGISTRO DESC) as ENF_ENTRADA'#13#10'FROM FOR_PROD F1'#13#10'LEFT JOIN FOR00' +
      '00 FOR1 ON (FOR1.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 ' +
      'P1 ON (F1.PRD_REFER = P1.PRD_REFER)'#13#10'ORDER BY FOR1.FOR_RAZAO,P1.' +
      'PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F1.FOR_CODIGO,'#13#10'FOR1.FOR_RAZAO,'#13#10'FOR1.FOR_CIDADE,'#13#10'FOR1.' +
      'FOR_UF,'#13#10'FOR1.FOR_FONE,'#13#10'FOR1.FOR_CONTATO,'#13#10'FOR1.FOR_FAX,'#13#10'F1.PR' +
      'D_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'(select first 1 T1.ENF_CU' +
      'STO from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.' +
      'ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN P' +
      'RD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO =' +
      ' F1.FOR_CODIGO AND T1.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_E' +
      'NTRADA DESC , T2.ENF_REGISTRO DESC) as PRD_PCUSTO,'#13#10'(select firs' +
      't 1 T1.ENF_CUSTO + (T1.ENF_CUSTO * (T1.ENF_IPIALIQ/100)) from EN' +
      'F_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTA' +
      'NUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN PRD0000 P1 O' +
      'N (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO = F1.FOR_COD' +
      'IGO AND T1.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_ENTRADA DESC' +
      ' , T2.ENF_REGISTRO DESC) as PRD_CUSTOCOMIPI,'#13#10'(select first 1 T2' +
      '.ENF_ENTRADA from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUM' +
      'BER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) LE' +
      'FT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER and p1.EMP_CO' +
      'DIGO = t1.EMP_CODIGO) WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1' +
      '.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_' +
      'REGISTRO DESC) as ENF_ENTRADA'#13#10'FROM FOR_PROD F1'#13#10'LEFT JOIN FOR00' +
      '00 FOR1 ON (FOR1.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'LEFT JOIN PRD0000 ' +
      'P1 ON (F1.PRD_REFER = P1.PRD_REFER)'#13#10'ORDER BY FOR1.FOR_RAZAO,P1.' +
      'PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 424
    Top = 152
    object CdsFornecedorMateriaFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsFornecedorMateriaFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsFornecedorMateriaFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object CdsFornecedorMateriaFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object CdsFornecedorMateriaFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object CdsFornecedorMateriaFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object CdsFornecedorMateriaFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Size = 11
    end
    object CdsFornecedorMateriaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsFornecedorMateriaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsFornecedorMateriaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object CdsFornecedorMateriaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 20
      Size = 5
    end
    object CdsFornecedorMateriaPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 20
      Size = 10
    end
    object CdsFornecedorMateriaENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
  end
  object frx: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41845.577940532410000000
    ReportOptions.LastChange = 41845.590045798610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxGetValue
    Left = 560
    Top = 120
    Datasets = <
      item
        DataSet = frxdbFornecedorMateria
        DataSetName = 'frxdbFornecedorMateria'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Fornecedores de Mat'#233'ria Prima')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 56.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 294.803340000000000000
          Top = 56.692950000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 430.866420000000000000
          Top = 56.692950000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 472.441250000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 56.692950000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 566.929500000000000000
          Top = 56.692950000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 75.590600000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxdbFornecedorMateria
        DataSetName = 'frxdbFornecedorMateria'
        RowCount = 0
        object frxdbFornecedorMateriaPRD_REFER: TfrxMemoView
          Left = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaPRD_DESCRI: TfrxMemoView
          Left = 109.606370000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaPRD_UND: TfrxMemoView
          Left = 419.527830000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_UND'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_UND"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaPRD_PCUSTO: TfrxMemoView
          Left = 449.764070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_PCUSTO'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_PCUSTO"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaPRD_CUSTOCOMIPI: TfrxMemoView
          Left = 529.134200000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_CUSTOCOMIPI'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_CUSTOCOMIPI"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaENF_ENTRADA: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_ENTRADA'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."ENF_ENTRADA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Condition = 'frxdbFornecedorMateria."FOR_CODIGO"'
        KeepTogether = True
        object frxdbFornecedorMateriaFOR_RAZAO: TfrxMemoView
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxdbFornecedorMateria."FOR_CODIGO"] - [frxdbFornecedorMateria.' +
              '"FOR_RAZAO"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaFOR_CIDADE: TfrxMemoView
          Left = 294.803340000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_CIDADE'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_CIDADE"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaFOR_UF: TfrxMemoView
          Left = 430.866420000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_UF'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_UF"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaFOR_FONE: TfrxMemoView
          Left = 472.441250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_FONE'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_FONE"]')
          ParentFont = False
        end
        object frxdbFornecedorMateriaFOR_CONTATO: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_CONTATO'
          DataSet = frxdbFornecedorMateria
          DataSetName = 'frxdbFornecedorMateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_CONTATO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 109.606370000000000000
          Top = 18.897650000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Top = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 449.764070000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pre'#231'o de Custo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 529.134200000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pre'#231'o de Custo + IPI')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #218'ltima Compra')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 37.795300000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxdbFornecedorMateria: TfrxDBDataset
    UserName = 'frxdbFornecedorMateria'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'FOR_CIDADE=FOR_CIDADE'
      'FOR_UF=FOR_UF'
      'FOR_FONE=FOR_FONE'
      'FOR_CONTATO=FOR_CONTATO'
      'FOR_FAX=FOR_FAX'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'PRD_PCUSTO=PRD_PCUSTO'
      'PRD_CUSTOCOMIPI=PRD_CUSTOCOMIPI'
      'ENF_ENTRADA=ENF_ENTRADA')
    DataSet = CdsFornecedorMateria
    BCDToCurrency = False
    Left = 512
    Top = 176
  end
  object frxColaborador: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42859.674743125000000000
    ReportOptions.LastChange = 42863.701303784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 288
    Datasets = <
      item
        DataSet = frxDBColaborador
        DataSetName = 'Colaborador'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object rbTitulo: TfrxReportTitle
        FillType = ftBrush
        Height = 101.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object ColaboradorFOR_CODIGO: TfrxMemoView
          Left = 628.181510000000000000
          Top = 5.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_CODIGO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Colaborador."FOR_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 110.385900000000000000
          Top = 31.456710000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Empregador')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 579.047620000000000000
          Top = 31.677180000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 110.385900000000000000
          Top = 66.472480000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object ColaboradorFOR_RAZAO: TfrxMemoView
          Left = 114.826840000000000000
          Top = 44.795300000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FOR_RAZAO"]')
          ParentFont = False
        end
        object ColaboradorFOR_CGC: TfrxMemoView
          Left = 583.047620000000000000
          Top = 44.574830000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_CGC'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FOR_CGC"]')
          ParentFont = False
        end
        object ColaboradorFOR_ENDERE: TfrxMemoView
          Left = 114.385900000000000000
          Top = 80.370130000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_ENDERE'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FOR_ENDERE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 2.779530000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CADASTRO DE COLABORADOR')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 109.606370000000000000
          Top = 30.677180000000000000
          Width = 608.504330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line2: TfrxLineView
          Left = 626.929500000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
        object Line3: TfrxLineView
          Left = 109.606370000000000000
          Top = 65.252010000000000000
          Width = 608.504330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Shape1: TfrxShapeView
          Left = 109.606370000000000000
          Top = 1.000000000000000000
          Width = 608.504330000000000000
          Height = 98.267780000000000000
          Frame.Width = 0.100000000000000000
        end
        object Line4: TfrxLineView
          Left = 574.488560000000000000
          Top = 30.236240000000000000
          Height = 34.015770000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
        end
      end
      object mdColaborador: TfrxMasterData
        FillType = ftBrush
        Height = 774.803650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBColaborador
        DataSetName = 'Colaborador'
        RowCount = 0
        object Memo6: TfrxMemoView
          Top = 32.574830000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Resid'#234'ncia')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 411.968770000000000000
          Top = 1.779530000000000000
          Width = 306.141930000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Benefici'#225'rios')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 94.488250000000000000
          Top = 64.133890000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de nascimento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 212.874150000000000000
          Top = 64.133890000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Local de nascimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 502.543600000000000000
          Top = 64.133890000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pa'#237's de nascimento')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 623.031850000000000000
          Top = 64.133890000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado civil')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 94.488250000000000000
          Top = 94.267780000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FILIA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 151.181200000000000000
          Top = 94.267780000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pai')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 151.181200000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'M'#227'e')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 309.921460000000000000
          Top = 154.181200000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #211'rg'#227'o/UF emissor')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 411.968770000000000000
          Top = 154.181200000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'T'#237'tulo Eleitoral')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 528.913730000000000000
          Top = 154.181200000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Zona')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 564.929500000000000000
          Top = 154.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Se'#231#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 185.149660000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CTPS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 191.976500000000000000
          Top = 185.149660000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'S'#233'rie')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 394.409710000000000000
          Top = 185.149660000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 492.016080000000000000
          Top = 185.488250000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 551.811380000000000000
          Top = 185.267780000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cart. Nac. Habilita'#231#227'o')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 650.079160000000000000
          Top = 185.149660000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 94.488250000000000000
          Top = 215.283550000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Doc. militar')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 215.504020000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 332.598640000000000000
          Top = 215.283550000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 430.866420000000000000
          Top = 215.283550000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 536.693260000000000000
          Top = 215.283550000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grau de instru'#231#227'o')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 94.488250000000000000
          Top = 246.299320000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Defici'#234'ncia')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 325.039580000000000000
          Top = 246.299320000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone residencial')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 531.693260000000000000
          Top = 246.299320000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone celular')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 94.267780000000000000
          Top = 276.535560000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 347.716760000000000000
          Top = 276.756030000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fun'#231#227'o')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 616.063390000000000000
          Top = 276.756030000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.B.O.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Top = 308.889920000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de Admiss'#227'o')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 109.606370000000000000
          Top = 308.889920000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sal'#225'rio')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 306.141930000000000000
          Top = 308.889920000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Por')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 423.307360000000000000
          Top = 308.889920000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hor'#225'rio de Trabalho')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 548.031850000000000000
          Top = 308.889920000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hor'#225'rio de Intervalo')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Top = 346.685220000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FGTS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 71.811070000000000000
          Top = 346.685220000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Op'#231#227'o em')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 177.637910000000000000
          Top = 346.685220000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Conta vinculada no banco')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 589.606680000000000000
          Top = 346.685220000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Date de Retifica'#231#227'o')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Top = 380.819110000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PROGRAMA DE INTEGRA'#199#195'O SOCIAL - PIS')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Top = 395.937230000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastrado em')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 102.047310000000000000
          Top = 395.937230000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sob n'#186)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 204.094620000000000000
          Top = 395.937230000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Domic'#237'lio banc'#225'rio')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 426.173470000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' banco')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 102.047310000000000000
          Top = 426.173470000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ag'#234'ncia c'#243'digo')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 204.094620000000000000
          Top = 426.173470000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'End. da ag'#234'ncia')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Top = 475.189240000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ALTERA'#199#213'ES DE SAL'#193'RIO, CARGO E/OU FUN'#199#195'O')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Top = 550.779840000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'F'#201'RIAS - PER'#205'ODO AQUISITIVO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 207.874150000000000000
          Top = 550.779840000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'F'#201'RIAS - PER'#205'ODO DE GOZO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 389.291590000000000000
          Top = 550.779840000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Obs.: (Anotar advert'#234'ncias, suspen'#231#245'es, transfer'#234'ncias, etc.)')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Top = 626.370440000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ACIDENTES DE TRABALHO OU DOEN'#199'AS PROFISSIONAIS')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 430.866420000000000000
          Top = 626.370440000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RESCIS'#195'O DE CONTRATO DE TRABALHO')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Top = 698.181510000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRIBUI'#199#195'O SINDICAL')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 1.440940000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Empregado')
          ParentFont = False
        end
        object ColaboradorCOLABORADOR: TfrxMemoView
          Left = 3.338590000000000000
          Top = 12.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'COLABORADOR'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."COLABORADOR"]')
          ParentFont = False
        end
        object ColaboradorENDERECO_COL: TfrxMemoView
          Left = 3.779530000000000000
          Top = 43.692950000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO_COL'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ENDERECO_COL"]')
          ParentFont = False
        end
        object ColaboradorBENEFICIARIOS: TfrxMemoView
          Left = 415.748300000000000000
          Top = 12.897650000000000000
          Width = 597.165740000000000000
          Height = 49.133890000000000000
          DataField = 'BENEFICIARIOS'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."BENEFICIARIOS"]')
          ParentFont = False
        end
        object ColaboradorDATA_NASC: TfrxMemoView
          Left = 98.267780000000000000
          Top = 75.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_NASC'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."DATA_NASC"]')
          ParentFont = False
        end
        object ColaboradorLOCAL_NASC: TfrxMemoView
          Left = 226.669450000000000000
          Top = 75.267780000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'LOCAL_NASC'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."LOCAL_NASC"]')
          ParentFont = False
        end
        object ColaboradorNACIONALIDADE: TfrxMemoView
          Left = 498.236550000000000000
          Top = 75.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'NACIONALIDADE'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."NACIONALIDADE"]')
          ParentFont = False
        end
        object ColaboradorESTADO_CIVIL: TfrxMemoView
          Left = 627.401980000000000000
          Top = 75.267780000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ESTADO_CIVIL'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ESTADO_CIVIL"]')
          ParentFont = False
        end
        object ColaboradorPAI: TfrxMemoView
          Left = 155.519790000000000000
          Top = 105.606370000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'PAI'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."PAI"]')
          ParentFont = False
        end
        object ColaboradorMAE: TfrxMemoView
          Left = 154.960730000000000000
          Top = 136.063080000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'MAE'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."MAE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 207.535560000000000000
          Top = 154.196970000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de emisss'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 94.488250000000000000
          Top = 153.740260000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#233'dula de identidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorRG: TfrxMemoView
          Left = 98.267780000000000000
          Top = 165.535560000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'RG'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."RG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorRG_EMISSAO: TfrxMemoView
          Left = 209.874150000000000000
          Top = 165.535560000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'RG_EMISSAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."RG_EMISSAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorORGAO_UF: TfrxMemoView
          Left = 313.921460000000000000
          Top = 165.315090000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ORGAO_UF'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ORGAO_UF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorTITULO_ELEITORAL: TfrxMemoView
          Left = 415.968770000000000000
          Top = 165.315090000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TITULO_ELEITORAL'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."TITULO_ELEITORAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorZONA: TfrxMemoView
          Left = 532.134200000000000000
          Top = 165.315090000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ZONA'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ZONA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorSECAO: TfrxMemoView
          Left = 567.929500000000000000
          Top = 165.315090000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'SECAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."SECAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorORGAO_CLASSE: TfrxMemoView
          Left = 619.842920000000000000
          Top = 165.315090000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'ORGAO_CLASSE'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ORGAO_CLASSE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorCTPS: TfrxMemoView
          Left = 98.047310000000000000
          Top = 196.535560000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'CTPS'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CTPS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorDOC_MILITAR: TfrxMemoView
          Left = 98.267780000000000000
          Top = 226.771800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_MILITAR'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."DOC_MILITAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 616.063390000000000000
          Top = 154.181200000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscr. '#211'rg'#227'o de Classe')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 294.803340000000000000
          Top = 185.196970000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de expedi'#231#227'o')
          ParentFont = False
        end
        object ColaboradorSERIE: TfrxMemoView
          Left = 195.535560000000000000
          Top = 196.535560000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SERIE'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."SERIE"]')
          ParentFont = False
        end
        object ColaboradorCTPS_EXPEDICAO: TfrxMemoView
          Left = 298.582870000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CTPS_EXPEDICAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CTPS_EXPEDICAO"]')
          ParentFont = False
        end
        object ColaboradorCTPS_UF: TfrxMemoView
          Left = 398.630180000000000000
          Top = 196.535560000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'CTPS_UF'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CTPS_UF"]')
          ParentFont = False
        end
        object ColaboradorCPF: TfrxMemoView
          Left = 495.118430000000000000
          Top = 196.535560000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CPF"]')
          ParentFont = False
        end
        object ColaboradorHABILITACAO: TfrxMemoView
          Left = 555.590910000000000000
          Top = 196.535560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'HABILITACAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."HABILITACAO"]')
          ParentFont = False
        end
        object ColaboradorHABILITACAO_CATEG: TfrxMemoView
          Left = 653.858690000000000000
          Top = 196.535560000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'HABILITACAO_CATEG'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."HABILITACAO_CATEG"]')
          ParentFont = False
        end
        object ColaboradorDOC_MILITAR_CATEG: TfrxMemoView
          Left = 238.110390000000000000
          Top = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_MILITAR_CATEG'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."DOC_MILITAR_CATEG"]')
          ParentFont = False
        end
        object ColaboradorCOR: TfrxMemoView
          Left = 336.378170000000000000
          Top = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COR'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."COR"]')
          ParentFont = False
        end
        object ColaboradorSEXO: TfrxMemoView
          Left = 434.645950000000000000
          Top = 226.771800000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'SEXO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."SEXO"]')
          ParentFont = False
        end
        object ColaboradorGRAU_INSTRUCAO: TfrxMemoView
          Left = 540.472790000000000000
          Top = 226.771800000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'GRAU_INSTRUCAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."GRAU_INSTRUCAO"]')
          ParentFont = False
        end
        object ColaboradorDEFICIENCIA: TfrxMemoView
          Left = 98.267780000000000000
          Top = 258.008040000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'DEFICIENCIA'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."DEFICIENCIA"]')
          ParentFont = False
        end
        object ColaboradorFONE_RESIDENCIAL: TfrxMemoView
          Left = 328.937230000000000000
          Top = 258.008040000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'FONE_RESIDENCIAL'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FONE_RESIDENCIAL"]')
          ParentFont = False
        end
        object ColaboradorFONE_CELULAR: TfrxMemoView
          Left = 535.693260000000000000
          Top = 258.008040000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'FONE_CELULAR'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FONE_CELULAR"]')
          ParentFont = False
        end
        object ColaboradorCARGO: TfrxMemoView
          Left = 98.267780000000000000
          Top = 288.244280000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'CARGO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CARGO"]')
          ParentFont = False
        end
        object ColaboradorFUNCAO: TfrxMemoView
          Left = 351.496290000000000000
          Top = 288.244280000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'FUNCAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."FUNCAO"]')
          ParentFont = False
        end
        object ColaboradorCBO: TfrxMemoView
          Left = 619.724800000000000000
          Top = 288.244280000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CBO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."CBO"]')
          ParentFont = False
        end
        object ColaboradorADMISSAO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 320.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'ADMISSAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."ADMISSAO"]')
          ParentFont = False
        end
        object ColaboradorSALARIO: TfrxMemoView
          Left = 112.385900000000000000
          Top = 320.260050000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALARIO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."SALARIO"]')
          ParentFont = False
        end
        object ColaboradorSALARIO_POR: TfrxMemoView
          Left = 309.480520000000000000
          Top = 320.260050000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SALARIO_POR'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Colaborador."SALARIO_POR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 427.086890000000000000
          Top = 320.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'das [Colaborador."HORA_ENTRADA"] '#224's [Colaborador."HORA_SAIDA"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 551.811380000000000000
          Top = 320.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'das [Colaborador."SAIDA_INTERVALO"] '#224's [Colaborador."ENTRADA_INT' +
              'ERVALO"]')
          ParentFont = False
        end
        object ColaboradorFGTS_DATA_OPCAO: TfrxMemoView
          Left = 75.811070000000000000
          Top = 357.275820000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'FGTS_DATA_OPCAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."FGTS_DATA_OPCAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorFGTS_CONTA_BANCO: TfrxMemoView
          Left = 181.417440000000000000
          Top = 357.055350000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          DataField = 'FGTS_CONTA_BANCO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."FGTS_CONTA_BANCO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorFGTS_DATA_RETIFICACAO: TfrxMemoView
          Left = 593.488560000000000000
          Top = 357.055350000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'FGTS_DATA_RETIFICACAO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."FGTS_DATA_RETIFICACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ColaboradorPIS_DATA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 407.307360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_DATA'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_DATA"]')
          ParentFont = False
        end
        object ColaboradorPIS_NUMERO: TfrxMemoView
          Left = 105.826840000000000000
          Top = 407.307360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_NUMERO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_NUMERO"]')
          ParentFont = False
        end
        object ColaboradorPIS_DOMINIO_BANCARIO: TfrxMemoView
          Left = 207.874150000000000000
          Top = 407.307360000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_DOMINIO_BANCARIO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_DOMINIO_BANCARIO"]')
          ParentFont = False
        end
        object ColaboradorPIS_NUM_BANCO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 437.543600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_NUM_BANCO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_NUM_BANCO"]')
          ParentFont = False
        end
        object ColaboradorPIS_END_AGENCIA: TfrxMemoView
          Left = 207.874150000000000000
          Top = 437.543600000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_END_AGENCIA'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_END_AGENCIA"]')
          ParentFont = False
        end
        object ColaboradorPIS_AGENCIA: TfrxMemoView
          Left = 105.826840000000000000
          Top = 437.543600000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PIS_AGENCIA'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."PIS_AGENCIA"]')
          ParentFont = False
        end
        object ColaboradorSALARIO_ALTERACOES: TfrxMemoView
          Top = 491.338900000000000000
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          DataField = 'SALARIO_ALTERACOES'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."SALARIO_ALTERACOES"]')
          ParentFont = False
        end
        object ColaboradorFERIAS_PERIODO_AQUISITIVO: TfrxMemoView
          Top = 566.929500000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'FERIAS_PERIODO_AQUISITIVO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."FERIAS_PERIODO_AQUISITIVO"]')
          ParentFont = False
        end
        object ColaboradorFERIAS_PERIODO_GOZO: TfrxMemoView
          Left = 207.874150000000000000
          Top = 566.929500000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'FERIAS_PERIODO_GOZO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."FERIAS_PERIODO_GOZO"]')
          ParentFont = False
        end
        object ColaboradorACIDENTE_TRABALHO: TfrxMemoView
          Top = 642.520100000000000000
          Width = 215.433210000000000000
          Height = 52.913420000000000000
          DataField = 'ACIDENTE_TRABALHO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."ACIDENTE_TRABALHO"]')
          ParentFont = False
        end
        object ColaboradorDOENCA_PROFISSIONAL: TfrxMemoView
          Left = 219.212740000000000000
          Top = 642.520100000000000000
          Width = 207.874150000000000000
          Height = 52.913420000000000000
          DataField = 'DOENCA_PROFISSIONAL'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."DOENCA_PROFISSIONAL"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 430.866420000000000000
          Top = 642.520100000000000000
          Width = 287.244280000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Data de sa'#237'da: [Colaborador."RESCISAO_DATA"]')
          ParentFont = False
        end
        object ColaboradorCONTRIBUICAO_SINDICATO: TfrxMemoView
          Top = 714.331170000000000000
          Width = 427.086890000000000000
          Height = 60.472480000000000000
          DataField = 'CONTRIBUICAO_SINDICATO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Colaborador."CONTRIBUICAO_SINDICATO"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 430.866420000000000000
          Top = 661.417750000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Tipo de desligamento:')
          ParentFont = False
        end
        object ColaboradorRESCISAO_TIPO: TfrxMemoView
          Left = 430.866420000000000000
          Top = 676.535870000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'RESCISAO_TIPO'
          DataSet = frxDBColaborador
          DataSetName = 'Colaborador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[Colaborador."RESCISAO_TIPO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Top = 1.559060000000000000
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape3: TfrxShapeView
          Left = 94.149660000000000000
          Top = 64.252010000000000000
          Width = 623.622450000000000000
          Height = 241.889920000000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape4: TfrxShapeView
          Top = 308.921460000000000000
          Width = 718.110700000000000000
          Height = 68.031540000000000000
          Frame.Width = 0.100000000000000000
        end
        object Line5: TfrxLineView
          Top = 395.071120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line6: TfrxLineView
          Top = 425.307360000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
    end
  end
  object frxDBColaborador: TfrxDBDataset
    UserName = 'Colaborador'
    CloseDataSource = True
    DataSet = DataCadastros.CdsFornecedor
    BCDToCurrency = False
    Left = 556
    Top = 288
  end
  object frxProdPorForn: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43805.457792083300000000
    ReportOptions.LastChange = 43808.579172662000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxProdPorFornGetValue
    Left = 432
    Top = 240
    Datasets = <
      item
        DataSet = frxdbFornecedorMateria
        DataSetName = 'frxdbFornecedorMateria'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.697650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxdbFornecedorMateria
        DataSetName = 'frxdbFornecedorMateria'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 38.000000010000000000
          Width = 28.818684770000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_CODIGO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 0.869565220000000000
          Width = 37.096945650000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 69.533677390000000000
          Width = 153.592974350000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 224.089282170000000000
          Width = 75.392057390000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_REFER"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 301.412478700000000000
          Width = 329.113468700000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 630.826086960000000000
          Width = 60.052386520000000000
          Height = 15.697650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_PCUSTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 690.080799130000000000
          Width = 27.798755210000000000
          Height = 15.697650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbFornecedorMateria."PRD_UND"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 73.302350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 0.869565220000000000
          Top = 46.417440000000000000
          Width = 37.096945650000000000
          Height = 11.918120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SEQ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 38.000000010000000000
          Top = 46.417440000000000000
          Width = 28.818684770000000000
          Height = 25.112503040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cod.'
            'Forn.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 69.533677390000000000
          Top = 46.417440000000000000
          Width = 153.592974350000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 224.089282170000000000
          Top = 46.417440000000000000
          Width = 75.392057390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cod. Item')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 301.412478700000000000
          Top = 46.417440000000000000
          Width = 329.692998700000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 630.826086960000000000
          Top = 46.417440000000000000
          Width = 60.052386520000000000
          Height = 25.738590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pre'#231'o'
            'Compra')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 690.080799130000000000
          Top = 46.417440000000000000
          Width = 27.798755210000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 20.545992170000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos por Fornecedores')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 1.648342169999990000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 578.268090000000000000
          Top = 1.648342169999990000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 578.268090000000000000
          Top = 20.545992170000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 44.341292170000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line1: TfrxLineView
          Top = 73.302350000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 296
    Top = 296
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = False
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 160
    Top = 288
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    EmptyLines = False
    PictureType = gpPNG
    Left = 232
    Top = 288
  end
end
