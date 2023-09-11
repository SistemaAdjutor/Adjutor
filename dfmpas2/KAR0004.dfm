inherited KardexZerarEstoque: TKardexZerarEstoque
  Left = 208
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Opera'#231#227'o de Zerar Estoque'
  ClientHeight = 509
  ClientWidth = 934
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  ExplicitWidth = 942
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 14
  object Gauge1: TGauge [0]
    Left = 424
    Top = 192
    Width = 100
    Height = 100
    Progress = 0
  end
  object Gauge2: TGauge [1]
    Left = 8
    Top = 479
    Width = 801
    Height = 26
    ForeColor = 12615680
    Progress = 0
    Visible = False
  end
  object Label3: TLabel [2]
    Left = 10
    Top = 457
    Width = 130
    Height = 14
    Caption = 'Total de itens selecionados'
  end
  object Label5: TLabel [3]
    Left = 287
    Top = 455
    Width = 210
    Height = 14
    Caption = 'Total de itens com saldo que ser'#227'o zerados'
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 0
    Width = 934
    Height = 100
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 0
    object Label4: TLabel
      Left = 280
      Top = 13
      Width = 20
      Height = 14
      Caption = 'Tipo'
    end
    object Label1: TLabel
      Left = 544
      Top = 13
      Width = 30
      Height = 14
      Caption = 'Grupo'
    end
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 64
      Height = 14
      Caption = 'Almoxarifado'
    end
    object CbTipo: TcxLookupComboBox
      Left = 280
      Top = 29
      Properties.KeyFieldNames = 'PTI_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'PTI_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'PTI_DESCRI'
        end>
      Properties.ListSource = DsTipo
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      OnExit = CbTipoExit
      Width = 257
    end
    object CbGrupo: TcxLookupComboBox
      Left = 544
      Top = 28
      Properties.KeyFieldNames = 'PGR_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'PGR_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'PGR_DESCRI'
        end>
      Properties.ListSource = DsGrupo
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 2
      OnExit = CbGrupoExit
      Width = 257
    end
    object CbAlmoxarifado: TcxLookupComboBox
      Left = 16
      Top = 28
      Properties.KeyFieldNames = 'AMX_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'AMX_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'AMX_DESCRI'
        end>
      Properties.ListSource = DsAlmoxarifado
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      OnExit = CbAlmoxarifadoExit
      Width = 257
    end
    object cxButton2: TcxButton
      Left = 816
      Top = 39
      Width = 113
      Height = 25
      Caption = '&Sair'
      Colors.Normal = clWhite
      Colors.Pressed = clSilver
      LookAndFeel.Kind = lfUltraFlat
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 816
      Top = 11
      Width = 113
      Height = 25
      Caption = '&Pesquisar'
      Colors.Normal = clWhite
      Colors.Pressed = clSilver
      LookAndFeel.Kind = lfUltraFlat
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object EdAlmoxarifadoDescricao: TEdit
      Left = 16
      Top = 53
      Width = 255
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 5
    end
    object EdTipo: TEdit
      Left = 280
      Top = 53
      Width = 255
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 6
    end
    object EdGrupo: TEdit
      Left = 544
      Top = 53
      Width = 256
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 7
    end
    object chkZerarNegativos: TCheckBox
      Left = 16
      Top = 80
      Width = 249
      Height = 17
      Caption = 'Zerar somente negativos'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 100
    Width = 934
    Height = 350
    Align = alTop
    Caption = 'Localizados para Zerar'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 930
      Height = 332
      Align = alClient
      DataSource = DsProdutoGeral
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Caption = 'Refer'#234'ncia'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Caption = 'Descri'#231#227'o'
          Width = 392
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Caption = 'Unid.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Caption = 'Almoxarifado'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KAS_SALDO'
          Title.Caption = 'Saldo'
          Visible = True
        end>
    end
  end
  object cxButton3: TcxButton [6]
    Left = 816
    Top = 479
    Width = 113
    Height = 25
    Caption = 'Processar'
    Colors.Normal = clWhite
    Colors.Pressed = clSilver
    LookAndFeel.Kind = lfUltraFlat
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00EFEFEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00DEDEDE00BD8463007B736B00DEDEDE00EFE7DE009484730094949400D6D6
      D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFCEB500FFAD7300FFAD73007B6B5A00DE845200FF9C5A00FF9452009473
      6300EFEFEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
      B500FFC66B00FFAD5A00FFB57B00FFAD7B00FF843900FF732100FF843900BD73
      4A00ADADAD00EFEFEF00EFEFEF00FF00FF00FF00FF00FF00FF00EFC6B500FFF7
      F700FFD6A500FFBD7300FFA55200FF8C3900FF843900FF7B3100FF7B2900FF94
      5A00BD734A009C735A0084736300CECECE00FF00FF00FF00FF00F7D6AD00FFEF
      CE00FFDEA500FFCE8400F7A55A00EFBD9C00F7C6A500FF945200FF843900FF84
      3900FF945A00FF8C5200FF945A00736B6B00E7E7E700FF00FF00FFE7D600FFF7
      E700FFE7C600FFDEAD00847B7B00FF00FF00FF00FF00FF00FF00FFF7EF00FF84
      3900FF7B3100FF7B3100FF8C4200FF8C5200DEDEDE00FF00FF00FF00FF00F7C6
      A500FFF7DE00FFE7CE009C6B5200D6D6D600FF00FF00FF00FF00FF00FF00FF00
      FF00FF843900FF843900F77B3100C6947B00FF00FF00FF00FF00FF00FF00F7C6
      AD00FFF7EF00FFE7D600FFEFDE0073737300E7E7E700FF00FF00FF00FF00FF00
      FF00FFDECE00FF8C4A00FF945A008463520094949400CECECE00FF00FF00FFFF
      F700FFFFF700FFEFE700FFEFDE00FFD6BD006B6B6B00C6C6C600EFEFEF00FF00
      FF00FF00FF00FF945200FF945200FF945A00FF8C5200AD8C7B00FF00FF00FFD6
      BD00FFFFFF00FFF7EF00FFE7D600FFE7D600FFE7D600C67B5A00847363008C84
      7B00BD845A00FF9C5A00FF945200FF8C4A00FF945200C69C8C00FF00FF00FF00
      FF00FFC6A500FFEFDE00FFF7EF00FFE7CE00FFD6BD00FFD6BD00FFCEAD00FFC6
      9C00FFAD7300FF9C6300FF9C6300FF945200FF8C5200DEDEDE00FF00FF00FF00
      FF00FF00FF00FF00FF00FFEFE700FFEFE700FFDEC600FFCEAD00FFB57B00FFAD
      7B00FFAD7300FFAD7300AD6B4A00EF946B00DEB5A500FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FFCEAD00FFE7D600FFDEBD00F7AD8400FFB5
      8400FFB57B00FFAD7B00FFB58C00ADA59C00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FFCEAD00FFBD9400EFEFEF00FF00
      FF00FFB58400FFB58400EF9C6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFEFDE00F7F7EF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton3Click
  end
  object Edit1: TEdit [7]
    Left = 145
    Top = 452
    Width = 88
    Height = 22
    ReadOnly = True
    TabOrder = 3
  end
  object Edit2: TEdit [8]
    Left = 503
    Top = 452
    Width = 90
    Height = 22
    ReadOnly = True
    TabOrder = 4
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 296
    Top = 144
  end
  object SqlCdsTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRD_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 432
    Top = 102
    object SqlCdsTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsGrupo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRD_GRUPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRD_GRUPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 632
    Top = 117
    object SqlCdsGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object SqlCdsGrupoPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 15
    end
    object SqlCdsGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SQLCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 152
    Top = 101
    object SQLCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SQLCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SQLCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SQLCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object DsProdutoGeral: TDataSource
    DataSet = SqlCdsProdutoGeral
    Left = 72
    Top = 200
  end
  object SqlCdsProdutoGeral: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_refer,'#13#10'    prd' +
      '0000.prd_descri,'#13#10'    prd0000.prd_und,'#13#10'    T1.amx_codigo,'#13#10'    ' +
      'T2.amx_descri,'#13#10'    T1.kas_saldo'#13#10'FROM'#13#10'    prd0000'#13#10'    join ka' +
      'rdex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo)'#13#10'   ' +
      ' join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_refer,'#13#10'    prd' +
      '0000.prd_descri,'#13#10'    prd0000.prd_und,'#13#10'    T1.amx_codigo,'#13#10'    ' +
      'T2.amx_descri,'#13#10'    T1.kas_saldo'#13#10'FROM'#13#10'    prd0000'#13#10'    join ka' +
      'rdex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo)'#13#10'   ' +
      ' join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 15
    Top = 200
    object SqlCdsProdutoGeralPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoGeralPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoGeralPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsProdutoGeralPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoGeralAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsProdutoGeralAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsProdutoGeralKAS_SALDO: TFMTBCDField
      FieldName = 'KAS_SALDO'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 15
      Size = 4
    end
  end
  object DsTipo: TDataSource
    DataSet = SqlCdsTipo
    Left = 464
    Top = 104
  end
  object DsGrupo: TDataSource
    DataSet = SqlCdsGrupo
    Left = 728
    Top = 104
  end
  object DsAlmoxarifado: TDataSource
    DataSet = SQLCdsAlmox
    Left = 184
    Top = 104
  end
  object SqlCdsZerar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_refer,'#13#10'    prd' +
      '0000.prd_descri,'#13#10'    prd0000.prd_und,'#13#10'    T1.amx_codigo,'#13#10'    ' +
      'T2.amx_descri,'#13#10'    T1.kas_saldo'#13#10'FROM'#13#10'    prd0000'#13#10'    join ka' +
      'rdex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo)'#13#10'   ' +
      ' join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    CommandText = 
      'SELECT'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_refer,'#13#10'    prd' +
      '0000.prd_descri,'#13#10'    prd0000.prd_und,'#13#10'    T1.amx_codigo,'#13#10'    ' +
      'T2.amx_descri,'#13#10'    T1.kas_saldo'#13#10'FROM'#13#10'    prd0000'#13#10'    join ka' +
      'rdex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo)'#13#10'   ' +
      ' join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 351
    Top = 264
    object StringField1: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object StringField5: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'KAS_SALDO'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 15
      Size = 4
    end
  end
end
