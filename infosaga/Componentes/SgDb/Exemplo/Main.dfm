inherited frmBaseDB2: TfrmBaseDB2
  Left = 368
  Top = 218
  Width = 798
  Height = 460
  Caption = 'frmBaseDB2'
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox [0]
    Left = 16
    Top = 8
    Width = 305
    Height = 105
    Caption = 'Pesquisar:'
    TabOrder = 1
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Banco:'
    end
    object btn1: TButton
      Left = 16
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Show ID'
      TabOrder = 0
      OnClick = btn1Click
    end
    object t1: TSgDbSearchCombo
      Left = 16
      Top = 36
      Width = 217
      Height = 21
      EmptyText = 'Selecione..'
      TabOrder = 1
      Text = 'Selecione..'
      LookupSelect = 'bco_codigo, bco_descricao'
      LookupOrderBy = 'bco_descricao'
      LookupTable = 'bancos'
      LookupDispl = 'bco_descricao'
      GridAutoSize = False
      LookupSource = SQLQuery1
      AutoF8 = sgDBAutoF81
      LookupKeyField = 'bco_codigo'
    end
  end
  object grp2: TGroupBox [1]
    Left = 16
    Top = 136
    Width = 377
    Height = 233
    Caption = 'Produto:'
    TabOrder = 2
    object Label1: TLabel
      Left = 19
      Top = 104
      Width = 66
      Height = 13
      Caption = 'Sit.Tribut'#225'ria:'
    end
    object sgDBLookupCombo1: TsgDBLookupCombo
      Left = 19
      Top = 119
      Width = 281
      Height = 21
      EmptyText = 'Selecione..'
      TabOrder = 0
      Text = 'SELECIONE..'
      CharCase = ecUpperCase
      LookupSelect = 'stb_tributacao,stb_descricao'
      LookupOrderBy = 'stb_descricao'
      LookupTable = 'SITUACAO_TRIBUTARIA'
      LookupDispl = 'stb_descricao'
      GridAutoSize = False
      LookupSource = SQLQuery2
      AutoF8 = sgDBAutoF82
      DataField = 'STB_TRIBUTACAO'
      DataSource = dsProd
      LookupKeyField = 'stb_tributacao'
    end
    object lb1: TsgDBLabeledEdit
      Left = 19
      Top = 36
      Width = 121
      Height = 21
      DataField = 'PRD_CODIGO'
      DataSource = dsProd
      TabOrder = 1
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Teste1'
      LabelSpacing = 0
    end
    object sgDBLabeledEdit2: TsgDBLabeledEdit
      Left = 19
      Top = 76
      Width = 302
      Height = 21
      DataField = 'PRD_DESCRI'
      DataSource = dsProd
      TabOrder = 2
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Test2'
      LabelSpacing = 0
    end
    object Button2: TButton
      Left = 246
      Top = 166
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  inherited lbHint: TPanel
    Top = 407
    Width = 782
  end
  inherited coCalcula: TACBrCalculadora
    Left = 552
    Top = 24
  end
  inherited DBConn: TSQLConnection
    Left = 616
    Top = 65
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from bancos where bco_codigo=0')
    SQLConnection = DBConn
    Left = 184
    Top = 72
  end
  object sgDBAutoF81: TsgDBAutoF8
    SqlSelect.Strings = (
      '\campo=bco_codigo\caption=C'#243'digo:\tamanho=10'
      '\campo=bco_descricao\caption=Banco:\tamanho=35'
      '')
    SqlTable = 'bancos'
    SqlOrder = 'bco_descricao'
    SqlFiltro.Strings = (
      '\campo=bco_descricao\caption=Banco:\tamanho=35'
      '\campo=bco_codigo\caption=C'#243'digo:\tamanho=10')
    SqlIdRetorno = 'bco_codigo'
    SqlId = 'bco_codigo'
    Titulo = 'Bancos'
    AutoCrud = sgDBAutoCRUD1
    Left = 360
    Top = 48
  end
  object sqlProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  PRD_CODIGO,'
      '  PRD_DESCRI,'
      '  STB_TRIBUTACAO'
      'from prd0000'
      'where PRD_CODIGO = '#39#39)
    SQLConnection = DBConn
    Left = 424
    Top = 280
  end
  object dspProd: TDataSetProvider
    DataSet = sqlProd
    Left = 488
    Top = 272
  end
  object CdsProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    Left = 560
    Top = 280
    object CdsProdPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsProdSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CdsProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
  end
  object dsProd: TDataSource
    DataSet = CdsProd
    Left = 624
    Top = 288
  end
  object sgDBAutoCRUD1: TsgDBAutoCRUD
    SqlSelect.Strings = (
      '\campo=bco_codigo\caption=C'#243'digo:\tamanho=10\readonly=t'
      
        '\campo=bco_descricao\caption=Banco:\tamanho=35\required=t\unique' +
        '=t'
      '')
    SqlTable = 'bancos'
    SqlCampoID = 'bco_codigo'
    SqlCampoIDRetorno = 'bco_codigo'
    SqlGenerator = 'bco_descricao'
    Titulo = 'Bancos'
    PodeIncluir = True
    PodeEditar = True
    PodeExcluir = True
    Left = 456
    Top = 40
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'stb_tributacao, stb_descricao'
      'FROM SITUACAO_TRIBUTARIA'
      'where stb_codigo = 0')
    SQLConnection = DBConn
    Left = 688
    Top = 256
    object SQLQuery2STB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SQLQuery2STB_DESCRICAO: TStringField
      FieldName = 'STB_DESCRICAO'
      Size = 60
    end
  end
  object sgDBAutoF82: TsgDBAutoF8
    SqlSelect.Strings = (
      '\campo=STB_CODIGO\caption=C'#243'digo\tamanho=10'
      '\campo=STB_DATA_CADASTRO\caption=Cadastro\tamanho=15'
      '\campo=STB_DATA_ATUALIZA\caption=Ult.Atualiza'#231#227'o\tamanho=15'
      '\campo=STB_TRIBUTACAO\caption=CST\tamanho=10'
      '\campo=STB_DESCRICAO\caption=Descri'#231#227'o\tamanho=60')
    SqlTable = 'SITUACAO_TRIBUTARIA'
    SqlOrder = 'stb_descricao'
    SqlFiltro.Strings = (
      '\campo=STB_CODIGO\caption=C'#243'digo\tamanho=10'
      '\campo=STB_DESCRICAO\caption=Descri'#231#227'o\tamanho=60')
    SqlIdRetorno = 'stb_tributacao'
    SqlId = 'stb_codigo'
    Titulo = 'Cadastro de CST (C'#243'digo de Situa'#231#227'o Tribut'#225'ria)'
    AutoCrud = sgDBAutoCRUD2
    Left = 424
    Top = 168
  end
  object sgDBAutoCRUD2: TsgDBAutoCRUD
    SqlSelect.Strings = (
      
        '\campo=STB_CODIGO\caption=C'#243'digo\tamanho=10\required=t\unique=t\' +
        'readonly=t'
      '\campo=STB_TRIBUTACAO\caption=CST\tamanho=10\required=t'
      '\campo=STB_DESCRICAO\caption=Descri'#231#227'o\tamanho=60\required=t')
    SqlTable = 'SITUACAO_TRIBUTARIA'
    SqlCampoID = 'stb_codigo'
    SqlCampoIDRetorno = 'stb_tributacao'
    SqlGenerator = 'stb_descricao'
    Titulo = 'SITUACAO_TRIBUTARIA'
    PodeIncluir = True
    PodeEditar = True
    PodeExcluir = True
    Left = 520
    Top = 160
  end
end
