inherited fmEngenhariaProcesso: TfmEngenhariaProcesso
  Caption = 'Engenharia de Processo'
  ClientHeight = 358
  ExplicitHeight = 385
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 7
    Top = 35
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 201
    Width = 49
    Height = 13
    Caption = 'Sequ'#234'ncia'
    FocusControl = cxDBSpinEdit2
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 174
    Width = 69
    Height = 13
    Caption = 'Tempo Padr'#227'o'
  end
  object Label1: TLabel [3]
    Left = 7
    Top = 228
    Width = 62
    Height = 26
    Caption = 'Equipamento padr'#227'o'
    WordWrap = True
  end
  object Label5: TLabel [4]
    Left = 216
    Top = 176
    Width = 37
    Height = 13
    Caption = 'minutos'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 59
    Width = 113
    Height = 13
    Caption = 'Descri'#231#227'o da opera'#231#227'o:'
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [6]
    Left = 83
    Top = 198
    DataBinding.DataField = 'SEQUENCIA'
    DataBinding.DataSource = dsEditS
    TabOrder = 3
    Width = 125
  end
  object edPesquisaEquipamento: TSgDbSearchCombo [7]
    Left = 134
    Top = 225
    Width = 224
    Height = 21
    TabOrder = 5
    CharCase = ecUpperCase
    LookupSelect = 'eqp_codigo, eqp_descricao'
    LookupOrderBy = 'EQP_descricao'
    LookupTable = 'EQUIPAMENTO'
    LookupDispl = 'EQP_DESCRICAO'
    OnSelect = edPesquisaEquipamentoSelect
    GridAutoSize = False
    LookupSource = qEquipamento
    LookupKeyField = 'EQP_codigo'
    FiltroTabela = 'eqp_descricao is not null'
    ShowButton = True
    AutoF8WinTitulo = 'Cadastro de equipamentos'
    AutoF8ColumnsTitulo = 'C'#243'digo, Equipamento'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edObs: TDBMemo [8]
    Left = 8
    Top = 76
    Width = 377
    Height = 89
    DataField = 'ENG_OBSERVACAO'
    DataSource = dsEditS
    TabOrder = 8
  end
  object edOperacao: TSgDbSearchCombo [9]
    Left = 134
    Top = 32
    Width = 224
    Height = 21
    TabOrder = 1
    CharCase = ecUpperCase
    LookupSelect = 'ope_codigo,ope_descricao'
    LookupOrderBy = 'ope_descricao'
    LookupTable = 'OPERACOES'
    LookupDispl = 'OPE_DESCRICAO'
    OnSelect = edOperacaoSelect
    GridAutoSize = False
    LookupSource = qOperacoes
    LookupKeyField = 'ope_codigo'
    FiltroTabela = 'ope_descricao is not null'
    ShowButton = True
    AutoF8WinTitulo = 'Opera'#231#245'es'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object DBEdit1: TDBEdit [10]
    Left = 83
    Top = 171
    Width = 125
    Height = 21
    DataField = 'TEMPO_ESTIMADO'
    DataSource = dsEditS
    TabOrder = 2
  end
  object Panel1: TPanel [11]
    Left = 432
    Top = 8
    Width = 377
    Height = 276
    BorderStyle = bsSingle
    Caption = 'Desenho/Esbo'#231'o/Foto'
    Color = clWhite
    TabOrder = 7
    object imgLogo: TImage
      Left = 1
      Top = 1
      Width = 371
      Height = 232
      Align = alTop
      Stretch = True
    end
    object btnRemoveImage: TSpeedButton
      Left = 315
      Top = 239
      Width = 23
      Height = 22
      Glyph.Data = {
        FE050000424DFE05000000000000360400002800000017000000130000000100
        080000000000C8010000C40E0000C40E000000010000000100004F4650005044
        5C005C53500061575400625855006B605C0067567B0070656100786C68007B6F
        6B00786B740081747000857873008B7E79008C7F7A008D807B008F817C003D23
        9F00583DAA004424BB004626BC004E30B9004F31B90075648A005E46A5006F57
        A6006D50BC00795EBC007860A1003210C4003714C8003815C9003B18CC002B04
        D4002C05D5002D06D7002E07D8002900DF003009D900340CDC00350DDD00350E
        DE004019DA00421BDD005735CB004823D7004C26DA005C38DD007553DA007654
        DC008670A3008C6CD7008262DB008F6FDA0096888200A2928C00AA9A9400AD9D
        96009E88AC00B09DA400BDABA400B5A2A900C3B0A900C1ACB200B699D800FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000414141414141
        4141414141414141414141414141414141004141414141414141414141414141
        4141414141414141410041414141414141414141414141414141414141414141
        41004141414141413805364141414141414141370D4141414100414141414133
        2511043E41414141414118233741414141004141414141402526010941414141
        3F13251B414141414100414141414141342520021041413F1F233A4141414141
        410041414141414141312516030F3B1F233A4141414141414100414141414141
        4141312515001D223A4141414141414141004141414141414141413025222106
        414141414141414141004141414141414141413F242514070E41414141414141
        410041414141414141413F1F231A282C0A0B3C41414141414100414141414141
        413F1F253241412B2D1708394141414141004141414141413D1E251941414141
        2F271C0C4141414141004141414141411E251241414141414135254141414141
        410041414141412A251341414141414141414141414141414100414141414129
        2E41414141414141414141414141414141004141414141414141414141414141
        4141414141414141410041414141414141414141414141414141414141414141
        4100}
      OnClick = btnRemoveImageClick
    end
    object btnAddImage: TSpeedButton
      Left = 344
      Top = 239
      Width = 23
      Height = 22
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
        2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
        51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
        8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
        8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      OnClick = btnAddImageClick
    end
  end
  object edEquipamento: TEdit [12]
    Left = 82
    Top = 225
    Width = 51
    Height = 21
    TabOrder = 6
    OnExit = edEquipamentoExit
  end
  object EdOperacaoCodigo: TEdit [13]
    Left = 82
    Top = 32
    Width = 51
    Height = 21
    TabOrder = 0
    OnExit = EdOperacaoCodigoExit
  end
  inherited pnUtil: TPanel
    Top = 326
    TabOrder = 4
    ExplicitTop = 326
  end
  inherited coCalcula: TACBrCalculadora
    Left = 728
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 672
  end
  inherited qAux: TSQLQuery
    Left = 450
    Top = 93
  end
  inherited qAux2: TSQLQuery
    Left = 426
  end
  inherited qAux3: TSQLQuery
    Left = 394
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      
        'SELECT ENG_CODIGO,PRD_CODIGO,OPE_CODIGO, SEQUENCIA, TEMPO_ESTIMA' +
        'DO, EQP_CODIGO, ESP_ESBOCO, ENG_OBSERVACAO'
      'FROM ENGENHARIA_PROCESSO'
      'WHERE ENG_CODIGO = :ID')
    object qEditENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qEditOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qEditTEMPO_ESTIMADO: TIntegerField
      FieldName = 'TEMPO_ESTIMADO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditESP_ESBOCO: TBlobField
      FieldName = 'ESP_ESBOCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditENG_OBSERVACAO: TBlobField
      FieldName = 'ENG_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
  end
  inherited DspEdit: TDataSetProvider
    UpdateMode = upWhereKeyOnly
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    object CdsEditENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsEditTEMPO_ESTIMADO: TIntegerField
      FieldName = 'TEMPO_ESTIMADO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditESP_ESBOCO: TBlobField
      FieldName = 'ESP_ESBOCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditENG_OBSERVACAO: TBlobField
      FieldName = 'ENG_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
  end
  object qOperacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descricao')
    SQLConnection = DBConn
    Left = 304
    Top = 4
  end
  object dspSequencia: TDataSetProvider
    OnGetTableName = DspEditGetTableName
    Left = 504
    Top = 95
  end
  object cdsSequencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSequencia'
    AfterOpen = CdsEditAfterOpen
    BeforePost = CdsEditBeforePost
    AfterPost = CdsEditAfterPost
    Left = 583
    Top = 95
    object IntegerField1: TIntegerField
      FieldName = 'ENG_CODIGO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object qEquipamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select eqp_codigo, eqp_descricao'
      'from equipamento')
    SQLConnection = DBConn
    Left = 416
    Top = 156
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.jpg'
    Left = 393
    Top = 224
  end
end
